//TAG: kernel
//OBJ
typedef long __kernel_time_t;
typedef long __kernel_suseconds_t;
typedef signed long long s64;
typedef __kernel_suseconds_t suseconds_t;
struct timespec;
extern struct timespec ns_to_timespec(const s64 nsec);
struct other {
  struct timespec *s;
  int x;
} o;
void foo(void) {
  o.x++;
}

struct timeval {
 __kernel_time_t tv_sec;
 __kernel_suseconds_t tv_usec;
};

struct timespec {
 __kernel_time_t tv_sec;
 long tv_nsec;
};


struct timeval ns_to_timeval(const s64 nsec)
{
 struct timespec ts = ns_to_timespec(nsec);
 struct timeval tv;

 tv.tv_sec = ts.tv_sec;
 tv.tv_usec = (suseconds_t) ts.tv_nsec / 1000;

 return tv;
}


