#!/usr/bin/env python3
# Preprocess T-80 OBJ + PNG textures into a single packed binary
# the bench_tank.c benchmark can mmap/read without any image decoder.
#
# Output layout (little-endian):
#   magic "TANK" (4)
#   version u32
#   n_verts u32
#   n_materials u32
#   positions   n_verts * 3 * float32   (world-space, normalized/centered below)
#   normals     n_verts * 3 * float32
#   uvs         n_verts * 2 * float32
#   for each material:
#       name[16]          (null-padded)
#       tex_w u32, tex_h u32
#       rgba    tex_w*tex_h*4
#       n_indices u32
#       indices n_indices * u32
#
# Vertices are deduped into a flat array by (v, vt, vn) tuple.

import os, sys, struct
from PIL import Image

SRC = r"D:\Temp\Tanks\t-80-mbt-main-battle-tank"
OBJ = os.path.join(SRC, "source", "T-80 MBT [MAIN BATTLE TANK].obj")
TEX = os.path.join(SRC, "textures")
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                   "..", "tests", "bench", "tank_data", "tank.pack")

# group-name → material key (matches PNG filename sans _D/_d suffix)
def group_to_material(g):
    g = g.lower()
    if "turret" in g:                       return "turret"
    if "cannon" in g or "antenna" in g:     return "cannon"
    if "wheel" in g:                        return "wheels"
    if "tread" in g:                        return "treads"
    if "universal" in g or "prop" in g:     return "universal_props"
    if "hull" in g or "sideskirt" in g:     return "hull"
    return "misc"

TEX_FILES = {
    "hull":            "T-80_Hull_D.png",
    "turret":          "t-80_turret_d.png",
    "cannon":          "T-80_Cannon_D.png",
    "wheels":          "T-80_Wheels_D.png",
    "treads":          "t-80_treads_d.png",
    "universal_props": "universal_props_d.png",
    "misc":            "t-80_misc_d.png",
}

def load_obj(path):
    verts, norms, uvs = [], [], []
    # dedup table: (vi, ti, ni) → index
    vmap, V, T, N = {}, [], [], []
    # material key → list of triangle indices
    tris = {k: [] for k in TEX_FILES}
    cur_mat = "misc"

    with open(path, "r", encoding="utf-8", errors="replace") as f:
        for line in f:
            line = line.strip()
            if not line or line[0] == "#":
                continue
            tok = line.split()
            if tok[0] == "v":
                verts.append((float(tok[1]), float(tok[2]), float(tok[3])))
            elif tok[0] == "vn":
                norms.append((float(tok[1]), float(tok[2]), float(tok[3])))
            elif tok[0] == "vt":
                uvs.append((float(tok[1]), float(tok[2])))
            elif tok[0] == "g":
                cur_mat = group_to_material(" ".join(tok[1:]))
            elif tok[0] == "usemtl":
                # keep group-derived, usemtl here just maps to model.mtl we don't have
                pass
            elif tok[0] == "f":
                # face: polygon with v/t/n triplets — triangulate fan
                parts = []
                for p in tok[1:]:
                    ids = p.split("/")
                    vi = int(ids[0]) - 1
                    ti = (int(ids[1]) - 1) if len(ids) > 1 and ids[1] else -1
                    ni = (int(ids[2]) - 1) if len(ids) > 2 and ids[2] else -1
                    key = (vi, ti, ni)
                    idx = vmap.get(key)
                    if idx is None:
                        idx = len(V)
                        vmap[key] = idx
                        V.append(verts[vi])
                        T.append(uvs[ti] if ti >= 0 and ti < len(uvs) else (0.0, 0.0))
                        N.append(norms[ni] if ni >= 0 and ni < len(norms) else (0.0, 0.0, 1.0))
                    parts.append(idx)
                for i in range(1, len(parts) - 1):
                    tris[cur_mat].extend([parts[0], parts[i], parts[i + 1]])
    return V, T, N, tris

def normalize_verts(V):
    # center model at origin, scale to max-extent 1.0
    xs = [v[0] for v in V]; ys = [v[1] for v in V]; zs = [v[2] for v in V]
    cx = (min(xs) + max(xs)) * 0.5
    cy = (min(ys) + max(ys)) * 0.5
    cz = (min(zs) + max(zs)) * 0.5
    ext = max(max(xs) - min(xs), max(ys) - min(ys), max(zs) - min(zs))
    s = 1.0 / ext if ext > 0 else 1.0
    return [((v[0] - cx) * s, (v[1] - cy) * s, (v[2] - cz) * s) for v in V]

def load_texture(path):
    img = Image.open(path).convert("RGBA")
    # Drop huge sizes → rasterizer is software, 512 max is plenty for 640×360
    if img.width > 512 or img.height > 512:
        s = max(img.width, img.height) / 512
        nw = int(img.width / s); nh = int(img.height / s)
        img = img.resize((nw, nh), Image.BILINEAR)
    return img.width, img.height, img.tobytes()

def main():
    print("Parsing OBJ…")
    V, T, N, tris = load_obj(OBJ)
    print(f"  {len(V)} unique (v/t/n) tuples, "
          f"triangles per material: " +
          ", ".join(f"{k}={len(v)//3}" for k, v in tris.items()))

    V = normalize_verts(V)

    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    mats = [k for k in TEX_FILES if tris[k]]
    print(f"Packing {len(mats)} materials…")

    with open(OUT, "wb") as o:
        o.write(b"TANK")
        o.write(struct.pack("<I", 1))              # version
        o.write(struct.pack("<I", len(V)))         # n_verts
        o.write(struct.pack("<I", len(mats)))      # n_materials
        # positions
        for v in V:   o.write(struct.pack("<fff", *v))
        # normals
        for n in N:   o.write(struct.pack("<fff", *n))
        # uvs
        for t in T:   o.write(struct.pack("<ff", *t))
        for k in mats:
            name = k.encode("utf-8")[:16].ljust(16, b"\0")
            w, h, rgba = load_texture(os.path.join(TEX, TEX_FILES[k]))
            idx = tris[k]
            o.write(name)
            o.write(struct.pack("<II", w, h))
            o.write(rgba)
            o.write(struct.pack("<I", len(idx)))
            for i in idx: o.write(struct.pack("<I", i))
            print(f"  {k:16s}: {w}×{h} tex, {len(idx)//3} tris")

    size = os.path.getsize(OUT)
    print(f"Wrote {OUT}  ({size/1024/1024:.2f} MB)")

if __name__ == "__main__":
    main()
