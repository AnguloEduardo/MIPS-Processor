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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Sign_Extender/Sign_Extender.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1098786653_3212880686_p_0(char *t0)
{
    char t13[16];
    char t15[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2792);
    t9 = (t0 + 592U);
    t10 = *((char **)t9);
    t11 = ((IEEE_P_2592010699) + 2332);
    t12 = (t15 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 0;
    t14 = (t12 + 4U);
    *((int *)t14) = 15;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t3 = (15 - 0);
    t4 = (t3 * 1);
    t4 = (t4 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t4;
    t14 = (t0 + 2720U);
    t9 = xsi_base_array_concat(t9, t13, t11, (char)97, t1, t15, (char)97, t10, t14, (char)101);
    t4 = (16U + 16U);
    t7 = (32U != t4);
    if (t7 == 1)
        goto LAB7;

LAB8:    t16 = (t0 + 1584);
    t17 = (t16 + 32U);
    t21 = *((char **)t17);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 32U);
    xsi_driver_first_trans_fast_port(t16);

LAB3:    t1 = (t0 + 1540);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t9 = (t0 + 2776);
    t11 = (t0 + 592U);
    t12 = *((char **)t11);
    t14 = ((IEEE_P_2592010699) + 2332);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 15;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (15 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t0 + 2720U);
    t11 = xsi_base_array_concat(t11, t13, t14, (char)97, t9, t15, (char)97, t12, t17, (char)101);
    t19 = (16U + 16U);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 1584);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t19, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(32U, t4, 0);
    goto LAB8;

}


extern void work_a_1098786653_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1098786653_3212880686_p_0};
	xsi_register_didat("work_a_1098786653_3212880686", "isim/Test_Bench_Sign_Extender_isim_beh.exe.sim/work/a_1098786653_3212880686.didat");
	xsi_register_executes(pe);
}
