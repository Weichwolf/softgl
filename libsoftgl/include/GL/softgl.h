#ifndef SOFTGL_H
#define SOFTGL_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned int   GLenum;
typedef unsigned char  GLboolean;
typedef unsigned int   GLbitfield;
typedef signed char    GLbyte;
typedef short          GLshort;
typedef int            GLint;
typedef int            GLsizei;

typedef unsigned char  GLubyte;
typedef unsigned short GLushort;
typedef unsigned int   GLuint;
typedef float          GLfloat;
typedef float          GLclampf;
typedef double         GLdouble;
typedef double         GLclampd;
typedef void           GLvoid;
typedef ptrdiff_t      GLsizeiptr;
typedef ptrdiff_t      GLintptr;
typedef uint64_t       GLuint64;
typedef int64_t        GLint64;

#define GL_FALSE 0
#define GL_TRUE  1

/* Boolean-like */
#define GL_NO_ERROR                       0x0000
#define GL_INVALID_ENUM                   0x0500
#define GL_INVALID_VALUE                  0x0501
#define GL_INVALID_OPERATION              0x0502
#define GL_OUT_OF_MEMORY                  0x0505

/* Clear bits */
#define GL_DEPTH_BUFFER_BIT               0x00000100
#define GL_STENCIL_BUFFER_BIT             0x00000400
#define GL_COLOR_BUFFER_BIT               0x00004000

/* Multisampling (core since OpenGL 1.3). */
#define GL_MULTISAMPLE                     0x809D
#define GL_SAMPLE_ALPHA_TO_COVERAGE        0x809E
#define GL_SAMPLE_ALPHA_TO_ONE             0x809F
#define GL_SAMPLE_COVERAGE                 0x80A0
#define GL_SAMPLE_BUFFERS                  0x80A8
#define GL_SAMPLES                         0x80A9
#define GL_SAMPLE_COVERAGE_VALUE           0x80AA
#define GL_SAMPLE_COVERAGE_INVERT          0x80AB
#define GL_MULTISAMPLE_BIT                 0x20000000

/* Primitives */
#define GL_POINTS                         0x0000
#define GL_LINES                          0x0001
#define GL_LINE_LOOP                      0x0002
#define GL_LINE_STRIP                     0x0003
#define GL_TRIANGLES                      0x0004
#define GL_TRIANGLE_STRIP                 0x0005
#define GL_TRIANGLE_FAN                   0x0006
#define GL_QUADS                          0x0007
#define GL_QUAD_STRIP                     0x0008
#define GL_POLYGON                        0x0009

/* Immediate-mode edge flag array token */
#define GL_EDGE_FLAG_ARRAY                0x8079

/* Matrix mode */
#define GL_MODELVIEW                      0x1700
#define GL_PROJECTION                     0x1701
#define GL_TEXTURE                        0x1702

/* Depth */
#define GL_NEVER                          0x0200
#define GL_LESS                           0x0201
#define GL_EQUAL                          0x0202
#define GL_LEQUAL                         0x0203
#define GL_GREATER                        0x0204
#define GL_NOTEQUAL                       0x0205
#define GL_GEQUAL                         0x0206
#define GL_ALWAYS                         0x0207

/* Face + cull */
#define GL_FRONT                          0x0404
#define GL_BACK                           0x0405
#define GL_FRONT_AND_BACK                 0x0408
#define GL_CW                             0x0900
#define GL_CCW                            0x0901

/* Enable bits */
#define GL_CULL_FACE                      0x0B44
#define GL_DEPTH_TEST                     0x0B71
#define GL_BLEND                          0x0BE2
#define GL_ALPHA_TEST                     0x0BC0
#define GL_SCISSOR_TEST                   0x0C11
#define GL_TEXTURE_2D                     0x0DE1
#define GL_FOG                            0x0B60
#define GL_LIGHTING                       0x0B50
#define GL_LIGHT0                         0x4000
#define GL_LIGHT1                         0x4001
#define GL_LIGHT2                         0x4002
#define GL_LIGHT3                         0x4003
#define GL_LIGHT4                         0x4004
#define GL_LIGHT5                         0x4005
#define GL_LIGHT6                         0x4006
#define GL_LIGHT7                         0x4007
#define GL_NORMALIZE                      0x0BA1

/* Data types */
#define GL_BYTE                           0x1400
#define GL_UNSIGNED_BYTE                  0x1401
#define GL_SHORT                          0x1402
#define GL_UNSIGNED_SHORT                 0x1403
#define GL_INT                            0x1404
#define GL_UNSIGNED_INT                   0x1405
#define GL_FLOAT                          0x1406

/* Pixel formats */
#define GL_ALPHA                          0x1906
#define GL_RGB                            0x1907
#define GL_RGBA                           0x1908
#define GL_LUMINANCE                      0x1909
#define GL_LUMINANCE_ALPHA                0x190A

/* Texture */
#define GL_TEXTURE_MAG_FILTER             0x2800
#define GL_TEXTURE_MIN_FILTER             0x2801
#define GL_TEXTURE_WRAP_S                 0x2802
#define GL_TEXTURE_WRAP_T                 0x2803
#define GL_TEXTURE_WRAP_R                 0x8072
#define GL_NEAREST                        0x2600
#define GL_LINEAR                         0x2601
#define GL_NEAREST_MIPMAP_NEAREST         0x2700
#define GL_LINEAR_MIPMAP_NEAREST          0x2701
#define GL_NEAREST_MIPMAP_LINEAR          0x2702
#define GL_LINEAR_MIPMAP_LINEAR           0x2703
#define GL_REPEAT                         0x2901
#define GL_CLAMP                          0x2900
#define GL_CLAMP_TO_EDGE                  0x812F

