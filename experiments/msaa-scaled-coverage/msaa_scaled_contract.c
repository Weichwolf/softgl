#include "quantized_fixture.inc"
extern unsigned long long softgl_msaa_scaled_audit(unsigned index);
int main(void) {
    int result = previous_quantized_main();
    unsigned long long fast = softgl_msaa_scaled_audit(0), fallback = softgl_msaa_scaled_audit(1);
    unsigned long long tested = softgl_msaa_scaled_audit(2), passed = softgl_msaa_scaled_audit(3);
    CHECK(fast && tested && passed);
    printf("Forward exact scaled coverage SIMD128: fastTriangles=%llu fallbackTriangles=%llu testedPixels=%llu depthPassedSamples=%llu PASS\n",fast,fallback,tested,passed);
    return result;
}
