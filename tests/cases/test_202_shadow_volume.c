#include "harness.h"
#include <math.h>

/* Doom-3 style z-fail stencil shadow volume.
 *
 *   Scene: ground plane + axis-aligned cube caster + directional light.
 *   1) Ambient pass: full scene with low ambient-only material.
 *   2) Shadow-volume pass (color + depth write off): extrude the cube's
 *      silhouette quads away from the light. Z-fail counts back/front
 *      faces; wrap ops avoid wrap-around at the near plane.
 *   3) Lit pass: depth-equal, stencil==0 → diffuse contribution.
 *
 * For an axis-aligned cube with light above/front/right, the silhouette is
 * the loop of edges between the three front-facing and three back-facing
 * faces; we identify it by hard-coding which faces are lit/unlit for the
 * given light vector.
 */

static const float light_dir[3] = { 0.577f, 0.577f, 0.577f }; /* normalized */

/* Cube at origin, half-extent 0.4. */
static const float cube_v[8][3] = {
    {-0.4f,-0.4f,-0.4f}, { 0.4f,-0.4f,-0.4f}, {-0.4f, 0.4f,-0.4f}, { 0.4f, 0.4f,-0.4f},
    {-0.4f,-0.4f, 0.4f}, { 0.4f,-0.4f, 0.4f}, {-0.4f, 0.4f, 0.4f}, { 0.4f, 0.4f, 0.4f},
};
/* Face indices (CCW viewed from outside), normals. */
static const int face_idx[6][4] = {
    {4,5,7,6}, /* +Z */
    {1,0,2,3}, /* -Z */
    {5,1,3,7}, /* +X */
    {0,4,6,2}, /* -X */
    {6,7,3,2}, /* +Y */
    {0,1,5,4}, /* -Y */
};
static const float face_n[6][3] = {
    {0,0,1},{0,0,-1},{1,0,0},{-1,0,0},{0,1,0},{0,-1,0},
};

static void draw_cube_faces(void) {
    glBegin(GL_TRIANGLES);
    for (int f = 0; f < 6; f++) {
        glNormal3fv(face_n[f]);
        int i0 = face_idx[f][0], i1 = face_idx[f][1];
        int i2 = face_idx[f][2], i3 = face_idx[f][3];
        glVertex3fv(cube_v[i0]); glVertex3fv(cube_v[i1]); glVertex3fv(cube_v[i2]);
        glVertex3fv(cube_v[i0]); glVertex3fv(cube_v[i2]); glVertex3fv(cube_v[i3]);
    }
    glEnd();
}

/* Extrude silhouette edges into shadow volume + cap it with near-cap (lit
 * faces) and far-cap (lit faces pushed to infinity). z-fail requires a
 * closed volume, so we emit both caps. */