/* 1D / 3D / Cube-map targets */
#define GL_TEXTURE_1D                     0x0DE0
#define GL_TEXTURE_3D                     0x806F
#define GL_TEXTURE_CUBE_MAP               0x8513
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X    0x8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X    0x8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y    0x8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    0x8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z    0x8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    0x851A
#define GL_TEXTURE_BINDING_1D             0x8068
#define GL_TEXTURE_BINDING_2D             0x8069
#define GL_TEXTURE_BINDING_3D             0x806A
#define GL_TEXTURE_BINDING_CUBE_MAP       0x8514
#define GL_PROXY_TEXTURE_1D               0x8063
#define GL_PROXY_TEXTURE_2D               0x8064
#define GL_PROXY_TEXTURE_3D               0x8070
#define GL_PROXY_TEXTURE_CUBE_MAP         0x851B
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE      0x851C
#define GL_MAX_3D_TEXTURE_SIZE            0x8073

/* Tex env */
#define GL_TEXTURE_ENV                    0x2300
#define GL_TEXTURE_ENV_MODE               0x2200
#define GL_TEXTURE_ENV_COLOR              0x2201
#define GL_MODULATE                       0x2100
#define GL_REPLACE                        0x1E01
#define GL_DECAL                          0x2101
#define GL_COMBINE                        0x8570
#define GL_COMBINE_RGB                    0x8571
#define GL_COMBINE_ALPHA                  0x8572
#define GL_SOURCE0_RGB                    0x8580
#define GL_SOURCE1_RGB                    0x8581
#define GL_SOURCE2_RGB                    0x8582
#define GL_OPERAND0_RGB                   0x8590
#define GL_OPERAND1_RGB                   0x8591
#define GL_OPERAND2_RGB                   0x8592
#define GL_SOURCE0_ALPHA                  0x8588
#define GL_SOURCE1_ALPHA                  0x8589
#define GL_SOURCE2_ALPHA                  0x858A
#define GL_OPERAND0_ALPHA                 0x8598
#define GL_OPERAND1_ALPHA                 0x8599
#define GL_OPERAND2_ALPHA                 0x859A
#define GL_RGB_SCALE                      0x8573
#define GL_ALPHA_SCALE                    0x0D1C
#define GL_ADD                            0x0104
#define GL_ADD_SIGNED                     0x8574
#define GL_INTERPOLATE                    0x8575
#define GL_SUBTRACT                       0x84E7
#define GL_TEXTURE0                       0x84C0
#define GL_TEXTURE1                       0x84C1
#define GL_TEXTURE2                       0x84C2
#define GL_TEXTURE3                       0x84C3
#define GL_DOT3_RGB                       0x86AE
#define GL_DOT3_RGBA                      0x86AF
#define GL_PRIMARY_COLOR                  0x8577
#define GL_PREVIOUS                       0x8578
#define GL_CONSTANT                       0x8576
#define GL_SRC_COLOR                      0x0300
#define GL_ONE_MINUS_SRC_COLOR            0x0301
#define GL_SRC_ALPHA                      0x0302
#define GL_ONE_MINUS_SRC_ALPHA            0x0303
#define GL_DST_ALPHA                      0x0304
#define GL_ONE_MINUS_DST_ALPHA            0x0305
#define GL_DST_COLOR                      0x0306
#define GL_ONE_MINUS_DST_COLOR            0x0307
#define GL_ZERO                           0x0000
#define GL_ONE                            0x0001

/* Fog */
#define GL_FOG_MODE                       0x0B65
#define GL_FOG_DENSITY                    0x0B62
#define GL_FOG_START                      0x0B63
#define GL_FOG_END                        0x0B64
#define GL_FOG_COLOR                      0x0B66
#define GL_EXP                            0x0800
#define GL_EXP2                           0x0801
#define GL_LINEAR_FOG                     0x2601

/* Lighting */
#define GL_AMBIENT                        0x1200
#define GL_DIFFUSE                        0x1201
#define GL_SPECULAR                       0x1202
#define GL_POSITION                       0x1203
#define GL_SPOT_DIRECTION                 0x1204
#define GL_SPOT_EXPONENT                  0x1205
#define GL_SPOT_CUTOFF                    0x1206
#define GL_CONSTANT_ATTENUATION           0x1207
#define GL_LINEAR_ATTENUATION             0x1208
#define GL_QUADRATIC_ATTENUATION          0x1209
#define GL_SHININESS                      0x1601
#define GL_EMISSION                       0x1600
#define GL_AMBIENT_AND_DIFFUSE            0x1602

/* VBO */
#define GL_ARRAY_BUFFER                   0x8892
#define GL_ELEMENT_ARRAY_BUFFER           0x8893
#define GL_STATIC_DRAW                    0x88E4
#define GL_DYNAMIC_DRAW                   0x88E8
#define GL_STREAM_DRAW                    0x88E0

/* Vertex arrays */
#define GL_VERTEX_ARRAY                   0x8074
#define GL_NORMAL_ARRAY                   0x8075
#define GL_COLOR_ARRAY                    0x8076
#define GL_TEXTURE_COORD_ARRAY            0x8078

/* Get */
#define GL_VIEWPORT                       0x0BA2
#define GL_MODELVIEW_MATRIX               0x0BA6
#define GL_PROJECTION_MATRIX              0x0BA7
#define GL_MAX_LIGHTS                     0x0D31
#define GL_MAX_TEXTURE_UNITS              0x84E2
#define GL_MAX_TEXTURE_SIZE               0x0D33

/* Line / point / polygon mode */
#define GL_POINT_SIZE                     0x0B11
#define GL_LINE_WIDTH                     0x0B21
#define GL_POINT                          0x1B00
#define GL_LINE                           0x1B01
#define GL_FILL                           0x1B02
#define GL_POLYGON_MODE                   0x0B40
#define GL_POLYGON_OFFSET_UNITS           0x2A00
#define GL_POLYGON_OFFSET_POINT           0x2A01
#define GL_POLYGON_OFFSET_LINE            0x2A02
#define GL_POLYGON_OFFSET_FILL            0x8037
#define GL_POLYGON_OFFSET_FACTOR          0x8038

