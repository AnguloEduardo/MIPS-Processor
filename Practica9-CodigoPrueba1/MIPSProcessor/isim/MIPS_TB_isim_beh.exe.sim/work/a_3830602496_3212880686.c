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
static const char *ng0 = "/home/ise/Documents/LabArqui/Practica8/MIPSProcessor/RAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_8645934262925994370_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3830602496_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4280);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t3 = (t0 + 4392);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 8U);
    xsi_driver_first_trans_delta(t3, 56U, 8U, 0LL);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t1 = (t0 + 7080U);
    t7 = ieee_p_1242562249_sub_8645934262925994370_1035706684(IEEE_P_1242562249, t13, t6, t1, 2);
    t14 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t7, t13);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    t17 = (32U * t16);
    t18 = (0U + t17);
    t8 = (t0 + 4392);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 32U);
    xsi_driver_first_trans_delta(t8, t18, 32U, 0LL);
    goto LAB6;

LAB8:    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    t2 = t12;
    goto LAB10;

}

static void work_a_3830602496_3212880686_p_1(char *t0)
{
    char t24[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    char *t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    char *t43;
    unsigned char t44;
    unsigned char t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)2);
    if (t19 == 1)
        goto LAB10;

LAB11:    t15 = (unsigned char)0;

LAB12:    if (t15 != 0)
        goto LAB8;

LAB9:    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t41 = *((unsigned char *)t40);
    t42 = (t41 == (unsigned char)2);
    if (t42 == 1)
        goto LAB15;

LAB16:    t38 = (unsigned char)0;

LAB17:    if (t38 != 0)
        goto LAB13;

LAB14:
LAB18:    t52 = xsi_get_transient_memory(32U);
    memset(t52, 0, 32U);
    t53 = t52;
    memset(t53, (unsigned char)2, 32U);
    t54 = (t0 + 4456);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t52, 32U);
    xsi_driver_first_trans_fast_port(t54);

LAB2:    t59 = (t0 + 4296);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t9 = t2;
    memset(t9, (unsigned char)2, 32U);
    t10 = (t0 + 4456);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t16 = (t0 + 2312U);
    t23 = *((char **)t16);
    t16 = (t0 + 1512U);
    t25 = *((char **)t16);
    t16 = (t0 + 7080U);
    t26 = ieee_p_1242562249_sub_8645934262925994370_1035706684(IEEE_P_1242562249, t24, t25, t16, 2);
    t27 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t26, t24);
    t28 = (t27 - 0);
    t29 = (t28 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t27);
    t30 = (32U * t29);
    t31 = (0 + t30);
    t32 = (t23 + t31);
    t33 = (t0 + 4456);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t32, 32U);
    xsi_driver_first_trans_fast_port(t33);
    goto LAB2;

LAB10:    t16 = (t0 + 1192U);
    t20 = *((char **)t16);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)3);
    t15 = t22;
    goto LAB12;

LAB13:    t39 = xsi_get_transient_memory(32U);
    memset(t39, 0, 32U);
    t46 = t39;
    memset(t46, (unsigned char)2, 32U);
    t47 = (t0 + 4456);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memcpy(t51, t39, 32U);
    xsi_driver_first_trans_fast_port(t47);
    goto LAB2;

LAB15:    t39 = (t0 + 1192U);
    t43 = *((char **)t39);
    t44 = *((unsigned char *)t43);
    t45 = (t44 == (unsigned char)2);
    t38 = t45;
    goto LAB17;

LAB19:    goto LAB2;

}

static void work_a_3830602496_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (31 - 7);
    t4 = (t3 * 1U);
    t5 = (0 - 0);
    t6 = (t5 * 1);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t8 + t4);
    t1 = (t2 + t9);
    t10 = (t0 + 4520);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 4312);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0,(void *)work_a_3830602496_3212880686_p_1,(void *)work_a_3830602496_3212880686_p_2};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/MIPS_TB_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 4);
}
