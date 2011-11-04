//OBJ
void *
objc_msg_sendv (char * arg_frame, void (*foo)())
{
  return __builtin_apply ( foo, arg_frame, 4);
}
