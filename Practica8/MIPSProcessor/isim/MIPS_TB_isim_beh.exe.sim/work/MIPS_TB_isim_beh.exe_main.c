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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3430011751_3212880686_init();
    work_a_4176254232_3212880686_init();
    work_a_0033825250_3212880686_init();
    work_a_0396386329_3212880686_init();
    work_a_1008233696_3212880686_init();
    work_a_1098786653_3212880686_init();
    work_a_1957834169_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_4106131694_3212880686_init();
    work_a_1138871104_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_1106649265_3212880686_init();
    work_a_1779280877_3212880686_init();
    work_a_0822649669_3212880686_init();
    work_a_2278322344_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3830602496_3212880686_init();
    work_a_2632895033_3877310806_init();
    work_a_0258635663_2372691052_init();


    xsi_register_tops("work_a_0258635663_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
