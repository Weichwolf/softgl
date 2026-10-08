# Repeated native ordering validation

Status: no general adoption. Three quiet AB/BA blocks per asset, 640×360/off,
15 warm-up and 30 measured complete frames, same native a3d9400 baseline.
Frame time changes BMW/T-80/Sponza/Bistro: -0.2/-3.2/+2.8/-1.9%.
The Sponza regression reverses its preliminary screen. Candidate and baseline
executables are byte-identical to the first sort screen; the change is not
caused by a different compiled variant. The receipt records all attempts.

Reproduce `prepare.py --sort-front --no-hz` and `resident_trial.py --pairs 3
--samples 0`. Full-image/depth quality diagnostics are recorded separately;
no MSAA, browser or production acceptance claim is made for this unadopted
variant. Description and sources: [parent](../README.md).

The selected sort prototype also passes the 162-frame canonical and 372-frame
legacy visibility contracts. Full planes match there; the source/output binding
and log digests are recorded in checks.json.