/* Stencil */
#define GL_STENCIL_TEST                   0x0B90
#define GL_STENCIL_CLEAR_VALUE            0x0B91
#define GL_STENCIL_FUNC                   0x0B92
#define GL_STENCIL_VALUE_MASK             0x0B93
#define GL_STENCIL_FAIL                   0x0B94
#define GL_STENCIL_PASS_DEPTH_FAIL        0x0B95
#define GL_STENCIL_PASS_DEPTH_PASS        0x0B96
#define GL_STENCIL_REF                    0x0B97
#define GL_STENCIL_WRITEMASK              0x0B98
#define GL_STENCIL_BITS                   0x0D57
#define GL_KEEP                           0x1E00
#define GL_INCR                           0x1E02
#define GL_DECR                           0x1E03
#define GL_INVERT                         0x150A
#define GL_INCR_WRAP                      0x8507
#define GL_DECR_WRAP                      0x8508

/* Display lists */
#define GL_COMPILE                        0x1300
#define GL_COMPILE_AND_EXECUTE            0x1301
#define GL_LIST_BASE                      0x0B32
#define GL_LIST_INDEX                     0x0B33
#define GL_LIST_MODE                      0x0B30
#define GL_MAX_LIST_NESTING               0x0B31
#define GL_2_BYTES                        0x1407
#define GL_3_BYTES                        0x1408
#define GL_4_BYTES                        0x1409

/* User clip planes */
#define GL_CLIP_PLANE0                    0x3000
#define GL_CLIP_PLANE1                    0x3001
#define GL_CLIP_PLANE2                    0x3002
#define GL_CLIP_PLANE3                    0x3003
#define GL_CLIP_PLANE4                    0x3004
#define GL_CLIP_PLANE5                    0x3005
#define GL_MAX_CLIP_PLANES                0x0D32

/* Color material */
#define GL_COLOR_MATERIAL                 0x0B57
#define GL_COLOR_MATERIAL_FACE            0x0B55
#define GL_COLOR_MATERIAL_PARAMETER       0x0B56

/* Color mask + index mask */
#define GL_COLOR_WRITEMASK                0x0C23
#define GL_INDEX_WRITEMASK                0x0C21

/* Logic op (GL_INVERT already defined for stencil; value 0x150A is shared). */
#define GL_CLEAR                          0x1500
#define GL_AND                            0x1501
#define GL_AND_REVERSE                    0x1502
#define GL_COPY                           0x1503
#define GL_AND_INVERTED                   0x1504
#define GL_NOOP                           0x1505
#define GL_XOR                            0x1506
#define GL_OR                             0x1507
#define GL_NOR                            0x1508
#define GL_EQUIV                          0x1509
/* GL_INVERT                               0x150A already defined */
#define GL_OR_REVERSE                     0x150B
#define GL_COPY_INVERTED                  0x150C
#define GL_OR_INVERTED                    0x150D
#define GL_NAND                           0x150E
#define GL_SET                            0x150F
#define GL_COLOR_LOGIC_OP                 0x0BF2
#define GL_LOGIC_OP_MODE                  0x0BF0
#define GL_INDEX_LOGIC_OP                 0x0BF1

/* Pixel transfer */
#define GL_PACK_ALIGNMENT                 0x0D05
#define GL_PACK_ROW_LENGTH                0x0D02
#define GL_PACK_SKIP_ROWS                 0x0D03
#define GL_PACK_SKIP_PIXELS               0x0D04
#define GL_PACK_LSB_FIRST                 0x0D01
#define GL_PACK_SWAP_BYTES                0x0D00
#define GL_UNPACK_ALIGNMENT               0x0CF5
#define GL_UNPACK_ROW_LENGTH              0x0CF2
#define GL_UNPACK_SKIP_ROWS               0x0CF3
#define GL_UNPACK_SKIP_PIXELS             0x0CF4
#define GL_UNPACK_LSB_FIRST               0x0CF1
#define GL_UNPACK_SWAP_BYTES              0x0CF0
#define GL_ZOOM_X                         0x0D16
#define GL_ZOOM_Y                         0x0D17
#define GL_CURRENT_RASTER_POSITION        0x0B07
#define GL_CURRENT_RASTER_POSITION_VALID  0x0B08
#define GL_CURRENT_RASTER_COLOR           0x0B04
#define GL_DEPTH_COMPONENT                0x1902
#define GL_STENCIL_INDEX                  0x1901
#define GL_COLOR                          0x1800
#define GL_DEPTH                          0x1801
#define GL_STENCIL                        0x1802

/* Occlusion queries (ARB_occlusion_query) */
#define GL_SAMPLES_PASSED                 0x8914
#define GL_ANY_SAMPLES_PASSED             0x8C2F
#define GL_QUERY_COUNTER_BITS             0x8864
#define GL_CURRENT_QUERY                  0x8865
#define GL_QUERY_RESULT                   0x8866
#define GL_QUERY_RESULT_AVAILABLE         0x8867

/* Buffer mapping (ARB_vertex_buffer_object mapping subset) */
#define GL_READ_ONLY                      0x88B8
#define GL_WRITE_ONLY                     0x88B9
#define GL_READ_WRITE                     0x88BA
#define GL_BUFFER_SIZE                    0x8764
#define GL_BUFFER_USAGE                   0x8765
#define GL_BUFFER_ACCESS                  0x88BB
#define GL_BUFFER_MAPPED                  0x88BC
#define GL_BUFFER_MAP_POINTER             0x88BD

