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
static const char *ng0 = "//vboxsrv/Downloads/Lab Arqui/Practica2/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2725559894_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 2904);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 2828);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 2940);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 2836);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_2(char *t0)
{
    char t23[16];
    char t39[16];
    char t41[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t40;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 5265);
    t6 = xsi_mem_cmp(t1, t2, 3U);
    if (t6 == 1)
        goto LAB3;

LAB11:    t4 = (t0 + 5268);
    t7 = xsi_mem_cmp(t4, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 5271);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 5274);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 5277);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 5280);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 5283);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(102, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 3012);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 2844);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t24 = (t0 + 1144U);
    t25 = *((char **)t24);
    t24 = (t0 + 4980U);
    t26 = (t0 + 1236U);
    t27 = *((char **)t26);
    t26 = (t0 + 4996U);
    t28 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t23, t25, t24, t27, t26);
    t29 = (t23 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    t32 = (32U != t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    t33 = (t0 + 3012);
    t34 = (t33 + 32U);
    t35 = *((char **)t34);
    t36 = (t35 + 40U);
    t37 = *((char **)t36);
    memcpy(t37, t28, 32U);
    xsi_driver_first_trans_fast(t33);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB24;

LAB25:    t32 = 0;

LAB26:    if (t32 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB2;

LAB4:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4980U);
    t3 = (t0 + 1236U);
    t4 = *((char **)t3);
    t3 = (t0 + 4996U);
    t5 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t23, t2, t1, t4, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (32U != t31);
    if (t32 == 1)
        goto LAB30;

LAB31:    t9 = (t0 + 3012);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 32U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB35;

LAB36:    t32 = 0;

LAB37:    if (t32 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB33:    goto LAB2;

LAB5:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4980U);
    t3 = (t0 + 1236U);
    t4 = *((char **)t3);
    t3 = (t0 + 4996U);
    t5 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t23, t2, t1, t4, t3);
    t8 = (t0 + 3012);
    t9 = (t8 + 32U);
    t11 = *((char **)t9);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB44;

LAB45:    t32 = 0;

LAB46:    if (t32 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB42:    goto LAB2;

LAB6:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 3012);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t8 = *((char **)t5);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB53;

LAB54:    t32 = 0;

LAB55:    if (t32 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB51:    goto LAB2;

LAB7:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t30 = (31 - 15);
    t31 = (t30 * 1U);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t3 = (t0 + 5286);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t39 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 15;
    t11 = (t9 + 4U);
    *((int *)t11) = 0;
    t11 = (t9 + 8U);
    *((int *)t11) = -1;
    t6 = (0 - 15);
    t40 = (t6 * -1);
    t40 = (t40 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t40;
    t11 = (t41 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 15;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t7 = (15 - 0);
    t40 = (t7 * 1);
    t40 = (t40 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t40;
    t5 = xsi_base_array_concat(t5, t23, t8, (char)97, t1, t39, (char)97, t3, t41, (char)101);
    t40 = (16U + 16U);
    t32 = (32U != t40);
    if (t32 == 1)
        goto LAB59;

LAB60:    t12 = (t0 + 3012);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t17 = (t15 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 32U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB64;

LAB65:    t32 = 0;

LAB66:    if (t32 != 0)
        goto LAB61;

LAB63:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB62:    goto LAB2;

LAB8:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4980U);
    t3 = (t0 + 1236U);
    t4 = *((char **)t3);
    t3 = (t0 + 4996U);
    t5 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t23, t2, t1, t4, t3);
    t8 = (t0 + 3012);
    t9 = (t8 + 32U);
    t11 = *((char **)t9);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 1500U);
    t3 = *((char **)t1);
    t32 = 1;
    if (32U == 32U)
        goto LAB73;

LAB74:    t32 = 0;

LAB75:    if (t32 != 0)
        goto LAB70;

LAB72:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB71:    goto LAB2;

LAB9:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 4980U);
    t3 = (t0 + 1236U);
    t4 = *((char **)t3);
    t3 = (t0 + 4996U);
    t32 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t32 != 0)
        goto LAB79;

LAB81:    xsi_set_current_line(99, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 3012);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2976);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB80:    goto LAB2;

LAB18:;
LAB19:    xsi_size_not_matching(32U, t31, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB24:    t30 = 0;

LAB27:    if (t30 < 32U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB25;

LAB29:    t30 = (t30 + 1);
    goto LAB27;

LAB30:    xsi_size_not_matching(32U, t31, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(58, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB33;

LAB35:    t30 = 0;

LAB38:    if (t30 < 32U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB36;

LAB40:    t30 = (t30 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(66, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB42;

LAB44:    t30 = 0;

LAB47:    if (t30 < 32U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB45;

LAB49:    t30 = (t30 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(74, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB51;

LAB53:    t30 = 0;

LAB56:    if (t30 < 32U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB54;

LAB58:    t30 = (t30 + 1);
    goto LAB56;

LAB59:    xsi_size_not_matching(32U, t40, 0);
    goto LAB60;

LAB61:    xsi_set_current_line(82, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB62;

LAB64:    t30 = 0;

LAB67:    if (t30 < 32U)
        goto LAB68;
    else
        goto LAB66;

LAB68:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB65;

LAB69:    t30 = (t30 + 1);
    goto LAB67;

LAB70:    xsi_set_current_line(90, ng0);
    t5 = (t0 + 2976);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t11 = (t9 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB71;

LAB73:    t30 = 0;

LAB76:    if (t30 < 32U)
        goto LAB77;
    else
        goto LAB75;

LAB77:    t1 = (t2 + t30);
    t4 = (t3 + t30);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB74;

LAB78:    t30 = (t30 + 1);
    goto LAB76;

LAB79:    xsi_set_current_line(97, ng0);
    t5 = (t0 + 5302);
    t9 = (t0 + 3012);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    t14 = (t12 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB80;

}

static void work_a_2725559894_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3048);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2852);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(106, ng0);

LAB3:    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3084);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 2860);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2725559894_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2725559894_3212880686_p_0,(void *)work_a_2725559894_3212880686_p_1,(void *)work_a_2725559894_3212880686_p_2,(void *)work_a_2725559894_3212880686_p_3,(void *)work_a_2725559894_3212880686_p_4};
	xsi_register_didat("work_a_2725559894_3212880686", "isim/ALU_isim_beh.exe.sim/work/a_2725559894_3212880686.didat");
	xsi_register_executes(pe);
}
