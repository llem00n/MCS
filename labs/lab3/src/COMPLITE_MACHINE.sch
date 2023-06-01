<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DATA_IN(7:0)" />
        <signal name="CALC" />
        <signal name="ENTER_OP2" />
        <signal name="ENTER_OP1" />
        <signal name="RESET" />
        <signal name="CLOCK" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55(1:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_58" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63(7:0)" />
        <signal name="XLXN_64(7:0)" />
        <signal name="XLXN_65(7:0)" />
        <signal name="XLXN_66(2:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68(1:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70(7:0)" />
        <signal name="XLXN_71(7:0)" />
        <signal name="XLXN_72(7:0)" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77(7:0)" />
        <signal name="XLXN_78(7:0)" />
        <port polarity="Input" name="DATA_IN(7:0)" />
        <port polarity="Input" name="CALC" />
        <port polarity="Input" name="ENTER_OP2" />
        <port polarity="Input" name="ENTER_OP1" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLOCK" />
        <blockdef name="CU_INTF">
            <timestamp>2023-5-31T21:53:12</timestamp>
            <line x2="0" y1="800" y2="800" x1="64" />
            <line x2="0" y1="864" y2="864" x1="64" />
            <line x2="0" y1="928" y2="928" x1="64" />
            <line x2="0" y1="992" y2="992" x1="64" />
            <rect width="384" x="64" y="392" height="632" />
            <line x2="512" y1="608" y2="608" x1="448" />
            <line x2="512" y1="416" y2="416" x1="448" />
            <rect width="64" x="448" y="404" height="24" />
            <line x2="512" y1="480" y2="480" x1="448" />
            <line x2="512" y1="544" y2="544" x1="448" />
            <line x2="512" y1="672" y2="672" x1="448" />
            <line x2="512" y1="720" y2="720" x1="448" />
            <line x2="0" y1="736" y2="736" x1="64" />
            <rect width="64" x="448" y="708" height="24" />
        </blockdef>
        <blockdef name="RAM_INTF">
            <timestamp>2023-5-31T21:54:7</timestamp>
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="400" x="64" y="-256" height="232" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
        </blockdef>
        <blockdef name="ACC_INTF">
            <timestamp>2021-5-7T17:56:39</timestamp>
            <rect width="432" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-236" height="24" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
        </blockdef>
        <blockdef name="MUX_INTF">
            <timestamp>2023-5-31T21:58:19</timestamp>
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="416" x="64" y="-192" height="184" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <blockdef name="ALU_INTF">
            <timestamp>2021-5-7T19:38:39</timestamp>
            <rect width="544" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="608" y="-172" height="24" />
            <line x2="672" y1="-160" y2="-160" x1="608" />
        </blockdef>
        <block symbolname="CU_INTF" name="XLXI_23">
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ENTER_OP1" name="ENTER_OP1" />
            <blockpin signalname="ENTER_OP2" name="ENTER_OP2" />
            <blockpin signalname="CALC" name="CALCULATE" />
            <blockpin signalname="XLXN_54" name="RAM_WE" />
            <blockpin signalname="XLXN_74" name="ACC_WE" />
            <blockpin signalname="XLXN_73" name="ACC_CLR" />
            <blockpin signalname="XLXN_61" name="MUX_MODE" />
            <blockpin signalname="XLXN_66(2:0)" name="OPCODE_BUS(2:0)" />
            <blockpin signalname="CLOCK" name="CLK" />
            <blockpin signalname="XLXN_55(1:0)" name="RAM_ADDRESS_BUS(1:0)" />
        </block>
        <block symbolname="RAM_INTF" name="XLXI_24">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="XLXN_63(7:0)" name="DATA_OUT(7:0)" />
            <blockpin signalname="XLXN_72(7:0)" name="DATA_IN_BUS(7:0)" />
            <blockpin signalname="XLXN_55(1:0)" name="ADDRESS_BUS(1:0)" />
            <blockpin signalname="XLXN_54" name="WE" />
        </block>
        <block symbolname="MUX_INTF" name="XLXI_26">
            <blockpin signalname="XLXN_63(7:0)" name="RAM_DATA_BUS(7:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="DATA_OUT(7:0)" />
            <blockpin signalname="XLXN_61" name="SELECT_IN" />
            <blockpin signalname="DATA_IN(7:0)" name="DATA_IN_BUS(7:0)" />
        </block>
        <block symbolname="ALU_INTF" name="XLXI_27">
            <blockpin signalname="XLXN_66(2:0)" name="OP_CODE_BUS(1:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="MUX_OUT_BUS(7:0)" />
            <blockpin signalname="XLXN_78(7:0)" name="ACC_DATA_OUT_BUS(7:0)" />
            <blockpin signalname="XLXN_72(7:0)" name="ACC_DATA_IN_BUS(7:0)" />
        </block>
        <block symbolname="ACC_INTF" name="XLXI_28">
            <blockpin signalname="CLOCK" name="CLOCK" />
            <blockpin signalname="XLXN_74" name="WR" />
            <blockpin signalname="XLXN_73" name="RST" />
            <blockpin signalname="XLXN_72(7:0)" name="DATA_IN_BUS(7:0)" />
            <blockpin signalname="XLXN_78(7:0)" name="DATA_OUT_BUS(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CALC">
            <wire x2="544" y1="720" y2="720" x1="320" />
        </branch>
        <branch name="ENTER_OP2">
            <wire x2="544" y1="656" y2="656" x1="416" />
        </branch>
        <branch name="ENTER_OP1">
            <wire x2="544" y1="592" y2="592" x1="416" />
        </branch>
        <branch name="RESET">
            <wire x2="544" y1="528" y2="528" x1="336" />
        </branch>
        <iomarker fontsize="28" x="320" y="720" name="CALC" orien="R180" />
        <iomarker fontsize="28" x="336" y="464" name="CLOCK" orien="R180" />
        <iomarker fontsize="28" x="336" y="528" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="416" y="656" name="ENTER_OP2" orien="R180" />
        <iomarker fontsize="28" x="416" y="592" name="ENTER_OP1" orien="R180" />
        <instance x="544" y="-272" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_54">
            <wire x2="1568" y1="272" y2="272" x1="1056" />
        </branch>
        <branch name="XLXN_55(1:0)">
            <wire x2="1312" y1="448" y2="448" x1="1056" />
            <wire x2="1312" y1="208" y2="448" x1="1312" />
            <wire x2="1568" y1="208" y2="208" x1="1312" />
        </branch>
        <instance x="1168" y="1104" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="1088" y1="208" y2="208" x1="1056" />
            <wire x2="1088" y1="208" y2="944" x1="1088" />
            <wire x2="1168" y1="944" y2="944" x1="1088" />
        </branch>
        <branch name="DATA_IN(7:0)">
            <wire x2="1168" y1="1072" y2="1072" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1072" name="DATA_IN(7:0)" orien="R180" />
        <branch name="XLXN_63(7:0)">
            <wire x2="1152" y1="496" y2="1008" x1="1152" />
            <wire x2="1168" y1="1008" y2="1008" x1="1152" />
            <wire x2="2160" y1="496" y2="496" x1="1152" />
            <wire x2="2160" y1="96" y2="96" x1="2096" />
            <wire x2="2160" y1="96" y2="496" x1="2160" />
        </branch>
        <branch name="XLXN_64(7:0)">
            <wire x2="1728" y1="944" y2="944" x1="1712" />
            <wire x2="1824" y1="848" y2="848" x1="1728" />
            <wire x2="1728" y1="848" y2="944" x1="1728" />
        </branch>
        <instance x="1824" y="944" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_66(2:0)">
            <wire x2="1360" y1="144" y2="144" x1="1056" />
            <wire x2="1360" y1="144" y2="784" x1="1360" />
            <wire x2="1824" y1="784" y2="784" x1="1360" />
        </branch>
        <instance x="1568" y="320" name="XLXI_24" orien="R0">
        </instance>
        <instance x="2576" y="752" name="XLXI_28" orien="R0">
        </instance>
        <branch name="XLXN_73">
            <wire x2="1808" y1="400" y2="400" x1="1056" />
            <wire x2="1808" y1="400" y2="656" x1="1808" />
            <wire x2="2576" y1="656" y2="656" x1="1808" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="1792" y1="336" y2="336" x1="1056" />
            <wire x2="1792" y1="336" y2="592" x1="1792" />
            <wire x2="2576" y1="592" y2="592" x1="1792" />
        </branch>
        <branch name="CLOCK">
            <wire x2="496" y1="464" y2="464" x1="336" />
            <wire x2="544" y1="464" y2="464" x1="496" />
            <wire x2="496" y1="96" y2="464" x1="496" />
            <wire x2="1376" y1="96" y2="96" x1="496" />
            <wire x2="1376" y1="96" y2="528" x1="1376" />
            <wire x2="2576" y1="528" y2="528" x1="1376" />
            <wire x2="1568" y1="96" y2="96" x1="1376" />
        </branch>
        <branch name="XLXN_72(7:0)">
            <wire x2="1568" y1="144" y2="144" x1="1504" />
            <wire x2="1504" y1="144" y2="320" x1="1504" />
            <wire x2="2512" y1="320" y2="320" x1="1504" />
            <wire x2="2512" y1="320" y2="720" x1="2512" />
            <wire x2="2576" y1="720" y2="720" x1="2512" />
            <wire x2="2512" y1="720" y2="784" x1="2512" />
            <wire x2="2512" y1="784" y2="784" x1="2496" />
        </branch>
        <branch name="XLXN_78(7:0)">
            <wire x2="1824" y1="912" y2="912" x1="1744" />
            <wire x2="1744" y1="912" y2="1008" x1="1744" />
            <wire x2="3200" y1="1008" y2="1008" x1="1744" />
            <wire x2="3200" y1="528" y2="528" x1="3136" />
            <wire x2="3200" y1="528" y2="1008" x1="3200" />
        </branch>
    </sheet>
</drawing>