/* Miscellaneous state enums for glGet*. */
#define GL_CURRENT_COLOR                  0x0B00
#define GL_CURRENT_INDEX                  0x0B01
#define GL_CURRENT_NORMAL                 0x0B02
#define GL_CURRENT_TEXTURE_COORDS         0x0B03
#define GL_SHADE_MODEL                    0x0B54
#define GL_MATRIX_MODE                    0x0BA0
#define GL_DEPTH_RANGE                    0x0B70
#define GL_DEPTH_WRITEMASK                0x0B72
#define GL_DEPTH_CLEAR_VALUE              0x0B73
#define GL_DEPTH_FUNC                     0x0B74
#define GL_CULL_FACE_MODE                 0x0B45
#define GL_FRONT_FACE                     0x0B46
#define GL_COLOR_CLEAR_VALUE              0x0C22
#define GL_BLEND_SRC                      0x0BE1
#define GL_BLEND_DST                      0x0BE0
#define GL_ALPHA_TEST_FUNC                0x0BC1
#define GL_ALPHA_TEST_REF                 0x0BC2
#define GL_LINE_SMOOTH                    0x0B20
#define GL_POINT_SMOOTH                   0x0B10
#define GL_POLYGON_SMOOTH                 0x0B41
#define GL_MAX_MATRIX_STACK_DEPTH         0x0D38   /* alias for MAX_PROJECTION_STACK_DEPTH */
#define GL_MAX_MODELVIEW_STACK_DEPTH      0x0D36
#define GL_MAX_PROJECTION_STACK_DEPTH     0x0D38
#define GL_MAX_TEXTURE_STACK_DEPTH        0x0D39
#define GL_MAX_VIEWPORT_DIMS              0x0D3A
#define GL_TEXTURE_MATRIX                 0x0BA8
#define GL_ACTIVE_TEXTURE                 0x84E0
#define GL_CLIENT_ACTIVE_TEXTURE          0x84E1
#define GL_ARRAY_BUFFER_BINDING           0x8894
#define GL_ELEMENT_ARRAY_BUFFER_BINDING   0x8895
#define GL_RED_BITS                       0x0D52
#define GL_GREEN_BITS                     0x0D53
#define GL_BLUE_BITS                      0x0D54
#define GL_ALPHA_BITS                     0x0D55
#define GL_DEPTH_BITS                     0x0D56
#define GL_SUBPIXEL_BITS                  0x0D50
#define GL_DOUBLEBUFFER                   0x0C32
#define GL_STEREO                         0x0C33
#define GL_SCISSOR_BOX                    0x0C10
#define GL_VERTEX_ARRAY_SIZE              0x807A
#define GL_VERTEX_ARRAY_TYPE              0x807B
#define GL_VERTEX_ARRAY_STRIDE            0x807C
#define GL_NORMAL_ARRAY_TYPE              0x807E
#define GL_NORMAL_ARRAY_STRIDE            0x807F
#define GL_COLOR_ARRAY_SIZE               0x8081
#define GL_COLOR_ARRAY_TYPE               0x8082
#define GL_COLOR_ARRAY_STRIDE             0x8083
#define GL_TEXTURE_COORD_ARRAY_SIZE       0x8088
#define GL_TEXTURE_COORD_ARRAY_TYPE       0x8089
#define GL_TEXTURE_COORD_ARRAY_STRIDE     0x808A
#define GL_VENDOR                         0x1F00
#define GL_RENDERER                       0x1F01
#define GL_VERSION                        0x1F02
#define GL_EXTENSIONS                     0x1F03

/* Hint */
#define GL_PERSPECTIVE_CORRECTION_HINT    0x0C50
#define GL_POINT_SMOOTH_HINT              0x0C51
#define GL_LINE_SMOOTH_HINT               0x0C52
#define GL_POLYGON_SMOOTH_HINT            0x0C53
#define GL_FOG_HINT                       0x0C54
#define GL_GENERATE_MIPMAP_HINT           0x8192
#define GL_DONT_CARE                      0x1100
#define GL_FASTEST                        0x1101
#define GL_NICEST                         0x1102

/* Evaluators (1D/2D Bezier maps). */
#define GL_MAP1_COLOR_4                   0x0D90
#define GL_MAP1_INDEX                     0x0D91
#define GL_MAP1_NORMAL                    0x0D92
#define GL_MAP1_TEXTURE_COORD_1           0x0D93
#define GL_MAP1_TEXTURE_COORD_2           0x0D94
#define GL_MAP1_TEXTURE_COORD_3           0x0D95
#define GL_MAP1_TEXTURE_COORD_4           0x0D96
#define GL_MAP1_VERTEX_3                  0x0D97
#define GL_MAP1_VERTEX_4                  0x0D98
#define GL_MAP2_COLOR_4                   0x0DB0
#define GL_MAP2_INDEX                     0x0DB1
#define GL_MAP2_NORMAL                    0x0DB2
#define GL_MAP2_TEXTURE_COORD_1           0x0DB3
#define GL_MAP2_TEXTURE_COORD_2           0x0DB4
#define GL_MAP2_TEXTURE_COORD_3           0x0DB5
#define GL_MAP2_TEXTURE_COORD_4           0x0DB6
#define GL_MAP2_VERTEX_3                  0x0DB7
#define GL_MAP2_VERTEX_4                  0x0DB8
#define GL_MAP1_GRID_DOMAIN               0x0DD0
#define GL_MAP1_GRID_SEGMENTS             0x0DD1
#define GL_MAP2_GRID_DOMAIN               0x0DD2
#define GL_MAP2_GRID_SEGMENTS             0x0DD3
#define GL_AUTO_NORMAL                    0x0D80
#define GL_COEFF                          0x0A00
#define GL_ORDER                          0x0A01
#define GL_DOMAIN                         0x0A02

/* Accumulation buffer. */
#define GL_ACCUM                          0x0100
#define GL_LOAD                           0x0101
#define GL_RETURN                         0x0102
#define GL_MULT                           0x0103
/* GL_ADD (0x0104) already defined */
#define GL_ACCUM_BUFFER_BIT               0x00000200
#define GL_ACCUM_CLEAR_VALUE              0x0B80
#define GL_ACCUM_RED_BITS                 0x0D58
#define GL_ACCUM_GREEN_BITS               0x0D59
#define GL_ACCUM_BLUE_BITS                0x0D5A
#define GL_ACCUM_ALPHA_BITS               0x0D5B

