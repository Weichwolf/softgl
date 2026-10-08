#if defined(__x86_64__) && !defined(__wasm__) && (defined(__GNUC__) || defined(__clang__))
        if (f->native_wide) {
            for (uint32_t first = t->first; first < t->first+t->count; first += 16) {
                uint32_t pixels[16]; unsigned count = t->first+t->count-first;
                if (count > 16) count = 16;
                for (unsigned l = 0; l < 16; l++) pixels[l] = f->pixels[first+(l < count ? l : 0)];
                scene_shade_wide(f,m,pixels,(__mmask16)((1u << count)-1));
            }
            continue;
        }
#endif
