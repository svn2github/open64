//-*-c++-*-
#include "defs.h"
#include "errors.h"
#include "targ_isa_bundle.h"
#include "cggrp_ptn_table.h"
/* ================================================================
 * Request bit vector: 1 M0 */
PATTERN_TYPE ptn1[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0 M0 I0 */,
	{ 0, 1, { 5, 16} }	/*m_mi template_MAX M0 M0 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0 I0 I0 M0 M0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 2 M1 */
PATTERN_TYPE ptn2[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0 M0 I0 M1 M0 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 3 M0 M1 */
PATTERN_TYPE ptn3[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0 M0 I0 M1 M0 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 4 I0 */
PATTERN_TYPE ptn4[] = {
	{ 1, 0, { 1, 16} }	/*->mi_i template_MAX M0 I0 I0 */,
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0 M0 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 5 M0 I0 */
PATTERN_TYPE ptn5[] = {
	{ 1, 0, { 5, 16} }	/*->m_mi template_MAX M0 M0 I0 */,
	{ 0, 1, { 1, 16} }	/*mi_i template_MAX M0 I0 I0 */,
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 1, 1, { 1, 5} }	/*->mi_i m_mi M0 I0 I0 M0 M0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 6 M1 I0 */
PATTERN_TYPE ptn6[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0 M0 I0 M1 M0 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 7 M0 M1 I0 */
PATTERN_TYPE ptn7[] = {
	{ 0, 0, { 4, 16} }	/*mmi template_MAX M0 M1 I0 */,
	{ 1, 1, { 5, 5} }	/*->m_mi m_mi M0 M0 I0 M1 M0 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 8 I1 */
PATTERN_TYPE ptn8[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 9 M0 I1 */
PATTERN_TYPE ptn9[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 10 M1 I1 */
PATTERN_TYPE ptn10[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 11 M0 M1 I1 */
PATTERN_TYPE ptn11[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 12 I0 I1 */
PATTERN_TYPE ptn12[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 13 M0 I0 I1 */
PATTERN_TYPE ptn13[] = {
	{ 0, 0, { 0, 16} }	/*mii template_MAX M0 I0 I1 */,
	{ 1, 1, { 1, 1} }	/*->mi_i mi_i M0 I0 I0 M0 I1 I1 */,
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 14 M1 I0 I1 */
PATTERN_TYPE ptn14[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 15 M0 M1 I0 I1 */
PATTERN_TYPE ptn15[] = {
	{ 1, 1, { 5, 1} }	/*->m_mi mi_i M0 M0 I0 M1 I1 I1 */,
	{ 1, 0, { 1, 4} }	/*->mi_i mmi M0 I0 I0 M0 M1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 0, 5} }	/*mii m_mi M0 I0 I1 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 16 F0 */
PATTERN_TYPE ptn16[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */
};

/* ================================================================
 * Request bit vector: 17 M0 F0 */
PATTERN_TYPE ptn17[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */
};

/* ================================================================
 * Request bit vector: 18 M1 F0 */
PATTERN_TYPE ptn18[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 19 M0 M1 F0 */
PATTERN_TYPE ptn19[] = {
	{ 0, 0, { 7, 16} }	/*mmf template_MAX M0 M1 F0 */,
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 20 I0 F0 */
PATTERN_TYPE ptn20[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 21 M0 I0 F0 */
PATTERN_TYPE ptn21[] = {
	{ 0, 0, { 2, 16} }	/*mlx template_MAX M0 F0 I0 */,
	{ 0, 0, { 6, 16} }	/*mfi template_MAX M0 F0 I0 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 22 M1 I0 F0 */
PATTERN_TYPE ptn22[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 23 M0 M1 I0 F0 */
PATTERN_TYPE ptn23[] = {
	{ 0, 1, { 2, 5} }	/*mlx m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 6, 5} }	/*mfi m_mi M0 F0 I0 M1 M0 I1 */,
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 24 I1 F0 */
PATTERN_TYPE ptn24[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 25 M0 I1 F0 */
PATTERN_TYPE ptn25[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 26 M1 I1 F0 */
PATTERN_TYPE ptn26[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 27 M0 M1 I1 F0 */
PATTERN_TYPE ptn27[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 28 I0 I1 F0 */
PATTERN_TYPE ptn28[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 29 M0 I0 I1 F0 */
PATTERN_TYPE ptn29[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 30 M1 I0 I1 F0 */
PATTERN_TYPE ptn30[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 31 M0 M1 I0 I1 F0 */
PATTERN_TYPE ptn31[] = {
	{ 0, 1, { 2, 1} }	/*mlx mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 1, { 6, 1} }	/*mfi mi_i M0 F0 I0 M1 I1 I1 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 32 F1 */
PATTERN_TYPE ptn32[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 33 M0 F1 */
PATTERN_TYPE ptn33[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 34 M1 F1 */
PATTERN_TYPE ptn34[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 35 M0 M1 F1 */
PATTERN_TYPE ptn35[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 36 I0 F1 */
PATTERN_TYPE ptn36[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 37 M0 I0 F1 */
PATTERN_TYPE ptn37[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 38 M1 I0 F1 */
PATTERN_TYPE ptn38[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 39 M0 M1 I0 F1 */
PATTERN_TYPE ptn39[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 40 I1 F1 */
PATTERN_TYPE ptn40[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 41 M0 I1 F1 */
PATTERN_TYPE ptn41[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 42 M1 I1 F1 */
PATTERN_TYPE ptn42[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 43 M0 M1 I1 F1 */
PATTERN_TYPE ptn43[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 44 I0 I1 F1 */
PATTERN_TYPE ptn44[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 45 M0 I0 I1 F1 */
PATTERN_TYPE ptn45[] = {
	{ 1, 0, { 1, 2} }	/*->mi_i mlx M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 1, 6} }	/*->mi_i mfi M0 I0 I0 M0 F1 I1 */,
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 46 M1 I0 I1 F1 */
PATTERN_TYPE ptn46[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 47 M0 M1 I0 I1 F1 */
PATTERN_TYPE ptn47[] = {
	{ 1, 0, { 5, 2} }	/*->m_mi mlx M0 M0 I0 M1 F1 I1 */,
	{ 1, 0, { 5, 6} }	/*->m_mi mfi M0 M0 I0 M1 F1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 48 F0 F1 */
PATTERN_TYPE ptn48[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 49 M0 F0 F1 */
PATTERN_TYPE ptn49[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 50 M1 F0 F1 */
PATTERN_TYPE ptn50[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 51 M0 M1 F0 F1 */
PATTERN_TYPE ptn51[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 52 I0 F0 F1 */
PATTERN_TYPE ptn52[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 53 M0 I0 F0 F1 */
PATTERN_TYPE ptn53[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 54 M1 I0 F0 F1 */
PATTERN_TYPE ptn54[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 55 M0 M1 I0 F0 F1 */
PATTERN_TYPE ptn55[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 56 I1 F0 F1 */
PATTERN_TYPE ptn56[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 57 M0 I1 F0 F1 */
PATTERN_TYPE ptn57[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 58 M1 I1 F0 F1 */
PATTERN_TYPE ptn58[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 59 M0 M1 I1 F0 F1 */
PATTERN_TYPE ptn59[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 60 I0 I1 F0 F1 */
PATTERN_TYPE ptn60[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 61 M0 I0 I1 F0 F1 */
PATTERN_TYPE ptn61[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 62 M1 I0 I1 F0 F1 */
PATTERN_TYPE ptn62[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 63 M0 M1 I0 I1 F0 F1 */
PATTERN_TYPE ptn63[] = {
	{ 0, 0, { 2, 2} }	/*mlx mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 2, 6} }	/*mlx mfi M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 2} }	/*mfi mlx M0 F0 I0 M1 F1 I1 */,
	{ 0, 0, { 6, 6} }	/*mfi mfi M0 F0 I0 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 64 B0 */
PATTERN_TYPE ptn64[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 65 M0 B0 */
PATTERN_TYPE ptn65[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 66 M1 B0 */
PATTERN_TYPE ptn66[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 67 M0 M1 B0 */
PATTERN_TYPE ptn67[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 68 I0 B0 */
PATTERN_TYPE ptn68[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 69 M0 I0 B0 */
PATTERN_TYPE ptn69[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 70 M1 I0 B0 */
PATTERN_TYPE ptn70[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 71 M0 M1 I0 B0 */
PATTERN_TYPE ptn71[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 72 I1 B0 */
PATTERN_TYPE ptn72[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 73 M0 I1 B0 */
PATTERN_TYPE ptn73[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 74 M1 I1 B0 */

/* ================================================================
 * Request bit vector: 75 M0 M1 I1 B0 */

/* ================================================================
 * Request bit vector: 76 I0 I1 B0 */
PATTERN_TYPE ptn76[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 77 M0 I0 I1 B0 */
PATTERN_TYPE ptn77[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 78 M1 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 79 M0 M1 I0 I1 B0 */

/* ================================================================
 * Request bit vector: 80 F0 B0 */
PATTERN_TYPE ptn80[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 81 M0 F0 B0 */
PATTERN_TYPE ptn81[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 82 M1 F0 B0 */

/* ================================================================
 * Request bit vector: 83 M0 M1 F0 B0 */

/* ================================================================
 * Request bit vector: 84 I0 F0 B0 */
PATTERN_TYPE ptn84[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 85 M0 I0 F0 B0 */
PATTERN_TYPE ptn85[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 86 M1 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 87 M0 M1 I0 F0 B0 */

/* ================================================================
 * Request bit vector: 88 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 89 M0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 90 M1 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 91 M0 M1 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 92 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 93 M0 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 94 M1 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 95 M0 M1 I0 I1 F0 B0 */

/* ================================================================
 * Request bit vector: 96 F1 B0 */

/* ================================================================
 * Request bit vector: 97 M0 F1 B0 */

/* ================================================================
 * Request bit vector: 98 M1 F1 B0 */

/* ================================================================
 * Request bit vector: 99 M0 M1 F1 B0 */

/* ================================================================
 * Request bit vector: 100 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 101 M0 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 102 M1 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 103 M0 M1 I0 F1 B0 */

/* ================================================================
 * Request bit vector: 104 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 105 M0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 106 M1 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 107 M0 M1 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 108 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 109 M0 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 110 M1 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 111 M0 M1 I0 I1 F1 B0 */

/* ================================================================
 * Request bit vector: 112 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 113 M0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 114 M1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 115 M0 M1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 116 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 117 M0 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 118 M1 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 119 M0 M1 I0 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 120 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 121 M0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 122 M1 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 123 M0 M1 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 124 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 125 M0 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 126 M1 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 127 M0 M1 I0 I1 F0 F1 B0 */

/* ================================================================
 * Request bit vector: 128 B1 */
PATTERN_TYPE ptn128[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 129 M0 B1 */
PATTERN_TYPE ptn129[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 130 M1 B1 */
PATTERN_TYPE ptn130[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 131 M0 M1 B1 */
PATTERN_TYPE ptn131[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 132 I0 B1 */
PATTERN_TYPE ptn132[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 133 M0 I0 B1 */
PATTERN_TYPE ptn133[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 134 M1 I0 B1 */
PATTERN_TYPE ptn134[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 135 M0 M1 I0 B1 */
PATTERN_TYPE ptn135[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 136 I1 B1 */
PATTERN_TYPE ptn136[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 137 M0 I1 B1 */
PATTERN_TYPE ptn137[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 138 M1 I1 B1 */
PATTERN_TYPE ptn138[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 139 M0 M1 I1 B1 */
PATTERN_TYPE ptn139[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 140 I0 I1 B1 */
PATTERN_TYPE ptn140[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 141 M0 I0 I1 B1 */
PATTERN_TYPE ptn141[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 142 M1 I0 I1 B1 */
PATTERN_TYPE ptn142[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 143 M0 M1 I0 I1 B1 */
PATTERN_TYPE ptn143[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 144 F0 B1 */
PATTERN_TYPE ptn144[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 145 M0 F0 B1 */
PATTERN_TYPE ptn145[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 146 M1 F0 B1 */
PATTERN_TYPE ptn146[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 147 M0 M1 F0 B1 */
PATTERN_TYPE ptn147[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 148 I0 F0 B1 */
PATTERN_TYPE ptn148[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 149 M0 I0 F0 B1 */
PATTERN_TYPE ptn149[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 150 M1 I0 F0 B1 */
PATTERN_TYPE ptn150[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 151 M0 M1 I0 F0 B1 */
PATTERN_TYPE ptn151[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 152 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 153 M0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 154 M1 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 155 M0 M1 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 156 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 157 M0 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 158 M1 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 159 M0 M1 I0 I1 F0 B1 */

/* ================================================================
 * Request bit vector: 160 F1 B1 */

/* ================================================================
 * Request bit vector: 161 M0 F1 B1 */

/* ================================================================
 * Request bit vector: 162 M1 F1 B1 */

/* ================================================================
 * Request bit vector: 163 M0 M1 F1 B1 */

/* ================================================================
 * Request bit vector: 164 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 165 M0 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 166 M1 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 167 M0 M1 I0 F1 B1 */

/* ================================================================
 * Request bit vector: 168 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 169 M0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 170 M1 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 171 M0 M1 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 172 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 173 M0 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 174 M1 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 175 M0 M1 I0 I1 F1 B1 */

/* ================================================================
 * Request bit vector: 176 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 177 M0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 178 M1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 179 M0 M1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 180 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 181 M0 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 182 M1 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 183 M0 M1 I0 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 184 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 185 M0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 186 M1 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 187 M0 M1 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 188 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 189 M0 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 190 M1 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 191 M0 M1 I0 I1 F0 F1 B1 */

/* ================================================================
 * Request bit vector: 192 B0 B1 */
PATTERN_TYPE ptn192[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 193 M0 B0 B1 */
PATTERN_TYPE ptn193[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 194 M1 B0 B1 */
PATTERN_TYPE ptn194[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 195 M0 M1 B0 B1 */
PATTERN_TYPE ptn195[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 196 I0 B0 B1 */
PATTERN_TYPE ptn196[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 197 M0 I0 B0 B1 */
PATTERN_TYPE ptn197[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 198 M1 I0 B0 B1 */
PATTERN_TYPE ptn198[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 199 M0 M1 I0 B0 B1 */
PATTERN_TYPE ptn199[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 200 I1 B0 B1 */
PATTERN_TYPE ptn200[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 201 M0 I1 B0 B1 */
PATTERN_TYPE ptn201[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 202 M1 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 203 M0 M1 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 204 I0 I1 B0 B1 */
PATTERN_TYPE ptn204[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 205 M0 I0 I1 B0 B1 */
PATTERN_TYPE ptn205[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 206 M1 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 207 M0 M1 I0 I1 B0 B1 */

/* ================================================================
 * Request bit vector: 208 F0 B0 B1 */
PATTERN_TYPE ptn208[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 209 M0 F0 B0 B1 */
PATTERN_TYPE ptn209[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 210 M1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 211 M0 M1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 212 I0 F0 B0 B1 */
PATTERN_TYPE ptn212[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 213 M0 I0 F0 B0 B1 */
PATTERN_TYPE ptn213[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 214 M1 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 215 M0 M1 I0 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 216 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 217 M0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 218 M1 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 219 M0 M1 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 220 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 221 M0 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 222 M1 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 223 M0 M1 I0 I1 F0 B0 B1 */

/* ================================================================
 * Request bit vector: 224 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 225 M0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 226 M1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 227 M0 M1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 228 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 229 M0 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 230 M1 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 231 M0 M1 I0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 232 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 233 M0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 234 M1 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 235 M0 M1 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 236 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 237 M0 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 238 M1 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 239 M0 M1 I0 I1 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 240 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 241 M0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 242 M1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 243 M0 M1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 244 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 245 M0 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 246 M1 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 247 M0 M1 I0 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 248 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 249 M0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 250 M1 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 251 M0 M1 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 252 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 253 M0 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 254 M1 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 255 M0 M1 I0 I1 F0 F1 B0 B1 */

/* ================================================================
 * Request bit vector: 256 B2 */
PATTERN_TYPE ptn256[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */,
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 257 M0 B2 */
PATTERN_TYPE ptn257[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 258 M1 B2 */
PATTERN_TYPE ptn258[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 259 M0 M1 B2 */
PATTERN_TYPE ptn259[] = {
	{ 0, 0, { 12, 16} }	/*mmb template_MAX M0 M1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 260 I0 B2 */
PATTERN_TYPE ptn260[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 261 M0 I0 B2 */
PATTERN_TYPE ptn261[] = {
	{ 0, 0, { 8, 16} }	/*mib template_MAX M0 I0 B2 */,
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 262 M1 I0 B2 */
PATTERN_TYPE ptn262[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 263 M0 M1 I0 B2 */
PATTERN_TYPE ptn263[] = {
	{ 1, 0, { 1, 12} }	/*->mi_i mmb M0 I0 I0 M0 M1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 1, { 8, 5} }	/*mib m_mi M0 I0 B2 M1 M0 I1 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 264 I1 B2 */
PATTERN_TYPE ptn264[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 265 M0 I1 B2 */
PATTERN_TYPE ptn265[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 266 M1 I1 B2 */
PATTERN_TYPE ptn266[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 267 M0 M1 I1 B2 */
PATTERN_TYPE ptn267[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 268 I0 I1 B2 */
PATTERN_TYPE ptn268[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 269 M0 I0 I1 B2 */
PATTERN_TYPE ptn269[] = {
	{ 1, 0, { 1, 8} }	/*->mi_i mib M0 I0 I0 M0 I1 B2 */,
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 270 M1 I0 I1 B2 */
PATTERN_TYPE ptn270[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 271 M0 M1 I0 I1 B2 */
PATTERN_TYPE ptn271[] = {
	{ 1, 0, { 5, 8} }	/*->m_mi mib M0 M0 I0 M1 I1 B2 */,
	{ 0, 1, { 8, 1} }	/*mib mi_i M0 I0 B2 M1 I1 I1 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 272 F0 B2 */
PATTERN_TYPE ptn272[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 273 M0 F0 B2 */
PATTERN_TYPE ptn273[] = {
	{ 0, 0, { 14, 16} }	/*mfb template_MAX M0 F0 B2 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 274 M1 F0 B2 */
PATTERN_TYPE ptn274[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 275 M0 M1 F0 B2 */
PATTERN_TYPE ptn275[] = {
	{ 0, 1, { 14, 5} }	/*mfb m_mi M0 F0 B2 M1 M0 I1 */,
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 276 I0 F0 B2 */
PATTERN_TYPE ptn276[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 277 M0 I0 F0 B2 */
PATTERN_TYPE ptn277[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 278 M1 I0 F0 B2 */
PATTERN_TYPE ptn278[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 279 M0 M1 I0 F0 B2 */
PATTERN_TYPE ptn279[] = {
	{ 0, 1, { 14, 1} }	/*mfb mi_i M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 280 I1 F0 B2 */
PATTERN_TYPE ptn280[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 281 M0 I1 F0 B2 */
PATTERN_TYPE ptn281[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 282 M1 I1 F0 B2 */
PATTERN_TYPE ptn282[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 283 M0 M1 I1 F0 B2 */
PATTERN_TYPE ptn283[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 284 I0 I1 F0 B2 */
PATTERN_TYPE ptn284[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 285 M0 I0 I1 F0 B2 */
PATTERN_TYPE ptn285[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 286 M1 I0 I1 F0 B2 */
PATTERN_TYPE ptn286[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 287 M0 M1 I0 I1 F0 B2 */
PATTERN_TYPE ptn287[] = {
	{ 0, 0, { 2, 8} }	/*mlx mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 6, 8} }	/*mfi mib M0 F0 I0 M1 I1 B2 */,
	{ 0, 0, { 14, 0} }	/*mfb mii M0 F0 B2 M1 I0 I1 */
};

/* ================================================================
 * Request bit vector: 288 F1 B2 */
PATTERN_TYPE ptn288[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 289 M0 F1 B2 */
PATTERN_TYPE ptn289[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 290 M1 F1 B2 */
PATTERN_TYPE ptn290[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 291 M0 M1 F1 B2 */
PATTERN_TYPE ptn291[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 292 I0 F1 B2 */
PATTERN_TYPE ptn292[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 293 M0 I0 F1 B2 */
PATTERN_TYPE ptn293[] = {
	{ 1, 0, { 1, 14} }	/*->mi_i mfb M0 I0 I0 M0 F1 B2 */,
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 294 M1 I0 F1 B2 */
PATTERN_TYPE ptn294[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 295 M0 M1 I0 F1 B2 */
PATTERN_TYPE ptn295[] = {
	{ 1, 0, { 5, 14} }	/*->m_mi mfb M0 M0 I0 M1 F1 B2 */,
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 296 I1 F1 B2 */
PATTERN_TYPE ptn296[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 297 M0 I1 F1 B2 */
PATTERN_TYPE ptn297[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 298 M1 I1 F1 B2 */
PATTERN_TYPE ptn298[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 299 M0 M1 I1 F1 B2 */
PATTERN_TYPE ptn299[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 300 I0 I1 F1 B2 */
PATTERN_TYPE ptn300[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 301 M0 I0 I1 F1 B2 */
PATTERN_TYPE ptn301[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 302 M1 I0 I1 F1 B2 */
PATTERN_TYPE ptn302[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 303 M0 M1 I0 I1 F1 B2 */
PATTERN_TYPE ptn303[] = {
	{ 0, 0, { 0, 14} }	/*mii mfb M0 I0 I1 M1 F1 B2 */,
	{ 0, 0, { 8, 2} }	/*mib mlx M0 I0 B2 M1 F1 I1 */,
	{ 0, 0, { 8, 6} }	/*mib mfi M0 I0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 304 F0 F1 B2 */
PATTERN_TYPE ptn304[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 305 M0 F0 F1 B2 */
PATTERN_TYPE ptn305[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 306 M1 F0 F1 B2 */
PATTERN_TYPE ptn306[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 307 M0 M1 F0 F1 B2 */
PATTERN_TYPE ptn307[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 308 I0 F0 F1 B2 */
PATTERN_TYPE ptn308[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 309 M0 I0 F0 F1 B2 */
PATTERN_TYPE ptn309[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 310 M1 I0 F0 F1 B2 */
PATTERN_TYPE ptn310[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 311 M0 M1 I0 F0 F1 B2 */
PATTERN_TYPE ptn311[] = {
	{ 0, 0, { 2, 14} }	/*mlx mfb M0 F0 I0 M1 F1 B2 */,
	{ 0, 0, { 6, 14} }	/*mfi mfb M0 F0 I0 M1 F1 B2 */
};

/* ================================================================
 * Request bit vector: 312 I1 F0 F1 B2 */
PATTERN_TYPE ptn312[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 313 M0 I1 F0 F1 B2 */
PATTERN_TYPE ptn313[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 314 M1 I1 F0 F1 B2 */
PATTERN_TYPE ptn314[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 315 M0 M1 I1 F0 F1 B2 */
PATTERN_TYPE ptn315[] = {
	{ 0, 0, { 14, 2} }	/*mfb mlx M0 F0 B2 M1 F1 I1 */,
	{ 0, 0, { 14, 6} }	/*mfb mfi M0 F0 B2 M1 F1 I1 */
};

/* ================================================================
 * Request bit vector: 316 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 317 M0 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 318 M1 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 319 M0 M1 I0 I1 F0 F1 B2 */

/* ================================================================
 * Request bit vector: 320 B0 B2 */
PATTERN_TYPE ptn320[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 321 M0 B0 B2 */
PATTERN_TYPE ptn321[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 322 M1 B0 B2 */
PATTERN_TYPE ptn322[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 323 M0 M1 B0 B2 */
PATTERN_TYPE ptn323[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 324 I0 B0 B2 */
PATTERN_TYPE ptn324[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 325 M0 I0 B0 B2 */
PATTERN_TYPE ptn325[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 326 M1 I0 B0 B2 */
PATTERN_TYPE ptn326[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 327 M0 M1 I0 B0 B2 */
PATTERN_TYPE ptn327[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 328 I1 B0 B2 */
PATTERN_TYPE ptn328[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 329 M0 I1 B0 B2 */
PATTERN_TYPE ptn329[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 330 M1 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 331 M0 M1 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 332 I0 I1 B0 B2 */
PATTERN_TYPE ptn332[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 333 M0 I0 I1 B0 B2 */
PATTERN_TYPE ptn333[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 334 M1 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 335 M0 M1 I0 I1 B0 B2 */

/* ================================================================
 * Request bit vector: 336 F0 B0 B2 */
PATTERN_TYPE ptn336[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 337 M0 F0 B0 B2 */
PATTERN_TYPE ptn337[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 338 M1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 339 M0 M1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 340 I0 F0 B0 B2 */
PATTERN_TYPE ptn340[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 341 M0 I0 F0 B0 B2 */
PATTERN_TYPE ptn341[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 342 M1 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 343 M0 M1 I0 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 344 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 345 M0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 346 M1 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 347 M0 M1 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 348 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 349 M0 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 350 M1 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 351 M0 M1 I0 I1 F0 B0 B2 */

/* ================================================================
 * Request bit vector: 352 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 353 M0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 354 M1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 355 M0 M1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 356 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 357 M0 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 358 M1 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 359 M0 M1 I0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 360 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 361 M0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 362 M1 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 363 M0 M1 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 364 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 365 M0 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 366 M1 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 367 M0 M1 I0 I1 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 368 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 369 M0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 370 M1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 371 M0 M1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 372 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 373 M0 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 374 M1 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 375 M0 M1 I0 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 376 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 377 M0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 378 M1 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 379 M0 M1 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 380 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 381 M0 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 382 M1 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 383 M0 M1 I0 I1 F0 F1 B0 B2 */

/* ================================================================
 * Request bit vector: 384 B1 B2 */
PATTERN_TYPE ptn384[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 385 M0 B1 B2 */
PATTERN_TYPE ptn385[] = {
	{ 0, 0, { 9, 16} }	/*mbb template_MAX M0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 386 M1 B1 B2 */
PATTERN_TYPE ptn386[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 387 M0 M1 B1 B2 */
PATTERN_TYPE ptn387[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 388 I0 B1 B2 */
PATTERN_TYPE ptn388[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 389 M0 I0 B1 B2 */
PATTERN_TYPE ptn389[] = {
	{ 1, 0, { 1, 9} }	/*->mi_i mbb M0 I0 I0 M0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 390 M1 I0 B1 B2 */
PATTERN_TYPE ptn390[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 391 M0 M1 I0 B1 B2 */
PATTERN_TYPE ptn391[] = {
	{ 1, 0, { 5, 9} }	/*->m_mi mbb M0 M0 I0 M1 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 392 I1 B1 B2 */
PATTERN_TYPE ptn392[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 393 M0 I1 B1 B2 */
PATTERN_TYPE ptn393[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 394 M1 I1 B1 B2 */
PATTERN_TYPE ptn394[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 395 M0 M1 I1 B1 B2 */
PATTERN_TYPE ptn395[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 396 I0 I1 B1 B2 */
PATTERN_TYPE ptn396[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 397 M0 I0 I1 B1 B2 */
PATTERN_TYPE ptn397[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */,
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 398 M1 I0 I1 B1 B2 */
PATTERN_TYPE ptn398[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 399 M0 M1 I0 I1 B1 B2 */
PATTERN_TYPE ptn399[] = {
	{ 0, 0, { 0, 9} }	/*mii mbb M0 I0 I1 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 400 F0 B1 B2 */
PATTERN_TYPE ptn400[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 401 M0 F0 B1 B2 */
PATTERN_TYPE ptn401[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 402 M1 F0 B1 B2 */
PATTERN_TYPE ptn402[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 403 M0 M1 F0 B1 B2 */
PATTERN_TYPE ptn403[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 404 I0 F0 B1 B2 */
PATTERN_TYPE ptn404[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 405 M0 I0 F0 B1 B2 */
PATTERN_TYPE ptn405[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 406 M1 I0 F0 B1 B2 */
PATTERN_TYPE ptn406[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 407 M0 M1 I0 F0 B1 B2 */
PATTERN_TYPE ptn407[] = {
	{ 0, 0, { 6, 9} }	/*mfi mbb M0 F0 I0 M1 B1 B2 */,
	{ 0, 0, { 2, 9} }	/*mlx mbb M0 F0 I0 M1 B1 B2 */
};

/* ================================================================
 * Request bit vector: 408 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 409 M0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 410 M1 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 411 M0 M1 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 412 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 413 M0 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 414 M1 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 415 M0 M1 I0 I1 F0 B1 B2 */

/* ================================================================
 * Request bit vector: 416 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 417 M0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 418 M1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 419 M0 M1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 420 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 421 M0 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 422 M1 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 423 M0 M1 I0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 424 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 425 M0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 426 M1 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 427 M0 M1 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 428 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 429 M0 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 430 M1 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 431 M0 M1 I0 I1 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 432 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 433 M0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 434 M1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 435 M0 M1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 436 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 437 M0 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 438 M1 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 439 M0 M1 I0 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 440 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 441 M0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 442 M1 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 443 M0 M1 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 444 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 445 M0 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 446 M1 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 447 M0 M1 I0 I1 F0 F1 B1 B2 */

/* ================================================================
 * Request bit vector: 448 B0 B1 B2 */
PATTERN_TYPE ptn448[] = {
	{ 0, 0, { 11, 16} }	/*bbb template_MAX B0 B1 B2 */,
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 449 M0 B0 B1 B2 */
PATTERN_TYPE ptn449[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 450 M1 B0 B1 B2 */
PATTERN_TYPE ptn450[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 451 M0 M1 B0 B1 B2 */
PATTERN_TYPE ptn451[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 452 I0 B0 B1 B2 */
PATTERN_TYPE ptn452[] = {
	{ 1, 0, { 1, 11} }	/*->mi_i bbb M0 I0 I0 B0 B1 B2 */,
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 453 M0 I0 B0 B1 B2 */
PATTERN_TYPE ptn453[] = {
	{ 1, 0, { 5, 11} }	/*->m_mi bbb M0 M0 I0 B0 B1 B2 */,
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 454 M1 I0 B0 B1 B2 */
PATTERN_TYPE ptn454[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 455 M0 M1 I0 B0 B1 B2 */
PATTERN_TYPE ptn455[] = {
	{ 0, 0, { 4, 11} }	/*mmi bbb M0 M1 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 456 I1 B0 B1 B2 */
PATTERN_TYPE ptn456[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 457 M0 I1 B0 B1 B2 */
PATTERN_TYPE ptn457[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 458 M1 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 459 M0 M1 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 460 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn460[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 461 M0 I0 I1 B0 B1 B2 */
PATTERN_TYPE ptn461[] = {
	{ 0, 0, { 0, 11} }	/*mii bbb M0 I0 I1 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 462 M1 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 463 M0 M1 I0 I1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 464 F0 B0 B1 B2 */
PATTERN_TYPE ptn464[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 465 M0 F0 B0 B1 B2 */
PATTERN_TYPE ptn465[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 466 M1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 467 M0 M1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 468 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn468[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 469 M0 I0 F0 B0 B1 B2 */
PATTERN_TYPE ptn469[] = {
	{ 0, 0, { 6, 11} }	/*mfi bbb M0 F0 I0 B0 B1 B2 */,
	{ 0, 0, { 2, 11} }	/*mlx bbb M0 F0 I0 B0 B1 B2 */
};

/* ================================================================
 * Request bit vector: 470 M1 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 471 M0 M1 I0 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 472 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 473 M0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 474 M1 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 475 M0 M1 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 476 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 477 M0 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 478 M1 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 479 M0 M1 I0 I1 F0 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 480 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 481 M0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 482 M1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 483 M0 M1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 484 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 485 M0 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 486 M1 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 487 M0 M1 I0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 488 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 489 M0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 490 M1 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 491 M0 M1 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 492 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 493 M0 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 494 M1 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 495 M0 M1 I0 I1 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 496 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 497 M0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 498 M1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 499 M0 M1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 500 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 501 M0 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 502 M1 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 503 M0 M1 I0 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 504 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 505 M0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 506 M1 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 507 M0 M1 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 508 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 509 M0 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 510 M1 I0 I1 F0 F1 B0 B1 B2 */

/* ================================================================
 * Request bit vector: 511 M0 M1 I0 I1 F0 F1 B0 B1 B2 */

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
	invalid_PTN_TABLE_entry/* index 74 */,
	invalid_PTN_TABLE_entry/* index 75 */,
	73/* index 76 */,
	74/* index 77 */,
	invalid_PTN_TABLE_entry/* index 78 */,
	invalid_PTN_TABLE_entry/* index 79 */,
	75/* index 80 */,
	76/* index 81 */,
	invalid_PTN_TABLE_entry/* index 82 */,
	invalid_PTN_TABLE_entry/* index 83 */,
	77/* index 84 */,
	78/* index 85 */,
	invalid_PTN_TABLE_entry/* index 86 */,
	invalid_PTN_TABLE_entry/* index 87 */,
	invalid_PTN_TABLE_entry/* index 88 */,
	invalid_PTN_TABLE_entry/* index 89 */,
	invalid_PTN_TABLE_entry/* index 90 */,
	invalid_PTN_TABLE_entry/* index 91 */,
	invalid_PTN_TABLE_entry/* index 92 */,
	invalid_PTN_TABLE_entry/* index 93 */,
	invalid_PTN_TABLE_entry/* index 94 */,
	invalid_PTN_TABLE_entry/* index 95 */,
	invalid_PTN_TABLE_entry/* index 96 */,
	invalid_PTN_TABLE_entry/* index 97 */,
	invalid_PTN_TABLE_entry/* index 98 */,
	invalid_PTN_TABLE_entry/* index 99 */,
	invalid_PTN_TABLE_entry/* index 100 */,
	invalid_PTN_TABLE_entry/* index 101 */,
	invalid_PTN_TABLE_entry/* index 102 */,
	invalid_PTN_TABLE_entry/* index 103 */,
	invalid_PTN_TABLE_entry/* index 104 */,
	invalid_PTN_TABLE_entry/* index 105 */,
	invalid_PTN_TABLE_entry/* index 106 */,
	invalid_PTN_TABLE_entry/* index 107 */,
	invalid_PTN_TABLE_entry/* index 108 */,
	invalid_PTN_TABLE_entry/* index 109 */,
	invalid_PTN_TABLE_entry/* index 110 */,
	invalid_PTN_TABLE_entry/* index 111 */,
	invalid_PTN_TABLE_entry/* index 112 */,
	invalid_PTN_TABLE_entry/* index 113 */,
	invalid_PTN_TABLE_entry/* index 114 */,
	invalid_PTN_TABLE_entry/* index 115 */,
	invalid_PTN_TABLE_entry/* index 116 */,
	invalid_PTN_TABLE_entry/* index 117 */,
	invalid_PTN_TABLE_entry/* index 118 */,
	invalid_PTN_TABLE_entry/* index 119 */,
	invalid_PTN_TABLE_entry/* index 120 */,
	invalid_PTN_TABLE_entry/* index 121 */,
	invalid_PTN_TABLE_entry/* index 122 */,
	invalid_PTN_TABLE_entry/* index 123 */,
	invalid_PTN_TABLE_entry/* index 124 */,
	invalid_PTN_TABLE_entry/* index 125 */,
	invalid_PTN_TABLE_entry/* index 126 */,
	invalid_PTN_TABLE_entry/* index 127 */,
	79/* index 128 */,
	80/* index 129 */,
	81/* index 130 */,
	82/* index 131 */,
	83/* index 132 */,
	84/* index 133 */,
	85/* index 134 */,
	86/* index 135 */,
	87/* index 136 */,
	88/* index 137 */,
	89/* index 138 */,
	90/* index 139 */,
	91/* index 140 */,
	92/* index 141 */,
	93/* index 142 */,
	94/* index 143 */,
	95/* index 144 */,
	96/* index 145 */,
	97/* index 146 */,
	98/* index 147 */,
	99/* index 148 */,
	100/* index 149 */,
	101/* index 150 */,
	102/* index 151 */,
	invalid_PTN_TABLE_entry/* index 152 */,
	invalid_PTN_TABLE_entry/* index 153 */,
	invalid_PTN_TABLE_entry/* index 154 */,
	invalid_PTN_TABLE_entry/* index 155 */,
	invalid_PTN_TABLE_entry/* index 156 */,
	invalid_PTN_TABLE_entry/* index 157 */,
	invalid_PTN_TABLE_entry/* index 158 */,
	invalid_PTN_TABLE_entry/* index 159 */,
	invalid_PTN_TABLE_entry/* index 160 */,
	invalid_PTN_TABLE_entry/* index 161 */,
	invalid_PTN_TABLE_entry/* index 162 */,
	invalid_PTN_TABLE_entry/* index 163 */,
	invalid_PTN_TABLE_entry/* index 164 */,
	invalid_PTN_TABLE_entry/* index 165 */,
	invalid_PTN_TABLE_entry/* index 166 */,
	invalid_PTN_TABLE_entry/* index 167 */,
	invalid_PTN_TABLE_entry/* index 168 */,
	invalid_PTN_TABLE_entry/* index 169 */,
	invalid_PTN_TABLE_entry/* index 170 */,
	invalid_PTN_TABLE_entry/* index 171 */,
	invalid_PTN_TABLE_entry/* index 172 */,
	invalid_PTN_TABLE_entry/* index 173 */,
	invalid_PTN_TABLE_entry/* index 174 */,
	invalid_PTN_TABLE_entry/* index 175 */,
	invalid_PTN_TABLE_entry/* index 176 */,
	invalid_PTN_TABLE_entry/* index 177 */,
	invalid_PTN_TABLE_entry/* index 178 */,
	invalid_PTN_TABLE_entry/* index 179 */,
	invalid_PTN_TABLE_entry/* index 180 */,
	invalid_PTN_TABLE_entry/* index 181 */,
	invalid_PTN_TABLE_entry/* index 182 */,
	invalid_PTN_TABLE_entry/* index 183 */,
	invalid_PTN_TABLE_entry/* index 184 */,
	invalid_PTN_TABLE_entry/* index 185 */,
	invalid_PTN_TABLE_entry/* index 186 */,
	invalid_PTN_TABLE_entry/* index 187 */,
	invalid_PTN_TABLE_entry/* index 188 */,
	invalid_PTN_TABLE_entry/* index 189 */,
	invalid_PTN_TABLE_entry/* index 190 */,
	invalid_PTN_TABLE_entry/* index 191 */,
	103/* index 192 */,
	104/* index 193 */,
	105/* index 194 */,
	106/* index 195 */,
	107/* index 196 */,
	108/* index 197 */,
	109/* index 198 */,
	110/* index 199 */,
	111/* index 200 */,
	112/* index 201 */,
	invalid_PTN_TABLE_entry/* index 202 */,
	invalid_PTN_TABLE_entry/* index 203 */,
	113/* index 204 */,
	114/* index 205 */,
	invalid_PTN_TABLE_entry/* index 206 */,
	invalid_PTN_TABLE_entry/* index 207 */,
	115/* index 208 */,
	116/* index 209 */,
	invalid_PTN_TABLE_entry/* index 210 */,
	invalid_PTN_TABLE_entry/* index 211 */,
	117/* index 212 */,
	118/* index 213 */,
	invalid_PTN_TABLE_entry/* index 214 */,
	invalid_PTN_TABLE_entry/* index 215 */,
	invalid_PTN_TABLE_entry/* index 216 */,
	invalid_PTN_TABLE_entry/* index 217 */,
	invalid_PTN_TABLE_entry/* index 218 */,
	invalid_PTN_TABLE_entry/* index 219 */,
	invalid_PTN_TABLE_entry/* index 220 */,
	invalid_PTN_TABLE_entry/* index 221 */,
	invalid_PTN_TABLE_entry/* index 222 */,
	invalid_PTN_TABLE_entry/* index 223 */,
	invalid_PTN_TABLE_entry/* index 224 */,
	invalid_PTN_TABLE_entry/* index 225 */,
	invalid_PTN_TABLE_entry/* index 226 */,
	invalid_PTN_TABLE_entry/* index 227 */,
	invalid_PTN_TABLE_entry/* index 228 */,
	invalid_PTN_TABLE_entry/* index 229 */,
	invalid_PTN_TABLE_entry/* index 230 */,
	invalid_PTN_TABLE_entry/* index 231 */,
	invalid_PTN_TABLE_entry/* index 232 */,
	invalid_PTN_TABLE_entry/* index 233 */,
	invalid_PTN_TABLE_entry/* index 234 */,
	invalid_PTN_TABLE_entry/* index 235 */,
	invalid_PTN_TABLE_entry/* index 236 */,
	invalid_PTN_TABLE_entry/* index 237 */,
	invalid_PTN_TABLE_entry/* index 238 */,
	invalid_PTN_TABLE_entry/* index 239 */,
	invalid_PTN_TABLE_entry/* index 240 */,
	invalid_PTN_TABLE_entry/* index 241 */,
	invalid_PTN_TABLE_entry/* index 242 */,
	invalid_PTN_TABLE_entry/* index 243 */,
	invalid_PTN_TABLE_entry/* index 244 */,
	invalid_PTN_TABLE_entry/* index 245 */,
	invalid_PTN_TABLE_entry/* index 246 */,
	invalid_PTN_TABLE_entry/* index 247 */,
	invalid_PTN_TABLE_entry/* index 248 */,
	invalid_PTN_TABLE_entry/* index 249 */,
	invalid_PTN_TABLE_entry/* index 250 */,
	invalid_PTN_TABLE_entry/* index 251 */,
	invalid_PTN_TABLE_entry/* index 252 */,
	invalid_PTN_TABLE_entry/* index 253 */,
	invalid_PTN_TABLE_entry/* index 254 */,
	invalid_PTN_TABLE_entry/* index 255 */,
	119/* index 256 */,
	120/* index 257 */,
	121/* index 258 */,
	122/* index 259 */,
	123/* index 260 */,
	124/* index 261 */,
	125/* index 262 */,
	126/* index 263 */,
	127/* index 264 */,
	128/* index 265 */,
	129/* index 266 */,
	130/* index 267 */,
	131/* index 268 */,
	132/* index 269 */,
	133/* index 270 */,
	134/* index 271 */,
	135/* index 272 */,
	136/* index 273 */,
	137/* index 274 */,
	138/* index 275 */,
	139/* index 276 */,
	140/* index 277 */,
	141/* index 278 */,
	142/* index 279 */,
	143/* index 280 */,
	144/* index 281 */,
	145/* index 282 */,
	146/* index 283 */,
	147/* index 284 */,
	148/* index 285 */,
	149/* index 286 */,
	150/* index 287 */,
	151/* index 288 */,
	152/* index 289 */,
	153/* index 290 */,
	154/* index 291 */,
	155/* index 292 */,
	156/* index 293 */,
	157/* index 294 */,
	158/* index 295 */,
	159/* index 296 */,
	160/* index 297 */,
	161/* index 298 */,
	162/* index 299 */,
	163/* index 300 */,
	164/* index 301 */,
	165/* index 302 */,
	166/* index 303 */,
	167/* index 304 */,
	168/* index 305 */,
	169/* index 306 */,
	170/* index 307 */,
	171/* index 308 */,
	172/* index 309 */,
	173/* index 310 */,
	174/* index 311 */,
	175/* index 312 */,
	176/* index 313 */,
	177/* index 314 */,
	178/* index 315 */,
	invalid_PTN_TABLE_entry/* index 316 */,
	invalid_PTN_TABLE_entry/* index 317 */,
	invalid_PTN_TABLE_entry/* index 318 */,
	invalid_PTN_TABLE_entry/* index 319 */,
	179/* index 320 */,
	180/* index 321 */,
	181/* index 322 */,
	182/* index 323 */,
	183/* index 324 */,
	184/* index 325 */,
	185/* index 326 */,
	186/* index 327 */,
	187/* index 328 */,
	188/* index 329 */,
	invalid_PTN_TABLE_entry/* index 330 */,
	invalid_PTN_TABLE_entry/* index 331 */,
	189/* index 332 */,
	190/* index 333 */,
	invalid_PTN_TABLE_entry/* index 334 */,
	invalid_PTN_TABLE_entry/* index 335 */,
	191/* index 336 */,
	192/* index 337 */,
	invalid_PTN_TABLE_entry/* index 338 */,
	invalid_PTN_TABLE_entry/* index 339 */,
	193/* index 340 */,
	194/* index 341 */,
	invalid_PTN_TABLE_entry/* index 342 */,
	invalid_PTN_TABLE_entry/* index 343 */,
	invalid_PTN_TABLE_entry/* index 344 */,
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
	195/* index 384 */,
	196/* index 385 */,
	197/* index 386 */,
	198/* index 387 */,
	199/* index 388 */,
	200/* index 389 */,
	201/* index 390 */,
	202/* index 391 */,
	203/* index 392 */,
	204/* index 393 */,
	205/* index 394 */,
	206/* index 395 */,
	207/* index 396 */,
	208/* index 397 */,
	209/* index 398 */,
	210/* index 399 */,
	211/* index 400 */,
	212/* index 401 */,
	213/* index 402 */,
	214/* index 403 */,
	215/* index 404 */,
	216/* index 405 */,
	217/* index 406 */,
	218/* index 407 */,
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
	219/* index 448 */,
	220/* index 449 */,
	221/* index 450 */,
	222/* index 451 */,
	223/* index 452 */,
	224/* index 453 */,
	225/* index 454 */,
	226/* index 455 */,
	227/* index 456 */,
	228/* index 457 */,
	invalid_PTN_TABLE_entry/* index 458 */,
	invalid_PTN_TABLE_entry/* index 459 */,
	229/* index 460 */,
	230/* index 461 */,
	invalid_PTN_TABLE_entry/* index 462 */,
	invalid_PTN_TABLE_entry/* index 463 */,
	231/* index 464 */,
	232/* index 465 */,
	invalid_PTN_TABLE_entry/* index 466 */,
	invalid_PTN_TABLE_entry/* index 467 */,
	233/* index 468 */,
	234/* index 469 */,
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
	invalid_PTN_TABLE_entry/* index 511 */
};

PTN_TABLE_LINE PTN_table_body[] = {
	{21, ptn1} /* position 0 */,
	{38, ptn2} /* position 1 */,
	{38, ptn3} /* position 2 */,
	{10, ptn4} /* position 3 */,
	{18, ptn5} /* position 4 */,
	{33, ptn6} /* position 5 */,
	{33, ptn7} /* position 6 */,
	{24, ptn8} /* position 7 */,
	{24, ptn9} /* position 8 */,
	{22, ptn10} /* position 9 */,
	{22, ptn11} /* position 10 */,
	{22, ptn12} /* position 11 */,
	{22, ptn13} /* position 12 */,
	{20, ptn14} /* position 13 */,
	{20, ptn15} /* position 14 */,
	{4, ptn16} /* position 15 */,
	{4, ptn17} /* position 16 */,
	{20, ptn18} /* position 17 */,
	{20, ptn19} /* position 18 */,
	{4, ptn20} /* position 19 */,
	{4, ptn21} /* position 20 */,
	{16, ptn22} /* position 21 */,
	{16, ptn23} /* position 22 */,
	{11, ptn24} /* position 23 */,
	{11, ptn25} /* position 24 */,
	{11, ptn26} /* position 25 */,
	{11, ptn27} /* position 26 */,
	{9, ptn28} /* position 27 */,
	{9, ptn29} /* position 28 */,
	{9, ptn30} /* position 29 */,
	{9, ptn31} /* position 30 */,
	{17, ptn32} /* position 31 */,
	{17, ptn33} /* position 32 */,
	{14, ptn34} /* position 33 */,
	{14, ptn35} /* position 34 */,
	{15, ptn36} /* position 35 */,
	{15, ptn37} /* position 36 */,
	{12, ptn38} /* position 37 */,
	{12, ptn39} /* position 38 */,
	{13, ptn40} /* position 39 */,
	{13, ptn41} /* position 40 */,
	{11, ptn42} /* position 41 */,
	{11, ptn43} /* position 42 */,
	{11, ptn44} /* position 43 */,
	{11, ptn45} /* position 44 */,
	{9, ptn46} /* position 45 */,
	{9, ptn47} /* position 46 */,
	{8, ptn48} /* position 47 */,
	{8, ptn49} /* position 48 */,
	{8, ptn50} /* position 49 */,
	{8, ptn51} /* position 50 */,
	{6, ptn52} /* position 51 */,
	{6, ptn53} /* position 52 */,
	{6, ptn54} /* position 53 */,
	{6, ptn55} /* position 54 */,
	{6, ptn56} /* position 55 */,
	{6, ptn57} /* position 56 */,
	{6, ptn58} /* position 57 */,
	{6, ptn59} /* position 58 */,
	{4, ptn60} /* position 59 */,
	{4, ptn61} /* position 60 */,
	{4, ptn62} /* position 61 */,
	{4, ptn63} /* position 62 */,
	{7, ptn64} /* position 63 */,
	{5, ptn65} /* position 64 */,
	{1, ptn66} /* position 65 */,
	{1, ptn67} /* position 66 */,
	{6, ptn68} /* position 67 */,
	{5, ptn69} /* position 68 */,
	{1, ptn70} /* position 69 */,
	{1, ptn71} /* position 70 */,
	{1, ptn72} /* position 71 */,
	{1, ptn73} /* position 72 */,
	{1, ptn76} /* position 73 */,
	{1, ptn77} /* position 74 */,
	{2, ptn80} /* position 75 */,
	{2, ptn81} /* position 76 */,
	{2, ptn84} /* position 77 */,
	{2, ptn85} /* position 78 */,
	{13, ptn128} /* position 79 */,
	{11, ptn129} /* position 80 */,
	{5, ptn130} /* position 81 */,
	{5, ptn131} /* position 82 */,
	{11, ptn132} /* position 83 */,
	{10, ptn133} /* position 84 */,
	{5, ptn134} /* position 85 */,
	{5, ptn135} /* position 86 */,
	{2, ptn136} /* position 87 */,
	{2, ptn137} /* position 88 */,
	{1, ptn138} /* position 89 */,
	{1, ptn139} /* position 90 */,
	{2, ptn140} /* position 91 */,
	{2, ptn141} /* position 92 */,
	{1, ptn142} /* position 93 */,
	{1, ptn143} /* position 94 */,
	{4, ptn144} /* position 95 */,
	{4, ptn145} /* position 96 */,
	{2, ptn146} /* position 97 */,
	{2, ptn147} /* position 98 */,
	{4, ptn148} /* position 99 */,
	{4, ptn149} /* position 100 */,
	{2, ptn150} /* position 101 */,
	{2, ptn151} /* position 102 */,
	{7, ptn192} /* position 103 */,
	{5, ptn193} /* position 104 */,
	{1, ptn194} /* position 105 */,
	{1, ptn195} /* position 106 */,
	{6, ptn196} /* position 107 */,
	{5, ptn197} /* position 108 */,
	{1, ptn198} /* position 109 */,
	{1, ptn199} /* position 110 */,
	{1, ptn200} /* position 111 */,
	{1, ptn201} /* position 112 */,
	{1, ptn204} /* position 113 */,
	{1, ptn205} /* position 114 */,
	{2, ptn208} /* position 115 */,
	{2, ptn209} /* position 116 */,
	{2, ptn212} /* position 117 */,
	{2, ptn213} /* position 118 */,
	{26, ptn256} /* position 119 */,
	{24, ptn257} /* position 120 */,
	{23, ptn258} /* position 121 */,
	{23, ptn259} /* position 122 */,
	{24, ptn260} /* position 123 */,
	{23, ptn261} /* position 124 */,
	{19, ptn262} /* position 125 */,
	{19, ptn263} /* position 126 */,
	{13, ptn264} /* position 127 */,
	{13, ptn265} /* position 128 */,
	{11, ptn266} /* position 129 */,
	{11, ptn267} /* position 130 */,
	{11, ptn268} /* position 131 */,
	{11, ptn269} /* position 132 */,
	{9, ptn270} /* position 133 */,
	{9, ptn271} /* position 134 */,
	{9, ptn272} /* position 135 */,
	{9, ptn273} /* position 136 */,
	{11, ptn274} /* position 137 */,
	{11, ptn275} /* position 138 */,
	{10, ptn276} /* position 139 */,
	{10, ptn277} /* position 140 */,
	{8, ptn278} /* position 141 */,
	{8, ptn279} /* position 142 */,
	{5, ptn280} /* position 143 */,
	{5, ptn281} /* position 144 */,
	{5, ptn282} /* position 145 */,
	{5, ptn283} /* position 146 */,
	{3, ptn284} /* position 147 */,
	{3, ptn285} /* position 148 */,
	{3, ptn286} /* position 149 */,
	{3, ptn287} /* position 150 */,
	{9, ptn288} /* position 151 */,
	{9, ptn289} /* position 152 */,
	{8, ptn290} /* position 153 */,
	{8, ptn291} /* position 154 */,
	{7, ptn292} /* position 155 */,
	{7, ptn293} /* position 156 */,
	{6, ptn294} /* position 157 */,
	{6, ptn295} /* position 158 */,
	{5, ptn296} /* position 159 */,
	{5, ptn297} /* position 160 */,
	{5, ptn298} /* position 161 */,
	{5, ptn299} /* position 162 */,
	{3, ptn300} /* position 163 */,
	{3, ptn301} /* position 164 */,
	{3, ptn302} /* position 165 */,
	{3, ptn303} /* position 166 */,
	{4, ptn304} /* position 167 */,
	{4, ptn305} /* position 168 */,
	{4, ptn306} /* position 169 */,
	{4, ptn307} /* position 170 */,
	{2, ptn308} /* position 171 */,
	{2, ptn309} /* position 172 */,
	{2, ptn310} /* position 173 */,
	{2, ptn311} /* position 174 */,
	{2, ptn312} /* position 175 */,
	{2, ptn313} /* position 176 */,
	{2, ptn314} /* position 177 */,
	{2, ptn315} /* position 178 */,
	{7, ptn320} /* position 179 */,
	{5, ptn321} /* position 180 */,
	{1, ptn322} /* position 181 */,
	{1, ptn323} /* position 182 */,
	{6, ptn324} /* position 183 */,
	{5, ptn325} /* position 184 */,
	{1, ptn326} /* position 185 */,
	{1, ptn327} /* position 186 */,
	{1, ptn328} /* position 187 */,
	{1, ptn329} /* position 188 */,
	{1, ptn332} /* position 189 */,
	{1, ptn333} /* position 190 */,
	{2, ptn336} /* position 191 */,
	{2, ptn337} /* position 192 */,
	{2, ptn340} /* position 193 */,
	{2, ptn341} /* position 194 */,
	{13, ptn384} /* position 195 */,
	{11, ptn385} /* position 196 */,
	{5, ptn386} /* position 197 */,
	{5, ptn387} /* position 198 */,
	{11, ptn388} /* position 199 */,
	{10, ptn389} /* position 200 */,
	{5, ptn390} /* position 201 */,
	{5, ptn391} /* position 202 */,
	{2, ptn392} /* position 203 */,
	{2, ptn393} /* position 204 */,
	{1, ptn394} /* position 205 */,
	{1, ptn395} /* position 206 */,
	{2, ptn396} /* position 207 */,
	{2, ptn397} /* position 208 */,
	{1, ptn398} /* position 209 */,
	{1, ptn399} /* position 210 */,
	{4, ptn400} /* position 211 */,
	{4, ptn401} /* position 212 */,
	{2, ptn402} /* position 213 */,
	{2, ptn403} /* position 214 */,
	{4, ptn404} /* position 215 */,
	{4, ptn405} /* position 216 */,
	{2, ptn406} /* position 217 */,
	{2, ptn407} /* position 218 */,
	{7, ptn448} /* position 219 */,
	{5, ptn449} /* position 220 */,
	{1, ptn450} /* position 221 */,
	{1, ptn451} /* position 222 */,
	{6, ptn452} /* position 223 */,
	{5, ptn453} /* position 224 */,
	{1, ptn454} /* position 225 */,
	{1, ptn455} /* position 226 */,
	{1, ptn456} /* position 227 */,
	{1, ptn457} /* position 228 */,
	{1, ptn460} /* position 229 */,
	{1, ptn461} /* position 230 */,
	{2, ptn464} /* position 231 */,
	{2, ptn465} /* position 232 */,
	{2, ptn468} /* position 233 */,
	{2, ptn469} /* position 234 */
};

const PTN_TABLE_TYPE PTN_table = {
	PTN_table_map, PTN_table_body
};

UINT            dispersal_table_size = 256;
DISPERSAL_TARG  dispersal_table_body[]={
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x200}/* mii mii */,
    { 0x1, 0x4, 0x4, 0x1, 0x8, 0x200}/* mi_i mii */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x200}/* mlx mii */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_3 mii */,
    { 0x1, 0x2, 0x4, 0x200, 0x8, 0x200}/* mmi mii */,
    { 0x1, 0x1, 0x4, 0x2, 0x8, 0x200}/* m_mi mii */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x200}/* mfi mii */,
    { 0x1, 0x2, 0x10, 0x200, 0x4, 0x8}/* mmf mii */,
    { 0x1, 0x4, 0x100, 0x2, 0x8, 0x200}/* mib mii */,
    { 0x1, 0x80, 0x100, 0x2, 0x4, 0x8}/* mbb mii */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_a mii */,
    { 0x40, 0x80, 0x100, 0x1, 0x4, 0x8}/* bbb mii */,
    { 0x1, 0x2, 0x100, 0x200, 0x4, 0x8}/* mmb mii */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_d mii */,
    { 0x1, 0x10, 0x100, 0x2, 0x4, 0x8}/* mfb mii */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_f mii */,
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x8}/* mii mi_i */,
    { 0x1, 0x4, 0x4, 0x1, 0x8, 0x8}/* mi_i mi_i */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x8}/* mlx mi_i */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_3 mi_i */,
    { 0x1, 0x2, 0x4, 0x200, 0x8, 0x8}/* mmi mi_i */,
    { 0x1, 0x1, 0x4, 0x2, 0x8, 0x8}/* m_mi mi_i */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x8}/* mfi mi_i */,
    { 0x1, 0x2, 0x10, 0x200, 0x4, 0x8}/* mmf mi_i */,
    { 0x1, 0x4, 0x100, 0x2, 0x8, 0x8}/* mib mi_i */,
    { 0x1, 0x80, 0x100, 0x2, 0x4, 0x8}/* mbb mi_i */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_a mi_i */,
    { 0x40, 0x80, 0x100, 0x1, 0x4, 0x8}/* bbb mi_i */,
    { 0x1, 0x2, 0x100, 0x200, 0x4, 0x8}/* mmb mi_i */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_d mi_i */,
    { 0x1, 0x10, 0x100, 0x2, 0x4, 0x8}/* mfb mi_i */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x8}/* reserved_f mi_i */,
    { 0x1, 0x4, 0x8, 0x2, 0x20, 0x200}/* mii mlx */,
    { 0x1, 0x4, 0x4, 0x1, 0x20, 0x8}/* mi_i mlx */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x8}/* mlx mlx */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_3 mlx */,
    { 0x1, 0x2, 0x4, 0x200, 0x20, 0x8}/* mmi mlx */,
    { 0x1, 0x1, 0x4, 0x2, 0x20, 0x8}/* m_mi mlx */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x8}/* mfi mlx */,
    { 0x1, 0x2, 0x10, 0x200, 0x20, 0x8}/* mmf mlx */,
    { 0x1, 0x4, 0x100, 0x2, 0x20, 0x8}/* mib mlx */,
    { 0x1, 0x80, 0x100, 0x2, 0x20, 0x8}/* mbb mlx */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_a mlx */,
    { 0x40, 0x80, 0x100, 0x1, 0x20, 0x8}/* bbb mlx */,
    { 0x1, 0x2, 0x100, 0x200, 0x20, 0x8}/* mmb mlx */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_d mlx */,
    { 0x1, 0x10, 0x100, 0x2, 0x20, 0x8}/* mfb mlx */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_f mlx */,
    { 0x1, 0x4, 0x8, 0x200, 0x200, 0x200}/* mii reserved_3 */,
    { 0x1, 0x4, 0x4, 0x200, 0x200, 0x200}/* mi_i reserved_3 */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mlx reserved_3 */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_3 reserved_3 */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x200}/* mmi reserved_3 */,
    { 0x1, 0x1, 0x4, 0x200, 0x200, 0x200}/* m_mi reserved_3 */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mfi reserved_3 */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x200}/* mmf reserved_3 */,
    { 0x1, 0x4, 0x100, 0x200, 0x200, 0x200}/* mib reserved_3 */,
    { 0x1, 0x80, 0x100, 0x200, 0x200, 0x200}/* mbb reserved_3 */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_a reserved_3 */,
    { 0x40, 0x80, 0x100, 0x200, 0x200, 0x200}/* bbb reserved_3 */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x200}/* mmb reserved_3 */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_d reserved_3 */,
    { 0x1, 0x10, 0x100, 0x200, 0x200, 0x200}/* mfb reserved_3 */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_f reserved_3 */,
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x200}/* mii mmi */,
    { 0x1, 0x4, 0x4, 0x1, 0x2, 0x8}/* mi_i mmi */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x8}/* mlx mmi */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x8}/* reserved_3 mmi */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x8}/* mmi mmi */,
    { 0x1, 0x1, 0x4, 0x2, 0x200, 0x8}/* m_mi mmi */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x8}/* mfi mmi */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x8}/* mmf mmi */,
    { 0x1, 0x4, 0x100, 0x2, 0x200, 0x8}/* mib mmi */,
    { 0x1, 0x80, 0x100, 0x2, 0x200, 0x8}/* mbb mmi */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x8}/* reserved_a mmi */,
    { 0x40, 0x80, 0x100, 0x1, 0x2, 0x8}/* bbb mmi */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x8}/* mmb mmi */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x8}/* reserved_d mmi */,
    { 0x1, 0x10, 0x100, 0x2, 0x200, 0x8}/* mfb mmi */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x8}/* reserved_f mmi */,
    { 0x1, 0x4, 0x8, 0x2, 0x1, 0x8}/* mii m_mi */,
    { 0x1, 0x4, 0x4, 0x1, 0x1, 0x8}/* mi_i m_mi */,
    { 0x1, 0x10, 0x4, 0x2, 0x1, 0x8}/* mlx m_mi */,
    { 0x200, 0x200, 0x200, 0x1, 0x1, 0x8}/* reserved_3 m_mi */,
    { 0x1, 0x2, 0x4, 0x200, 0x1, 0x8}/* mmi m_mi */,
    { 0x1, 0x1, 0x4, 0x2, 0x1, 0x8}/* m_mi m_mi */,
    { 0x1, 0x10, 0x4, 0x2, 0x1, 0x8}/* mfi m_mi */,
    { 0x1, 0x2, 0x10, 0x200, 0x1, 0x8}/* mmf m_mi */,
    { 0x1, 0x4, 0x100, 0x2, 0x1, 0x8}/* mib m_mi */,
    { 0x1, 0x80, 0x100, 0x2, 0x1, 0x8}/* mbb m_mi */,
    { 0x200, 0x200, 0x200, 0x1, 0x1, 0x8}/* reserved_a m_mi */,
    { 0x40, 0x80, 0x100, 0x1, 0x1, 0x8}/* bbb m_mi */,
    { 0x1, 0x2, 0x100, 0x200, 0x1, 0x8}/* mmb m_mi */,
    { 0x200, 0x200, 0x200, 0x1, 0x1, 0x8}/* reserved_d m_mi */,
    { 0x1, 0x10, 0x100, 0x2, 0x1, 0x8}/* mfb m_mi */,
    { 0x200, 0x200, 0x200, 0x1, 0x1, 0x8}/* reserved_f m_mi */,
    { 0x1, 0x4, 0x8, 0x2, 0x20, 0x200}/* mii mfi */,
    { 0x1, 0x4, 0x4, 0x1, 0x20, 0x8}/* mi_i mfi */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x8}/* mlx mfi */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_3 mfi */,
    { 0x1, 0x2, 0x4, 0x200, 0x20, 0x8}/* mmi mfi */,
    { 0x1, 0x1, 0x4, 0x2, 0x20, 0x8}/* m_mi mfi */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x8}/* mfi mfi */,
    { 0x1, 0x2, 0x10, 0x200, 0x20, 0x8}/* mmf mfi */,
    { 0x1, 0x4, 0x100, 0x2, 0x20, 0x8}/* mib mfi */,
    { 0x1, 0x80, 0x100, 0x2, 0x20, 0x8}/* mbb mfi */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_a mfi */,
    { 0x40, 0x80, 0x100, 0x1, 0x20, 0x8}/* bbb mfi */,
    { 0x1, 0x2, 0x100, 0x200, 0x20, 0x8}/* mmb mfi */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_d mfi */,
    { 0x1, 0x10, 0x100, 0x2, 0x20, 0x8}/* mfb mfi */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x8}/* reserved_f mfi */,
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x20}/* mii mmf */,
    { 0x1, 0x4, 0x4, 0x1, 0x2, 0x20}/* mi_i mmf */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x20}/* mlx mmf */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x20}/* reserved_3 mmf */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x20}/* mmi mmf */,
    { 0x1, 0x1, 0x4, 0x2, 0x200, 0x20}/* m_mi mmf */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x20}/* mfi mmf */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x20}/* mmf mmf */,
    { 0x1, 0x4, 0x100, 0x2, 0x200, 0x20}/* mib mmf */,
    { 0x1, 0x80, 0x100, 0x2, 0x200, 0x20}/* mbb mmf */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x20}/* reserved_a mmf */,
    { 0x40, 0x80, 0x100, 0x1, 0x2, 0x20}/* bbb mmf */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x20}/* mmb mmf */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x20}/* reserved_d mmf */,
    { 0x1, 0x10, 0x100, 0x2, 0x200, 0x20}/* mfb mmf */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x20}/* reserved_f mmf */,
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x100}/* mii mib */,
    { 0x1, 0x4, 0x4, 0x1, 0x8, 0x100}/* mi_i mib */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x100}/* mlx mib */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x100}/* reserved_3 mib */,
    { 0x1, 0x2, 0x4, 0x200, 0x8, 0x100}/* mmi mib */,
    { 0x1, 0x1, 0x4, 0x2, 0x8, 0x100}/* m_mi mib */,
    { 0x1, 0x10, 0x4, 0x2, 0x8, 0x100}/* mfi mib */,
    { 0x1, 0x2, 0x10, 0x200, 0x4, 0x100}/* mmf mib */,
    { 0x1, 0x4, 0x100, 0x2, 0x8, 0x200}/* mib mib */,
    { 0x1, 0x80, 0x100, 0x2, 0x4, 0x200}/* mbb mib */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x100}/* reserved_a mib */,
    { 0x40, 0x80, 0x100, 0x1, 0x4, 0x200}/* bbb mib */,
    { 0x1, 0x2, 0x100, 0x200, 0x4, 0x200}/* mmb mib */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x100}/* reserved_d mib */,
    { 0x1, 0x10, 0x100, 0x2, 0x4, 0x200}/* mfb mib */,
    { 0x200, 0x200, 0x200, 0x1, 0x4, 0x100}/* reserved_f mib */,
    { 0x1, 0x4, 0x8, 0x2, 0x80, 0x100}/* mii mbb */,
    { 0x1, 0x4, 0x4, 0x1, 0x80, 0x100}/* mi_i mbb */,
    { 0x1, 0x10, 0x4, 0x2, 0x80, 0x100}/* mlx mbb */,
    { 0x200, 0x200, 0x200, 0x1, 0x80, 0x100}/* reserved_3 mbb */,
    { 0x1, 0x2, 0x4, 0x200, 0x80, 0x100}/* mmi mbb */,
    { 0x1, 0x1, 0x4, 0x2, 0x80, 0x100}/* m_mi mbb */,
    { 0x1, 0x10, 0x4, 0x2, 0x80, 0x100}/* mfi mbb */,
    { 0x1, 0x2, 0x10, 0x200, 0x80, 0x100}/* mmf mbb */,
    { 0x1, 0x4, 0x100, 0x2, 0x80, 0x200}/* mib mbb */,
    { 0x1, 0x80, 0x100, 0x2, 0x200, 0x200}/* mbb mbb */,
    { 0x200, 0x200, 0x200, 0x1, 0x80, 0x100}/* reserved_a mbb */,
    { 0x40, 0x80, 0x100, 0x1, 0x200, 0x200}/* bbb mbb */,
    { 0x1, 0x2, 0x100, 0x200, 0x80, 0x200}/* mmb mbb */,
    { 0x200, 0x200, 0x200, 0x1, 0x80, 0x100}/* reserved_d mbb */,
    { 0x1, 0x10, 0x100, 0x2, 0x80, 0x200}/* mfb mbb */,
    { 0x200, 0x200, 0x200, 0x1, 0x80, 0x100}/* reserved_f mbb */,
    { 0x1, 0x4, 0x8, 0x200, 0x200, 0x200}/* mii reserved_a */,
    { 0x1, 0x4, 0x4, 0x200, 0x200, 0x200}/* mi_i reserved_a */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mlx reserved_a */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_3 reserved_a */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x200}/* mmi reserved_a */,
    { 0x1, 0x1, 0x4, 0x200, 0x200, 0x200}/* m_mi reserved_a */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mfi reserved_a */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x200}/* mmf reserved_a */,
    { 0x1, 0x4, 0x100, 0x200, 0x200, 0x200}/* mib reserved_a */,
    { 0x1, 0x80, 0x100, 0x200, 0x200, 0x200}/* mbb reserved_a */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_a reserved_a */,
    { 0x40, 0x80, 0x100, 0x200, 0x200, 0x200}/* bbb reserved_a */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x200}/* mmb reserved_a */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_d reserved_a */,
    { 0x1, 0x10, 0x100, 0x200, 0x200, 0x200}/* mfb reserved_a */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_f reserved_a */,
    { 0x1, 0x4, 0x8, 0x40, 0x80, 0x100}/* mii bbb */,
    { 0x1, 0x4, 0x4, 0x40, 0x80, 0x100}/* mi_i bbb */,
    { 0x1, 0x10, 0x4, 0x40, 0x80, 0x100}/* mlx bbb */,
    { 0x200, 0x200, 0x200, 0x40, 0x80, 0x100}/* reserved_3 bbb */,
    { 0x1, 0x2, 0x4, 0x40, 0x80, 0x100}/* mmi bbb */,
    { 0x1, 0x1, 0x4, 0x40, 0x80, 0x100}/* m_mi bbb */,
    { 0x1, 0x10, 0x4, 0x40, 0x80, 0x100}/* mfi bbb */,
    { 0x1, 0x2, 0x10, 0x40, 0x80, 0x100}/* mmf bbb */,
    { 0x1, 0x4, 0x100, 0x40, 0x80, 0x200}/* mib bbb */,
    { 0x1, 0x80, 0x100, 0x40, 0x200, 0x200}/* mbb bbb */,
    { 0x200, 0x200, 0x200, 0x40, 0x80, 0x100}/* reserved_a bbb */,
    { 0x40, 0x80, 0x100, 0x200, 0x200, 0x200}/* bbb bbb */,
    { 0x1, 0x2, 0x100, 0x40, 0x80, 0x200}/* mmb bbb */,
    { 0x200, 0x200, 0x200, 0x40, 0x80, 0x100}/* reserved_d bbb */,
    { 0x1, 0x10, 0x100, 0x40, 0x80, 0x200}/* mfb bbb */,
    { 0x200, 0x200, 0x200, 0x40, 0x80, 0x100}/* reserved_f bbb */,
    { 0x1, 0x4, 0x8, 0x2, 0x200, 0x100}/* mii mmb */,
    { 0x1, 0x4, 0x4, 0x1, 0x2, 0x100}/* mi_i mmb */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x100}/* mlx mmb */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x100}/* reserved_3 mmb */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x100}/* mmi mmb */,
    { 0x1, 0x1, 0x4, 0x2, 0x200, 0x100}/* m_mi mmb */,
    { 0x1, 0x10, 0x4, 0x2, 0x200, 0x100}/* mfi mmb */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x100}/* mmf mmb */,
    { 0x1, 0x4, 0x100, 0x2, 0x200, 0x200}/* mib mmb */,
    { 0x1, 0x80, 0x100, 0x2, 0x200, 0x200}/* mbb mmb */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x100}/* reserved_a mmb */,
    { 0x40, 0x80, 0x100, 0x1, 0x2, 0x200}/* bbb mmb */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x200}/* mmb mmb */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x100}/* reserved_d mmb */,
    { 0x1, 0x10, 0x100, 0x2, 0x200, 0x200}/* mfb mmb */,
    { 0x200, 0x200, 0x200, 0x1, 0x2, 0x100}/* reserved_f mmb */,
    { 0x1, 0x4, 0x8, 0x200, 0x200, 0x200}/* mii reserved_d */,
    { 0x1, 0x4, 0x4, 0x200, 0x200, 0x200}/* mi_i reserved_d */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mlx reserved_d */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_3 reserved_d */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x200}/* mmi reserved_d */,
    { 0x1, 0x1, 0x4, 0x200, 0x200, 0x200}/* m_mi reserved_d */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mfi reserved_d */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x200}/* mmf reserved_d */,
    { 0x1, 0x4, 0x100, 0x200, 0x200, 0x200}/* mib reserved_d */,
    { 0x1, 0x80, 0x100, 0x200, 0x200, 0x200}/* mbb reserved_d */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_a reserved_d */,
    { 0x40, 0x80, 0x100, 0x200, 0x200, 0x200}/* bbb reserved_d */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x200}/* mmb reserved_d */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_d reserved_d */,
    { 0x1, 0x10, 0x100, 0x200, 0x200, 0x200}/* mfb reserved_d */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_f reserved_d */,
    { 0x1, 0x4, 0x8, 0x2, 0x20, 0x100}/* mii mfb */,
    { 0x1, 0x4, 0x4, 0x1, 0x20, 0x100}/* mi_i mfb */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x100}/* mlx mfb */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x100}/* reserved_3 mfb */,
    { 0x1, 0x2, 0x4, 0x200, 0x20, 0x100}/* mmi mfb */,
    { 0x1, 0x1, 0x4, 0x2, 0x20, 0x100}/* m_mi mfb */,
    { 0x1, 0x10, 0x4, 0x2, 0x20, 0x100}/* mfi mfb */,
    { 0x1, 0x2, 0x10, 0x200, 0x20, 0x100}/* mmf mfb */,
    { 0x1, 0x4, 0x100, 0x2, 0x20, 0x200}/* mib mfb */,
    { 0x1, 0x80, 0x100, 0x2, 0x20, 0x200}/* mbb mfb */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x100}/* reserved_a mfb */,
    { 0x40, 0x80, 0x100, 0x1, 0x20, 0x200}/* bbb mfb */,
    { 0x1, 0x2, 0x100, 0x200, 0x20, 0x200}/* mmb mfb */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x100}/* reserved_d mfb */,
    { 0x1, 0x10, 0x100, 0x2, 0x20, 0x200}/* mfb mfb */,
    { 0x200, 0x200, 0x200, 0x1, 0x20, 0x100}/* reserved_f mfb */,
    { 0x1, 0x4, 0x8, 0x200, 0x200, 0x200}/* mii reserved_f */,
    { 0x1, 0x4, 0x4, 0x200, 0x200, 0x200}/* mi_i reserved_f */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mlx reserved_f */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_3 reserved_f */,
    { 0x1, 0x2, 0x4, 0x200, 0x200, 0x200}/* mmi reserved_f */,
    { 0x1, 0x1, 0x4, 0x200, 0x200, 0x200}/* m_mi reserved_f */,
    { 0x1, 0x10, 0x4, 0x200, 0x200, 0x200}/* mfi reserved_f */,
    { 0x1, 0x2, 0x10, 0x200, 0x200, 0x200}/* mmf reserved_f */,
    { 0x1, 0x4, 0x100, 0x200, 0x200, 0x200}/* mib reserved_f */,
    { 0x1, 0x80, 0x100, 0x200, 0x200, 0x200}/* mbb reserved_f */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_a reserved_f */,
    { 0x40, 0x80, 0x100, 0x200, 0x200, 0x200}/* bbb reserved_f */,
    { 0x1, 0x2, 0x100, 0x200, 0x200, 0x200}/* mmb reserved_f */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_d reserved_f */,
    { 0x1, 0x10, 0x100, 0x200, 0x200, 0x200}/* mfb reserved_f */,
    { 0x200, 0x200, 0x200, 0x200, 0x200, 0x200}/* reserved_f reserved_f */
};

const DISPERSAL_TARG_TABLE dispersal_table =
    { dispersal_table_size, dispersal_table_body };

INT MAX_PTN_TABLE_LINE_SIZE = 38; 
/* End of Generated Offline Table Definition.*/