/* Selection + Feedback. */
#define GL_RENDER                         0x1C00
#define GL_FEEDBACK                       0x1C01
#define GL_SELECT                         0x1C02
#define GL_RENDER_MODE                    0x0C40
#define GL_SELECTION_BUFFER_POINTER       0x0DF3
#define GL_SELECTION_BUFFER_SIZE          0x0DF4
#define GL_FEEDBACK_BUFFER_POINTER        0x0DF0
#define GL_FEEDBACK_BUFFER_SIZE           0x0DF1
#define GL_FEEDBACK_BUFFER_TYPE           0x0DF2
#define GL_NAME_STACK_DEPTH               0x0D70
#define GL_MAX_NAME_STACK_DEPTH           0x0D37
#define GL_2D                             0x0600
#define GL_3D                             0x0601
#define GL_3D_COLOR                       0x0602
#define GL_3D_COLOR_TEXTURE               0x0603
#define GL_4D_COLOR_TEXTURE               0x0604
#define GL_PASS_THROUGH_TOKEN             0x0700
#define GL_POINT_TOKEN                    0x0701
#define GL_LINE_TOKEN                     0x0702
#define GL_POLYGON_TOKEN                  0x0703
#define GL_BITMAP_TOKEN                   0x0704
#define GL_DRAW_PIXEL_TOKEN               0x0705
#define GL_COPY_PIXEL_TOKEN               0x0706
#define GL_LINE_RESET_TOKEN               0x0707

/* Line/Polygon stipple. */
#define GL_LINE_STIPPLE                   0x0B24
#define GL_LINE_STIPPLE_PATTERN           0x0B25
#define GL_LINE_STIPPLE_REPEAT            0x0B26
#define GL_POLYGON_STIPPLE                0x0B42

/* ---- Entry points ---- */

void glClearColor(GLclampf r, GLclampf g, GLclampf b, GLclampf a);
void glClearDepth(GLclampd d);
void glClear(GLbitfield mask);

void glViewport(GLint x, GLint y, GLsizei w, GLsizei h);
void glScissor(GLint x, GLint y, GLsizei w, GLsizei h);
void glDepthFunc(GLenum f);
void glCullFace(GLenum m);
void glFrontFace(GLenum m);
void glEnable(GLenum cap);
void glDisable(GLenum cap);
GLboolean glIsEnabled(GLenum cap);

void glMatrixMode(GLenum m);
void glLoadIdentity(void);
void glLoadMatrixf(const GLfloat *m);
void glMultMatrixf(const GLfloat *m);
void glPushMatrix(void);
void glPopMatrix(void);
void glTranslatef(GLfloat x, GLfloat y, GLfloat z);
void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glScalef(GLfloat x, GLfloat y, GLfloat z);
void glOrtho(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);
void glFrustum(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f);

void glGenBuffers(GLsizei n, GLuint *out);
void glDeleteBuffers(GLsizei n, const GLuint *ids);
void glBindBuffer(GLenum target, GLuint id);
void glBufferData(GLenum target, GLsizeiptr size, const void *data, GLenum usage);
void glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const void *data);

void glEnableClientState(GLenum cap);
void glDisableClientState(GLenum cap);
void glVertexPointer(GLint size, GLenum type, GLsizei stride, const void *ptr);
void glNormalPointer(GLenum type, GLsizei stride, const void *ptr);
void glColorPointer(GLint size, GLenum type, GLsizei stride, const void *ptr);
void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *ptr);
void glClientActiveTexture(GLenum unit);

void glDrawArrays(GLenum mode, GLint first, GLsizei count);
void glDrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);

void glGenTextures(GLsizei n, GLuint *out);
void glDeleteTextures(GLsizei n, const GLuint *ids);
void glBindTexture(GLenum target, GLuint id);
void glActiveTexture(GLenum unit);
void glTexImage2D(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                  GLint border, GLenum format, GLenum type, const void *pixels);
void glTexImage1D(GLenum target, GLint level, GLint ifmt, GLsizei w,
                  GLint border, GLenum format, GLenum type, const void *pixels);
void glTexImage3D(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                  GLsizei d, GLint border, GLenum format, GLenum type,
                  const void *pixels);
void glTexSubImage1D(GLenum target, GLint level, GLint xoff, GLsizei w,
                     GLenum format, GLenum type, const void *pixels);
void glTexSubImage2D(GLenum target, GLint level, GLint xoff, GLint yoff,
                     GLsizei w, GLsizei h, GLenum format, GLenum type,
                     const void *pixels);
void glTexSubImage3D(GLenum target, GLint level, GLint xoff, GLint yoff,
                     GLint zoff, GLsizei w, GLsizei h, GLsizei d,
                     GLenum format, GLenum type, const void *pixels);
void glCopyTexImage1D(GLenum target, GLint level, GLenum ifmt,
                      GLint x, GLint y, GLsizei w, GLint border);
void glCopyTexImage2D(GLenum target, GLint level, GLenum ifmt,
                      GLint x, GLint y, GLsizei w, GLsizei h, GLint border);
void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoff,
                         GLint x, GLint y, GLsizei w);
void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoff, GLint yoff,
                         GLint x, GLint y, GLsizei w, GLsizei h);
void glTexParameteri(GLenum target, GLenum pname, GLint param);
void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
void glTexEnvi(GLenum target, GLenum pname, GLint param);
void glTexEnvf(GLenum target, GLenum pname, GLfloat param);
void glTexEnvfv(GLenum target, GLenum pname, const GLfloat *params);

void glBlendFunc(GLenum s, GLenum d);
void glAlphaFunc(GLenum f, GLclampf ref);
void glSampleCoverage(GLclampf value, GLboolean invert);

