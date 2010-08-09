// This is the test case of bug 589
// CFLAGS: -O2 -g -fPIC -c

 typedef __builtin_va_list __gnuc_va_list;
       struct _IO_FILE {
        };
           typedef __gnuc_va_list va_list;
       static __thread char fr_strerror_buffer[(1024)];
       void fr_strerror_printf(const char *fmt, ...) {
        va_list ap;
        __builtin___vsnprintf_chk (fr_strerror_buffer, sizeof(fr_strerror_buffer), 2 - 1, __builtin_object_size (fr_strerror_buffer, 2 > 1), fmt, ap);
       }
