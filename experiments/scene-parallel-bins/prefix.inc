    /* Prefixes assign each geometry task a disjoint, original-order segment
     * in every bin. Only task totals are visited by the caller. */
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        uint32_t total = 0;
        for (int i = 0; i < g->task_count; i++) {
            scene_geometry_task *task = &g->tasks[i];
            task->bin_offsets[bin] = total;
            total += task->bin_counts[bin];
        }
        g->bins[bin].count = total;
    }
