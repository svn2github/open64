//OBJ
struct metrics {
}
  __attribute__ ((aligned (8))) ;
struct frame_stats {
  struct metrics  tiny,  low,  high,  bigger,  twox,  max;
  struct {} sad;
};
struct metrics block_metrics_mmx2( unsigned char *a,  unsigned char *b,  int
                                   as,  int bs,       int lines,  struct vf_priv_s *p,  struct frame_stats *s ) {
  struct metrics tm;
  __asm__ volatile(  
        "movq %%mm7, (%1)\n\t"  
        "psubusw " "(%0)" 
        "," 
        "%%mm7" 
        "\n\tpaddusw "  
        "(%0)" 
        "," 
        "%%mm7" "\n\t"  
        "movq %%mm7, (%0)\n\t"  
        "emms"  : : "r" (&s->max), "r" (&tm), "X" (s->max)  : "memory"  );
}

