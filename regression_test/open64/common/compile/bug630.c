//OBJ
//FLAGS: -O3
typedef struct session {
  int new_data:1;
  int msg_said:1;
} session;

int baz;

void fe_print_text (struct session *sess, int foo)
{
  if (!sess->new_data) {
    sess->new_data = 1;
    if (sess->msg_said)
      baz = 1;
  }
}
