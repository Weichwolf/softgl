# Independent BMW confirmation

Status: BMW off-mode gain confirmed; production adoption validated separately
in [final validation](../validation/README.md). Six balanced AB/BA blocks, 15 warm-up and 60 measured full frames
per request, caller plus three helpers at 640×360. All 24 requests accepted,
none rejected. Every measured candidate request is faster than every measured
baseline request in this series.

Baseline median 13.3048 ms; outlined single-pass candidate 11.5277 ms:
-13.3567% frame time. Original 30-frame all-asset series independently found
-13.8965%, although its absolute BMW timings were slower. All attempts and
source/binary/wrapper/pack hashes remain in the receipts.

Lighting/alpha differences and the independent blend oracle are documented
in the [parent](../README.md) and [outlined variant](../outlined/README.md).
MSAA/all-asset repeated validation, full production tests, sanitizer and WASM
validation subsequently passed; see the parent for accepted production behavior.
