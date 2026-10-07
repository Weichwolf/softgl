"""Prepare selected linked raster/cube checks, with no native-cost inference."""
from pathlib import Path
r=Path(__file__).resolve().parent;prior=Path('build/diagnostics/raster-mode-entry')
s=(prior/'inspect-codegen.py').read_text()
s=s.replace("wanted += ['sg_raster_triangle_off_prepared','sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared']", "wanted += ['sg_packet_sample_cube_coherent','sg_packet_sample_cube_target']\n    if 'sg_packet_sample_cube_vectors' in names.values(): wanted += ['sg_packet_sample_cube_vectors']")
(r/'inspect-codegen.py').write_text(s)
s=(prior/'inspect-sampler-codegen.py').read_text()
s=s.replace("    if label=='candidate':wanted+=['sg_raster_triangle_off_prepared','sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared']", "    wanted+=['sg_packet_sample_cube_coherent','sg_packet_sample_cube_target']\n    if label=='candidate':wanted+=['sg_packet_sample_cube_vectors']")
(r/'inspect-sampler-codegen.py').write_text(s)
