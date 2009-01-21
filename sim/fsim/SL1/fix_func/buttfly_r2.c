double
buttfly_r2 (double r0, double i0, double r12, double i12, int points, int i,
	    int point_pos, double *out, int ex_point_pos,int guard_set)
{

  double rr, jj;

  out[0] = r0 + r12;
  out[1] = i0 + i12;

  rr = r0 - r12;
  jj = i0 - i12;
  out[2] = cmplex_mul_r (rr, jj, points, i, point_pos, ex_point_pos,guard_set);
  out[3] = cmplex_mul_i (rr, jj, points, i, point_pos, ex_point_pos,guard_set);

  return 0;
}
