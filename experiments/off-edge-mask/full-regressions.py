from pathlib import Path
import subprocess,os,json
base=Path.cwd();env=os.environ.copy();env.update(NODE_PATH=str(base/'build/node/node_modules'),TMPDIR=str(base/'build/tmp'),ASAN_OPTIONS='detect_leaks=1:halt_on_error=1',UBSAN_OPTIONS='halt_on_error=1')
results=[]
def run(cmd,log):
    with log.open('w') as f:subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
for name in ('off-edge-mask',):
    r=base/'build/diagnostics'/name;src=r/'source-root';b=r/'native-full'
    run(['cmake','-S',str(src),'-B',str(b),'-DCMAKE_BUILD_TYPE=Release','-DSG_MODEL_PACK='+str(base/'build/assets/bmw.pack')],r/'native-full-configure.log')
    run(['cmake','--build',str(b),'-j4'],r/'native-full-build.log')
    run(['ctest','--test-dir',str(b),'--output-on-failure','-j1'],r/'native-full-tests.log')
    run(['ctest','--test-dir',str(b),'-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1'],r/'native-full-bench.log')
    asan=r/'asan-full'
    run(['cmake','-S',str(src),'-B',str(asan),'-DCMAKE_BUILD_TYPE=Release','-DSG_MODEL_PACK='+str(base/'build/assets/bmw.pack'),'-DCMAKE_C_FLAGS=-fsanitize=address,undefined -fno-omit-frame-pointer','-DCMAKE_EXE_LINKER_FLAGS=-fsanitize=address,undefined'],r/'asan-full-configure.log')
    targets=['off_coverage_contract','index_range_contract','msaa_edge_contract','cube_packet_contract','worker_pool','multisample_contract','msaa_store_contract','hierarchical_depth_contract','dot3_chain_contract','constant_texture_contract','pixel_packet_contract','geometry_cache_contract','async_raster_contract','raster_vertex_pack_contract','packed_stream_contract','simd_clamp_contract','ordered_draw_queue_contract','msaa_additive_contract','triangle_stage_contract','msaa_scanline_contract','cube_filter_contract','cache_coverage_contract','depth_replay_contract','position_cache_contract','vertex_inputs_contract']
    run(['cmake','--build',str(asan),'-j4','--target',*targets],r/'asan-full-build.log')
    run(['ctest','--test-dir',str(asan),'-R','_contract$','--output-on-failure','-j1'],r/'asan-full-tests.log')
    for mode in (0,2,4):
        run(['node',str(r/('all-tests-ms0.cjs' if mode==0 else ('all-tests-msaa.cjs' if mode==2 else 'all-tests-msaa4.cjs')))],r/f'ms{mode}-images.log')
        run(['node',str(r/'model-equivalence.cjs'),str(base/'build/controls'/(name+'-candidate')),str(mode)],r/f'model-{mode}.log')
    run(['node','tools/wasm_perf.cjs','--images-only','--wasm-build',str(base/'build/controls'/(name+'-candidate')),'--native-build',str(b),'--output',str(r/'mesa-images.json')],r/'mesa-images.log')
    results.append(name);print(name,'full native and WASM regressions complete',flush=True)
print('Full regression results',json.dumps(results),flush=True)
