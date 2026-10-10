/* Application-side tangent-space lighting, submitted as ordinary GL arrays.
 * Four independent vertices per SIMD128 packet; no GL calls on helpers. */
#include <pthread.h>
#include <stdint.h>
#include <xmmintrin.h>
#include <smmintrin.h>

typedef struct {
    const float *vertices;
    float *output;
    float matrix[16], light[3];
    unsigned count;
} model_lighting_job;

static struct {
    pthread_t threads[3];
    pthread_mutex_t mutex;
    pthread_cond_t wake, done;
    unsigned helpers, generation, remaining;
    int initialized, stop;
    model_lighting_job job;
} lighting;

static __m128 model_dot3(const __m128 a[3], const __m128 b[3]) {
    return _mm_add_ps(_mm_add_ps(_mm_mul_ps(a[0], b[0]),
        _mm_mul_ps(a[1], b[1])), _mm_mul_ps(a[2], b[2]));
}

static __m128 model_inverse_length(__m128 square) {
    return _mm_div_ps(_mm_set1_ps(1.f), _mm_sqrt_ps(square));
}

/* Four RGB attributes occupy three registers. Alpha and texture-coordinate W
 * are the standard GL defaults and need no storage in the vertex buffer. */
static void model_store_rgb(float *output, __m128 value[4], unsigned live) {
    _MM_TRANSPOSE4_PS(value[0], value[1], value[2], value[3]);
    if (live == 4) {
        __m128 first = _mm_blend_ps(value[0],
            _mm_shuffle_ps(value[1],value[1],_MM_SHUFFLE(0,0,0,0)),8);
        __m128 middle = _mm_shuffle_ps(value[1],value[2],_MM_SHUFFLE(1,0,2,1));
        __m128 last = _mm_blend_ps(
            _mm_shuffle_ps(value[3],value[3],_MM_SHUFFLE(2,1,0,0)),
            _mm_shuffle_ps(value[2],value[2],_MM_SHUFFLE(2,2,2,2)),1);
        _mm_storeu_ps(output,first);
        _mm_storeu_ps(output+4,middle);
        _mm_storeu_ps(output+8,last);
    } else for (unsigned l = 0; l < live; l++) {
        float row[4]; _mm_storeu_ps(row,value[l]);
        memcpy(output+l*3,row,3*sizeof(float));
    }
}

static void model_lighting_range(model_lighting_job *job, unsigned first, unsigned end) {
    /* A local immutable matrix cannot alias the mapped output buffer. This
     * lets both compilers keep its coefficients across RGB packet stores. */
    float matrix[16];
    memcpy(matrix,job->matrix,sizeof(matrix));
    __m128 light[3];
    for (int j = 0; j < 3; j++) light[j] = _mm_set1_ps(job->light[j]);
    const __m128 one = _mm_set1_ps(1.f), half_value = _mm_set1_ps(.5f);
    for (unsigned i = first; i < end; i += 4) {
        const float *v[4];
        for (unsigned l = 0; l < 4; l++)
            v[l] = job->vertices + (size_t)(i+l < end ? i+l : i)*STATIC_STRIDE;
        __m128 p[4], n[4], t[4], b[3], eye[3], eye_normal[3];
        for (int j = 0; j < 4; j++) {
            p[j] = _mm_loadu_ps(v[j]);
            n[j] = _mm_loadu_ps(v[j]+3);
            t[j] = _mm_loadu_ps(v[j]+8);
        }
        _MM_TRANSPOSE4_PS(p[0], p[1], p[2], p[3]);
        _MM_TRANSPOSE4_PS(n[0], n[1], n[2], n[3]);
        _MM_TRANSPOSE4_PS(t[0], t[1], t[2], t[3]);
        __m128 handedness = t[3];
        for (int j = 0; j < 3; j++) {
            int a = (j+1)%3, z = (j+2)%3;
            b[j] = _mm_mul_ps(_mm_sub_ps(_mm_mul_ps(n[a], t[z]),
                _mm_mul_ps(n[z], t[a])), handedness);
            __m128 row[3];
            for (int k = 0; k < 3; k++) row[k] = _mm_set1_ps(matrix[j+k*4]);
            eye[j] = _mm_add_ps(model_dot3(row, p), _mm_set1_ps(matrix[12+j]));
            eye_normal[j] = model_dot3(row, n);
        }
        __m128 inverse_eye = model_inverse_length(model_dot3(eye, eye));
        __m128 h[3];
        for (int j = 0; j < 3; j++) {
            __m128 row[3];
            for (int k = 0; k < 3; k++) row[k] = _mm_set1_ps(matrix[j*4+k]);
            h[j] = _mm_sub_ps(light[j], _mm_mul_ps(model_dot3(row, eye), inverse_eye));
        }
        __m128 inverse_half = model_inverse_length(_mm_max_ps(model_dot3(h, h), _mm_set1_ps(1e-20f)));
        __m128 diffuse[4], specular[4], reflection[4];
        const __m128 *basis[3] = {t, b, n};
        __m128 twice_dot = _mm_mul_ps(_mm_set1_ps(2.f), model_dot3(eye, eye_normal));
        for (int j = 0; j < 3; j++) {
            diffuse[j] = _mm_add_ps(half_value, _mm_mul_ps(half_value, model_dot3(basis[j], light)));
            specular[j] = _mm_add_ps(half_value,
                _mm_mul_ps(_mm_mul_ps(half_value, model_dot3(basis[j], h)), inverse_half));
            reflection[j] = _mm_sub_ps(eye[j], _mm_mul_ps(twice_dot, eye_normal[j]));
        }
        diffuse[3] = specular[3] = reflection[3] = one;
        unsigned live = end-i < 4 ? end-i : 4;
        model_store_rgb(job->output+(size_t)i*3,diffuse,live);
        model_store_rgb(job->output+((size_t)job->count+i)*3,specular,live);
        model_store_rgb(job->output+((size_t)job->count*2+i)*3,reflection,live);
    }
}

