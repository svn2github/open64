double
buttfly_r4 (double r0, double i0, double r12, double i12, double r14,
	    double i14, double r34, double i34, int points, int i,
	    int point_pos, double *out, int ex_point_pos,int guard_set)
{

  double ar, ax, br, bx, cr, cx, dr, dx, rr, jj;

  ar = r0 + r12;		//ar 17bits
  ax = i0 + i12;

  br = r14 + r34;
  bx = i14 + i34;

  //cal Ao
  out[0] = ar + br;
//              out[0]= bit_convert(out[0],16,point_pos);

  out[1] = ax + bx;
//              out[1]= bit_convert(out[1],16,point_pos);

  //cal Bo
  rr = ar - br;			//rr 18 bit;
  jj = ax - bx;
  out[2] = cmplex_mul_r (rr, jj, points, 2 * i, point_pos, ex_point_pos,guard_set);
  //            out[2]= bit_convert(out[2],16,point_pos);

  out[3] = cmplex_mul_i (rr, jj, points, 2 * i, point_pos, ex_point_pos,guard_set);
  //            out[3]= bit_convert(out[3],16,point_pos);
  

  //===============================================


  cr = r0 - r12;
  cx = i0 - i12;

  dr = r14 - r34;
  dx = i14 - i34;

  //cal Co
  rr = cr + dx;
  jj = cx - dr;

  out[4] = cmplex_mul_r (rr, jj, points, i, point_pos, ex_point_pos,guard_set);
  //            out[4]= bit_convert(out[4],16,point_pos);
  out[5] = cmplex_mul_i (rr, jj, points, i, point_pos, ex_point_pos,guard_set);
  //           out[5]= bit_convert(out[5],16,point_pos);


    
  //cal Do
  rr = cr - dx;
  jj = cx + dr;
  out[6] = cmplex_mul_r (rr, jj, points, 3 * i, point_pos, ex_point_pos,guard_set);
  //           out[6]= bit_convert(out[6],16,point_pos);

  out[7] = cmplex_mul_i (rr, jj, points, 3 * i, point_pos, ex_point_pos,guard_set);
  //              out[7]= bit_convert(out[7],16,point_pos);


}
