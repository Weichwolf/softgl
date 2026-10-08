# Dense surface trial

Status: rejected after one balanced native off block per shared asset.
BMW -2.25%, T-80 +0.78%, Sponza +4.18%, Bistro +2.78% full-frame time.
No broad reproducible gain is established; production and live WASM are unchanged.

Clang record layouts prove 320-byte old records versus 80-byte metadata and
240-byte dense surfaces. All 36 paired off views are byte-exact in RGB and
coverage planes. Positions/coverage/bin-order contracts pass 162/372/54 paired
full-plane frames with 6/12/6 rollbacks. No sanitizer, full-suite or browser
validation is claimed for this rejected variant.

receipt.json and summary.json retain source/binary/pack hashes and all timing
requests. quality.json retains the 36 images' hashes and plane metrics; contract,
build and record-layout output is archived as text. A single block cannot prove
the BMW change; sizable Sponza/Bistro costs give no adoption reason.

Source and reproduction: [parent](../README.md), prepare.py --layout dense.
