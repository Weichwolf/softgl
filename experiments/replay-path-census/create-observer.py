from pathlib import Path
import json,hashlib
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text())
original=(repo/'tools/wasm_perf.cjs').read_text();source=original;edits=[]
def replace(a,b):
 global source
 assert source.count(a)==1,a[:100];source=source.replace(a,b);edits.append(dict(old=a,new=b))
replace("const repo = path.resolve(__dirname, '..');",'const repo = process.cwd();')
replace('''                        const render = i => {
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                        };''','''                        const replayRows = [];
                        const render = (i, observe = false) => {
                            if (!observe) {
                                draw(i);
                                mod._softgl_read_rgba8(ctx);
                                return;
                            }
                            mod._sg_replay_diag_reset();
                            const frameStart = performance.now();
                            draw(i);
                            mod._softgl_read_rgba8(ctx);
                            const frameEnd = performance.now();
                            const counts = Array.from({length:8}, (_, j) => mod._sg_replay_diag_read(j));
                            if (mod._sg_replay_diag_read(-1) !== 0 || mod._sg_replay_diag_read(8) !== 0)
                                throw Error('Replay counter bounds');
                            replayRows.push({frame:i, angle:(i % frames)*360/frames,
                                frameStart, frameEnd, frameElapsedMs:frameEnd-frameStart, counts});
                        };''')
replace('''                        for (let i = 0; i < frames; i++) render(i);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength};''','''                        for (let i = 0; i < frames; i++) render(i, true);
                        mod._softgl_read_rgba8(ctx);
                        const ms = (performance.now() - start) / frames;
                        return {ms, workers, samples, heapBytes: mod.HEAPU8.byteLength, replayRows};''')
replace('''                    samples.get(name)[variant].push(timing.ms);''','''                    if (!result.replayPathObservations) result.replayPathObservations = [];
                    result.replayPathObservations.push({name, variant, round, samples:timing.samples,
                        workers:timing.workers, warmup:options.warmup, frames:options.frames, rows:timing.replayRows});
                    result.notAcceptanceTimings = true;
                    samples.get(name)[variant].push(timing.ms);''')
(r/'wasm_perf_replay.cjs').write_text(source);(r/'observer-replacements.json').write_text(json.dumps(edits,indent=2)+'\n')
restored=source
for e in reversed(edits):
 assert restored.count(e['new'])==1;restored=restored.replace(e['new'],e['old'])
assert restored==original
paths=[repo/'tools/wasm_perf.cjs',repo/'tools/wasm_quiet_audit.py',r/'wasm_perf_replay.cjs',r/'observer-replacements.json']
for fn in ['softgl.js','softgl.wasm','bmw.pack','tank.pack']:paths.append(repo/'build/controls/replay-path-census-diagnostic'/fn)
(r/'observer-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2)+'\n')
print('Census observer edits reverse to tracked benchmark exactly; no timing acceptance claim')
