"""Create a private interval observer from the tracked browser benchmark."""
from pathlib import Path
import hashlib
import json

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
original = (repo/'tools/wasm_perf.cjs').read_text()
source = original
replacements = []
def replace(old, new):
    global source
    assert source.count(old) == 1, old[:100]
    source = source.replace(old, new)
    replacements.append({'old':old,'new':new})
replace("const repo = path.resolve(__dirname, '..');", "const repo = process.cwd();")
replace('''                        const render = i => {
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                        };''', '''                        const waitIntervals = [];
                        const render = (i, observe = false) => {
                            if (!observe) {
                                draw(i);
                                mod._softgl_read_rgba8(ctx);
                                return;
                            }
                            mod._sg_caller_wait_reset();
                            const frameStart = performance.now();
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                            const frameEnd = performance.now();
                            const calls = Array.from({length:8}, (_, j) => mod._sg_caller_wait_read(j));
                            const elapsedMs = Array.from({length:8}, (_, j) => mod._sg_caller_wait_read(j + 8));
                            waitIntervals.push({frame:i, angle:(i % frames)*360/frames,
                                frameStart, frameEnd, frameElapsedMs:frameEnd-frameStart, calls, elapsedMs});
                        };''')
replace('''                        for (let i = 0; i < frames; i++) render(i);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength};''', '''                        for (let i = 0; i < frames; i++) render(i, true);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength, waitIntervals};''')
replace('''                    samples.get(name)[variant].push(timing.ms);''', '''                    if (!result.callerWaitObservations) result.callerWaitObservations = [];
                    result.callerWaitObservations.push({name, variant, round, samples:timing.samples,
                        workers:timing.workers, warmup:options.warmup, frames:options.frames,
                        rows:timing.waitIntervals});
                    result.notAcceptanceTimings = true;
                    samples.get(name)[variant].push(timing.ms);''')
(root/'wasm_perf_wait.cjs').write_text(source)
(root/'observer-replacements.json').write_text(json.dumps(replacements,indent=2)+'\n')
restored = source
for row in reversed(replacements):
    assert restored.count(row['new']) == 1
    restored = restored.replace(row['new'], row['old'])
assert restored == original
identities = {str(p.relative_to(repo)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [
    repo/'tools/wasm_perf.cjs', repo/'tools/wasm_quiet_audit.py', root/'wasm_perf_wait.cjs',
    root/'observer-replacements.json', repo/'build/controls/caller-wait-intervals-diagnostic/softgl.js',
    repo/'build/controls/caller-wait-intervals-diagnostic/softgl.wasm',
    repo/'build/controls/caller-wait-intervals-diagnostic/bmw.pack', repo/'tests/bench/tank_data/tank.pack']}
(root/'observer-input-identities.json').write_text(json.dumps(identities,indent=2)+'\n')
print('Private observer generated; reverse replacements recover exact tracked benchmark')
