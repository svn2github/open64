//TAG: kernel
//OBJ
typedef unsigned short __u16;
typedef unsigned char __u8;
typedef unsigned int __u32;
typedef unsigned long kernel_ulong_t;
struct pcmcia_device_id {
 __u16 match_flags;
 __u16 manf_id;
 __u16 card_id;
 __u8 func_id;
 __u8 function;
 __u8 device_no;
 __u32 prod_id_hash[4]
  __attribute__((aligned(sizeof(__u32))));
 const char * prod_id[4];
 kernel_ulong_t driver_info;
 char * cisfile;
};
static struct pcmcia_device_id btuart_ids[] = {

 { .match_flags = 0, }
};
extern const struct pcmcia_device_id __mod_pcmcia_device_table __attribute__ ((unused, alias("btuart_ids")));
