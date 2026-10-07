"""Read joined private key tables and preserve every per-frame thread row."""
from pathlib import Path
root = Path(__file__).resolve().parent
source = Path('experiments/packet-lane-occupancy/wasm_perf_lanes.cjs').read_text()
source = source.replace('laneRows','footprintRows').replace('laneObservations','footprintObservations')
begin = source.index('                            mod._sg_packet_diag_reset();')
end = source.index('                        };',begin)
block = '''                            mod._sg_tex_diag_reset();
                            draw(i);
                            const pixelPtr = mod._softgl_read_rgba8(ctx);
                            const meta = Array.from({length:9}, (_, field) => mod._sg_tex_diag_meta(field));
                            if (meta.slice(1,5).some(value => value !== 0) || meta[0] > meta[5] ||
                                meta[5] !== 256 || meta[6] !== 64 || meta[7] !== 64 || meta[8] !== 12)
                                throw new Error('Footprint capacity/schema failure: '+JSON.stringify(meta));
                            const data = mod._sg_tex_diag_data() >>> 0;
                            const threads = [], merged = new Map();
                            for (let slot = 0; slot < meta[0]; slot++) {
                                const entries = [];
                                for (let key = 0; key < meta[6]; key++) {
                                    const start = (data >>> 2) + (slot*meta[6]+key)*meta[7]*2;
                                    if (!mod.HEAPU32[start] && !mod.HEAPU32[start+1]) continue;
                                    const values = Array.from({length:64}, (_, cell) =>
                                        mod.HEAPU32[start+2*cell] + 4294967296*mod.HEAPU32[start+2*cell+1]);
                                    if (values.some(value => !Number.isSafeInteger(value) || value < 0))
                                        throw new Error('Footprint integer outside exact JS range');
                                    entries.push({key,values});
                                    const identity = JSON.stringify(values.slice(1,8));
                                    if (!merged.has(identity)) merged.set(identity,values.slice(0,8).concat(Array(56).fill(0)));
                                    const total = merged.get(identity);
                                    for (let cell = 8; cell < 64; cell++) {
                                        total[cell] += values[cell];
                                        if (cell === 29) total[cell] >>>= 0;
                                        if (!Number.isSafeInteger(total[cell])) throw new Error('Merged footprint overflow');
                                    }
                                }
                                if (entries.length) threads.push({slot,entries});
                            }
                            const entries = Array.from(merged.values()).sort((a,b) => {
                                for (let cell=1;cell<8;cell++) if(a[cell]!==b[cell]) return a[cell]-b[cell];
                                return 0;
                            });
                            let h=2166136261, h2=0;
                            for (let j=0;j<640*360*4;j++) {
                                const b=mod.HEAPU8[pixelPtr+j];h=Math.imul(h^b,16777619);h2=(Math.imul(h2,65599)+b)|0;
                            }
                            footprintRows.push({frame:i,angle:(i%frames)*360/frames,
                                meta,entries,threads,hash:[h>>>0,h2>>>0]});
'''
source = source[:begin]+block+source[end:]
assert '_sg_packet_diag_' not in source
(root/'wasm_perf_footprints.cjs').write_text(source)
print('Prepared full key/thread/frame footprint observer')
