# Transparent material production validation

Status: accepted; native, analytical, image, sanitizer and browser gates pass.

receipt.json / summary.json retain three balanced AB/BA blocks for every shared
asset and off/2×/4× mode. BMW: 13.3910→11.6609 ms / 17.1548→15.6793 ms /
19.1479→17.1547 ms, or -12.92% / -8.60% / -10.41%. 144 accepted requests,
four rejected requests from one whole noisy block. All measured frame times,
source/binary/pack hashes and attempts remain. Independent six-block off
confirmation is in ../bmw-confirmation/.

quality.json checks 108 paired images; coverage and depth/stencil/sample planes
are exact, RGB changes are summarized in the parent README. resident-quality.json
checks 288 full-frame plane hashes between persistent and fresh contexts.
contract.txt and asan-contract.txt record the independent 72-frame exact blend
oracle, including copied draw state. native-tests.txt records 753 passing tests.
The existing Mesa compatibility image tests keep their original two-pass wrapper;
approximate single-pass rendering is opted into the viewer and timed candidates.
initial-native-failure.txt preserves the three BMW failures before that opt-in
guard, which was added without relaxing any comparison tolerance.

All three candidate executables remain byte-identical before/after adding the
explicit wrapper guard: guard-provenance.json. Production library and wrapper
sources match the tested candidate. checks.json verifies sources, fixture and
built/copied/live HTTP JS/WASM hashes plus COOP/COEP headers. Logs are preserved
as text. Twelve browser combinations pass; maximum heap is 2.631 GiB.

Sources, reproduction and approximations: [parent experiment](../README.md).
