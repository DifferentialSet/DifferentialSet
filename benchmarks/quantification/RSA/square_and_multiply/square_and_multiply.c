#include <stdint.h>

struct bigint {
    uint32_t n;
};

// CacheAudit doesn't support return instruction, so this function only mimic the computation.
void mpi_sqr(uint32_t *r) {
    uint32_t ret;
    ret = *r * *r;
}

// CacheAudit doesn't support return instruction, so this function only mimic the computation.
void mpi_mod(uint32_t *r, uint32_t *m) {
    uint32_t ret;
    // CacheAudit doesn't support division, so use addition instead.
    ret = *r + *m;
}

// CacheAudit doesn't support return instruction, so this function only mimic the computation.
void mpi_mul(uint32_t *b, uint32_t *r) {
    uint32_t ret;
    ret = *r * *b;
}

int main() {
    uint32_t e_sec, r, m, b, i;
    uint32_t *r_p = &r, *e_p = &e_sec, *m_p = &m, *b_p = &b;
    for (i = 1; i > 0; i--) {
        mpi_sqr(r_p);
        mpi_mod(r_p, m_p);
        if (e_sec & (1 << i)) {
            mpi_mul(b_p, r_p);
            mpi_mod(r_p, m_p);
        }
    }
}