static void draw_shadow_volume(void) {
    const float L = 20.f; /* extrusion distance */
    float inf[8][3];
    for (int i = 0; i < 8; i++) {
        inf[i][0] = cube_v[i][0] - light_dir[0] * L;
        inf[i][1] = cube_v[i][1] - light_dir[1] * L;
        inf[i][2] = cube_v[i][2] - light_dir[2] * L;
    }
    glBegin(GL_TRIANGLES);
    /* For each face, compute n·L; if >0 it's lit (front cap), else
     * dark (emit far cap reversed). Silhouette: edges where a lit face
     * meets a dark face. */
    int lit[6];
    for (int f = 0; f < 6; f++) {
        float d = face_n[f][0]*light_dir[0] + face_n[f][1]*light_dir[1] + face_n[f][2]*light_dir[2];
        lit[f] = d > 0.f;
    }
    /* Near cap: lit faces using original verts. */
    for (int f = 0; f < 6; f++) {
        if (!lit[f]) continue;
        int i0=face_idx[f][0], i1=face_idx[f][1], i2=face_idx[f][2], i3=face_idx[f][3];
        glVertex3fv(cube_v[i0]); glVertex3fv(cube_v[i1]); glVertex3fv(cube_v[i2]);
        glVertex3fv(cube_v[i0]); glVertex3fv(cube_v[i2]); glVertex3fv(cube_v[i3]);
    }
    /* Far cap: lit faces pushed to infinity, reversed winding. */
    for (int f = 0; f < 6; f++) {
        if (!lit[f]) continue;
        int i0=face_idx[f][0], i1=face_idx[f][1], i2=face_idx[f][2], i3=face_idx[f][3];
        glVertex3fv(inf[i0]); glVertex3fv(inf[i2]); glVertex3fv(inf[i1]);
        glVertex3fv(inf[i0]); glVertex3fv(inf[i3]); glVertex3fv(inf[i2]);
    }
    /* Side quads: for each edge between lit and non-lit face, emit a quad
     * spanning original edge → infinity. Enumerate edges via face pairs. */
    static const int edges[12][4] = {
        /* v0, v1, faceA (CCW along v0->v1), faceB */
        {4,5, 0, 5}, {5,7, 0, 2}, {7,6, 0, 4}, {6,4, 0, 3},
        {1,0, 1, 5}, {3,1, 1, 2}, {2,3, 1, 4}, {0,2, 1, 3},
        {5,1, 2, 5}, {7,3, 2, 4}, {3,2, 3, 4}, {0,4, 3, 5},
    };
    for (int e = 0; e < 12; e++) {
        int v0 = edges[e][0], v1 = edges[e][1];
        int fa = edges[e][2], fb = edges[e][3];
        if (lit[fa] == lit[fb]) continue;
        /* If fa is lit, edge-order v0→v1 is correct for outward; flip if fb lit. */
        int a = v0, b = v1;
        if (lit[fb] && !lit[fa]) { a = v1; b = v0; }
        /* Quad: a, b, inf[b], inf[a] as two triangles. */
        glVertex3fv(cube_v[a]); glVertex3fv(cube_v[b]); glVertex3fv(inf[b]);
        glVertex3fv(cube_v[a]); glVertex3fv(inf[b]);    glVertex3fv(inf[a]);
    }
    glEnd();
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.08f, 1.f);
    glClearDepth(1.0);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.3f, -2.6f);
    glRotatef(22.f, 1.f, 0.2f, 0.f);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    /* ---- 1) Ambient pass ---- */
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float lpos[4] = { light_dir[0], light_dir[1], light_dir[2], 0.f };
    const float lamb[4] = { 0.25f, 0.25f, 0.3f, 1.f };
    const float lzero[4] = { 0.f, 0.f, 0.f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, lpos);
    glLightfv(GL_LIGHT0, GL_AMBIENT, lamb);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, lzero);
    const float mdif[4] = { 0.8f, 0.7f, 0.6f, 1.f };
    const float mamb[4] = { 1.f, 1.f, 1.f, 1.f };
    glMaterialfv(GL_FRONT, GL_AMBIENT, mamb);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    /* Ground. */
    glBegin(GL_TRIANGLES);
    glNormal3f(0, 1, 0);
    glVertex3f(-2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, 0.6f);
    glVertex3f(-2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, 0.6f); glVertex3f(-2.f, -0.4f, 0.6f);
    glEnd();
    /* Caster cube (ambient pass). */
    draw_cube_faces();

    /* ---- 2) Shadow volume pass ---- */
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glDepthMask(GL_FALSE);
    glDepthFunc(GL_LESS);
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0, 0xFF);
    glDisable(GL_CULL_FACE);
    glEnable(GL_CULL_FACE);

    glDisable(GL_LIGHTING);
    glColor3f(0, 0, 0);

    /* Back faces: stencil increment on depth-fail. */
    glCullFace(GL_FRONT);
    glStencilOp(GL_KEEP, GL_INCR_WRAP, GL_KEEP);
    draw_shadow_volume();
    /* Front faces: decrement on depth-fail. */
    glCullFace(GL_BACK);
    glStencilOp(GL_KEEP, GL_DECR_WRAP, GL_KEEP);
    draw_shadow_volume();

    glDisable(GL_CULL_FACE);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glDepthMask(GL_TRUE);

    /* ---- 3) Lit pass ---- */
    glDepthFunc(GL_LEQUAL);
    glStencilFunc(GL_EQUAL, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);

    glEnable(GL_LIGHTING);
    const float ldif[4] = { 0.9f, 0.85f, 0.7f, 1.f };
    glLightfv(GL_LIGHT0, GL_AMBIENT, lzero);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, ldif);
    const float mzero[4] = { 0.f, 0.f, 0.f, 1.f };
    glMaterialfv(GL_FRONT, GL_AMBIENT, mzero);

    glBegin(GL_TRIANGLES);
    glNormal3f(0, 1, 0);
    glVertex3f(-2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, 0.6f);
    glVertex3f(-2.f, -0.4f, -2.f); glVertex3f( 2.f, -0.4f, 0.6f); glVertex3f(-2.f, -0.4f, 0.6f);
    glEnd();
    draw_cube_faces();

    glDisable(GL_BLEND);
    glDisable(GL_STENCIL_TEST);
    glDisable(GL_LIGHTING);
    glDisable(GL_DEPTH_TEST);
}
