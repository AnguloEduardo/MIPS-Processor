/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Documents/LabArqui/Practica8/MIPSProcessor/Shitf_Left_2bits_32.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1987757588013599599_1035706684(char *, char *, char *, char *, int );


static void work_a_1957834169_3212880686_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5080U);
    t3 = ieee_p_1242562249_sub_1987757588013599599_1035706684(IEEE_P_1242562249, t7, t2, t1, 2);
    t4 = (t7 + 12U);
    t8 = *((unsigned int *)t4);
    t8 = (t8 * 1U);
    t9 = (32U != t8);
    if (t9 == 1)
        goto LAB2;

LAB3:    t5 = (t0 + 3128);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, t8, 0);
    goto LAB3;

}


extern void work_a_1957834169_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1957834169_3212880686_p_0};
	xsi_register_didat("work_a_1957834169_3212880686", "isim/MIPS_TB_isim_beh.exe.sim/work/a_1957834169_3212880686.didat");
	xsi_register_executes(pe);
}
