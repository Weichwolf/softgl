/* Offline metric adapter only; no renderer, CUDA or runtime quality policy. */
#include "FLIP.h"
#include <cstdio>
#include <memory>

static bool read_image(const char *name, std::vector<float>& values) {
    FILE *file = std::fopen(name,"rb");
    if (!file) return false;
    size_t count = std::fread(values.data(),sizeof(float),values.size(),file);
    bool exact = count == values.size() && std::fgetc(file) == EOF;
    std::fclose(file);
    return exact && std::all_of(values.begin(),values.end(),[](float value) {
        return std::isfinite(value) && value >= 0.f && value <= 1.f;
    });
}

int main(int argc, char **argv) {
    if (argc != 7) return 2;
    int width = std::atoi(argv[3]), height = std::atoi(argv[4]);
    float ppd = std::strtof(argv[5],nullptr);
    if (width <= 0 || height <= 0 || width > 4096 || height > 4096 ||
        !std::isfinite(ppd) || ppd < 1.f || ppd > 1000.f) return 3;
    size_t pixels = size_t(width)*height;
    std::vector<float> reference(pixels*3), candidate(pixels*3);
    if (!read_image(argv[1],reference) || !read_image(argv[2],candidate)) return 4;
    FLIP::Parameters parameters;
    parameters.PPD = ppd;
    float mean = -1.f, *raw = nullptr;
    FLIP::evaluate(reference.data(),candidate.data(),width,height,false,
        parameters,false,true,mean,&raw);
    std::unique_ptr<float[]> errors(raw);
    if (!errors || !std::isfinite(mean)) return 5;
    double precise_mean = 0.;
    for (size_t i = 0; i < pixels; i++) {
        if (!std::isfinite(raw[i]) || raw[i] < 0.f || raw[i] > 1.f) return 6;
        precise_mean += double(raw[i]);
    }
    precise_mean /= double(pixels);
    FILE *file = std::fopen(argv[6],"wb");
    if (!file) return 7;
    size_t count = std::fwrite(raw,sizeof(float),pixels,file);
    if (std::fclose(file) || count != pixels) return 8;
    std::vector<float> sorted(raw,raw+pixels);
    std::sort(sorted.begin(),sorted.end());
    size_t p95 = size_t(std::ceil(.95*double(pixels)))-1;
    size_t p99 = size_t(std::ceil(.99*double(pixels)))-1;
    std::printf("{\"ppd\":%.9g,\"mean\":%.17g,\"upstreamFloatMean\":%.9g,\"p95NearestRank\":%.9g,"
        "\"p99NearestRank\":%.9g,\"max\":%.9g}\n",ppd,precise_mean,mean,sorted[p95],
        sorted[p99],sorted.back());
    return 0;
}
