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
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Practica 4/RegisterFile/Mux_TB.vhd";



static void work_a_1921371486_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1436U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1336);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4217);
    t5 = (32U != 32U);
    if (t5 == 1)
        goto LAB8;

LAB9:    t6 = (t0 + 1668);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_delta(t6, 0U, 32U, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4249);
    t5 = (32U != 32U);
    if (t5 == 1)
        goto LAB10;

LAB11:    t6 = (t0 + 1668);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_delta(t6, 32U, 32U, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4281);
    t5 = (32U != 32U);
    if (t5 == 1)
        goto LAB12;

LAB13:    t6 = (t0 + 1668);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_delta(t6, 64U, 32U, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4313);
    t6 = (t0 + 1704);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(74, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1336);
    xsi_process_wait(t2, t3);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4318);
    t6 = (t0 + 1704);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(78, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1336);
    xsi_process_wait(t2, t3);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4323);
    t6 = (t0 + 1704);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(82, ng0);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_1921371486_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1921371486_2372691052_p_0};
	xsi_register_didat("work_a_1921371486_2372691052", "isim/Mux_TB_isim_beh.exe.sim/work/a_1921371486_2372691052.didat");
	xsi_register_executes(pe);
}
