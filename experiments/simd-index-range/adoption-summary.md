## Adoption

The final four-file patch is applied to main source. The canonical build produces
JS/WASM byte-identical to the measured candidate; its complete744native tests
plusBench1 pass with the final initialized range fixture. Both Chromium/Firefox
UI gates pass234tests and18benchmark rows across off/2x/4x,MSAArestoration,
cancellation,scene/context recycling and threehelperspluscaller on nine reported
processors. Screenshots and receipts are retained. Firefox emits ignored external
mozprofile/marionette destructor ImportErrors during Python shutdown after explicit
driver/server cleanup; its successful result,empty page-error array and original
log are retained. The owned8001server was stopped with its PID/birth verified.

The existing8000preview now serves the candidateJS/WASM. AllsixHTTPassets match
the frozen candidate byte-for-byte and retain COOP/COEP; preparedBMW/tank packs
and browserUI are unchanged. bench_report.md contains only compact numeric
results,with the older7ccCPUaccounting explicitly labeled as such. Absolute FPS
uses median raw candidate times; relative gains use geometric paired ratios.
The BMW4x audit medians are30.33/30.49FPS and T-8070.21/68.54FPS,under the
recorded environment/protocol. These milestones do not finish the open research
goal or establish a hardware ceiling.