static void model_lighting_work(unsigned slot) {
    model_lighting_job *job = &lighting.job;
    /* Equal-cost vertices stay in contiguous ranges; four-lane boundaries
     * avoid overlap while the final range owns the short packet. */
    unsigned packets = job->count/4u+(job->count%4u != 0);
    unsigned workers = lighting.helpers+1;
    unsigned first = (unsigned)((uint64_t)packets*slot/workers)*4u;
    unsigned end = (unsigned)((uint64_t)packets*(slot+1)/workers)*4u;
    if (end > job->count) end = job->count;
    model_lighting_range(job, first, end);
}

static void *model_lighting_worker(void *argument) {
    unsigned slot = (unsigned)(uintptr_t)argument;
    unsigned generation = 0;
    pthread_mutex_lock(&lighting.mutex);
    for (;;) {
        while (!lighting.stop && generation == lighting.generation)
            pthread_cond_wait(&lighting.wake, &lighting.mutex);
        if (lighting.stop) break;
        generation = lighting.generation;
        pthread_mutex_unlock(&lighting.mutex);
        model_lighting_work(slot);
        pthread_mutex_lock(&lighting.mutex);
        if (--lighting.remaining == 0) pthread_cond_signal(&lighting.done);
    }
    pthread_mutex_unlock(&lighting.mutex);
    return NULL;
}

static void model_lighting_init(void) {
    if (lighting.initialized) return;
    pthread_mutex_init(&lighting.mutex, NULL);
    pthread_cond_init(&lighting.wake, NULL);
    pthread_cond_init(&lighting.done, NULL);
    lighting.initialized = 1;
    for (unsigned i = 0; i < 3; i++) {
        if (pthread_create(&lighting.threads[i], NULL, model_lighting_worker, (void *)(uintptr_t)(i+1))) break;
        lighting.helpers++;
    }
}

static void model_lighting_shutdown(void) {
    if (!lighting.initialized) return;
    pthread_mutex_lock(&lighting.mutex);
    lighting.stop = 1;
    pthread_cond_broadcast(&lighting.wake);
    pthread_mutex_unlock(&lighting.mutex);
    for (unsigned i = 0; i < lighting.helpers; i++) pthread_join(lighting.threads[i], NULL);
    pthread_cond_destroy(&lighting.wake);
    pthread_cond_destroy(&lighting.done);
    pthread_mutex_destroy(&lighting.mutex);
    memset(&lighting, 0, sizeof(lighting));
}

static void model_lighting_update(const float *vertices, float *output,
    unsigned count, const float matrix[16], const float light[3]) {
    model_lighting_init();
    pthread_mutex_lock(&lighting.mutex);
    lighting.job.vertices = vertices; lighting.job.output = output;
    lighting.job.count = count;
    memcpy(lighting.job.matrix, matrix, sizeof(lighting.job.matrix));
    memcpy(lighting.job.light, light, sizeof(lighting.job.light));
    lighting.remaining = lighting.helpers;
    lighting.generation++;
    pthread_cond_broadcast(&lighting.wake);
    pthread_mutex_unlock(&lighting.mutex);
    model_lighting_work(0);
    pthread_mutex_lock(&lighting.mutex);
    while (lighting.remaining) pthread_cond_wait(&lighting.done, &lighting.mutex);
    pthread_mutex_unlock(&lighting.mutex);
}
