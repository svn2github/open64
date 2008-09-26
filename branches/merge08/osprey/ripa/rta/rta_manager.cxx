/*! \file rta_manager.cxx
 * \brief Implementation of Rta_Manager
 */

#include "messg.h"
#include "rta.h"
#include "rta_manager.h"

#ifdef RTA_MANAGER_TEST

#include <stdlib.h>
#include <stdio.h>

/*!
 * \brief Testcase for Rta_Manager.
 */
int main() {
  const int PU_COUNT = 9;
  const int BB_COUNT_PER_PU = 7;
  const int GAP_AFTER_PU = 64;

  /* build up the memory image */

  const int image_size = sizeof(Rta_Hdr)
                      + sizeof(Rta_Pu) * PU_COUNT
                      + GAP_AFTER_PU;
  void * image = malloc(image_size);

  Rta_Hdr hdr = {V_1_0, RTA_STATIC, RTA_MIPS, 456, PU_COUNT, 0xFEDC};
  *(Rta_Hdr *)image = hdr;

  for (int i = 0; i < PU_COUNT; i++) {
    Rta_Pu * pph = (Rta_Pu *)((char *)image + sizeof(Rta_Hdr)) + i;
    Rta_Bb * bh_arr = (Rta_Bb *)((char *)image + sizeof(Rta_Hdr)
                                            + sizeof(Rta_Pu) * PU_COUNT + GAP_AFTER_PU);
    // TODO change initialization according to changes of rta.h
    Rta_Pu ph = {0x1b000000 + i, i, 0, (char *)bh_arr - (char *)pph, BB_COUNT_PER_PU
        , 1, 1, 1, 0xF1A0, 0, i * 10};
    *pph = ph;
    // TODO set up BB header table for this PU
  }

printf("sizeof(Rta_Hdr) = %d\n", sizeof(Rta_Hdr));
printf("sizeof(Rta_Pu)  = %d\n", sizeof(Rta_Pu));
printf("sizeof(Rta_Bb)  = %d\n", sizeof(Rta_Bb));
printf("image_size = %d\n", image_size);

  /* dump the binary image */
  for (int i = 0; i < image_size; i++) {
    printf("0x%02hhx", ((char *)image)[i]);
    printf((i % 8 == 7) ? "\n" : ", ");
  }

  /* test Rta_Manager and related iterators */

  Rta_Manager manager(image);
  

  Print_rta_hdr(NULL, &manager.Hdr(), NULL);
  int j = 1;
  for (Rta_Manager::Pu_Iter i = manager.Pu_begin(); i != manager.Pu_end(); ++i, ++j) {
    char buf[10];
    sprintf(buf, "%d: ", j);
    if (j%2)
      Print_rta_pu(NULL, &*i, buf);
    else
      Print_rta_pu(NULL, &manager.Pu(j), buf);
  }

  free(image);
 
  return 0;
}

#endif // RTA_MANAGER_TEST
