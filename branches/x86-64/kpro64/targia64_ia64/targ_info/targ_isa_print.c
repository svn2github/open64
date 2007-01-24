#include <string.h>
#include "topcode.h"
#include "targ_isa_print.h"


const ISA_PRINT_INFO ISA_PRINT_info[69] = {
  { "",             ISA_PRINT_COMP_end },	/* print_NULL[0] */
  { "%5s %s",       ISA_PRINT_COMP_opnd,	/* print_0[0] */
                    ISA_PRINT_COMP_name,	/* print_0[1] */
                    ISA_PRINT_COMP_end },	/* print_0[2] */
  { "      %s",     ISA_PRINT_COMP_name,	/* print_1[0] */
                    ISA_PRINT_COMP_end },	/* print_1[1] */
  { "%5s %s%s",     ISA_PRINT_COMP_opnd,	/* print_2[0] */
                    ISA_PRINT_COMP_name,	/* print_2[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_2[2] */
                    ISA_PRINT_COMP_end },	/* print_2[3] */
  { "%5s %s %s",    ISA_PRINT_COMP_opnd,	/* print_3[0] */
                    ISA_PRINT_COMP_name,	/* print_3[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_3[2] */
                    ISA_PRINT_COMP_end },	/* print_3[3] */
  { "%5s %s%s %s",  ISA_PRINT_COMP_opnd,	/* print_4[0] */
                    ISA_PRINT_COMP_name,	/* print_4[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_4[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_4[3] */
                    ISA_PRINT_COMP_end },	/* print_4[4] */
  { "%5s %s %s,%s",  ISA_PRINT_COMP_opnd,	/* print_5[0] */
                    ISA_PRINT_COMP_name,	/* print_5[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_5[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_5[3] */
                    ISA_PRINT_COMP_end },	/* print_5[4] */
  { "%5s %s %s=%s",  ISA_PRINT_COMP_opnd,	/* print_6[0] */
                    ISA_PRINT_COMP_name,	/* print_6[1] */
                    ISA_PRINT_COMP_result,	/* print_6[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_6[3] */
                    ISA_PRINT_COMP_end },	/* print_6[4] */
  { "%5s %s %s=ip",  ISA_PRINT_COMP_opnd,	/* print_7[0] */
                    ISA_PRINT_COMP_name,	/* print_7[1] */
                    ISA_PRINT_COMP_result,	/* print_7[2] */
                    ISA_PRINT_COMP_end },	/* print_7[3] */
  { "%5s %s %s=pr",  ISA_PRINT_COMP_opnd,	/* print_8[0] */
                    ISA_PRINT_COMP_name,	/* print_8[1] */
                    ISA_PRINT_COMP_result,	/* print_8[2] */
                    ISA_PRINT_COMP_end },	/* print_8[3] */
  { "%5s %s %s=psr",  ISA_PRINT_COMP_opnd,	/* print_9[0] */
                    ISA_PRINT_COMP_name,	/* print_9[1] */
                    ISA_PRINT_COMP_result,	/* print_9[2] */
                    ISA_PRINT_COMP_end },	/* print_9[3] */
  { "%5s %s%s [%s]",  ISA_PRINT_COMP_opnd,	/* print_10[0] */
                    ISA_PRINT_COMP_name,	/* print_10[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_10[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_10[3] */
                    ISA_PRINT_COMP_end },	/* print_10[4] */
  { "%5s %s%s %s,%s",  ISA_PRINT_COMP_opnd,	/* print_11[0] */
                    ISA_PRINT_COMP_name,	/* print_11[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_11[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_11[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_11[4] */
                    ISA_PRINT_COMP_end },	/* print_11[5] */
  { "%5s %s%s %s=%s",  ISA_PRINT_COMP_opnd,	/* print_12[0] */
                    ISA_PRINT_COMP_name,	/* print_12[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_12[2] */
                    ISA_PRINT_COMP_result,	/* print_12[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_12[4] */
                    ISA_PRINT_COMP_end },	/* print_12[5] */
  { "      %s%s%s %s",  ISA_PRINT_COMP_name,	/* print_13[0] */
                    ISA_PRINT_COMP_opnd,	/* print_13[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_13[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_13[3] */
                    ISA_PRINT_COMP_end },	/* print_13[4] */
  { "%5s %s %s,%s=%s",  ISA_PRINT_COMP_opnd,	/* print_14[0] */
                    ISA_PRINT_COMP_name,	/* print_14[1] */
                    ISA_PRINT_COMP_result,	/* print_14[2] */
                    ISA_PRINT_COMP_result+1,	/* print_14[3] */
                    ISA_PRINT_COMP_opnd+1,	/* print_14[4] */
                    ISA_PRINT_COMP_end },	/* print_14[5] */
  { "%5s %s %s=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_15[0] */
                    ISA_PRINT_COMP_name,	/* print_15[1] */
                    ISA_PRINT_COMP_result,	/* print_15[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_15[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_15[4] */
                    ISA_PRINT_COMP_end },	/* print_15[5] */
  { "%5s %s pr=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_16[0] */
                    ISA_PRINT_COMP_name,	/* print_16[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_16[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_16[3] */
                    ISA_PRINT_COMP_end },	/* print_16[4] */
  { "%5s %s psr.l=%s",  ISA_PRINT_COMP_opnd,	/* print_17[0] */
                    ISA_PRINT_COMP_name,	/* print_17[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_17[2] */
                    ISA_PRINT_COMP_end },	/* print_17[3] */
  { "%5s %s%s%s%s %s",  ISA_PRINT_COMP_opnd,	/* print_18[0] */
                    ISA_PRINT_COMP_name,	/* print_18[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_18[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_18[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_18[4] */
                    ISA_PRINT_COMP_opnd+4,	/* print_18[5] */
                    ISA_PRINT_COMP_end },	/* print_18[6] */
  { "%5s %s %s=psr.um",  ISA_PRINT_COMP_opnd,	/* print_19[0] */
                    ISA_PRINT_COMP_name,	/* print_19[1] */
                    ISA_PRINT_COMP_result,	/* print_19[2] */
                    ISA_PRINT_COMP_end },	/* print_19[3] */
  { "%5s %s %s=rr[%s]",  ISA_PRINT_COMP_opnd,	/* print_20[0] */
                    ISA_PRINT_COMP_name,	/* print_20[1] */
                    ISA_PRINT_COMP_result,	/* print_20[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_20[3] */
                    ISA_PRINT_COMP_end },	/* print_20[4] */
  { "%5s %s pr.rot=%s",  ISA_PRINT_COMP_opnd,	/* print_21[0] */
                    ISA_PRINT_COMP_name,	/* print_21[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_21[2] */
                    ISA_PRINT_COMP_end },	/* print_21[3] */
  { "%5s %s psr.um=%s",  ISA_PRINT_COMP_opnd,	/* print_22[0] */
                    ISA_PRINT_COMP_name,	/* print_22[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_22[2] */
                    ISA_PRINT_COMP_end },	/* print_22[3] */
  { "%5s %s rr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_23[0] */
                    ISA_PRINT_COMP_name,	/* print_23[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_23[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_23[3] */
                    ISA_PRINT_COMP_end },	/* print_23[4] */
  { "%5s %s%s %s=[%s]",  ISA_PRINT_COMP_opnd,	/* print_24[0] */
                    ISA_PRINT_COMP_name,	/* print_24[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_24[2] */
                    ISA_PRINT_COMP_result,	/* print_24[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_24[4] */
                    ISA_PRINT_COMP_end },	/* print_24[5] */
  { "%5s %s%s [%s],%s",  ISA_PRINT_COMP_opnd,	/* print_25[0] */
                    ISA_PRINT_COMP_name,	/* print_25[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_25[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_25[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_25[4] */
                    ISA_PRINT_COMP_end },	/* print_25[5] */
  { "%5s %s%s [%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_26[0] */
                    ISA_PRINT_COMP_name,	/* print_26[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_26[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_26[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_26[4] */
                    ISA_PRINT_COMP_end },	/* print_26[5] */
  { "      %s%s%s%s %s",  ISA_PRINT_COMP_name,	/* print_27[0] */
                    ISA_PRINT_COMP_opnd,	/* print_27[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_27[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_27[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_27[4] */
                    ISA_PRINT_COMP_end },	/* print_27[5] */
  { "%5s %s %s=%s,%s,1",  ISA_PRINT_COMP_opnd,	/* print_28[0] */
                    ISA_PRINT_COMP_name,	/* print_28[1] */
                    ISA_PRINT_COMP_result,	/* print_28[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_28[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_28[4] */
                    ISA_PRINT_COMP_end },	/* print_28[5] */
  { "%5s %s %s=dbr[%s]",  ISA_PRINT_COMP_opnd,	/* print_29[0] */
                    ISA_PRINT_COMP_name,	/* print_29[1] */
                    ISA_PRINT_COMP_result,	/* print_29[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_29[3] */
                    ISA_PRINT_COMP_end },	/* print_29[4] */
  { "%5s %s %s=ibr[%s]",  ISA_PRINT_COMP_opnd,	/* print_30[0] */
                    ISA_PRINT_COMP_name,	/* print_30[1] */
                    ISA_PRINT_COMP_result,	/* print_30[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_30[3] */
                    ISA_PRINT_COMP_end },	/* print_30[4] */
  { "%5s %s %s=msr[%s]",  ISA_PRINT_COMP_opnd,	/* print_31[0] */
                    ISA_PRINT_COMP_name,	/* print_31[1] */
                    ISA_PRINT_COMP_result,	/* print_31[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_31[3] */
                    ISA_PRINT_COMP_end },	/* print_31[4] */
  { "%5s %s %s=pkr[%s]",  ISA_PRINT_COMP_opnd,	/* print_32[0] */
                    ISA_PRINT_COMP_name,	/* print_32[1] */
                    ISA_PRINT_COMP_result,	/* print_32[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_32[3] */
                    ISA_PRINT_COMP_end },	/* print_32[4] */
  { "%5s %s %s=pmc[%s]",  ISA_PRINT_COMP_opnd,	/* print_33[0] */
                    ISA_PRINT_COMP_name,	/* print_33[1] */
                    ISA_PRINT_COMP_result,	/* print_33[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_33[3] */
                    ISA_PRINT_COMP_end },	/* print_33[4] */
  { "%5s %s %s=pmd[%s]",  ISA_PRINT_COMP_opnd,	/* print_34[0] */
                    ISA_PRINT_COMP_name,	/* print_34[1] */
                    ISA_PRINT_COMP_result,	/* print_34[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_34[3] */
                    ISA_PRINT_COMP_end },	/* print_34[4] */
  { "%5s %s dbr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_35[0] */
                    ISA_PRINT_COMP_name,	/* print_35[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_35[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_35[3] */
                    ISA_PRINT_COMP_end },	/* print_35[4] */
  { "%5s %s dtr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_36[0] */
                    ISA_PRINT_COMP_name,	/* print_36[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_36[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_36[3] */
                    ISA_PRINT_COMP_end },	/* print_36[4] */
  { "%5s %s ibr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_37[0] */
                    ISA_PRINT_COMP_name,	/* print_37[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_37[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_37[3] */
                    ISA_PRINT_COMP_end },	/* print_37[4] */
  { "%5s %s itr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_38[0] */
                    ISA_PRINT_COMP_name,	/* print_38[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_38[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_38[3] */
                    ISA_PRINT_COMP_end },	/* print_38[4] */
  { "%5s %s msr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_39[0] */
                    ISA_PRINT_COMP_name,	/* print_39[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_39[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_39[3] */
                    ISA_PRINT_COMP_end },	/* print_39[4] */
  { "%5s %s pkr[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_40[0] */
                    ISA_PRINT_COMP_name,	/* print_40[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_40[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_40[3] */
                    ISA_PRINT_COMP_end },	/* print_40[4] */
  { "%5s %s pmc[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_41[0] */
                    ISA_PRINT_COMP_name,	/* print_41[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_41[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_41[3] */
                    ISA_PRINT_COMP_end },	/* print_41[4] */
  { "%5s %s pmd[%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_42[0] */
                    ISA_PRINT_COMP_name,	/* print_42[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_42[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_42[3] */
                    ISA_PRINT_COMP_end },	/* print_42[4] */
  { "%5s %s%s %s,%s=%s",  ISA_PRINT_COMP_opnd,	/* print_43[0] */
                    ISA_PRINT_COMP_name,	/* print_43[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_43[2] */
                    ISA_PRINT_COMP_result,	/* print_43[3] */
                    ISA_PRINT_COMP_result+1,	/* print_43[4] */
                    ISA_PRINT_COMP_opnd+2,	/* print_43[5] */
                    ISA_PRINT_COMP_end },	/* print_43[6] */
  { "%5s %s%s %s=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_44[0] */
                    ISA_PRINT_COMP_name,	/* print_44[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_44[2] */
                    ISA_PRINT_COMP_result,	/* print_44[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_44[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_44[5] */
                    ISA_PRINT_COMP_end },	/* print_44[6] */
  { "      %s%s%s %s,%s",  ISA_PRINT_COMP_name,	/* print_45[0] */
                    ISA_PRINT_COMP_opnd,	/* print_45[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_45[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_45[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_45[4] */
                    ISA_PRINT_COMP_end },	/* print_45[5] */
  { "%5s %s %s,%s=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_46[0] */
                    ISA_PRINT_COMP_name,	/* print_46[1] */
                    ISA_PRINT_COMP_result,	/* print_46[2] */
                    ISA_PRINT_COMP_result+1,	/* print_46[3] */
                    ISA_PRINT_COMP_opnd+1,	/* print_46[4] */
                    ISA_PRINT_COMP_opnd+2,	/* print_46[5] */
                    ISA_PRINT_COMP_end },	/* print_46[6] */
  { "%5s %s %s,%s=%s,r0",  ISA_PRINT_COMP_opnd,	/* print_47[0] */
                    ISA_PRINT_COMP_name,	/* print_47[1] */
                    ISA_PRINT_COMP_result,	/* print_47[2] */
                    ISA_PRINT_COMP_result+1,	/* print_47[3] */
                    ISA_PRINT_COMP_opnd+1,	/* print_47[4] */
                    ISA_PRINT_COMP_end },	/* print_47[5] */
  { "%5s %s %s,%s=r0,%s",  ISA_PRINT_COMP_opnd,	/* print_48[0] */
                    ISA_PRINT_COMP_name,	/* print_48[1] */
                    ISA_PRINT_COMP_result,	/* print_48[2] */
                    ISA_PRINT_COMP_result+1,	/* print_48[3] */
                    ISA_PRINT_COMP_opnd+1,	/* print_48[4] */
                    ISA_PRINT_COMP_end },	/* print_48[5] */
  { "%5s %s %s=%s,%s,%s",  ISA_PRINT_COMP_opnd,	/* print_49[0] */
                    ISA_PRINT_COMP_name,	/* print_49[1] */
                    ISA_PRINT_COMP_result,	/* print_49[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_49[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_49[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_49[5] */
                    ISA_PRINT_COMP_end },	/* print_49[6] */
  { "%5s %s%s%s %s=[%s]",  ISA_PRINT_COMP_opnd,	/* print_50[0] */
                    ISA_PRINT_COMP_name,	/* print_50[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_50[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_50[3] */
                    ISA_PRINT_COMP_result,	/* print_50[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_50[5] */
                    ISA_PRINT_COMP_end },	/* print_50[6] */
  { "%5s %s%s%s [%s]=%s",  ISA_PRINT_COMP_opnd,	/* print_51[0] */
                    ISA_PRINT_COMP_name,	/* print_51[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_51[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_51[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_51[4] */
                    ISA_PRINT_COMP_opnd+4,	/* print_51[5] */
                    ISA_PRINT_COMP_end },	/* print_51[6] */
  { "%5s %s%s%s%s %s=%s",  ISA_PRINT_COMP_opnd,	/* print_52[0] */
                    ISA_PRINT_COMP_name,	/* print_52[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_52[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_52[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_52[4] */
                    ISA_PRINT_COMP_result,	/* print_52[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_52[6] */
                    ISA_PRINT_COMP_end },	/* print_52[7] */
  { "%5s %s %s=cpuid[%s]",  ISA_PRINT_COMP_opnd,	/* print_53[0] */
                    ISA_PRINT_COMP_name,	/* print_53[1] */
                    ISA_PRINT_COMP_result,	/* print_53[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_53[3] */
                    ISA_PRINT_COMP_end },	/* print_53[4] */
  { "%5s %s%s %s=[%s],%s",  ISA_PRINT_COMP_opnd,	/* print_54[0] */
                    ISA_PRINT_COMP_name,	/* print_54[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_54[2] */
                    ISA_PRINT_COMP_result,	/* print_54[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_54[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_54[5] */
                    ISA_PRINT_COMP_end },	/* print_54[6] */
  { "%5s %s%s [%s]=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_55[0] */
                    ISA_PRINT_COMP_name,	/* print_55[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_55[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_55[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_55[4] */
                    ISA_PRINT_COMP_opnd+4,	/* print_55[5] */
                    ISA_PRINT_COMP_end },	/* print_55[6] */
  { "%5s %s%s%s %s=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_56[0] */
                    ISA_PRINT_COMP_name,	/* print_56[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_56[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_56[3] */
                    ISA_PRINT_COMP_result,	/* print_56[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_56[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_56[6] */
                    ISA_PRINT_COMP_end },	/* print_56[7] */
  { "%5s %s%s %s,%s=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_57[0] */
                    ISA_PRINT_COMP_name,	/* print_57[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_57[2] */
                    ISA_PRINT_COMP_result,	/* print_57[3] */
                    ISA_PRINT_COMP_result+1,	/* print_57[4] */
                    ISA_PRINT_COMP_opnd+2,	/* print_57[5] */
                    ISA_PRINT_COMP_opnd+3,	/* print_57[6] */
                    ISA_PRINT_COMP_end },	/* print_57[7] */
  { "%5s %s%s %s=%s,%s,%s",  ISA_PRINT_COMP_opnd,	/* print_58[0] */
                    ISA_PRINT_COMP_name,	/* print_58[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_58[2] */
                    ISA_PRINT_COMP_result,	/* print_58[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_58[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_58[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_58[6] */
                    ISA_PRINT_COMP_end },	/* print_58[7] */
  { "%5s %s %s=%s,%s,%s,%s",  ISA_PRINT_COMP_opnd,	/* print_59[0] */
                    ISA_PRINT_COMP_name,	/* print_59[1] */
                    ISA_PRINT_COMP_result,	/* print_59[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_59[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_59[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_59[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_59[6] */
                    ISA_PRINT_COMP_end },	/* print_59[7] */
  { "%5s %s%s%s %s,%s=[%s]",  ISA_PRINT_COMP_opnd,	/* print_60[0] */
                    ISA_PRINT_COMP_name,	/* print_60[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_60[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_60[3] */
                    ISA_PRINT_COMP_result,	/* print_60[4] */
                    ISA_PRINT_COMP_result+1,	/* print_60[5] */
                    ISA_PRINT_COMP_opnd+3,	/* print_60[6] */
                    ISA_PRINT_COMP_end },	/* print_60[7] */
  { "%5s %s%s%s %s=[%s],%s",  ISA_PRINT_COMP_opnd,	/* print_61[0] */
                    ISA_PRINT_COMP_name,	/* print_61[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_61[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_61[3] */
                    ISA_PRINT_COMP_result,	/* print_61[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_61[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_61[6] */
                    ISA_PRINT_COMP_end },	/* print_61[7] */
  { "%5s %s%s%s [%s]=%s,%s",  ISA_PRINT_COMP_opnd,	/* print_62[0] */
                    ISA_PRINT_COMP_name,	/* print_62[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_62[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_62[3] */
                    ISA_PRINT_COMP_opnd+3,	/* print_62[4] */
                    ISA_PRINT_COMP_opnd+4,	/* print_62[5] */
                    ISA_PRINT_COMP_opnd+5,	/* print_62[6] */
                    ISA_PRINT_COMP_end },	/* print_62[7] */
  { "%5s %s%s%s %s,%s=[%s],8",  ISA_PRINT_COMP_opnd,	/* print_63[0] */
                    ISA_PRINT_COMP_name,	/* print_63[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_63[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_63[3] */
                    ISA_PRINT_COMP_result,	/* print_63[4] */
                    ISA_PRINT_COMP_result+1,	/* print_63[5] */
                    ISA_PRINT_COMP_opnd+3,	/* print_63[6] */
                    ISA_PRINT_COMP_end },	/* print_63[7] */
  { "%5s %s%s%s %s,%s=[%s],16",  ISA_PRINT_COMP_opnd,	/* print_64[0] */
                    ISA_PRINT_COMP_name,	/* print_64[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_64[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_64[3] */
                    ISA_PRINT_COMP_result,	/* print_64[4] */
                    ISA_PRINT_COMP_result+1,	/* print_64[5] */
                    ISA_PRINT_COMP_opnd+3,	/* print_64[6] */
                    ISA_PRINT_COMP_end },	/* print_64[7] */
  { "      %s %s=ar.pfs,%s,%s,%s",  ISA_PRINT_COMP_name,	/* print_65[0] */
                    ISA_PRINT_COMP_result,	/* print_65[1] */
                    ISA_PRINT_COMP_opnd,	/* print_65[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_65[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_65[4] */
                    ISA_PRINT_COMP_end },	/* print_65[5] */
  { "%5s %s%s%s %s=[%s],%s,ar.ccv",  ISA_PRINT_COMP_opnd,	/* print_66[0] */
                    ISA_PRINT_COMP_name,	/* print_66[1] */
                    ISA_PRINT_COMP_opnd+1,	/* print_66[2] */
                    ISA_PRINT_COMP_opnd+2,	/* print_66[3] */
                    ISA_PRINT_COMP_result,	/* print_66[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_66[5] */
                    ISA_PRINT_COMP_opnd+4,	/* print_66[6] */
                    ISA_PRINT_COMP_end },	/* print_66[7] */
  { "      %s %s=ar.pfs,%s,%s,%s,%s",  ISA_PRINT_COMP_name,	/* print_67[0] */
                    ISA_PRINT_COMP_result,	/* print_67[1] */
                    ISA_PRINT_COMP_opnd,	/* print_67[2] */
                    ISA_PRINT_COMP_opnd+1,	/* print_67[3] */
                    ISA_PRINT_COMP_opnd+2,	/* print_67[4] */
                    ISA_PRINT_COMP_opnd+3,	/* print_67[5] */
                    ISA_PRINT_COMP_end },	/* print_67[6] */
};

