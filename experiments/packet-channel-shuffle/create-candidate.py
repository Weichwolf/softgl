"""Isolate a fixed byte-extraction candidate without altering live sources."""
from pathlib import Path
import hashlib
import io
import json
import subprocess
import tarfile

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
head = subprocess.check_output(['git', 'rev-parse', 'HEAD'], text=True).strip()
assert not subprocess.check_output(['git', 'status', '--porcelain'], text=True)
src = r/'source-root'
src.mkdir(exist_ok=False)
tracked = ['CMakeLists.txt', 'libsoftgl', 'tests', 'tools', 'wasm']
data = subprocess.check_output(['git', 'archive', 'HEAD', *tracked])
with tarfile.open(fileobj=io.BytesIO(data)) as archive:
    archive.extractall(src, filter='data')
header = src/'libsoftgl/src/packet_channels.h'
header.write_text('''#ifndef SOFTGL_PACKET_CHANNELS_H
#define SOFTGL_PACKET_CHANNELS_H
#include "types.h"
#include "simd.h"

/* Four RGBA8 texels become four unsigned 32-bit channel values.
 * Constant byte selectors preserve pixel order and zero every upper byte. */
#if defined(__wasm_simd128__)
#define SG_PACKET_CHANNEL_FUNCTION(name, k) \\
    SG_INLINE sg_i32x4 name(sg_i32x4 rgba) { \\
        return (sg_i32x4)wasm_i8x16_shuffle((v128_t)rgba, wasm_i32x4_splat(0), \\
            k,16,16,16, k+4,16,16,16, k+8,16,16,16, k+12,16,16,16); \\
    }
#else
#define SG_PACKET_CHANNEL_FUNCTION(name, k) \\
    SG_INLINE sg_i32x4 name(sg_i32x4 rgba) { \\
        return _mm_shuffle_epi8(rgba, _mm_setr_epi8( \\
            k,-128,-128,-128, k+4,-128,-128,-128, \\
            k+8,-128,-128,-128, k+12,-128,-128,-128)); \\
    }
#endif
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_0, 0)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_1, 1)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_2, 2)
SG_PACKET_CHANNEL_FUNCTION(sg_packet_channel_3, 3)
#undef SG_PACKET_CHANNEL_FUNCTION
#endif
''')
p = src/'libsoftgl/src/frag_packet.h'
s = p.read_text()
s = s.replace('#define SOFTGL_FRAG_PACKET_H\n', '#define SOFTGL_FRAG_PACKET_H\n\n#include "packet_channels.h"\n', 1)
start = s.index('    for (int k = 0; k < 4; k++) {\n        sg_i32x4 channel[4];')
end = s.index('\n}\n\nSG_INLINE void sg_packet_sample_unit', start)
old = s[start:end]
# Keep the integer filter loop's extraction and arithmetic unchanged.
integer = old[:old.index('        } else {')] + '\n        }\n    }'
integer = integer.replace('        if (integer_filter) {\n', '        {\n')
new = '    if (integer_filter) {\n' + '\n'.join('    '+line for line in integer.splitlines()) + '''
    } else {
#define SG_PACKET_FLOAT_CHANNEL(k) do { \\
        sg_i32x4 a = sg_packet_channel_##k(taps[0]); \\
        sg_i32x4 b = sg_packet_channel_##k(taps[1]); \\
        sg_i32x4 d = sg_packet_channel_##k(taps[2]); \\
        sg_i32x4 e = sg_packet_channel_##k(taps[3]); \\
        sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(a), ifu), \\
                                      sg_f32x4_mul(_mm_cvtepi32_ps(b), fu)); \\
        sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(_mm_cvtepi32_ps(d), ifu), \\
                                      sg_f32x4_mul(_mm_cvtepi32_ps(e), fu)); \\
        out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top, ifv), \\
                                             sg_f32x4_mul(bot, fv)), sg_f32x4_splat(inv255)); \\
    } while (0)
        SG_PACKET_FLOAT_CHANNEL(0);
        SG_PACKET_FLOAT_CHANNEL(1);
        SG_PACKET_FLOAT_CHANNEL(2);
        SG_PACKET_FLOAT_CHANNEL(3);
#undef SG_PACKET_FLOAT_CHANNEL
    }'''
