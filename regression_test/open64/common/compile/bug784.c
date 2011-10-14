//OBJ
struct timespec {
  long tv_nsec;
};

struct kstat {
  struct timespec ctime;
};

struct __large_struct {
};

struct stat64 {
  unsigned st_ctime_nsec;
}
  __attribute__((packed));

static int cp_stat64(struct stat64 *ubuf, struct kstat *stat) {
  if (!
      (__builtin_expect(!!(({
              unsigned long flag, roksum;
              flag;
            }
            ) == 0), 1)) ||
      ({
        int __pu_err;
        do {
          switch ((sizeof(*(&ubuf->st_ctime_nsec)))) {
          case 4: asm volatile("1:        mov""l"" %""k""1,%2\n" "2:\n" ".section.fixup,\"ax\"\n" "3:    mov %3,%0\n" "  jmp 2b\n" ".previous\n" " .section __ex_table,\"a\"\n" " " ".balign 8" " " "\n" " " ".quad" " " "1b" "," "3b" "\n"
                               " .previous\n" : "=r"(__pu_err) :
                               "ir"(((__typeof__(*(&ubuf->st_ctime_nsec)))(stat->ctime.tv_nsec))), "m"
                               ((*(struct __large_struct *)(((&ubuf->st_ctime_nsec))))), "i" (-14), "0"
                               (__pu_err));
          }
        }
        while (0);
        __pu_err;
      }
        ))
    return -14;
}
