extern unsigned char _ctype[100];

char acpi_parse_apic_instance[100];
struct obs_kernel_param {
 const char *str;
 int (*setup_func)(char *);
 int early;
};


extern struct obs_kernel_param __setup_acpi_parse_apic_instance_setup;