s = s[:start]+new+s[end:]
p.write_text('\n'.join(line.rstrip() for line in s.splitlines())+'\n')
p = src/'tests/pixel_packet.c'
s = p.read_text()
marker = 'static int check_texture_tail(void) {'
assert s.count(marker) == 1
fixture = '''/* Exhaustive pairs of byte values plus lane-dependent encodings exercise
 * high-bit zero extension, all channel selectors and pixel-lane order. */
static int check_packet_channels(void) {
    unsigned checks = 0;
    for (unsigned value = 0; value < 65536; value++) {
        uint32_t words[4];
        for (unsigned lane = 0; lane < 4; lane++) {
            unsigned pair = (value + lane * 197u) & 65535u;
            words[lane] = pair | ((65535u - pair) << 16);
        }
        sg_i32x4 rgba = _mm_loadu_si128((const sg_i32x4 *)words);
        sg_i32x4 channels[4] = {sg_packet_channel_0(rgba), sg_packet_channel_1(rgba),
                               sg_packet_channel_2(rgba), sg_packet_channel_3(rgba)};
        for (unsigned channel = 0; channel < 4; channel++) {
            uint32_t result[4];
            _mm_storeu_si128((sg_i32x4 *)result, channels[channel]);
            for (unsigned lane = 0; lane < 4; lane++) {
                uint32_t expected = (words[lane] >> (channel * 8)) & 255u;
                if (result[lane] != expected) {
                    fprintf(stderr, "Channel encoding mismatch: pair%u channel%u lane%u\\n", value, channel, lane);
                    return 1;
                }
                checks++;
            }
        }
    }
    printf("%u exact byte-channel encodings passed\\n", checks);
    return 0;
}

'''
s = s.replace(marker, fixture+marker)
s = s.replace('int main(void) {\n', 'int main(void) {\n    if (check_packet_channels()) return 1;\n', 1)
p.write_text(s)
changed = ['libsoftgl/src/packet_channels.h', 'libsoftgl/src/frag_packet.h', 'tests/pixel_packet.c']
patch = ''
for name in changed:
    before = r/'patch-base'/name
    before.parent.mkdir(parents=True, exist_ok=True)
    original = repo/name
    before.write_bytes(original.read_bytes() if original.exists() else b'')
    result = subprocess.run(['diff', '-u', '--label', 'a/'+name, '--label', 'b/'+name, str(before), str(src/name)], text=True, stdout=subprocess.PIPE)
    assert result.returncode in [0, 1]
    patch += result.stdout
(r/'source.patch').write_text(patch)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = dict(status='candidate-created-unmeasured', researchBaselineCommit=head,
         referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
         changedFiles=changed, finalSourceFiles={name: sha(src/name) for name in changed}, patchSha256=sha(r/'source.patch'),
         hypothesis='Float 2D packet filtering extracts channels directly with constant byte shuffles and explicit four-channel expansion, replacing mask/shift chains. Integer filtering, gathers, addressing, formula grouping and DOT3 operations retain their arithmetic. Additional shuffle throughput, code size and register pressure may outweigh fewer extraction operations. Codegen and all-mode paired measurements must establish benefit.',
         predeclaredComparisons=dict(samples=[0,2,4], auditsEachMode=2, pairsEachAudit=3, roundsEachPair=2, warmup=80, frames=100, models=['bmw','tank'], workers=3, resolvePerFrame=True),
         decisionRule='Complete all18 fixed comparisons after full gates. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',
         productionUntouched=True, allGeometryAndFilteringArithmeticUnchanged=True, noNewThreadsOrAtomics=True,
         historicalSearch='Reviewed explicit RGBA float sampler and three-dot integer bilinear trials in experiments/README.md; these use channel lanes within a pixel, rather than this four-pixel packet extraction. Search of private preparation/creation/validation records for shuffle/channel extraction found no matching recorded experiment; source-copy/build directories excluded.')
(r/'validation.json').write_text(json.dumps(v, indent=2)+'\n')
print('Private channel-shuffle candidate created from', head)