void glStencilFunc(GLenum func, GLint ref, GLuint mask);
void glStencilOp(GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilMask(GLuint mask);
void glClearStencil(GLint s);

void glFogi(GLenum p, GLint v);
void glFogf(GLenum p, GLfloat v);
void glFogfv(GLenum p, const GLfloat *v);

void glLightModelfv(GLenum p, const GLfloat *v);
void glLightModelf(GLenum p, GLfloat v);
void glLightModeli(GLenum p, GLint v);

#define GL_LIGHT_MODEL_AMBIENT    0x0B53
#define GL_LIGHT_MODEL_LOCAL_VIEWER 0x0B51
#define GL_LIGHT_MODEL_TWO_SIDE   0x0B52

void glLightfv(GLenum light, GLenum pname, const GLfloat *v);
void glLightf(GLenum light, GLenum pname, GLfloat v);
void glLightiv(GLenum light, GLenum pname, const GLint *v);
void glLighti(GLenum light, GLenum pname, GLint v);
void glMaterialfv(GLenum face, GLenum pname, const GLfloat *v);
void glMaterialf(GLenum face, GLenum pname, GLfloat v);
void glMaterialiv(GLenum face, GLenum pname, const GLint *v);
void glMateriali(GLenum face, GLenum pname, GLint v);
void glLightModeliv(GLenum p, const GLint *v);
void glColorMaterial(GLenum face, GLenum mode);
void glShadeModel(GLenum m);

/* Clip planes */
void glClipPlane(GLenum plane, const GLdouble *equation);
void glGetClipPlane(GLenum plane, GLdouble *equation);

/* Color mask / logic op / hint / index mask */
void glColorMask(GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glLogicOp(GLenum op);
void glHint(GLenum target, GLenum mode);
void glIndexMask(GLuint mask);

GLenum glGetError(void);
void glGetIntegerv(GLenum p, GLint *v);
void glGetFloatv(GLenum p, GLfloat *v);
void glGetBooleanv(GLenum p, GLboolean *v);
void glGetDoublev(GLenum p, GLdouble *v);
const GLubyte *glGetString(GLenum name);

/* Occlusion queries */
void      glGenQueries(GLsizei n, GLuint *ids);
void      glDeleteQueries(GLsizei n, const GLuint *ids);
GLboolean glIsQuery(GLuint id);
void      glBeginQuery(GLenum target, GLuint id);
void      glEndQuery(GLenum target);
void      glGetQueryiv(GLenum target, GLenum pname, GLint *params);
void      glGetQueryObjectiv(GLuint id, GLenum pname, GLint *params);
void      glGetQueryObjectuiv(GLuint id, GLenum pname, GLuint *params);

/* Buffer mapping */
void     *glMapBuffer(GLenum target, GLenum access);
GLboolean glUnmapBuffer(GLenum target);
void      glGetBufferParameteriv(GLenum target, GLenum pname, GLint *params);
void      glGetBufferPointerv(GLenum target, GLenum pname, void **params);

/* --- Immediate mode: glBegin / glEnd and all the vertex-emitting calls. --- */

void glBegin(GLenum mode);
void glEnd(void);

/* glVertex */
void glVertex2f(GLfloat x, GLfloat y);
void glVertex2i(GLint x, GLint y);
void glVertex2s(GLshort x, GLshort y);
void glVertex2d(GLdouble x, GLdouble y);
void glVertex3f(GLfloat x, GLfloat y, GLfloat z);
void glVertex3i(GLint x, GLint y, GLint z);
void glVertex3s(GLshort x, GLshort y, GLshort z);
void glVertex3d(GLdouble x, GLdouble y, GLdouble z);
void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4i(GLint x, GLint y, GLint z, GLint w);
void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex2fv(const GLfloat *v);
void glVertex2iv(const GLint *v);
void glVertex2sv(const GLshort *v);
void glVertex2dv(const GLdouble *v);
void glVertex3fv(const GLfloat *v);
void glVertex3iv(const GLint *v);
void glVertex3sv(const GLshort *v);
void glVertex3dv(const GLdouble *v);
void glVertex4fv(const GLfloat *v);
void glVertex4iv(const GLint *v);
void glVertex4sv(const GLshort *v);
void glVertex4dv(const GLdouble *v);

/* glColor */
void glColor3f(GLfloat r, GLfloat g, GLfloat b);
void glColor4f(GLfloat r, GLfloat g, GLfloat b, GLfloat a);
void glColor3d(GLdouble r, GLdouble g, GLdouble b);
void glColor4d(GLdouble r, GLdouble g, GLdouble b, GLdouble a);
void glColor3b(GLbyte r, GLbyte g, GLbyte b);
void glColor4b(GLbyte r, GLbyte g, GLbyte b, GLbyte a);
void glColor3ub(GLubyte r, GLubyte g, GLubyte b);
void glColor4ub(GLubyte r, GLubyte g, GLubyte b, GLubyte a);
void glColor3s(GLshort r, GLshort g, GLshort b);
void glColor4s(GLshort r, GLshort g, GLshort b, GLshort a);
void glColor3us(GLushort r, GLushort g, GLushort b);
void glColor4us(GLushort r, GLushort g, GLushort b, GLushort a);
void glColor3i(GLint r, GLint g, GLint b);
void glColor4i(GLint r, GLint g, GLint b, GLint a);
void glColor3ui(GLuint r, GLuint g, GLuint b);
void glColor4ui(GLuint r, GLuint g, GLuint b, GLuint a);
void glColor3fv(const GLfloat *v);
void glColor4fv(const GLfloat *v);
void glColor3dv(const GLdouble *v);
void glColor4dv(const GLdouble *v);
void glColor3bv(const GLbyte *v);
void glColor4bv(const GLbyte *v);
void glColor3ubv(const GLubyte *v);
void glColor4ubv(const GLubyte *v);
void glColor3sv(const GLshort *v);
void glColor4sv(const GLshort *v);
void glColor3usv(const GLushort *v);
void glColor4usv(const GLushort *v);
void glColor3iv(const GLint *v);
void glColor4iv(const GLint *v);
void glColor3uiv(const GLuint *v);
void glColor4uiv(const GLuint *v);

/* glNormal */
void glNormal3f(GLfloat x, GLfloat y, GLfloat z);
void glNormal3d(GLdouble x, GLdouble y, GLdouble z);
void glNormal3b(GLbyte x, GLbyte y, GLbyte z);
void glNormal3s(GLshort x, GLshort y, GLshort z);
void glNormal3i(GLint x, GLint y, GLint z);
void glNormal3fv(const GLfloat *v);
void glNormal3dv(const GLdouble *v);
void glNormal3bv(const GLbyte *v);
void glNormal3sv(const GLshort *v);
void glNormal3iv(const GLint *v);

/* glTexCoord (unit 0) */
void glTexCoord1f(GLfloat s);
void glTexCoord1i(GLint s);
void glTexCoord1s(GLshort s);
void glTexCoord1d(GLdouble s);
void glTexCoord2f(GLfloat s, GLfloat t);
void glTexCoord2i(GLint s, GLint t);
void glTexCoord2s(GLshort s, GLshort t);
void glTexCoord2d(GLdouble s, GLdouble t);
void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3i(GLint s, GLint t, GLint r);
void glTexCoord3s(GLshort s, GLshort t, GLshort r);
void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord1fv(const GLfloat *v);
void glTexCoord2fv(const GLfloat *v);
void glTexCoord3fv(const GLfloat *v);
void glTexCoord4fv(const GLfloat *v);
void glTexCoord1iv(const GLint *v);
void glTexCoord2iv(const GLint *v);
void glTexCoord3iv(const GLint *v);
void glTexCoord4iv(const GLint *v);
void glTexCoord1sv(const GLshort *v);
void glTexCoord2sv(const GLshort *v);
void glTexCoord3sv(const GLshort *v);
void glTexCoord4sv(const GLshort *v);
void glTexCoord1dv(const GLdouble *v);
void glTexCoord2dv(const GLdouble *v);
void glTexCoord3dv(const GLdouble *v);
void glTexCoord4dv(const GLdouble *v);

/* glMultiTexCoord */
void glMultiTexCoord1f(GLenum unit, GLfloat s);
void glMultiTexCoord1i(GLenum unit, GLint s);
void glMultiTexCoord1s(GLenum unit, GLshort s);
void glMultiTexCoord1d(GLenum unit, GLdouble s);
void glMultiTexCoord2f(GLenum unit, GLfloat s, GLfloat t);
void glMultiTexCoord2i(GLenum unit, GLint s, GLint t);
void glMultiTexCoord2s(GLenum unit, GLshort s, GLshort t);
void glMultiTexCoord2d(GLenum unit, GLdouble s, GLdouble t);
void glMultiTexCoord3f(GLenum unit, GLfloat s, GLfloat t, GLfloat r);
void glMultiTexCoord3i(GLenum unit, GLint s, GLint t, GLint r);
void glMultiTexCoord3s(GLenum unit, GLshort s, GLshort t, GLshort r);
void glMultiTexCoord3d(GLenum unit, GLdouble s, GLdouble t, GLdouble r);
void glMultiTexCoord4f(GLenum unit, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glMultiTexCoord4i(GLenum unit, GLint s, GLint t, GLint r, GLint q);
void glMultiTexCoord4s(GLenum unit, GLshort s, GLshort t, GLshort r, GLshort q);
void glMultiTexCoord4d(GLenum unit, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glMultiTexCoord1fv(GLenum unit, const GLfloat *v);
void glMultiTexCoord2fv(GLenum unit, const GLfloat *v);
void glMultiTexCoord3fv(GLenum unit, const GLfloat *v);
void glMultiTexCoord4fv(GLenum unit, const GLfloat *v);
void glMultiTexCoord1iv(GLenum unit, const GLint *v);
void glMultiTexCoord2iv(GLenum unit, const GLint *v);
void glMultiTexCoord3iv(GLenum unit, const GLint *v);
void glMultiTexCoord4iv(GLenum unit, const GLint *v);
void glMultiTexCoord1sv(GLenum unit, const GLshort *v);
void glMultiTexCoord2sv(GLenum unit, const GLshort *v);
void glMultiTexCoord3sv(GLenum unit, const GLshort *v);
void glMultiTexCoord4sv(GLenum unit, const GLshort *v);
void glMultiTexCoord1dv(GLenum unit, const GLdouble *v);
void glMultiTexCoord2dv(GLenum unit, const GLdouble *v);
void glMultiTexCoord3dv(GLenum unit, const GLdouble *v);
void glMultiTexCoord4dv(GLenum unit, const GLdouble *v);

/* Edge flag + array element + rect convenience. */
void glEdgeFlag(GLboolean f);
void glEdgeFlagv(const GLboolean *f);
void glEdgeFlagPointer(GLsizei stride, const void *ptr);
void glArrayElement(GLint i);
void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectfv(const GLfloat *a, const GLfloat *b);
void glRectiv(const GLint *a, const GLint *b);
void glRectsv(const GLshort *a, const GLshort *b);
void glRectdv(const GLdouble *a, const GLdouble *b);

void glDepthMask(GLboolean b);

/* Line / point / polygon-mode */
void glLineWidth(GLfloat width);
void glPointSize(GLfloat size);
void glPolygonMode(GLenum face, GLenum mode);
void glPolygonOffset(GLfloat factor, GLfloat units);

/* ---- Pixel transfer ---- */

void glDrawPixels(GLsizei w, GLsizei h, GLenum format, GLenum type, const void *pixels);
void glReadPixels(GLint x, GLint y, GLsizei w, GLsizei h, GLenum format, GLenum type, void *pixels);
void glCopyPixels(GLint x, GLint y, GLsizei w, GLsizei h, GLenum type);
void glPixelStorei(GLenum pname, GLint param);
void glPixelStoref(GLenum pname, GLfloat param);
void glPixelZoom(GLfloat xfactor, GLfloat yfactor);

/* glRasterPos — all coordinate variants funnel into the same state. */
void glRasterPos2f(GLfloat x, GLfloat y);
void glRasterPos2i(GLint x, GLint y);
void glRasterPos2s(GLshort x, GLshort y);
void glRasterPos2d(GLdouble x, GLdouble y);
void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3i(GLint x, GLint y, GLint z);
void glRasterPos3s(GLshort x, GLshort y, GLshort z);
void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos2fv(const GLfloat *v);
void glRasterPos2iv(const GLint *v);
void glRasterPos2sv(const GLshort *v);
void glRasterPos2dv(const GLdouble *v);
void glRasterPos3fv(const GLfloat *v);
void glRasterPos3iv(const GLint *v);
void glRasterPos3sv(const GLshort *v);
void glRasterPos3dv(const GLdouble *v);
void glRasterPos4fv(const GLfloat *v);
void glRasterPos4iv(const GLint *v);
void glRasterPos4sv(const GLshort *v);
void glRasterPos4dv(const GLdouble *v);

/* ---- Display lists ---- */

GLuint    glGenLists(GLsizei range);
void      glDeleteLists(GLuint list, GLsizei range);
GLboolean glIsList(GLuint list);
void      glNewList(GLuint list, GLenum mode);
void      glEndList(void);
void      glCallList(GLuint list);
void      glCallLists(GLsizei n, GLenum type, const GLvoid *lists);
void      glListBase(GLuint base);

/* ---- Evaluators, Accum buffer, Selection/Feedback, Stipple ---- */

void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride,
             GLint order, const GLfloat *points);
void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride,
             GLint order, const GLdouble *points);
void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
             GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
             const GLfloat *points);
void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
             GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
             const GLdouble *points);
