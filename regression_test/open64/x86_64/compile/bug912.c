//OBJ
struct go7007 {
  int sensor_framerate;
  int fps_scale;
};

int vti_bitlen(struct go7007 *go)
{
 unsigned int i, max_time_incr = go->sensor_framerate / go->fps_scale;

 for (i = 31; (max_time_incr & ((1 << i) - 1)) == max_time_incr; --i);
 return i + 1;
}
