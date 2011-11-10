
extern int __vgetcpu_mode;
extern volatile unsigned long __jiffies;
extern struct vsyscall_gtod_data __vsyscall_gtod_data __attribute__ ((unused, __section__ (".vsyscall_gtod_data"),aligned(16)));
typeof (__jiffies) *const vdso_jiffies = (void *)0xfeedbabeabcdefabUL;
typeof (__vgetcpu_mode) *const vdso_vgetcpu_mode = (void *)0xfeedbabeabcdefabUL;
typeof (__vsyscall_gtod_data) *const vdso_vsyscall_gtod_data = (void *)0xfeedbabeabcdefabUL;