const mUINT8 ISA_PRINT_info_index[759] = {
   16,  /* add: print_15 */
   29,  /* add_1: print_28 */
   16,  /* adds: print_15 */
   16,  /* addl: print_15 */
   16,  /* addp4: print_15 */
   16,  /* addp4_i: print_15 */
   66,  /* alloc_3: print_65 */
   16,  /* and: print_15 */
   16,  /* and_i: print_15 */
   16,  /* andcm: print_15 */
   16,  /* andcm_i: print_15 */
   19,  /* br.cond: print_18 */
   19,  /* br_r.cond: print_18 */
   53,  /* br.call: print_52 */
   53,  /* br_r.call: print_52 */
   19,  /* br.ret: print_18 */
   28,  /* br.ia: print_27 */
   28,  /* br.cloop: print_27 */
   28,  /* br.ctop: print_27 */
   28,  /* br.cexit: print_27 */
   19,  /* br.wtop: print_18 */
   19,  /* br.wexit: print_18 */
    4,  /* break.i: print_3 */
    4,  /* break.b: print_3 */
    4,  /* break.m: print_3 */
    4,  /* break.f: print_3 */
    4,  /* break.x: print_3 */
   19,  /* brl.cond: print_18 */
   53,  /* brl.call: print_52 */
   46,  /* brp: print_45 */
   46,  /* brp_r: print_45 */
   46,  /* brp.ret: print_45 */
    2,  /* bsw.0: print_1 */
    2,  /* bsw.1: print_1 */
    6,  /* chk.s.i: print_5 */
    6,  /* chk.s.m: print_5 */
    6,  /* chk_f.s: print_5 */
   12,  /* chk.a: print_11 */
   12,  /* chk_f.a: print_11 */
    2,  /* clrrrb: print_1 */
    2,  /* clrrrb.pr: print_1 */
   47,  /* cmp.eq: print_46 */
   47,  /* cmp.eq.unc: print_46 */
   47,  /* cmp.eq.and: print_46 */
   47,  /* cmp.eq.or: print_46 */
   47,  /* cmp.eq.or.andcm: print_46 */
   47,  /* cmp.ne.and: print_46 */
   47,  /* cmp.ne.or: print_46 */
   47,  /* cmp.ne.or.andcm: print_46 */
   47,  /* cmp.lt: print_46 */
   47,  /* cmp.lt.unc: print_46 */
   47,  /* cmp.ltu: print_46 */
   47,  /* cmp.ltu.unc: print_46 */
   49,  /* cmp_z1.lt.and: print_48 */
   49,  /* cmp_z1.lt.or: print_48 */
   49,  /* cmp_z1.lt.or.andcm: print_48 */
   49,  /* cmp_z1.le.and: print_48 */
   49,  /* cmp_z1.le.or: print_48 */
   49,  /* cmp_z1.le.or.andcm: print_48 */
   49,  /* cmp_z1.gt.and: print_48 */
   49,  /* cmp_z1.gt.or: print_48 */
   49,  /* cmp_z1.gt.or.andcm: print_48 */
   49,  /* cmp_z1.ge.and: print_48 */
   49,  /* cmp_z1.ge.or: print_48 */
   49,  /* cmp_z1.ge.or.andcm: print_48 */
   47,  /* cmp_i.eq: print_46 */
   47,  /* cmp_i.eq.unc: print_46 */
   47,  /* cmp_i.eq.and: print_46 */
   47,  /* cmp_i.eq.or: print_46 */
   47,  /* cmp_i.eq.or.andcm: print_46 */
   47,  /* cmp_i.ne.and: print_46 */
   47,  /* cmp_i.ne.or: print_46 */
   47,  /* cmp_i.ne.or.andcm: print_46 */
   47,  /* cmp_i.lt: print_46 */
   47,  /* cmp_i.lt.unc: print_46 */
   47,  /* cmp_i.ltu: print_46 */
   47,  /* cmp_i.ltu.unc: print_46 */
   47,  /* cmp4.eq: print_46 */
   47,  /* cmp4.eq.unc: print_46 */
   47,  /* cmp4.eq.and: print_46 */
   47,  /* cmp4.eq.or: print_46 */
   47,  /* cmp4.eq.or.andcm: print_46 */
   47,  /* cmp4.ne.and: print_46 */
   47,  /* cmp4.ne.or: print_46 */
   47,  /* cmp4.ne.or.andcm: print_46 */
   47,  /* cmp4.lt: print_46 */
   47,  /* cmp4.lt.unc: print_46 */
   47,  /* cmp4.ltu: print_46 */
   47,  /* cmp4.ltu.unc: print_46 */
   49,  /* cmp4_z1.lt.and: print_48 */
   49,  /* cmp4_z1.lt.or: print_48 */
   49,  /* cmp4_z1.lt.or.andcm: print_48 */
   49,  /* cmp4_z1.le.and: print_48 */
   49,  /* cmp4_z1.le.or: print_48 */
   49,  /* cmp4_z1.le.or.andcm: print_48 */
   49,  /* cmp4_z1.gt.and: print_48 */
   49,  /* cmp4_z1.gt.or: print_48 */
   49,  /* cmp4_z1.gt.or.andcm: print_48 */
   49,  /* cmp4_z1.ge.and: print_48 */
   49,  /* cmp4_z1.ge.or: print_48 */
   49,  /* cmp4_z1.ge.or.andcm: print_48 */
   47,  /* cmp4_i.eq: print_46 */
   47,  /* cmp4_i.eq.unc: print_46 */
   47,  /* cmp4_i.eq.and: print_46 */
   47,  /* cmp4_i.eq.or: print_46 */
   47,  /* cmp4_i.eq.or.andcm: print_46 */
   47,  /* cmp4_i.ne.and: print_46 */
   47,  /* cmp4_i.ne.or: print_46 */
   47,  /* cmp4_i.ne.or.andcm: print_46 */
   47,  /* cmp4_i.lt: print_46 */
   47,  /* cmp4_i.lt.unc: print_46 */
   47,  /* cmp4_i.ltu: print_46 */
   47,  /* cmp4_i.ltu.unc: print_46 */
   67,  /* cmpxchg1: print_66 */
   67,  /* cmpxchg2: print_66 */
   67,  /* cmpxchg4: print_66 */
   67,  /* cmpxchg8: print_66 */
    2,  /* cover: print_1 */
    7,  /* czx1.l: print_6 */
    7,  /* czx1.r: print_6 */
    7,  /* czx2.l: print_6 */
    7,  /* czx2.r: print_6 */
   60,  /* dep: print_59 */
   50,  /* dep.z: print_49 */
   60,  /* dep_i: print_59 */
   50,  /* dep_i.z: print_49 */
    2,  /* epc: print_1 */
   50,  /* extr: print_49 */
   50,  /* extr.u: print_49 */
   45,  /* famax: print_44 */
   45,  /* famin: print_44 */
   16,  /* fand: print_15 */
   16,  /* fandcm: print_15 */
    4,  /* fc: print_3 */
    5,  /* fchkf: print_4 */
   47,  /* fclass.m: print_46 */
   47,  /* fclass.m.unc: print_46 */
    3,  /* fclrf: print_2 */
   58,  /* fcmp.eq: print_57 */
   58,  /* fcmp.eq.unc: print_57 */
   58,  /* fcmp.lt: print_57 */
   58,  /* fcmp.lt.unc: print_57 */
   58,  /* fcmp.le: print_57 */
   58,  /* fcmp.le.unc: print_57 */
   58,  /* fcmp.unord: print_57 */
   58,  /* fcmp.unord.unc: print_57 */
   13,  /* fcvt.fx: print_12 */
   13,  /* fcvt.fx.trunc: print_12 */
   13,  /* fcvt.fxu: print_12 */
   13,  /* fcvt.fxu.trunc: print_12 */
    7,  /* fcvt.xf: print_6 */
   62,  /* fetchadd4: print_61 */
   62,  /* fetchadd8: print_61 */
    2,  /* flushrs: print_1 */
   59,  /* fma: print_58 */
   59,  /* fma.s: print_58 */
   59,  /* fma.d: print_58 */
   45,  /* fmax: print_44 */
   16,  /* fmerge.ns: print_15 */
   16,  /* fmerge.s: print_15 */
   16,  /* fmerge.se: print_15 */
   45,  /* fmin: print_44 */
   16,  /* fmix.l: print_15 */
   16,  /* fmix.r: print_15 */
   16,  /* fmix.lr: print_15 */
   59,  /* fms: print_58 */
   59,  /* fms.s: print_58 */
   59,  /* fms.d: print_58 */
   59,  /* fnma: print_58 */
   59,  /* fnma.s: print_58 */
   59,  /* fnma.d: print_58 */
   16,  /* for: print_15 */
   16,  /* fpack: print_15 */
   45,  /* fpamax: print_44 */
   45,  /* fpamin: print_44 */
   45,  /* fpcmp.eq: print_44 */
   45,  /* fpcmp.lt: print_44 */
   45,  /* fpcmp.le: print_44 */
   45,  /* fpcmp.unord: print_44 */
   45,  /* fpcmp.neq: print_44 */
   45,  /* fpcmp.nlt: print_44 */
   45,  /* fpcmp.nle: print_44 */
   45,  /* fpcmp.ord: print_44 */
   13,  /* fpcvt.fx: print_12 */
   13,  /* fpcvt.fx.trunc: print_12 */
   13,  /* fpcvt.fxu: print_12 */
   13,  /* fpcvt.fxu.trunc: print_12 */
   59,  /* fpma: print_58 */
   45,  /* fpmax: print_44 */
   16,  /* fpmerge.ns: print_15 */
   16,  /* fpmerge.s: print_15 */
   16,  /* fpmerge.se: print_15 */
   45,  /* fpmin: print_44 */
   59,  /* fpms: print_58 */
   59,  /* fpnma: print_58 */
   58,  /* fprcpa: print_57 */
   44,  /* fprsqrta: print_43 */
   58,  /* frcpa: print_57 */
   44,  /* frsqrta: print_43 */
   50,  /* fselect: print_49 */
   12,  /* fsetc: print_11 */
   16,  /* fswap: print_15 */
   16,  /* fswap.nl: print_15 */
   16,  /* fswap.nr: print_15 */
   16,  /* fsxt.l: print_15 */
   16,  /* fsxt.r: print_15 */
    1,  /* fwb: print_0 */
   16,  /* fxor: print_15 */
    7,  /* getf.s: print_6 */
    7,  /* getf.d: print_6 */
    7,  /* getf.exp: print_6 */
    7,  /* getf.sig: print_6 */
    1,  /* invala: print_0 */
    4,  /* invala.e: print_3 */
    4,  /* invala_f.e: print_3 */
    4,  /* itc.i: print_3 */
    4,  /* itc.d: print_3 */
   39,  /* itr.i: print_38 */
   37,  /* itr.d: print_36 */
   51,  /* ld1: print_50 */
   62,  /* ld1_r: print_61 */
   62,  /* ld1_i: print_61 */
   51,  /* ld2: print_50 */
   62,  /* ld2_r: print_61 */
   62,  /* ld2_i: print_61 */
   51,  /* ld4: print_50 */
   62,  /* ld4_r: print_61 */
   62,  /* ld4_i: print_61 */
   51,  /* ld8: print_50 */
   62,  /* ld8_r: print_61 */
   62,  /* ld8_i: print_61 */
   25,  /* ld8.fill: print_24 */
   55,  /* ld8_r.fill: print_54 */
   55,  /* ld8_i.fill: print_54 */
   51,  /* ldfs: print_50 */
   62,  /* ldfs_r: print_61 */
   62,  /* ldfs_i: print_61 */
   51,  /* ldfd: print_50 */
   62,  /* ldfd_r: print_61 */
   62,  /* ldfd_i: print_61 */
   51,  /* ldfe: print_50 */
   62,  /* ldfe_r: print_61 */
   62,  /* ldfe_i: print_61 */
   51,  /* ldf8: print_50 */
   62,  /* ldf8_r: print_61 */
   62,  /* ldf8_i: print_61 */
   25,  /* ldf.fill: print_24 */
   55,  /* ldf_r.fill: print_54 */
   55,  /* ldf_i.fill: print_54 */
   61,  /* ldfps: print_60 */
   64,  /* ldfps_i: print_63 */
   61,  /* ldfpd: print_60 */
   65,  /* ldfpd_i: print_64 */
   61,  /* ldfp8: print_60 */
   65,  /* ldfp8_i: print_64 */
   11,  /* lfetch: print_10 */
   11,  /* lfetch.excl: print_10 */
   11,  /* lfetch.fault: print_10 */
   11,  /* lfetch.fault.excl: print_10 */
   26,  /* lfetch_r: print_25 */
   26,  /* lfetch_r.excl: print_25 */
   26,  /* lfetch_r.fault: print_25 */
   26,  /* lfetch_r.fault.excl: print_25 */
   26,  /* lfetch_i: print_25 */
   26,  /* lfetch_i.excl: print_25 */
   26,  /* lfetch_i.fault: print_25 */
   26,  /* lfetch_i.fault.excl: print_25 */
    2,  /* loadrs: print_1 */
    1,  /* mf: print_0 */
    1,  /* mf.a: print_0 */
   16,  /* mix1.l: print_15 */
   16,  /* mix1.r: print_15 */
   16,  /* mix2.l: print_15 */
   16,  /* mix2.r: print_15 */
   16,  /* mix4.l: print_15 */
   16,  /* mix4.r: print_15 */
    7,  /* mov_f_ar.i: print_6 */
    7,  /* mov_t_ar_r.i: print_6 */
    7,  /* mov_t_ar_i.i: print_6 */
    7,  /* mov_f_ar.m: print_6 */
    7,  /* mov_t_ar_r.m: print_6 */
    7,  /* mov_t_ar_i.m: print_6 */
    7,  /* mov_f_br: print_6 */
   57,  /* mov_t_br_i: print_56 */
   57,  /* mov_t_br.ret: print_56 */
    7,  /* mov_t_cr: print_6 */
    7,  /* mov_f_cr: print_6 */
   54,  /* mov_f_cpuid: print_53 */
   36,  /* mov_t_dbr: print_35 */
   30,  /* mov_f_dbr: print_29 */
   38,  /* mov_t_ibr: print_37 */
   31,  /* mov_f_ibr: print_30 */
   40,  /* mov_t_msr: print_39 */
   32,  /* mov_f_msr: print_31 */
   41,  /* mov_t_pkr: print_40 */
   33,  /* mov_f_pkr: print_32 */
   42,  /* mov_t_pmc: print_41 */
   34,  /* mov_f_pmc: print_33 */
   43,  /* mov_t_pmd: print_42 */
   35,  /* mov_f_pmd: print_34 */
   24,  /* mov_t_rr: print_23 */
   21,  /* mov_f_rr: print_20 */
    8,  /* mov_f_ip: print_7 */
    9,  /* mov_f_pr: print_8 */
   17,  /* mov_t_pr: print_16 */
   22,  /* mov_t_pr_i: print_21 */
   18,  /* mov_t_psr: print_17 */
   10,  /* mov_f_psr: print_9 */
   23,  /* mov_t_psrum: print_22 */
   20,  /* mov_f_psrum: print_19 */
    7,  /* movl: print_6 */
   16,  /* mux1: print_15 */
   16,  /* mux2: print_15 */
    4,  /* nop.i: print_3 */
    4,  /* nop.b: print_3 */
    4,  /* nop.m: print_3 */
    4,  /* nop.f: print_3 */
    4,  /* nop.x: print_3 */
   16,  /* or: print_15 */
   16,  /* or_i: print_15 */
   16,  /* pack2.sss: print_15 */
   16,  /* pack2.uss: print_15 */
   16,  /* pack4.sss: print_15 */
   16,  /* padd1: print_15 */
   16,  /* padd1.sss: print_15 */
   16,  /* padd1.uus: print_15 */
   16,  /* padd1.uuu: print_15 */
   16,  /* padd2: print_15 */
   16,  /* padd2.sss: print_15 */
   16,  /* padd2.uus: print_15 */
   16,  /* padd2.uuu: print_15 */
   16,  /* padd4: print_15 */
   16,  /* pavg1: print_15 */
   16,  /* pavg1.raz: print_15 */
   16,  /* pavg2: print_15 */
   16,  /* pavg2.raz: print_15 */
   16,  /* pavgsub1: print_15 */
   16,  /* pavgsub2: print_15 */
   16,  /* pcmp1.eq: print_15 */
   16,  /* pcmp1.gt: print_15 */
   16,  /* pcmp2.eq: print_15 */
   16,  /* pcmp2.gt: print_15 */
   16,  /* pcmp4.eq: print_15 */
   16,  /* pcmp4.gt: print_15 */
   16,  /* pmax1.u: print_15 */
   16,  /* pmax2: print_15 */
   16,  /* pmin1.u: print_15 */
   16,  /* pmin2: print_15 */
   16,  /* pmpy2.r: print_15 */
   16,  /* pmpy2.l: print_15 */
   50,  /* pmpyshr2: print_49 */
   50,  /* pmpyshr2.u: print_49 */
    7,  /* popcnt: print_6 */
   16,  /* probe.r: print_15 */
   16,  /* probe.w: print_15 */
   16,  /* probe_i.r: print_15 */
   16,  /* probe_i.w: print_15 */
    6,  /* probe.r.fault: print_5 */
    6,  /* probe.w.fault: print_5 */
    6,  /* probe.rw.fault: print_5 */
   16,  /* psad1: print_15 */
   16,  /* pshl2: print_15 */
   16,  /* pshl4: print_15 */
   16,  /* pshl2_i: print_15 */
   16,  /* pshl4_i: print_15 */
   50,  /* pshladd2: print_49 */
   16,  /* pshr2: print_15 */
   16,  /* pshr2.u: print_15 */
   16,  /* pshr4: print_15 */
   16,  /* pshr4.u: print_15 */
   16,  /* pshr2_i: print_15 */
   16,  /* pshr2_i.u: print_15 */
   16,  /* pshr4_i: print_15 */
   16,  /* pshr4_i.u: print_15 */
   50,  /* pshradd2: print_49 */
   16,  /* psub1: print_15 */
   16,  /* psub2: print_15 */
   16,  /* psub4: print_15 */
   16,  /* psub1.sss: print_15 */
   16,  /* psub1.uus: print_15 */
   16,  /* psub1.uuu: print_15 */
   16,  /* psub2.sss: print_15 */
   16,  /* psub2.uus: print_15 */
   16,  /* psub2.uuu: print_15 */
    4,  /* ptc.e: print_3 */
    6,  /* ptc.g: print_5 */
    6,  /* ptc.ga: print_5 */
    6,  /* ptc.l: print_5 */
    6,  /* ptr.d: print_5 */
    6,  /* ptr.i: print_5 */
    2,  /* rfi: print_1 */
    4,  /* rsm: print_3 */
    4,  /* rum: print_3 */
    7,  /* setf.s: print_6 */
    7,  /* setf.d: print_6 */
    7,  /* setf.exp: print_6 */
    7,  /* setf.sig: print_6 */
   16,  /* shl: print_15 */
   50,  /* shladd: print_49 */
   50,  /* shladdp4: print_49 */
   16,  /* shr: print_15 */
   16,  /* shr.u: print_15 */
   50,  /* shrp: print_49 */
    1,  /* srlz.i: print_0 */
    1,  /* srlz.d: print_0 */
    4,  /* ssm: print_3 */
   52,  /* st1: print_51 */
   63,  /* st1_i: print_62 */
   52,  /* st2: print_51 */
   63,  /* st2_i: print_62 */
   52,  /* st4: print_51 */
   63,  /* st4_i: print_62 */
   52,  /* st8: print_51 */
   63,  /* st8_i: print_62 */
   27,  /* st8.spill: print_26 */
   56,  /* st8_i.spill: print_55 */
   27,  /* stfs: print_26 */
   56,  /* stfs_i: print_55 */
   27,  /* stfd: print_26 */
   56,  /* stfd_i: print_55 */
   27,  /* stfe: print_26 */
   56,  /* stfe_i: print_55 */
   27,  /* stf8: print_26 */
   56,  /* stf8_i: print_55 */
   27,  /* stf.spill: print_26 */
   56,  /* stf_i.spill: print_55 */
   16,  /* sub: print_15 */
   29,  /* sub_1: print_28 */
   16,  /* sub_i: print_15 */
    4,  /* sum: print_3 */
    7,  /* sxt1: print_6 */
    7,  /* sxt2: print_6 */
    7,  /* sxt4: print_6 */
    1,  /* sync.i: print_0 */
    7,  /* tak: print_6 */
   47,  /* tbit.z: print_46 */
   47,  /* tbit.z.unc: print_46 */
   47,  /* tbit.z.and: print_46 */
   47,  /* tbit.z.or: print_46 */
   47,  /* tbit.z.or.andcm: print_46 */
   47,  /* tbit.nz.and: print_46 */
   47,  /* tbit.nz.or: print_46 */
   47,  /* tbit.nz.or.andcm: print_46 */
    7,  /* thash: print_6 */
   15,  /* tnat.z: print_14 */
   15,  /* tnat.z.unc: print_14 */
   15,  /* tnat.z.and: print_14 */
   15,  /* tnat.z.or: print_14 */
   15,  /* tnat.z.or.andcm: print_14 */
   15,  /* tnat.nz.and: print_14 */
   15,  /* tnat.nz.or: print_14 */
   15,  /* tnat.nz.or.andcm: print_14 */
    7,  /* tpa: print_6 */
    7,  /* ttag: print_6 */
   16,  /* unpack1.l: print_15 */
   16,  /* unpack1.h: print_15 */
   16,  /* unpack2.l: print_15 */
   16,  /* unpack2.h: print_15 */
   16,  /* unpack4.l: print_15 */
   16,  /* unpack4.h: print_15 */
   55,  /* xchg1: print_54 */
   55,  /* xchg2: print_54 */
   55,  /* xchg4: print_54 */
   55,  /* xchg8: print_54 */
   50,  /* xma.l: print_49 */
   50,  /* xma.h: print_49 */
   50,  /* xma.hu: print_49 */
   16,  /* xor: print_15 */
   16,  /* xor_i: print_15 */
    7,  /* zxt1: print_6 */
    7,  /* zxt2: print_6 */
    7,  /* zxt4: print_6 */
   68,  /* alloc: print_67 */
   14,  /* br: print_13 */
   14,  /* br_r: print_13 */
   14,  /* brl: print_13 */
   47,  /* cmp.eq.orcm: print_46 */
   47,  /* cmp.eq.andcm: print_46 */
   47,  /* cmp.eq.and.orcm: print_46 */
   47,  /* cmp.ne: print_46 */
   47,  /* cmp.ne.unc: print_46 */
   47,  /* cmp.ne.orcm: print_46 */
   47,  /* cmp.ne.andcm: print_46 */
   47,  /* cmp.ne.and.orcm: print_46 */
   47,  /* cmp.le: print_46 */
   47,  /* cmp.le.unc: print_46 */
   47,  /* cmp.gt: print_46 */
   47,  /* cmp.gt.unc: print_46 */
   47,  /* cmp.ge: print_46 */
   47,  /* cmp.ge.unc: print_46 */
   47,  /* cmp.leu: print_46 */
   47,  /* cmp.leu.unc: print_46 */
   47,  /* cmp.gtu: print_46 */
   47,  /* cmp.gtu.unc: print_46 */
   47,  /* cmp.geu: print_46 */
   47,  /* cmp.geu.unc: print_46 */
   49,  /* cmp_z1.lt.orcm: print_48 */
   49,  /* cmp_z1.lt.andcm: print_48 */
   49,  /* cmp_z1.lt.and.orcm: print_48 */
   49,  /* cmp_z1.le.orcm: print_48 */
   49,  /* cmp_z1.le.andcm: print_48 */
   49,  /* cmp_z1.le.and.orcm: print_48 */
   49,  /* cmp_z1.gt.orcm: print_48 */
   49,  /* cmp_z1.gt.andcm: print_48 */
   49,  /* cmp_z1.gt.and.orcm: print_48 */
   49,  /* cmp_z1.ge.orcm: print_48 */
   49,  /* cmp_z1.ge.andcm: print_48 */
   49,  /* cmp_z1.ge.and.orcm: print_48 */
   48,  /* cmp_z2.lt.orcm: print_47 */
   48,  /* cmp_z2.lt.andcm: print_47 */
   48,  /* cmp_z2.lt.and.orcm: print_47 */
   48,  /* cmp_z2.le.orcm: print_47 */
   48,  /* cmp_z2.le.andcm: print_47 */
   48,  /* cmp_z2.le.and.orcm: print_47 */
   48,  /* cmp_z2.gt.orcm: print_47 */
   48,  /* cmp_z2.gt.andcm: print_47 */
   48,  /* cmp_z2.gt.and.orcm: print_47 */
   48,  /* cmp_z2.ge.orcm: print_47 */
   48,  /* cmp_z2.ge.andcm: print_47 */
   48,  /* cmp_z2.ge.and.orcm: print_47 */
   48,  /* cmp_z2.lt.and: print_47 */
   48,  /* cmp_z2.lt.or: print_47 */
   48,  /* cmp_z2.lt.or.andcm: print_47 */
   48,  /* cmp_z2.le.and: print_47 */
   48,  /* cmp_z2.le.or: print_47 */
   48,  /* cmp_z2.le.or.andcm: print_47 */
   48,  /* cmp_z2.gt.and: print_47 */
   48,  /* cmp_z2.gt.or: print_47 */
   48,  /* cmp_z2.gt.or.andcm: print_47 */
   48,  /* cmp_z2.ge.and: print_47 */
   48,  /* cmp_z2.ge.or: print_47 */
   48,  /* cmp_z2.ge.or.andcm: print_47 */
   47,  /* cmp_i.eq.orcm: print_46 */
   47,  /* cmp_i.eq.andcm: print_46 */
   47,  /* cmp_i.eq.and.orcm: print_46 */
   47,  /* cmp_i.ne: print_46 */
   47,  /* cmp_i.ne.unc: print_46 */
   47,  /* cmp_i.ne.orcm: print_46 */
   47,  /* cmp_i.ne.andcm: print_46 */
   47,  /* cmp_i.ne.and.orcm: print_46 */
   47,  /* cmp_i.le: print_46 */
   47,  /* cmp_i.le.unc: print_46 */
   47,  /* cmp_i.gt: print_46 */
   47,  /* cmp_i.gt.unc: print_46 */
   47,  /* cmp_i.ge: print_46 */
   47,  /* cmp_i.ge.unc: print_46 */
   47,  /* cmp_i.leu: print_46 */
   47,  /* cmp_i.leu.unc: print_46 */
   47,  /* cmp_i.gtu: print_46 */
   47,  /* cmp_i.gtu.unc: print_46 */
   47,  /* cmp_i.geu: print_46 */
   47,  /* cmp_i.geu.unc: print_46 */
   47,  /* cmp4.eq.orcm: print_46 */
   47,  /* cmp4.eq.andcm: print_46 */
   47,  /* cmp4.eq.and.orcm: print_46 */
   47,  /* cmp4.ne: print_46 */
   47,  /* cmp4.ne.unc: print_46 */
   47,  /* cmp4.ne.orcm: print_46 */
   47,  /* cmp4.ne.andcm: print_46 */
   47,  /* cmp4.ne.and.orcm: print_46 */
   47,  /* cmp4.le: print_46 */
   47,  /* cmp4.le.unc: print_46 */
   47,  /* cmp4.gt: print_46 */
   47,  /* cmp4.gt.unc: print_46 */
   47,  /* cmp4.ge: print_46 */
   47,  /* cmp4.ge.unc: print_46 */
   47,  /* cmp4.leu: print_46 */
   47,  /* cmp4.leu.unc: print_46 */
   47,  /* cmp4.gtu: print_46 */
   47,  /* cmp4.gtu.unc: print_46 */
   47,  /* cmp4.geu: print_46 */
   47,  /* cmp4.geu.unc: print_46 */
   49,  /* cmp4_z1.lt.orcm: print_48 */
   49,  /* cmp4_z1.lt.andcm: print_48 */
   49,  /* cmp4_z1.lt.and.orcm: print_48 */
   49,  /* cmp4_z1.le.orcm: print_48 */
   49,  /* cmp4_z1.le.andcm: print_48 */
   49,  /* cmp4_z1.le.and.orcm: print_48 */
   49,  /* cmp4_z1.gt.orcm: print_48 */
   49,  /* cmp4_z1.gt.andcm: print_48 */
   49,  /* cmp4_z1.gt.and.orcm: print_48 */
   49,  /* cmp4_z1.ge.orcm: print_48 */
   49,  /* cmp4_z1.ge.andcm: print_48 */
   49,  /* cmp4_z1.ge.and.orcm: print_48 */
   48,  /* cmp4_z2.lt.orcm: print_47 */
   48,  /* cmp4_z2.lt.andcm: print_47 */
   48,  /* cmp4_z2.lt.and.orcm: print_47 */
   48,  /* cmp4_z2.le.orcm: print_47 */
   48,  /* cmp4_z2.le.andcm: print_47 */
   48,  /* cmp4_z2.le.and.orcm: print_47 */
   48,  /* cmp4_z2.gt.orcm: print_47 */
   48,  /* cmp4_z2.gt.andcm: print_47 */
   48,  /* cmp4_z2.gt.and.orcm: print_47 */
   48,  /* cmp4_z2.ge.orcm: print_47 */
   48,  /* cmp4_z2.ge.andcm: print_47 */
   48,  /* cmp4_z2.ge.and.orcm: print_47 */
   48,  /* cmp4_z2.lt.and: print_47 */
   48,  /* cmp4_z2.lt.or: print_47 */
   48,  /* cmp4_z2.lt.or.andcm: print_47 */
   48,  /* cmp4_z2.le.and: print_47 */
   48,  /* cmp4_z2.le.or: print_47 */
   48,  /* cmp4_z2.le.or.andcm: print_47 */
   48,  /* cmp4_z2.gt.and: print_47 */
   48,  /* cmp4_z2.gt.or: print_47 */
   48,  /* cmp4_z2.gt.or.andcm: print_47 */
   48,  /* cmp4_z2.ge.and: print_47 */
   48,  /* cmp4_z2.ge.or: print_47 */
   48,  /* cmp4_z2.ge.or.andcm: print_47 */
   47,  /* cmp4_i.eq.orcm: print_46 */
   47,  /* cmp4_i.eq.andcm: print_46 */
   47,  /* cmp4_i.eq.and.orcm: print_46 */
   47,  /* cmp4_i.ne: print_46 */
   47,  /* cmp4_i.ne.unc: print_46 */
   47,  /* cmp4_i.ne.orcm: print_46 */
   47,  /* cmp4_i.ne.andcm: print_46 */
   47,  /* cmp4_i.ne.and.orcm: print_46 */
   47,  /* cmp4_i.le: print_46 */
   47,  /* cmp4_i.le.unc: print_46 */
   47,  /* cmp4_i.gt: print_46 */
   47,  /* cmp4_i.gt.unc: print_46 */
   47,  /* cmp4_i.ge: print_46 */
   47,  /* cmp4_i.ge.unc: print_46 */
   47,  /* cmp4_i.leu: print_46 */
   47,  /* cmp4_i.leu.unc: print_46 */
   47,  /* cmp4_i.gtu: print_46 */
   47,  /* cmp4_i.gtu.unc: print_46 */
   47,  /* cmp4_i.geu: print_46 */
   47,  /* cmp4_i.geu.unc: print_46 */
    7,  /* fabs: print_6 */
   45,  /* fadd: print_44 */
   45,  /* fadd.s: print_44 */
   45,  /* fadd.d: print_44 */
   47,  /* fclass.nm: print_46 */
   47,  /* fclass.nm.unc: print_46 */
   58,  /* fcmp.gt: print_57 */
   58,  /* fcmp.gt.unc: print_57 */
   58,  /* fcmp.ge: print_57 */
   58,  /* fcmp.ge.unc: print_57 */
   58,  /* fcmp.neq: print_57 */
   58,  /* fcmp.neq.unc: print_57 */
   58,  /* fcmp.nlt: print_57 */
   58,  /* fcmp.nlt.unc: print_57 */
   58,  /* fcmp.nle: print_57 */
   58,  /* fcmp.nle.unc: print_57 */
   58,  /* fcmp.ngt: print_57 */
   58,  /* fcmp.ngt.unc: print_57 */
   58,  /* fcmp.nge: print_57 */
   58,  /* fcmp.nge.unc: print_57 */
   58,  /* fcmp.ord: print_57 */
   58,  /* fcmp.ord.unc: print_57 */
   13,  /* fcvt.xuf: print_12 */
   13,  /* fcvt.xuf.s: print_12 */
   13,  /* fcvt.xuf.d: print_12 */
   45,  /* fmpy: print_44 */
   45,  /* fmpy.s: print_44 */
   45,  /* fmpy.d: print_44 */
    7,  /* fneg: print_6 */
    7,  /* fnegabs: print_6 */
   45,  /* fnmpy: print_44 */
   45,  /* fnmpy.s: print_44 */
   45,  /* fnmpy.d: print_44 */
   13,  /* fnorm: print_12 */
   13,  /* fnorm.s: print_12 */
   13,  /* fnorm.d: print_12 */
    7,  /* fpabs: print_6 */
   45,  /* fpcmp.gt: print_44 */
   45,  /* fpcmp.ge: print_44 */
   45,  /* fpcmp.ngt: print_44 */
   45,  /* fpcmp.nge: print_44 */
   45,  /* fpmpy: print_44 */
    7,  /* fpneg: print_6 */
    7,  /* fpnegabs: print_6 */
   45,  /* fpnmpy: print_44 */
   45,  /* fsub: print_44 */
   45,  /* fsub.s: print_44 */
   45,  /* fsub.d: print_44 */
    7,  /* mov_t_br: print_6 */
    7,  /* mov_f: print_6 */
    7,  /* mov: print_6 */
    7,  /* mov_i: print_6 */
   16,  /* shl_i: print_15 */
   16,  /* shr_i: print_15 */
   16,  /* shr_i.u: print_15 */
   47,  /* tbit.nz: print_46 */
   47,  /* tbit.nz.unc: print_46 */
   15,  /* tnat.nz: print_14 */
   15,  /* tnat.nz.unc: print_14 */
   50,  /* xma.lu: print_49 */
   16,  /* xmpy.l: print_15 */
   16,  /* xmpy.lu: print_15 */
   16,  /* xmpy.h: print_15 */
   16,  /* xmpy.hu: print_15 */
    0,  /* break */
    0,  /* chk.s */
    0,  /* cmp.lt.and */
    0,  /* cmp.lt.or */
    0,  /* cmp.lt.or.andcm */
    0,  /* cmp.le.and */
    0,  /* cmp.le.or */
    0,  /* cmp.le.or.andcm */
    0,  /* cmp.gt.and */
    0,  /* cmp.gt.or */
    0,  /* cmp.gt.or.andcm */
    0,  /* cmp.ge.and */
    0,  /* cmp.ge.or */
    0,  /* cmp.ge.or.andcm */
    0,  /* cmp.lt.orcm */
    0,  /* cmp.lt.andcm */
    0,  /* cmp.lt.and.orcm */
    0,  /* cmp.le.orcm */
    0,  /* cmp.le.andcm */
    0,  /* cmp.le.and.orcm */
    0,  /* cmp.gt.orcm */
    0,  /* cmp.gt.andcm */
    0,  /* cmp.gt.and.orcm */
    0,  /* cmp.ge.orcm */
    0,  /* cmp.ge.andcm */
    0,  /* cmp.ge.and.orcm */
    0,  /* cmp4.lt.and */
    0,  /* cmp4.lt.or */
    0,  /* cmp4.lt.or.andcm */
    0,  /* cmp4.le.and */
    0,  /* cmp4.le.or */
    0,  /* cmp4.le.or.andcm */
    0,  /* cmp4.gt.and */
    0,  /* cmp4.gt.or */
    0,  /* cmp4.gt.or.andcm */
    0,  /* cmp4.ge.and */
    0,  /* cmp4.ge.or */
    0,  /* cmp4.ge.or.andcm */
    0,  /* cmp4.lt.orcm */
    0,  /* cmp4.lt.andcm */
    0,  /* cmp4.lt.and.orcm */
    0,  /* cmp4.le.orcm */
    0,  /* cmp4.le.andcm */
    0,  /* cmp4.le.and.orcm */
    0,  /* cmp4.gt.orcm */
    0,  /* cmp4.gt.andcm */
    0,  /* cmp4.gt.and.orcm */
    0,  /* cmp4.ge.orcm */
    0,  /* cmp4.ge.andcm */
    0,  /* cmp4.ge.and.orcm */
    0,  /* mov_f_ar */
    0,  /* mov_t_ar_r */
    0,  /* mov_t_ar_i */
    0,  /* nop */
    0,  /* asm */
    0,  /* intrncall */
    0,  /* spadjust */
    0,  /* copy.br */
    0,  /* begin.pregtn */
    0,  /* end.pregtn */
    0,  /* bwd.bar */
    0,  /* fwd.bar */
    0,  /* dfixup */
    0,  /* ffixup */
    0,  /* ifixup */
    0,  /* label */
    0,  /* noop */
};

