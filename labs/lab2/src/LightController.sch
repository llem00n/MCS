<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="NS_BUS(2)" />
        <signal name="NS_BUS(1)" />
        <signal name="CUR_S_BUS(2:0)" />
        <signal name="CUR_S_BUS(2)" />
        <signal name="CUR_S_BUS(1)" />
        <signal name="CLK" />
        <signal name="MODE" />
        <signal name="OUTB(7:0)" />
        <signal name="OUTB(3)" />
        <signal name="OUTB(2)" />
        <signal name="OUTB(1)" />
        <signal name="OUTB(0)" />
        <signal name="NS_BUS(2:0)" />
        <signal name="NS_BUS(0)" />
        <signal name="CUR_S_BUS(0)" />
        <signal name="OUTB(7)" />
        <signal name="OUTB(6)" />
        <signal name="OUTB(5)" />
        <signal name="OUTB(4)" />
        <signal name="RESET" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="MODE" />
        <port polarity="Output" name="OUTB(3)" />
        <port polarity="Output" name="OUTB(2)" />
        <port polarity="Output" name="OUTB(1)" />
        <port polarity="Output" name="OUTB(0)" />
        <port polarity="Output" name="OUTB(7)" />
        <port polarity="Output" name="OUTB(6)" />
        <port polarity="Output" name="OUTB(5)" />
        <port polarity="Output" name="OUTB(4)" />
        <port polarity="Input" name="RESET" />
        <blockdef name="out_logic_intf">
            <timestamp>2023-5-16T10:51:35</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="transition_logic_intf">
            <timestamp>2023-5-16T10:51:4</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
            <rect width="384" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="fdr">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="fdr" name="XLXI_18">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(2)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="CUR_S_BUS(2)" name="Q" />
        </block>
        <block symbolname="fdr" name="XLXI_19">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(1)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="CUR_S_BUS(1)" name="Q" />
        </block>
        <block symbolname="fdr" name="XLXI_20">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="NS_BUS(0)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="CUR_S_BUS(0)" name="Q" />
        </block>
        <block symbolname="out_logic_intf" name="XLXI_28">
            <blockpin signalname="CUR_S_BUS(2:0)" name="IN_BUS(2:0)" />
            <blockpin signalname="OUTB(7:0)" name="OUT_BUS(7:0)" />
        </block>
        <block symbolname="transition_logic_intf" name="XLXI_29">
            <blockpin signalname="MODE" name="MODE" />
            <blockpin signalname="CUR_S_BUS(2:0)" name="CUR_STATE(2:0)" />
            <blockpin signalname="NS_BUS(2:0)" name="NEXT_STATE(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <bustap x2="1072" y1="1664" y2="1664" x1="976" />
        <bustap x2="1072" y1="1184" y2="1184" x1="976" />
        <branch name="NS_BUS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1184" type="branch" />
            <wire x2="1120" y1="1184" y2="1184" x1="1072" />
            <wire x2="1280" y1="1184" y2="1184" x1="1120" />
        </branch>
        <branch name="NS_BUS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1664" type="branch" />
            <wire x2="1088" y1="1664" y2="1664" x1="1072" />
            <wire x2="1280" y1="1664" y2="1664" x1="1088" />
        </branch>
        <branch name="CUR_S_BUS(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2496" type="branch" />
            <wire x2="336" y1="1184" y2="1184" x1="128" />
            <wire x2="128" y1="1184" y2="2496" x1="128" />
            <wire x2="976" y1="2496" y2="2496" x1="128" />
            <wire x2="1936" y1="2496" y2="2496" x1="976" />
            <wire x2="1936" y1="1088" y2="1184" x1="1936" />
            <wire x2="1936" y1="1184" y2="1216" x1="1936" />
            <wire x2="1936" y1="1216" y2="1664" x1="1936" />
            <wire x2="1936" y1="1664" y2="2032" x1="1936" />
            <wire x2="1936" y1="2032" y2="2496" x1="1936" />
            <wire x2="2112" y1="1216" y2="1216" x1="1936" />
        </branch>
        <bustap x2="1840" y1="1184" y2="1184" x1="1936" />
        <bustap x2="1840" y1="1664" y2="1664" x1="1936" />
        <branch name="CUR_S_BUS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1184" type="branch" />
            <wire x2="1744" y1="1184" y2="1184" x1="1664" />
            <wire x2="1840" y1="1184" y2="1184" x1="1744" />
        </branch>
        <branch name="CUR_S_BUS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1664" type="branch" />
            <wire x2="1760" y1="1664" y2="1664" x1="1664" />
            <wire x2="1840" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="CLK">
            <wire x2="1184" y1="2240" y2="2240" x1="1024" />
            <wire x2="1280" y1="1312" y2="1312" x1="1184" />
            <wire x2="1184" y1="1312" y2="1792" x1="1184" />
            <wire x2="1184" y1="1792" y2="2160" x1="1184" />
            <wire x2="1184" y1="2160" y2="2240" x1="1184" />
            <wire x2="1248" y1="2160" y2="2160" x1="1184" />
            <wire x2="1280" y1="2160" y2="2160" x1="1248" />
            <wire x2="1280" y1="1792" y2="1792" x1="1184" />
        </branch>
        <branch name="MODE">
            <wire x2="336" y1="1120" y2="1120" x1="304" />
        </branch>
        <branch name="OUTB(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1424" type="branch" />
            <wire x2="2784" y1="1216" y2="1216" x1="2544" />
            <wire x2="2784" y1="1216" y2="1424" x1="2784" />
            <wire x2="2784" y1="1424" y2="1584" x1="2784" />
            <wire x2="2784" y1="1584" y2="1680" x1="2784" />
            <wire x2="2784" y1="1680" y2="1776" x1="2784" />
            <wire x2="2784" y1="1776" y2="1872" x1="2784" />
            <wire x2="2784" y1="1872" y2="1952" x1="2784" />
            <wire x2="2784" y1="1952" y2="2048" x1="2784" />
            <wire x2="2784" y1="2048" y2="2144" x1="2784" />
            <wire x2="2784" y1="2144" y2="2240" x1="2784" />
            <wire x2="2784" y1="2240" y2="2288" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="304" y="1120" name="MODE" orien="R180" />
        <bustap x2="2880" y1="1952" y2="1952" x1="2784" />
        <bustap x2="2880" y1="2048" y2="2048" x1="2784" />
        <bustap x2="2880" y1="2144" y2="2144" x1="2784" />
        <bustap x2="2880" y1="2240" y2="2240" x1="2784" />
        <branch name="OUTB(3)">
            <wire x2="3152" y1="1952" y2="1952" x1="2880" />
        </branch>
        <branch name="OUTB(2)">
            <wire x2="3152" y1="2048" y2="2048" x1="2880" />
        </branch>
        <branch name="OUTB(1)">
            <wire x2="3152" y1="2144" y2="2144" x1="2880" />
        </branch>
        <branch name="OUTB(0)">
            <wire x2="3152" y1="2240" y2="2240" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1952" name="OUTB(3)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="2048" name="OUTB(2)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="2144" name="OUTB(1)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="2240" name="OUTB(0)" orien="R0" />
        <branch name="NS_BUS(2:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1472" type="branch" />
            <wire x2="976" y1="1120" y2="1120" x1="848" />
            <wire x2="976" y1="1120" y2="1184" x1="976" />
            <wire x2="976" y1="1184" y2="1472" x1="976" />
            <wire x2="976" y1="1472" y2="1664" x1="976" />
            <wire x2="976" y1="1664" y2="2032" x1="976" />
            <wire x2="976" y1="2032" y2="2112" x1="976" />
        </branch>
        <bustap x2="1120" y1="2032" y2="2032" x1="976" />
        <bustap x2="1840" y1="2032" y2="2032" x1="1936" />
        <branch name="CUR_S_BUS(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="2032" type="branch" />
            <wire x2="1744" y1="2032" y2="2032" x1="1664" />
            <wire x2="1840" y1="2032" y2="2032" x1="1744" />
        </branch>
        <bustap x2="2880" y1="1584" y2="1584" x1="2784" />
        <bustap x2="2880" y1="1680" y2="1680" x1="2784" />
        <bustap x2="2880" y1="1776" y2="1776" x1="2784" />
        <bustap x2="2880" y1="1872" y2="1872" x1="2784" />
        <branch name="OUTB(7)">
            <wire x2="3152" y1="1584" y2="1584" x1="2880" />
        </branch>
        <branch name="OUTB(6)">
            <wire x2="3152" y1="1680" y2="1680" x1="2880" />
        </branch>
        <branch name="OUTB(5)">
            <wire x2="3152" y1="1776" y2="1776" x1="2880" />
        </branch>
        <branch name="OUTB(4)">
            <wire x2="3152" y1="1872" y2="1872" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1584" name="OUTB(7)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1680" name="OUTB(6)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1776" name="OUTB(5)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1872" name="OUTB(4)" orien="R0" />
        <instance x="1280" y="1920" name="XLXI_19" orien="R0" />
        <branch name="NS_BUS(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2032" type="branch" />
            <wire x2="1136" y1="2032" y2="2032" x1="1120" />
            <wire x2="1280" y1="2032" y2="2032" x1="1136" />
        </branch>
        <instance x="1280" y="2288" name="XLXI_20" orien="R0" />
        <instance x="1280" y="1440" name="XLXI_18" orien="R0" />
        <iomarker fontsize="28" x="1024" y="2240" name="CLK" orien="R180" />
        <branch name="RESET">
            <wire x2="1264" y1="2352" y2="2352" x1="1024" />
            <wire x2="1280" y1="1408" y2="1408" x1="1264" />
            <wire x2="1264" y1="1408" y2="1888" x1="1264" />
            <wire x2="1280" y1="1888" y2="1888" x1="1264" />
            <wire x2="1264" y1="1888" y2="2256" x1="1264" />
            <wire x2="1280" y1="2256" y2="2256" x1="1264" />
            <wire x2="1264" y1="2256" y2="2352" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1024" y="2352" name="RESET" orien="R180" />
        <instance x="2112" y="1248" name="XLXI_28" orien="R0">
        </instance>
        <instance x="336" y="1216" name="XLXI_29" orien="R0">
        </instance>
    </sheet>
</drawing>