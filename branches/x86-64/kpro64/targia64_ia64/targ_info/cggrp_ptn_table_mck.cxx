//-*-c++-*-
#include "defs.h"
#include "errors.h"
#include "targ_isa_bundle.h"
#include "cggrp_ptn_table.h"
/* ================================================================
 * Request bit vector: 1 M0 */
PATTERN_TYPE ptn1[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 5, 16} }	/*m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 2 M1 */
PATTERN_TYPE ptn2[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 5, 16} }	/*m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 3 M0 M1 */
PATTERN_TYPE ptn3[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 4 M2 */
PATTERN_TYPE ptn4[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 5, 16} }	/*m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 5 M0 M2 */
PATTERN_TYPE ptn5[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 6 M1 M2 */
PATTERN_TYPE ptn6[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 7 M0 M1 M2 */
PATTERN_TYPE ptn7[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 8 M3 */
PATTERN_TYPE ptn8[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 5, 16} }	/*m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 9 M0 M3 */
PATTERN_TYPE ptn9[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 10 M1 M3 */
PATTERN_TYPE ptn10[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 11 M0 M1 M3 */
PATTERN_TYPE ptn11[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 12 M2 M3 */
PATTERN_TYPE ptn12[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 13 M0 M2 M3 */
PATTERN_TYPE ptn13[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 14 M1 M2 M3 */
PATTERN_TYPE ptn14[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 15 M0 M1 M2 M3 */
PATTERN_TYPE ptn15[] = {
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 16 I0 */
PATTERN_TYPE ptn16[] = {
	{ 1, 0, { 1, 16} }	/*->mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 17 M0 I0 */
PATTERN_TYPE ptn17[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 18 M1 I0 */
PATTERN_TYPE ptn18[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 19 M0 M1 I0 */
PATTERN_TYPE ptn19[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 20 M2 I0 */
PATTERN_TYPE ptn20[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 21 M0 M2 I0 */
PATTERN_TYPE ptn21[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 22 M1 M2 I0 */
PATTERN_TYPE ptn22[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 23 M0 M1 M2 I0 */
PATTERN_TYPE ptn23[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 24 M3 I0 */
PATTERN_TYPE ptn24[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0|M1|M2|M3 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 25 M0 M3 I0 */
PATTERN_TYPE ptn25[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 26 M1 M3 I0 */
PATTERN_TYPE ptn26[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 27 M0 M1 M3 I0 */
PATTERN_TYPE ptn27[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 28 M2 M3 I0 */
PATTERN_TYPE ptn28[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0|M1|M2|M3 M0|M1|M2|M3 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 29 M0 M2 M3 I0 */
PATTERN_TYPE ptn29[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 30 M1 M2 M3 I0 */
PATTERN_TYPE ptn30[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 4, 5} }	/*mmi m_mi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 31 M0 M1 M2 M3 I0 */
PATTERN_TYPE ptn31[] = {
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 32 I1 */
PATTERN_TYPE ptn32[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 33 M0 I1 */
PATTERN_TYPE ptn33[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 34 M1 I1 */
PATTERN_TYPE ptn34[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 35 M0 M1 I1 */
PATTERN_TYPE ptn35[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 36 M2 I1 */
PATTERN_TYPE ptn36[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 37 M0 M2 I1 */
PATTERN_TYPE ptn37[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 38 M1 M2 I1 */
PATTERN_TYPE ptn38[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 39 M0 M1 M2 I1 */
PATTERN_TYPE ptn39[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 40 M3 I1 */
PATTERN_TYPE ptn40[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 41 M0 M3 I1 */
PATTERN_TYPE ptn41[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 42 M1 M3 I1 */
PATTERN_TYPE ptn42[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 43 M0 M1 M3 I1 */
PATTERN_TYPE ptn43[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 44 M2 M3 I1 */
PATTERN_TYPE ptn44[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 45 M0 M2 M3 I1 */
PATTERN_TYPE ptn45[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 46 M1 M2 M3 I1 */
PATTERN_TYPE ptn46[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 47 M0 M1 M2 M3 I1 */
PATTERN_TYPE ptn47[] = {
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 48 I0 I1 */
PATTERN_TYPE ptn48[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 49 M0 I0 I1 */
PATTERN_TYPE ptn49[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 50 M1 I0 I1 */
PATTERN_TYPE ptn50[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 51 M0 M1 I0 I1 */
PATTERN_TYPE ptn51[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 52 M2 I0 I1 */
PATTERN_TYPE ptn52[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 53 M0 M2 I0 I1 */
PATTERN_TYPE ptn53[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 54 M1 M2 I0 I1 */
PATTERN_TYPE ptn54[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 55 M0 M1 M2 I0 I1 */
PATTERN_TYPE ptn55[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 56 M3 I0 I1 */
PATTERN_TYPE ptn56[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0|M1|M2|M3 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 57 M0 M3 I0 I1 */
PATTERN_TYPE ptn57[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 58 M1 M3 I0 I1 */
PATTERN_TYPE ptn58[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 59 M0 M1 M3 I0 I1 */
PATTERN_TYPE ptn59[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 60 M2 M3 I0 I1 */
PATTERN_TYPE ptn60[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 61 M0 M2 M3 I0 I1 */
PATTERN_TYPE ptn61[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 62 M1 M2 M3 I0 I1 */
PATTERN_TYPE ptn62[] = {
	{ 1, 0, { 5, 4} }	/*->m_mi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 4, 1} }	/*mmi mi_i M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 63 M0 M1 M2 M3 I0 I1 */
PATTERN_TYPE ptn63[] = {
	{ 0, 0, { 4, 4} }	/*mmi mmi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 64 F0 */
PATTERN_TYPE ptn64[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */
};

/* ================================================================
 * Request bit vector: 65 M0 F0 */
PATTERN_TYPE ptn65[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */
};

/* ================================================================
 * Request bit vector: 66 M1 F0 */
PATTERN_TYPE ptn66[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */
};

/* ================================================================
 * Request bit vector: 67 M0 M1 F0 */
PATTERN_TYPE ptn67[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 68 M2 F0 */
PATTERN_TYPE ptn68[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */
};

/* ================================================================
 * Request bit vector: 69 M0 M2 F0 */
PATTERN_TYPE ptn69[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 70 M1 M2 F0 */
PATTERN_TYPE ptn70[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 71 M0 M1 M2 F0 */
PATTERN_TYPE ptn71[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 72 M3 F0 */
PATTERN_TYPE ptn72[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */
};

/* ================================================================
 * Request bit vector: 73 M0 M3 F0 */
PATTERN_TYPE ptn73[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 74 M1 M3 F0 */
PATTERN_TYPE ptn74[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 75 M0 M1 M3 F0 */
PATTERN_TYPE ptn75[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 76 M2 M3 F0 */
PATTERN_TYPE ptn76[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0|M1|M2|M3 M0|M1|M2|M3 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 77 M0 M2 M3 F0 */
PATTERN_TYPE ptn77[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 78 M1 M2 M3 F0 */
PATTERN_TYPE ptn78[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 79 M0 M1 M2 M3 F0 */

/* ================================================================
 * Request bit vector: 80 I0 F0 */
PATTERN_TYPE ptn80[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 81 M0 I0 F0 */
PATTERN_TYPE ptn81[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 82 M1 I0 F0 */
PATTERN_TYPE ptn82[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 83 M0 M1 I0 F0 */
PATTERN_TYPE ptn83[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 84 M2 I0 F0 */
PATTERN_TYPE ptn84[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 85 M0 M2 I0 F0 */
PATTERN_TYPE ptn85[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 86 M1 M2 I0 F0 */
PATTERN_TYPE ptn86[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 87 M0 M1 M2 I0 F0 */
PATTERN_TYPE ptn87[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 88 M3 I0 F0 */
PATTERN_TYPE ptn88[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0|M1|M2|M3 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 89 M0 M3 I0 F0 */
PATTERN_TYPE ptn89[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 90 M1 M3 I0 F0 */
PATTERN_TYPE ptn90[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 91 M0 M1 M3 I0 F0 */
PATTERN_TYPE ptn91[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 92 M2 M3 I0 F0 */
PATTERN_TYPE ptn92[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 93 M0 M2 M3 I0 F0 */
PATTERN_TYPE ptn93[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 94 M1 M2 M3 I0 F0 */
PATTERN_TYPE ptn94[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 95 M0 M1 M2 M3 I0 F0 */

/* ================================================================
 * Request bit vector: 96 I1 F0 */
PATTERN_TYPE ptn96[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 97 M0 I1 F0 */
PATTERN_TYPE ptn97[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 98 M1 I1 F0 */
PATTERN_TYPE ptn98[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 99 M0 M1 I1 F0 */
PATTERN_TYPE ptn99[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 100 M2 I1 F0 */
PATTERN_TYPE ptn100[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 101 M0 M2 I1 F0 */
PATTERN_TYPE ptn101[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 102 M1 M2 I1 F0 */
PATTERN_TYPE ptn102[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 103 M0 M1 M2 I1 F0 */
PATTERN_TYPE ptn103[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 104 M3 I1 F0 */
PATTERN_TYPE ptn104[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 105 M0 M3 I1 F0 */
PATTERN_TYPE ptn105[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 106 M1 M3 I1 F0 */
PATTERN_TYPE ptn106[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 107 M0 M1 M3 I1 F0 */
PATTERN_TYPE ptn107[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 108 M2 M3 I1 F0 */
PATTERN_TYPE ptn108[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 109 M0 M2 M3 I1 F0 */
PATTERN_TYPE ptn109[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 110 M1 M2 M3 I1 F0 */
PATTERN_TYPE ptn110[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 111 M0 M1 M2 M3 I1 F0 */

/* ================================================================
 * Request bit vector: 112 I0 I1 F0 */
PATTERN_TYPE ptn112[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 113 M0 I0 I1 F0 */
PATTERN_TYPE ptn113[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 114 M1 I0 I1 F0 */
PATTERN_TYPE ptn114[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 115 M0 M1 I0 I1 F0 */
PATTERN_TYPE ptn115[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 116 M2 I0 I1 F0 */
PATTERN_TYPE ptn116[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 117 M0 M2 I0 I1 F0 */
PATTERN_TYPE ptn117[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 118 M1 M2 I0 I1 F0 */
PATTERN_TYPE ptn118[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 119 M0 M1 M2 I0 I1 F0 */
PATTERN_TYPE ptn119[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 120 M3 I0 I1 F0 */
PATTERN_TYPE ptn120[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 121 M0 M3 I0 I1 F0 */
PATTERN_TYPE ptn121[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 122 M1 M3 I0 I1 F0 */
PATTERN_TYPE ptn122[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 123 M0 M1 M3 I0 I1 F0 */
PATTERN_TYPE ptn123[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 124 M2 M3 I0 I1 F0 */
PATTERN_TYPE ptn124[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 125 M0 M2 M3 I0 I1 F0 */
PATTERN_TYPE ptn125[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 126 M1 M2 M3 I0 I1 F0 */
PATTERN_TYPE ptn126[] = {
	{ 0, 0, { 2, 4} }	/*mlx mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 6, 4} }	/*mfi mmi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 127 M0 M1 M2 M3 I0 I1 F0 */

/* ================================================================
 * Request bit vector: 128 F1 */
PATTERN_TYPE ptn128[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 129 M0 F1 */
PATTERN_TYPE ptn129[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 130 M1 F1 */
PATTERN_TYPE ptn130[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 131 M0 M1 F1 */
PATTERN_TYPE ptn131[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 132 M2 F1 */
PATTERN_TYPE ptn132[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 133 M0 M2 F1 */
PATTERN_TYPE ptn133[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 134 M1 M2 F1 */
PATTERN_TYPE ptn134[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 135 M0 M1 M2 F1 */
PATTERN_TYPE ptn135[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 136 M3 F1 */
PATTERN_TYPE ptn136[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 137 M0 M3 F1 */
PATTERN_TYPE ptn137[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 138 M1 M3 F1 */
PATTERN_TYPE ptn138[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 139 M0 M1 M3 F1 */
PATTERN_TYPE ptn139[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 140 M2 M3 F1 */
PATTERN_TYPE ptn140[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 141 M0 M2 M3 F1 */
PATTERN_TYPE ptn141[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 142 M1 M2 M3 F1 */
PATTERN_TYPE ptn142[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 143 M0 M1 M2 M3 F1 */

/* ================================================================
 * Request bit vector: 144 I0 F1 */
PATTERN_TYPE ptn144[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 145 M0 I0 F1 */
PATTERN_TYPE ptn145[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 146 M1 I0 F1 */
PATTERN_TYPE ptn146[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 147 M0 M1 I0 F1 */
PATTERN_TYPE ptn147[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 148 M2 I0 F1 */
PATTERN_TYPE ptn148[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 149 M0 M2 I0 F1 */
PATTERN_TYPE ptn149[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 150 M1 M2 I0 F1 */
PATTERN_TYPE ptn150[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 151 M0 M1 M2 I0 F1 */
PATTERN_TYPE ptn151[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 152 M3 I0 F1 */
PATTERN_TYPE ptn152[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 153 M0 M3 I0 F1 */
PATTERN_TYPE ptn153[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 154 M1 M3 I0 F1 */
PATTERN_TYPE ptn154[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 155 M0 M1 M3 I0 F1 */
PATTERN_TYPE ptn155[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 156 M2 M3 I0 F1 */
PATTERN_TYPE ptn156[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 157 M0 M2 M3 I0 F1 */
PATTERN_TYPE ptn157[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 158 M1 M2 M3 I0 F1 */
PATTERN_TYPE ptn158[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 159 M0 M1 M2 M3 I0 F1 */

/* ================================================================
 * Request bit vector: 160 I1 F1 */
PATTERN_TYPE ptn160[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 161 M0 I1 F1 */
PATTERN_TYPE ptn161[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 162 M1 I1 F1 */
PATTERN_TYPE ptn162[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 163 M0 M1 I1 F1 */
PATTERN_TYPE ptn163[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 164 M2 I1 F1 */
PATTERN_TYPE ptn164[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 165 M0 M2 I1 F1 */
PATTERN_TYPE ptn165[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 166 M1 M2 I1 F1 */
PATTERN_TYPE ptn166[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 167 M0 M1 M2 I1 F1 */
PATTERN_TYPE ptn167[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 168 M3 I1 F1 */
PATTERN_TYPE ptn168[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 169 M0 M3 I1 F1 */
PATTERN_TYPE ptn169[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 170 M1 M3 I1 F1 */
PATTERN_TYPE ptn170[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 171 M0 M1 M3 I1 F1 */
PATTERN_TYPE ptn171[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 172 M2 M3 I1 F1 */
PATTERN_TYPE ptn172[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 173 M0 M2 M3 I1 F1 */
PATTERN_TYPE ptn173[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 174 M1 M2 M3 I1 F1 */
PATTERN_TYPE ptn174[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 175 M0 M1 M2 M3 I1 F1 */

/* ================================================================
 * Request bit vector: 176 I0 I1 F1 */
PATTERN_TYPE ptn176[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 177 M0 I0 I1 F1 */
PATTERN_TYPE ptn177[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 178 M1 I0 I1 F1 */
PATTERN_TYPE ptn178[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 179 M0 M1 I0 I1 F1 */
PATTERN_TYPE ptn179[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 180 M2 I0 I1 F1 */
PATTERN_TYPE ptn180[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 181 M0 M2 I0 I1 F1 */
PATTERN_TYPE ptn181[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 182 M1 M2 I0 I1 F1 */
PATTERN_TYPE ptn182[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 183 M0 M1 M2 I0 I1 F1 */
PATTERN_TYPE ptn183[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 184 M3 I0 I1 F1 */
PATTERN_TYPE ptn184[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 185 M0 M3 I0 I1 F1 */
PATTERN_TYPE ptn185[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 186 M1 M3 I0 I1 F1 */
PATTERN_TYPE ptn186[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 187 M0 M1 M3 I0 I1 F1 */
PATTERN_TYPE ptn187[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 188 M2 M3 I0 I1 F1 */
PATTERN_TYPE ptn188[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 189 M0 M2 M3 I0 I1 F1 */
PATTERN_TYPE ptn189[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 190 M1 M2 M3 I0 I1 F1 */
PATTERN_TYPE ptn190[] = {
	{ 0, 0, { 4, 2} }	/*mmi mlx M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 4, 6} }	/*mmi mfi M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 191 M0 M1 M2 M3 I0 I1 F1 */

/* ================================================================
 * Request bit vector: 192 F0 F1 */
PATTERN_TYPE ptn192[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 193 M0 F0 F1 */
PATTERN_TYPE ptn193[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 194 M1 F0 F1 */
PATTERN_TYPE ptn194[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 195 M0 M1 F0 F1 */
PATTERN_TYPE ptn195[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 196 M2 F0 F1 */
PATTERN_TYPE ptn196[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 197 M0 M2 F0 F1 */
PATTERN_TYPE ptn197[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 198 M1 M2 F0 F1 */
PATTERN_TYPE ptn198[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 199 M0 M1 M2 F0 F1 */

/* ================================================================
 * Request bit vector: 200 M3 F0 F1 */
PATTERN_TYPE ptn200[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 201 M0 M3 F0 F1 */
PATTERN_TYPE ptn201[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 202 M1 M3 F0 F1 */
PATTERN_TYPE ptn202[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 203 M0 M1 M3 F0 F1 */

/* ================================================================
 * Request bit vector: 204 M2 M3 F0 F1 */
PATTERN_TYPE ptn204[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 205 M0 M2 M3 F0 F1 */

/* ================================================================
 * Request bit vector: 206 M1 M2 M3 F0 F1 */

/* ================================================================
 * Request bit vector: 207 M0 M1 M2 M3 F0 F1 */

/* ================================================================
 * Request bit vector: 208 I0 F0 F1 */
PATTERN_TYPE ptn208[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 209 M0 I0 F0 F1 */
PATTERN_TYPE ptn209[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 210 M1 I0 F0 F1 */
PATTERN_TYPE ptn210[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 211 M0 M1 I0 F0 F1 */
PATTERN_TYPE ptn211[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 212 M2 I0 F0 F1 */
PATTERN_TYPE ptn212[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 213 M0 M2 I0 F0 F1 */
PATTERN_TYPE ptn213[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 214 M1 M2 I0 F0 F1 */
PATTERN_TYPE ptn214[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 215 M0 M1 M2 I0 F0 F1 */

/* ================================================================
 * Request bit vector: 216 M3 I0 F0 F1 */
PATTERN_TYPE ptn216[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 217 M0 M3 I0 F0 F1 */
PATTERN_TYPE ptn217[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 218 M1 M3 I0 F0 F1 */
PATTERN_TYPE ptn218[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 219 M0 M1 M3 I0 F0 F1 */

/* ================================================================
 * Request bit vector: 220 M2 M3 I0 F0 F1 */
PATTERN_TYPE ptn220[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 221 M0 M2 M3 I0 F0 F1 */

/* ================================================================
 * Request bit vector: 222 M1 M2 M3 I0 F0 F1 */

/* ================================================================
 * Request bit vector: 223 M0 M1 M2 M3 I0 F0 F1 */

/* ================================================================
 * Request bit vector: 224 I1 F0 F1 */
PATTERN_TYPE ptn224[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 225 M0 I1 F0 F1 */
PATTERN_TYPE ptn225[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 226 M1 I1 F0 F1 */
PATTERN_TYPE ptn226[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 227 M0 M1 I1 F0 F1 */
PATTERN_TYPE ptn227[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 228 M2 I1 F0 F1 */
PATTERN_TYPE ptn228[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 229 M0 M2 I1 F0 F1 */
PATTERN_TYPE ptn229[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 230 M1 M2 I1 F0 F1 */
PATTERN_TYPE ptn230[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 231 M0 M1 M2 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 232 M3 I1 F0 F1 */
PATTERN_TYPE ptn232[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 233 M0 M3 I1 F0 F1 */
PATTERN_TYPE ptn233[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 234 M1 M3 I1 F0 F1 */
PATTERN_TYPE ptn234[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 235 M0 M1 M3 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 236 M2 M3 I1 F0 F1 */
PATTERN_TYPE ptn236[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 237 M0 M2 M3 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 238 M1 M2 M3 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 239 M0 M1 M2 M3 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 240 I0 I1 F0 F1 */
PATTERN_TYPE ptn240[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 241 M0 I0 I1 F0 F1 */
PATTERN_TYPE ptn241[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 242 M1 I0 I1 F0 F1 */
PATTERN_TYPE ptn242[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 243 M0 M1 I0 I1 F0 F1 */
PATTERN_TYPE ptn243[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 244 M2 I0 I1 F0 F1 */
PATTERN_TYPE ptn244[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 245 M0 M2 I0 I1 F0 F1 */
PATTERN_TYPE ptn245[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 246 M1 M2 I0 I1 F0 F1 */
PATTERN_TYPE ptn246[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 247 M0 M1 M2 I0 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 248 M3 I0 I1 F0 F1 */
PATTERN_TYPE ptn248[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 249 M0 M3 I0 I1 F0 F1 */
PATTERN_TYPE ptn249[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 250 M1 M3 I0 I1 F0 F1 */
PATTERN_TYPE ptn250[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 251 M0 M1 M3 I0 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 252 M2 M3 I0 I1 F0 F1 */
PATTERN_TYPE ptn252[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 253 M0 M2 M3 I0 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 254 M1 M2 M3 I0 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 255 M0 M1 M2 M3 I0 I1 F0 F1 */

/* ================================================================
 * Request bit vector: 256 B0 */
PATTERN_TYPE ptn256[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 257 M0 B0 */
PATTERN_TYPE ptn257[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 258 M1 B0 */
PATTERN_TYPE ptn258[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 259 M0 M1 B0 */
PATTERN_TYPE ptn259[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 260 M2 B0 */
PATTERN_TYPE ptn260[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 261 M0 M2 B0 */
PATTERN_TYPE ptn261[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 262 M1 M2 B0 */
PATTERN_TYPE ptn262[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 263 M0 M1 M2 B0 */

/* ================================================================
 * Request bit vector: 264 M3 B0 */
PATTERN_TYPE ptn264[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 265 M0 M3 B0 */
PATTERN_TYPE ptn265[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 266 M1 M3 B0 */
PATTERN_TYPE ptn266[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 267 M0 M1 M3 B0 */

/* ================================================================
 * Request bit vector: 268 M2 M3 B0 */
PATTERN_TYPE ptn268[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 269 M0 M2 M3 B0 */

/* ================================================================
 * Request bit vector: 270 M1 M2 M3 B0 */

/* ================================================================
 * Request bit vector: 271 M0 M1 M2 M3 B0 */

/* ================================================================
 * Request bit vector: 272 I0 B0 */
PATTERN_TYPE ptn272[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 273 M0 I0 B0 */
PATTERN_TYPE ptn273[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 274 M1 I0 B0 */
PATTERN_TYPE ptn274[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 275 M0 M1 I0 B0 */
PATTERN_TYPE ptn275[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 276 M2 I0 B0 */
PATTERN_TYPE ptn276[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 277 M0 M2 I0 B0 */
PATTERN_TYPE ptn277[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 278 M1 M2 I0 B0 */
PATTERN_TYPE ptn278[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 279 M0 M1 M2 I0 B0 */

/* ================================================================
 * Request bit vector: 280 M3 I0 B0 */
PATTERN_TYPE ptn280[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 281 M0 M3 I0 B0 */
PATTERN_TYPE ptn281[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 282 M1 M3 I0 B0 */
PATTERN_TYPE ptn282[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 283 M0 M1 M3 I0 B0 */

/* ================================================================
 * Request bit vector: 284 M2 M3 I0 B0 */
PATTERN_TYPE ptn284[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 285 M0 M2 M3 I0 B0 */

/* ================================================================
 * Request bit vector: 286 M1 M2 M3 I0 B0 */

/* ================================================================
 * Request bit vector: 287 M0 M1 M2 M3 I0 B0 */

/* ================================================================
 * Request bit vector: 288 I1 B0 */
PATTERN_TYPE ptn288[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 289 M0 I1 B0 */
PATTERN_TYPE ptn289[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 290 M1 I1 B0 */
PATTERN_TYPE ptn290[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 291 M0 M1 I1 B0 */

/* ================================================================
 * Request bit vector: 292 M2 I1 B0 */
PATTERN_TYPE ptn292[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 293 M0 M2 I1 B0 */

/* ================================================================
 * Request bit vector: 294 M1 M2 I1 B0 */

/* ================================================================
 * Request bit vector: 295 M0 M1 M2 I1 B0 */

/* ================================================================
 * Request bit vector: 296 M3 I1 B0 */
PATTERN_TYPE ptn296[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 297 M0 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 298 M1 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 299 M0 M1 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 300 M2 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 301 M0 M2 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 302 M1 M2 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 303 M0 M1 M2 M3 I1 B0 */

/* ================================================================
 * Request bit vector: 304 I0 I1 B0 */
PATTERN_TYPE ptn304[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 305 M0 I0 I1 B0 */
PATTERN_TYPE ptn305[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 306 M1 I0 I1 B0 */
PATTERN_TYPE ptn306[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 307 M0 M1 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 308 M2 I0 I1 B0 */
PATTERN_TYPE ptn308[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 309 M0 M2 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 310 M1 M2 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 311 M0 M1 M2 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 312 M3 I0 I1 B0 */
PATTERN_TYPE ptn312[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 313 M0 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 314 M1 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 315 M0 M1 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 316 M2 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 317 M0 M2 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 318 M1 M2 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 319 M0 M1 M2 M3 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 320 F0 B0 */
PATTERN_TYPE ptn320[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 321 M0 F0 B0 */
PATTERN_TYPE ptn321[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 322 M1 F0 B0 */
PATTERN_TYPE ptn322[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 323 M0 M1 F0 B0 */

/* ================================================================
 * Request bit vector: 324 M2 F0 B0 */
PATTERN_TYPE ptn324[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 325 M0 M2 F0 B0 */

/* ================================================================
 * Request bit vector: 326 M1 M2 F0 B0 */

/* ================================================================
 * Request bit vector: 327 M0 M1 M2 F0 B0 */

/* ================================================================
 * Request bit vector: 328 M3 F0 B0 */
PATTERN_TYPE ptn328[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 329 M0 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 330 M1 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 331 M0 M1 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 332 M2 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 333 M0 M2 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 334 M1 M2 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 335 M0 M1 M2 M3 F0 B0 */

/* ================================================================
 * Request bit vector: 336 I0 F0 B0 */
PATTERN_TYPE ptn336[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 337 M0 I0 F0 B0 */
PATTERN_TYPE ptn337[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 338 M1 I0 F0 B0 */
PATTERN_TYPE ptn338[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 339 M0 M1 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 340 M2 I0 F0 B0 */
PATTERN_TYPE ptn340[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 341 M0 M2 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 342 M1 M2 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 343 M0 M1 M2 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 344 M3 I0 F0 B0 */
PATTERN_TYPE ptn344[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 345 M0 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 346 M1 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 347 M0 M1 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 348 M2 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 349 M0 M2 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 350 M1 M2 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 351 M0 M1 M2 M3 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 352 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 353 M0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 354 M1 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 355 M0 M1 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 356 M2 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 357 M0 M2 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 358 M1 M2 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 359 M0 M1 M2 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 360 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 361 M0 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 362 M1 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 363 M0 M1 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 364 M2 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 365 M0 M2 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 366 M1 M2 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 367 M0 M1 M2 M3 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 368 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 369 M0 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 370 M1 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 371 M0 M1 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 372 M2 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 373 M0 M2 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 374 M1 M2 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 375 M0 M1 M2 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 376 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 377 M0 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 378 M1 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 379 M0 M1 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 380 M2 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 381 M0 M2 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 382 M1 M2 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 383 M0 M1 M2 M3 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 384 F1 B0 */

/* ================================================================
 * Request bit vector: 385 M0 F1 B0 */

/* ================================================================
 * Request bit vector: 386 M1 F1 B0 */

/* ================================================================
 * Request bit vector: 387 M0 M1 F1 B0 */

/* ================================================================
 * Request bit vector: 388 M2 F1 B0 */

/* ================================================================
 * Request bit vector: 389 M0 M2 F1 B0 */

/* ================================================================
 * Request bit vector: 390 M1 M2 F1 B0 */

/* ================================================================
 * Request bit vector: 391 M0 M1 M2 F1 B0 */

/* ================================================================
 * Request bit vector: 392 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 393 M0 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 394 M1 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 395 M0 M1 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 396 M2 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 397 M0 M2 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 398 M1 M2 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 399 M0 M1 M2 M3 F1 B0 */

/* ================================================================
 * Request bit vector: 400 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 401 M0 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 402 M1 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 403 M0 M1 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 404 M2 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 405 M0 M2 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 406 M1 M2 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 407 M0 M1 M2 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 408 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 409 M0 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 410 M1 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 411 M0 M1 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 412 M2 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 413 M0 M2 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 414 M1 M2 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 415 M0 M1 M2 M3 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 416 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 417 M0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 418 M1 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 419 M0 M1 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 420 M2 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 421 M0 M2 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 422 M1 M2 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 423 M0 M1 M2 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 424 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 425 M0 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 426 M1 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 427 M0 M1 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 428 M2 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 429 M0 M2 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 430 M1 M2 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 431 M0 M1 M2 M3 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 432 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 433 M0 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 434 M1 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 435 M0 M1 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 436 M2 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 437 M0 M2 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 438 M1 M2 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 439 M0 M1 M2 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 440 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 441 M0 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 442 M1 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 443 M0 M1 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 444 M2 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 445 M0 M2 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 446 M1 M2 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 447 M0 M1 M2 M3 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 448 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 449 M0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 450 M1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 451 M0 M1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 452 M2 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 453 M0 M2 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 454 M1 M2 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 455 M0 M1 M2 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 456 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 457 M0 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 458 M1 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 459 M0 M1 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 460 M2 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 461 M0 M2 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 462 M1 M2 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 463 M0 M1 M2 M3 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 464 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 465 M0 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 466 M1 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 467 M0 M1 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 468 M2 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 469 M0 M2 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 470 M1 M2 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 471 M0 M1 M2 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 472 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 473 M0 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 474 M1 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 475 M0 M1 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 476 M2 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 477 M0 M2 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 478 M1 M2 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 479 M0 M1 M2 M3 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 480 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 481 M0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 482 M1 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 483 M0 M1 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 484 M2 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 485 M0 M2 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 486 M1 M2 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 487 M0 M1 M2 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 488 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 489 M0 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 490 M1 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 491 M0 M1 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 492 M2 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 493 M0 M2 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 494 M1 M2 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 495 M0 M1 M2 M3 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 496 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 497 M0 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 498 M1 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 499 M0 M1 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 500 M2 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 501 M0 M2 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 502 M1 M2 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 503 M0 M1 M2 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 504 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 505 M0 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 506 M1 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 507 M0 M1 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 508 M2 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 509 M0 M2 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 510 M1 M2 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 511 M0 M1 M2 M3 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 512 B1 */
PATTERN_TYPE ptn512[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 513 M0 B1 */
PATTERN_TYPE ptn513[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 514 M1 B1 */
PATTERN_TYPE ptn514[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 515 M0 M1 B1 */
PATTERN_TYPE ptn515[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 516 M2 B1 */
PATTERN_TYPE ptn516[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 517 M0 M2 B1 */
PATTERN_TYPE ptn517[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 518 M1 M2 B1 */
PATTERN_TYPE ptn518[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 519 M0 M1 M2 B1 */
PATTERN_TYPE ptn519[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 520 M3 B1 */
PATTERN_TYPE ptn520[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 521 M0 M3 B1 */
PATTERN_TYPE ptn521[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 522 M1 M3 B1 */
PATTERN_TYPE ptn522[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 523 M0 M1 M3 B1 */
PATTERN_TYPE ptn523[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 524 M2 M3 B1 */
PATTERN_TYPE ptn524[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 525 M0 M2 M3 B1 */
PATTERN_TYPE ptn525[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 526 M1 M2 M3 B1 */
PATTERN_TYPE ptn526[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 527 M0 M1 M2 M3 B1 */

/* ================================================================
 * Request bit vector: 528 I0 B1 */
PATTERN_TYPE ptn528[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 529 M0 I0 B1 */
PATTERN_TYPE ptn529[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 530 M1 I0 B1 */
PATTERN_TYPE ptn530[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 531 M0 M1 I0 B1 */
PATTERN_TYPE ptn531[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 532 M2 I0 B1 */
PATTERN_TYPE ptn532[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 533 M0 M2 I0 B1 */
PATTERN_TYPE ptn533[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 534 M1 M2 I0 B1 */
PATTERN_TYPE ptn534[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 535 M0 M1 M2 I0 B1 */
PATTERN_TYPE ptn535[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 536 M3 I0 B1 */
PATTERN_TYPE ptn536[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 537 M0 M3 I0 B1 */
PATTERN_TYPE ptn537[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 538 M1 M3 I0 B1 */
PATTERN_TYPE ptn538[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 539 M0 M1 M3 I0 B1 */
PATTERN_TYPE ptn539[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 540 M2 M3 I0 B1 */
PATTERN_TYPE ptn540[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 541 M0 M2 M3 I0 B1 */
PATTERN_TYPE ptn541[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 542 M1 M2 M3 I0 B1 */
PATTERN_TYPE ptn542[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 543 M0 M1 M2 M3 I0 B1 */

/* ================================================================
 * Request bit vector: 544 I1 B1 */
PATTERN_TYPE ptn544[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 545 M0 I1 B1 */
PATTERN_TYPE ptn545[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 546 M1 I1 B1 */
PATTERN_TYPE ptn546[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 547 M0 M1 I1 B1 */
PATTERN_TYPE ptn547[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 548 M2 I1 B1 */
PATTERN_TYPE ptn548[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 549 M0 M2 I1 B1 */
PATTERN_TYPE ptn549[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 550 M1 M2 I1 B1 */
PATTERN_TYPE ptn550[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 551 M0 M1 M2 I1 B1 */

/* ================================================================
 * Request bit vector: 552 M3 I1 B1 */
PATTERN_TYPE ptn552[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 553 M0 M3 I1 B1 */
PATTERN_TYPE ptn553[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 554 M1 M3 I1 B1 */
PATTERN_TYPE ptn554[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 555 M0 M1 M3 I1 B1 */

/* ================================================================
 * Request bit vector: 556 M2 M3 I1 B1 */
PATTERN_TYPE ptn556[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 557 M0 M2 M3 I1 B1 */

/* ================================================================
 * Request bit vector: 558 M1 M2 M3 I1 B1 */

/* ================================================================
 * Request bit vector: 559 M0 M1 M2 M3 I1 B1 */

/* ================================================================
 * Request bit vector: 560 I0 I1 B1 */
PATTERN_TYPE ptn560[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 561 M0 I0 I1 B1 */
PATTERN_TYPE ptn561[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 562 M1 I0 I1 B1 */
PATTERN_TYPE ptn562[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 563 M0 M1 I0 I1 B1 */
PATTERN_TYPE ptn563[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 564 M2 I0 I1 B1 */
PATTERN_TYPE ptn564[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 565 M0 M2 I0 I1 B1 */
PATTERN_TYPE ptn565[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 566 M1 M2 I0 I1 B1 */
PATTERN_TYPE ptn566[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 567 M0 M1 M2 I0 I1 B1 */

/* ================================================================
 * Request bit vector: 568 M3 I0 I1 B1 */
PATTERN_TYPE ptn568[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 569 M0 M3 I0 I1 B1 */
PATTERN_TYPE ptn569[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 570 M1 M3 I0 I1 B1 */
PATTERN_TYPE ptn570[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 571 M0 M1 M3 I0 I1 B1 */

/* ================================================================
 * Request bit vector: 572 M2 M3 I0 I1 B1 */
PATTERN_TYPE ptn572[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 573 M0 M2 M3 I0 I1 B1 */

/* ================================================================
 * Request bit vector: 574 M1 M2 M3 I0 I1 B1 */

/* ================================================================
 * Request bit vector: 575 M0 M1 M2 M3 I0 I1 B1 */

/* ================================================================
 * Request bit vector: 576 F0 B1 */
PATTERN_TYPE ptn576[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 577 M0 F0 B1 */
PATTERN_TYPE ptn577[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 578 M1 F0 B1 */
PATTERN_TYPE ptn578[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 579 M0 M1 F0 B1 */
PATTERN_TYPE ptn579[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 580 M2 F0 B1 */
PATTERN_TYPE ptn580[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 581 M0 M2 F0 B1 */
PATTERN_TYPE ptn581[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 582 M1 M2 F0 B1 */
PATTERN_TYPE ptn582[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 583 M0 M1 M2 F0 B1 */

/* ================================================================
 * Request bit vector: 584 M3 F0 B1 */
PATTERN_TYPE ptn584[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 585 M0 M3 F0 B1 */
PATTERN_TYPE ptn585[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 586 M1 M3 F0 B1 */
PATTERN_TYPE ptn586[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 587 M0 M1 M3 F0 B1 */

/* ================================================================
 * Request bit vector: 588 M2 M3 F0 B1 */
PATTERN_TYPE ptn588[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 589 M0 M2 M3 F0 B1 */

/* ================================================================
 * Request bit vector: 590 M1 M2 M3 F0 B1 */

/* ================================================================
 * Request bit vector: 591 M0 M1 M2 M3 F0 B1 */

/* ================================================================
 * Request bit vector: 592 I0 F0 B1 */
PATTERN_TYPE ptn592[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 593 M0 I0 F0 B1 */
PATTERN_TYPE ptn593[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 594 M1 I0 F0 B1 */
PATTERN_TYPE ptn594[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 595 M0 M1 I0 F0 B1 */
PATTERN_TYPE ptn595[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 596 M2 I0 F0 B1 */
PATTERN_TYPE ptn596[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 597 M0 M2 I0 F0 B1 */
PATTERN_TYPE ptn597[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 598 M1 M2 I0 F0 B1 */
PATTERN_TYPE ptn598[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 599 M0 M1 M2 I0 F0 B1 */

/* ================================================================
 * Request bit vector: 600 M3 I0 F0 B1 */
PATTERN_TYPE ptn600[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 601 M0 M3 I0 F0 B1 */
PATTERN_TYPE ptn601[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 602 M1 M3 I0 F0 B1 */
PATTERN_TYPE ptn602[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 603 M0 M1 M3 I0 F0 B1 */

/* ================================================================
 * Request bit vector: 604 M2 M3 I0 F0 B1 */
PATTERN_TYPE ptn604[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 605 M0 M2 M3 I0 F0 B1 */

/* ================================================================
 * Request bit vector: 606 M1 M2 M3 I0 F0 B1 */

/* ================================================================
 * Request bit vector: 607 M0 M1 M2 M3 I0 F0 B1 */

/* ================================================================
 * Request bit vector: 608 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 609 M0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 610 M1 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 611 M0 M1 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 612 M2 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 613 M0 M2 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 614 M1 M2 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 615 M0 M1 M2 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 616 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 617 M0 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 618 M1 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 619 M0 M1 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 620 M2 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 621 M0 M2 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 622 M1 M2 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 623 M0 M1 M2 M3 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 624 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 625 M0 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 626 M1 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 627 M0 M1 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 628 M2 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 629 M0 M2 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 630 M1 M2 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 631 M0 M1 M2 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 632 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 633 M0 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 634 M1 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 635 M0 M1 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 636 M2 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 637 M0 M2 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 638 M1 M2 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 639 M0 M1 M2 M3 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 640 F1 B1 */

/* ================================================================
 * Request bit vector: 641 M0 F1 B1 */

/* ================================================================
 * Request bit vector: 642 M1 F1 B1 */

/* ================================================================
 * Request bit vector: 643 M0 M1 F1 B1 */

/* ================================================================
 * Request bit vector: 644 M2 F1 B1 */

/* ================================================================
 * Request bit vector: 645 M0 M2 F1 B1 */

/* ================================================================
 * Request bit vector: 646 M1 M2 F1 B1 */

/* ================================================================
 * Request bit vector: 647 M0 M1 M2 F1 B1 */

/* ================================================================
 * Request bit vector: 648 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 649 M0 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 650 M1 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 651 M0 M1 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 652 M2 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 653 M0 M2 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 654 M1 M2 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 655 M0 M1 M2 M3 F1 B1 */

/* ================================================================
 * Request bit vector: 656 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 657 M0 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 658 M1 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 659 M0 M1 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 660 M2 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 661 M0 M2 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 662 M1 M2 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 663 M0 M1 M2 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 664 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 665 M0 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 666 M1 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 667 M0 M1 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 668 M2 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 669 M0 M2 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 670 M1 M2 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 671 M0 M1 M2 M3 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 672 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 673 M0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 674 M1 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 675 M0 M1 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 676 M2 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 677 M0 M2 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 678 M1 M2 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 679 M0 M1 M2 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 680 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 681 M0 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 682 M1 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 683 M0 M1 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 684 M2 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 685 M0 M2 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 686 M1 M2 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 687 M0 M1 M2 M3 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 688 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 689 M0 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 690 M1 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 691 M0 M1 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 692 M2 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 693 M0 M2 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 694 M1 M2 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 695 M0 M1 M2 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 696 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 697 M0 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 698 M1 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 699 M0 M1 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 700 M2 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 701 M0 M2 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 702 M1 M2 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 703 M0 M1 M2 M3 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 704 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 705 M0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 706 M1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 707 M0 M1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 708 M2 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 709 M0 M2 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 710 M1 M2 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 711 M0 M1 M2 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 712 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 713 M0 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 714 M1 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 715 M0 M1 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 716 M2 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 717 M0 M2 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 718 M1 M2 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 719 M0 M1 M2 M3 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 720 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 721 M0 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 722 M1 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 723 M0 M1 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 724 M2 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 725 M0 M2 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 726 M1 M2 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 727 M0 M1 M2 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 728 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 729 M0 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 730 M1 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 731 M0 M1 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 732 M2 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 733 M0 M2 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 734 M1 M2 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 735 M0 M1 M2 M3 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 736 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 737 M0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 738 M1 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 739 M0 M1 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 740 M2 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 741 M0 M2 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 742 M1 M2 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 743 M0 M1 M2 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 744 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 745 M0 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 746 M1 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 747 M0 M1 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 748 M2 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 749 M0 M2 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 750 M1 M2 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 751 M0 M1 M2 M3 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 752 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 753 M0 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 754 M1 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 755 M0 M1 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 756 M2 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 757 M0 M2 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 758 M1 M2 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 759 M0 M1 M2 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 760 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 761 M0 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 762 M1 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 763 M0 M1 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 764 M2 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 765 M0 M2 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 766 M1 M2 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 767 M0 M1 M2 M3 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 768 B0 B1 */
PATTERN_TYPE ptn768[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 769 M0 B0 B1 */
PATTERN_TYPE ptn769[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 770 M1 B0 B1 */
PATTERN_TYPE ptn770[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 771 M0 M1 B0 B1 */
PATTERN_TYPE ptn771[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 772 M2 B0 B1 */
PATTERN_TYPE ptn772[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 773 M0 M2 B0 B1 */
PATTERN_TYPE ptn773[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 774 M1 M2 B0 B1 */
PATTERN_TYPE ptn774[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 775 M0 M1 M2 B0 B1 */

/* ================================================================
 * Request bit vector: 776 M3 B0 B1 */
PATTERN_TYPE ptn776[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 777 M0 M3 B0 B1 */
PATTERN_TYPE ptn777[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 778 M1 M3 B0 B1 */
PATTERN_TYPE ptn778[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 779 M0 M1 M3 B0 B1 */

/* ================================================================
 * Request bit vector: 780 M2 M3 B0 B1 */
PATTERN_TYPE ptn780[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 781 M0 M2 M3 B0 B1 */

/* ================================================================
 * Request bit vector: 782 M1 M2 M3 B0 B1 */

/* ================================================================
 * Request bit vector: 783 M0 M1 M2 M3 B0 B1 */

/* ================================================================
 * Request bit vector: 784 I0 B0 B1 */
PATTERN_TYPE ptn784[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 785 M0 I0 B0 B1 */
PATTERN_TYPE ptn785[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 786 M1 I0 B0 B1 */
PATTERN_TYPE ptn786[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 787 M0 M1 I0 B0 B1 */
PATTERN_TYPE ptn787[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 788 M2 I0 B0 B1 */
PATTERN_TYPE ptn788[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 789 M0 M2 I0 B0 B1 */
PATTERN_TYPE ptn789[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 790 M1 M2 I0 B0 B1 */
PATTERN_TYPE ptn790[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 791 M0 M1 M2 I0 B0 B1 */

/* ================================================================
 * Request bit vector: 792 M3 I0 B0 B1 */
PATTERN_TYPE ptn792[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 793 M0 M3 I0 B0 B1 */
PATTERN_TYPE ptn793[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 794 M1 M3 I0 B0 B1 */
PATTERN_TYPE ptn794[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 795 M0 M1 M3 I0 B0 B1 */

/* ================================================================
 * Request bit vector: 796 M2 M3 I0 B0 B1 */
PATTERN_TYPE ptn796[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 797 M0 M2 M3 I0 B0 B1 */

/* ================================================================
 * Request bit vector: 798 M1 M2 M3 I0 B0 B1 */

/* ================================================================
 * Request bit vector: 799 M0 M1 M2 M3 I0 B0 B1 */

/* ================================================================
 * Request bit vector: 800 I1 B0 B1 */
PATTERN_TYPE ptn800[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 801 M0 I1 B0 B1 */
PATTERN_TYPE ptn801[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 802 M1 I1 B0 B1 */
PATTERN_TYPE ptn802[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 803 M0 M1 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 804 M2 I1 B0 B1 */
PATTERN_TYPE ptn804[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 805 M0 M2 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 806 M1 M2 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 807 M0 M1 M2 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 808 M3 I1 B0 B1 */
PATTERN_TYPE ptn808[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 809 M0 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 810 M1 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 811 M0 M1 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 812 M2 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 813 M0 M2 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 814 M1 M2 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 815 M0 M1 M2 M3 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 816 I0 I1 B0 B1 */
PATTERN_TYPE ptn816[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 817 M0 I0 I1 B0 B1 */
PATTERN_TYPE ptn817[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 818 M1 I0 I1 B0 B1 */
PATTERN_TYPE ptn818[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 819 M0 M1 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 820 M2 I0 I1 B0 B1 */
PATTERN_TYPE ptn820[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 821 M0 M2 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 822 M1 M2 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 823 M0 M1 M2 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 824 M3 I0 I1 B0 B1 */
PATTERN_TYPE ptn824[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 825 M0 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 826 M1 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 827 M0 M1 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 828 M2 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 829 M0 M2 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 830 M1 M2 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 831 M0 M1 M2 M3 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 832 F0 B0 B1 */
PATTERN_TYPE ptn832[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 833 M0 F0 B0 B1 */
PATTERN_TYPE ptn833[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 834 M1 F0 B0 B1 */
PATTERN_TYPE ptn834[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 835 M0 M1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 836 M2 F0 B0 B1 */
PATTERN_TYPE ptn836[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 837 M0 M2 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 838 M1 M2 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 839 M0 M1 M2 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 840 M3 F0 B0 B1 */
PATTERN_TYPE ptn840[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 841 M0 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 842 M1 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 843 M0 M1 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 844 M2 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 845 M0 M2 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 846 M1 M2 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 847 M0 M1 M2 M3 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 848 I0 F0 B0 B1 */
PATTERN_TYPE ptn848[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 849 M0 I0 F0 B0 B1 */
PATTERN_TYPE ptn849[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 850 M1 I0 F0 B0 B1 */
PATTERN_TYPE ptn850[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 851 M0 M1 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 852 M2 I0 F0 B0 B1 */
PATTERN_TYPE ptn852[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 853 M0 M2 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 854 M1 M2 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 855 M0 M1 M2 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 856 M3 I0 F0 B0 B1 */
PATTERN_TYPE ptn856[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 857 M0 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 858 M1 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 859 M0 M1 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 860 M2 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 861 M0 M2 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 862 M1 M2 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 863 M0 M1 M2 M3 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 864 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 865 M0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 866 M1 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 867 M0 M1 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 868 M2 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 869 M0 M2 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 870 M1 M2 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 871 M0 M1 M2 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 872 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 873 M0 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 874 M1 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 875 M0 M1 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 876 M2 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 877 M0 M2 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 878 M1 M2 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 879 M0 M1 M2 M3 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 880 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 881 M0 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 882 M1 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 883 M0 M1 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 884 M2 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 885 M0 M2 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 886 M1 M2 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 887 M0 M1 M2 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 888 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 889 M0 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 890 M1 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 891 M0 M1 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 892 M2 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 893 M0 M2 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 894 M1 M2 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 895 M0 M1 M2 M3 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 896 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 897 M0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 898 M1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 899 M0 M1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 900 M2 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 901 M0 M2 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 902 M1 M2 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 903 M0 M1 M2 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 904 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 905 M0 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 906 M1 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 907 M0 M1 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 908 M2 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 909 M0 M2 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 910 M1 M2 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 911 M0 M1 M2 M3 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 912 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 913 M0 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 914 M1 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 915 M0 M1 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 916 M2 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 917 M0 M2 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 918 M1 M2 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 919 M0 M1 M2 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 920 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 921 M0 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 922 M1 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 923 M0 M1 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 924 M2 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 925 M0 M2 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 926 M1 M2 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 927 M0 M1 M2 M3 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 928 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 929 M0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 930 M1 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 931 M0 M1 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 932 M2 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 933 M0 M2 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 934 M1 M2 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 935 M0 M1 M2 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 936 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 937 M0 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 938 M1 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 939 M0 M1 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 940 M2 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 941 M0 M2 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 942 M1 M2 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 943 M0 M1 M2 M3 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 944 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 945 M0 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 946 M1 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 947 M0 M1 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 948 M2 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 949 M0 M2 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 950 M1 M2 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 951 M0 M1 M2 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 952 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 953 M0 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 954 M1 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 955 M0 M1 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 956 M2 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 957 M0 M2 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 958 M1 M2 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 959 M0 M1 M2 M3 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 960 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 961 M0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 962 M1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 963 M0 M1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 964 M2 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 965 M0 M2 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 966 M1 M2 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 967 M0 M1 M2 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 968 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 969 M0 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 970 M1 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 971 M0 M1 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 972 M2 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 973 M0 M2 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 974 M1 M2 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 975 M0 M1 M2 M3 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 976 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 977 M0 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 978 M1 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 979 M0 M1 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 980 M2 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 981 M0 M2 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 982 M1 M2 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 983 M0 M1 M2 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 984 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 985 M0 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 986 M1 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 987 M0 M1 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 988 M2 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 989 M0 M2 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 990 M1 M2 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 991 M0 M1 M2 M3 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 992 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 993 M0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 994 M1 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 995 M0 M1 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 996 M2 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 997 M0 M2 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 998 M1 M2 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 999 M0 M1 M2 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1000 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1001 M0 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1002 M1 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1003 M0 M1 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1004 M2 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1005 M0 M2 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1006 M1 M2 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1007 M0 M1 M2 M3 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1008 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1009 M0 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1010 M1 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1011 M0 M1 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1012 M2 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1013 M0 M2 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1014 M1 M2 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1015 M0 M1 M2 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1016 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1017 M0 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1018 M1 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1019 M0 M1 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1020 M2 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1021 M0 M2 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1022 M1 M2 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1023 M0 M1 M2 M3 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 1024 B2 */
PATTERN_TYPE ptn1024[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1025 M0 B2 */
PATTERN_TYPE ptn1025[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1026 M1 B2 */
PATTERN_TYPE ptn1026[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1027 M0 M1 B2 */
PATTERN_TYPE ptn1027[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1028 M2 B2 */
PATTERN_TYPE ptn1028[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1029 M0 M2 B2 */
PATTERN_TYPE ptn1029[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1030 M1 M2 B2 */
PATTERN_TYPE ptn1030[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1031 M0 M1 M2 B2 */
PATTERN_TYPE ptn1031[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1032 M3 B2 */
PATTERN_TYPE ptn1032[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1033 M0 M3 B2 */
PATTERN_TYPE ptn1033[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1034 M1 M3 B2 */
PATTERN_TYPE ptn1034[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1035 M0 M1 M3 B2 */
PATTERN_TYPE ptn1035[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1036 M2 M3 B2 */
PATTERN_TYPE ptn1036[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1037 M0 M2 M3 B2 */
PATTERN_TYPE ptn1037[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1038 M1 M2 M3 B2 */
PATTERN_TYPE ptn1038[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 5} }	/*mmb m_mi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1039 M0 M1 M2 M3 B2 */
PATTERN_TYPE ptn1039[] = {
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1040 I0 B2 */
PATTERN_TYPE ptn1040[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1041 M0 I0 B2 */
PATTERN_TYPE ptn1041[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1042 M1 I0 B2 */
PATTERN_TYPE ptn1042[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1043 M0 M1 I0 B2 */
PATTERN_TYPE ptn1043[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1044 M2 I0 B2 */
PATTERN_TYPE ptn1044[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1045 M0 M2 I0 B2 */
PATTERN_TYPE ptn1045[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1046 M1 M2 I0 B2 */
PATTERN_TYPE ptn1046[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1047 M0 M1 M2 I0 B2 */
PATTERN_TYPE ptn1047[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1048 M3 I0 B2 */
PATTERN_TYPE ptn1048[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0|M1|M2|M3 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1049 M0 M3 I0 B2 */
PATTERN_TYPE ptn1049[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1050 M1 M3 I0 B2 */
PATTERN_TYPE ptn1050[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1051 M0 M1 M3 I0 B2 */
PATTERN_TYPE ptn1051[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1052 M2 M3 I0 B2 */
PATTERN_TYPE ptn1052[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1053 M0 M2 M3 I0 B2 */
PATTERN_TYPE ptn1053[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1054 M1 M2 M3 I0 B2 */
PATTERN_TYPE ptn1054[] = {
	{ 1, 0, { 5, 12} }	/*->m_mi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 1, { 12, 1} }	/*mmb mi_i M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1055 M0 M1 M2 M3 I0 B2 */
PATTERN_TYPE ptn1055[] = {
	{ 0, 0, { 4, 12} }	/*mmi mmb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 1056 I1 B2 */
PATTERN_TYPE ptn1056[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1057 M0 I1 B2 */
PATTERN_TYPE ptn1057[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1058 M1 I1 B2 */
PATTERN_TYPE ptn1058[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1059 M0 M1 I1 B2 */
PATTERN_TYPE ptn1059[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1060 M2 I1 B2 */
PATTERN_TYPE ptn1060[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1061 M0 M2 I1 B2 */
PATTERN_TYPE ptn1061[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1062 M1 M2 I1 B2 */
PATTERN_TYPE ptn1062[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1063 M0 M1 M2 I1 B2 */
PATTERN_TYPE ptn1063[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1064 M3 I1 B2 */
PATTERN_TYPE ptn1064[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1065 M0 M3 I1 B2 */
PATTERN_TYPE ptn1065[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1066 M1 M3 I1 B2 */
PATTERN_TYPE ptn1066[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1067 M0 M1 M3 I1 B2 */
PATTERN_TYPE ptn1067[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1068 M2 M3 I1 B2 */
PATTERN_TYPE ptn1068[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1069 M0 M2 M3 I1 B2 */
PATTERN_TYPE ptn1069[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1070 M1 M2 M3 I1 B2 */
PATTERN_TYPE ptn1070[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1071 M0 M1 M2 M3 I1 B2 */
PATTERN_TYPE ptn1071[] = {
	{ 0, 0, { 12, 4} }	/*mmb mmi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1072 I0 I1 B2 */
PATTERN_TYPE ptn1072[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1073 M0 I0 I1 B2 */
PATTERN_TYPE ptn1073[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1074 M1 I0 I1 B2 */
PATTERN_TYPE ptn1074[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1075 M0 M1 I0 I1 B2 */
PATTERN_TYPE ptn1075[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1076 M2 I0 I1 B2 */
PATTERN_TYPE ptn1076[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1077 M0 M2 I0 I1 B2 */
PATTERN_TYPE ptn1077[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1078 M1 M2 I0 I1 B2 */
PATTERN_TYPE ptn1078[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1079 M0 M1 M2 I0 I1 B2 */
PATTERN_TYPE ptn1079[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1080 M3 I0 I1 B2 */
PATTERN_TYPE ptn1080[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1081 M0 M3 I0 I1 B2 */
PATTERN_TYPE ptn1081[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1082 M1 M3 I0 I1 B2 */
PATTERN_TYPE ptn1082[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1083 M0 M1 M3 I0 I1 B2 */
PATTERN_TYPE ptn1083[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1084 M2 M3 I0 I1 B2 */
PATTERN_TYPE ptn1084[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 I1 I1 */,
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1085 M0 M2 M3 I0 I1 B2 */
PATTERN_TYPE ptn1085[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1086 M1 M2 M3 I0 I1 B2 */
PATTERN_TYPE ptn1086[] = {
	{ 0, 0, { 0, 12} }	/*mii mmb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 4, 8} }	/*mmi mib M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 8, 4} }	/*mib mmi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 12, 0} }	/*mmb mii M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1087 M0 M1 M2 M3 I0 I1 B2 */

/* ================================================================
 * Request bit vector: 1088 F0 B2 */
PATTERN_TYPE ptn1088[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1089 M0 F0 B2 */
PATTERN_TYPE ptn1089[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1090 M1 F0 B2 */
PATTERN_TYPE ptn1090[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1091 M0 M1 F0 B2 */
PATTERN_TYPE ptn1091[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1092 M2 F0 B2 */
PATTERN_TYPE ptn1092[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1093 M0 M2 F0 B2 */
PATTERN_TYPE ptn1093[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1094 M1 M2 F0 B2 */
PATTERN_TYPE ptn1094[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1095 M0 M1 M2 F0 B2 */
PATTERN_TYPE ptn1095[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1096 M3 F0 B2 */
PATTERN_TYPE ptn1096[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0|M1|M2|M3 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1097 M0 M3 F0 B2 */
PATTERN_TYPE ptn1097[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1098 M1 M3 F0 B2 */
PATTERN_TYPE ptn1098[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1099 M0 M1 M3 F0 B2 */
PATTERN_TYPE ptn1099[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1100 M2 M3 F0 B2 */
PATTERN_TYPE ptn1100[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1101 M0 M2 M3 F0 B2 */
PATTERN_TYPE ptn1101[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1102 M1 M2 M3 F0 B2 */
PATTERN_TYPE ptn1102[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1103 M0 M1 M2 M3 F0 B2 */

/* ================================================================
 * Request bit vector: 1104 I0 F0 B2 */
PATTERN_TYPE ptn1104[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1105 M0 I0 F0 B2 */
PATTERN_TYPE ptn1105[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1106 M1 I0 F0 B2 */
PATTERN_TYPE ptn1106[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1107 M0 M1 I0 F0 B2 */
PATTERN_TYPE ptn1107[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1108 M2 I0 F0 B2 */
PATTERN_TYPE ptn1108[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1109 M0 M2 I0 F0 B2 */
PATTERN_TYPE ptn1109[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1110 M1 M2 I0 F0 B2 */
PATTERN_TYPE ptn1110[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1111 M0 M1 M2 I0 F0 B2 */
PATTERN_TYPE ptn1111[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 1112 M3 I0 F0 B2 */
PATTERN_TYPE ptn1112[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1113 M0 M3 I0 F0 B2 */
PATTERN_TYPE ptn1113[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1114 M1 M3 I0 F0 B2 */
PATTERN_TYPE ptn1114[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1115 M0 M1 M3 I0 F0 B2 */
PATTERN_TYPE ptn1115[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 1116 M2 M3 I0 F0 B2 */
PATTERN_TYPE ptn1116[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1117 M0 M2 M3 I0 F0 B2 */
PATTERN_TYPE ptn1117[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 1118 M1 M2 M3 I0 F0 B2 */
PATTERN_TYPE ptn1118[] = {
	{ 0, 0, { 2, 12} }	/*mlx mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */,
	{ 0, 0, { 6, 12} }	/*mfi mmb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 M0|M1|M2|M3 B2 */
};

/* ================================================================
 * Request bit vector: 1119 M0 M1 M2 M3 I0 F0 B2 */

/* ================================================================
 * Request bit vector: 1120 I1 F0 B2 */
PATTERN_TYPE ptn1120[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1121 M0 I1 F0 B2 */
PATTERN_TYPE ptn1121[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1122 M1 I1 F0 B2 */
PATTERN_TYPE ptn1122[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1123 M0 M1 I1 F0 B2 */
PATTERN_TYPE ptn1123[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1124 M2 I1 F0 B2 */
PATTERN_TYPE ptn1124[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1125 M0 M2 I1 F0 B2 */
PATTERN_TYPE ptn1125[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1126 M1 M2 I1 F0 B2 */
PATTERN_TYPE ptn1126[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1127 M0 M1 M2 I1 F0 B2 */
PATTERN_TYPE ptn1127[] = {
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1128 M3 I1 F0 B2 */
PATTERN_TYPE ptn1128[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1129 M0 M3 I1 F0 B2 */
PATTERN_TYPE ptn1129[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1130 M1 M3 I1 F0 B2 */
PATTERN_TYPE ptn1130[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1131 M0 M1 M3 I1 F0 B2 */
PATTERN_TYPE ptn1131[] = {
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1132 M2 M3 I1 F0 B2 */
PATTERN_TYPE ptn1132[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1133 M0 M2 M3 I1 F0 B2 */
PATTERN_TYPE ptn1133[] = {
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1134 M1 M2 M3 I1 F0 B2 */
PATTERN_TYPE ptn1134[] = {
	{ 0, 0, { 14, 4} }	/*mfb mmi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 M0|M1|M2|M3 I1 */
};

/* ================================================================
 * Request bit vector: 1135 M0 M1 M2 M3 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1136 I0 I1 F0 B2 */
PATTERN_TYPE ptn1136[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1137 M0 I0 I1 F0 B2 */
PATTERN_TYPE ptn1137[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1138 M1 I0 I1 F0 B2 */
PATTERN_TYPE ptn1138[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1139 M0 M1 I0 I1 F0 B2 */
PATTERN_TYPE ptn1139[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1140 M2 I0 I1 F0 B2 */
PATTERN_TYPE ptn1140[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1141 M0 M2 I0 I1 F0 B2 */
PATTERN_TYPE ptn1141[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1142 M1 M2 I0 I1 F0 B2 */
PATTERN_TYPE ptn1142[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1143 M0 M1 M2 I0 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1144 M3 I0 I1 F0 B2 */
PATTERN_TYPE ptn1144[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1145 M0 M3 I0 I1 F0 B2 */
PATTERN_TYPE ptn1145[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1146 M1 M3 I0 I1 F0 B2 */
PATTERN_TYPE ptn1146[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1147 M0 M1 M3 I0 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1148 M2 M3 I0 I1 F0 B2 */
PATTERN_TYPE ptn1148[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 I0 I1 */
};

/* ================================================================
 * Request bit vector: 1149 M0 M2 M3 I0 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1150 M1 M2 M3 I0 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1151 M0 M1 M2 M3 I0 I1 F0 B2 */

/* ================================================================
 * Request bit vector: 1152 F1 B2 */
PATTERN_TYPE ptn1152[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1153 M0 F1 B2 */
PATTERN_TYPE ptn1153[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1154 M1 F1 B2 */
PATTERN_TYPE ptn1154[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1155 M0 M1 F1 B2 */
PATTERN_TYPE ptn1155[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1156 M2 F1 B2 */
PATTERN_TYPE ptn1156[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1157 M0 M2 F1 B2 */
PATTERN_TYPE ptn1157[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1158 M1 M2 F1 B2 */
PATTERN_TYPE ptn1158[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1159 M0 M1 M2 F1 B2 */
PATTERN_TYPE ptn1159[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1160 M3 F1 B2 */
PATTERN_TYPE ptn1160[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1161 M0 M3 F1 B2 */
PATTERN_TYPE ptn1161[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1162 M1 M3 F1 B2 */
PATTERN_TYPE ptn1162[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1163 M0 M1 M3 F1 B2 */
PATTERN_TYPE ptn1163[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1164 M2 M3 F1 B2 */
PATTERN_TYPE ptn1164[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1165 M0 M2 M3 F1 B2 */
PATTERN_TYPE ptn1165[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1166 M1 M2 M3 F1 B2 */
PATTERN_TYPE ptn1166[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1167 M0 M1 M2 M3 F1 B2 */

/* ================================================================
 * Request bit vector: 1168 I0 F1 B2 */
PATTERN_TYPE ptn1168[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1169 M0 I0 F1 B2 */
PATTERN_TYPE ptn1169[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1170 M1 I0 F1 B2 */
PATTERN_TYPE ptn1170[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1171 M0 M1 I0 F1 B2 */
PATTERN_TYPE ptn1171[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1172 M2 I0 F1 B2 */
PATTERN_TYPE ptn1172[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1173 M0 M2 I0 F1 B2 */
PATTERN_TYPE ptn1173[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1174 M1 M2 I0 F1 B2 */
PATTERN_TYPE ptn1174[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1175 M0 M1 M2 I0 F1 B2 */
PATTERN_TYPE ptn1175[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1176 M3 I0 F1 B2 */
PATTERN_TYPE ptn1176[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1177 M0 M3 I0 F1 B2 */
PATTERN_TYPE ptn1177[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1178 M1 M3 I0 F1 B2 */
PATTERN_TYPE ptn1178[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1179 M0 M1 M3 I0 F1 B2 */
PATTERN_TYPE ptn1179[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1180 M2 M3 I0 F1 B2 */
PATTERN_TYPE ptn1180[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1181 M0 M2 M3 I0 F1 B2 */
PATTERN_TYPE ptn1181[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1182 M1 M2 M3 I0 F1 B2 */
PATTERN_TYPE ptn1182[] = {
	{ 0, 0, { 4, 14} }	/*mmi mfb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1183 M0 M1 M2 M3 I0 F1 B2 */

/* ================================================================
 * Request bit vector: 1184 I1 F1 B2 */
PATTERN_TYPE ptn1184[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1185 M0 I1 F1 B2 */
PATTERN_TYPE ptn1185[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1186 M1 I1 F1 B2 */
PATTERN_TYPE ptn1186[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1187 M0 M1 I1 F1 B2 */
PATTERN_TYPE ptn1187[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1188 M2 I1 F1 B2 */
PATTERN_TYPE ptn1188[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1189 M0 M2 I1 F1 B2 */
PATTERN_TYPE ptn1189[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1190 M1 M2 I1 F1 B2 */
PATTERN_TYPE ptn1190[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1191 M0 M1 M2 I1 F1 B2 */
PATTERN_TYPE ptn1191[] = {
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1192 M3 I1 F1 B2 */
PATTERN_TYPE ptn1192[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1193 M0 M3 I1 F1 B2 */
PATTERN_TYPE ptn1193[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1194 M1 M3 I1 F1 B2 */
PATTERN_TYPE ptn1194[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1195 M0 M1 M3 I1 F1 B2 */
PATTERN_TYPE ptn1195[] = {
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1196 M2 M3 I1 F1 B2 */
PATTERN_TYPE ptn1196[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1197 M0 M2 M3 I1 F1 B2 */
PATTERN_TYPE ptn1197[] = {
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1198 M1 M2 M3 I1 F1 B2 */
PATTERN_TYPE ptn1198[] = {
	{ 0, 0, { 12, 2} }	/*mmb mlx M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 12, 6} }	/*mmb mfi M0|M1|M2|M3 M0|M1|M2|M3 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1199 M0 M1 M2 M3 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1200 I0 I1 F1 B2 */
PATTERN_TYPE ptn1200[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1201 M0 I0 I1 F1 B2 */
PATTERN_TYPE ptn1201[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1202 M1 I0 I1 F1 B2 */
PATTERN_TYPE ptn1202[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1203 M0 M1 I0 I1 F1 B2 */
PATTERN_TYPE ptn1203[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1204 M2 I0 I1 F1 B2 */
PATTERN_TYPE ptn1204[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1205 M0 M2 I0 I1 F1 B2 */
PATTERN_TYPE ptn1205[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1206 M1 M2 I0 I1 F1 B2 */
PATTERN_TYPE ptn1206[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1207 M0 M1 M2 I0 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1208 M3 I0 I1 F1 B2 */
PATTERN_TYPE ptn1208[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1209 M0 M3 I0 I1 F1 B2 */
PATTERN_TYPE ptn1209[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1210 M1 M3 I0 I1 F1 B2 */
PATTERN_TYPE ptn1210[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1211 M0 M1 M3 I0 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1212 M2 M3 I0 I1 F1 B2 */
PATTERN_TYPE ptn1212[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0|M1|M2|M3 I0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1213 M0 M2 M3 I0 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1214 M1 M2 M3 I0 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1215 M0 M1 M2 M3 I0 I1 F1 B2 */

/* ================================================================
 * Request bit vector: 1216 F0 F1 B2 */
PATTERN_TYPE ptn1216[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1217 M0 F0 F1 B2 */
PATTERN_TYPE ptn1217[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1218 M1 F0 F1 B2 */
PATTERN_TYPE ptn1218[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1219 M0 M1 F0 F1 B2 */
PATTERN_TYPE ptn1219[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1220 M2 F0 F1 B2 */
PATTERN_TYPE ptn1220[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1221 M0 M2 F0 F1 B2 */
PATTERN_TYPE ptn1221[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1222 M1 M2 F0 F1 B2 */
PATTERN_TYPE ptn1222[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1223 M0 M1 M2 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1224 M3 F0 F1 B2 */
PATTERN_TYPE ptn1224[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1225 M0 M3 F0 F1 B2 */
PATTERN_TYPE ptn1225[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1226 M1 M3 F0 F1 B2 */
PATTERN_TYPE ptn1226[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1227 M0 M1 M3 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1228 M2 M3 F0 F1 B2 */
PATTERN_TYPE ptn1228[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1229 M0 M2 M3 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1230 M1 M2 M3 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1231 M0 M1 M2 M3 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1232 I0 F0 F1 B2 */
PATTERN_TYPE ptn1232[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1233 M0 I0 F0 F1 B2 */
PATTERN_TYPE ptn1233[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1234 M1 I0 F0 F1 B2 */
PATTERN_TYPE ptn1234[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1235 M0 M1 I0 F0 F1 B2 */
PATTERN_TYPE ptn1235[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1236 M2 I0 F0 F1 B2 */
PATTERN_TYPE ptn1236[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1237 M0 M2 I0 F0 F1 B2 */
PATTERN_TYPE ptn1237[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1238 M1 M2 I0 F0 F1 B2 */
PATTERN_TYPE ptn1238[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1239 M0 M1 M2 I0 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1240 M3 I0 F0 F1 B2 */
PATTERN_TYPE ptn1240[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1241 M0 M3 I0 F0 F1 B2 */
PATTERN_TYPE ptn1241[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1242 M1 M3 I0 F0 F1 B2 */
PATTERN_TYPE ptn1242[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1243 M0 M1 M3 I0 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1244 M2 M3 I0 F0 F1 B2 */
PATTERN_TYPE ptn1244[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 F1 B2 */
};

/* ================================================================
 * Request bit vector: 1245 M0 M2 M3 I0 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1246 M1 M2 M3 I0 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1247 M0 M1 M2 M3 I0 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1248 I1 F0 F1 B2 */
PATTERN_TYPE ptn1248[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1249 M0 I1 F0 F1 B2 */
PATTERN_TYPE ptn1249[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1250 M1 I1 F0 F1 B2 */
PATTERN_TYPE ptn1250[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1251 M0 M1 I1 F0 F1 B2 */
PATTERN_TYPE ptn1251[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1252 M2 I1 F0 F1 B2 */
PATTERN_TYPE ptn1252[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1253 M0 M2 I1 F0 F1 B2 */
PATTERN_TYPE ptn1253[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1254 M1 M2 I1 F0 F1 B2 */
PATTERN_TYPE ptn1254[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1255 M0 M1 M2 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1256 M3 I1 F0 F1 B2 */
PATTERN_TYPE ptn1256[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1257 M0 M3 I1 F0 F1 B2 */
PATTERN_TYPE ptn1257[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1258 M1 M3 I1 F0 F1 B2 */
PATTERN_TYPE ptn1258[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1259 M0 M1 M3 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1260 M2 M3 I1 F0 F1 B2 */
PATTERN_TYPE ptn1260[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0|M1|M2|M3 F0 B2 M0|M1|M2|M3 F1 I1 */
};

/* ================================================================
 * Request bit vector: 1261 M0 M2 M3 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1262 M1 M2 M3 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1263 M0 M1 M2 M3 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1264 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1265 M0 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1266 M1 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1267 M0 M1 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1268 M2 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1269 M0 M2 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1270 M1 M2 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1271 M0 M1 M2 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1272 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1273 M0 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1274 M1 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1275 M0 M1 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1276 M2 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1277 M0 M2 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1278 M1 M2 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1279 M0 M1 M2 M3 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 1280 B0 B2 */
PATTERN_TYPE ptn1280[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1281 M0 B0 B2 */
PATTERN_TYPE ptn1281[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1282 M1 B0 B2 */
PATTERN_TYPE ptn1282[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1283 M0 M1 B0 B2 */
PATTERN_TYPE ptn1283[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1284 M2 B0 B2 */
PATTERN_TYPE ptn1284[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1285 M0 M2 B0 B2 */
PATTERN_TYPE ptn1285[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1286 M1 M2 B0 B2 */
PATTERN_TYPE ptn1286[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1287 M0 M1 M2 B0 B2 */

/* ================================================================
 * Request bit vector: 1288 M3 B0 B2 */
PATTERN_TYPE ptn1288[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1289 M0 M3 B0 B2 */
PATTERN_TYPE ptn1289[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1290 M1 M3 B0 B2 */
PATTERN_TYPE ptn1290[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1291 M0 M1 M3 B0 B2 */

/* ================================================================
 * Request bit vector: 1292 M2 M3 B0 B2 */
PATTERN_TYPE ptn1292[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1293 M0 M2 M3 B0 B2 */

/* ================================================================
 * Request bit vector: 1294 M1 M2 M3 B0 B2 */

/* ================================================================
 * Request bit vector: 1295 M0 M1 M2 M3 B0 B2 */

/* ================================================================
 * Request bit vector: 1296 I0 B0 B2 */
PATTERN_TYPE ptn1296[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1297 M0 I0 B0 B2 */
PATTERN_TYPE ptn1297[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1298 M1 I0 B0 B2 */
PATTERN_TYPE ptn1298[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1299 M0 M1 I0 B0 B2 */
PATTERN_TYPE ptn1299[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1300 M2 I0 B0 B2 */
PATTERN_TYPE ptn1300[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1301 M0 M2 I0 B0 B2 */
PATTERN_TYPE ptn1301[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1302 M1 M2 I0 B0 B2 */
PATTERN_TYPE ptn1302[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1303 M0 M1 M2 I0 B0 B2 */

/* ================================================================
 * Request bit vector: 1304 M3 I0 B0 B2 */
PATTERN_TYPE ptn1304[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1305 M0 M3 I0 B0 B2 */
PATTERN_TYPE ptn1305[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1306 M1 M3 I0 B0 B2 */
PATTERN_TYPE ptn1306[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1307 M0 M1 M3 I0 B0 B2 */

/* ================================================================
 * Request bit vector: 1308 M2 M3 I0 B0 B2 */
PATTERN_TYPE ptn1308[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1309 M0 M2 M3 I0 B0 B2 */

/* ================================================================
 * Request bit vector: 1310 M1 M2 M3 I0 B0 B2 */

/* ================================================================
 * Request bit vector: 1311 M0 M1 M2 M3 I0 B0 B2 */

/* ================================================================
 * Request bit vector: 1312 I1 B0 B2 */
PATTERN_TYPE ptn1312[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1313 M0 I1 B0 B2 */
PATTERN_TYPE ptn1313[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1314 M1 I1 B0 B2 */
PATTERN_TYPE ptn1314[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1315 M0 M1 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1316 M2 I1 B0 B2 */
PATTERN_TYPE ptn1316[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1317 M0 M2 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1318 M1 M2 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1319 M0 M1 M2 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1320 M3 I1 B0 B2 */
PATTERN_TYPE ptn1320[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1321 M0 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1322 M1 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1323 M0 M1 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1324 M2 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1325 M0 M2 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1326 M1 M2 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1327 M0 M1 M2 M3 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1328 I0 I1 B0 B2 */
PATTERN_TYPE ptn1328[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1329 M0 I0 I1 B0 B2 */
PATTERN_TYPE ptn1329[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1330 M1 I0 I1 B0 B2 */
PATTERN_TYPE ptn1330[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1331 M0 M1 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1332 M2 I0 I1 B0 B2 */
PATTERN_TYPE ptn1332[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1333 M0 M2 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1334 M1 M2 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1335 M0 M1 M2 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1336 M3 I0 I1 B0 B2 */
PATTERN_TYPE ptn1336[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1337 M0 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1338 M1 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1339 M0 M1 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1340 M2 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1341 M0 M2 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1342 M1 M2 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1343 M0 M1 M2 M3 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 1344 F0 B0 B2 */
PATTERN_TYPE ptn1344[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1345 M0 F0 B0 B2 */
PATTERN_TYPE ptn1345[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1346 M1 F0 B0 B2 */
PATTERN_TYPE ptn1346[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1347 M0 M1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1348 M2 F0 B0 B2 */
PATTERN_TYPE ptn1348[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1349 M0 M2 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1350 M1 M2 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1351 M0 M1 M2 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1352 M3 F0 B0 B2 */
PATTERN_TYPE ptn1352[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1353 M0 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1354 M1 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1355 M0 M1 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1356 M2 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1357 M0 M2 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1358 M1 M2 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1359 M0 M1 M2 M3 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1360 I0 F0 B0 B2 */
PATTERN_TYPE ptn1360[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1361 M0 I0 F0 B0 B2 */
PATTERN_TYPE ptn1361[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1362 M1 I0 F0 B0 B2 */
PATTERN_TYPE ptn1362[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1363 M0 M1 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1364 M2 I0 F0 B0 B2 */
PATTERN_TYPE ptn1364[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1365 M0 M2 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1366 M1 M2 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1367 M0 M1 M2 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1368 M3 I0 F0 B0 B2 */
PATTERN_TYPE ptn1368[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1369 M0 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1370 M1 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1371 M0 M1 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1372 M2 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1373 M0 M2 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1374 M1 M2 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1375 M0 M1 M2 M3 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1376 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1377 M0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1378 M1 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1379 M0 M1 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1380 M2 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1381 M0 M2 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1382 M1 M2 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1383 M0 M1 M2 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1384 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1385 M0 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1386 M1 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1387 M0 M1 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1388 M2 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1389 M0 M2 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1390 M1 M2 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1391 M0 M1 M2 M3 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1392 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1393 M0 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1394 M1 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1395 M0 M1 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1396 M2 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1397 M0 M2 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1398 M1 M2 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1399 M0 M1 M2 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1400 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1401 M0 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1402 M1 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1403 M0 M1 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1404 M2 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1405 M0 M2 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1406 M1 M2 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1407 M0 M1 M2 M3 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 1408 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1409 M0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1410 M1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1411 M0 M1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1412 M2 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1413 M0 M2 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1414 M1 M2 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1415 M0 M1 M2 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1416 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1417 M0 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1418 M1 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1419 M0 M1 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1420 M2 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1421 M0 M2 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1422 M1 M2 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1423 M0 M1 M2 M3 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1424 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1425 M0 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1426 M1 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1427 M0 M1 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1428 M2 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1429 M0 M2 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1430 M1 M2 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1431 M0 M1 M2 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1432 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1433 M0 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1434 M1 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1435 M0 M1 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1436 M2 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1437 M0 M2 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1438 M1 M2 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1439 M0 M1 M2 M3 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1440 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1441 M0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1442 M1 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1443 M0 M1 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1444 M2 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1445 M0 M2 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1446 M1 M2 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1447 M0 M1 M2 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1448 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1449 M0 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1450 M1 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1451 M0 M1 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1452 M2 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1453 M0 M2 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1454 M1 M2 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1455 M0 M1 M2 M3 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1456 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1457 M0 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1458 M1 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1459 M0 M1 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1460 M2 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1461 M0 M2 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1462 M1 M2 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1463 M0 M1 M2 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1464 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1465 M0 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1466 M1 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1467 M0 M1 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1468 M2 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1469 M0 M2 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1470 M1 M2 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1471 M0 M1 M2 M3 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1472 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1473 M0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1474 M1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1475 M0 M1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1476 M2 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1477 M0 M2 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1478 M1 M2 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1479 M0 M1 M2 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1480 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1481 M0 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1482 M1 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1483 M0 M1 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1484 M2 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1485 M0 M2 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1486 M1 M2 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1487 M0 M1 M2 M3 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1488 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1489 M0 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1490 M1 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1491 M0 M1 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1492 M2 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1493 M0 M2 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1494 M1 M2 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1495 M0 M1 M2 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1496 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1497 M0 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1498 M1 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1499 M0 M1 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1500 M2 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1501 M0 M2 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1502 M1 M2 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1503 M0 M1 M2 M3 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1504 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1505 M0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1506 M1 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1507 M0 M1 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1508 M2 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1509 M0 M2 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1510 M1 M2 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1511 M0 M1 M2 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1512 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1513 M0 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1514 M1 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1515 M0 M1 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1516 M2 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1517 M0 M2 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1518 M1 M2 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1519 M0 M1 M2 M3 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1520 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1521 M0 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1522 M1 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1523 M0 M1 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1524 M2 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1525 M0 M2 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1526 M1 M2 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1527 M0 M1 M2 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1528 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1529 M0 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1530 M1 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1531 M0 M1 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1532 M2 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1533 M0 M2 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1534 M1 M2 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1535 M0 M1 M2 M3 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 1536 B1 B2 */
PATTERN_TYPE ptn1536[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1537 M0 B1 B2 */
PATTERN_TYPE ptn1537[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1538 M1 B1 B2 */
PATTERN_TYPE ptn1538[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1539 M0 M1 B1 B2 */
PATTERN_TYPE ptn1539[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1540 M2 B1 B2 */
PATTERN_TYPE ptn1540[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1541 M0 M2 B1 B2 */
PATTERN_TYPE ptn1541[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1542 M1 M2 B1 B2 */
PATTERN_TYPE ptn1542[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1543 M0 M1 M2 B1 B2 */
PATTERN_TYPE ptn1543[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1544 M3 B1 B2 */
PATTERN_TYPE ptn1544[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1545 M0 M3 B1 B2 */
PATTERN_TYPE ptn1545[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1546 M1 M3 B1 B2 */
PATTERN_TYPE ptn1546[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1547 M0 M1 M3 B1 B2 */
PATTERN_TYPE ptn1547[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1548 M2 M3 B1 B2 */
PATTERN_TYPE ptn1548[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1549 M0 M2 M3 B1 B2 */
PATTERN_TYPE ptn1549[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1550 M1 M2 M3 B1 B2 */
PATTERN_TYPE ptn1550[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1551 M0 M1 M2 M3 B1 B2 */

/* ================================================================
 * Request bit vector: 1552 I0 B1 B2 */
PATTERN_TYPE ptn1552[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1553 M0 I0 B1 B2 */
PATTERN_TYPE ptn1553[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1554 M1 I0 B1 B2 */
PATTERN_TYPE ptn1554[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1555 M0 M1 I0 B1 B2 */
PATTERN_TYPE ptn1555[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1556 M2 I0 B1 B2 */
PATTERN_TYPE ptn1556[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1557 M0 M2 I0 B1 B2 */
PATTERN_TYPE ptn1557[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1558 M1 M2 I0 B1 B2 */
PATTERN_TYPE ptn1558[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1559 M0 M1 M2 I0 B1 B2 */
PATTERN_TYPE ptn1559[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1560 M3 I0 B1 B2 */
PATTERN_TYPE ptn1560[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0|M1|M2|M3 I0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1561 M0 M3 I0 B1 B2 */
PATTERN_TYPE ptn1561[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1562 M1 M3 I0 B1 B2 */
PATTERN_TYPE ptn1562[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1563 M0 M1 M3 I0 B1 B2 */
PATTERN_TYPE ptn1563[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1564 M2 M3 I0 B1 B2 */
PATTERN_TYPE ptn1564[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1565 M0 M2 M3 I0 B1 B2 */
PATTERN_TYPE ptn1565[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1566 M1 M2 M3 I0 B1 B2 */
PATTERN_TYPE ptn1566[] = {
	{ 0, 0, { 4, 9} }	/*mmi mbb M0|M1|M2|M3 M0|M1|M2|M3 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1567 M0 M1 M2 M3 I0 B1 B2 */

/* ================================================================
 * Request bit vector: 1568 I1 B1 B2 */
PATTERN_TYPE ptn1568[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1569 M0 I1 B1 B2 */
PATTERN_TYPE ptn1569[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1570 M1 I1 B1 B2 */
PATTERN_TYPE ptn1570[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1571 M0 M1 I1 B1 B2 */
PATTERN_TYPE ptn1571[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1572 M2 I1 B1 B2 */
PATTERN_TYPE ptn1572[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1573 M0 M2 I1 B1 B2 */
PATTERN_TYPE ptn1573[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1574 M1 M2 I1 B1 B2 */
PATTERN_TYPE ptn1574[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1575 M0 M1 M2 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1576 M3 I1 B1 B2 */
PATTERN_TYPE ptn1576[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1577 M0 M3 I1 B1 B2 */
PATTERN_TYPE ptn1577[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1578 M1 M3 I1 B1 B2 */
PATTERN_TYPE ptn1578[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1579 M0 M1 M3 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1580 M2 M3 I1 B1 B2 */
PATTERN_TYPE ptn1580[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1581 M0 M2 M3 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1582 M1 M2 M3 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1583 M0 M1 M2 M3 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1584 I0 I1 B1 B2 */
PATTERN_TYPE ptn1584[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1585 M0 I0 I1 B1 B2 */
PATTERN_TYPE ptn1585[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1586 M1 I0 I1 B1 B2 */
PATTERN_TYPE ptn1586[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1587 M0 M1 I0 I1 B1 B2 */
PATTERN_TYPE ptn1587[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1588 M2 I0 I1 B1 B2 */
PATTERN_TYPE ptn1588[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1589 M0 M2 I0 I1 B1 B2 */
PATTERN_TYPE ptn1589[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1590 M1 M2 I0 I1 B1 B2 */
PATTERN_TYPE ptn1590[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1591 M0 M1 M2 I0 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1592 M3 I0 I1 B1 B2 */
PATTERN_TYPE ptn1592[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1593 M0 M3 I0 I1 B1 B2 */
PATTERN_TYPE ptn1593[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1594 M1 M3 I0 I1 B1 B2 */
PATTERN_TYPE ptn1594[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1595 M0 M1 M3 I0 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1596 M2 M3 I0 I1 B1 B2 */
PATTERN_TYPE ptn1596[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0|M1|M2|M3 I0 I1 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1597 M0 M2 M3 I0 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1598 M1 M2 M3 I0 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1599 M0 M1 M2 M3 I0 I1 B1 B2 */

/* ================================================================
 * Request bit vector: 1600 F0 B1 B2 */
PATTERN_TYPE ptn1600[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1601 M0 F0 B1 B2 */
PATTERN_TYPE ptn1601[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1602 M1 F0 B1 B2 */
PATTERN_TYPE ptn1602[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1603 M0 M1 F0 B1 B2 */
PATTERN_TYPE ptn1603[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1604 M2 F0 B1 B2 */
PATTERN_TYPE ptn1604[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1605 M0 M2 F0 B1 B2 */
PATTERN_TYPE ptn1605[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1606 M1 M2 F0 B1 B2 */
PATTERN_TYPE ptn1606[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1607 M0 M1 M2 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1608 M3 F0 B1 B2 */
PATTERN_TYPE ptn1608[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1609 M0 M3 F0 B1 B2 */
PATTERN_TYPE ptn1609[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1610 M1 M3 F0 B1 B2 */
PATTERN_TYPE ptn1610[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1611 M0 M1 M3 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1612 M2 M3 F0 B1 B2 */
PATTERN_TYPE ptn1612[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1613 M0 M2 M3 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1614 M1 M2 M3 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1615 M0 M1 M2 M3 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1616 I0 F0 B1 B2 */
PATTERN_TYPE ptn1616[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1617 M0 I0 F0 B1 B2 */
PATTERN_TYPE ptn1617[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1618 M1 I0 F0 B1 B2 */
PATTERN_TYPE ptn1618[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1619 M0 M1 I0 F0 B1 B2 */
PATTERN_TYPE ptn1619[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1620 M2 I0 F0 B1 B2 */
PATTERN_TYPE ptn1620[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1621 M0 M2 I0 F0 B1 B2 */
PATTERN_TYPE ptn1621[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1622 M1 M2 I0 F0 B1 B2 */
PATTERN_TYPE ptn1622[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1623 M0 M1 M2 I0 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1624 M3 I0 F0 B1 B2 */
PATTERN_TYPE ptn1624[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1625 M0 M3 I0 F0 B1 B2 */
PATTERN_TYPE ptn1625[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1626 M1 M3 I0 F0 B1 B2 */
PATTERN_TYPE ptn1626[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1627 M0 M1 M3 I0 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1628 M2 M3 I0 F0 B1 B2 */
PATTERN_TYPE ptn1628[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0|M1|M2|M3 F0 I0 M0|M1|M2|M3 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1629 M0 M2 M3 I0 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1630 M1 M2 M3 I0 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1631 M0 M1 M2 M3 I0 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1632 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1633 M0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1634 M1 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1635 M0 M1 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1636 M2 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1637 M0 M2 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1638 M1 M2 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1639 M0 M1 M2 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1640 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1641 M0 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1642 M1 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1643 M0 M1 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1644 M2 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1645 M0 M2 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1646 M1 M2 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1647 M0 M1 M2 M3 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1648 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1649 M0 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1650 M1 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1651 M0 M1 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1652 M2 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1653 M0 M2 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1654 M1 M2 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1655 M0 M1 M2 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1656 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1657 M0 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1658 M1 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1659 M0 M1 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1660 M2 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1661 M0 M2 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1662 M1 M2 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1663 M0 M1 M2 M3 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 1664 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1665 M0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1666 M1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1667 M0 M1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1668 M2 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1669 M0 M2 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1670 M1 M2 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1671 M0 M1 M2 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1672 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1673 M0 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1674 M1 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1675 M0 M1 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1676 M2 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1677 M0 M2 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1678 M1 M2 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1679 M0 M1 M2 M3 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1680 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1681 M0 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1682 M1 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1683 M0 M1 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1684 M2 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1685 M0 M2 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1686 M1 M2 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1687 M0 M1 M2 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1688 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1689 M0 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1690 M1 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1691 M0 M1 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1692 M2 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1693 M0 M2 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1694 M1 M2 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1695 M0 M1 M2 M3 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1696 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1697 M0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1698 M1 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1699 M0 M1 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1700 M2 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1701 M0 M2 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1702 M1 M2 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1703 M0 M1 M2 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1704 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1705 M0 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1706 M1 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1707 M0 M1 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1708 M2 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1709 M0 M2 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1710 M1 M2 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1711 M0 M1 M2 M3 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1712 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1713 M0 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1714 M1 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1715 M0 M1 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1716 M2 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1717 M0 M2 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1718 M1 M2 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1719 M0 M1 M2 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1720 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1721 M0 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1722 M1 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1723 M0 M1 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1724 M2 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1725 M0 M2 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1726 M1 M2 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1727 M0 M1 M2 M3 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1728 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1729 M0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1730 M1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1731 M0 M1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1732 M2 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1733 M0 M2 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1734 M1 M2 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1735 M0 M1 M2 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1736 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1737 M0 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1738 M1 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1739 M0 M1 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1740 M2 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1741 M0 M2 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1742 M1 M2 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1743 M0 M1 M2 M3 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1744 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1745 M0 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1746 M1 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1747 M0 M1 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1748 M2 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1749 M0 M2 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1750 M1 M2 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1751 M0 M1 M2 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1752 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1753 M0 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1754 M1 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1755 M0 M1 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1756 M2 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1757 M0 M2 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1758 M1 M2 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1759 M0 M1 M2 M3 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1760 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1761 M0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1762 M1 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1763 M0 M1 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1764 M2 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1765 M0 M2 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1766 M1 M2 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1767 M0 M1 M2 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1768 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1769 M0 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1770 M1 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1771 M0 M1 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1772 M2 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1773 M0 M2 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1774 M1 M2 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1775 M0 M1 M2 M3 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1776 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1777 M0 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1778 M1 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1779 M0 M1 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1780 M2 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1781 M0 M2 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1782 M1 M2 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1783 M0 M1 M2 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1784 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1785 M0 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1786 M1 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1787 M0 M1 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1788 M2 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1789 M0 M2 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1790 M1 M2 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1791 M0 M1 M2 M3 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 1792 B0 B1 B2 */
PATTERN_TYPE ptn1792[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1793 M0 B0 B1 B2 */
PATTERN_TYPE ptn1793[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1794 M1 B0 B1 B2 */
PATTERN_TYPE ptn1794[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1795 M0 M1 B0 B1 B2 */
PATTERN_TYPE ptn1795[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1796 M2 B0 B1 B2 */
PATTERN_TYPE ptn1796[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1797 M0 M2 B0 B1 B2 */
PATTERN_TYPE ptn1797[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1798 M1 M2 B0 B1 B2 */
PATTERN_TYPE ptn1798[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1799 M0 M1 M2 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1800 M3 B0 B1 B2 */
PATTERN_TYPE ptn1800[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1801 M0 M3 B0 B1 B2 */
PATTERN_TYPE ptn1801[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1802 M1 M3 B0 B1 B2 */
PATTERN_TYPE ptn1802[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1803 M0 M1 M3 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1804 M2 M3 B0 B1 B2 */
PATTERN_TYPE ptn1804[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1805 M0 M2 M3 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1806 M1 M2 M3 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1807 M0 M1 M2 M3 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1808 I0 B0 B1 B2 */
PATTERN_TYPE ptn1808[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0|M1|M2|M3 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1809 M0 I0 B0 B1 B2 */
PATTERN_TYPE ptn1809[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1810 M1 I0 B0 B1 B2 */
PATTERN_TYPE ptn1810[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1811 M0 M1 I0 B0 B1 B2 */
PATTERN_TYPE ptn1811[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1812 M2 I0 B0 B1 B2 */
PATTERN_TYPE ptn1812[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1813 M0 M2 I0 B0 B1 B2 */
PATTERN_TYPE ptn1813[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1814 M1 M2 I0 B0 B1 B2 */
PATTERN_TYPE ptn1814[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1815 M0 M1 M2 I0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1816 M3 I0 B0 B1 B2 */
PATTERN_TYPE ptn1816[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1817 M0 M3 I0 B0 B1 B2 */
PATTERN_TYPE ptn1817[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1818 M1 M3 I0 B0 B1 B2 */
PATTERN_TYPE ptn1818[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1819 M0 M1 M3 I0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1820 M2 M3 I0 B0 B1 B2 */
PATTERN_TYPE ptn1820[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0|M1|M2|M3 M0|M1|M2|M3 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1821 M0 M2 M3 I0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1822 M1 M2 M3 I0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1823 M0 M1 M2 M3 I0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1824 I1 B0 B1 B2 */
PATTERN_TYPE ptn1824[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1825 M0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1825[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1826 M1 I1 B0 B1 B2 */
PATTERN_TYPE ptn1826[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1827 M0 M1 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1828 M2 I1 B0 B1 B2 */
PATTERN_TYPE ptn1828[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1829 M0 M2 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1830 M1 M2 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1831 M0 M1 M2 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1832 M3 I1 B0 B1 B2 */
PATTERN_TYPE ptn1832[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1833 M0 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1834 M1 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1835 M0 M1 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1836 M2 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1837 M0 M2 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1838 M1 M2 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1839 M0 M1 M2 M3 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1840 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1840[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1841 M0 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1841[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1842 M1 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1842[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1843 M0 M1 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1844 M2 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1844[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1845 M0 M2 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1846 M1 M2 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1847 M0 M1 M2 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1848 M3 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn1848[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0|M1|M2|M3 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1849 M0 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1850 M1 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1851 M0 M1 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1852 M2 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1853 M0 M2 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1854 M1 M2 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1855 M0 M1 M2 M3 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1856 F0 B0 B1 B2 */
PATTERN_TYPE ptn1856[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1857 M0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1857[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1858 M1 F0 B0 B1 B2 */
PATTERN_TYPE ptn1858[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1859 M0 M1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1860 M2 F0 B0 B1 B2 */
PATTERN_TYPE ptn1860[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1861 M0 M2 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1862 M1 M2 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1863 M0 M1 M2 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1864 M3 F0 B0 B1 B2 */
PATTERN_TYPE ptn1864[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1865 M0 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1866 M1 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1867 M0 M1 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1868 M2 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1869 M0 M2 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1870 M1 M2 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1871 M0 M1 M2 M3 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1872 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1872[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1873 M0 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1873[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1874 M1 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1874[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1875 M0 M1 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1876 M2 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1876[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1877 M0 M2 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1878 M1 M2 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1879 M0 M1 M2 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1880 M3 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn1880[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0|M1|M2|M3 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 1881 M0 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1882 M1 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1883 M0 M1 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1884 M2 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1885 M0 M2 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1886 M1 M2 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1887 M0 M1 M2 M3 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1888 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1889 M0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1890 M1 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1891 M0 M1 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1892 M2 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1893 M0 M2 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1894 M1 M2 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1895 M0 M1 M2 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1896 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1897 M0 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1898 M1 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1899 M0 M1 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1900 M2 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1901 M0 M2 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1902 M1 M2 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1903 M0 M1 M2 M3 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1904 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1905 M0 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1906 M1 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1907 M0 M1 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1908 M2 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1909 M0 M2 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1910 M1 M2 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1911 M0 M1 M2 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1912 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1913 M0 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1914 M1 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1915 M0 M1 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1916 M2 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1917 M0 M2 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1918 M1 M2 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1919 M0 M1 M2 M3 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1920 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1921 M0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1922 M1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1923 M0 M1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1924 M2 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1925 M0 M2 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1926 M1 M2 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1927 M0 M1 M2 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1928 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1929 M0 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1930 M1 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1931 M0 M1 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1932 M2 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1933 M0 M2 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1934 M1 M2 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1935 M0 M1 M2 M3 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1936 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1937 M0 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1938 M1 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1939 M0 M1 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1940 M2 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1941 M0 M2 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1942 M1 M2 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1943 M0 M1 M2 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1944 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1945 M0 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1946 M1 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1947 M0 M1 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1948 M2 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1949 M0 M2 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1950 M1 M2 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1951 M0 M1 M2 M3 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1952 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1953 M0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1954 M1 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1955 M0 M1 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1956 M2 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1957 M0 M2 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1958 M1 M2 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1959 M0 M1 M2 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1960 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1961 M0 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1962 M1 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1963 M0 M1 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1964 M2 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1965 M0 M2 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1966 M1 M2 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1967 M0 M1 M2 M3 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1968 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1969 M0 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1970 M1 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1971 M0 M1 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1972 M2 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1973 M0 M2 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1974 M1 M2 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1975 M0 M1 M2 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1976 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1977 M0 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1978 M1 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1979 M0 M1 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1980 M2 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1981 M0 M2 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1982 M1 M2 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1983 M0 M1 M2 M3 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1984 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1985 M0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1986 M1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1987 M0 M1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1988 M2 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1989 M0 M2 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1990 M1 M2 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1991 M0 M1 M2 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1992 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1993 M0 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1994 M1 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1995 M0 M1 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1996 M2 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1997 M0 M2 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1998 M1 M2 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 1999 M0 M1 M2 M3 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2000 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2001 M0 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2002 M1 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2003 M0 M1 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2004 M2 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2005 M0 M2 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2006 M1 M2 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2007 M0 M1 M2 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2008 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2009 M0 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2010 M1 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2011 M0 M1 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2012 M2 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2013 M0 M2 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2014 M1 M2 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2015 M0 M1 M2 M3 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2016 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2017 M0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2018 M1 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2019 M0 M1 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2020 M2 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2021 M0 M2 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2022 M1 M2 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2023 M0 M1 M2 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2024 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2025 M0 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2026 M1 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2027 M0 M1 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2028 M2 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2029 M0 M2 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2030 M1 M2 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2031 M0 M1 M2 M3 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2032 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2033 M0 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2034 M1 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2035 M0 M1 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2036 M2 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2037 M0 M2 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2038 M1 M2 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2039 M0 M1 M2 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2040 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2041 M0 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2042 M1 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2043 M0 M1 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2044 M2 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2045 M0 M2 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2046 M1 M2 M3 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 2047 M0 M1 M2 M3 I0 I1 F0 F1 B0 B1 B2 */

INT PTN_table_map[] = {
	invalid_PTN_TABLE_entry/* index 0 */,
	0/* index 1 */,
	1/* index 2 */,
	2/* index 3 */,
	3/* index 4 */,
	4/* index 5 */,
	5/* index 6 */,
	6/* index 7 */,
	7/* index 8 */,
	8/* index 9 */,
	9/* index 10 */,
	10/* index 11 */,
	11/* index 12 */,
	12/* index 13 */,
	13/* index 14 */,
	14/* index 15 */,
	15/* index 16 */,
	16/* index 17 */,
	17/* index 18 */,
	18/* index 19 */,
	19/* index 20 */,
	20/* index 21 */,
	21/* index 22 */,
	22/* index 23 */,
	23/* index 24 */,
	24/* index 25 */,
	25/* index 26 */,
	26/* index 27 */,
	27/* index 28 */,
	28/* index 29 */,
	29/* index 30 */,
	30/* index 31 */,
	31/* index 32 */,
	32/* index 33 */,
	33/* index 34 */,
	34/* index 35 */,
	35/* index 36 */,
	36/* index 37 */,
	37/* index 38 */,
	38/* index 39 */,
	39/* index 40 */,
	40/* index 41 */,
	41/* index 42 */,
	42/* index 43 */,
	43/* index 44 */,
	44/* index 45 */,
	45/* index 46 */,
	46/* index 47 */,
	47/* index 48 */,
	48/* index 49 */,
	49/* index 50 */,
	50/* index 51 */,
	51/* index 52 */,
	52/* index 53 */,
	53/* index 54 */,
	54/* index 55 */,
	55/* index 56 */,
	56/* index 57 */,
	57/* index 58 */,
	58/* index 59 */,
	59/* index 60 */,
	60/* index 61 */,
	61/* index 62 */,
	62/* index 63 */,
	63/* index 64 */,
	64/* index 65 */,
	65/* index 66 */,
	66/* index 67 */,
	67/* index 68 */,
	68/* index 69 */,
	69/* index 70 */,
	70/* index 71 */,
	71/* index 72 */,
	72/* index 73 */,
	73/* index 74 */,
	74/* index 75 */,
	75/* index 76 */,
	76/* index 77 */,
	77/* index 78 */,
	invalid_PTN_TABLE_entry/* index 79 */,
	78/* index 80 */,
	79/* index 81 */,
	80/* index 82 */,
	81/* index 83 */,
	82/* index 84 */,
	83/* index 85 */,
	84/* index 86 */,
	85/* index 87 */,
	86/* index 88 */,
	87/* index 89 */,
	88/* index 90 */,
	89/* index 91 */,
	90/* index 92 */,
	91/* index 93 */,
	92/* index 94 */,
	invalid_PTN_TABLE_entry/* index 95 */,
	93/* index 96 */,
	94/* index 97 */,
	95/* index 98 */,
	96/* index 99 */,
	97/* index 100 */,
	98/* index 101 */,
	99/* index 102 */,
	100/* index 103 */,
	101/* index 104 */,
	102/* index 105 */,
	103/* index 106 */,
	104/* index 107 */,
	105/* index 108 */,
	106/* index 109 */,
	107/* index 110 */,
	invalid_PTN_TABLE_entry/* index 111 */,
	108/* index 112 */,
	109/* index 113 */,
	110/* index 114 */,
	111/* index 115 */,
	112/* index 116 */,
	113/* index 117 */,
	114/* index 118 */,
	115/* index 119 */,
	116/* index 120 */,
	117/* index 121 */,
	118/* index 122 */,
	119/* index 123 */,
	120/* index 124 */,
	121/* index 125 */,
	122/* index 126 */,
	invalid_PTN_TABLE_entry/* index 127 */,
	123/* index 128 */,
	124/* index 129 */,
	125/* index 130 */,
	126/* index 131 */,
	127/* index 132 */,
	128/* index 133 */,
	129/* index 134 */,
	130/* index 135 */,
	131/* index 136 */,
	132/* index 137 */,
	133/* index 138 */,
	134/* index 139 */,
	135/* index 140 */,
	136/* index 141 */,
	137/* index 142 */,
	invalid_PTN_TABLE_entry/* index 143 */,
	138/* index 144 */,
	139/* index 145 */,
	140/* index 146 */,
	141/* index 147 */,
	142/* index 148 */,
	143/* index 149 */,
	144/* index 150 */,
	145/* index 151 */,
	146/* index 152 */,
	147/* index 153 */,
	148/* index 154 */,
	149/* index 155 */,
	150/* index 156 */,
	151/* index 157 */,
	152/* index 158 */,
	invalid_PTN_TABLE_entry/* index 159 */,
	153/* index 160 */,
	154/* index 161 */,
	155/* index 162 */,
	156/* index 163 */,
	157/* index 164 */,
	158/* index 165 */,
	159/* index 166 */,
	160/* index 167 */,
	161/* index 168 */,
	162/* index 169 */,
	163/* index 170 */,
	164/* index 171 */,
	165/* index 172 */,
	166/* index 173 */,
	167/* index 174 */,
	invalid_PTN_TABLE_entry/* index 175 */,
	168/* index 176 */,
	169/* index 177 */,
	170/* index 178 */,
	171/* index 179 */,
	172/* index 180 */,
	173/* index 181 */,
	174/* index 182 */,
	175/* index 183 */,
	176/* index 184 */,
	177/* index 185 */,
	178/* index 186 */,
	179/* index 187 */,
	180/* index 188 */,
	181/* index 189 */,
	182/* index 190 */,
	invalid_PTN_TABLE_entry/* index 191 */,
	183/* index 192 */,
	184/* index 193 */,
	185/* index 194 */,
	186/* index 195 */,
	187/* index 196 */,
	188/* index 197 */,
	189/* index 198 */,
	invalid_PTN_TABLE_entry/* index 199 */,
	190/* index 200 */,
	191/* index 201 */,
	192/* index 202 */,
	invalid_PTN_TABLE_entry/* index 203 */,
	193/* index 204 */,
	invalid_PTN_TABLE_entry/* index 205 */,
	invalid_PTN_TABLE_entry/* index 206 */,
	invalid_PTN_TABLE_entry/* index 207 */,
	194/* index 208 */,
	195/* index 209 */,
	196/* index 210 */,
	197/* index 211 */,
	198/* index 212 */,
	199/* index 213 */,
	200/* index 214 */,
	invalid_PTN_TABLE_entry/* index 215 */,
	201/* index 216 */,
	202/* index 217 */,
	203/* index 218 */,
	invalid_PTN_TABLE_entry/* index 219 */,
	204/* index 220 */,
	invalid_PTN_TABLE_entry/* index 221 */,
	invalid_PTN_TABLE_entry/* index 222 */,
	invalid_PTN_TABLE_entry/* index 223 */,
	205/* index 224 */,
	206/* index 225 */,
	207/* index 226 */,
	208/* index 227 */,
	209/* index 228 */,
	210/* index 229 */,
	211/* index 230 */,
	invalid_PTN_TABLE_entry/* index 231 */,
	212/* index 232 */,
	213/* index 233 */,
	214/* index 234 */,
	invalid_PTN_TABLE_entry/* index 235 */,
	215/* index 236 */,
	invalid_PTN_TABLE_entry/* index 237 */,
	invalid_PTN_TABLE_entry/* index 238 */,
	invalid_PTN_TABLE_entry/* index 239 */,
	216/* index 240 */,
	217/* index 241 */,
	218/* index 242 */,
	219/* index 243 */,
	220/* index 244 */,
	221/* index 245 */,
	222/* index 246 */,
	invalid_PTN_TABLE_entry/* index 247 */,
	223/* index 248 */,
	224/* index 249 */,
	225/* index 250 */,
	invalid_PTN_TABLE_entry/* index 251 */,
	226/* index 252 */,
	invalid_PTN_TABLE_entry/* index 253 */,
	invalid_PTN_TABLE_entry/* index 254 */,
	invalid_PTN_TABLE_entry/* index 255 */,
	227/* index 256 */,
	228/* index 257 */,
	229/* index 258 */,
	230/* index 259 */,
	231/* index 260 */,
	232/* index 261 */,
	233/* index 262 */,
	invalid_PTN_TABLE_entry/* index 263 */,
	234/* index 264 */,
	235/* index 265 */,
	236/* index 266 */,
	invalid_PTN_TABLE_entry/* index 267 */,
	237/* index 268 */,
	invalid_PTN_TABLE_entry/* index 269 */,
	invalid_PTN_TABLE_entry/* index 270 */,
	invalid_PTN_TABLE_entry/* index 271 */,
	238/* index 272 */,
	239/* index 273 */,
	240/* index 274 */,
	241/* index 275 */,
	242/* index 276 */,
	243/* index 277 */,
	244/* index 278 */,
	invalid_PTN_TABLE_entry/* index 279 */,
	245/* index 280 */,
	246/* index 281 */,
	247/* index 282 */,
	invalid_PTN_TABLE_entry/* index 283 */,
	248/* index 284 */,
	invalid_PTN_TABLE_entry/* index 285 */,
	invalid_PTN_TABLE_entry/* index 286 */,
	invalid_PTN_TABLE_entry/* index 287 */,
	249/* index 288 */,
	250/* index 289 */,
	251/* index 290 */,
	invalid_PTN_TABLE_entry/* index 291 */,
	252/* index 292 */,
	invalid_PTN_TABLE_entry/* index 293 */,
	invalid_PTN_TABLE_entry/* index 294 */,
	invalid_PTN_TABLE_entry/* index 295 */,
	253/* index 296 */,
	invalid_PTN_TABLE_entry/* index 297 */,
	invalid_PTN_TABLE_entry/* index 298 */,
	invalid_PTN_TABLE_entry/* index 299 */,
	invalid_PTN_TABLE_entry/* index 300 */,
	invalid_PTN_TABLE_entry/* index 301 */,
	invalid_PTN_TABLE_entry/* index 302 */,
	invalid_PTN_TABLE_entry/* index 303 */,
	254/* index 304 */,
	255/* index 305 */,
	256/* index 306 */,
	invalid_PTN_TABLE_entry/* index 307 */,
	257/* index 308 */,
	invalid_PTN_TABLE_entry/* index 309 */,
	invalid_PTN_TABLE_entry/* index 310 */,
	invalid_PTN_TABLE_entry/* index 311 */,
	258/* index 312 */,
	invalid_PTN_TABLE_entry/* index 313 */,
	invalid_PTN_TABLE_entry/* index 314 */,
	invalid_PTN_TABLE_entry/* index 315 */,
	invalid_PTN_TABLE_entry/* index 316 */,
	invalid_PTN_TABLE_entry/* index 317 */,
	invalid_PTN_TABLE_entry/* index 318 */,
	invalid_PTN_TABLE_entry/* index 319 */,
	259/* index 320 */,
	260/* index 321 */,
	261/* index 322 */,
	invalid_PTN_TABLE_entry/* index 323 */,
	262/* index 324 */,
	invalid_PTN_TABLE_entry/* index 325 */,
	invalid_PTN_TABLE_entry/* index 326 */,
	invalid_PTN_TABLE_entry/* index 327 */,
	263/* index 328 */,
	invalid_PTN_TABLE_entry/* index 329 */,
	invalid_PTN_TABLE_entry/* index 330 */,
	invalid_PTN_TABLE_entry/* index 331 */,
	invalid_PTN_TABLE_entry/* index 332 */,
	invalid_PTN_TABLE_entry/* index 333 */,
	invalid_PTN_TABLE_entry/* index 334 */,
	invalid_PTN_TABLE_entry/* index 335 */,
	264/* index 336 */,
	265/* index 337 */,
	266/* index 338 */,
	invalid_PTN_TABLE_entry/* index 339 */,
	267/* index 340 */,
	invalid_PTN_TABLE_entry/* index 341 */,
	invalid_PTN_TABLE_entry/* index 342 */,
	invalid_PTN_TABLE_entry/* index 343 */,
	268/* index 344 */,
	invalid_PTN_TABLE_entry/* index 345 */,
	invalid_PTN_TABLE_entry/* index 346 */,
	invalid_PTN_TABLE_entry/* index 347 */,
	invalid_PTN_TABLE_entry/* index 348 */,
	invalid_PTN_TABLE_entry/* index 349 */,
	invalid_PTN_TABLE_entry/* index 350 */,
	invalid_PTN_TABLE_entry/* index 351 */,
	invalid_PTN_TABLE_entry/* index 352 */,
	invalid_PTN_TABLE_entry/* index 353 */,
	invalid_PTN_TABLE_entry/* index 354 */,
	invalid_PTN_TABLE_entry/* index 355 */,
	invalid_PTN_TABLE_entry/* index 356 */,
	invalid_PTN_TABLE_entry/* index 357 */,
	invalid_PTN_TABLE_entry/* index 358 */,
	invalid_PTN_TABLE_entry/* index 359 */,
	invalid_PTN_TABLE_entry/* index 360 */,
	invalid_PTN_TABLE_entry/* index 361 */,
	invalid_PTN_TABLE_entry/* index 362 */,
	invalid_PTN_TABLE_entry/* index 363 */,
	invalid_PTN_TABLE_entry/* index 364 */,
	invalid_PTN_TABLE_entry/* index 365 */,
	invalid_PTN_TABLE_entry/* index 366 */,
	invalid_PTN_TABLE_entry/* index 367 */,
	invalid_PTN_TABLE_entry/* index 368 */,
	invalid_PTN_TABLE_entry/* index 369 */,
	invalid_PTN_TABLE_entry/* index 370 */,
	invalid_PTN_TABLE_entry/* index 371 */,
	invalid_PTN_TABLE_entry/* index 372 */,
	invalid_PTN_TABLE_entry/* index 373 */,
	invalid_PTN_TABLE_entry/* index 374 */,
	invalid_PTN_TABLE_entry/* index 375 */,
	invalid_PTN_TABLE_entry/* index 376 */,
	invalid_PTN_TABLE_entry/* index 377 */,
	invalid_PTN_TABLE_entry/* index 378 */,
	invalid_PTN_TABLE_entry/* index 379 */,
	invalid_PTN_TABLE_entry/* index 380 */,
	invalid_PTN_TABLE_entry/* index 381 */,
	invalid_PTN_TABLE_entry/* index 382 */,
	invalid_PTN_TABLE_entry/* index 383 */,
	invalid_PTN_TABLE_entry/* index 384 */,
	invalid_PTN_TABLE_entry/* index 385 */,
	invalid_PTN_TABLE_entry/* index 386 */,
	invalid_PTN_TABLE_entry/* index 387 */,
	invalid_PTN_TABLE_entry/* index 388 */,
	invalid_PTN_TABLE_entry/* index 389 */,
	invalid_PTN_TABLE_entry/* index 390 */,
	invalid_PTN_TABLE_entry/* index 391 */,
	invalid_PTN_TABLE_entry/* index 392 */,
	invalid_PTN_TABLE_entry/* index 393 */,
	invalid_PTN_TABLE_entry/* index 394 */,
	invalid_PTN_TABLE_entry/* index 395 */,
	invalid_PTN_TABLE_entry/* index 396 */,
	invalid_PTN_TABLE_entry/* index 397 */,
	invalid_PTN_TABLE_entry/* index 398 */,
	invalid_PTN_TABLE_entry/* index 399 */,
	invalid_PTN_TABLE_entry/* index 400 */,
	invalid_PTN_TABLE_entry/* index 401 */,
	invalid_PTN_TABLE_entry/* index 402 */,
	invalid_PTN_TABLE_entry/* index 403 */,
	invalid_PTN_TABLE_entry/* index 404 */,
	invalid_PTN_TABLE_entry/* index 405 */,
	invalid_PTN_TABLE_entry/* index 406 */,
	invalid_PTN_TABLE_entry/* index 407 */,
	invalid_PTN_TABLE_entry/* index 408 */,
	invalid_PTN_TABLE_entry/* index 409 */,
	invalid_PTN_TABLE_entry/* index 410 */,
	invalid_PTN_TABLE_entry/* index 411 */,
	invalid_PTN_TABLE_entry/* index 412 */,
	invalid_PTN_TABLE_entry/* index 413 */,
	invalid_PTN_TABLE_entry/* index 414 */,
	invalid_PTN_TABLE_entry/* index 415 */,
	invalid_PTN_TABLE_entry/* index 416 */,
	invalid_PTN_TABLE_entry/* index 417 */,
	invalid_PTN_TABLE_entry/* index 418 */,
	invalid_PTN_TABLE_entry/* index 419 */,
	invalid_PTN_TABLE_entry/* index 420 */,
	invalid_PTN_TABLE_entry/* index 421 */,
	invalid_PTN_TABLE_entry/* index 422 */,
	invalid_PTN_TABLE_entry/* index 423 */,
	invalid_PTN_TABLE_entry/* index 424 */,
	invalid_PTN_TABLE_entry/* index 425 */,
	invalid_PTN_TABLE_entry/* index 426 */,
	invalid_PTN_TABLE_entry/* index 427 */,
	invalid_PTN_TABLE_entry/* index 428 */,
	invalid_PTN_TABLE_entry/* index 429 */,
	invalid_PTN_TABLE_entry/* index 430 */,
	invalid_PTN_TABLE_entry/* index 431 */,
	invalid_PTN_TABLE_entry/* index 432 */,
	invalid_PTN_TABLE_entry/* index 433 */,
	invalid_PTN_TABLE_entry/* index 434 */,
	invalid_PTN_TABLE_entry/* index 435 */,
	invalid_PTN_TABLE_entry/* index 436 */,
	invalid_PTN_TABLE_entry/* index 437 */,
	invalid_PTN_TABLE_entry/* index 438 */,
	invalid_PTN_TABLE_entry/* index 439 */,
	invalid_PTN_TABLE_entry/* index 440 */,
	invalid_PTN_TABLE_entry/* index 441 */,
	invalid_PTN_TABLE_entry/* index 442 */,
	invalid_PTN_TABLE_entry/* index 443 */,
	invalid_PTN_TABLE_entry/* index 444 */,
	invalid_PTN_TABLE_entry/* index 445 */,
	invalid_PTN_TABLE_entry/* index 446 */,
	invalid_PTN_TABLE_entry/* index 447 */,
	invalid_PTN_TABLE_entry/* index 448 */,
	invalid_PTN_TABLE_entry/* index 449 */,
	invalid_PTN_TABLE_entry/* index 450 */,
	invalid_PTN_TABLE_entry/* index 451 */,
	invalid_PTN_TABLE_entry/* index 452 */,
	invalid_PTN_TABLE_entry/* index 453 */,
	invalid_PTN_TABLE_entry/* index 454 */,
	invalid_PTN_TABLE_entry/* index 455 */,
	invalid_PTN_TABLE_entry/* index 456 */,
	invalid_PTN_TABLE_entry/* index 457 */,
	invalid_PTN_TABLE_entry/* index 458 */,
	invalid_PTN_TABLE_entry/* index 459 */,
	invalid_PTN_TABLE_entry/* index 460 */,
	invalid_PTN_TABLE_entry/* index 461 */,
	invalid_PTN_TABLE_entry/* index 462 */,
	invalid_PTN_TABLE_entry/* index 463 */,
	invalid_PTN_TABLE_entry/* index 464 */,
	invalid_PTN_TABLE_entry/* index 465 */,
	invalid_PTN_TABLE_entry/* index 466 */,
	invalid_PTN_TABLE_entry/* index 467 */,
	invalid_PTN_TABLE_entry/* index 468 */,
	invalid_PTN_TABLE_entry/* index 469 */,
	invalid_PTN_TABLE_entry/* index 470 */,
	invalid_PTN_TABLE_entry/* index 471 */,
	invalid_PTN_TABLE_entry/* index 472 */,
	invalid_PTN_TABLE_entry/* index 473 */,
	invalid_PTN_TABLE_entry/* index 474 */,
	invalid_PTN_TABLE_entry/* index 475 */,
	invalid_PTN_TABLE_entry/* index 476 */,
	invalid_PTN_TABLE_entry/* index 477 */,
	invalid_PTN_TABLE_entry/* index 478 */,
	invalid_PTN_TABLE_entry/* index 479 */,
	invalid_PTN_TABLE_entry/* index 480 */,
	invalid_PTN_TABLE_entry/* index 481 */,
	invalid_PTN_TABLE_entry/* index 482 */,
	invalid_PTN_TABLE_entry/* index 483 */,
	invalid_PTN_TABLE_entry/* index 484 */,
	invalid_PTN_TABLE_entry/* index 485 */,
	invalid_PTN_TABLE_entry/* index 486 */,
	invalid_PTN_TABLE_entry/* index 487 */,
	invalid_PTN_TABLE_entry/* index 488 */,
	invalid_PTN_TABLE_entry/* index 489 */,
	invalid_PTN_TABLE_entry/* index 490 */,
	invalid_PTN_TABLE_entry/* index 491 */,
	invalid_PTN_TABLE_entry/* index 492 */,
	invalid_PTN_TABLE_entry/* index 493 */,
	invalid_PTN_TABLE_entry/* index 494 */,
	invalid_PTN_TABLE_entry/* index 495 */,
	invalid_PTN_TABLE_entry/* index 496 */,
	invalid_PTN_TABLE_entry/* index 497 */,
	invalid_PTN_TABLE_entry/* index 498 */,
	invalid_PTN_TABLE_entry/* index 499 */,
	invalid_PTN_TABLE_entry/* index 500 */,
	invalid_PTN_TABLE_entry/* index 501 */,
	invalid_PTN_TABLE_entry/* index 502 */,
	invalid_PTN_TABLE_entry/* index 503 */,
	invalid_PTN_TABLE_entry/* index 504 */,
	invalid_PTN_TABLE_entry/* index 505 */,
	invalid_PTN_TABLE_entry/* index 506 */,
	invalid_PTN_TABLE_entry/* index 507 */,
	invalid_PTN_TABLE_entry/* index 508 */,
	invalid_PTN_TABLE_entry/* index 509 */,
	invalid_PTN_TABLE_entry/* index 510 */,
	invalid_PTN_TABLE_entry/* index 511 */,
	269/* index 512 */,
	270/* index 513 */,
	271/* index 514 */,
	272/* index 515 */,
	273/* index 516 */,
	274/* index 517 */,
	275/* index 518 */,
	276/* index 519 */,
	277/* index 520 */,
	278/* index 521 */,
	279/* index 522 */,
	280/* index 523 */,
	281/* index 524 */,
	282/* index 525 */,
	283/* index 526 */,
	invalid_PTN_TABLE_entry/* index 527 */,
	284/* index 528 */,
	285/* index 529 */,
	286/* index 530 */,
	287/* index 531 */,
	288/* index 532 */,
	289/* index 533 */,
	290/* index 534 */,
	291/* index 535 */,
	292/* index 536 */,
	293/* index 537 */,
	294/* index 538 */,
	295/* index 539 */,
	296/* index 540 */,
	297/* index 541 */,
	298/* index 542 */,
	invalid_PTN_TABLE_entry/* index 543 */,
	299/* index 544 */,
	300/* index 545 */,
	301/* index 546 */,
	302/* index 547 */,
	303/* index 548 */,
	304/* index 549 */,
	305/* index 550 */,
	invalid_PTN_TABLE_entry/* index 551 */,
	306/* index 552 */,
	307/* index 553 */,
	308/* index 554 */,
	invalid_PTN_TABLE_entry/* index 555 */,
	309/* index 556 */,
	invalid_PTN_TABLE_entry/* index 557 */,
	invalid_PTN_TABLE_entry/* index 558 */,
	invalid_PTN_TABLE_entry/* index 559 */,
	310/* index 560 */,
	311/* index 561 */,
	312/* index 562 */,
	313/* index 563 */,
	314/* index 564 */,
	315/* index 565 */,
	316/* index 566 */,
	invalid_PTN_TABLE_entry/* index 567 */,
	317/* index 568 */,
	318/* index 569 */,
	319/* index 570 */,
	invalid_PTN_TABLE_entry/* index 571 */,
	320/* index 572 */,
	invalid_PTN_TABLE_entry/* index 573 */,
	invalid_PTN_TABLE_entry/* index 574 */,
	invalid_PTN_TABLE_entry/* index 575 */,
	321/* index 576 */,
	322/* index 577 */,
	323/* index 578 */,
	324/* index 579 */,
	325/* index 580 */,
	326/* index 581 */,
	327/* index 582 */,
	invalid_PTN_TABLE_entry/* index 583 */,
	328/* index 584 */,
	329/* index 585 */,
	330/* index 586 */,
	invalid_PTN_TABLE_entry/* index 587 */,
	331/* index 588 */,
	invalid_PTN_TABLE_entry/* index 589 */,
	invalid_PTN_TABLE_entry/* index 590 */,
	invalid_PTN_TABLE_entry/* index 591 */,
	332/* index 592 */,
	333/* index 593 */,
	334/* index 594 */,
	335/* index 595 */,
	336/* index 596 */,
	337/* index 597 */,
	338/* index 598 */,
	invalid_PTN_TABLE_entry/* index 599 */,
	339/* index 600 */,
	340/* index 601 */,
	341/* index 602 */,
	invalid_PTN_TABLE_entry/* index 603 */,
	342/* index 604 */,
	invalid_PTN_TABLE_entry/* index 605 */,
	invalid_PTN_TABLE_entry/* index 606 */,
	invalid_PTN_TABLE_entry/* index 607 */,
	invalid_PTN_TABLE_entry/* index 608 */,
	invalid_PTN_TABLE_entry/* index 609 */,
	invalid_PTN_TABLE_entry/* index 610 */,
	invalid_PTN_TABLE_entry/* index 611 */,
	invalid_PTN_TABLE_entry/* index 612 */,
	invalid_PTN_TABLE_entry/* index 613 */,
	invalid_PTN_TABLE_entry/* index 614 */,
	invalid_PTN_TABLE_entry/* index 615 */,
	invalid_PTN_TABLE_entry/* index 616 */,
	invalid_PTN_TABLE_entry/* index 617 */,
	invalid_PTN_TABLE_entry/* index 618 */,
	invalid_PTN_TABLE_entry/* index 619 */,
	invalid_PTN_TABLE_entry/* index 620 */,
	invalid_PTN_TABLE_entry/* index 621 */,
	invalid_PTN_TABLE_entry/* index 622 */,
	invalid_PTN_TABLE_entry/* index 623 */,
	invalid_PTN_TABLE_entry/* index 624 */,
	invalid_PTN_TABLE_entry/* index 625 */,
	invalid_PTN_TABLE_entry/* index 626 */,
	invalid_PTN_TABLE_entry/* index 627 */,
	invalid_PTN_TABLE_entry/* index 628 */,
	invalid_PTN_TABLE_entry/* index 629 */,
	invalid_PTN_TABLE_entry/* index 630 */,
	invalid_PTN_TABLE_entry/* index 631 */,
	invalid_PTN_TABLE_entry/* index 632 */,
	invalid_PTN_TABLE_entry/* index 633 */,
	invalid_PTN_TABLE_entry/* index 634 */,
	invalid_PTN_TABLE_entry/* index 635 */,
	invalid_PTN_TABLE_entry/* index 636 */,
	invalid_PTN_TABLE_entry/* index 637 */,
	invalid_PTN_TABLE_entry/* index 638 */,
	invalid_PTN_TABLE_entry/* index 639 */,
	invalid_PTN_TABLE_entry/* index 640 */,
	invalid_PTN_TABLE_entry/* index 641 */,
	invalid_PTN_TABLE_entry/* index 642 */,
	invalid_PTN_TABLE_entry/* index 643 */,
	invalid_PTN_TABLE_entry/* index 644 */,
	invalid_PTN_TABLE_entry/* index 645 */,
	invalid_PTN_TABLE_entry/* index 646 */,
	invalid_PTN_TABLE_entry/* index 647 */,
	invalid_PTN_TABLE_entry/* index 648 */,
	invalid_PTN_TABLE_entry/* index 649 */,
	invalid_PTN_TABLE_entry/* index 650 */,
	invalid_PTN_TABLE_entry/* index 651 */,
	invalid_PTN_TABLE_entry/* index 652 */,
	invalid_PTN_TABLE_entry/* index 653 */,
	invalid_PTN_TABLE_entry/* index 654 */,
	invalid_PTN_TABLE_entry/* index 655 */,
	invalid_PTN_TABLE_entry/* index 656 */,
	invalid_PTN_TABLE_entry/* index 657 */,
	invalid_PTN_TABLE_entry/* index 658 */,
	invalid_PTN_TABLE_entry/* index 659 */,
	invalid_PTN_TABLE_entry/* index 660 */,
	invalid_PTN_TABLE_entry/* index 661 */,
	invalid_PTN_TABLE_entry/* index 662 */,
	invalid_PTN_TABLE_entry/* index 663 */,
	invalid_PTN_TABLE_entry/* index 664 */,
	invalid_PTN_TABLE_entry/* index 665 */,
	invalid_PTN_TABLE_entry/* index 666 */,
	invalid_PTN_TABLE_entry/* index 667 */,
	invalid_PTN_TABLE_entry/* index 668 */,
	invalid_PTN_TABLE_entry/* index 669 */,
	invalid_PTN_TABLE_entry/* index 670 */,
	invalid_PTN_TABLE_entry/* index 671 */,
	invalid_PTN_TABLE_entry/* index 672 */,
	invalid_PTN_TABLE_entry/* index 673 */,
	invalid_PTN_TABLE_entry/* index 674 */,
	invalid_PTN_TABLE_entry/* index 675 */,
	invalid_PTN_TABLE_entry/* index 676 */,
	invalid_PTN_TABLE_entry/* index 677 */,
	invalid_PTN_TABLE_entry/* index 678 */,
	invalid_PTN_TABLE_entry/* index 679 */,
	invalid_PTN_TABLE_entry/* index 680 */,
	invalid_PTN_TABLE_entry/* index 681 */,
	invalid_PTN_TABLE_entry/* index 682 */,
	invalid_PTN_TABLE_entry/* index 683 */,
	invalid_PTN_TABLE_entry/* index 684 */,
	invalid_PTN_TABLE_entry/* index 685 */,
	invalid_PTN_TABLE_entry/* index 686 */,
	invalid_PTN_TABLE_entry/* index 687 */,
	invalid_PTN_TABLE_entry/* index 688 */,
	invalid_PTN_TABLE_entry/* index 689 */,
	invalid_PTN_TABLE_entry/* index 690 */,
	invalid_PTN_TABLE_entry/* index 691 */,
	invalid_PTN_TABLE_entry/* index 692 */,
	invalid_PTN_TABLE_entry/* index 693 */,
	invalid_PTN_TABLE_entry/* index 694 */,
	invalid_PTN_TABLE_entry/* index 695 */,
	invalid_PTN_TABLE_entry/* index 696 */,
	invalid_PTN_TABLE_entry/* index 697 */,
	invalid_PTN_TABLE_entry/* index 698 */,
	invalid_PTN_TABLE_entry/* index 699 */,
	invalid_PTN_TABLE_entry/* index 700 */,
	invalid_PTN_TABLE_entry/* index 701 */,
	invalid_PTN_TABLE_entry/* index 702 */,
	invalid_PTN_TABLE_entry/* index 703 */,
	invalid_PTN_TABLE_entry/* index 704 */,
	invalid_PTN_TABLE_entry/* index 705 */,
	invalid_PTN_TABLE_entry/* index 706 */,
	invalid_PTN_TABLE_entry/* index 707 */,
	invalid_PTN_TABLE_entry/* index 708 */,
	invalid_PTN_TABLE_entry/* index 709 */,
	invalid_PTN_TABLE_entry/* index 710 */,
	invalid_PTN_TABLE_entry/* index 711 */,
	invalid_PTN_TABLE_entry/* index 712 */,
	invalid_PTN_TABLE_entry/* index 713 */,
	invalid_PTN_TABLE_entry/* index 714 */,
	invalid_PTN_TABLE_entry/* index 715 */,
	invalid_PTN_TABLE_entry/* index 716 */,
	invalid_PTN_TABLE_entry/* index 717 */,
	invalid_PTN_TABLE_entry/* index 718 */,
	invalid_PTN_TABLE_entry/* index 719 */,
	invalid_PTN_TABLE_entry/* index 720 */,
	invalid_PTN_TABLE_entry/* index 721 */,
	invalid_PTN_TABLE_entry/* index 722 */,
	invalid_PTN_TABLE_entry/* index 723 */,
	invalid_PTN_TABLE_entry/* index 724 */,
	invalid_PTN_TABLE_entry/* index 725 */,
	invalid_PTN_TABLE_entry/* index 726 */,
	invalid_PTN_TABLE_entry/* index 727 */,
	invalid_PTN_TABLE_entry/* index 728 */,
	invalid_PTN_TABLE_entry/* index 729 */,
	invalid_PTN_TABLE_entry/* index 730 */,
	invalid_PTN_TABLE_entry/* index 731 */,
	invalid_PTN_TABLE_entry/* index 732 */,
	invalid_PTN_TABLE_entry/* index 733 */,
	invalid_PTN_TABLE_entry/* index 734 */,
	invalid_PTN_TABLE_entry/* index 735 */,
	invalid_PTN_TABLE_entry/* index 736 */,
	invalid_PTN_TABLE_entry/* index 737 */,
	invalid_PTN_TABLE_entry/* index 738 */,
	invalid_PTN_TABLE_entry/* index 739 */,
	invalid_PTN_TABLE_entry/* index 740 */,
	invalid_PTN_TABLE_entry/* index 741 */,
	invalid_PTN_TABLE_entry/* index 742 */,
	invalid_PTN_TABLE_entry/* index 743 */,
	invalid_PTN_TABLE_entry/* index 744 */,
	invalid_PTN_TABLE_entry/* index 745 */,
	invalid_PTN_TABLE_entry/* index 746 */,
	invalid_PTN_TABLE_entry/* index 747 */,
	invalid_PTN_TABLE_entry/* index 748 */,
	invalid_PTN_TABLE_entry/* index 749 */,
	invalid_PTN_TABLE_entry/* index 750 */,
	invalid_PTN_TABLE_entry/* index 751 */,
	invalid_PTN_TABLE_entry/* index 752 */,
	invalid_PTN_TABLE_entry/* index 753 */,
	invalid_PTN_TABLE_entry/* index 754 */,
	invalid_PTN_TABLE_entry/* index 755 */,
	invalid_PTN_TABLE_entry/* index 756 */,
	invalid_PTN_TABLE_entry/* index 757 */,
	invalid_PTN_TABLE_entry/* index 758 */,
	invalid_PTN_TABLE_entry/* index 759 */,
	invalid_PTN_TABLE_entry/* index 760 */,
	invalid_PTN_TABLE_entry/* index 761 */,
	invalid_PTN_TABLE_entry/* index 762 */,
	invalid_PTN_TABLE_entry/* index 763 */,
	invalid_PTN_TABLE_entry/* index 764 */,
	invalid_PTN_TABLE_entry/* index 765 */,
	invalid_PTN_TABLE_entry/* index 766 */,
	invalid_PTN_TABLE_entry/* index 767 */,
	343/* index 768 */,
	344/* index 769 */,
	345/* index 770 */,
	346/* index 771 */,
	347/* index 772 */,
	348/* index 773 */,
	349/* index 774 */,
	invalid_PTN_TABLE_entry/* index 775 */,
	350/* index 776 */,
	351/* index 777 */,
	352/* index 778 */,
	invalid_PTN_TABLE_entry/* index 779 */,
	353/* index 780 */,
	invalid_PTN_TABLE_entry/* index 781 */,
	invalid_PTN_TABLE_entry/* index 782 */,
	invalid_PTN_TABLE_entry/* index 783 */,
	354/* index 784 */,
	355/* index 785 */,
	356/* index 786 */,
	357/* index 787 */,
	358/* index 788 */,
	359/* index 789 */,
	360/* index 790 */,
	invalid_PTN_TABLE_entry/* index 791 */,
	361/* index 792 */,
	362/* index 793 */,
	363/* index 794 */,
	invalid_PTN_TABLE_entry/* index 795 */,
	364/* index 796 */,
	invalid_PTN_TABLE_entry/* index 797 */,
	invalid_PTN_TABLE_entry/* index 798 */,
	invalid_PTN_TABLE_entry/* index 799 */,
	365/* index 800 */,
	366/* index 801 */,
	367/* index 802 */,
	invalid_PTN_TABLE_entry/* index 803 */,
	368/* index 804 */,
	invalid_PTN_TABLE_entry/* index 805 */,
	invalid_PTN_TABLE_entry/* index 806 */,
	invalid_PTN_TABLE_entry/* index 807 */,
	369/* index 808 */,
	invalid_PTN_TABLE_entry/* index 809 */,
	invalid_PTN_TABLE_entry/* index 810 */,
	invalid_PTN_TABLE_entry/* index 811 */,
	invalid_PTN_TABLE_entry/* index 812 */,
	invalid_PTN_TABLE_entry/* index 813 */,
	invalid_PTN_TABLE_entry/* index 814 */,
	invalid_PTN_TABLE_entry/* index 815 */,
	370/* index 816 */,
	371/* index 817 */,
	372/* index 818 */,
	invalid_PTN_TABLE_entry/* index 819 */,
	373/* index 820 */,
	invalid_PTN_TABLE_entry/* index 821 */,
	invalid_PTN_TABLE_entry/* index 822 */,
	invalid_PTN_TABLE_entry/* index 823 */,
	374/* index 824 */,
	invalid_PTN_TABLE_entry/* index 825 */,
	invalid_PTN_TABLE_entry/* index 826 */,
	invalid_PTN_TABLE_entry/* index 827 */,
	invalid_PTN_TABLE_entry/* index 828 */,
	invalid_PTN_TABLE_entry/* index 829 */,
	invalid_PTN_TABLE_entry/* index 830 */,
	invalid_PTN_TABLE_entry/* index 831 */,
	375/* index 832 */,
	376/* index 833 */,
	377/* index 834 */,
	invalid_PTN_TABLE_entry/* index 835 */,
	378/* index 836 */,
	invalid_PTN_TABLE_entry/* index 837 */,
	invalid_PTN_TABLE_entry/* index 838 */,
	invalid_PTN_TABLE_entry/* index 839 */,
	379/* index 840 */,
	invalid_PTN_TABLE_entry/* index 841 */,
	invalid_PTN_TABLE_entry/* index 842 */,
	invalid_PTN_TABLE_entry/* index 843 */,
	invalid_PTN_TABLE_entry/* index 844 */,
	invalid_PTN_TABLE_entry/* index 845 */,
	invalid_PTN_TABLE_entry/* index 846 */,
	invalid_PTN_TABLE_entry/* index 847 */,
	380/* index 848 */,
	381/* index 849 */,
	382/* index 850 */,
	invalid_PTN_TABLE_entry/* index 851 */,
	383/* index 852 */,
	invalid_PTN_TABLE_entry/* index 853 */,
	invalid_PTN_TABLE_entry/* index 854 */,
	invalid_PTN_TABLE_entry/* index 855 */,
	384/* index 856 */,
	invalid_PTN_TABLE_entry/* index 857 */,
	invalid_PTN_TABLE_entry/* index 858 */,
	invalid_PTN_TABLE_entry/* index 859 */,
	invalid_PTN_TABLE_entry/* index 860 */,
	invalid_PTN_TABLE_entry/* index 861 */,
	invalid_PTN_TABLE_entry/* index 862 */,
	invalid_PTN_TABLE_entry/* index 863 */,
	invalid_PTN_TABLE_entry/* index 864 */,
	invalid_PTN_TABLE_entry/* index 865 */,
	invalid_PTN_TABLE_entry/* index 866 */,
	invalid_PTN_TABLE_entry/* index 867 */,
	invalid_PTN_TABLE_entry/* index 868 */,
	invalid_PTN_TABLE_entry/* index 869 */,
	invalid_PTN_TABLE_entry/* index 870 */,
	invalid_PTN_TABLE_entry/* index 871 */,
	invalid_PTN_TABLE_entry/* index 872 */,
	invalid_PTN_TABLE_entry/* index 873 */,
	invalid_PTN_TABLE_entry/* index 874 */,
	invalid_PTN_TABLE_entry/* index 875 */,
	invalid_PTN_TABLE_entry/* index 876 */,
	invalid_PTN_TABLE_entry/* index 877 */,
	invalid_PTN_TABLE_entry/* index 878 */,
	invalid_PTN_TABLE_entry/* index 879 */,
	invalid_PTN_TABLE_entry/* index 880 */,
	invalid_PTN_TABLE_entry/* index 881 */,
	invalid_PTN_TABLE_entry/* index 882 */,
	invalid_PTN_TABLE_entry/* index 883 */,
	invalid_PTN_TABLE_entry/* index 884 */,
	invalid_PTN_TABLE_entry/* index 885 */,
	invalid_PTN_TABLE_entry/* index 886 */,
	invalid_PTN_TABLE_entry/* index 887 */,
	invalid_PTN_TABLE_entry/* index 888 */,
	invalid_PTN_TABLE_entry/* index 889 */,
	invalid_PTN_TABLE_entry/* index 890 */,
	invalid_PTN_TABLE_entry/* index 891 */,
	invalid_PTN_TABLE_entry/* index 892 */,
	invalid_PTN_TABLE_entry/* index 893 */,
	invalid_PTN_TABLE_entry/* index 894 */,
	invalid_PTN_TABLE_entry/* index 895 */,
	invalid_PTN_TABLE_entry/* index 896 */,
	invalid_PTN_TABLE_entry/* index 897 */,
	invalid_PTN_TABLE_entry/* index 898 */,
	invalid_PTN_TABLE_entry/* index 899 */,
	invalid_PTN_TABLE_entry/* index 900 */,
	invalid_PTN_TABLE_entry/* index 901 */,
	invalid_PTN_TABLE_entry/* index 902 */,
	invalid_PTN_TABLE_entry/* index 903 */,
	invalid_PTN_TABLE_entry/* index 904 */,
	invalid_PTN_TABLE_entry/* index 905 */,
	invalid_PTN_TABLE_entry/* index 906 */,
	invalid_PTN_TABLE_entry/* index 907 */,
	invalid_PTN_TABLE_entry/* index 908 */,
	invalid_PTN_TABLE_entry/* index 909 */,
	invalid_PTN_TABLE_entry/* index 910 */,
	invalid_PTN_TABLE_entry/* index 911 */,
	invalid_PTN_TABLE_entry/* index 912 */,
	invalid_PTN_TABLE_entry/* index 913 */,
	invalid_PTN_TABLE_entry/* index 914 */,
	invalid_PTN_TABLE_entry/* index 915 */,
	invalid_PTN_TABLE_entry/* index 916 */,
	invalid_PTN_TABLE_entry/* index 917 */,
	invalid_PTN_TABLE_entry/* index 918 */,
	invalid_PTN_TABLE_entry/* index 919 */,
	invalid_PTN_TABLE_entry/* index 920 */,
	invalid_PTN_TABLE_entry/* index 921 */,
	invalid_PTN_TABLE_entry/* index 922 */,
	invalid_PTN_TABLE_entry/* index 923 */,
	invalid_PTN_TABLE_entry/* index 924 */,
	invalid_PTN_TABLE_entry/* index 925 */,
	invalid_PTN_TABLE_entry/* index 926 */,
	invalid_PTN_TABLE_entry/* index 927 */,
	invalid_PTN_TABLE_entry/* index 928 */,
	invalid_PTN_TABLE_entry/* index 929 */,
	invalid_PTN_TABLE_entry/* index 930 */,
	invalid_PTN_TABLE_entry/* index 931 */,
	invalid_PTN_TABLE_entry/* index 932 */,
	invalid_PTN_TABLE_entry/* index 933 */,
	invalid_PTN_TABLE_entry/* index 934 */,
	invalid_PTN_TABLE_entry/* index 935 */,
	invalid_PTN_TABLE_entry/* index 936 */,
	invalid_PTN_TABLE_entry/* index 937 */,
	invalid_PTN_TABLE_entry/* index 938 */,
	invalid_PTN_TABLE_entry/* index 939 */,
	invalid_PTN_TABLE_entry/* index 940 */,
	invalid_PTN_TABLE_entry/* index 941 */,
	invalid_PTN_TABLE_entry/* index 942 */,
	invalid_PTN_TABLE_entry/* index 943 */,
	invalid_PTN_TABLE_entry/* index 944 */,
	invalid_PTN_TABLE_entry/* index 945 */,
	invalid_PTN_TABLE_entry/* index 946 */,
	invalid_PTN_TABLE_entry/* index 947 */,
	invalid_PTN_TABLE_entry/* index 948 */,
	invalid_PTN_TABLE_entry/* index 949 */,
	invalid_PTN_TABLE_entry/* index 950 */,
	invalid_PTN_TABLE_entry/* index 951 */,
	invalid_PTN_TABLE_entry/* index 952 */,
	invalid_PTN_TABLE_entry/* index 953 */,
	invalid_PTN_TABLE_entry/* index 954 */,
	invalid_PTN_TABLE_entry/* index 955 */,
	invalid_PTN_TABLE_entry/* index 956 */,
	invalid_PTN_TABLE_entry/* index 957 */,
	invalid_PTN_TABLE_entry/* index 958 */,
	invalid_PTN_TABLE_entry/* index 959 */,
	invalid_PTN_TABLE_entry/* index 960 */,
	invalid_PTN_TABLE_entry/* index 961 */,
	invalid_PTN_TABLE_entry/* index 962 */,
	invalid_PTN_TABLE_entry/* index 963 */,
	invalid_PTN_TABLE_entry/* index 964 */,
	invalid_PTN_TABLE_entry/* index 965 */,
	invalid_PTN_TABLE_entry/* index 966 */,
	invalid_PTN_TABLE_entry/* index 967 */,
	invalid_PTN_TABLE_entry/* index 968 */,
	invalid_PTN_TABLE_entry/* index 969 */,
	invalid_PTN_TABLE_entry/* index 970 */,
	invalid_PTN_TABLE_entry/* index 971 */,
	invalid_PTN_TABLE_entry/* index 972 */,
	invalid_PTN_TABLE_entry/* index 973 */,
	invalid_PTN_TABLE_entry/* index 974 */,
	invalid_PTN_TABLE_entry/* index 975 */,
	invalid_PTN_TABLE_entry/* index 976 */,
	invalid_PTN_TABLE_entry/* index 977 */,
	invalid_PTN_TABLE_entry/* index 978 */,
	invalid_PTN_TABLE_entry/* index 979 */,
	invalid_PTN_TABLE_entry/* index 980 */,
	invalid_PTN_TABLE_entry/* index 981 */,
	invalid_PTN_TABLE_entry/* index 982 */,
	invalid_PTN_TABLE_entry/* index 983 */,
	invalid_PTN_TABLE_entry/* index 984 */,
	invalid_PTN_TABLE_entry/* index 985 */,
	invalid_PTN_TABLE_entry/* index 986 */,
	invalid_PTN_TABLE_entry/* index 987 */,
	invalid_PTN_TABLE_entry/* index 988 */,
	invalid_PTN_TABLE_entry/* index 989 */,
	invalid_PTN_TABLE_entry/* index 990 */,
	invalid_PTN_TABLE_entry/* index 991 */,
	invalid_PTN_TABLE_entry/* index 992 */,
	invalid_PTN_TABLE_entry/* index 993 */,
	invalid_PTN_TABLE_entry/* index 994 */,
	invalid_PTN_TABLE_entry/* index 995 */,
	invalid_PTN_TABLE_entry/* index 996 */,
	invalid_PTN_TABLE_entry/* index 997 */,
	invalid_PTN_TABLE_entry/* index 998 */,
	invalid_PTN_TABLE_entry/* index 999 */,
	invalid_PTN_TABLE_entry/* index 1000 */,
	invalid_PTN_TABLE_entry/* index 1001 */,
	invalid_PTN_TABLE_entry/* index 1002 */,
	invalid_PTN_TABLE_entry/* index 1003 */,
	invalid_PTN_TABLE_entry/* index 1004 */,
	invalid_PTN_TABLE_entry/* index 1005 */,
	invalid_PTN_TABLE_entry/* index 1006 */,
	invalid_PTN_TABLE_entry/* index 1007 */,
	invalid_PTN_TABLE_entry/* index 1008 */,
	invalid_PTN_TABLE_entry/* index 1009 */,
	invalid_PTN_TABLE_entry/* index 1010 */,
	invalid_PTN_TABLE_entry/* index 1011 */,
	invalid_PTN_TABLE_entry/* index 1012 */,
	invalid_PTN_TABLE_entry/* index 1013 */,
	invalid_PTN_TABLE_entry/* index 1014 */,
	invalid_PTN_TABLE_entry/* index 1015 */,
	invalid_PTN_TABLE_entry/* index 1016 */,
	invalid_PTN_TABLE_entry/* index 1017 */,
	invalid_PTN_TABLE_entry/* index 1018 */,
	invalid_PTN_TABLE_entry/* index 1019 */,
	invalid_PTN_TABLE_entry/* index 1020 */,
	invalid_PTN_TABLE_entry/* index 1021 */,
	invalid_PTN_TABLE_entry/* index 1022 */,
	invalid_PTN_TABLE_entry/* index 1023 */,
	385/* index 1024 */,
	386/* index 1025 */,
	387/* index 1026 */,
	388/* index 1027 */,
	389/* index 1028 */,
	390/* index 1029 */,
	391/* index 1030 */,
	392/* index 1031 */,
	393/* index 1032 */,
	394/* index 1033 */,
	395/* index 1034 */,
	396/* index 1035 */,
	397/* index 1036 */,
	398/* index 1037 */,
	399/* index 1038 */,
	400/* index 1039 */,
	401/* index 1040 */,
	402/* index 1041 */,
	403/* index 1042 */,
	404/* index 1043 */,
	405/* index 1044 */,
	406/* index 1045 */,
	407/* index 1046 */,
	408/* index 1047 */,
	409/* index 1048 */,
	410/* index 1049 */,
	411/* index 1050 */,
	412/* index 1051 */,
	413/* index 1052 */,
	414/* index 1053 */,
	415/* index 1054 */,
	416/* index 1055 */,
	417/* index 1056 */,
	418/* index 1057 */,
	419/* index 1058 */,
	420/* index 1059 */,
	421/* index 1060 */,
	422/* index 1061 */,
	423/* index 1062 */,
	424/* index 1063 */,
	425/* index 1064 */,
	426/* index 1065 */,
	427/* index 1066 */,
	428/* index 1067 */,
	429/* index 1068 */,
	430/* index 1069 */,
	431/* index 1070 */,
	432/* index 1071 */,
	433/* index 1072 */,
	434/* index 1073 */,
	435/* index 1074 */,
	436/* index 1075 */,
	437/* index 1076 */,
	438/* index 1077 */,
	439/* index 1078 */,
	440/* index 1079 */,
	441/* index 1080 */,
	442/* index 1081 */,
	443/* index 1082 */,
	444/* index 1083 */,
	445/* index 1084 */,
	446/* index 1085 */,
	447/* index 1086 */,
	invalid_PTN_TABLE_entry/* index 1087 */,
	448/* index 1088 */,
	449/* index 1089 */,
	450/* index 1090 */,
	451/* index 1091 */,
	452/* index 1092 */,
	453/* index 1093 */,
	454/* index 1094 */,
	455/* index 1095 */,
	456/* index 1096 */,
	457/* index 1097 */,
	458/* index 1098 */,
	459/* index 1099 */,
	460/* index 1100 */,
	461/* index 1101 */,
	462/* index 1102 */,
	invalid_PTN_TABLE_entry/* index 1103 */,
	463/* index 1104 */,
	464/* index 1105 */,
	465/* index 1106 */,
	466/* index 1107 */,
	467/* index 1108 */,
	468/* index 1109 */,
	469/* index 1110 */,
	470/* index 1111 */,
	471/* index 1112 */,
	472/* index 1113 */,
	473/* index 1114 */,
	474/* index 1115 */,
	475/* index 1116 */,
	476/* index 1117 */,
	477/* index 1118 */,
	invalid_PTN_TABLE_entry/* index 1119 */,
	478/* index 1120 */,
	479/* index 1121 */,
	480/* index 1122 */,
	481/* index 1123 */,
	482/* index 1124 */,
	483/* index 1125 */,
	484/* index 1126 */,
	485/* index 1127 */,
	486/* index 1128 */,
	487/* index 1129 */,
	488/* index 1130 */,
	489/* index 1131 */,
	490/* index 1132 */,
	491/* index 1133 */,
	492/* index 1134 */,
	invalid_PTN_TABLE_entry/* index 1135 */,
	493/* index 1136 */,
	494/* index 1137 */,
	495/* index 1138 */,
	496/* index 1139 */,
	497/* index 1140 */,
	498/* index 1141 */,
	499/* index 1142 */,
	invalid_PTN_TABLE_entry/* index 1143 */,
	500/* index 1144 */,
	501/* index 1145 */,
	502/* index 1146 */,
	invalid_PTN_TABLE_entry/* index 1147 */,
	503/* index 1148 */,
	invalid_PTN_TABLE_entry/* index 1149 */,
	invalid_PTN_TABLE_entry/* index 1150 */,
	invalid_PTN_TABLE_entry/* index 1151 */,
	504/* index 1152 */,
	505/* index 1153 */,
	506/* index 1154 */,
	507/* index 1155 */,
	508/* index 1156 */,
	509/* index 1157 */,
	510/* index 1158 */,
	511/* index 1159 */,
	512/* index 1160 */,
	513/* index 1161 */,
	514/* index 1162 */,
	515/* index 1163 */,
	516/* index 1164 */,
	517/* index 1165 */,
	518/* index 1166 */,
	invalid_PTN_TABLE_entry/* index 1167 */,
	519/* index 1168 */,
	520/* index 1169 */,
	521/* index 1170 */,
	522/* index 1171 */,
	523/* index 1172 */,
	524/* index 1173 */,
	525/* index 1174 */,
	526/* index 1175 */,
	527/* index 1176 */,
	528/* index 1177 */,
	529/* index 1178 */,
	530/* index 1179 */,
	531/* index 1180 */,
	532/* index 1181 */,
	533/* index 1182 */,
	invalid_PTN_TABLE_entry/* index 1183 */,
	534/* index 1184 */,
	535/* index 1185 */,
	536/* index 1186 */,
	537/* index 1187 */,
	538/* index 1188 */,
	539/* index 1189 */,
	540/* index 1190 */,
	541/* index 1191 */,
	542/* index 1192 */,
	543/* index 1193 */,
	544/* index 1194 */,
	545/* index 1195 */,
	546/* index 1196 */,
	547/* index 1197 */,
	548/* index 1198 */,
	invalid_PTN_TABLE_entry/* index 1199 */,
	549/* index 1200 */,
	550/* index 1201 */,
	551/* index 1202 */,
	552/* index 1203 */,
	553/* index 1204 */,
	554/* index 1205 */,
	555/* index 1206 */,
	invalid_PTN_TABLE_entry/* index 1207 */,
	556/* index 1208 */,
	557/* index 1209 */,
	558/* index 1210 */,
	invalid_PTN_TABLE_entry/* index 1211 */,
	559/* index 1212 */,
	invalid_PTN_TABLE_entry/* index 1213 */,
	invalid_PTN_TABLE_entry/* index 1214 */,
	invalid_PTN_TABLE_entry/* index 1215 */,
	560/* index 1216 */,
	561/* index 1217 */,
	562/* index 1218 */,
	563/* index 1219 */,
	564/* index 1220 */,
	565/* index 1221 */,
	566/* index 1222 */,
	invalid_PTN_TABLE_entry/* index 1223 */,
	567/* index 1224 */,
	568/* index 1225 */,
	569/* index 1226 */,
	invalid_PTN_TABLE_entry/* index 1227 */,
	570/* index 1228 */,
	invalid_PTN_TABLE_entry/* index 1229 */,
	invalid_PTN_TABLE_entry/* index 1230 */,
	invalid_PTN_TABLE_entry/* index 1231 */,
	571/* index 1232 */,
	572/* index 1233 */,
	573/* index 1234 */,
	574/* index 1235 */,
	575/* index 1236 */,
	576/* index 1237 */,
	577/* index 1238 */,
	invalid_PTN_TABLE_entry/* index 1239 */,
	578/* index 1240 */,
	579/* index 1241 */,
	580/* index 1242 */,
	invalid_PTN_TABLE_entry/* index 1243 */,
	581/* index 1244 */,
	invalid_PTN_TABLE_entry/* index 1245 */,
	invalid_PTN_TABLE_entry/* index 1246 */,
	invalid_PTN_TABLE_entry/* index 1247 */,
	582/* index 1248 */,
	583/* index 1249 */,
	584/* index 1250 */,
	585/* index 1251 */,
	586/* index 1252 */,
	587/* index 1253 */,
	588/* index 1254 */,
	invalid_PTN_TABLE_entry/* index 1255 */,
	589/* index 1256 */,
	590/* index 1257 */,
	591/* index 1258 */,
	invalid_PTN_TABLE_entry/* index 1259 */,
	592/* index 1260 */,
	invalid_PTN_TABLE_entry/* index 1261 */,
	invalid_PTN_TABLE_entry/* index 1262 */,
	invalid_PTN_TABLE_entry/* index 1263 */,
	invalid_PTN_TABLE_entry/* index 1264 */,
	invalid_PTN_TABLE_entry/* index 1265 */,
	invalid_PTN_TABLE_entry/* index 1266 */,
	invalid_PTN_TABLE_entry/* index 1267 */,
	invalid_PTN_TABLE_entry/* index 1268 */,
	invalid_PTN_TABLE_entry/* index 1269 */,
	invalid_PTN_TABLE_entry/* index 1270 */,
	invalid_PTN_TABLE_entry/* index 1271 */,
	invalid_PTN_TABLE_entry/* index 1272 */,
	invalid_PTN_TABLE_entry/* index 1273 */,
	invalid_PTN_TABLE_entry/* index 1274 */,
	invalid_PTN_TABLE_entry/* index 1275 */,
	invalid_PTN_TABLE_entry/* index 1276 */,
	invalid_PTN_TABLE_entry/* index 1277 */,
	invalid_PTN_TABLE_entry/* index 1278 */,
	invalid_PTN_TABLE_entry/* index 1279 */,
	593/* index 1280 */,
	594/* index 1281 */,
	595/* index 1282 */,
	596/* index 1283 */,
	597/* index 1284 */,
	598/* index 1285 */,
	599/* index 1286 */,
	invalid_PTN_TABLE_entry/* index 1287 */,
	600/* index 1288 */,
	601/* index 1289 */,
	602/* index 1290 */,
	invalid_PTN_TABLE_entry/* index 1291 */,
	603/* index 1292 */,
	invalid_PTN_TABLE_entry/* index 1293 */,
	invalid_PTN_TABLE_entry/* index 1294 */,
	invalid_PTN_TABLE_entry/* index 1295 */,
	604/* index 1296 */,
	605/* index 1297 */,
	606/* index 1298 */,
	607/* index 1299 */,
	608/* index 1300 */,
	609/* index 1301 */,
	610/* index 1302 */,
	invalid_PTN_TABLE_entry/* index 1303 */,
	611/* index 1304 */,
	612/* index 1305 */,
	613/* index 1306 */,
	invalid_PTN_TABLE_entry/* index 1307 */,
	614/* index 1308 */,
	invalid_PTN_TABLE_entry/* index 1309 */,
	invalid_PTN_TABLE_entry/* index 1310 */,
	invalid_PTN_TABLE_entry/* index 1311 */,
	615/* index 1312 */,
	616/* index 1313 */,
	617/* index 1314 */,
	invalid_PTN_TABLE_entry/* index 1315 */,
	618/* index 1316 */,
	invalid_PTN_TABLE_entry/* index 1317 */,
	invalid_PTN_TABLE_entry/* index 1318 */,
	invalid_PTN_TABLE_entry/* index 1319 */,
	619/* index 1320 */,
	invalid_PTN_TABLE_entry/* index 1321 */,
	invalid_PTN_TABLE_entry/* index 1322 */,
	invalid_PTN_TABLE_entry/* index 1323 */,
	invalid_PTN_TABLE_entry/* index 1324 */,
	invalid_PTN_TABLE_entry/* index 1325 */,
	invalid_PTN_TABLE_entry/* index 1326 */,
	invalid_PTN_TABLE_entry/* index 1327 */,
	620/* index 1328 */,
	621/* index 1329 */,
	622/* index 1330 */,
	invalid_PTN_TABLE_entry/* index 1331 */,
	623/* index 1332 */,
	invalid_PTN_TABLE_entry/* index 1333 */,
	invalid_PTN_TABLE_entry/* index 1334 */,
	invalid_PTN_TABLE_entry/* index 1335 */,
	624/* index 1336 */,
	invalid_PTN_TABLE_entry/* index 1337 */,
	invalid_PTN_TABLE_entry/* index 1338 */,
	invalid_PTN_TABLE_entry/* index 1339 */,
	invalid_PTN_TABLE_entry/* index 1340 */,
	invalid_PTN_TABLE_entry/* index 1341 */,
	invalid_PTN_TABLE_entry/* index 1342 */,
	invalid_PTN_TABLE_entry/* index 1343 */,
	625/* index 1344 */,
	626/* index 1345 */,
	627/* index 1346 */,
	invalid_PTN_TABLE_entry/* index 1347 */,
	628/* index 1348 */,
	invalid_PTN_TABLE_entry/* index 1349 */,
	invalid_PTN_TABLE_entry/* index 1350 */,
	invalid_PTN_TABLE_entry/* index 1351 */,
	629/* index 1352 */,
	invalid_PTN_TABLE_entry/* index 1353 */,
	invalid_PTN_TABLE_entry/* index 1354 */,
	invalid_PTN_TABLE_entry/* index 1355 */,
	invalid_PTN_TABLE_entry/* index 1356 */,
	invalid_PTN_TABLE_entry/* index 1357 */,
	invalid_PTN_TABLE_entry/* index 1358 */,
	invalid_PTN_TABLE_entry/* index 1359 */,
	630/* index 1360 */,
	631/* index 1361 */,
	632/* index 1362 */,
	invalid_PTN_TABLE_entry/* index 1363 */,
	633/* index 1364 */,
	invalid_PTN_TABLE_entry/* index 1365 */,
	invalid_PTN_TABLE_entry/* index 1366 */,
	invalid_PTN_TABLE_entry/* index 1367 */,
	634/* index 1368 */,
	invalid_PTN_TABLE_entry/* index 1369 */,
	invalid_PTN_TABLE_entry/* index 1370 */,
	invalid_PTN_TABLE_entry/* index 1371 */,
	invalid_PTN_TABLE_entry/* index 1372 */,
	invalid_PTN_TABLE_entry/* index 1373 */,
	invalid_PTN_TABLE_entry/* index 1374 */,
	invalid_PTN_TABLE_entry/* index 1375 */,
	invalid_PTN_TABLE_entry/* index 1376 */,
	invalid_PTN_TABLE_entry/* index 1377 */,
	invalid_PTN_TABLE_entry/* index 1378 */,
	invalid_PTN_TABLE_entry/* index 1379 */,
	invalid_PTN_TABLE_entry/* index 1380 */,
	invalid_PTN_TABLE_entry/* index 1381 */,
	invalid_PTN_TABLE_entry/* index 1382 */,
	invalid_PTN_TABLE_entry/* index 1383 */,
	invalid_PTN_TABLE_entry/* index 1384 */,
	invalid_PTN_TABLE_entry/* index 1385 */,
	invalid_PTN_TABLE_entry/* index 1386 */,
	invalid_PTN_TABLE_entry/* index 1387 */,
	invalid_PTN_TABLE_entry/* index 1388 */,
	invalid_PTN_TABLE_entry/* index 1389 */,
	invalid_PTN_TABLE_entry/* index 1390 */,
	invalid_PTN_TABLE_entry/* index 1391 */,
	invalid_PTN_TABLE_entry/* index 1392 */,
	invalid_PTN_TABLE_entry/* index 1393 */,
	invalid_PTN_TABLE_entry/* index 1394 */,
	invalid_PTN_TABLE_entry/* index 1395 */,
	invalid_PTN_TABLE_entry/* index 1396 */,
	invalid_PTN_TABLE_entry/* index 1397 */,
	invalid_PTN_TABLE_entry/* index 1398 */,
	invalid_PTN_TABLE_entry/* index 1399 */,
	invalid_PTN_TABLE_entry/* index 1400 */,
	invalid_PTN_TABLE_entry/* index 1401 */,
	invalid_PTN_TABLE_entry/* index 1402 */,
	invalid_PTN_TABLE_entry/* index 1403 */,
	invalid_PTN_TABLE_entry/* index 1404 */,
	invalid_PTN_TABLE_entry/* index 1405 */,
	invalid_PTN_TABLE_entry/* index 1406 */,
	invalid_PTN_TABLE_entry/* index 1407 */,
	invalid_PTN_TABLE_entry/* index 1408 */,
	invalid_PTN_TABLE_entry/* index 1409 */,
	invalid_PTN_TABLE_entry/* index 1410 */,
	invalid_PTN_TABLE_entry/* index 1411 */,
	invalid_PTN_TABLE_entry/* index 1412 */,
	invalid_PTN_TABLE_entry/* index 1413 */,
	invalid_PTN_TABLE_entry/* index 1414 */,
	invalid_PTN_TABLE_entry/* index 1415 */,
	invalid_PTN_TABLE_entry/* index 1416 */,
	invalid_PTN_TABLE_entry/* index 1417 */,
	invalid_PTN_TABLE_entry/* index 1418 */,
	invalid_PTN_TABLE_entry/* index 1419 */,
	invalid_PTN_TABLE_entry/* index 1420 */,
	invalid_PTN_TABLE_entry/* index 1421 */,
	invalid_PTN_TABLE_entry/* index 1422 */,
	invalid_PTN_TABLE_entry/* index 1423 */,
	invalid_PTN_TABLE_entry/* index 1424 */,
	invalid_PTN_TABLE_entry/* index 1425 */,
	invalid_PTN_TABLE_entry/* index 1426 */,
	invalid_PTN_TABLE_entry/* index 1427 */,
	invalid_PTN_TABLE_entry/* index 1428 */,
	invalid_PTN_TABLE_entry/* index 1429 */,
	invalid_PTN_TABLE_entry/* index 1430 */,
	invalid_PTN_TABLE_entry/* index 1431 */,
	invalid_PTN_TABLE_entry/* index 1432 */,
	invalid_PTN_TABLE_entry/* index 1433 */,
	invalid_PTN_TABLE_entry/* index 1434 */,
	invalid_PTN_TABLE_entry/* index 1435 */,
	invalid_PTN_TABLE_entry/* index 1436 */,
	invalid_PTN_TABLE_entry/* index 1437 */,
	invalid_PTN_TABLE_entry/* index 1438 */,
	invalid_PTN_TABLE_entry/* index 1439 */,
	invalid_PTN_TABLE_entry/* index 1440 */,
	invalid_PTN_TABLE_entry/* index 1441 */,
	invalid_PTN_TABLE_entry/* index 1442 */,
	invalid_PTN_TABLE_entry/* index 1443 */,
	invalid_PTN_TABLE_entry/* index 1444 */,
	invalid_PTN_TABLE_entry/* index 1445 */,
	invalid_PTN_TABLE_entry/* index 1446 */,
	invalid_PTN_TABLE_entry/* index 1447 */,
	invalid_PTN_TABLE_entry/* index 1448 */,
	invalid_PTN_TABLE_entry/* index 1449 */,
	invalid_PTN_TABLE_entry/* index 1450 */,
	invalid_PTN_TABLE_entry/* index 1451 */,
	invalid_PTN_TABLE_entry/* index 1452 */,
	invalid_PTN_TABLE_entry/* index 1453 */,
	invalid_PTN_TABLE_entry/* index 1454 */,
	invalid_PTN_TABLE_entry/* index 1455 */,
	invalid_PTN_TABLE_entry/* index 1456 */,
	invalid_PTN_TABLE_entry/* index 1457 */,
	invalid_PTN_TABLE_entry/* index 1458 */,
	invalid_PTN_TABLE_entry/* index 1459 */,
	invalid_PTN_TABLE_entry/* index 1460 */,
	invalid_PTN_TABLE_entry/* index 1461 */,
	invalid_PTN_TABLE_entry/* index 1462 */,
	invalid_PTN_TABLE_entry/* index 1463 */,
	invalid_PTN_TABLE_entry/* index 1464 */,
	invalid_PTN_TABLE_entry/* index 1465 */,
	invalid_PTN_TABLE_entry/* index 1466 */,
	invalid_PTN_TABLE_entry/* index 1467 */,
	invalid_PTN_TABLE_entry/* index 1468 */,
	invalid_PTN_TABLE_entry/* index 1469 */,
	invalid_PTN_TABLE_entry/* index 1470 */,
	invalid_PTN_TABLE_entry/* index 1471 */,
	invalid_PTN_TABLE_entry/* index 1472 */,
	invalid_PTN_TABLE_entry/* index 1473 */,
	invalid_PTN_TABLE_entry/* index 1474 */,
	invalid_PTN_TABLE_entry/* index 1475 */,
	invalid_PTN_TABLE_entry/* index 1476 */,
	invalid_PTN_TABLE_entry/* index 1477 */,
	invalid_PTN_TABLE_entry/* index 1478 */,
	invalid_PTN_TABLE_entry/* index 1479 */,
	invalid_PTN_TABLE_entry/* index 1480 */,
	invalid_PTN_TABLE_entry/* index 1481 */,
	invalid_PTN_TABLE_entry/* index 1482 */,
	invalid_PTN_TABLE_entry/* index 1483 */,
	invalid_PTN_TABLE_entry/* index 1484 */,
	invalid_PTN_TABLE_entry/* index 1485 */,
	invalid_PTN_TABLE_entry/* index 1486 */,
	invalid_PTN_TABLE_entry/* index 1487 */,
	invalid_PTN_TABLE_entry/* index 1488 */,
	invalid_PTN_TABLE_entry/* index 1489 */,
	invalid_PTN_TABLE_entry/* index 1490 */,
	invalid_PTN_TABLE_entry/* index 1491 */,
	invalid_PTN_TABLE_entry/* index 1492 */,
	invalid_PTN_TABLE_entry/* index 1493 */,
	invalid_PTN_TABLE_entry/* index 1494 */,
	invalid_PTN_TABLE_entry/* index 1495 */,
	invalid_PTN_TABLE_entry/* index 1496 */,
	invalid_PTN_TABLE_entry/* index 1497 */,
	invalid_PTN_TABLE_entry/* index 1498 */,
	invalid_PTN_TABLE_entry/* index 1499 */,
	invalid_PTN_TABLE_entry/* index 1500 */,
	invalid_PTN_TABLE_entry/* index 1501 */,
	invalid_PTN_TABLE_entry/* index 1502 */,
	invalid_PTN_TABLE_entry/* index 1503 */,
	invalid_PTN_TABLE_entry/* index 1504 */,
	invalid_PTN_TABLE_entry/* index 1505 */,
	invalid_PTN_TABLE_entry/* index 1506 */,
	invalid_PTN_TABLE_entry/* index 1507 */,
	invalid_PTN_TABLE_entry/* index 1508 */,
	invalid_PTN_TABLE_entry/* index 1509 */,
	invalid_PTN_TABLE_entry/* index 1510 */,
	invalid_PTN_TABLE_entry/* index 1511 */,
	invalid_PTN_TABLE_entry/* index 1512 */,
	invalid_PTN_TABLE_entry/* index 1513 */,
	invalid_PTN_TABLE_entry/* index 1514 */,
	invalid_PTN_TABLE_entry/* index 1515 */,
	invalid_PTN_TABLE_entry/* index 1516 */,
	invalid_PTN_TABLE_entry/* index 1517 */,
	invalid_PTN_TABLE_entry/* index 1518 */,
	invalid_PTN_TABLE_entry/* index 1519 */,
	invalid_PTN_TABLE_entry/* index 1520 */,
	invalid_PTN_TABLE_entry/* index 1521 */,
	invalid_PTN_TABLE_entry/* index 1522 */,
	invalid_PTN_TABLE_entry/* index 1523 */,
	invalid_PTN_TABLE_entry/* index 1524 */,
	invalid_PTN_TABLE_entry/* index 1525 */,
	invalid_PTN_TABLE_entry/* index 1526 */,
	invalid_PTN_TABLE_entry/* index 1527 */,
	invalid_PTN_TABLE_entry/* index 1528 */,
	invalid_PTN_TABLE_entry/* index 1529 */,
	invalid_PTN_TABLE_entry/* index 1530 */,
	invalid_PTN_TABLE_entry/* index 1531 */,
	invalid_PTN_TABLE_entry/* index 1532 */,
	invalid_PTN_TABLE_entry/* index 1533 */,
	invalid_PTN_TABLE_entry/* index 1534 */,
	invalid_PTN_TABLE_entry/* index 1535 */,
	635/* index 1536 */,
	636/* index 1537 */,
	637/* index 1538 */,
	638/* index 1539 */,
	639/* index 1540 */,
	640/* index 1541 */,
	641/* index 1542 */,
	642/* index 1543 */,
	643/* index 1544 */,
	644/* index 1545 */,
	645/* index 1546 */,
	646/* index 1547 */,
	647/* index 1548 */,
	648/* index 1549 */,
	649/* index 1550 */,
	invalid_PTN_TABLE_entry/* index 1551 */,
	650/* index 1552 */,
	651/* index 1553 */,
	652/* index 1554 */,
	653/* index 1555 */,
	654/* index 1556 */,
	655/* index 1557 */,
	656/* index 1558 */,
	657/* index 1559 */,
	658/* index 1560 */,
	659/* index 1561 */,
	660/* index 1562 */,
	661/* index 1563 */,
	662/* index 1564 */,
	663/* index 1565 */,
	664/* index 1566 */,
	invalid_PTN_TABLE_entry/* index 1567 */,
	665/* index 1568 */,
	666/* index 1569 */,
	667/* index 1570 */,
	668/* index 1571 */,
	669/* index 1572 */,
	670/* index 1573 */,
	671/* index 1574 */,
	invalid_PTN_TABLE_entry/* index 1575 */,
	672/* index 1576 */,
	673/* index 1577 */,
	674/* index 1578 */,
	invalid_PTN_TABLE_entry/* index 1579 */,
	675/* index 1580 */,
	invalid_PTN_TABLE_entry/* index 1581 */,
	invalid_PTN_TABLE_entry/* index 1582 */,
	invalid_PTN_TABLE_entry/* index 1583 */,
	676/* index 1584 */,
	677/* index 1585 */,
	678/* index 1586 */,
	679/* index 1587 */,
	680/* index 1588 */,
	681/* index 1589 */,
	682/* index 1590 */,
	invalid_PTN_TABLE_entry/* index 1591 */,
	683/* index 1592 */,
	684/* index 1593 */,
	685/* index 1594 */,
	invalid_PTN_TABLE_entry/* index 1595 */,
	686/* index 1596 */,
	invalid_PTN_TABLE_entry/* index 1597 */,
	invalid_PTN_TABLE_entry/* index 1598 */,
	invalid_PTN_TABLE_entry/* index 1599 */,
	687/* index 1600 */,
	688/* index 1601 */,
	689/* index 1602 */,
	690/* index 1603 */,
	691/* index 1604 */,
	692/* index 1605 */,
	693/* index 1606 */,
	invalid_PTN_TABLE_entry/* index 1607 */,
	694/* index 1608 */,
	695/* index 1609 */,
	696/* index 1610 */,
	invalid_PTN_TABLE_entry/* index 1611 */,
	697/* index 1612 */,
	invalid_PTN_TABLE_entry/* index 1613 */,
	invalid_PTN_TABLE_entry/* index 1614 */,
	invalid_PTN_TABLE_entry/* index 1615 */,
	698/* index 1616 */,
	699/* index 1617 */,
	700/* index 1618 */,
	701/* index 1619 */,
	702/* index 1620 */,
	703/* index 1621 */,
	704/* index 1622 */,
	invalid_PTN_TABLE_entry/* index 1623 */,
	705/* index 1624 */,
	706/* index 1625 */,
	707/* index 1626 */,
	invalid_PTN_TABLE_entry/* index 1627 */,
	708/* index 1628 */,
	invalid_PTN_TABLE_entry/* index 1629 */,
	invalid_PTN_TABLE_entry/* index 1630 */,
	invalid_PTN_TABLE_entry/* index 1631 */,
	invalid_PTN_TABLE_entry/* index 1632 */,
	invalid_PTN_TABLE_entry/* index 1633 */,
	invalid_PTN_TABLE_entry/* index 1634 */,
	invalid_PTN_TABLE_entry/* index 1635 */,
	invalid_PTN_TABLE_entry/* index 1636 */,
	invalid_PTN_TABLE_entry/* index 1637 */,
	invalid_PTN_TABLE_entry/* index 1638 */,
	invalid_PTN_TABLE_entry/* index 1639 */,
	invalid_PTN_TABLE_entry/* index 1640 */,
	invalid_PTN_TABLE_entry/* index 1641 */,
	invalid_PTN_TABLE_entry/* index 1642 */,
	invalid_PTN_TABLE_entry/* index 1643 */,
	invalid_PTN_TABLE_entry/* index 1644 */,
	invalid_PTN_TABLE_entry/* index 1645 */,
	invalid_PTN_TABLE_entry/* index 1646 */,
	invalid_PTN_TABLE_entry/* index 1647 */,
	invalid_PTN_TABLE_entry/* index 1648 */,
	invalid_PTN_TABLE_entry/* index 1649 */,
	invalid_PTN_TABLE_entry/* index 1650 */,
	invalid_PTN_TABLE_entry/* index 1651 */,
	invalid_PTN_TABLE_entry/* index 1652 */,
	invalid_PTN_TABLE_entry/* index 1653 */,
	invalid_PTN_TABLE_entry/* index 1654 */,
	invalid_PTN_TABLE_entry/* index 1655 */,
	invalid_PTN_TABLE_entry/* index 1656 */,
	invalid_PTN_TABLE_entry/* index 1657 */,
	invalid_PTN_TABLE_entry/* index 1658 */,
	invalid_PTN_TABLE_entry/* index 1659 */,
	invalid_PTN_TABLE_entry/* index 1660 */,
	invalid_PTN_TABLE_entry/* index 1661 */,
	invalid_PTN_TABLE_entry/* index 1662 */,
	invalid_PTN_TABLE_entry/* index 1663 */,
	invalid_PTN_TABLE_entry/* index 1664 */,
	invalid_PTN_TABLE_entry/* index 1665 */,
	invalid_PTN_TABLE_entry/* index 1666 */,
	invalid_PTN_TABLE_entry/* index 1667 */,
	invalid_PTN_TABLE_entry/* index 1668 */,
	invalid_PTN_TABLE_entry/* index 1669 */,
	invalid_PTN_TABLE_entry/* index 1670 */,
	invalid_PTN_TABLE_entry/* index 1671 */,
	invalid_PTN_TABLE_entry/* index 1672 */,
	invalid_PTN_TABLE_entry/* index 1673 */,
	invalid_PTN_TABLE_entry/* index 1674 */,
	invalid_PTN_TABLE_entry/* index 1675 */,
	invalid_PTN_TABLE_entry/* index 1676 */,
	invalid_PTN_TABLE_entry/* index 1677 */,
	invalid_PTN_TABLE_entry/* index 1678 */,
	invalid_PTN_TABLE_entry/* index 1679 */,
	invalid_PTN_TABLE_entry/* index 1680 */,
	invalid_PTN_TABLE_entry/* index 1681 */,
	invalid_PTN_TABLE_entry/* index 1682 */,
	invalid_PTN_TABLE_entry/* index 1683 */,
	invalid_PTN_TABLE_entry/* index 1684 */,
	invalid_PTN_TABLE_entry/* index 1685 */,
	invalid_PTN_TABLE_entry/* index 1686 */,
	invalid_PTN_TABLE_entry/* index 1687 */,
	invalid_PTN_TABLE_entry/* index 1688 */,
	invalid_PTN_TABLE_entry/* index 1689 */,
	invalid_PTN_TABLE_entry/* index 1690 */,
	invalid_PTN_TABLE_entry/* index 1691 */,
	invalid_PTN_TABLE_entry/* index 1692 */,
	invalid_PTN_TABLE_entry/* index 1693 */,
	invalid_PTN_TABLE_entry/* index 1694 */,
	invalid_PTN_TABLE_entry/* index 1695 */,
	invalid_PTN_TABLE_entry/* index 1696 */,
	invalid_PTN_TABLE_entry/* index 1697 */,
	invalid_PTN_TABLE_entry/* index 1698 */,
	invalid_PTN_TABLE_entry/* index 1699 */,
	invalid_PTN_TABLE_entry/* index 1700 */,
	invalid_PTN_TABLE_entry/* index 1701 */,
	invalid_PTN_TABLE_entry/* index 1702 */,
	invalid_PTN_TABLE_entry/* index 1703 */,
	invalid_PTN_TABLE_entry/* index 1704 */,
	invalid_PTN_TABLE_entry/* index 1705 */,
	invalid_PTN_TABLE_entry/* index 1706 */,
	invalid_PTN_TABLE_entry/* index 1707 */,
	invalid_PTN_TABLE_entry/* index 1708 */,
	invalid_PTN_TABLE_entry/* index 1709 */,
	invalid_PTN_TABLE_entry/* index 1710 */,
	invalid_PTN_TABLE_entry/* index 1711 */,
	invalid_PTN_TABLE_entry/* index 1712 */,
	invalid_PTN_TABLE_entry/* index 1713 */,
	invalid_PTN_TABLE_entry/* index 1714 */,
	invalid_PTN_TABLE_entry/* index 1715 */,
	invalid_PTN_TABLE_entry/* index 1716 */,
	invalid_PTN_TABLE_entry/* index 1717 */,
	invalid_PTN_TABLE_entry/* index 1718 */,
	invalid_PTN_TABLE_entry/* index 1719 */,
	invalid_PTN_TABLE_entry/* index 1720 */,
	invalid_PTN_TABLE_entry/* index 1721 */,
	invalid_PTN_TABLE_entry/* index 1722 */,
	invalid_PTN_TABLE_entry/* index 1723 */,
	invalid_PTN_TABLE_entry/* index 1724 */,
	invalid_PTN_TABLE_entry/* index 1725 */,
	invalid_PTN_TABLE_entry/* index 1726 */,
	invalid_PTN_TABLE_entry/* index 1727 */,
	invalid_PTN_TABLE_entry/* index 1728 */,
	invalid_PTN_TABLE_entry/* index 1729 */,
	invalid_PTN_TABLE_entry/* index 1730 */,
	invalid_PTN_TABLE_entry/* index 1731 */,
	invalid_PTN_TABLE_entry/* index 1732 */,
	invalid_PTN_TABLE_entry/* index 1733 */,
	invalid_PTN_TABLE_entry/* index 1734 */,
	invalid_PTN_TABLE_entry/* index 1735 */,
	invalid_PTN_TABLE_entry/* index 1736 */,
	invalid_PTN_TABLE_entry/* index 1737 */,
	invalid_PTN_TABLE_entry/* index 1738 */,
	invalid_PTN_TABLE_entry/* index 1739 */,
	invalid_PTN_TABLE_entry/* index 1740 */,
	invalid_PTN_TABLE_entry/* index 1741 */,
	invalid_PTN_TABLE_entry/* index 1742 */,
	invalid_PTN_TABLE_entry/* index 1743 */,
	invalid_PTN_TABLE_entry/* index 1744 */,
	invalid_PTN_TABLE_entry/* index 1745 */,
	invalid_PTN_TABLE_entry/* index 1746 */,
	invalid_PTN_TABLE_entry/* index 1747 */,
	invalid_PTN_TABLE_entry/* index 1748 */,
	invalid_PTN_TABLE_entry/* index 1749 */,
	invalid_PTN_TABLE_entry/* index 1750 */,
	invalid_PTN_TABLE_entry/* index 1751 */,
	invalid_PTN_TABLE_entry/* index 1752 */,
	invalid_PTN_TABLE_entry/* index 1753 */,
	invalid_PTN_TABLE_entry/* index 1754 */,
	invalid_PTN_TABLE_entry/* index 1755 */,
	invalid_PTN_TABLE_entry/* index 1756 */,
	invalid_PTN_TABLE_entry/* index 1757 */,
	invalid_PTN_TABLE_entry/* index 1758 */,
	invalid_PTN_TABLE_entry/* index 1759 */,
	invalid_PTN_TABLE_entry/* index 1760 */,
	invalid_PTN_TABLE_entry/* index 1761 */,
	invalid_PTN_TABLE_entry/* index 1762 */,
	invalid_PTN_TABLE_entry/* index 1763 */,
	invalid_PTN_TABLE_entry/* index 1764 */,
	invalid_PTN_TABLE_entry/* index 1765 */,
	invalid_PTN_TABLE_entry/* index 1766 */,
	invalid_PTN_TABLE_entry/* index 1767 */,
	invalid_PTN_TABLE_entry/* index 1768 */,
	invalid_PTN_TABLE_entry/* index 1769 */,
	invalid_PTN_TABLE_entry/* index 1770 */,
	invalid_PTN_TABLE_entry/* index 1771 */,
	invalid_PTN_TABLE_entry/* index 1772 */,
	invalid_PTN_TABLE_entry/* index 1773 */,
	invalid_PTN_TABLE_entry/* index 1774 */,
	invalid_PTN_TABLE_entry/* index 1775 */,
	invalid_PTN_TABLE_entry/* index 1776 */,
	invalid_PTN_TABLE_entry/* index 1777 */,
	invalid_PTN_TABLE_entry/* index 1778 */,
	invalid_PTN_TABLE_entry/* index 1779 */,
	invalid_PTN_TABLE_entry/* index 1780 */,
	invalid_PTN_TABLE_entry/* index 1781 */,
	invalid_PTN_TABLE_entry/* index 1782 */,
	invalid_PTN_TABLE_entry/* index 1783 */,
	invalid_PTN_TABLE_entry/* index 1784 */,
	invalid_PTN_TABLE_entry/* index 1785 */,
	invalid_PTN_TABLE_entry/* index 1786 */,
	invalid_PTN_TABLE_entry/* index 1787 */,
	invalid_PTN_TABLE_entry/* index 1788 */,
	invalid_PTN_TABLE_entry/* index 1789 */,
	invalid_PTN_TABLE_entry/* index 1790 */,
	invalid_PTN_TABLE_entry/* index 1791 */,
	709/* index 1792 */,
	710/* index 1793 */,
	711/* index 1794 */,
	712/* index 1795 */,
	713/* index 1796 */,
	714/* index 1797 */,
	715/* index 1798 */,
	invalid_PTN_TABLE_entry/* index 1799 */,
	716/* index 1800 */,
	717/* index 1801 */,
	718/* index 1802 */,
	invalid_PTN_TABLE_entry/* index 1803 */,
	719/* index 1804 */,
	invalid_PTN_TABLE_entry/* index 1805 */,
	invalid_PTN_TABLE_entry/* index 1806 */,
	invalid_PTN_TABLE_entry/* index 1807 */,
	720/* index 1808 */,
	721/* index 1809 */,
	722/* index 1810 */,
	723/* index 1811 */,
	724/* index 1812 */,
	725/* index 1813 */,
	726/* index 1814 */,
	invalid_PTN_TABLE_entry/* index 1815 */,
	727/* index 1816 */,
	728/* index 1817 */,
	729/* index 1818 */,
	invalid_PTN_TABLE_entry/* index 1819 */,
	730/* index 1820 */,
	invalid_PTN_TABLE_entry/* index 1821 */,
	invalid_PTN_TABLE_entry/* index 1822 */,
	invalid_PTN_TABLE_entry/* index 1823 */,
	731/* index 1824 */,
	732/* index 1825 */,
	733/* index 1826 */,
	invalid_PTN_TABLE_entry/* index 1827 */,
	734/* index 1828 */,
	invalid_PTN_TABLE_entry/* index 1829 */,
	invalid_PTN_TABLE_entry/* index 1830 */,
	invalid_PTN_TABLE_entry/* index 1831 */,
	735/* index 1832 */,
	invalid_PTN_TABLE_entry/* index 1833 */,
	invalid_PTN_TABLE_entry/* index 1834 */,
	invalid_PTN_TABLE_entry/* index 1835 */,
	invalid_PTN_TABLE_entry/* index 1836 */,
	invalid_PTN_TABLE_entry/* index 1837 */,
	invalid_PTN_TABLE_entry/* index 1838 */,
	invalid_PTN_TABLE_entry/* index 1839 */,
	736/* index 1840 */,
	737/* index 1841 */,
	738/* index 1842 */,
	invalid_PTN_TABLE_entry/* index 1843 */,
	739/* index 1844 */,
	invalid_PTN_TABLE_entry/* index 1845 */,
	invalid_PTN_TABLE_entry/* index 1846 */,
	invalid_PTN_TABLE_entry/* index 1847 */,
	740/* index 1848 */,
	invalid_PTN_TABLE_entry/* index 1849 */,
	invalid_PTN_TABLE_entry/* index 1850 */,
	invalid_PTN_TABLE_entry/* index 1851 */,
	invalid_PTN_TABLE_entry/* index 1852 */,
	invalid_PTN_TABLE_entry/* index 1853 */,
	invalid_PTN_TABLE_entry/* index 1854 */,
	invalid_PTN_TABLE_entry/* index 1855 */,
	741/* index 1856 */,
	742/* index 1857 */,
	743/* index 1858 */,
	invalid_PTN_TABLE_entry/* index 1859 */,
	744/* index 1860 */,
	invalid_PTN_TABLE_entry/* index 1861 */,
	invalid_PTN_TABLE_entry/* index 1862 */,
	invalid_PTN_TABLE_entry/* index 1863 */,
	745/* index 1864 */,
	invalid_PTN_TABLE_entry/* index 1865 */,
	invalid_PTN_TABLE_entry/* index 1866 */,
	invalid_PTN_TABLE_entry/* index 1867 */,
	invalid_PTN_TABLE_entry/* index 1868 */,
	invalid_PTN_TABLE_entry/* index 1869 */,
	invalid_PTN_TABLE_entry/* index 1870 */,
	invalid_PTN_TABLE_entry/* index 1871 */,
	746/* index 1872 */,
	747/* index 1873 */,
	748/* index 1874 */,
	invalid_PTN_TABLE_entry/* index 1875 */,
	749/* index 1876 */,
	invalid_PTN_TABLE_entry/* index 1877 */,
	invalid_PTN_TABLE_entry/* index 1878 */,
	invalid_PTN_TABLE_entry/* index 1879 */,
	750/* index 1880 */,
	invalid_PTN_TABLE_entry/* index 1881 */,
	invalid_PTN_TABLE_entry/* index 1882 */,
	invalid_PTN_TABLE_entry/* index 1883 */,
	invalid_PTN_TABLE_entry/* index 1884 */,
	invalid_PTN_TABLE_entry/* index 1885 */,
	invalid_PTN_TABLE_entry/* index 1886 */,
	invalid_PTN_TABLE_entry/* index 1887 */,
	invalid_PTN_TABLE_entry/* index 1888 */,
	invalid_PTN_TABLE_entry/* index 1889 */,
	invalid_PTN_TABLE_entry/* index 1890 */,
	invalid_PTN_TABLE_entry/* index 1891 */,
	invalid_PTN_TABLE_entry/* index 1892 */,
	invalid_PTN_TABLE_entry/* index 1893 */,
	invalid_PTN_TABLE_entry/* index 1894 */,
	invalid_PTN_TABLE_entry/* index 1895 */,
	invalid_PTN_TABLE_entry/* index 1896 */,
	invalid_PTN_TABLE_entry/* index 1897 */,
	invalid_PTN_TABLE_entry/* index 1898 */,
	invalid_PTN_TABLE_entry/* index 1899 */,
	invalid_PTN_TABLE_entry/* index 1900 */,
	invalid_PTN_TABLE_entry/* index 1901 */,
	invalid_PTN_TABLE_entry/* index 1902 */,
	invalid_PTN_TABLE_entry/* index 1903 */,
	invalid_PTN_TABLE_entry/* index 1904 */,
	invalid_PTN_TABLE_entry/* index 1905 */,
	invalid_PTN_TABLE_entry/* index 1906 */,
	invalid_PTN_TABLE_entry/* index 1907 */,
	invalid_PTN_TABLE_entry/* index 1908 */,
	invalid_PTN_TABLE_entry/* index 1909 */,
	invalid_PTN_TABLE_entry/* index 1910 */,
	invalid_PTN_TABLE_entry/* index 1911 */,
	invalid_PTN_TABLE_entry/* index 1912 */,
	invalid_PTN_TABLE_entry/* index 1913 */,
	invalid_PTN_TABLE_entry/* index 1914 */,
	invalid_PTN_TABLE_entry/* index 1915 */,
	invalid_PTN_TABLE_entry/* index 1916 */,
	invalid_PTN_TABLE_entry/* index 1917 */,
	invalid_PTN_TABLE_entry/* index 1918 */,
	invalid_PTN_TABLE_entry/* index 1919 */,
	invalid_PTN_TABLE_entry/* index 1920 */,
	invalid_PTN_TABLE_entry/* index 1921 */,
	invalid_PTN_TABLE_entry/* index 1922 */,
	invalid_PTN_TABLE_entry/* index 1923 */,
	invalid_PTN_TABLE_entry/* index 1924 */,
	invalid_PTN_TABLE_entry/* index 1925 */,
	invalid_PTN_TABLE_entry/* index 1926 */,
	invalid_PTN_TABLE_entry/* index 1927 */,
	invalid_PTN_TABLE_entry/* index 1928 */,
	invalid_PTN_TABLE_entry/* index 1929 */,
	invalid_PTN_TABLE_entry/* index 1930 */,
	invalid_PTN_TABLE_entry/* index 1931 */,
	invalid_PTN_TABLE_entry/* index 1932 */,
	invalid_PTN_TABLE_entry/* index 1933 */,
	invalid_PTN_TABLE_entry/* index 1934 */,
	invalid_PTN_TABLE_entry/* index 1935 */,
	invalid_PTN_TABLE_entry/* index 1936 */,
	invalid_PTN_TABLE_entry/* index 1937 */,
	invalid_PTN_TABLE_entry/* index 1938 */,
	invalid_PTN_TABLE_entry/* index 1939 */,
	invalid_PTN_TABLE_entry/* index 1940 */,
	invalid_PTN_TABLE_entry/* index 1941 */,
	invalid_PTN_TABLE_entry/* index 1942 */,
	invalid_PTN_TABLE_entry/* index 1943 */,
	invalid_PTN_TABLE_entry/* index 1944 */,
	invalid_PTN_TABLE_entry/* index 1945 */,
	invalid_PTN_TABLE_entry/* index 1946 */,
	invalid_PTN_TABLE_entry/* index 1947 */,
	invalid_PTN_TABLE_entry/* index 1948 */,
	invalid_PTN_TABLE_entry/* index 1949 */,
	invalid_PTN_TABLE_entry/* index 1950 */,
	invalid_PTN_TABLE_entry/* index 1951 */,
	invalid_PTN_TABLE_entry/* index 1952 */,
	invalid_PTN_TABLE_entry/* index 1953 */,
	invalid_PTN_TABLE_entry/* index 1954 */,
	invalid_PTN_TABLE_entry/* index 1955 */,
	invalid_PTN_TABLE_entry/* index 1956 */,
	invalid_PTN_TABLE_entry/* index 1957 */,
	invalid_PTN_TABLE_entry/* index 1958 */,
	invalid_PTN_TABLE_entry/* index 1959 */,
	invalid_PTN_TABLE_entry/* index 1960 */,
	invalid_PTN_TABLE_entry/* index 1961 */,
	invalid_PTN_TABLE_entry/* index 1962 */,
	invalid_PTN_TABLE_entry/* index 1963 */,
	invalid_PTN_TABLE_entry/* index 1964 */,
	invalid_PTN_TABLE_entry/* index 1965 */,
	invalid_PTN_TABLE_entry/* index 1966 */,
	invalid_PTN_TABLE_entry/* index 1967 */,
	invalid_PTN_TABLE_entry/* index 1968 */,
	invalid_PTN_TABLE_entry/* index 1969 */,
	invalid_PTN_TABLE_entry/* index 1970 */,
	invalid_PTN_TABLE_entry/* index 1971 */,
	invalid_PTN_TABLE_entry/* index 1972 */,
	invalid_PTN_TABLE_entry/* index 1973 */,
	invalid_PTN_TABLE_entry/* index 1974 */,
	invalid_PTN_TABLE_entry/* index 1975 */,
	invalid_PTN_TABLE_entry/* index 1976 */,
	invalid_PTN_TABLE_entry/* index 1977 */,
	invalid_PTN_TABLE_entry/* index 1978 */,
	invalid_PTN_TABLE_entry/* index 1979 */,
	invalid_PTN_TABLE_entry/* index 1980 */,
	invalid_PTN_TABLE_entry/* index 1981 */,
	invalid_PTN_TABLE_entry/* index 1982 */,
	invalid_PTN_TABLE_entry/* index 1983 */,
	invalid_PTN_TABLE_entry/* index 1984 */,
	invalid_PTN_TABLE_entry/* index 1985 */,
	invalid_PTN_TABLE_entry/* index 1986 */,
	invalid_PTN_TABLE_entry/* index 1987 */,
	invalid_PTN_TABLE_entry/* index 1988 */,
	invalid_PTN_TABLE_entry/* index 1989 */,
	invalid_PTN_TABLE_entry/* index 1990 */,
	invalid_PTN_TABLE_entry/* index 1991 */,
	invalid_PTN_TABLE_entry/* index 1992 */,
	invalid_PTN_TABLE_entry/* index 1993 */,
	invalid_PTN_TABLE_entry/* index 1994 */,
	invalid_PTN_TABLE_entry/* index 1995 */,
	invalid_PTN_TABLE_entry/* index 1996 */,
	invalid_PTN_TABLE_entry/* index 1997 */,
	invalid_PTN_TABLE_entry/* index 1998 */,
	invalid_PTN_TABLE_entry/* index 1999 */,
	invalid_PTN_TABLE_entry/* index 2000 */,
	invalid_PTN_TABLE_entry/* index 2001 */,
	invalid_PTN_TABLE_entry/* index 2002 */,
	invalid_PTN_TABLE_entry/* index 2003 */,
	invalid_PTN_TABLE_entry/* index 2004 */,
	invalid_PTN_TABLE_entry/* index 2005 */,
	invalid_PTN_TABLE_entry/* index 2006 */,
	invalid_PTN_TABLE_entry/* index 2007 */,
	invalid_PTN_TABLE_entry/* index 2008 */,
	invalid_PTN_TABLE_entry/* index 2009 */,
	invalid_PTN_TABLE_entry/* index 2010 */,
	invalid_PTN_TABLE_entry/* index 2011 */,
	invalid_PTN_TABLE_entry/* index 2012 */,
	invalid_PTN_TABLE_entry/* index 2013 */,
	invalid_PTN_TABLE_entry/* index 2014 */,
	invalid_PTN_TABLE_entry/* index 2015 */,
	invalid_PTN_TABLE_entry/* index 2016 */,
	invalid_PTN_TABLE_entry/* index 2017 */,
	invalid_PTN_TABLE_entry/* index 2018 */,
	invalid_PTN_TABLE_entry/* index 2019 */,
	invalid_PTN_TABLE_entry/* index 2020 */,
	invalid_PTN_TABLE_entry/* index 2021 */,
	invalid_PTN_TABLE_entry/* index 2022 */,
	invalid_PTN_TABLE_entry/* index 2023 */,
	invalid_PTN_TABLE_entry/* index 2024 */,
	invalid_PTN_TABLE_entry/* index 2025 */,
	invalid_PTN_TABLE_entry/* index 2026 */,
	invalid_PTN_TABLE_entry/* index 2027 */,
	invalid_PTN_TABLE_entry/* index 2028 */,
	invalid_PTN_TABLE_entry/* index 2029 */,
	invalid_PTN_TABLE_entry/* index 2030 */,
	invalid_PTN_TABLE_entry/* index 2031 */,
	invalid_PTN_TABLE_entry/* index 2032 */,
	invalid_PTN_TABLE_entry/* index 2033 */,
	invalid_PTN_TABLE_entry/* index 2034 */,
	invalid_PTN_TABLE_entry/* index 2035 */,
	invalid_PTN_TABLE_entry/* index 2036 */,
	invalid_PTN_TABLE_entry/* index 2037 */,
	invalid_PTN_TABLE_entry/* index 2038 */,
	invalid_PTN_TABLE_entry/* index 2039 */,
	invalid_PTN_TABLE_entry/* index 2040 */,
	invalid_PTN_TABLE_entry/* index 2041 */,
	invalid_PTN_TABLE_entry/* index 2042 */,
	invalid_PTN_TABLE_entry/* index 2043 */,
	invalid_PTN_TABLE_entry/* index 2044 */,
	invalid_PTN_TABLE_entry/* index 2045 */,
	invalid_PTN_TABLE_entry/* index 2046 */,
	invalid_PTN_TABLE_entry/* index 2047 */
};

PTN_TABLE_LINE PTN_table_body[] = {
	{21, ptn1} /* position 0 */,
	{21, ptn2} /* position 1 */,
	{47, ptn3} /* position 2 */,
	{21, ptn4} /* position 3 */,
	{47, ptn5} /* position 4 */,
	{47, ptn6} /* position 5 */,
	{24, ptn7} /* position 6 */,
	{21, ptn8} /* position 7 */,
	{47, ptn9} /* position 8 */,
	{47, ptn10} /* position 9 */,
	{24, ptn11} /* position 10 */,
	{47, ptn12} /* position 11 */,
	{24, ptn13} /* position 12 */,
	{24, ptn14} /* position 13 */,
	{3, ptn15} /* position 14 */,
	{12, ptn16} /* position 15 */,
	{20, ptn17} /* position 16 */,
	{20, ptn18} /* position 17 */,
	{43, ptn19} /* position 18 */,
	{20, ptn20} /* position 19 */,
	{43, ptn21} /* position 20 */,
	{43, ptn22} /* position 21 */,
	{19, ptn23} /* position 22 */,
	{20, ptn24} /* position 23 */,
	{43, ptn25} /* position 24 */,
	{43, ptn26} /* position 25 */,
	{19, ptn27} /* position 26 */,
	{43, ptn28} /* position 27 */,
	{19, ptn29} /* position 28 */,
	{19, ptn30} /* position 29 */,
	{2, ptn31} /* position 30 */,
	{38, ptn32} /* position 31 */,
	{38, ptn33} /* position 32 */,
	{38, ptn34} /* position 33 */,
	{37, ptn35} /* position 34 */,
	{38, ptn36} /* position 35 */,
	{37, ptn37} /* position 36 */,
	{37, ptn38} /* position 37 */,
	{15, ptn39} /* position 38 */,
	{38, ptn40} /* position 39 */,
	{37, ptn41} /* position 40 */,
	{37, ptn42} /* position 41 */,
	{15, ptn43} /* position 42 */,
	{37, ptn44} /* position 43 */,
	{15, ptn45} /* position 44 */,
	{15, ptn46} /* position 45 */,
	{2, ptn47} /* position 46 */,
	{32, ptn48} /* position 47 */,
	{32, ptn49} /* position 48 */,
	{32, ptn50} /* position 49 */,
	{31, ptn51} /* position 50 */,
	{32, ptn52} /* position 51 */,
	{31, ptn53} /* position 52 */,
	{31, ptn54} /* position 53 */,
	{11, ptn55} /* position 54 */,
	{32, ptn56} /* position 55 */,
	{31, ptn57} /* position 56 */,
	{31, ptn58} /* position 57 */,
	{11, ptn59} /* position 58 */,
	{31, ptn60} /* position 59 */,
	{11, ptn61} /* position 60 */,
	{11, ptn62} /* position 61 */,
	{1, ptn63} /* position 62 */,
	{4, ptn64} /* position 63 */,
	{4, ptn65} /* position 64 */,
	{4, ptn66} /* position 65 */,
	{25, ptn67} /* position 66 */,
	{4, ptn68} /* position 67 */,
	{25, ptn69} /* position 68 */,
	{25, ptn70} /* position 69 */,
	{5, ptn71} /* position 70 */,
	{4, ptn72} /* position 71 */,
	{25, ptn73} /* position 72 */,
	{25, ptn74} /* position 73 */,
	{5, ptn75} /* position 74 */,
	{25, ptn76} /* position 75 */,
	{5, ptn77} /* position 76 */,
	{5, ptn78} /* position 77 */,
	{4, ptn80} /* position 78 */,
	{4, ptn81} /* position 79 */,
	{4, ptn82} /* position 80 */,
	{20, ptn83} /* position 81 */,
	{4, ptn84} /* position 82 */,
	{20, ptn85} /* position 83 */,
	{20, ptn86} /* position 84 */,
	{4, ptn87} /* position 85 */,
	{4, ptn88} /* position 86 */,
	{20, ptn89} /* position 87 */,
	{20, ptn90} /* position 88 */,
	{4, ptn91} /* position 89 */,
	{20, ptn92} /* position 90 */,
	{4, ptn93} /* position 91 */,
	{4, ptn94} /* position 92 */,
	{14, ptn96} /* position 93 */,
	{14, ptn97} /* position 94 */,
	{14, ptn98} /* position 95 */,
	{14, ptn99} /* position 96 */,
	{14, ptn100} /* position 97 */,
	{14, ptn101} /* position 98 */,
	{14, ptn102} /* position 99 */,
	{3, ptn103} /* position 100 */,
	{14, ptn104} /* position 101 */,
	{14, ptn105} /* position 102 */,
	{14, ptn106} /* position 103 */,
	{3, ptn107} /* position 104 */,
	{14, ptn108} /* position 105 */,
	{3, ptn109} /* position 106 */,
	{3, ptn110} /* position 107 */,
	{11, ptn112} /* position 108 */,
	{11, ptn113} /* position 109 */,
	{11, ptn114} /* position 110 */,
	{11, ptn115} /* position 111 */,
	{11, ptn116} /* position 112 */,
	{11, ptn117} /* position 113 */,
	{11, ptn118} /* position 114 */,
	{2, ptn119} /* position 115 */,
	{11, ptn120} /* position 116 */,
	{11, ptn121} /* position 117 */,
	{11, ptn122} /* position 118 */,
	{2, ptn123} /* position 119 */,
	{11, ptn124} /* position 120 */,
	{2, ptn125} /* position 121 */,
	{2, ptn126} /* position 122 */,
	{22, ptn128} /* position 123 */,
	{22, ptn129} /* position 124 */,
	{22, ptn130} /* position 125 */,
	{19, ptn131} /* position 126 */,
	{22, ptn132} /* position 127 */,
	{19, ptn133} /* position 128 */,
	{19, ptn134} /* position 129 */,
	{5, ptn135} /* position 130 */,
	{22, ptn136} /* position 131 */,
	{19, ptn137} /* position 132 */,
	{19, ptn138} /* position 133 */,
	{5, ptn139} /* position 134 */,
	{19, ptn140} /* position 135 */,
	{5, ptn141} /* position 136 */,
	{5, ptn142} /* position 137 */,
	{18, ptn144} /* position 138 */,
	{18, ptn145} /* position 139 */,
	{18, ptn146} /* position 140 */,
	{15, ptn147} /* position 141 */,
	{18, ptn148} /* position 142 */,
	{15, ptn149} /* position 143 */,
	{15, ptn150} /* position 144 */,
	{3, ptn151} /* position 145 */,
	{18, ptn152} /* position 146 */,
	{15, ptn153} /* position 147 */,
	{15, ptn154} /* position 148 */,
	{3, ptn155} /* position 149 */,
	{15, ptn156} /* position 150 */,
	{3, ptn157} /* position 151 */,
	{3, ptn158} /* position 152 */,
	{17, ptn160} /* position 153 */,
	{17, ptn161} /* position 154 */,
	{17, ptn162} /* position 155 */,
	{15, ptn163} /* position 156 */,
	{17, ptn164} /* position 157 */,
	{15, ptn165} /* position 158 */,
	{15, ptn166} /* position 159 */,
	{4, ptn167} /* position 160 */,
	{17, ptn168} /* position 161 */,
	{15, ptn169} /* position 162 */,
	{15, ptn170} /* position 163 */,
	{4, ptn171} /* position 164 */,
	{15, ptn172} /* position 165 */,
	{4, ptn173} /* position 166 */,
	{4, ptn174} /* position 167 */,
	{13, ptn176} /* position 168 */,
	{13, ptn177} /* position 169 */,
	{13, ptn178} /* position 170 */,
	{11, ptn179} /* position 171 */,
	{13, ptn180} /* position 172 */,
	{11, ptn181} /* position 173 */,
	{11, ptn182} /* position 174 */,
	{2, ptn183} /* position 175 */,
	{13, ptn184} /* position 176 */,
	{11, ptn185} /* position 177 */,
	{11, ptn186} /* position 178 */,
	{2, ptn187} /* position 179 */,
	{11, ptn188} /* position 180 */,
	{2, ptn189} /* position 181 */,
	{2, ptn190} /* position 182 */,
	{8, ptn192} /* position 183 */,
	{8, ptn193} /* position 184 */,
	{8, ptn194} /* position 185 */,
	{8, ptn195} /* position 186 */,
	{8, ptn196} /* position 187 */,
	{8, ptn197} /* position 188 */,
	{8, ptn198} /* position 189 */,
	{8, ptn200} /* position 190 */,
	{8, ptn201} /* position 191 */,
	{8, ptn202} /* position 192 */,
	{8, ptn204} /* position 193 */,
	{6, ptn208} /* position 194 */,
	{6, ptn209} /* position 195 */,
	{6, ptn210} /* position 196 */,
	{6, ptn211} /* position 197 */,
	{6, ptn212} /* position 198 */,
	{6, ptn213} /* position 199 */,
	{6, ptn214} /* position 200 */,
	{6, ptn216} /* position 201 */,
	{6, ptn217} /* position 202 */,
	{6, ptn218} /* position 203 */,
	{6, ptn220} /* position 204 */,
	{6, ptn224} /* position 205 */,
	{6, ptn225} /* position 206 */,
	{6, ptn226} /* position 207 */,
	{6, ptn227} /* position 208 */,
	{6, ptn228} /* position 209 */,
	{6, ptn229} /* position 210 */,
	{6, ptn230} /* position 211 */,
	{6, ptn232} /* position 212 */,
	{6, ptn233} /* position 213 */,
	{6, ptn234} /* position 214 */,
	{6, ptn236} /* position 215 */,
	{4, ptn240} /* position 216 */,
	{4, ptn241} /* position 217 */,
	{4, ptn242} /* position 218 */,
	{4, ptn243} /* position 219 */,
	{4, ptn244} /* position 220 */,
	{4, ptn245} /* position 221 */,
	{4, ptn246} /* position 222 */,
	{4, ptn248} /* position 223 */,
	{4, ptn249} /* position 224 */,
	{4, ptn250} /* position 225 */,
	{4, ptn252} /* position 226 */,
	{7, ptn256} /* position 227 */,
	{5, ptn257} /* position 228 */,
	{5, ptn258} /* position 229 */,
	{1, ptn259} /* position 230 */,
	{5, ptn260} /* position 231 */,
	{1, ptn261} /* position 232 */,
	{1, ptn262} /* position 233 */,
	{5, ptn264} /* position 234 */,
	{1, ptn265} /* position 235 */,
	{1, ptn266} /* position 236 */,
	{1, ptn268} /* position 237 */,
	{6, ptn272} /* position 238 */,
	{5, ptn273} /* position 239 */,
	{5, ptn274} /* position 240 */,
	{1, ptn275} /* position 241 */,
	{5, ptn276} /* position 242 */,
	{1, ptn277} /* position 243 */,
	{1, ptn278} /* position 244 */,
	{5, ptn280} /* position 245 */,
	{1, ptn281} /* position 246 */,
	{1, ptn282} /* position 247 */,
	{1, ptn284} /* position 248 */,
	{1, ptn288} /* position 249 */,
	{1, ptn289} /* position 250 */,
	{1, ptn290} /* position 251 */,
	{1, ptn292} /* position 252 */,
	{1, ptn296} /* position 253 */,
	{1, ptn304} /* position 254 */,
	{1, ptn305} /* position 255 */,
	{1, ptn306} /* position 256 */,
	{1, ptn308} /* position 257 */,
	{1, ptn312} /* position 258 */,
	{2, ptn320} /* position 259 */,
	{2, ptn321} /* position 260 */,
	{2, ptn322} /* position 261 */,
	{2, ptn324} /* position 262 */,
	{2, ptn328} /* position 263 */,
	{2, ptn336} /* position 264 */,
	{2, ptn337} /* position 265 */,
	{2, ptn338} /* position 266 */,
	{2, ptn340} /* position 267 */,
	{2, ptn344} /* position 268 */,
	{14, ptn512} /* position 269 */,
	{12, ptn513} /* position 270 */,
	{12, ptn514} /* position 271 */,
	{6, ptn515} /* position 272 */,
	{12, ptn516} /* position 273 */,
	{6, ptn517} /* position 274 */,
	{6, ptn518} /* position 275 */,
	{1, ptn519} /* position 276 */,
	{12, ptn520} /* position 277 */,
	{6, ptn521} /* position 278 */,
	{6, ptn522} /* position 279 */,
	{1, ptn523} /* position 280 */,
	{6, ptn524} /* position 281 */,
	{1, ptn525} /* position 282 */,
	{1, ptn526} /* position 283 */,
	{12, ptn528} /* position 284 */,
	{11, ptn529} /* position 285 */,
	{11, ptn530} /* position 286 */,
	{6, ptn531} /* position 287 */,
	{11, ptn532} /* position 288 */,
	{6, ptn533} /* position 289 */,
	{6, ptn534} /* position 290 */,
	{1, ptn535} /* position 291 */,
	{11, ptn536} /* position 292 */,
	{6, ptn537} /* position 293 */,
	{6, ptn538} /* position 294 */,
	{1, ptn539} /* position 295 */,
	{6, ptn540} /* position 296 */,
	{1, ptn541} /* position 297 */,
	{1, ptn542} /* position 298 */,
	{2, ptn544} /* position 299 */,
	{2, ptn545} /* position 300 */,
	{2, ptn546} /* position 301 */,
	{1, ptn547} /* position 302 */,
	{2, ptn548} /* position 303 */,
	{1, ptn549} /* position 304 */,
	{1, ptn550} /* position 305 */,
	{2, ptn552} /* position 306 */,
	{1, ptn553} /* position 307 */,
	{1, ptn554} /* position 308 */,
	{1, ptn556} /* position 309 */,
	{2, ptn560} /* position 310 */,
	{2, ptn561} /* position 311 */,
	{2, ptn562} /* position 312 */,
	{1, ptn563} /* position 313 */,
	{2, ptn564} /* position 314 */,
	{1, ptn565} /* position 315 */,
	{1, ptn566} /* position 316 */,
	{2, ptn568} /* position 317 */,
	{1, ptn569} /* position 318 */,
	{1, ptn570} /* position 319 */,
	{1, ptn572} /* position 320 */,
	{4, ptn576} /* position 321 */,
	{4, ptn577} /* position 322 */,
	{4, ptn578} /* position 323 */,
	{2, ptn579} /* position 324 */,
	{4, ptn580} /* position 325 */,
	{2, ptn581} /* position 326 */,
	{2, ptn582} /* position 327 */,
	{4, ptn584} /* position 328 */,
	{2, ptn585} /* position 329 */,
	{2, ptn586} /* position 330 */,
	{2, ptn588} /* position 331 */,
	{4, ptn592} /* position 332 */,
	{4, ptn593} /* position 333 */,
	{4, ptn594} /* position 334 */,
	{2, ptn595} /* position 335 */,
	{4, ptn596} /* position 336 */,
	{2, ptn597} /* position 337 */,
	{2, ptn598} /* position 338 */,
	{4, ptn600} /* position 339 */,
	{2, ptn601} /* position 340 */,
	{2, ptn602} /* position 341 */,
	{2, ptn604} /* position 342 */,
	{7, ptn768} /* position 343 */,
	{5, ptn769} /* position 344 */,
	{5, ptn770} /* position 345 */,
	{1, ptn771} /* position 346 */,
	{5, ptn772} /* position 347 */,
	{1, ptn773} /* position 348 */,
	{1, ptn774} /* position 349 */,
	{5, ptn776} /* position 350 */,
	{1, ptn777} /* position 351 */,
	{1, ptn778} /* position 352 */,
	{1, ptn780} /* position 353 */,
	{6, ptn784} /* position 354 */,
	{5, ptn785} /* position 355 */,
	{5, ptn786} /* position 356 */,
	{1, ptn787} /* position 357 */,
	{5, ptn788} /* position 358 */,
	{1, ptn789} /* position 359 */,
	{1, ptn790} /* position 360 */,
	{5, ptn792} /* position 361 */,
	{1, ptn793} /* position 362 */,
	{1, ptn794} /* position 363 */,
	{1, ptn796} /* position 364 */,
	{1, ptn800} /* position 365 */,
	{1, ptn801} /* position 366 */,
	{1, ptn802} /* position 367 */,
	{1, ptn804} /* position 368 */,
	{1, ptn808} /* position 369 */,
	{1, ptn816} /* position 370 */,
	{1, ptn817} /* position 371 */,
	{1, ptn818} /* position 372 */,
	{1, ptn820} /* position 373 */,
	{1, ptn824} /* position 374 */,
	{2, ptn832} /* position 375 */,
	{2, ptn833} /* position 376 */,
	{2, ptn834} /* position 377 */,
	{2, ptn836} /* position 378 */,
	{2, ptn840} /* position 379 */,
	{2, ptn848} /* position 380 */,
	{2, ptn849} /* position 381 */,
	{2, ptn850} /* position 382 */,
	{2, ptn852} /* position 383 */,
	{2, ptn856} /* position 384 */,
	{34, ptn1024} /* position 385 */,
	{32, ptn1025} /* position 386 */,
	{32, ptn1026} /* position 387 */,
	{33, ptn1027} /* position 388 */,
	{32, ptn1028} /* position 389 */,
	{33, ptn1029} /* position 390 */,
	{33, ptn1030} /* position 391 */,
	{16, ptn1031} /* position 392 */,
	{32, ptn1032} /* position 393 */,
	{33, ptn1033} /* position 394 */,
	{33, ptn1034} /* position 395 */,
	{16, ptn1035} /* position 396 */,
	{33, ptn1036} /* position 397 */,
	{16, ptn1037} /* position 398 */,
	{16, ptn1038} /* position 399 */,
	{2, ptn1039} /* position 400 */,
	{34, ptn1040} /* position 401 */,
	{33, ptn1041} /* position 402 */,
	{33, ptn1042} /* position 403 */,
	{30, ptn1043} /* position 404 */,
	{33, ptn1044} /* position 405 */,
	{30, ptn1045} /* position 406 */,
	{30, ptn1046} /* position 407 */,
	{11, ptn1047} /* position 408 */,
	{33, ptn1048} /* position 409 */,
	{30, ptn1049} /* position 410 */,
	{30, ptn1050} /* position 411 */,
	{11, ptn1051} /* position 412 */,
	{30, ptn1052} /* position 413 */,
	{11, ptn1053} /* position 414 */,
	{11, ptn1054} /* position 415 */,
	{1, ptn1055} /* position 416 */,
	{21, ptn1056} /* position 417 */,
	{21, ptn1057} /* position 418 */,
	{21, ptn1058} /* position 419 */,
	{19, ptn1059} /* position 420 */,
	{21, ptn1060} /* position 421 */,
	{19, ptn1061} /* position 422 */,
	{19, ptn1062} /* position 423 */,
	{8, ptn1063} /* position 424 */,
	{21, ptn1064} /* position 425 */,
	{19, ptn1065} /* position 426 */,
	{19, ptn1066} /* position 427 */,
	{8, ptn1067} /* position 428 */,
	{19, ptn1068} /* position 429 */,
	{8, ptn1069} /* position 430 */,
	{8, ptn1070} /* position 431 */,
	{1, ptn1071} /* position 432 */,
	{15, ptn1072} /* position 433 */,
	{15, ptn1073} /* position 434 */,
	{15, ptn1074} /* position 435 */,
	{13, ptn1075} /* position 436 */,
	{15, ptn1076} /* position 437 */,
	{13, ptn1077} /* position 438 */,
	{13, ptn1078} /* position 439 */,
	{4, ptn1079} /* position 440 */,
	{15, ptn1080} /* position 441 */,
	{13, ptn1081} /* position 442 */,
	{13, ptn1082} /* position 443 */,
	{4, ptn1083} /* position 444 */,
	{13, ptn1084} /* position 445 */,
	{4, ptn1085} /* position 446 */,
	{4, ptn1086} /* position 447 */,
	{11, ptn1088} /* position 448 */,
	{11, ptn1089} /* position 449 */,
	{11, ptn1090} /* position 450 */,
	{14, ptn1091} /* position 451 */,
	{11, ptn1092} /* position 452 */,
	{14, ptn1093} /* position 453 */,
	{14, ptn1094} /* position 454 */,
	{3, ptn1095} /* position 455 */,
	{11, ptn1096} /* position 456 */,
	{14, ptn1097} /* position 457 */,
	{14, ptn1098} /* position 458 */,
	{3, ptn1099} /* position 459 */,
	{14, ptn1100} /* position 460 */,
	{3, ptn1101} /* position 461 */,
	{3, ptn1102} /* position 462 */,
	{12, ptn1104} /* position 463 */,
	{12, ptn1105} /* position 464 */,
	{12, ptn1106} /* position 465 */,
	{10, ptn1107} /* position 466 */,
	{12, ptn1108} /* position 467 */,
	{10, ptn1109} /* position 468 */,
	{10, ptn1110} /* position 469 */,
	{2, ptn1111} /* position 470 */,
	{12, ptn1112} /* position 471 */,
	{10, ptn1113} /* position 472 */,
	{10, ptn1114} /* position 473 */,
	{2, ptn1115} /* position 474 */,
	{10, ptn1116} /* position 475 */,
	{2, ptn1117} /* position 476 */,
	{2, ptn1118} /* position 477 */,
	{6, ptn1120} /* position 478 */,
	{6, ptn1121} /* position 479 */,
	{6, ptn1122} /* position 480 */,
	{6, ptn1123} /* position 481 */,
	{6, ptn1124} /* position 482 */,
	{6, ptn1125} /* position 483 */,
	{6, ptn1126} /* position 484 */,
	{1, ptn1127} /* position 485 */,
	{6, ptn1128} /* position 486 */,
	{6, ptn1129} /* position 487 */,
	{6, ptn1130} /* position 488 */,
	{1, ptn1131} /* position 489 */,
	{6, ptn1132} /* position 490 */,
	{1, ptn1133} /* position 491 */,
	{1, ptn1134} /* position 492 */,
	{3, ptn1136} /* position 493 */,
	{3, ptn1137} /* position 494 */,
	{3, ptn1138} /* position 495 */,
	{3, ptn1139} /* position 496 */,
	{3, ptn1140} /* position 497 */,
	{3, ptn1141} /* position 498 */,
	{3, ptn1142} /* position 499 */,
	{3, ptn1144} /* position 500 */,
	{3, ptn1145} /* position 501 */,
	{3, ptn1146} /* position 502 */,
	{3, ptn1148} /* position 503 */,
	{12, ptn1152} /* position 504 */,
	{12, ptn1153} /* position 505 */,
	{12, ptn1154} /* position 506 */,
	{11, ptn1155} /* position 507 */,
	{12, ptn1156} /* position 508 */,
	{11, ptn1157} /* position 509 */,
	{11, ptn1158} /* position 510 */,
	{3, ptn1159} /* position 511 */,
	{12, ptn1160} /* position 512 */,
	{11, ptn1161} /* position 513 */,
	{11, ptn1162} /* position 514 */,
	{3, ptn1163} /* position 515 */,
	{11, ptn1164} /* position 516 */,
	{3, ptn1165} /* position 517 */,
	{3, ptn1166} /* position 518 */,
	{8, ptn1168} /* position 519 */,
	{8, ptn1169} /* position 520 */,
	{8, ptn1170} /* position 521 */,
	{7, ptn1171} /* position 522 */,
	{8, ptn1172} /* position 523 */,
	{7, ptn1173} /* position 524 */,
	{7, ptn1174} /* position 525 */,
	{1, ptn1175} /* position 526 */,
	{8, ptn1176} /* position 527 */,
	{7, ptn1177} /* position 528 */,
	{7, ptn1178} /* position 529 */,
	{1, ptn1179} /* position 530 */,
	{7, ptn1180} /* position 531 */,
	{1, ptn1181} /* position 532 */,
	{1, ptn1182} /* position 533 */,
	{7, ptn1184} /* position 534 */,
	{7, ptn1185} /* position 535 */,
	{7, ptn1186} /* position 536 */,
	{7, ptn1187} /* position 537 */,
	{7, ptn1188} /* position 538 */,
	{7, ptn1189} /* position 539 */,
	{7, ptn1190} /* position 540 */,
	{2, ptn1191} /* position 541 */,
	{7, ptn1192} /* position 542 */,
	{7, ptn1193} /* position 543 */,
	{7, ptn1194} /* position 544 */,
	{2, ptn1195} /* position 545 */,
	{7, ptn1196} /* position 546 */,
	{2, ptn1197} /* position 547 */,
	{2, ptn1198} /* position 548 */,
	{3, ptn1200} /* position 549 */,
	{3, ptn1201} /* position 550 */,
	{3, ptn1202} /* position 551 */,
	{3, ptn1203} /* position 552 */,
	{3, ptn1204} /* position 553 */,
	{3, ptn1205} /* position 554 */,
	{3, ptn1206} /* position 555 */,
	{3, ptn1208} /* position 556 */,
	{3, ptn1209} /* position 557 */,
	{3, ptn1210} /* position 558 */,
	{3, ptn1212} /* position 559 */,
	{4, ptn1216} /* position 560 */,
	{4, ptn1217} /* position 561 */,
	{4, ptn1218} /* position 562 */,
	{4, ptn1219} /* position 563 */,
	{4, ptn1220} /* position 564 */,
	{4, ptn1221} /* position 565 */,
	{4, ptn1222} /* position 566 */,
	{4, ptn1224} /* position 567 */,
	{4, ptn1225} /* position 568 */,
	{4, ptn1226} /* position 569 */,
	{4, ptn1228} /* position 570 */,
	{2, ptn1232} /* position 571 */,
	{2, ptn1233} /* position 572 */,
	{2, ptn1234} /* position 573 */,
	{2, ptn1235} /* position 574 */,
	{2, ptn1236} /* position 575 */,
	{2, ptn1237} /* position 576 */,
	{2, ptn1238} /* position 577 */,
	{2, ptn1240} /* position 578 */,
	{2, ptn1241} /* position 579 */,
	{2, ptn1242} /* position 580 */,
	{2, ptn1244} /* position 581 */,
	{2, ptn1248} /* position 582 */,
	{2, ptn1249} /* position 583 */,
	{2, ptn1250} /* position 584 */,
	{2, ptn1251} /* position 585 */,
	{2, ptn1252} /* position 586 */,
	{2, ptn1253} /* position 587 */,
	{2, ptn1254} /* position 588 */,
	{2, ptn1256} /* position 589 */,
	{2, ptn1257} /* position 590 */,
	{2, ptn1258} /* position 591 */,
	{2, ptn1260} /* position 592 */,
	{7, ptn1280} /* position 593 */,
	{5, ptn1281} /* position 594 */,
	{5, ptn1282} /* position 595 */,
	{1, ptn1283} /* position 596 */,
	{5, ptn1284} /* position 597 */,
	{1, ptn1285} /* position 598 */,
	{1, ptn1286} /* position 599 */,
	{5, ptn1288} /* position 600 */,
	{1, ptn1289} /* position 601 */,
	{1, ptn1290} /* position 602 */,
	{1, ptn1292} /* position 603 */,
	{6, ptn1296} /* position 604 */,
	{5, ptn1297} /* position 605 */,
	{5, ptn1298} /* position 606 */,
	{1, ptn1299} /* position 607 */,
	{5, ptn1300} /* position 608 */,
	{1, ptn1301} /* position 609 */,
	{1, ptn1302} /* position 610 */,
	{5, ptn1304} /* position 611 */,
	{1, ptn1305} /* position 612 */,
	{1, ptn1306} /* position 613 */,
	{1, ptn1308} /* position 614 */,
	{1, ptn1312} /* position 615 */,
	{1, ptn1313} /* position 616 */,
	{1, ptn1314} /* position 617 */,
	{1, ptn1316} /* position 618 */,
	{1, ptn1320} /* position 619 */,
	{1, ptn1328} /* position 620 */,
	{1, ptn1329} /* position 621 */,
	{1, ptn1330} /* position 622 */,
	{1, ptn1332} /* position 623 */,
	{1, ptn1336} /* position 624 */,
	{2, ptn1344} /* position 625 */,
	{2, ptn1345} /* position 626 */,
	{2, ptn1346} /* position 627 */,
	{2, ptn1348} /* position 628 */,
	{2, ptn1352} /* position 629 */,
	{2, ptn1360} /* position 630 */,
	{2, ptn1361} /* position 631 */,
	{2, ptn1362} /* position 632 */,
	{2, ptn1364} /* position 633 */,
	{2, ptn1368} /* position 634 */,
	{14, ptn1536} /* position 635 */,
	{12, ptn1537} /* position 636 */,
	{12, ptn1538} /* position 637 */,
	{6, ptn1539} /* position 638 */,
	{12, ptn1540} /* position 639 */,
	{6, ptn1541} /* position 640 */,
	{6, ptn1542} /* position 641 */,
	{1, ptn1543} /* position 642 */,
	{12, ptn1544} /* position 643 */,
	{6, ptn1545} /* position 644 */,
	{6, ptn1546} /* position 645 */,
	{1, ptn1547} /* position 646 */,
	{6, ptn1548} /* position 647 */,
	{1, ptn1549} /* position 648 */,
	{1, ptn1550} /* position 649 */,
	{12, ptn1552} /* position 650 */,
	{11, ptn1553} /* position 651 */,
	{11, ptn1554} /* position 652 */,
	{6, ptn1555} /* position 653 */,
	{11, ptn1556} /* position 654 */,
	{6, ptn1557} /* position 655 */,
	{6, ptn1558} /* position 656 */,
	{1, ptn1559} /* position 657 */,
	{11, ptn1560} /* position 658 */,
	{6, ptn1561} /* position 659 */,
	{6, ptn1562} /* position 660 */,
	{1, ptn1563} /* position 661 */,
	{6, ptn1564} /* position 662 */,
	{1, ptn1565} /* position 663 */,
	{1, ptn1566} /* position 664 */,
	{2, ptn1568} /* position 665 */,
	{2, ptn1569} /* position 666 */,
	{2, ptn1570} /* position 667 */,
	{1, ptn1571} /* position 668 */,
	{2, ptn1572} /* position 669 */,
	{1, ptn1573} /* position 670 */,
	{1, ptn1574} /* position 671 */,
	{2, ptn1576} /* position 672 */,
	{1, ptn1577} /* position 673 */,
	{1, ptn1578} /* position 674 */,
	{1, ptn1580} /* position 675 */,
	{2, ptn1584} /* position 676 */,
	{2, ptn1585} /* position 677 */,
	{2, ptn1586} /* position 678 */,
	{1, ptn1587} /* position 679 */,
	{2, ptn1588} /* position 680 */,
	{1, ptn1589} /* position 681 */,
	{1, ptn1590} /* position 682 */,
	{2, ptn1592} /* position 683 */,
	{1, ptn1593} /* position 684 */,
	{1, ptn1594} /* position 685 */,
	{1, ptn1596} /* position 686 */,
	{4, ptn1600} /* position 687 */,
	{4, ptn1601} /* position 688 */,
	{4, ptn1602} /* position 689 */,
	{2, ptn1603} /* position 690 */,
	{4, ptn1604} /* position 691 */,
	{2, ptn1605} /* position 692 */,
	{2, ptn1606} /* position 693 */,
	{4, ptn1608} /* position 694 */,
	{2, ptn1609} /* position 695 */,
	{2, ptn1610} /* position 696 */,
	{2, ptn1612} /* position 697 */,
	{4, ptn1616} /* position 698 */,
	{4, ptn1617} /* position 699 */,
	{4, ptn1618} /* position 700 */,
	{2, ptn1619} /* position 701 */,
	{4, ptn1620} /* position 702 */,
	{2, ptn1621} /* position 703 */,
	{2, ptn1622} /* position 704 */,
	{4, ptn1624} /* position 705 */,
	{2, ptn1625} /* position 706 */,
	{2, ptn1626} /* position 707 */,
	{2, ptn1628} /* position 708 */,
	{7, ptn1792} /* position 709 */,
	{5, ptn1793} /* position 710 */,
	{5, ptn1794} /* position 711 */,
	{1, ptn1795} /* position 712 */,
	{5, ptn1796} /* position 713 */,
	{1, ptn1797} /* position 714 */,
	{1, ptn1798} /* position 715 */,
	{5, ptn1800} /* position 716 */,
	{1, ptn1801} /* position 717 */,
	{1, ptn1802} /* position 718 */,
	{1, ptn1804} /* position 719 */,
	{6, ptn1808} /* position 720 */,
	{5, ptn1809} /* position 721 */,
	{5, ptn1810} /* position 722 */,
	{1, ptn1811} /* position 723 */,
	{5, ptn1812} /* position 724 */,
	{1, ptn1813} /* position 725 */,
	{1, ptn1814} /* position 726 */,
	{5, ptn1816} /* position 727 */,
	{1, ptn1817} /* position 728 */,
	{1, ptn1818} /* position 729 */,
	{1, ptn1820} /* position 730 */,
	{1, ptn1824} /* position 731 */,
	{1, ptn1825} /* position 732 */,
	{1, ptn1826} /* position 733 */,
	{1, ptn1828} /* position 734 */,
	{1, ptn1832} /* position 735 */,
	{1, ptn1840} /* position 736 */,
	{1, ptn1841} /* position 737 */,
	{1, ptn1842} /* position 738 */,
	{1, ptn1844} /* position 739 */,
	{1, ptn1848} /* position 740 */,
	{2, ptn1856} /* position 741 */,
	{2, ptn1857} /* position 742 */,
	{2, ptn1858} /* position 743 */,
	{2, ptn1860} /* position 744 */,
	{2, ptn1864} /* position 745 */,
	{2, ptn1872} /* position 746 */,
	{2, ptn1873} /* position 747 */,
	{2, ptn1874} /* position 748 */,
	{2, ptn1876} /* position 749 */,
	{2, ptn1880} /* position 750 */
};

const PTN_TABLE_TYPE PTN_table = {
	PTN_table_map, PTN_table_body
};

UINT            dispersal_table_size = 256;
DISPERSAL_TARG  dispersal_table_body[]={
    { 0xf, 0x10, 0x20, 0xf, 0x800, 0x800}/* mii mii */,
    { 0xf, 0x10, 0x10, 0xf, 0x20, 0x800}/* mi_i mii */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x800}/* mlx mii */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_3 mii */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x800}/* mmi mii */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x800}/* m_mi mii */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x800}/* mfi mii */,
    { 0xf, 0xf, 0x40, 0xf, 0x10, 0x20}/* mmf mii */,
    { 0xf, 0x10, 0x400, 0xf, 0x20, 0x800}/* mib mii */,
    { 0xf, 0x200, 0x400, 0xf, 0x10, 0x20}/* mbb mii */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_a mii */,
    { 0x100, 0x200, 0x400, 0xf, 0x10, 0x20}/* bbb mii */,
    { 0xf, 0xf, 0x400, 0xf, 0x10, 0x20}/* mmb mii */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_d mii */,
    { 0xf, 0x40, 0x400, 0xf, 0x10, 0x20}/* mfb mii */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_f mii */,
    { 0xf, 0x10, 0x20, 0xf, 0x800, 0x20}/* mii mi_i */,
    { 0xf, 0x10, 0x10, 0xf, 0x20, 0x20}/* mi_i mi_i */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x20}/* mlx mi_i */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_3 mi_i */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x20}/* mmi mi_i */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x20}/* m_mi mi_i */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x20}/* mfi mi_i */,
    { 0xf, 0xf, 0x40, 0xf, 0x10, 0x20}/* mmf mi_i */,
    { 0xf, 0x10, 0x400, 0xf, 0x20, 0x20}/* mib mi_i */,
    { 0xf, 0x200, 0x400, 0xf, 0x10, 0x20}/* mbb mi_i */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_a mi_i */,
    { 0x100, 0x200, 0x400, 0xf, 0x10, 0x20}/* bbb mi_i */,
    { 0xf, 0xf, 0x400, 0xf, 0x10, 0x20}/* mmb mi_i */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_d mi_i */,
    { 0xf, 0x40, 0x400, 0xf, 0x10, 0x20}/* mfb mi_i */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x20}/* reserved_f mi_i */,
    { 0xf, 0x10, 0x20, 0xf, 0x80, 0x800}/* mii mlx */,
    { 0xf, 0x10, 0x10, 0xf, 0x80, 0x20}/* mi_i mlx */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x20}/* mlx mlx */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_3 mlx */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x20}/* mmi mlx */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x20}/* m_mi mlx */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x20}/* mfi mlx */,
    { 0xf, 0xf, 0x40, 0xf, 0x80, 0x20}/* mmf mlx */,
    { 0xf, 0x10, 0x400, 0xf, 0x80, 0x20}/* mib mlx */,
    { 0xf, 0x200, 0x400, 0xf, 0x80, 0x20}/* mbb mlx */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_a mlx */,
    { 0x100, 0x200, 0x400, 0xf, 0x80, 0x20}/* bbb mlx */,
    { 0xf, 0xf, 0x400, 0xf, 0x80, 0x20}/* mmb mlx */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_d mlx */,
    { 0xf, 0x40, 0x400, 0xf, 0x80, 0x20}/* mfb mlx */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_f mlx */,
    { 0xf, 0x10, 0x20, 0x800, 0x800, 0x800}/* mii reserved_3 */,
    { 0xf, 0x10, 0x10, 0x800, 0x800, 0x800}/* mi_i reserved_3 */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mlx reserved_3 */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_3 reserved_3 */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* mmi reserved_3 */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* m_mi reserved_3 */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mfi reserved_3 */,
    { 0xf, 0xf, 0x40, 0x800, 0x800, 0x800}/* mmf reserved_3 */,
    { 0xf, 0x10, 0x400, 0x800, 0x800, 0x800}/* mib reserved_3 */,
    { 0xf, 0x200, 0x400, 0x800, 0x800, 0x800}/* mbb reserved_3 */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_a reserved_3 */,
    { 0x100, 0x200, 0x400, 0x800, 0x800, 0x800}/* bbb reserved_3 */,
    { 0xf, 0xf, 0x400, 0x800, 0x800, 0x800}/* mmb reserved_3 */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_d reserved_3 */,
    { 0xf, 0x40, 0x400, 0x800, 0x800, 0x800}/* mfb reserved_3 */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_f reserved_3 */,
    { 0xf, 0x10, 0x20, 0xf, 0xf, 0x800}/* mii mmi */,
    { 0xf, 0x10, 0x10, 0xf, 0xf, 0x20}/* mi_i mmi */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x20}/* mlx mmi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_3 mmi */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x20}/* mmi mmi */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x20}/* m_mi mmi */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x20}/* mfi mmi */,
    { 0xf, 0xf, 0x40, 0xf, 0xf, 0x20}/* mmf mmi */,
    { 0xf, 0x10, 0x400, 0xf, 0xf, 0x20}/* mib mmi */,
    { 0xf, 0x200, 0x400, 0xf, 0xf, 0x20}/* mbb mmi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_a mmi */,
    { 0x100, 0x200, 0x400, 0xf, 0xf, 0x20}/* bbb mmi */,
    { 0xf, 0xf, 0x400, 0xf, 0xf, 0x20}/* mmb mmi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_d mmi */,
    { 0xf, 0x40, 0x400, 0xf, 0xf, 0x20}/* mfb mmi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_f mmi */,
    { 0xf, 0x10, 0x20, 0xf, 0xf, 0x20}/* mii m_mi */,
    { 0xf, 0x10, 0x10, 0xf, 0xf, 0x20}/* mi_i m_mi */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x20}/* mlx m_mi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_3 m_mi */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x20}/* mmi m_mi */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x20}/* m_mi m_mi */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x20}/* mfi m_mi */,
    { 0xf, 0xf, 0x40, 0xf, 0xf, 0x20}/* mmf m_mi */,
    { 0xf, 0x10, 0x400, 0xf, 0xf, 0x20}/* mib m_mi */,
    { 0xf, 0x200, 0x400, 0xf, 0xf, 0x20}/* mbb m_mi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_a m_mi */,
    { 0x100, 0x200, 0x400, 0xf, 0xf, 0x20}/* bbb m_mi */,
    { 0xf, 0xf, 0x400, 0xf, 0xf, 0x20}/* mmb m_mi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_d m_mi */,
    { 0xf, 0x40, 0x400, 0xf, 0xf, 0x20}/* mfb m_mi */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x20}/* reserved_f m_mi */,
    { 0xf, 0x10, 0x20, 0xf, 0x80, 0x800}/* mii mfi */,
    { 0xf, 0x10, 0x10, 0xf, 0x80, 0x20}/* mi_i mfi */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x20}/* mlx mfi */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_3 mfi */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x20}/* mmi mfi */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x20}/* m_mi mfi */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x20}/* mfi mfi */,
    { 0xf, 0xf, 0x40, 0xf, 0x80, 0x20}/* mmf mfi */,
    { 0xf, 0x10, 0x400, 0xf, 0x80, 0x20}/* mib mfi */,
    { 0xf, 0x200, 0x400, 0xf, 0x80, 0x20}/* mbb mfi */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_a mfi */,
    { 0x100, 0x200, 0x400, 0xf, 0x80, 0x20}/* bbb mfi */,
    { 0xf, 0xf, 0x400, 0xf, 0x80, 0x20}/* mmb mfi */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_d mfi */,
    { 0xf, 0x40, 0x400, 0xf, 0x80, 0x20}/* mfb mfi */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x20}/* reserved_f mfi */,
    { 0xf, 0x10, 0x20, 0xf, 0xf, 0x80}/* mii mmf */,
    { 0xf, 0x10, 0x10, 0xf, 0xf, 0x80}/* mi_i mmf */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x80}/* mlx mmf */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x80}/* reserved_3 mmf */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x80}/* mmi mmf */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x80}/* m_mi mmf */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x80}/* mfi mmf */,
    { 0xf, 0xf, 0x40, 0xf, 0xf, 0x80}/* mmf mmf */,
    { 0xf, 0x10, 0x400, 0xf, 0xf, 0x80}/* mib mmf */,
    { 0xf, 0x200, 0x400, 0xf, 0xf, 0x80}/* mbb mmf */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x80}/* reserved_a mmf */,
    { 0x100, 0x200, 0x400, 0xf, 0xf, 0x80}/* bbb mmf */,
    { 0xf, 0xf, 0x400, 0xf, 0xf, 0x80}/* mmb mmf */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x80}/* reserved_d mmf */,
    { 0xf, 0x40, 0x400, 0xf, 0xf, 0x80}/* mfb mmf */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x80}/* reserved_f mmf */,
    { 0xf, 0x10, 0x20, 0xf, 0x800, 0x400}/* mii mib */,
    { 0xf, 0x10, 0x10, 0xf, 0x20, 0x400}/* mi_i mib */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x400}/* mlx mib */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x400}/* reserved_3 mib */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x400}/* mmi mib */,
    { 0xf, 0xf, 0x10, 0xf, 0x20, 0x400}/* m_mi mib */,
    { 0xf, 0x40, 0x10, 0xf, 0x20, 0x400}/* mfi mib */,
    { 0xf, 0xf, 0x40, 0xf, 0x10, 0x400}/* mmf mib */,
    { 0xf, 0x10, 0x400, 0xf, 0x20, 0x800}/* mib mib */,
    { 0xf, 0x200, 0x400, 0xf, 0x10, 0x800}/* mbb mib */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x400}/* reserved_a mib */,
    { 0x100, 0x200, 0x400, 0xf, 0x10, 0x800}/* bbb mib */,
    { 0xf, 0xf, 0x400, 0xf, 0x10, 0x800}/* mmb mib */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x400}/* reserved_d mib */,
    { 0xf, 0x40, 0x400, 0xf, 0x10, 0x800}/* mfb mib */,
    { 0x800, 0x800, 0x800, 0xf, 0x10, 0x400}/* reserved_f mib */,
    { 0xf, 0x10, 0x20, 0xf, 0x200, 0x400}/* mii mbb */,
    { 0xf, 0x10, 0x10, 0xf, 0x200, 0x400}/* mi_i mbb */,
    { 0xf, 0x40, 0x10, 0xf, 0x200, 0x400}/* mlx mbb */,
    { 0x800, 0x800, 0x800, 0xf, 0x200, 0x400}/* reserved_3 mbb */,
    { 0xf, 0xf, 0x10, 0xf, 0x200, 0x400}/* mmi mbb */,
    { 0xf, 0xf, 0x10, 0xf, 0x200, 0x400}/* m_mi mbb */,
    { 0xf, 0x40, 0x10, 0xf, 0x200, 0x400}/* mfi mbb */,
    { 0xf, 0xf, 0x40, 0xf, 0x200, 0x400}/* mmf mbb */,
    { 0xf, 0x10, 0x400, 0xf, 0x200, 0x800}/* mib mbb */,
    { 0xf, 0x200, 0x400, 0xf, 0x800, 0x800}/* mbb mbb */,
    { 0x800, 0x800, 0x800, 0xf, 0x200, 0x400}/* reserved_a mbb */,
    { 0x100, 0x200, 0x400, 0xf, 0x800, 0x800}/* bbb mbb */,
    { 0xf, 0xf, 0x400, 0xf, 0x200, 0x800}/* mmb mbb */,
    { 0x800, 0x800, 0x800, 0xf, 0x200, 0x400}/* reserved_d mbb */,
    { 0xf, 0x40, 0x400, 0xf, 0x200, 0x800}/* mfb mbb */,
    { 0x800, 0x800, 0x800, 0xf, 0x200, 0x400}/* reserved_f mbb */,
    { 0xf, 0x10, 0x20, 0x800, 0x800, 0x800}/* mii reserved_a */,
    { 0xf, 0x10, 0x10, 0x800, 0x800, 0x800}/* mi_i reserved_a */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mlx reserved_a */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_3 reserved_a */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* mmi reserved_a */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* m_mi reserved_a */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mfi reserved_a */,
    { 0xf, 0xf, 0x40, 0x800, 0x800, 0x800}/* mmf reserved_a */,
    { 0xf, 0x10, 0x400, 0x800, 0x800, 0x800}/* mib reserved_a */,
    { 0xf, 0x200, 0x400, 0x800, 0x800, 0x800}/* mbb reserved_a */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_a reserved_a */,
    { 0x100, 0x200, 0x400, 0x800, 0x800, 0x800}/* bbb reserved_a */,
    { 0xf, 0xf, 0x400, 0x800, 0x800, 0x800}/* mmb reserved_a */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_d reserved_a */,
    { 0xf, 0x40, 0x400, 0x800, 0x800, 0x800}/* mfb reserved_a */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_f reserved_a */,
    { 0xf, 0x10, 0x20, 0x100, 0x200, 0x400}/* mii bbb */,
    { 0xf, 0x10, 0x10, 0x100, 0x200, 0x400}/* mi_i bbb */,
    { 0xf, 0x40, 0x10, 0x100, 0x200, 0x400}/* mlx bbb */,
    { 0x800, 0x800, 0x800, 0x100, 0x200, 0x400}/* reserved_3 bbb */,
    { 0xf, 0xf, 0x10, 0x100, 0x200, 0x400}/* mmi bbb */,
    { 0xf, 0xf, 0x10, 0x100, 0x200, 0x400}/* m_mi bbb */,
    { 0xf, 0x40, 0x10, 0x100, 0x200, 0x400}/* mfi bbb */,
    { 0xf, 0xf, 0x40, 0x100, 0x200, 0x400}/* mmf bbb */,
    { 0xf, 0x10, 0x400, 0x100, 0x200, 0x800}/* mib bbb */,
    { 0xf, 0x200, 0x400, 0x100, 0x800, 0x800}/* mbb bbb */,
    { 0x800, 0x800, 0x800, 0x100, 0x200, 0x400}/* reserved_a bbb */,
    { 0x100, 0x200, 0x400, 0x800, 0x800, 0x800}/* bbb bbb */,
    { 0xf, 0xf, 0x400, 0x100, 0x200, 0x800}/* mmb bbb */,
    { 0x800, 0x800, 0x800, 0x100, 0x200, 0x400}/* reserved_d bbb */,
    { 0xf, 0x40, 0x400, 0x100, 0x200, 0x800}/* mfb bbb */,
    { 0x800, 0x800, 0x800, 0x100, 0x200, 0x400}/* reserved_f bbb */,
    { 0xf, 0x10, 0x20, 0xf, 0xf, 0x400}/* mii mmb */,
    { 0xf, 0x10, 0x10, 0xf, 0xf, 0x400}/* mi_i mmb */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x400}/* mlx mmb */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x400}/* reserved_3 mmb */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x400}/* mmi mmb */,
    { 0xf, 0xf, 0x10, 0xf, 0xf, 0x400}/* m_mi mmb */,
    { 0xf, 0x40, 0x10, 0xf, 0xf, 0x400}/* mfi mmb */,
    { 0xf, 0xf, 0x40, 0xf, 0xf, 0x400}/* mmf mmb */,
    { 0xf, 0x10, 0x400, 0xf, 0xf, 0x800}/* mib mmb */,
    { 0xf, 0x200, 0x400, 0xf, 0xf, 0x800}/* mbb mmb */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x400}/* reserved_a mmb */,
    { 0x100, 0x200, 0x400, 0xf, 0xf, 0x800}/* bbb mmb */,
    { 0xf, 0xf, 0x400, 0xf, 0xf, 0x800}/* mmb mmb */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x400}/* reserved_d mmb */,
    { 0xf, 0x40, 0x400, 0xf, 0xf, 0x800}/* mfb mmb */,
    { 0x800, 0x800, 0x800, 0xf, 0xf, 0x400}/* reserved_f mmb */,
    { 0xf, 0x10, 0x20, 0x800, 0x800, 0x800}/* mii reserved_d */,
    { 0xf, 0x10, 0x10, 0x800, 0x800, 0x800}/* mi_i reserved_d */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mlx reserved_d */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_3 reserved_d */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* mmi reserved_d */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* m_mi reserved_d */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mfi reserved_d */,
    { 0xf, 0xf, 0x40, 0x800, 0x800, 0x800}/* mmf reserved_d */,
    { 0xf, 0x10, 0x400, 0x800, 0x800, 0x800}/* mib reserved_d */,
    { 0xf, 0x200, 0x400, 0x800, 0x800, 0x800}/* mbb reserved_d */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_a reserved_d */,
    { 0x100, 0x200, 0x400, 0x800, 0x800, 0x800}/* bbb reserved_d */,
    { 0xf, 0xf, 0x400, 0x800, 0x800, 0x800}/* mmb reserved_d */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_d reserved_d */,
    { 0xf, 0x40, 0x400, 0x800, 0x800, 0x800}/* mfb reserved_d */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_f reserved_d */,
    { 0xf, 0x10, 0x20, 0xf, 0x80, 0x400}/* mii mfb */,
    { 0xf, 0x10, 0x10, 0xf, 0x80, 0x400}/* mi_i mfb */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x400}/* mlx mfb */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x400}/* reserved_3 mfb */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x400}/* mmi mfb */,
    { 0xf, 0xf, 0x10, 0xf, 0x80, 0x400}/* m_mi mfb */,
    { 0xf, 0x40, 0x10, 0xf, 0x80, 0x400}/* mfi mfb */,
    { 0xf, 0xf, 0x40, 0xf, 0x80, 0x400}/* mmf mfb */,
    { 0xf, 0x10, 0x400, 0xf, 0x80, 0x800}/* mib mfb */,
    { 0xf, 0x200, 0x400, 0xf, 0x80, 0x800}/* mbb mfb */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x400}/* reserved_a mfb */,
    { 0x100, 0x200, 0x400, 0xf, 0x80, 0x800}/* bbb mfb */,
    { 0xf, 0xf, 0x400, 0xf, 0x80, 0x800}/* mmb mfb */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x400}/* reserved_d mfb */,
    { 0xf, 0x40, 0x400, 0xf, 0x80, 0x800}/* mfb mfb */,
    { 0x800, 0x800, 0x800, 0xf, 0x80, 0x400}/* reserved_f mfb */,
    { 0xf, 0x10, 0x20, 0x800, 0x800, 0x800}/* mii reserved_f */,
    { 0xf, 0x10, 0x10, 0x800, 0x800, 0x800}/* mi_i reserved_f */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mlx reserved_f */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_3 reserved_f */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* mmi reserved_f */,
    { 0xf, 0xf, 0x10, 0x800, 0x800, 0x800}/* m_mi reserved_f */,
    { 0xf, 0x40, 0x10, 0x800, 0x800, 0x800}/* mfi reserved_f */,
    { 0xf, 0xf, 0x40, 0x800, 0x800, 0x800}/* mmf reserved_f */,
    { 0xf, 0x10, 0x400, 0x800, 0x800, 0x800}/* mib reserved_f */,
    { 0xf, 0x200, 0x400, 0x800, 0x800, 0x800}/* mbb reserved_f */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_a reserved_f */,
    { 0x100, 0x200, 0x400, 0x800, 0x800, 0x800}/* bbb reserved_f */,
    { 0xf, 0xf, 0x400, 0x800, 0x800, 0x800}/* mmb reserved_f */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_d reserved_f */,
    { 0xf, 0x40, 0x400, 0x800, 0x800, 0x800}/* mfb reserved_f */,
    { 0x800, 0x800, 0x800, 0x800, 0x800, 0x800}/* reserved_f reserved_f */
};

const DISPERSAL_TARG_TABLE dispersal_table =
    { dispersal_table_size, dispersal_table_body };

INT MAX_PTN_TABLE_LINE_SIZE = 47; 
/* End of Generated Offline Table Definition.*/