const char * const ISA_PRINT_asmname[] = {
  "add",
  "add",
  "adds",
  "addl",
  "addp4",
  "addp4",
  "alloc",
  "and",
  "and",
  "andcm",
  "andcm",
  "br.cond",
  "br.cond",
  "br.call",
  "br.call",
  "br.ret",
  "br.ia",
  "br.cloop",
  "br.ctop",
  "br.cexit",
  "br.wtop",
  "br.wexit",
  "break.i",
  "break.b",
  "break.m",
  "break.f",
  "break.x",
  "brl.cond",
  "brl.call",
  "brp",
  "brp",
  "brp.ret",
  "bsw.0",
  "bsw.1",
  "chk.s.i",
  "chk.s.m",
  "chk.s",
  "chk.a",
  "chk.a",
  "clrrrb",
  "clrrrb.pr",
  "cmp.eq",
  "cmp.eq.unc",
  "cmp.eq.and",
  "cmp.eq.or",
  "cmp.eq.or.andcm",
  "cmp.ne.and",
  "cmp.ne.or",
  "cmp.ne.or.andcm",
  "cmp.lt",
  "cmp.lt.unc",
  "cmp.ltu",
  "cmp.ltu.unc",
  "cmp.lt.and",
  "cmp.lt.or",
  "cmp.lt.or.andcm",
  "cmp.le.and",
  "cmp.le.or",
  "cmp.le.or.andcm",
  "cmp.gt.and",
  "cmp.gt.or",
  "cmp.gt.or.andcm",
  "cmp.ge.and",
  "cmp.ge.or",
  "cmp.ge.or.andcm",
  "cmp.eq",
  "cmp.eq.unc",
  "cmp.eq.and",
  "cmp.eq.or",
  "cmp.eq.or.andcm",
  "cmp.ne.and",
  "cmp.ne.or",
  "cmp.ne.or.andcm",
  "cmp.lt",
  "cmp.lt.unc",
  "cmp.ltu",
  "cmp.ltu.unc",
  "cmp4.eq",
  "cmp4.eq.unc",
  "cmp4.eq.and",
  "cmp4.eq.or",
  "cmp4.eq.or.andcm",
  "cmp4.ne.and",
  "cmp4.ne.or",
  "cmp4.ne.or.andcm",
  "cmp4.lt",
  "cmp4.lt.unc",
  "cmp4.ltu",
  "cmp4.ltu.unc",
  "cmp4.lt.and",
  "cmp4.lt.or",
  "cmp4.lt.or.andcm",
  "cmp4.le.and",
  "cmp4.le.or",
  "cmp4.le.or.andcm",
  "cmp4.gt.and",
  "cmp4.gt.or",
  "cmp4.gt.or.andcm",
  "cmp4.ge.and",
  "cmp4.ge.or",
  "cmp4.ge.or.andcm",
  "cmp4.eq",
  "cmp4.eq.unc",
  "cmp4.eq.and",
  "cmp4.eq.or",
  "cmp4.eq.or.andcm",
  "cmp4.ne.and",
  "cmp4.ne.or",
  "cmp4.ne.or.andcm",
  "cmp4.lt",
  "cmp4.lt.unc",
  "cmp4.ltu",
  "cmp4.ltu.unc",
  "cmpxchg1",
  "cmpxchg2",
  "cmpxchg4",
  "cmpxchg8",
  "cover",
  "czx1.l",
  "czx1.r",
  "czx2.l",
  "czx2.r",
  "dep",
  "dep.z",
  "dep",
  "dep.z",
  "epc",
  "extr",
  "extr.u",
  "famax",
  "famin",
  "fand",
  "fandcm",
  "fc",
  "fchkf",
  "fclass.m",
  "fclass.m.unc",
  "fclrf",
  "fcmp.eq",
  "fcmp.eq.unc",
  "fcmp.lt",
  "fcmp.lt.unc",
  "fcmp.le",
  "fcmp.le.unc",
  "fcmp.unord",
  "fcmp.unord.unc",
  "fcvt.fx",
  "fcvt.fx.trunc",
  "fcvt.fxu",
  "fcvt.fxu.trunc",
  "fcvt.xf",
  "fetchadd4",
  "fetchadd8",
  "flushrs",
  "fma",
  "fma.s",
  "fma.d",
  "fmax",
  "fmerge.ns",
  "fmerge.s",
  "fmerge.se",
  "fmin",
  "fmix.l",
  "fmix.r",
  "fmix.lr",
  "fms",
  "fms.s",
  "fms.d",
  "fnma",
  "fnma.s",
  "fnma.d",
  "for",
  "fpack",
  "fpamax",
  "fpamin",
  "fpcmp.eq",
  "fpcmp.lt",
  "fpcmp.le",
  "fpcmp.unord",
  "fpcmp.neq",
  "fpcmp.nlt",
  "fpcmp.nle",
  "fpcmp.ord",
  "fpcvt.fx",
  "fpcvt.fx.trunc",
  "fpcvt.fxu",
  "fpcvt.fxu.trunc",
  "fpma",
  "fpmax",
  "fpmerge.ns",
  "fpmerge.s",
  "fpmerge.se",
  "fpmin",
  "fpms",
  "fpnma",
  "fprcpa",
  "fprsqrta",
  "frcpa",
  "frsqrta",
  "fselect",
  "fsetc",
  "fswap",
  "fswap.nl",
  "fswap.nr",
  "fsxt.l",
  "fsxt.r",
  "fwb",
  "fxor",
  "getf.s",
  "getf.d",
  "getf.exp",
  "getf.sig",
  "invala",
  "invala.e",
  "invala.e",
  "itc.i",
  "itc.d",
  "itr.i",
  "itr.d",
  "ld1",
  "ld1",
  "ld1",
  "ld2",
  "ld2",
  "ld2",
  "ld4",
  "ld4",
  "ld4",
  "ld8",
  "ld8",
  "ld8",
  "ld8.fill",
  "ld8.fill",
  "ld8.fill",
  "ldfs",
  "ldfs",
  "ldfs",
  "ldfd",
  "ldfd",
  "ldfd",
  "ldfe",
  "ldfe",
  "ldfe",
  "ldf8",
  "ldf8",
  "ldf8",
  "ldf.fill",
  "ldf.fill",
  "ldf.fill",
  "ldfps",
  "ldfps",
  "ldfpd",
  "ldfpd",
  "ldfp8",
  "ldfp8",
  "lfetch",
  "lfetch.excl",
  "lfetch.fault",
  "lfetch.fault.excl",
  "lfetch",
  "lfetch.excl",
  "lfetch.fault",
  "lfetch.fault.excl",
  "lfetch",
  "lfetch.excl",
  "lfetch.fault",
  "lfetch.fault.excl",
  "loadrs",
  "mf",
  "mf.a",
  "mix1.l",
  "mix1.r",
  "mix2.l",
  "mix2.r",
  "mix4.l",
  "mix4.r",
  "mov.i",
  "mov.i",
  "mov.i",
  "mov.m",
  "mov.m",
  "mov.m",
  "mov",
  "mov",
  "mov.ret",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "mov",
  "movl",
  "mux1",
  "mux2",
  "nop.i",
  "nop.b",
  "nop.m",
  "nop.f",
  "nop.x",
  "or",
  "or",
  "pack2.sss",
  "pack2.uss",
  "pack4.sss",
  "padd1",
  "padd1.sss",
  "padd1.uus",
  "padd1.uuu",
  "padd2",
  "padd2.sss",
  "padd2.uus",
  "padd2.uuu",
  "padd4",
  "pavg1",
  "pavg1.raz",
  "pavg2",
  "pavg2.raz",
  "pavgsub1",
  "pavgsub2",
  "pcmp1.eq",
  "pcmp1.gt",
  "pcmp2.eq",
  "pcmp2.gt",
  "pcmp4.eq",
  "pcmp4.gt",
  "pmax1.u",
  "pmax2",
  "pmin1.u",
  "pmin2",
  "pmpy2.r",
  "pmpy2.l",
  "pmpyshr2",
  "pmpyshr2.u",
  "popcnt",
  "probe.r",
  "probe.w",
  "probe.r",
  "probe.w",
  "probe.r.fault",
  "probe.w.fault",
  "probe.rw.fault",
  "psad1",
  "pshl2",
  "pshl4",
  "pshl2",
  "pshl4",
  "pshladd2",
  "pshr2",
  "pshr2.u",
  "pshr4",
  "pshr4.u",
  "pshr2",
  "pshr2.u",
  "pshr4",
  "pshr4.u",
  "pshradd2",
  "psub1",
  "psub2",
  "psub4",
  "psub1.sss",
  "psub1.uus",
  "psub1.uuu",
  "psub2.sss",
  "psub2.uus",
  "psub2.uuu",
  "ptc.e",
  "ptc.g",
  "ptc.ga",
  "ptc.l",
  "ptr.d",
  "ptr.i",
  "rfi",
  "rsm",
  "rum",
  "setf.s",
  "setf.d",
  "setf.exp",
  "setf.sig",
  "shl",
  "shladd",
  "shladdp4",
  "shr",
  "shr.u",
  "shrp",
  "srlz.i",
  "srlz.d",
  "ssm",
  "st1",
  "st1",
  "st2",
  "st2",
  "st4",
  "st4",
  "st8",
  "st8",
  "st8.spill",
  "st8.spill",
  "stfs",
  "stfs",
  "stfd",
  "stfd",
  "stfe",
  "stfe",
  "stf8",
  "stf8",
  "stf.spill",
  "stf.spill",
  "sub",
  "sub",
  "sub",
  "sum",
  "sxt1",
  "sxt2",
  "sxt4",
  "sync.i",
  "tak",
  "tbit.z",
  "tbit.z.unc",
  "tbit.z.and",
  "tbit.z.or",
  "tbit.z.or.andcm",
  "tbit.nz.and",
  "tbit.nz.or",
  "tbit.nz.or.andcm",
  "thash",
  "tnat.z",
  "tnat.z.unc",
  "tnat.z.and",
  "tnat.z.or",
  "tnat.z.or.andcm",
  "tnat.nz.and",
  "tnat.nz.or",
  "tnat.nz.or.andcm",
  "tpa",
  "ttag",
  "unpack1.l",
  "unpack1.h",
  "unpack2.l",
  "unpack2.h",
  "unpack4.l",
  "unpack4.h",
  "xchg1",
  "xchg2",
  "xchg4",
  "xchg8",
  "xma.l",
  "xma.h",
  "xma.hu",
  "xor",
  "xor",
  "zxt1",
  "zxt2",
  "zxt4",
  "alloc",
  "br",
  "br",
  "brl",
  "cmp.eq.orcm",
  "cmp.eq.andcm",
  "cmp.eq.and.orcm",
  "cmp.ne",
  "cmp.ne.unc",
  "cmp.ne.orcm",
  "cmp.ne.andcm",
  "cmp.ne.and.orcm",
  "cmp.le",
  "cmp.le.unc",
  "cmp.gt",
  "cmp.gt.unc",
  "cmp.ge",
  "cmp.ge.unc",
  "cmp.leu",
  "cmp.leu.unc",
  "cmp.gtu",
  "cmp.gtu.unc",
  "cmp.geu",
  "cmp.geu.unc",
  "cmp.lt.orcm",
  "cmp.lt.andcm",
  "cmp.lt.and.orcm",
  "cmp.le.orcm",
  "cmp.le.andcm",
  "cmp.le.and.orcm",
  "cmp.gt.orcm",
  "cmp.gt.andcm",
  "cmp.gt.and.orcm",
  "cmp.ge.orcm",
  "cmp.ge.andcm",
  "cmp.ge.and.orcm",
  "cmp.lt.orcm",
  "cmp.lt.andcm",
  "cmp.lt.and.orcm",
  "cmp.le.orcm",
  "cmp.le.andcm",
  "cmp.le.and.orcm",
  "cmp.gt.orcm",
  "cmp.gt.andcm",
  "cmp.gt.and.orcm",
  "cmp.ge.orcm",
  "cmp.ge.andcm",
  "cmp.ge.and.orcm",
  "cmp.lt.and",
  "cmp.lt.or",
  "cmp.lt.or.andcm",
  "cmp.le.and",
  "cmp.le.or",
  "cmp.le.or.andcm",
  "cmp.gt.and",
  "cmp.gt.or",
  "cmp.gt.or.andcm",
  "cmp.ge.and",
  "cmp.ge.or",
  "cmp.ge.or.andcm",
  "cmp.eq.orcm",
  "cmp.eq.andcm",
  "cmp.eq.and.orcm",
  "cmp.ne",
  "cmp.ne.unc",
  "cmp.ne.orcm",
  "cmp.ne.andcm",
  "cmp.ne.and.orcm",
  "cmp.le",
  "cmp.le.unc",
  "cmp.gt",
  "cmp.gt.unc",
  "cmp.ge",
  "cmp.ge.unc",
  "cmp.leu",
  "cmp.leu.unc",
  "cmp.gtu",
  "cmp.gtu.unc",
  "cmp.geu",
  "cmp.geu.unc",
  "cmp4.eq.orcm",
  "cmp4.eq.andcm",
  "cmp4.eq.and.orcm",
  "cmp4.ne",
  "cmp4.ne.unc",
  "cmp4.ne.orcm",
  "cmp4.ne.andcm",
  "cmp4.ne.and.orcm",
  "cmp4.le",
  "cmp4.le.unc",
  "cmp4.gt",
  "cmp4.gt.unc",
  "cmp4.ge",
  "cmp4.ge.unc",
  "cmp4.leu",
  "cmp4.leu.unc",
  "cmp4.gtu",
  "cmp4.gtu.unc",
  "cmp4.geu",
  "cmp4.geu.unc",
  "cmp4.lt.orcm",
  "cmp4.lt.andcm",
  "cmp4.lt.and.orcm",
  "cmp4.le.orcm",
  "cmp4.le.andcm",
  "cmp4.le.and.orcm",
  "cmp4.gt.orcm",
  "cmp4.gt.andcm",
  "cmp4.gt.and.orcm",
  "cmp4.ge.orcm",
  "cmp4.ge.andcm",
  "cmp4.ge.and.orcm",
  "cmp4.lt.orcm",
  "cmp4.lt.andcm",
  "cmp4.lt.and.orcm",
  "cmp4.le.orcm",
  "cmp4.le.andcm",
  "cmp4.le.and.orcm",
  "cmp4.gt.orcm",
  "cmp4.gt.andcm",
  "cmp4.gt.and.orcm",
  "cmp4.ge.orcm",
  "cmp4.ge.andcm",
  "cmp4.ge.and.orcm",
  "cmp4.lt.and",
  "cmp4.lt.or",
  "cmp4.lt.or.andcm",
  "cmp4.le.and",
  "cmp4.le.or",
  "cmp4.le.or.andcm",
  "cmp4.gt.and",
  "cmp4.gt.or",
  "cmp4.gt.or.andcm",
  "cmp4.ge.and",
  "cmp4.ge.or",
  "cmp4.ge.or.andcm",
  "cmp4.eq.orcm",
  "cmp4.eq.andcm",
  "cmp4.eq.and.orcm",
  "cmp4.ne",
  "cmp4.ne.unc",
  "cmp4.ne.orcm",
  "cmp4.ne.andcm",
  "cmp4.ne.and.orcm",
  "cmp4.le",
  "cmp4.le.unc",
  "cmp4.gt",
  "cmp4.gt.unc",
  "cmp4.ge",
  "cmp4.ge.unc",
  "cmp4.leu",
  "cmp4.leu.unc",
  "cmp4.gtu",
  "cmp4.gtu.unc",
  "cmp4.geu",
  "cmp4.geu.unc",
  "fabs",
  "fadd",
  "fadd.s",
  "fadd.d",
  "fclass.nm",
  "fclass.nm.unc",
  "fcmp.gt",
  "fcmp.gt.unc",
  "fcmp.ge",
  "fcmp.ge.unc",
  "fcmp.neq",
  "fcmp.neq.unc",
  "fcmp.nlt",
  "fcmp.nlt.unc",
  "fcmp.nle",
  "fcmp.nle.unc",
  "fcmp.ngt",
  "fcmp.ngt.unc",
  "fcmp.nge",
  "fcmp.nge.unc",
  "fcmp.ord",
  "fcmp.ord.unc",
  "fcvt.xuf",
  "fcvt.xuf.s",
  "fcvt.xuf.d",
  "fmpy",
  "fmpy.s",
  "fmpy.d",
  "fneg",
  "fnegabs",
  "fnmpy",
  "fnmpy.s",
  "fnmpy.d",
  "fnorm",
  "fnorm.s",
  "fnorm.d",
  "fpabs",
  "fpcmp.gt",
  "fpcmp.ge",
  "fpcmp.ngt",
  "fpcmp.nge",
  "fpmpy",
  "fpneg",
  "fpnegabs",
  "fpnmpy",
  "fsub",
  "fsub.s",
  "fsub.d",
  "mov",
  "mov",
  "mov",
  "mov",
  "shl",
  "shr",
  "shr.u",
  "tbit.nz",
  "tbit.nz.unc",
  "tnat.nz",
  "tnat.nz.unc",
  "xma.lu",
  "xmpy.l",
  "xmpy.lu",
  "xmpy.h",
  "xmpy.hu",
  "break",
  "chk.s",
  "cmp.lt.and",
  "cmp.lt.or",
  "cmp.lt.or.andcm",
  "cmp.le.and",
  "cmp.le.or",
  "cmp.le.or.andcm",
  "cmp.gt.and",
  "cmp.gt.or",
  "cmp.gt.or.andcm",
  "cmp.ge.and",
  "cmp.ge.or",
  "cmp.ge.or.andcm",
  "cmp.lt.orcm",
  "cmp.lt.andcm",
  "cmp.lt.and.orcm",
  "cmp.le.orcm",
  "cmp.le.andcm",
  "cmp.le.and.orcm",
  "cmp.gt.orcm",
  "cmp.gt.andcm",
  "cmp.gt.and.orcm",
  "cmp.ge.orcm",
  "cmp.ge.andcm",
  "cmp.ge.and.orcm",
  "cmp4.lt.and",
  "cmp4.lt.or",
  "cmp4.lt.or.andcm",
  "cmp4.le.and",
  "cmp4.le.or",
  "cmp4.le.or.andcm",
  "cmp4.gt.and",
  "cmp4.gt.or",
  "cmp4.gt.or.andcm",
  "cmp4.ge.and",
  "cmp4.ge.or",
  "cmp4.ge.or.andcm",
  "cmp4.lt.orcm",
  "cmp4.lt.andcm",
  "cmp4.lt.and.orcm",
  "cmp4.le.orcm",
  "cmp4.le.andcm",
  "cmp4.le.and.orcm",
  "cmp4.gt.orcm",
  "cmp4.gt.andcm",
  "cmp4.gt.and.orcm",
  "cmp4.ge.orcm",
  "cmp4.ge.andcm",
  "cmp4.ge.and.orcm",
  "mov",
  "mov",
  "mov",
  "nop",
  "asm",
  "intrncall",
  "spadjust",
  "copy.br",
  "begin.pregtn",
  "end.pregtn",
  "bwd.bar",
  "fwd.bar",
  "dfixup",
  "ffixup",
  "ifixup",
  "label",
  "noop",
  "UNDEFINED"
};

BOOL ISA_PRINT_Operand_Is_Part_Of_Name(TOP topcode, INT opindex)
{
  const ISA_PRINT_INFO *info = ISA_PRINT_Info(topcode);
  const char *place_in_format = ISA_PRINT_INFO_Format(info);
  BOOL in_name_part = 0;
  INT comp;
  INT i = 0;
  for (;;) {
  	comp = ISA_PRINT_INFO_Comp(info,i);
  	if (comp == ISA_PRINT_COMP_end) break;
	place_in_format = strchr(place_in_format, '%');
	place_in_format += 2; /* assume %s */
  	if (comp == ISA_PRINT_COMP_name) {
	  if (*place_in_format == '\0' || *place_in_format == ' ')
		in_name_part = 0;
	  else
		in_name_part = 1;
  	}
  	if (comp >= ISA_PRINT_COMP_opnd && comp < ISA_PRINT_COMP_result) {
  	  if (in_name_part) {
	    INT comp_opindex = comp - ISA_PRINT_COMP_opnd;
	    if (comp_opindex == opindex)
		return 1;
	    if (*place_in_format == '\0' || *place_in_format == ' ')
		in_name_part = 0;
  	  }
  	}
  	++i;
  }
  return 0;
}
