# Vendored, pinned subset; shared by the native and WASM builds.
set(SG_MESHOPT_SOURCES "")
foreach(name allocator clusterizer indexgenerator partition quantization
             simplifier vcacheoptimizer meshletutils spatialorder)
    list(APPEND SG_MESHOPT_SOURCES
        ${CMAKE_CURRENT_LIST_DIR}/third_party/meshoptimizer/${name}.cpp)
endforeach()
