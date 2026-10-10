#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
atomic_ullong sg_partial_hiz_counts[4];
unsigned long long softgl_scene_partial_hiz_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&sg_partial_hiz_counts[index],memory_order_relaxed) : 0;
}
#endif

void softgl_scene_partial_hiz(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    sg_hz_state *state = sg_hz_state_from_ctx4(c);
    if (!state) return;
    state->active &= ~2;
    if (!enabled || !c->scene_visibility || !(state->active & 1)) return;
    /* Existing ordinary partial cells have no maintained partial maximum.
     * Do not infer validity from them; actual capture writes repopulate masks. */
    for (size_t index = 0; index < (size_t)(c->fb.w/4)*state->rows; index++)
        state->tiles[index].written = 0;
    state->active |= 2;
}
