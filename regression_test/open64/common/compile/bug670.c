//OBJ
//TAG: kernel
typedef struct _cairo cairo_t;
void cairo_save (cairo_t *cr);
extern __typeof (cairo_save) cairo_save __asm__ ("" "INT_cairo_save") __attribute__((__visibility__("hidden")));
void cairo_save (cairo_t *cr) {}
extern __typeof (cairo_save) EXT_cairo_save __asm__("" "cairo_save") __attribute__((__alias__("" "INT_cairo_save")));
                                                 
