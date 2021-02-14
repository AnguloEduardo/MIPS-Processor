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
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Practica 4/RegisterFile/BancoRegistros_TB.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1837729901_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1596U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1972);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1496);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1972);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1496);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1837729901_2372691052_p_1(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 1740U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1640);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1640);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4940);
    t6 = (t0 + 4943);
    t10 = ((IEEE_P_2592010699) + 2332);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (2 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 0;
    t17 = (t13 + 4U);
    *((int *)t17) = 27;
    t17 = (t13 + 8U);
    *((int *)t17) = 1;
    t18 = (27 - 0);
    t15 = (t18 * 1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t2, t11, (char)97, t6, t16, (char)101);
    t15 = (3U + 28U);
    t19 = (31U != t15);
    if (t19 == 1)
        goto LAB12;

LAB13:    t17 = (t0 + 2008);
    t20 = (t17 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 31U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4971);
    t6 = (t0 + 2044);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1640);
    xsi_process_wait(t2, t5);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_size_not_matching(31U, t15, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5003);
    t6 = (t0 + 5006);
    t10 = ((IEEE_P_2592010699) + 2332);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (2 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 0;
    t17 = (t13 + 4U);
    *((int *)t17) = 27;
    t17 = (t13 + 8U);
    *((int *)t17) = 1;
    t18 = (27 - 0);
    t15 = (t18 * 1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t2, t11, (char)97, t6, t16, (char)101);
    t15 = (3U + 28U);
    t19 = (31U != t15);
    if (t19 == 1)
        goto LAB18;

LAB19:    t17 = (t0 + 2008);
    t20 = (t17 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 31U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5034);
    t6 = (t0 + 2044);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1640);
    xsi_process_wait(t2, t5);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB18:    xsi_size_not_matching(31U, t15, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5066);
    t6 = (t0 + 5069);
    t10 = ((IEEE_P_2592010699) + 2332);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (2 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 0;
    t17 = (t13 + 4U);
    *((int *)t17) = 27;
    t17 = (t13 + 8U);
    *((int *)t17) = 1;
    t18 = (27 - 0);
    t15 = (t18 * 1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t2, t11, (char)97, t6, t16, (char)101);
    t15 = (3U + 28U);
    t19 = (31U != t15);
    if (t19 == 1)
        goto LAB24;

LAB25:    t17 = (t0 + 2008);
    t20 = (t17 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 31U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5097);
    t6 = (t0 + 2044);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(100, ng0);

LAB28:    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_size_not_matching(31U, t15, 0);
    goto LAB25;

LAB26:    goto LAB2;

LAB27:    goto LAB26;

LAB29:    goto LAB27;

}


extern void work_a_1837729901_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1837729901_2372691052_p_0,(void *)work_a_1837729901_2372691052_p_1};
	xsi_register_didat("work_a_1837729901_2372691052", "isim/BancoRegistros_TB_isim_beh.exe.sim/work/a_1837729901_2372691052.didat");
	xsi_register_executes(pe);
}
