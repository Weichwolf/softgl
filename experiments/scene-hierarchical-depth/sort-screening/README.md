# Stable adaptive front-to-back buckets

Status: screening only, no adoption. One quiet AB/BA block per asset,
640×360/off, 15 warm-up and 30 measured full frames against a3d9400.
Reproduce with `prepare.py --sort-front --no-hz`. Sort within each bin uses
256 adaptive minimum-depth buckets and preserves input order inside a bucket.
Opaque/cutout depth ties may change; blended passes retain their original order.
Angle-160 byte equality is recorded rather than assumed. Description and
sources: [parent](../README.md).