void glMapGrid1f(GLint n, GLfloat u1, GLfloat u2);
void glMapGrid1d(GLint n, GLdouble u1, GLdouble u2);
void glMapGrid2f(GLint nu, GLfloat u1, GLfloat u2,
                 GLint nv, GLfloat v1, GLfloat v2);
void glMapGrid2d(GLint nu, GLdouble u1, GLdouble u2,
                 GLint nv, GLdouble v1, GLdouble v2);
void glEvalCoord1f(GLfloat u);
void glEvalCoord1d(GLdouble u);
void glEvalCoord2f(GLfloat u, GLfloat v);
void glEvalCoord2d(GLdouble u, GLdouble v);
void glEvalCoord1fv(const GLfloat *u);
void glEvalCoord2fv(const GLfloat *uv);
void glEvalMesh1(GLenum mode, GLint i1, GLint i2);
void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void glEvalPoint1(GLint i);
void glEvalPoint2(GLint i, GLint j);

void glClearAccum(GLfloat r, GLfloat g, GLfloat b, GLfloat a);
void glAccum(GLenum op, GLfloat value);

GLint glRenderMode(GLenum mode);
void  glSelectBuffer(GLsizei size, GLuint *buffer);
void  glInitNames(void);
void  glLoadName(GLuint name);
void  glPushName(GLuint name);
void  glPopName(void);
void  glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void  glPassThrough(GLfloat token);

