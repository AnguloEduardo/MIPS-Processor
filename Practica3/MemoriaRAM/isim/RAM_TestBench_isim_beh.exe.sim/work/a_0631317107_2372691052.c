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
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Practica 3/MemoriaRAM/RAM_TestBench.vhd";



static void work_a_0631317107_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1780U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2156);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1680);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2156);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1680);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0631317107_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1924U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 10);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4464);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4496);
    t6 = (t0 + 2300);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(98, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4528);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4560);
    t6 = (t0 + 2300);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(102, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4592);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4624);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4656);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4688);
    t6 = (t0 + 2300);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(117, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4720);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4752);
    t6 = (t0 + 2300);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(121, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4784);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t4 = (100 * 1000LL);
    t2 = (t0 + 1824);
    xsi_process_wait(t2, t4);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4816);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2192);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_0631317107_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0631317107_2372691052_p_0,(void *)work_a_0631317107_2372691052_p_1};
	xsi_register_didat("work_a_0631317107_2372691052", "isim/RAM_TestBench_isim_beh.exe.sim/work/a_0631317107_2372691052.didat");
	xsi_register_executes(pe);
}
