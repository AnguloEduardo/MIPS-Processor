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
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Practica 3/MoriaROM/ROM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1808404841_1035706684(char *, char *, char *, char *, int );


static void work_a_1008233696_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 924U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t4 = *((char **)t1);
    t1 = (t0 + 3192U);
    t5 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t3, t4, t1, 4);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t3);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t6);
    t9 = (32U * t8);
    t10 = (0 + t9);
    t11 = (t2 + t10);
    t12 = (t0 + 1720);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t11, 32U);
    xsi_driver_first_trans_fast_port(t12);
    t1 = (t0 + 1676);
    *((int *)t1) = 1;

LAB1:    return;
}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_1008233696_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1008233696_3212880686_p_0};
	xsi_register_didat("work_a_1008233696_3212880686", "isim/ROM_TestBench_isim_beh.exe.sim/work/a_1008233696_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