void glLineStipple(GLint factor, GLushort pattern);
void glPolygonStipple(const GLubyte *mask);
void glGetPolygonStipple(GLubyte *mask);

/* ---- Softgl-specific extensions ---- */

/* Context management. These are softgl-only; the OSMesa path uses its own. */
typedef struct softgl_ctx softgl_ctx;
softgl_ctx *softgl_create(GLsizei w, GLsizei h);
/* Samples are selected at context creation, as with a window pixel format.
 * Supported values: 0 (single sample), 2 and 4. */
softgl_ctx *softgl_create_multisample(GLsizei w, GLsizei h, GLsizei samples);
void        softgl_destroy(softgl_ctx *c);
void        softgl_make_current(softgl_ctx *c);
const void *softgl_read_rgba8(softgl_ctx *c);

/* Optional pure attribute program for vertex-array draws. It can run on
 * workers; user data must be immutable until glDraw* returns, and it must
 * not call GL. Index is the original source vertex, including dense-cull
 * remapping. Color and the selected texture coordinate are in/out values.
 * Positions remain GL-controlled, so conservative geometry culling stays
 * valid. NULL disables the program. Immediate-mode vertices are unaffected. */
typedef void (*softgl_vertex_attributes_fn)(void *user, GLuint index,
    GLfloat color[4], GLfloat texcoord[4]);
void softgl_set_vertex_attributes(softgl_vertex_attributes_fn program, void *user, GLuint texture_unit);
/* Private experiment: same lifetime/purity contract, all four raw coordinates. */
typedef void (*softgl_vertex_attributes_full_fn)(void *user, GLuint index,
    GLfloat color[4], GLfloat texcoord[4][4]);
void softgl_set_vertex_attributes_full(softgl_vertex_attributes_full_fn program, void *user);
/* NULL restores GL fragment combiners; constants are copied into draw state. */
void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);
void softgl_set_fused_dot3_transparent(const GLfloat tint[4], GLboolean quartic);
/* Private scene experiment: supported opaque material draws only between
 * begin/end. A failed end restores the pre-batch framebuffer for caller replay. */
int softgl_scene_visibility_begin(void);
/* Explicit 1/16-pixel raster quantization for canonical meshes in this scene.
 * Call after a successful begin; each new begin restores full precision.
 * Legacy draws and MSAA keep their existing renderer. */
void softgl_scene_quantized_visibility(GLboolean enabled);
/* Optional native AVX512 material resolve. Call after scene begin; resets for
 * each frame. Returns actual enablement; SSE4.1/WASM SIMD128 stay available. */
int softgl_scene_native_wide(GLboolean enabled);
void softgl_scene_visibility_material(void);
int softgl_scene_visibility_end(void);
/* Experimental canonical mesh path: positions are float XYZ; coordinates
 * are float UV with the same byte stride. Inputs remain immutable through
 * scene end. The copied pure program must preserve UV0/UV2 and alpha one,
 * and may write RGB, half vector UV1, reflection UV3. Only supported opaque
 * triangle batches participate; zero asks the caller to use glDrawElements. */
int softgl_scene_visibility_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes);


#ifdef __cplusplus
}
#endif

#endif
