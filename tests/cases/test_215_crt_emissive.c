#include "harness.h"

/* Dark-room CRT monitor. The "case" is lit; the screen face is emissive
 * (self-illuminated), rendered without lighting so it glows with its base
 * pattern regardless of the dim scene light. Two-pass: case with lighting
 * + modulate-texture, screen with lighting off + replace-texture. */

#define CT 16
static unsigned char case_tex[CT * CT * 4];
#define S 16
static unsigned char screen_tex[S * S * 4];

static void make_textures(void) {
    for (int y = 0; y < CT; y++)
        for (int x = 0; x < CT; x++) {
            int i = (y * CT + x) * 4;
            int edge = (x == 0 || x == CT-1 || y == 0 || y == CT-1);
            case_tex[i+0] = edge ? 40 : 70;
            case_tex[i+1] = edge ? 40 : 70;
            case_tex[i+2] = edge ? 45 : 78;
            case_tex[i+3] = 255;
        }
    for (int y = 0; y < S; y++)
        for (int x = 0; x < S; x++) {
            /* Green pixel grid. Horizontal "scanlines" alternate brightness. */
            int scan = (y & 1) ? 255 : 160;
            int col  = ((x / 2) & 1) ? scan : scan * 2 / 3;
            int i = (y * S + x) * 4;
            screen_tex[i+0] = (unsigned char)(col / 6);
            screen_tex[i+1] = (unsigned char)(col);
            screen_tex[i+2] = (unsigned char)(col / 4);
            screen_tex[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.02f, 0.02f, 0.04f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, 0.f, -2.5f);
    glRotatef(-10.f, 1.f, 0.15f, 0.f);

    GLuint ids[2]; glGenTextures(2, ids);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, CT, CT, 0, GL_RGBA, GL_UNSIGNED_BYTE, case_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, S, S, 0, GL_RGBA, GL_UNSIGNED_BYTE, screen_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);

    /* Pass 1: case (lit, modulate). */
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float lpos[4] = { 0.5f, 0.8f, 0.6f, 0.f };
    const float ldif[4] = { 0.8f, 0.8f, 0.85f, 1.f };
    const float lamb[4] = { 0.2f, 0.2f, 0.22f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, lpos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, ldif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, lamb);
    const float mdif[4] = { 0.9f, 0.9f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    /* Case: a simple box (5 faces — front omitted; screen covers it). */
    const float hx = 0.6f, hy = 0.45f, hz = 0.25f;
    glBegin(GL_QUADS);
    /* Back. */
    glNormal3f(0,0,-1);
    glTexCoord2f(0,0); glVertex3f(-hx,-hy,-hz);
    glTexCoord2f(1,0); glVertex3f( hx,-hy,-hz);
    glTexCoord2f(1,1); glVertex3f( hx, hy,-hz);
    glTexCoord2f(0,1); glVertex3f(-hx, hy,-hz);
    /* Top. */
    glNormal3f(0,1,0);
    glTexCoord2f(0,0); glVertex3f(-hx, hy, hz);
    glTexCoord2f(1,0); glVertex3f( hx, hy, hz);
    glTexCoord2f(1,1); glVertex3f( hx, hy,-hz);
    glTexCoord2f(0,1); glVertex3f(-hx, hy,-hz);
    /* Bottom. */
    glNormal3f(0,-1,0);
    glTexCoord2f(0,0); glVertex3f(-hx,-hy,-hz);
    glTexCoord2f(1,0); glVertex3f( hx,-hy,-hz);
    glTexCoord2f(1,1); glVertex3f( hx,-hy, hz);
    glTexCoord2f(0,1); glVertex3f(-hx,-hy, hz);
    /* Left. */
    glNormal3f(-1,0,0);
    glTexCoord2f(0,0); glVertex3f(-hx,-hy,-hz);
    glTexCoord2f(1,0); glVertex3f(-hx,-hy, hz);
    glTexCoord2f(1,1); glVertex3f(-hx, hy, hz);
    glTexCoord2f(0,1); glVertex3f(-hx, hy,-hz);
    /* Right. */
    glNormal3f(1,0,0);
    glTexCoord2f(0,0); glVertex3f( hx,-hy, hz);
    glTexCoord2f(1,0); glVertex3f( hx,-hy,-hz);
    glTexCoord2f(1,1); glVertex3f( hx, hy,-hz);
    glTexCoord2f(0,1); glVertex3f( hx, hy, hz);
    /* Front bezel (case around the screen). */
    glNormal3f(0,0,1);
    /* Bezel as 4 narrow strips around a central screen hole. */
    float sx = 0.42f, sy = 0.30f;
    /* top strip */
    glTexCoord2f(0,1); glVertex3f(-hx,  sy, hz);
    glTexCoord2f(1,1); glVertex3f( hx,  sy, hz);
    glTexCoord2f(1,1); glVertex3f( hx,  hy, hz);
    glTexCoord2f(0,1); glVertex3f(-hx,  hy, hz);
    /* bottom */
    glTexCoord2f(0,0); glVertex3f(-hx, -hy, hz);
    glTexCoord2f(1,0); glVertex3f( hx, -hy, hz);
    glTexCoord2f(1,0); glVertex3f( hx, -sy, hz);
    glTexCoord2f(0,0); glVertex3f(-hx, -sy, hz);
    /* left */
    glTexCoord2f(0,0); glVertex3f(-hx, -sy, hz);
    glTexCoord2f(0,0); glVertex3f(-sx, -sy, hz);
    glTexCoord2f(0,1); glVertex3f(-sx,  sy, hz);
    glTexCoord2f(0,1); glVertex3f(-hx,  sy, hz);
    /* right */
    glTexCoord2f(1,0); glVertex3f( sx, -sy, hz);
    glTexCoord2f(1,0); glVertex3f( hx, -sy, hz);
    glTexCoord2f(1,1); glVertex3f( hx,  sy, hz);
    glTexCoord2f(1,1); glVertex3f( sx,  sy, hz);
    glEnd();

    /* Pass 2: screen face, emissive (lighting off, texture replace). */
    glDisable(GL_LIGHTING);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glColor3f(1, 1, 1);
    glBegin(GL_QUADS);
        glTexCoord2f(0,0); glVertex3f(-sx, -sy, hz + 0.001f);
        glTexCoord2f(1,0); glVertex3f( sx, -sy, hz + 0.001f);
        glTexCoord2f(1,1); glVertex3f( sx,  sy, hz + 0.001f);
        glTexCoord2f(0,1); glVertex3f(-sx,  sy, hz + 0.001f);
    glEnd();

    glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
