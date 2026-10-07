/* Model-viewer attribute program. Geometry and fragment stages remain GL. */
typedef struct {
    const float *vertices;
    const float *matrix;
    float object_light[3];
    int specular;
} model_attribute_program;
static model_attribute_program attribute_program;

static void generate_attributes(void *user, GLuint index, GLfloat color[4], GLfloat texcoord[4]) {
    const model_attribute_program *program = user;
    const float *v = program->vertices+(size_t)index*STATIC_STRIDE;
    const float *n = v+3, *t = v+8, *matrix = program->matrix;
    const float *object_light = program->object_light;
    float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
    float eye[3];
    for (int j = 0; j < 3; j++)
        eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
    const float *basis[] = {t, b, n};
    if (program->specular) {
        float inv_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
        float half[3];
        for (int j = 0; j < 3; j++)
            half[j] = object_light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inv_eye;
        float inv_half = 1.f/sqrtf(fmaxf(half[0]*half[0]+half[1]*half[1]+half[2]*half[2], 1e-20f));
        for (int j = 0; j < 3; j++)
            color[j] = .5f+.5f*(basis[j][0]*half[0]+basis[j][1]*half[1]+basis[j][2]*half[2])*inv_half;
    } else {
        for (int j = 0; j < 3; j++)
            color[j] = .5f+.5f*(basis[j][0]*object_light[0]+basis[j][1]*object_light[1]+basis[j][2]*object_light[2]);
        float eye_normal[3];
        for (int j = 0; j < 3; j++)
            eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
        float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
        for (int j = 0; j < 3; j++) texcoord[j] = eye[j]-2.f*dot*eye_normal[j];
        texcoord[3] = 1.f;
    }
    color[3] = 1.f;
}

static void prepare_attribute_program(const float matrix[16]) {
    float light[3] = {.45f, .75f, .65f}, length = sqrtf(.45f*.45f+.75f*.75f+.65f*.65f);
    for (int j = 0; j < 3; j++) light[j] /= length;
    for (int j = 0; j < 3; j++)
        attribute_program.object_light[j] = matrix[j*4]*light[0]+matrix[j*4+1]*light[1]+matrix[j*4+2]*light[2];
    attribute_program.matrix = matrix;
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    attribute_program.vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY);
    if (attribute_program.vertices) glUnmapBuffer(GL_ARRAY_BUFFER);
}
