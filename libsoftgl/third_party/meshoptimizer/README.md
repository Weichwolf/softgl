# meshoptimizer subset

Unmodified sources from meshoptimizer v1.3, commit
`9e1f07b159d3cb777f1c67ed31fc11fd117986f4`, including `demo/clusterlod.h`.
Upstream: https://github.com/zeux/meshoptimizer/tree/v1.3
License: MIT; see `LICENSE.md` and the notice in `clusterlod.h`.

Only algorithms needed by SoftGL's optional internal geometry LOD cache are
included. The normal OpenGL path does not use this cache. No build-time
download or asset-specific preprocessing is required.
