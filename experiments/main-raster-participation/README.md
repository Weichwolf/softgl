# Main-thread raster participation

Status: accepted historical experiment; no new timing or patch application.

[source.patch](source.patch) is already applied and accepted. It gives the
caller work from the exclusive raster-bin queue for large jobs. On this host,
both BMW audits improved by 7.90%/7.10%, both Tank audits passed and all thirty
Compliance audits passed. Historical raw evidence remains under
`build/perf/tigerlake-20261003/main-raster/`.

## Mechanism and source

The caller and workers drain the same exclusively claimed raster-bin queue.
The patch factors draining into `sg_drain_raster_bins` and lets the caller
help at the existing join boundary. Bin order, immutable job state, query
accounting and completion ownership remain subject to the original design.

The [patch](source.patch) was moved byte-for-byte from
`experiments/main-raster-participation.patch`. Its paths remain relative to
the repository root and its contexts refer to the historical source. It is
already represented in the accepted renderer; do not reapply it to current
sources as a new optimization. Historical raw evidence is identified above.
