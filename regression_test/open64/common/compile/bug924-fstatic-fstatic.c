//TAG: kernel
//OBJ

typedef unsigned int __u32;
typedef unsigned long kernel_ulong_t;

struct pci_device_id {
 __u32 vendor, device;
 __u32 subvendor, subdevice;
 __u32 class, class_mask;
 kernel_ulong_t driver_data;
};

static struct pci_device_id flexcop_pci_tbl[] = {
 { .vendor = (0x13d0), .device = (0x2103), .subvendor = (~0), .subdevice = (~0) },
 { },
};

static const struct pci_device_id __mod_pci_device_table __attribute__ ((unused, alias("flexcop_pci_tbl")));
