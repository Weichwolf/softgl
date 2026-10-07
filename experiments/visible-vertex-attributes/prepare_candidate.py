#!/usr/bin/env python3
"""Prepare a generic attribute-program API and opt-in viewer integration."""
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
destination = repo / "build/visible-vertex-attributes/candidate-source"
destination.mkdir(parents=True, exist_ok=True)
baseline = "77940ad"
paths = subprocess.check_output(["git", "ls-tree", "-r", "--name-only", baseline, "libsoftgl"],
                                cwd=repo, text=True).splitlines()
for name in paths:
    target = destination / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(subprocess.check_output(["git", "show", f"{baseline}:{name}"], cwd=repo))
src = destination / "libsoftgl/src"

def replace(path, old, new):
    text = path.read_text()
    assert old in text, (path, old)
    path.write_text(text.replace(old, new))

replace(destination / "libsoftgl/include/GL/softgl.h", "const void *softgl_read_rgba8(softgl_ctx *c);",
    "const void *softgl_read_rgba8(softgl_ctx *c);\n\n"
    "/* Optional pure attribute program for vertex-array draws. It can run on\n"
    " * workers; user data must be immutable until glDraw* returns, and it must\n"
    " * not call GL. Index is the original source vertex, including dense-cull\n"
    " * remapping. Color and the selected texture coordinate are in/out values.\n"
    " * Positions remain GL-controlled, so conservative geometry culling stays\n"
    " * valid. NULL disables the program. Immediate-mode vertices are unaffected. */\n"
    "typedef void (*softgl_vertex_attributes_fn)(void *user, GLuint index,\n"
    "    GLfloat color[4], GLfloat texcoord[4]);\n"
    "void softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit);")
replace(src / "types.h", "    /* Client vertex state */",
    "    softgl_vertex_attributes_fn vertex_attributes;\n"
    "    void *vertex_attribute_data;\n    GLuint vertex_attribute_unit;\n\n    /* Client vertex state */")
p = src / "api.c"
p.write_text(p.read_text()+"\nvoid softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit) {\n"
    "    softgl_ctx *c = sg_current(); if (!c) return;\n"
    "    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }\n"
    "    if (texture_unit >= SG_MAX_TEX_UNITS) { sg_set_error(GL_INVALID_VALUE); return; }\n"
    "    c->vertex_attributes = program; c->vertex_attribute_data = user;\n"
    "    c->vertex_attribute_unit = texture_unit;\n}\n")
replace(src / "pipeline.c", "    sg_fetch_vertex_attributes(c, index, out, normal, color, inputs);",
    "    sg_fetch_vertex_attributes(c, index, out, normal, color, inputs);\n"
    "    if (c->vertex_attributes) {\n        float texcoord[4];\n"
    "        memcpy(texcoord, &out->uv[c->vertex_attribute_unit], sizeof(texcoord));\n"
    "        c->vertex_attributes(c->vertex_attribute_data, (GLuint)index, color, texcoord);\n"
    "        memcpy(&out->uv[c->vertex_attribute_unit], texcoord, sizeof(texcoord));\n    }")
wrapper = subprocess.check_output(["git", "show", f"{baseline}:wasm/model_wrap.c"], cwd=repo, text=True)
wrapper = wrapper.replace("static void combiner(GLenum function, GLenum a, GLenum b) {",
    (experiment / "attribute_program.c").read_text()+"\nstatic void combiner(GLenum function, GLenum a, GLenum b) {")
wrapper = wrapper.replace("    update_vectors(matrix);", "    prepare_attribute_program(matrix);")
wrapper = wrapper.replace("    glBindBuffer(GL_ARRAY_BUFFER, G.dynamic_vbo);\n    base = (uintptr_t)part->vertex*DYNAMIC_STRIDE*sizeof(float);\n    glColorPointer(4, GL_FLOAT, DYNAMIC_STRIDE*sizeof(float), (const void*)(base+(specular ? 16 : 0)));",
    "    glDisableClientState(GL_COLOR_ARRAY);\n"
    "    attribute_program.specular = specular;\n"
    "    const float *all_vertices = attribute_program.vertices;\n"
    "    attribute_program.vertices = all_vertices+(size_t)part->vertex*STATIC_STRIDE;\n"
    "    softgl_set_vertex_attributes(generate_attributes, &attribute_program, 3);")
wrapper = wrapper.replace("        glTexCoordPointer(3, GL_FLOAT, DYNAMIC_STRIDE*sizeof(float), (const void*)(base+32));",
    "        glDisableClientState(GL_TEXTURE_COORD_ARRAY);")
wrapper = wrapper.replace("    glDrawElements(GL_TRIANGLES, (GLsizei)part->count, GL_UNSIGNED_INT, (const void*)((uintptr_t)part->first*4));",
    "    glDrawElements(GL_TRIANGLES, (GLsizei)part->count, GL_UNSIGNED_INT, (const void*)((uintptr_t)part->first*4));\n"
    "    softgl_set_vertex_attributes(NULL, NULL, 0);\n    attribute_program.vertices = all_vertices;")
(destination / "model_wrap.c").write_text(wrapper)
print(destination)
