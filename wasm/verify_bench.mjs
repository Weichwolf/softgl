/* Node smoke test: load softgl.js and confirm the FP-6 bench exports are
 * callable. Runs a single slot × backend timing round to prove the whole
 * chain end-to-end. */

import { createRequire } from 'module';
const require = createRequire(import.meta.url);
global.createSoftGL = require('./softgl.js');

const Mod = await createSoftGL();

const slots = Mod.ccall('sg_bench_slot_count', 'number', [], []);
console.log(`FP-6 slots: ${slots}`);
for (let s = 0; s < slots; s++) {
    const tag = Mod.ccall('sg_bench_slot_tag', 'string', ['number'], [s]);
    const idx = Mod.ccall('sg_bench_slot_test_index', 'number', ['number'], [s]);
    console.log(`  [${s}] tag=${tag} test_idx=${idx}`);
}

console.log('\nTiming (iters=5):');
for (let s = 0; s < slots; s++) {
    const tag = Mod.ccall('sg_bench_slot_tag', 'string', ['number'], [s]);
    for (const backend of [0, 1]) {
        const ms = Mod.ccall('sg_bench_run_slot', 'number',
                             ['number','number','number'], [s, 5, backend]);
        const name = backend === 0 ? 'float' : 'fixed';
        console.log(`  scene=${tag.padEnd(10)} backend=${name.padEnd(5)} ms=${ms.toFixed(3)}`);
    }
}
