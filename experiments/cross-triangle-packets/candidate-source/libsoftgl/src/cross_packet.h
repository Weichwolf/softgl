#ifndef SOFTGL_CROSS_PACKET_H
#define SOFTGL_CROSS_PACKET_H
#ifndef SG_CROSS_FRAGMENT_PACKETS
#define SG_CROSS_FRAGMENT_PACKETS 0
#endif
#if SG_CROSS_FRAGMENT_PACKETS
int sg_cross_packet_begin(softgl_ctx *c, const sg_tex_tri_ctx *t);
void sg_cross_packet_end(void);
int sg_cross_packet_pending(void);
void sg_cross_packet_test_enable(int enabled);
#endif
#endif
