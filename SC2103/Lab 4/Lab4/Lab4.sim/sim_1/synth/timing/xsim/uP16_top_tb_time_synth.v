// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 12:42:39 2024
// Host        : hwl3-vb016 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/SC2103/Lab
//               4/Lab4/Lab4.sim/sim_1/synth/timing/xsim/uP16_top_tb_time_synth.v}
// Design      : uP16_BASYS3_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (O,
    \ALUop_o_reg[1] ,
    \ALUop_o_reg[0] ,
    \ALUop_o_reg[0]_0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ,
    S,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ,
    DI,
    \ALUresult_o[12]_i_2 );
  output [3:0]O;
  output [3:0]\ALUop_o_reg[1] ;
  output [3:0]\ALUop_o_reg[0] ;
  output [3:0]\ALUop_o_reg[0]_0 ;
  input [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ;
  input [3:0]S;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ;
  input [2:0]DI;
  input [3:0]\ALUresult_o[12]_i_2 ;

  wire [3:0]\ALUop_o_reg[0] ;
  wire [3:0]\ALUop_o_reg[0]_0 ;
  wire [3:0]\ALUop_o_reg[1] ;
  wire [3:0]\ALUresult_o[12]_i_2 ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ;
  wire [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ),
        .O(O),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ),
        .O(\ALUop_o_reg[1] ),
        .S(\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ),
        .O(\ALUop_o_reg[0] ),
        .S(\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(\ALUop_o_reg[0]_0 ),
        .S(\ALUresult_o[12]_i_2 ));
endmodule

module BRAM_SINGLE_MACRO_viv_
   (D,
    sClk_BUFG,
    ADDRARDADDR);
  output [17:0]D;
  input sClk_BUFG;
  input [9:0]ADDRARDADDR;

  wire [9:0]ADDRARDADDR;
  wire [17:0]D;
  wire sClk_BUFG;
  wire [15:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000200020000000250400),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA10000001404210100000004740559012B0A110124F9D002C801D8FFE0710000),
    .INIT_01(256'h0000000011050A01000058063202D80000002B01190179010E0171000000A901),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000DE0C080000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl 
       (.ADDRARDADDR({ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(sClk_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(D[15:0]),
        .DOBDO(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(D[17:16]),
        .DOPBDOP(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "BRAM_SINGLE_MACRO" *) 
module BRAM_SINGLE_MACRO__parameterized0
   (DOADO,
    sClk_BUFG,
    ID_memEnab_d,
    EX_ALUresult,
    Q,
    WEA);
  output [15:0]DOADO;
  input sClk_BUFG;
  input ID_memEnab_d;
  input [9:0]EX_ALUresult;
  input [15:0]Q;
  input [0:0]WEA;

  wire [15:0]DOADO;
  wire [9:0]EX_ALUresult;
  wire ID_memEnab_d;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire sClk_BUFG;
  wire [15:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl 
       (.ADDRARDADDR({EX_ALUresult,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(sClk_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI(Q),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ID_memEnab_d),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module Control
   (i__carry__0_i_8,
    CO,
    DI,
    S,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11_0 ,
    \PC_select0_inferred__2/i__carry__0_0 ,
    \PC_select0_inferred__2/i__carry__0_1 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11_1 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11_2 );
  output [0:0]i__carry__0_i_8;
  output [0:0]CO;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_0 ;
  input [3:0]\PC_select0_inferred__2/i__carry__0_0 ;
  input [3:0]\PC_select0_inferred__2/i__carry__0_1 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_1 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_2 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire \PC_select0_inferred__1/i__carry__0_n_1 ;
  wire \PC_select0_inferred__1/i__carry__0_n_2 ;
  wire \PC_select0_inferred__1/i__carry__0_n_3 ;
  wire \PC_select0_inferred__1/i__carry_n_0 ;
  wire \PC_select0_inferred__1/i__carry_n_1 ;
  wire \PC_select0_inferred__1/i__carry_n_2 ;
  wire \PC_select0_inferred__1/i__carry_n_3 ;
  wire [3:0]\PC_select0_inferred__2/i__carry__0_0 ;
  wire [3:0]\PC_select0_inferred__2/i__carry__0_1 ;
  wire \PC_select0_inferred__2/i__carry__0_n_1 ;
  wire \PC_select0_inferred__2/i__carry__0_n_2 ;
  wire \PC_select0_inferred__2/i__carry__0_n_3 ;
  wire \PC_select0_inferred__2/i__carry_n_0 ;
  wire \PC_select0_inferred__2/i__carry_n_1 ;
  wire \PC_select0_inferred__2/i__carry_n_2 ;
  wire \PC_select0_inferred__2/i__carry_n_3 ;
  wire [3:0]S;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_0 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_1 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_2 ;
  wire [0:0]i__carry__0_i_8;
  wire [3:0]\NLW_PC_select0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_PC_select0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_PC_select0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_PC_select0_inferred__2/i__carry__0_O_UNCONNECTED ;

  CARRY4 \PC_select0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\PC_select0_inferred__1/i__carry_n_0 ,\PC_select0_inferred__1/i__carry_n_1 ,\PC_select0_inferred__1/i__carry_n_2 ,\PC_select0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\NLW_PC_select0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(S));
  CARRY4 \PC_select0_inferred__1/i__carry__0 
       (.CI(\PC_select0_inferred__1/i__carry_n_0 ),
        .CO({i__carry__0_i_8,\PC_select0_inferred__1/i__carry__0_n_1 ,\PC_select0_inferred__1/i__carry__0_n_2 ,\PC_select0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11 ),
        .O(\NLW_PC_select0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_0 ));
  CARRY4 \PC_select0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\PC_select0_inferred__2/i__carry_n_0 ,\PC_select0_inferred__2/i__carry_n_1 ,\PC_select0_inferred__2/i__carry_n_2 ,\PC_select0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\PC_select0_inferred__2/i__carry__0_0 ),
        .O(\NLW_PC_select0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\PC_select0_inferred__2/i__carry__0_1 ));
  CARRY4 \PC_select0_inferred__2/i__carry__0 
       (.CI(\PC_select0_inferred__2/i__carry_n_0 ),
        .CO({CO,\PC_select0_inferred__2/i__carry__0_n_1 ,\PC_select0_inferred__2/i__carry__0_n_2 ,\PC_select0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_1 ),
        .O(\NLW_PC_select0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_2 ));
endmodule

module D_mem
   (DOADO,
    sClk_BUFG,
    ID_memEnab_d,
    EX_ALUresult,
    Q,
    WEA);
  output [15:0]DOADO;
  input sClk_BUFG;
  input ID_memEnab_d;
  input [9:0]EX_ALUresult;
  input [15:0]Q;
  input [0:0]WEA;

  wire [15:0]DOADO;
  wire [9:0]EX_ALUresult;
  wire ID_memEnab_d;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire sClk_BUFG;

  BRAM_SINGLE_MACRO__parameterized0 BRAM_SINGLE_MACRO_inst1
       (.DOADO(DOADO),
        .EX_ALUresult(EX_ALUresult),
        .ID_memEnab_d(ID_memEnab_d),
        .Q(Q),
        .WEA(WEA),
        .sClk_BUFG(sClk_BUFG));
endmodule

module EX_Mem_PR
   (I_Status_OBUF,
    D,
    \RFdest_rd_o_reg[1]_0 ,
    Q,
    E,
    \RFdest_rd_o_reg[2]_0 ,
    \RFdest_rd_o_reg[2]_1 ,
    \RFdest_rd_o_reg[1]_1 ,
    \RFdest_rd_o_reg[0]_0 ,
    \RFdest_rd_o_reg[1]_2 ,
    \RFdest_rd_o_reg[1]_3 ,
    SR,
    sel_mem2RF_o,
    sClk_BUFG,
    RFwriteEnab_o_reg_0,
    EX_ALUresult,
    DOADO,
    RegFile__111,
    \RFdest_rd_o_reg[2]_2 ,
    \ALUstatus_o_reg[1]_0 );
  output [2:0]I_Status_OBUF;
  output [15:0]D;
  output \RFdest_rd_o_reg[1]_0 ;
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\RFdest_rd_o_reg[2]_0 ;
  output [0:0]\RFdest_rd_o_reg[2]_1 ;
  output [0:0]\RFdest_rd_o_reg[1]_1 ;
  output [0:0]\RFdest_rd_o_reg[0]_0 ;
  output [0:0]\RFdest_rd_o_reg[1]_2 ;
  output [0:0]\RFdest_rd_o_reg[1]_3 ;
  input [0:0]SR;
  input sel_mem2RF_o;
  input sClk_BUFG;
  input RFwriteEnab_o_reg_0;
  input [15:0]EX_ALUresult;
  input [15:0]DOADO;
  input [15:0]RegFile__111;
  input [2:0]\RFdest_rd_o_reg[2]_2 ;
  input [1:0]\ALUstatus_o_reg[1]_0 ;

  wire [14:0]ALUresult_o;
  wire [1:0]\ALUstatus_o_reg[1]_0 ;
  wire [15:0]D;
  wire [15:0]DOADO;
  wire [0:0]E;
  wire [15:0]EX_ALUresult;
  wire EX_RFwriteEnab_d;
  wire [2:0]I_Status_OBUF;
  wire [2:0]Q;
  wire [0:0]\RFdest_rd_o_reg[0]_0 ;
  wire \RFdest_rd_o_reg[1]_0 ;
  wire [0:0]\RFdest_rd_o_reg[1]_1 ;
  wire [0:0]\RFdest_rd_o_reg[1]_2 ;
  wire [0:0]\RFdest_rd_o_reg[1]_3 ;
  wire [0:0]\RFdest_rd_o_reg[2]_0 ;
  wire [0:0]\RFdest_rd_o_reg[2]_1 ;
  wire [2:0]\RFdest_rd_o_reg[2]_2 ;
  wire RFwriteEnab_o_reg_0;
  wire [15:0]RegFile__111;
  wire [0:0]SR;
  wire sClk_BUFG;
  wire sel_mem2RF_o;
  wire sel_mem2Reg_o;

  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[0]),
        .Q(ALUresult_o[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[10] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[10]),
        .Q(ALUresult_o[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[11] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[11]),
        .Q(ALUresult_o[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[12] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[12]),
        .Q(ALUresult_o[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[13] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[13]),
        .Q(ALUresult_o[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[14] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[14]),
        .Q(ALUresult_o[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[1]),
        .Q(ALUresult_o[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[2]),
        .Q(ALUresult_o[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[3]),
        .Q(ALUresult_o[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[4]),
        .Q(ALUresult_o[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[5]),
        .Q(ALUresult_o[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[6]),
        .Q(ALUresult_o[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[7]),
        .Q(ALUresult_o[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[8]),
        .Q(ALUresult_o[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUresult_o_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[9]),
        .Q(ALUresult_o[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUstatus_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUstatus_o_reg[1]_0 [0]),
        .Q(I_Status_OBUF[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUstatus_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUstatus_o_reg[1]_0 [1]),
        .Q(I_Status_OBUF[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUstatus_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(EX_ALUresult[15]),
        .Q(I_Status_OBUF[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RFdest_rd_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\RFdest_rd_o_reg[2]_2 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RFdest_rd_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\RFdest_rd_o_reg[2]_2 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RFdest_rd_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\RFdest_rd_o_reg[2]_2 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    RFwriteEnab_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(RFwriteEnab_o_reg_0),
        .Q(EX_RFwriteEnab_d),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \RegFile[0][15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\RFdest_rd_o_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][0]_i_1 
       (.I0(DOADO[0]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[0]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][10]_i_1 
       (.I0(DOADO[10]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[10]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][11]_i_1 
       (.I0(DOADO[11]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[11]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][12]_i_1 
       (.I0(DOADO[12]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[12]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][13]_i_1 
       (.I0(DOADO[13]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[13]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][14]_i_1 
       (.I0(DOADO[14]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[14]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \RegFile[1][15]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][15]_i_2 
       (.I0(DOADO[15]),
        .I1(sel_mem2Reg_o),
        .I2(I_Status_OBUF[2]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][1]_i_1 
       (.I0(DOADO[1]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[1]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][2]_i_1 
       (.I0(DOADO[2]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[2]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][3]_i_1 
       (.I0(DOADO[3]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[3]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][4]_i_1 
       (.I0(DOADO[4]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[4]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][5]_i_1 
       (.I0(DOADO[5]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[5]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][6]_i_1 
       (.I0(DOADO[6]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[6]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][7]_i_1 
       (.I0(DOADO[7]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[7]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][8]_i_1 
       (.I0(DOADO[8]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[8]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \RegFile[1][9]_i_1 
       (.I0(DOADO[9]),
        .I1(sel_mem2Reg_o),
        .I2(ALUresult_o[9]),
        .I3(EX_RFwriteEnab_d),
        .I4(\RFdest_rd_o_reg[1]_0 ),
        .I5(RegFile__111[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \RegFile[2][15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\RFdest_rd_o_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \RegFile[3][15]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\RFdest_rd_o_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \RegFile[4][15]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\RFdest_rd_o_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \RegFile[5][15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\RFdest_rd_o_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \RegFile[6][15]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\RFdest_rd_o_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \RegFile[7][15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\RFdest_rd_o_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    sel_mem2Reg_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(sel_mem2RF_o),
        .Q(sel_mem2Reg_o),
        .R(SR));
endmodule

module EX_stage
   (O,
    \ALUop_o_reg[1] ,
    \ALUop_o_reg[0] ,
    \ALUop_o_reg[0]_0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ,
    S,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ,
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ,
    DI,
    \ALUresult_o[12]_i_2 );
  output [3:0]O;
  output [3:0]\ALUop_o_reg[1] ;
  output [3:0]\ALUop_o_reg[0] ;
  output [3:0]\ALUop_o_reg[0]_0 ;
  input [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ;
  input [3:0]S;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ;
  input [2:0]DI;
  input [3:0]\ALUresult_o[12]_i_2 ;

  wire [3:0]\ALUop_o_reg[0] ;
  wire [3:0]\ALUop_o_reg[0]_0 ;
  wire [3:0]\ALUop_o_reg[1] ;
  wire [3:0]\ALUresult_o[12]_i_2 ;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ;
  wire [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ;

  ALU EX_1
       (.\ALUop_o_reg[0] (\ALUop_o_reg[0] ),
        .\ALUop_o_reg[0]_0 (\ALUop_o_reg[0]_0 ),
        .\ALUop_o_reg[1] (\ALUop_o_reg[1] ),
        .\ALUresult_o[12]_i_2 (\ALUresult_o[12]_i_2 ),
        .DI(DI),
        .O(O),
        .S(S),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 ),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 (\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ));
endmodule

module ID_EX_PR
   (sel_mem2RF_o,
    WEA,
    ID_memEnab_d,
    RFwriteEnab_o_reg_0,
    DI,
    \ALUop_o_reg[0]_0 ,
    \ALUop_o_reg[0]_1 ,
    \ALUop_o_reg[0]_2 ,
    S,
    Q,
    \readData2_o_reg[7]_0 ,
    \readData2_o_reg[11]_0 ,
    \readData2_o_reg[15]_0 ,
    \WB_dest_rd_o_reg[2]_0 ,
    \ALUop_o_reg[3]_0 ,
    EX_ALUresult,
    \signE_8immed_o_reg[0]_0 ,
    SR,
    sel_mem2RF_o_reg_0,
    sClk_BUFG,
    ID_sel_ALUsrc1,
    memWriteEnab_o_reg_0,
    ID_memEnab,
    ID_RFwriteEnab,
    D,
    \WB_dest_rd_o_reg[2]_1 ,
    \readData2_o_reg[15]_1 ,
    \ALUop_o_reg[3]_1 ,
    O,
    \genblk3_0.bram18_single_bl.bram18_single_bl ,
    \ALUresult_o_reg[11] ,
    \ALUstatus_o_reg[2] );
  output sel_mem2RF_o;
  output [0:0]WEA;
  output ID_memEnab_d;
  output RFwriteEnab_o_reg_0;
  output [2:0]DI;
  output [3:0]\ALUop_o_reg[0]_0 ;
  output [3:0]\ALUop_o_reg[0]_1 ;
  output [3:0]\ALUop_o_reg[0]_2 ;
  output [3:0]S;
  output [15:0]Q;
  output [3:0]\readData2_o_reg[7]_0 ;
  output [3:0]\readData2_o_reg[11]_0 ;
  output [3:0]\readData2_o_reg[15]_0 ;
  output [2:0]\WB_dest_rd_o_reg[2]_0 ;
  output [1:0]\ALUop_o_reg[3]_0 ;
  output [15:0]EX_ALUresult;
  output [0:0]\signE_8immed_o_reg[0]_0 ;
  input [0:0]SR;
  input sel_mem2RF_o_reg_0;
  input sClk_BUFG;
  input ID_sel_ALUsrc1;
  input memWriteEnab_o_reg_0;
  input ID_memEnab;
  input ID_RFwriteEnab;
  input [15:0]D;
  input [10:0]\WB_dest_rd_o_reg[2]_1 ;
  input [15:0]\readData2_o_reg[15]_1 ;
  input [3:0]\ALUop_o_reg[3]_1 ;
  input [3:0]O;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  input [3:0]\ALUresult_o_reg[11] ;
  input [3:0]\ALUstatus_o_reg[2] ;

  wire [3:0]\ALUop_o_reg[0]_0 ;
  wire [3:0]\ALUop_o_reg[0]_1 ;
  wire [3:0]\ALUop_o_reg[0]_2 ;
  wire [1:0]\ALUop_o_reg[3]_0 ;
  wire [3:0]\ALUop_o_reg[3]_1 ;
  wire \ALUop_o_reg_n_0_[0] ;
  wire \ALUop_o_reg_n_0_[2] ;
  wire \ALUop_o_reg_n_0_[3] ;
  wire \ALUresult_o[10]_i_2_n_0 ;
  wire \ALUresult_o[10]_i_3_n_0 ;
  wire \ALUresult_o[11]_i_2_n_0 ;
  wire \ALUresult_o[11]_i_3_n_0 ;
  wire \ALUresult_o[12]_i_2_n_0 ;
  wire \ALUresult_o[12]_i_3_n_0 ;
  wire \ALUresult_o[13]_i_2_n_0 ;
  wire \ALUresult_o[13]_i_3_n_0 ;
  wire \ALUresult_o[14]_i_2_n_0 ;
  wire \ALUresult_o[14]_i_3_n_0 ;
  wire [3:0]\ALUresult_o_reg[11] ;
  wire \ALUstatus_o[0]_i_2_n_0 ;
  wire \ALUstatus_o[1]_i_2_n_0 ;
  wire \ALUstatus_o[1]_i_3_n_0 ;
  wire \ALUstatus_o[1]_i_4_n_0 ;
  wire \ALUstatus_o[1]_i_5_n_0 ;
  wire \ALUstatus_o[2]_i_2_n_0 ;
  wire \ALUstatus_o[2]_i_3_n_0 ;
  wire [3:0]\ALUstatus_o_reg[2] ;
  wire [15:0]D;
  wire [2:0]DI;
  wire [15:0]EX_ALUresult;
  wire ID_RFwriteEnab;
  wire ID_memEnab;
  wire ID_memEnab_d;
  wire [15:0]ID_readData2_d;
  wire ID_sel_ALUsrc1;
  wire [3:0]O;
  wire [15:0]Q;
  wire RFwriteEnab_o_reg_0;
  wire [3:0]S;
  wire [0:0]SR;
  wire [14:1]\T5/ALU_data1 ;
  wire [15:15]\T5/ALU_data1__39 ;
  wire [2:0]\WB_dest_rd_o_reg[2]_0 ;
  wire [10:0]\WB_dest_rd_o_reg[2]_1 ;
  wire [0:0]WEA;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_11__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_12__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_14__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_15_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_16_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_17__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_18_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_19_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_20_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_21_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_22_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_23_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_24_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_25_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_26_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_27_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_28_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_29_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_30_n_0 ;
  wire memWriteEnab_o_reg_0;
  wire [3:0]\readData2_o_reg[11]_0 ;
  wire [3:0]\readData2_o_reg[15]_0 ;
  wire [15:0]\readData2_o_reg[15]_1 ;
  wire [3:0]\readData2_o_reg[7]_0 ;
  wire sClk_BUFG;
  wire sel_ALUsrc1_o_reg_n_0;
  wire sel_mem2RF_o;
  wire sel_mem2RF_o_reg_0;
  wire [15:0]signE_8immed;
  wire [0:0]\signE_8immed_o_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \ALUop_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUop_o_reg[3]_1 [0]),
        .Q(\ALUop_o_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUop_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUop_o_reg[3]_1 [1]),
        .Q(\ALUop_o_reg[0]_2 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUop_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUop_o_reg[3]_1 [2]),
        .Q(\ALUop_o_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ALUop_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\ALUop_o_reg[3]_1 [3]),
        .Q(\ALUop_o_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUresult_o[10]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [10]),
        .I2(ID_readData2_d[10]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUresult_o_reg[11] [2]),
        .O(\ALUresult_o[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUresult_o[10]_i_3 
       (.I0(ID_readData2_d[10]),
        .I1(\T5/ALU_data1 [10]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [2]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUresult_o[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUresult_o[10]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[10]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [10]));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUresult_o[11]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [11]),
        .I2(ID_readData2_d[11]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUresult_o_reg[11] [3]),
        .O(\ALUresult_o[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUresult_o[11]_i_3 
       (.I0(ID_readData2_d[11]),
        .I1(\T5/ALU_data1 [11]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [3]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUresult_o[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUresult_o[11]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[11]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [11]));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUresult_o[12]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [12]),
        .I2(ID_readData2_d[12]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUstatus_o_reg[2] [0]),
        .O(\ALUresult_o[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUresult_o[12]_i_3 
       (.I0(ID_readData2_d[12]),
        .I1(\T5/ALU_data1 [12]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [4]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUresult_o[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUresult_o[12]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[12]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [12]));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUresult_o[13]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [13]),
        .I2(ID_readData2_d[13]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUstatus_o_reg[2] [1]),
        .O(\ALUresult_o[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUresult_o[13]_i_3 
       (.I0(ID_readData2_d[13]),
        .I1(\T5/ALU_data1 [13]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [5]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUresult_o[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUresult_o[13]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[13]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [13]));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUresult_o[14]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [14]),
        .I2(ID_readData2_d[14]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUstatus_o_reg[2] [2]),
        .O(\ALUresult_o[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUresult_o[14]_i_3 
       (.I0(ID_readData2_d[14]),
        .I1(\T5/ALU_data1 [14]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [6]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUresult_o[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUresult_o[14]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[14]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [14]));
  MUXF7 \ALUresult_o_reg[10]_i_1 
       (.I0(\ALUresult_o[10]_i_2_n_0 ),
        .I1(\ALUresult_o[10]_i_3_n_0 ),
        .O(EX_ALUresult[10]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \ALUresult_o_reg[11]_i_1 
       (.I0(\ALUresult_o[11]_i_2_n_0 ),
        .I1(\ALUresult_o[11]_i_3_n_0 ),
        .O(EX_ALUresult[11]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \ALUresult_o_reg[12]_i_1 
       (.I0(\ALUresult_o[12]_i_2_n_0 ),
        .I1(\ALUresult_o[12]_i_3_n_0 ),
        .O(EX_ALUresult[12]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \ALUresult_o_reg[13]_i_1 
       (.I0(\ALUresult_o[13]_i_2_n_0 ),
        .I1(\ALUresult_o[13]_i_3_n_0 ),
        .O(EX_ALUresult[13]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \ALUresult_o_reg[14]_i_1 
       (.I0(\ALUresult_o[14]_i_2_n_0 ),
        .I1(\ALUresult_o[14]_i_3_n_0 ),
        .O(EX_ALUresult[14]),
        .S(\ALUop_o_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ALUstatus_o[0]_i_1 
       (.I0(\ALUstatus_o[1]_i_2_n_0 ),
        .I1(\ALUstatus_o[1]_i_3_n_0 ),
        .I2(\ALUstatus_o[0]_i_2_n_0 ),
        .I3(\ALUstatus_o[1]_i_5_n_0 ),
        .O(\ALUop_o_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUstatus_o[0]_i_2 
       (.I0(EX_ALUresult[15]),
        .I1(EX_ALUresult[14]),
        .I2(EX_ALUresult[12]),
        .I3(EX_ALUresult[13]),
        .O(\ALUstatus_o[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \ALUstatus_o[1]_i_1 
       (.I0(\ALUstatus_o[1]_i_2_n_0 ),
        .I1(\ALUstatus_o[1]_i_3_n_0 ),
        .I2(\ALUstatus_o[1]_i_4_n_0 ),
        .I3(EX_ALUresult[14]),
        .I4(\ALUstatus_o[1]_i_5_n_0 ),
        .I5(EX_ALUresult[15]),
        .O(\ALUop_o_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUstatus_o[1]_i_2 
       (.I0(EX_ALUresult[6]),
        .I1(EX_ALUresult[7]),
        .I2(EX_ALUresult[4]),
        .I3(EX_ALUresult[5]),
        .O(\ALUstatus_o[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUstatus_o[1]_i_3 
       (.I0(EX_ALUresult[2]),
        .I1(EX_ALUresult[3]),
        .I2(EX_ALUresult[0]),
        .I3(EX_ALUresult[1]),
        .O(\ALUstatus_o[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ALUstatus_o[1]_i_4 
       (.I0(EX_ALUresult[13]),
        .I1(EX_ALUresult[12]),
        .O(\ALUstatus_o[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUstatus_o[1]_i_5 
       (.I0(EX_ALUresult[10]),
        .I1(EX_ALUresult[11]),
        .I2(EX_ALUresult[8]),
        .I3(EX_ALUresult[9]),
        .O(\ALUstatus_o[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \ALUstatus_o[2]_i_2 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1__39 ),
        .I2(ID_readData2_d[15]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUstatus_o_reg[2] [3]),
        .O(\ALUstatus_o[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \ALUstatus_o[2]_i_3 
       (.I0(ID_readData2_d[15]),
        .I1(\T5/ALU_data1__39 ),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [7]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\ALUstatus_o[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \ALUstatus_o[2]_i_4 
       (.I0(signE_8immed[15]),
        .I1(Q[15]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1__39 ));
  MUXF7 \ALUstatus_o_reg[2]_i_1 
       (.I0(\ALUstatus_o[2]_i_2_n_0 ),
        .I1(\ALUstatus_o[2]_i_3_n_0 ),
        .O(EX_ALUresult[15]),
        .S(\ALUop_o_reg_n_0_[3] ));
  FDRE #(
    .INIT(1'b0)) 
    RFwriteEnab_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(ID_RFwriteEnab),
        .Q(RFwriteEnab_o_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WB_dest_rd_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [8]),
        .Q(\WB_dest_rd_o_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WB_dest_rd_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [9]),
        .Q(\WB_dest_rd_o_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \WB_dest_rd_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [10]),
        .Q(\WB_dest_rd_o_reg[2]_0 [2]),
        .R(SR));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_1 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11__0_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_12__0_n_0 ),
        .O(EX_ALUresult[9]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_10 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_30_n_0 ),
        .O(EX_ALUresult[0]),
        .S(\ALUop_o_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11__0 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [9]),
        .I2(ID_readData2_d[9]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUresult_o_reg[11] [1]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_12__0 
       (.I0(ID_readData2_d[9]),
        .I1(\T5/ALU_data1 [9]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\T5/ALU_data1 [1]),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [8]),
        .I2(ID_readData2_d[8]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\ALUresult_o_reg[11] [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0F050005)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_14__0 
       (.I0(ID_readData2_d[8]),
        .I1(\T5/ALU_data1 [8]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .I3(\ALUop_o_reg_n_0_[2] ),
        .I4(\signE_8immed_o_reg[0]_0 ),
        .I5(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_15 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [7]),
        .I2(ID_readData2_d[7]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\genblk3_0.bram18_single_bl.bram18_single_bl [3]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_16 
       (.I0(\T5/ALU_data1 [7]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[7]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_17__0 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [6]),
        .I2(ID_readData2_d[6]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\genblk3_0.bram18_single_bl.bram18_single_bl [2]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_17__0_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_18 
       (.I0(\T5/ALU_data1 [6]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[6]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_19 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [5]),
        .I2(ID_readData2_d[5]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\genblk3_0.bram18_single_bl.bram18_single_bl [1]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_19_n_0 ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_2 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_14__0_n_0 ),
        .O(EX_ALUresult[8]),
        .S(\ALUop_o_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_20 
       (.I0(\T5/ALU_data1 [5]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[5]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [4]),
        .I2(ID_readData2_d[4]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(\genblk3_0.bram18_single_bl.bram18_single_bl [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_22 
       (.I0(\T5/ALU_data1 [4]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[4]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_23 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [3]),
        .I2(ID_readData2_d[3]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(O[3]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_24 
       (.I0(\T5/ALU_data1 [3]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[3]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_25 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [2]),
        .I2(ID_readData2_d[2]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(O[2]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_26 
       (.I0(\T5/ALU_data1 [2]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[2]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_27 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\T5/ALU_data1 [1]),
        .I2(ID_readData2_d[1]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(O[1]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_28 
       (.I0(\T5/ALU_data1 [1]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[1]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h68577FA868022AA8)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_29 
       (.I0(\ALUop_o_reg_n_0_[2] ),
        .I1(\signE_8immed_o_reg[0]_0 ),
        .I2(ID_readData2_d[0]),
        .I3(\ALUop_o_reg_n_0_[0] ),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .I5(O[0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_n_0 ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_3 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_15_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_16_n_0 ),
        .O(EX_ALUresult[7]),
        .S(\ALUop_o_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h0B083003)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_30 
       (.I0(\signE_8immed_o_reg[0]_0 ),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(\ALUop_o_reg_n_0_[2] ),
        .I3(ID_readData2_d[0]),
        .I4(\ALUop_o_reg[0]_2 [0]),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_31 
       (.I0(signE_8immed[15]),
        .I1(Q[9]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_32 
       (.I0(signE_8immed[1]),
        .I1(Q[1]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_33 
       (.I0(signE_8immed[15]),
        .I1(Q[8]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_34 
       (.I0(signE_8immed[15]),
        .I1(Q[7]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_35 
       (.I0(signE_8immed[6]),
        .I1(Q[6]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_36 
       (.I0(signE_8immed[5]),
        .I1(Q[5]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_37 
       (.I0(signE_8immed[4]),
        .I1(Q[4]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_38 
       (.I0(signE_8immed[3]),
        .I1(Q[3]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_39 
       (.I0(signE_8immed[2]),
        .I1(Q[2]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\T5/ALU_data1 [2]));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_4 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_17__0_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_18_n_0 ),
        .O(EX_ALUresult[6]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_5 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_19_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_20_n_0 ),
        .O(EX_ALUresult[5]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_6 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_22_n_0 ),
        .O(EX_ALUresult[4]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_7 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_23_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_24_n_0 ),
        .O(EX_ALUresult[3]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_8 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_25_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_26_n_0 ),
        .O(EX_ALUresult[2]),
        .S(\ALUop_o_reg_n_0_[3] ));
  MUXF7 \genblk3_0.bram18_single_bl.bram18_single_bl_i_9 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl_i_27_n_0 ),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl_i_28_n_0 ),
        .O(EX_ALUresult[1]),
        .S(\ALUop_o_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[7]),
        .O(\ALUop_o_reg[0]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[6]),
        .O(\ALUop_o_reg[0]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[5]),
        .O(\ALUop_o_reg[0]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[4]),
        .O(\ALUop_o_reg[0]_1 [0]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__0_i_5__0
       (.I0(ID_readData2_d[7]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[7]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__0_i_6__0
       (.I0(ID_readData2_d[6]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[6]),
        .I4(signE_8immed[6]),
        .O(\readData2_o_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__0_i_7__1
       (.I0(ID_readData2_d[5]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[5]),
        .I4(signE_8immed[5]),
        .O(\readData2_o_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__0_i_8__0
       (.I0(ID_readData2_d[4]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[4]),
        .I4(signE_8immed[4]),
        .O(\readData2_o_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[11]),
        .O(\ALUop_o_reg[0]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[10]),
        .O(\ALUop_o_reg[0]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[9]),
        .O(\ALUop_o_reg[0]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[8]),
        .O(\ALUop_o_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__1_i_5
       (.I0(ID_readData2_d[11]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[11]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[11]_0 [3]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__1_i_6
       (.I0(ID_readData2_d[10]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[10]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[11]_0 [2]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__1_i_7
       (.I0(ID_readData2_d[9]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[9]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[11]_0 [1]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__1_i_8
       (.I0(ID_readData2_d[8]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[8]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[14]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[13]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[12]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__2_i_4
       (.I0(ID_readData2_d[15]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[15]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__2_i_5
       (.I0(ID_readData2_d[14]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[14]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__2_i_6
       (.I0(ID_readData2_d[13]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[13]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry__2_i_7
       (.I0(ID_readData2_d[12]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[12]),
        .I4(signE_8immed[15]),
        .O(\readData2_o_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    i__carry_i_1__1
       (.I0(signE_8immed[0]),
        .I1(Q[0]),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .O(\signE_8immed_o_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[3]),
        .O(\ALUop_o_reg[0]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[2]),
        .O(\ALUop_o_reg[0]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__1
       (.I0(\ALUop_o_reg_n_0_[0] ),
        .I1(ID_readData2_d[1]),
        .O(\ALUop_o_reg[0]_2 [1]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry_i_5__0
       (.I0(ID_readData2_d[3]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[3]),
        .I4(signE_8immed[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry_i_6__1
       (.I0(ID_readData2_d[2]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[2]),
        .I4(signE_8immed[2]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h66699699)) 
    i__carry_i_7__0
       (.I0(ID_readData2_d[1]),
        .I1(\ALUop_o_reg_n_0_[0] ),
        .I2(sel_ALUsrc1_o_reg_n_0),
        .I3(Q[1]),
        .I4(signE_8immed[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_8__0
       (.I0(\ALUop_o_reg[0]_2 [0]),
        .I1(ID_readData2_d[0]),
        .I2(\ALUop_o_reg_n_0_[0] ),
        .O(S[0]));
  FDRE #(
    .INIT(1'b0)) 
    memEnab_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(ID_memEnab),
        .Q(ID_memEnab_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    memWriteEnab_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(memWriteEnab_o_reg_0),
        .Q(WEA),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[10] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[11] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[12] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[13] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[14] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[15] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData1_o_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [0]),
        .Q(ID_readData2_d[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[10] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [10]),
        .Q(ID_readData2_d[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[11] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [11]),
        .Q(ID_readData2_d[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[12] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [12]),
        .Q(ID_readData2_d[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[13] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [13]),
        .Q(ID_readData2_d[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[14] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [14]),
        .Q(ID_readData2_d[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[15] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [15]),
        .Q(ID_readData2_d[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [1]),
        .Q(ID_readData2_d[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [2]),
        .Q(ID_readData2_d[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [3]),
        .Q(ID_readData2_d[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [4]),
        .Q(ID_readData2_d[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [5]),
        .Q(ID_readData2_d[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [6]),
        .Q(ID_readData2_d[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [7]),
        .Q(ID_readData2_d[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [8]),
        .Q(ID_readData2_d[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \readData2_o_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\readData2_o_reg[15]_1 [9]),
        .Q(ID_readData2_d[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sel_ALUsrc1_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(ID_sel_ALUsrc1),
        .Q(sel_ALUsrc1_o_reg_n_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sel_mem2RF_o_reg
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(sel_mem2RF_o_reg_0),
        .Q(sel_mem2RF_o),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [0]),
        .Q(signE_8immed[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[15] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [7]),
        .Q(signE_8immed[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [1]),
        .Q(signE_8immed[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [2]),
        .Q(signE_8immed[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [3]),
        .Q(signE_8immed[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [4]),
        .Q(signE_8immed[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [5]),
        .Q(signE_8immed[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \signE_8immed_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\WB_dest_rd_o_reg[2]_1 [6]),
        .Q(signE_8immed[6]),
        .R(SR));
endmodule

module ID_stage
   (data,
    \inst_o_reg[10] ,
    \inst_o_reg[13] ,
    \inst_o_reg[10]_0 ,
    \inst_o_reg[13]_0 ,
    \inst_o_reg[10]_1 ,
    \inst_o_reg[13]_1 ,
    \inst_o_reg[10]_2 ,
    \inst_o_reg[13]_2 ,
    \inst_o_reg[10]_3 ,
    \inst_o_reg[13]_3 ,
    \inst_o_reg[10]_4 ,
    \inst_o_reg[13]_4 ,
    \inst_o_reg[10]_5 ,
    \inst_o_reg[13]_5 ,
    \inst_o_reg[10]_6 ,
    \inst_o_reg[13]_6 ,
    \inst_o_reg[10]_7 ,
    \inst_o_reg[13]_7 ,
    \inst_o_reg[10]_8 ,
    \inst_o_reg[13]_8 ,
    \inst_o_reg[10]_9 ,
    \inst_o_reg[13]_9 ,
    \inst_o_reg[10]_10 ,
    \inst_o_reg[13]_10 ,
    \inst_o_reg[10]_11 ,
    \inst_o_reg[13]_11 ,
    \inst_o_reg[10]_12 ,
    \inst_o_reg[13]_12 ,
    \inst_o_reg[10]_13 ,
    \inst_o_reg[13]_13 ,
    \inst_o_reg[10]_14 ,
    \inst_o_reg[13]_14 ,
    RegFile__111,
    \inst_o_reg[15] ,
    \genblk3_0.bram18_single_bl.bram18_single_bl ,
    S,
    Q,
    \genblk3_0.bram18_single_bl.bram18_single_bl_0 ,
    DI,
    \genblk3_0.bram18_single_bl.bram18_single_bl_1 ,
    \RegFile_reg[0][15] ,
    SR,
    E,
    D,
    sClk_BUFG,
    \RegFile_reg[2][15] ,
    \RegFile_reg[3][0] ,
    \RegFile_reg[4][0] ,
    \RegFile_reg[5][0] ,
    \RegFile_reg[6][0] ,
    \RegFile_reg[7][15] ,
    \RegFile_reg[0][0] );
  output [9:0]data;
  output \inst_o_reg[10] ;
  output \inst_o_reg[13] ;
  output \inst_o_reg[10]_0 ;
  output \inst_o_reg[13]_0 ;
  output \inst_o_reg[10]_1 ;
  output \inst_o_reg[13]_1 ;
  output \inst_o_reg[10]_2 ;
  output \inst_o_reg[13]_2 ;
  output \inst_o_reg[10]_3 ;
  output \inst_o_reg[13]_3 ;
  output \inst_o_reg[10]_4 ;
  output \inst_o_reg[13]_4 ;
  output \inst_o_reg[10]_5 ;
  output \inst_o_reg[13]_5 ;
  output \inst_o_reg[10]_6 ;
  output \inst_o_reg[13]_6 ;
  output \inst_o_reg[10]_7 ;
  output \inst_o_reg[13]_7 ;
  output \inst_o_reg[10]_8 ;
  output \inst_o_reg[13]_8 ;
  output \inst_o_reg[10]_9 ;
  output \inst_o_reg[13]_9 ;
  output \inst_o_reg[10]_10 ;
  output \inst_o_reg[13]_10 ;
  output \inst_o_reg[10]_11 ;
  output \inst_o_reg[13]_11 ;
  output \inst_o_reg[10]_12 ;
  output \inst_o_reg[13]_12 ;
  output \inst_o_reg[10]_13 ;
  output \inst_o_reg[13]_13 ;
  output \inst_o_reg[10]_14 ;
  output \inst_o_reg[13]_14 ;
  output [15:0]RegFile__111;
  output \inst_o_reg[15] ;
  input [6:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  input [3:0]S;
  input [8:0]Q;
  input [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_0 ;
  input [0:0]DI;
  input [1:0]\genblk3_0.bram18_single_bl.bram18_single_bl_1 ;
  input [2:0]\RegFile_reg[0][15] ;
  input [0:0]SR;
  input [0:0]E;
  input [15:0]D;
  input sClk_BUFG;
  input [0:0]\RegFile_reg[2][15] ;
  input [0:0]\RegFile_reg[3][0] ;
  input [0:0]\RegFile_reg[4][0] ;
  input [0:0]\RegFile_reg[5][0] ;
  input [0:0]\RegFile_reg[6][0] ;
  input [0:0]\RegFile_reg[7][15] ;
  input \RegFile_reg[0][0] ;

  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire EX_1_n_0;
  wire EX_1_n_1;
  wire EX_1_n_10;
  wire EX_1_n_11;
  wire EX_1_n_2;
  wire EX_1_n_24;
  wire EX_1_n_25;
  wire EX_1_n_26;
  wire EX_1_n_27;
  wire EX_1_n_3;
  wire EX_1_n_32;
  wire EX_1_n_33;
  wire EX_1_n_34;
  wire EX_1_n_35;
  wire EX_1_n_48;
  wire EX_1_n_49;
  wire EX_1_n_50;
  wire EX_1_n_51;
  wire EX_1_n_52;
  wire EX_1_n_53;
  wire EX_1_n_54;
  wire EX_1_n_55;
  wire EX_1_n_73;
  wire EX_1_n_74;
  wire EX_1_n_75;
  wire EX_1_n_76;
  wire EX_1_n_77;
  wire EX_1_n_78;
  wire EX_1_n_79;
  wire EX_1_n_8;
  wire EX_1_n_80;
  wire EX_1_n_9;
  wire [8:0]Q;
  wire [15:0]RegFile__111;
  wire \RegFile_reg[0][0] ;
  wire [2:0]\RegFile_reg[0][15] ;
  wire [0:0]\RegFile_reg[2][15] ;
  wire [0:0]\RegFile_reg[3][0] ;
  wire [0:0]\RegFile_reg[4][0] ;
  wire [0:0]\RegFile_reg[5][0] ;
  wire [0:0]\RegFile_reg[6][0] ;
  wire [0:0]\RegFile_reg[7][15] ;
  wire [3:0]S;
  wire [0:0]SR;
  wire alt_PC_o_carry__0_n_0;
  wire alt_PC_o_carry__0_n_1;
  wire alt_PC_o_carry__0_n_2;
  wire alt_PC_o_carry__0_n_3;
  wire alt_PC_o_carry__1_n_3;
  wire alt_PC_o_carry_n_0;
  wire alt_PC_o_carry_n_1;
  wire alt_PC_o_carry_n_2;
  wire alt_PC_o_carry_n_3;
  wire [9:0]data;
  wire data2;
  wire data3;
  wire [6:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  wire [3:0]\genblk3_0.bram18_single_bl.bram18_single_bl_0 ;
  wire [1:0]\genblk3_0.bram18_single_bl.bram18_single_bl_1 ;
  wire \inst_o_reg[10] ;
  wire \inst_o_reg[10]_0 ;
  wire \inst_o_reg[10]_1 ;
  wire \inst_o_reg[10]_10 ;
  wire \inst_o_reg[10]_11 ;
  wire \inst_o_reg[10]_12 ;
  wire \inst_o_reg[10]_13 ;
  wire \inst_o_reg[10]_14 ;
  wire \inst_o_reg[10]_2 ;
  wire \inst_o_reg[10]_3 ;
  wire \inst_o_reg[10]_4 ;
  wire \inst_o_reg[10]_5 ;
  wire \inst_o_reg[10]_6 ;
  wire \inst_o_reg[10]_7 ;
  wire \inst_o_reg[10]_8 ;
  wire \inst_o_reg[10]_9 ;
  wire \inst_o_reg[13] ;
  wire \inst_o_reg[13]_0 ;
  wire \inst_o_reg[13]_1 ;
  wire \inst_o_reg[13]_10 ;
  wire \inst_o_reg[13]_11 ;
  wire \inst_o_reg[13]_12 ;
  wire \inst_o_reg[13]_13 ;
  wire \inst_o_reg[13]_14 ;
  wire \inst_o_reg[13]_2 ;
  wire \inst_o_reg[13]_3 ;
  wire \inst_o_reg[13]_4 ;
  wire \inst_o_reg[13]_5 ;
  wire \inst_o_reg[13]_6 ;
  wire \inst_o_reg[13]_7 ;
  wire \inst_o_reg[13]_8 ;
  wire \inst_o_reg[13]_9 ;
  wire \inst_o_reg[15] ;
  wire sClk_BUFG;
  wire [3:1]NLW_alt_PC_o_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_alt_PC_o_carry__1_O_UNCONNECTED;

  Reg_File EX_1
       (.CO(data3),
        .D(D),
        .DI({EX_1_n_8,EX_1_n_9,EX_1_n_10,EX_1_n_11}),
        .E(E),
        .Q(Q[8:1]),
        .RegFile__111(RegFile__111),
        .\RegFile_reg[0][0]_0 (\RegFile_reg[0][0] ),
        .\RegFile_reg[0][15]_0 (\RegFile_reg[0][15] ),
        .\RegFile_reg[2][15]_0 (\RegFile_reg[2][15] ),
        .\RegFile_reg[3][0]_0 (\RegFile_reg[3][0] ),
        .\RegFile_reg[4][0]_0 (\RegFile_reg[4][0] ),
        .\RegFile_reg[5][0]_0 (\RegFile_reg[5][0] ),
        .\RegFile_reg[6][0]_0 (\RegFile_reg[6][0] ),
        .\RegFile_reg[7][15]_0 (\RegFile_reg[7][15] ),
        .S({EX_1_n_0,EX_1_n_1,EX_1_n_2,EX_1_n_3}),
        .SR(SR),
        .\genblk3_0.bram18_single_bl.bram18_single_bl (data2),
        .\inst_o_reg[10] (\inst_o_reg[10] ),
        .\inst_o_reg[10]_0 (\inst_o_reg[10]_0 ),
        .\inst_o_reg[10]_1 (\inst_o_reg[10]_1 ),
        .\inst_o_reg[10]_10 ({EX_1_n_32,EX_1_n_33,EX_1_n_34,EX_1_n_35}),
        .\inst_o_reg[10]_11 (\inst_o_reg[10]_9 ),
        .\inst_o_reg[10]_12 (\inst_o_reg[10]_10 ),
        .\inst_o_reg[10]_13 (\inst_o_reg[10]_11 ),
        .\inst_o_reg[10]_14 (\inst_o_reg[10]_12 ),
        .\inst_o_reg[10]_15 (\inst_o_reg[10]_13 ),
        .\inst_o_reg[10]_16 (\inst_o_reg[10]_14 ),
        .\inst_o_reg[10]_17 ({EX_1_n_73,EX_1_n_74,EX_1_n_75,EX_1_n_76}),
        .\inst_o_reg[10]_18 ({EX_1_n_77,EX_1_n_78,EX_1_n_79,EX_1_n_80}),
        .\inst_o_reg[10]_2 (\inst_o_reg[10]_2 ),
        .\inst_o_reg[10]_3 (\inst_o_reg[10]_3 ),
        .\inst_o_reg[10]_4 (\inst_o_reg[10]_4 ),
        .\inst_o_reg[10]_5 (\inst_o_reg[10]_5 ),
        .\inst_o_reg[10]_6 (\inst_o_reg[10]_6 ),
        .\inst_o_reg[10]_7 ({EX_1_n_24,EX_1_n_25,EX_1_n_26,EX_1_n_27}),
        .\inst_o_reg[10]_8 (\inst_o_reg[10]_7 ),
        .\inst_o_reg[10]_9 (\inst_o_reg[10]_8 ),
        .\inst_o_reg[13] (\inst_o_reg[13] ),
        .\inst_o_reg[13]_0 (\inst_o_reg[13]_0 ),
        .\inst_o_reg[13]_1 (\inst_o_reg[13]_1 ),
        .\inst_o_reg[13]_10 (\inst_o_reg[13]_10 ),
        .\inst_o_reg[13]_11 (\inst_o_reg[13]_11 ),
        .\inst_o_reg[13]_12 (\inst_o_reg[13]_12 ),
        .\inst_o_reg[13]_13 (\inst_o_reg[13]_13 ),
        .\inst_o_reg[13]_14 (\inst_o_reg[13]_14 ),
        .\inst_o_reg[13]_15 ({EX_1_n_48,EX_1_n_49,EX_1_n_50,EX_1_n_51}),
        .\inst_o_reg[13]_16 ({EX_1_n_52,EX_1_n_53,EX_1_n_54,EX_1_n_55}),
        .\inst_o_reg[13]_2 (\inst_o_reg[13]_2 ),
        .\inst_o_reg[13]_3 (\inst_o_reg[13]_3 ),
        .\inst_o_reg[13]_4 (\inst_o_reg[13]_4 ),
        .\inst_o_reg[13]_5 (\inst_o_reg[13]_5 ),
        .\inst_o_reg[13]_6 (\inst_o_reg[13]_6 ),
        .\inst_o_reg[13]_7 (\inst_o_reg[13]_7 ),
        .\inst_o_reg[13]_8 (\inst_o_reg[13]_8 ),
        .\inst_o_reg[13]_9 (\inst_o_reg[13]_9 ),
        .\inst_o_reg[15] (\inst_o_reg[15] ),
        .sClk_BUFG(sClk_BUFG));
  Control EX_3
       (.CO(data3),
        .DI({EX_1_n_8,EX_1_n_9,EX_1_n_10,EX_1_n_11}),
        .\PC_select0_inferred__2/i__carry__0_0 ({EX_1_n_48,EX_1_n_49,EX_1_n_50,EX_1_n_51}),
        .\PC_select0_inferred__2/i__carry__0_1 ({EX_1_n_73,EX_1_n_74,EX_1_n_75,EX_1_n_76}),
        .S({EX_1_n_0,EX_1_n_1,EX_1_n_2,EX_1_n_3}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_11 ({EX_1_n_32,EX_1_n_33,EX_1_n_34,EX_1_n_35}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_0 ({EX_1_n_24,EX_1_n_25,EX_1_n_26,EX_1_n_27}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_1 ({EX_1_n_52,EX_1_n_53,EX_1_n_54,EX_1_n_55}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_11_2 ({EX_1_n_77,EX_1_n_78,EX_1_n_79,EX_1_n_80}),
        .i__carry__0_i_8(data2));
  CARRY4 alt_PC_o_carry
       (.CI(1'b0),
        .CO({alt_PC_o_carry_n_0,alt_PC_o_carry_n_1,alt_PC_o_carry_n_2,alt_PC_o_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\genblk3_0.bram18_single_bl.bram18_single_bl [3:0]),
        .O(data[3:0]),
        .S(S));
  CARRY4 alt_PC_o_carry__0
       (.CI(alt_PC_o_carry_n_0),
        .CO({alt_PC_o_carry__0_n_0,alt_PC_o_carry__0_n_1,alt_PC_o_carry__0_n_2,alt_PC_o_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Q[0],\genblk3_0.bram18_single_bl.bram18_single_bl [6:4]}),
        .O(data[7:4]),
        .S(\genblk3_0.bram18_single_bl.bram18_single_bl_0 ));
  CARRY4 alt_PC_o_carry__1
       (.CI(alt_PC_o_carry__0_n_0),
        .CO({NLW_alt_PC_o_carry__1_CO_UNCONNECTED[3:1],alt_PC_o_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({NLW_alt_PC_o_carry__1_O_UNCONNECTED[3:2],data[9:8]}),
        .S({1'b0,1'b0,\genblk3_0.bram18_single_bl.bram18_single_bl_1 }));
endmodule

module IF_ID_PR
   (DI,
    Q,
    ID_sel_ALUsrc1,
    D,
    ID_memEnab,
    ID_RFwriteEnab,
    O,
    \inst_o_reg[17]_0 ,
    \inst_o_reg[17]_1 ,
    S,
    \PCplus1_o_reg[6]_0 ,
    \inst_o_reg[7]_0 ,
    \inst_o_reg[17]_2 ,
    \inst_o_reg[17]_3 ,
    \PCplus1_o_reg[8]_0 ,
    ADDRARDADDR,
    \genblk3_0.bram18_single_bl.bram18_single_bl ,
    data,
    currPC_reg,
    \PCplus1_o_reg[9]_0 ,
    SR,
    \inst_o_reg[17]_4 ,
    sClk_BUFG);
  output [0:0]DI;
  output [15:0]Q;
  output ID_sel_ALUsrc1;
  output [3:0]D;
  output ID_memEnab;
  output ID_RFwriteEnab;
  output [3:0]O;
  output [3:0]\inst_o_reg[17]_0 ;
  output [1:0]\inst_o_reg[17]_1 ;
  output [3:0]S;
  output [6:0]\PCplus1_o_reg[6]_0 ;
  output [3:0]\inst_o_reg[7]_0 ;
  output \inst_o_reg[17]_2 ;
  output \inst_o_reg[17]_3 ;
  output [1:0]\PCplus1_o_reg[8]_0 ;
  output [9:0]ADDRARDADDR;
  input \genblk3_0.bram18_single_bl.bram18_single_bl ;
  input [9:0]data;
  input [9:0]currPC_reg;
  input [9:0]\PCplus1_o_reg[9]_0 ;
  input [0:0]SR;
  input [17:0]\inst_o_reg[17]_4 ;
  input sClk_BUFG;

  wire [9:0]ADDRARDADDR;
  wire [3:0]D;
  wire [0:0]DI;
  wire ID_RFwriteEnab;
  wire ID_memEnab;
  wire ID_sel_ALUsrc1;
  wire [3:0]O;
  wire [6:0]\PCplus1_o_reg[6]_0 ;
  wire [1:0]\PCplus1_o_reg[8]_0 ;
  wire [9:0]\PCplus1_o_reg[9]_0 ;
  wire \PCplus1_o_reg_n_0_[7] ;
  wire \PCplus1_o_reg_n_0_[8] ;
  wire \PCplus1_o_reg_n_0_[9] ;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \currPC[0]_i_2_n_0 ;
  wire \currPC[0]_i_3_n_0 ;
  wire \currPC[0]_i_4_n_0 ;
  wire \currPC[0]_i_5_n_0 ;
  wire \currPC[0]_i_6_n_0 ;
  wire \currPC[4]_i_2_n_0 ;
  wire \currPC[4]_i_3_n_0 ;
  wire \currPC[4]_i_4_n_0 ;
  wire \currPC[4]_i_5_n_0 ;
  wire \currPC[8]_i_2_n_0 ;
  wire \currPC[8]_i_3_n_0 ;
  wire [9:0]currPC_reg;
  wire \currPC_reg[0]_i_1_n_0 ;
  wire \currPC_reg[0]_i_1_n_1 ;
  wire \currPC_reg[0]_i_1_n_2 ;
  wire \currPC_reg[0]_i_1_n_3 ;
  wire \currPC_reg[4]_i_1_n_0 ;
  wire \currPC_reg[4]_i_1_n_1 ;
  wire \currPC_reg[4]_i_1_n_2 ;
  wire \currPC_reg[4]_i_1_n_3 ;
  wire \currPC_reg[8]_i_1_n_3 ;
  wire [9:0]data;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl ;
  wire [3:0]\inst_o_reg[17]_0 ;
  wire [1:0]\inst_o_reg[17]_1 ;
  wire \inst_o_reg[17]_2 ;
  wire \inst_o_reg[17]_3 ;
  wire [17:0]\inst_o_reg[17]_4 ;
  wire [3:0]\inst_o_reg[7]_0 ;
  wire \inst_o_reg_n_0_[16] ;
  wire \inst_o_reg_n_0_[17] ;
  wire sClk_BUFG;
  wire [3:1]\NLW_currPC_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_currPC_reg[8]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00554454)) 
    \ALUop_o[0]_i_1 
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(Q[14]),
        .I2(Q[0]),
        .I3(\inst_o_reg_n_0_[16] ),
        .I4(Q[15]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10100100)) 
    \ALUop_o[1]_i_1 
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(\inst_o_reg_n_0_[16] ),
        .I2(Q[15]),
        .I3(Q[1]),
        .I4(Q[14]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    \ALUop_o[2]_i_1 
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(Q[14]),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(Q[2]),
        .I4(Q[15]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h11000054)) 
    \ALUop_o[3]_i_1 
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(\inst_o_reg_n_0_[16] ),
        .I2(Q[3]),
        .I3(Q[15]),
        .I4(Q[14]),
        .O(D[3]));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [0]),
        .Q(\PCplus1_o_reg[6]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [1]),
        .Q(\PCplus1_o_reg[6]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [2]),
        .Q(\PCplus1_o_reg[6]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [3]),
        .Q(\PCplus1_o_reg[6]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [4]),
        .Q(\PCplus1_o_reg[6]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [5]),
        .Q(\PCplus1_o_reg[6]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [6]),
        .Q(\PCplus1_o_reg[6]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [7]),
        .Q(\PCplus1_o_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [8]),
        .Q(\PCplus1_o_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PCplus1_o_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\PCplus1_o_reg[9]_0 [9]),
        .Q(\PCplus1_o_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1055)) 
    RFwriteEnab_o_i_1
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(\inst_o_reg_n_0_[16] ),
        .I2(Q[14]),
        .I3(Q[15]),
        .O(ID_RFwriteEnab));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry__0_i_1
       (.I0(Q[7]),
        .I1(\PCplus1_o_reg_n_0_[7] ),
        .O(\inst_o_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry__0_i_2
       (.I0(\PCplus1_o_reg[6]_0 [6]),
        .I1(Q[6]),
        .O(\inst_o_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry__0_i_3
       (.I0(\PCplus1_o_reg[6]_0 [5]),
        .I1(Q[5]),
        .O(\inst_o_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry__0_i_4
       (.I0(\PCplus1_o_reg[6]_0 [4]),
        .I1(Q[4]),
        .O(\inst_o_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    alt_PC_o_carry__1_i_1
       (.I0(Q[7]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    alt_PC_o_carry__1_i_2
       (.I0(\PCplus1_o_reg_n_0_[8] ),
        .I1(\PCplus1_o_reg_n_0_[9] ),
        .O(\PCplus1_o_reg[8]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry__1_i_3
       (.I0(Q[7]),
        .I1(\PCplus1_o_reg_n_0_[8] ),
        .O(\PCplus1_o_reg[8]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry_i_1
       (.I0(\PCplus1_o_reg[6]_0 [3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry_i_2
       (.I0(\PCplus1_o_reg[6]_0 [2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry_i_3
       (.I0(\PCplus1_o_reg[6]_0 [1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    alt_PC_o_carry_i_4
       (.I0(\PCplus1_o_reg[6]_0 [0]),
        .I1(Q[0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[0]_i_2 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[0]),
        .I4(currPC_reg[0]),
        .O(\currPC[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[0]_i_3 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[3]),
        .I4(currPC_reg[3]),
        .O(\currPC[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[0]_i_4 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[2]),
        .I4(currPC_reg[2]),
        .O(\currPC[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[0]_i_5 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[1]),
        .I4(currPC_reg[1]),
        .O(\currPC[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08FF00F7)) 
    \currPC[0]_i_6 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(currPC_reg[0]),
        .I4(data[0]),
        .O(\currPC[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[4]_i_2 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[7]),
        .I4(currPC_reg[7]),
        .O(\currPC[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[4]_i_3 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[6]),
        .I4(currPC_reg[6]),
        .O(\currPC[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[4]_i_4 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[5]),
        .I4(currPC_reg[5]),
        .O(\currPC[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[4]_i_5 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[4]),
        .I4(currPC_reg[4]),
        .O(\currPC[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[8]_i_2 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[9]),
        .I4(currPC_reg[9]),
        .O(\currPC[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \currPC[8]_i_3 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[8]),
        .I4(currPC_reg[8]),
        .O(\currPC[8]_i_3_n_0 ));
  CARRY4 \currPC_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\currPC_reg[0]_i_1_n_0 ,\currPC_reg[0]_i_1_n_1 ,\currPC_reg[0]_i_1_n_2 ,\currPC_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\currPC[0]_i_2_n_0 }),
        .O(O),
        .S({\currPC[0]_i_3_n_0 ,\currPC[0]_i_4_n_0 ,\currPC[0]_i_5_n_0 ,\currPC[0]_i_6_n_0 }));
  CARRY4 \currPC_reg[4]_i_1 
       (.CI(\currPC_reg[0]_i_1_n_0 ),
        .CO({\currPC_reg[4]_i_1_n_0 ,\currPC_reg[4]_i_1_n_1 ,\currPC_reg[4]_i_1_n_2 ,\currPC_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\inst_o_reg[17]_0 ),
        .S({\currPC[4]_i_2_n_0 ,\currPC[4]_i_3_n_0 ,\currPC[4]_i_4_n_0 ,\currPC[4]_i_5_n_0 }));
  CARRY4 \currPC_reg[8]_i_1 
       (.CI(\currPC_reg[4]_i_1_n_0 ),
        .CO({\NLW_currPC_reg[8]_i_1_CO_UNCONNECTED [3:1],\currPC_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_currPC_reg[8]_i_1_O_UNCONNECTED [3:2],\inst_o_reg[17]_1 }),
        .S({1'b0,1'b0,\currPC[8]_i_2_n_0 ,\currPC[8]_i_3_n_0 }));
  LUT5 #(
    .INIT(32'h0800FFF7)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_10__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[0]),
        .I4(currPC_reg[0]),
        .O(ADDRARDADDR[0]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_1__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[9]),
        .I4(\PCplus1_o_reg[9]_0 [9]),
        .O(ADDRARDADDR[9]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_2__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[8]),
        .I4(\PCplus1_o_reg[9]_0 [8]),
        .O(ADDRARDADDR[8]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_3__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[7]),
        .I4(\PCplus1_o_reg[9]_0 [7]),
        .O(ADDRARDADDR[7]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_4__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[6]),
        .I4(\PCplus1_o_reg[9]_0 [6]),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_5__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[5]),
        .I4(\PCplus1_o_reg[9]_0 [5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_6__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[4]),
        .I4(\PCplus1_o_reg[9]_0 [4]),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_7__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[3]),
        .I4(\PCplus1_o_reg[9]_0 [3]),
        .O(ADDRARDADDR[3]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_8__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[2]),
        .I4(\PCplus1_o_reg[9]_0 [2]),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hFFF70800)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_9__0 
       (.I0(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I1(\inst_o_reg_n_0_[17] ),
        .I2(\inst_o_reg_n_0_[16] ),
        .I3(data[1]),
        .I4(\PCplus1_o_reg[9]_0 [1]),
        .O(ADDRARDADDR[1]));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[10] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[11] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[12] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[13] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[14] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[15] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[16] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [16]),
        .Q(\inst_o_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[17] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [17]),
        .Q(\inst_o_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \inst_o_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\inst_o_reg[17]_4 [9]),
        .Q(Q[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    memEnab_o_i_1
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(\inst_o_reg_n_0_[17] ),
        .I3(\inst_o_reg_n_0_[16] ),
        .O(ID_memEnab));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    memWriteEnab_o_i_1
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(\inst_o_reg_n_0_[16] ),
        .I2(Q[15]),
        .I3(Q[14]),
        .O(\inst_o_reg[17]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1154)) 
    sel_ALUsrc1_o_i_1
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(\inst_o_reg_n_0_[16] ),
        .O(ID_sel_ALUsrc1));
  LUT4 #(
    .INIT(16'h0010)) 
    sel_mem2RF_o_i_1
       (.I0(\inst_o_reg_n_0_[17] ),
        .I1(\inst_o_reg_n_0_[16] ),
        .I2(Q[14]),
        .I3(Q[15]),
        .O(\inst_o_reg[17]_3 ));
endmodule

module IF_stage
   (D,
    currPC_reg,
    \currPC_reg[9]_0 ,
    seg_L_OBUF,
    sClk_BUFG,
    ADDRARDADDR,
    SR,
    O,
    \currPC_reg[7]_0 ,
    \currPC_reg[9]_1 ,
    sel_IBUF,
    seg7_clk);
  output [17:0]D;
  output [9:0]currPC_reg;
  output [9:0]\currPC_reg[9]_0 ;
  output [6:0]seg_L_OBUF;
  input sClk_BUFG;
  input [9:0]ADDRARDADDR;
  input [0:0]SR;
  input [3:0]O;
  input [3:0]\currPC_reg[7]_0 ;
  input [1:0]\currPC_reg[9]_1 ;
  input sel_IBUF;
  input [1:0]seg7_clk;

  wire [9:0]ADDRARDADDR;
  wire [17:0]D;
  wire [3:0]O;
  wire PCplus1_carry__0_n_0;
  wire PCplus1_carry__0_n_1;
  wire PCplus1_carry__0_n_2;
  wire PCplus1_carry__0_n_3;
  wire PCplus1_carry_n_0;
  wire PCplus1_carry_n_1;
  wire PCplus1_carry_n_2;
  wire PCplus1_carry_n_3;
  wire [0:0]SR;
  wire [9:0]currPC_reg;
  wire [3:0]\currPC_reg[7]_0 ;
  wire [9:0]\currPC_reg[9]_0 ;
  wire [1:0]\currPC_reg[9]_1 ;
  wire sClk_BUFG;
  wire [1:0]seg7_clk;
  wire [6:0]seg_L_OBUF;
  wire [3:0]sel0;
  wire sel_IBUF;
  wire [3:0]NLW_PCplus1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_PCplus1_carry__1_O_UNCONNECTED;

  I_mem IF_1
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .sClk_BUFG(sClk_BUFG));
  CARRY4 PCplus1_carry
       (.CI(1'b0),
        .CO({PCplus1_carry_n_0,PCplus1_carry_n_1,PCplus1_carry_n_2,PCplus1_carry_n_3}),
        .CYINIT(currPC_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\currPC_reg[9]_0 [4:1]),
        .S(currPC_reg[4:1]));
  CARRY4 PCplus1_carry__0
       (.CI(PCplus1_carry_n_0),
        .CO({PCplus1_carry__0_n_0,PCplus1_carry__0_n_1,PCplus1_carry__0_n_2,PCplus1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\currPC_reg[9]_0 [8:5]),
        .S(currPC_reg[8:5]));
  CARRY4 PCplus1_carry__1
       (.CI(PCplus1_carry__0_n_0),
        .CO(NLW_PCplus1_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PCplus1_carry__1_O_UNCONNECTED[3:1],\currPC_reg[9]_0 [9]}),
        .S({1'b0,1'b0,1'b0,currPC_reg[9]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PCplus1_o[0]_i_1 
       (.I0(currPC_reg[0]),
        .O(\currPC_reg[9]_0 [0]));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[0] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(O[0]),
        .Q(currPC_reg[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[1] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(O[1]),
        .Q(currPC_reg[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[2] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(O[2]),
        .Q(currPC_reg[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[3] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(O[3]),
        .Q(currPC_reg[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[4] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[7]_0 [0]),
        .Q(currPC_reg[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[5] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[7]_0 [1]),
        .Q(currPC_reg[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[6] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[7]_0 [2]),
        .Q(currPC_reg[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[7] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[7]_0 [3]),
        .Q(currPC_reg[7]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[8] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[9]_1 [0]),
        .Q(currPC_reg[8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \currPC_reg[9] 
       (.C(sClk_BUFG),
        .CE(1'b1),
        .D(\currPC_reg[9]_1 [1]),
        .Q(currPC_reg[9]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_L_OBUF[0]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_L_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_L_OBUF[1]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg_L_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_L_OBUF[2]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg_L_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_L_OBUF[3]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_L_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_L_OBUF[4]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(seg_L_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_L_OBUF[5]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_L_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_L_OBUF[6]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg_L_OBUF[6]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \seg_L_OBUF[6]_inst_i_2 
       (.I0(sel_IBUF),
        .I1(currPC_reg[3]),
        .I2(seg7_clk[0]),
        .I3(currPC_reg[7]),
        .I4(seg7_clk[1]),
        .O(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F4A4)) 
    \seg_L_OBUF[6]_inst_i_3 
       (.I0(sel_IBUF),
        .I1(currPC_reg[0]),
        .I2(seg7_clk[0]),
        .I3(currPC_reg[4]),
        .I4(seg7_clk[1]),
        .O(sel0[0]));
  LUT5 #(
    .INIT(32'h00003E0E)) 
    \seg_L_OBUF[6]_inst_i_4 
       (.I0(currPC_reg[2]),
        .I1(sel_IBUF),
        .I2(seg7_clk[0]),
        .I3(currPC_reg[6]),
        .I4(seg7_clk[1]),
        .O(sel0[2]));
  LUT5 #(
    .INIT(32'h00003E0E)) 
    \seg_L_OBUF[6]_inst_i_5 
       (.I0(currPC_reg[1]),
        .I1(sel_IBUF),
        .I2(seg7_clk[0]),
        .I3(currPC_reg[5]),
        .I4(seg7_clk[1]),
        .O(sel0[1]));
endmodule

module I_mem
   (D,
    sClk_BUFG,
    ADDRARDADDR);
  output [17:0]D;
  input sClk_BUFG;
  input [9:0]ADDRARDADDR;

  wire [9:0]ADDRARDADDR;
  wire [17:0]D;
  wire sClk_BUFG;

  BRAM_SINGLE_MACRO_viv_ BRAM_SINGLE_MACRO_inst0
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .sClk_BUFG(sClk_BUFG));
endmodule

module Mem_stage
   (DOADO,
    sClk_BUFG,
    ID_memEnab_d,
    EX_ALUresult,
    Q,
    WEA);
  output [15:0]DOADO;
  input sClk_BUFG;
  input ID_memEnab_d;
  input [9:0]EX_ALUresult;
  input [15:0]Q;
  input [0:0]WEA;

  wire [15:0]DOADO;
  wire [9:0]EX_ALUresult;
  wire ID_memEnab_d;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire sClk_BUFG;

  D_mem DM_1
       (.DOADO(DOADO),
        .EX_ALUresult(EX_ALUresult),
        .ID_memEnab_d(ID_memEnab_d),
        .Q(Q),
        .WEA(WEA),
        .sClk_BUFG(sClk_BUFG));
endmodule

module Reg_File
   (S,
    \inst_o_reg[10] ,
    \inst_o_reg[13] ,
    \inst_o_reg[10]_0 ,
    \inst_o_reg[13]_0 ,
    DI,
    \inst_o_reg[10]_1 ,
    \inst_o_reg[13]_1 ,
    \inst_o_reg[10]_2 ,
    \inst_o_reg[13]_2 ,
    \inst_o_reg[10]_3 ,
    \inst_o_reg[13]_3 ,
    \inst_o_reg[10]_4 ,
    \inst_o_reg[13]_4 ,
    \inst_o_reg[10]_5 ,
    \inst_o_reg[13]_5 ,
    \inst_o_reg[10]_6 ,
    \inst_o_reg[13]_6 ,
    \inst_o_reg[10]_7 ,
    \inst_o_reg[10]_8 ,
    \inst_o_reg[13]_7 ,
    \inst_o_reg[10]_9 ,
    \inst_o_reg[13]_8 ,
    \inst_o_reg[10]_10 ,
    \inst_o_reg[10]_11 ,
    \inst_o_reg[13]_9 ,
    \inst_o_reg[10]_12 ,
    \inst_o_reg[13]_10 ,
    \inst_o_reg[10]_13 ,
    \inst_o_reg[13]_11 ,
    \inst_o_reg[10]_14 ,
    \inst_o_reg[13]_12 ,
    \inst_o_reg[10]_15 ,
    \inst_o_reg[13]_13 ,
    \inst_o_reg[10]_16 ,
    \inst_o_reg[13]_14 ,
    \inst_o_reg[13]_15 ,
    \inst_o_reg[13]_16 ,
    RegFile__111,
    \inst_o_reg[15] ,
    \inst_o_reg[10]_17 ,
    \inst_o_reg[10]_18 ,
    Q,
    \RegFile_reg[0][15]_0 ,
    CO,
    \genblk3_0.bram18_single_bl.bram18_single_bl ,
    SR,
    E,
    D,
    sClk_BUFG,
    \RegFile_reg[2][15]_0 ,
    \RegFile_reg[3][0]_0 ,
    \RegFile_reg[4][0]_0 ,
    \RegFile_reg[5][0]_0 ,
    \RegFile_reg[6][0]_0 ,
    \RegFile_reg[7][15]_0 ,
    \RegFile_reg[0][0]_0 );
  output [3:0]S;
  output \inst_o_reg[10] ;
  output \inst_o_reg[13] ;
  output \inst_o_reg[10]_0 ;
  output \inst_o_reg[13]_0 ;
  output [3:0]DI;
  output \inst_o_reg[10]_1 ;
  output \inst_o_reg[13]_1 ;
  output \inst_o_reg[10]_2 ;
  output \inst_o_reg[13]_2 ;
  output \inst_o_reg[10]_3 ;
  output \inst_o_reg[13]_3 ;
  output \inst_o_reg[10]_4 ;
  output \inst_o_reg[13]_4 ;
  output \inst_o_reg[10]_5 ;
  output \inst_o_reg[13]_5 ;
  output \inst_o_reg[10]_6 ;
  output \inst_o_reg[13]_6 ;
  output [3:0]\inst_o_reg[10]_7 ;
  output \inst_o_reg[10]_8 ;
  output \inst_o_reg[13]_7 ;
  output \inst_o_reg[10]_9 ;
  output \inst_o_reg[13]_8 ;
  output [3:0]\inst_o_reg[10]_10 ;
  output \inst_o_reg[10]_11 ;
  output \inst_o_reg[13]_9 ;
  output \inst_o_reg[10]_12 ;
  output \inst_o_reg[13]_10 ;
  output \inst_o_reg[10]_13 ;
  output \inst_o_reg[13]_11 ;
  output \inst_o_reg[10]_14 ;
  output \inst_o_reg[13]_12 ;
  output \inst_o_reg[10]_15 ;
  output \inst_o_reg[13]_13 ;
  output \inst_o_reg[10]_16 ;
  output \inst_o_reg[13]_14 ;
  output [3:0]\inst_o_reg[13]_15 ;
  output [3:0]\inst_o_reg[13]_16 ;
  output [15:0]RegFile__111;
  output \inst_o_reg[15] ;
  output [3:0]\inst_o_reg[10]_17 ;
  output [3:0]\inst_o_reg[10]_18 ;
  input [7:0]Q;
  input [2:0]\RegFile_reg[0][15]_0 ;
  input [0:0]CO;
  input [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  input [0:0]SR;
  input [0:0]E;
  input [15:0]D;
  input sClk_BUFG;
  input [0:0]\RegFile_reg[2][15]_0 ;
  input [0:0]\RegFile_reg[3][0]_0 ;
  input [0:0]\RegFile_reg[4][0]_0 ;
  input [0:0]\RegFile_reg[5][0]_0 ;
  input [0:0]\RegFile_reg[6][0]_0 ;
  input [0:0]\RegFile_reg[7][15]_0 ;
  input \RegFile_reg[0][0]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire \RegFile[1][0]_i_3_n_0 ;
  wire \RegFile[1][0]_i_4_n_0 ;
  wire \RegFile[1][10]_i_3_n_0 ;
  wire \RegFile[1][10]_i_4_n_0 ;
  wire \RegFile[1][11]_i_3_n_0 ;
  wire \RegFile[1][11]_i_4_n_0 ;
  wire \RegFile[1][12]_i_3_n_0 ;
  wire \RegFile[1][12]_i_4_n_0 ;
  wire \RegFile[1][13]_i_3_n_0 ;
  wire \RegFile[1][13]_i_4_n_0 ;
  wire \RegFile[1][14]_i_3_n_0 ;
  wire \RegFile[1][14]_i_4_n_0 ;
  wire \RegFile[1][15]_i_4_n_0 ;
  wire \RegFile[1][15]_i_5_n_0 ;
  wire \RegFile[1][1]_i_3_n_0 ;
  wire \RegFile[1][1]_i_4_n_0 ;
  wire \RegFile[1][2]_i_3_n_0 ;
  wire \RegFile[1][2]_i_4_n_0 ;
  wire \RegFile[1][3]_i_3_n_0 ;
  wire \RegFile[1][3]_i_4_n_0 ;
  wire \RegFile[1][4]_i_3_n_0 ;
  wire \RegFile[1][4]_i_4_n_0 ;
  wire \RegFile[1][5]_i_3_n_0 ;
  wire \RegFile[1][5]_i_4_n_0 ;
  wire \RegFile[1][6]_i_3_n_0 ;
  wire \RegFile[1][6]_i_4_n_0 ;
  wire \RegFile[1][7]_i_3_n_0 ;
  wire \RegFile[1][7]_i_4_n_0 ;
  wire \RegFile[1][8]_i_3_n_0 ;
  wire \RegFile[1][8]_i_4_n_0 ;
  wire \RegFile[1][9]_i_3_n_0 ;
  wire \RegFile[1][9]_i_4_n_0 ;
  wire [15:0]RegFile__111;
  wire [15:0]\RegFile_reg[0] ;
  wire \RegFile_reg[0][0]_0 ;
  wire [2:0]\RegFile_reg[0][15]_0 ;
  wire [15:0]\RegFile_reg[1] ;
  wire [15:0]\RegFile_reg[2] ;
  wire [0:0]\RegFile_reg[2][15]_0 ;
  wire [15:0]\RegFile_reg[3] ;
  wire [0:0]\RegFile_reg[3][0]_0 ;
  wire [15:0]\RegFile_reg[4] ;
  wire [0:0]\RegFile_reg[4][0]_0 ;
  wire [15:0]\RegFile_reg[5] ;
  wire [0:0]\RegFile_reg[5][0]_0 ;
  wire [15:0]\RegFile_reg[6] ;
  wire [0:0]\RegFile_reg[6][0]_0 ;
  wire [15:0]\RegFile_reg[7] ;
  wire [0:0]\RegFile_reg[7][15]_0 ;
  wire [3:0]S;
  wire [0:0]SR;
  wire data0;
  wire data1;
  wire [0:0]\genblk3_0.bram18_single_bl.bram18_single_bl ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_12_n_3 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_13_n_3 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_1 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_2 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_3 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_15__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_16__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_1 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_2 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_3 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_18__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_19__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_20__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_21__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_22__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_23__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_24__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_25__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_26__0_n_0 ;
  wire \genblk3_0.bram18_single_bl.bram18_single_bl_i_27__0_n_0 ;
  wire \inst_o_reg[10] ;
  wire \inst_o_reg[10]_0 ;
  wire \inst_o_reg[10]_1 ;
  wire [3:0]\inst_o_reg[10]_10 ;
  wire \inst_o_reg[10]_11 ;
  wire \inst_o_reg[10]_12 ;
  wire \inst_o_reg[10]_13 ;
  wire \inst_o_reg[10]_14 ;
  wire \inst_o_reg[10]_15 ;
  wire \inst_o_reg[10]_16 ;
  wire [3:0]\inst_o_reg[10]_17 ;
  wire [3:0]\inst_o_reg[10]_18 ;
  wire \inst_o_reg[10]_2 ;
  wire \inst_o_reg[10]_3 ;
  wire \inst_o_reg[10]_4 ;
  wire \inst_o_reg[10]_5 ;
  wire \inst_o_reg[10]_6 ;
  wire [3:0]\inst_o_reg[10]_7 ;
  wire \inst_o_reg[10]_8 ;
  wire \inst_o_reg[10]_9 ;
  wire \inst_o_reg[13] ;
  wire \inst_o_reg[13]_0 ;
  wire \inst_o_reg[13]_1 ;
  wire \inst_o_reg[13]_10 ;
  wire \inst_o_reg[13]_11 ;
  wire \inst_o_reg[13]_12 ;
  wire \inst_o_reg[13]_13 ;
  wire \inst_o_reg[13]_14 ;
  wire [3:0]\inst_o_reg[13]_15 ;
  wire [3:0]\inst_o_reg[13]_16 ;
  wire \inst_o_reg[13]_2 ;
  wire \inst_o_reg[13]_3 ;
  wire \inst_o_reg[13]_4 ;
  wire \inst_o_reg[13]_5 ;
  wire \inst_o_reg[13]_6 ;
  wire \inst_o_reg[13]_7 ;
  wire \inst_o_reg[13]_8 ;
  wire \inst_o_reg[13]_9 ;
  wire \inst_o_reg[15] ;
  wire \readData1_o[0]_i_2_n_0 ;
  wire \readData1_o[0]_i_3_n_0 ;
  wire \readData1_o[10]_i_2_n_0 ;
  wire \readData1_o[10]_i_3_n_0 ;
  wire \readData1_o[11]_i_2_n_0 ;
  wire \readData1_o[11]_i_3_n_0 ;
  wire \readData1_o[12]_i_2_n_0 ;
  wire \readData1_o[12]_i_3_n_0 ;
  wire \readData1_o[13]_i_2_n_0 ;
  wire \readData1_o[13]_i_3_n_0 ;
  wire \readData1_o[14]_i_2_n_0 ;
  wire \readData1_o[14]_i_3_n_0 ;
  wire \readData1_o[15]_i_2_n_0 ;
  wire \readData1_o[15]_i_3_n_0 ;
  wire \readData1_o[1]_i_2_n_0 ;
  wire \readData1_o[1]_i_3_n_0 ;
  wire \readData1_o[2]_i_2_n_0 ;
  wire \readData1_o[2]_i_3_n_0 ;
  wire \readData1_o[3]_i_2_n_0 ;
  wire \readData1_o[3]_i_3_n_0 ;
  wire \readData1_o[4]_i_2_n_0 ;
  wire \readData1_o[4]_i_3_n_0 ;
  wire \readData1_o[5]_i_2_n_0 ;
  wire \readData1_o[5]_i_3_n_0 ;
  wire \readData1_o[6]_i_2_n_0 ;
  wire \readData1_o[6]_i_3_n_0 ;
  wire \readData1_o[7]_i_2_n_0 ;
  wire \readData1_o[7]_i_3_n_0 ;
  wire \readData1_o[8]_i_2_n_0 ;
  wire \readData1_o[8]_i_3_n_0 ;
  wire \readData1_o[9]_i_2_n_0 ;
  wire \readData1_o[9]_i_3_n_0 ;
  wire \readData2_o[0]_i_2_n_0 ;
  wire \readData2_o[0]_i_3_n_0 ;
  wire \readData2_o[10]_i_2_n_0 ;
  wire \readData2_o[10]_i_3_n_0 ;
  wire \readData2_o[11]_i_2_n_0 ;
  wire \readData2_o[11]_i_3_n_0 ;
  wire \readData2_o[12]_i_2_n_0 ;
  wire \readData2_o[12]_i_3_n_0 ;
  wire \readData2_o[13]_i_2_n_0 ;
  wire \readData2_o[13]_i_3_n_0 ;
  wire \readData2_o[14]_i_2_n_0 ;
  wire \readData2_o[14]_i_3_n_0 ;
  wire \readData2_o[15]_i_2_n_0 ;
  wire \readData2_o[15]_i_3_n_0 ;
  wire \readData2_o[1]_i_2_n_0 ;
  wire \readData2_o[1]_i_3_n_0 ;
  wire \readData2_o[2]_i_2_n_0 ;
  wire \readData2_o[2]_i_3_n_0 ;
  wire \readData2_o[3]_i_2_n_0 ;
  wire \readData2_o[3]_i_3_n_0 ;
  wire \readData2_o[4]_i_2_n_0 ;
  wire \readData2_o[4]_i_3_n_0 ;
  wire \readData2_o[5]_i_2_n_0 ;
  wire \readData2_o[5]_i_3_n_0 ;
  wire \readData2_o[6]_i_2_n_0 ;
  wire \readData2_o[6]_i_3_n_0 ;
  wire \readData2_o[7]_i_2_n_0 ;
  wire \readData2_o[7]_i_3_n_0 ;
  wire \readData2_o[8]_i_2_n_0 ;
  wire \readData2_o[8]_i_3_n_0 ;
  wire \readData2_o[9]_i_2_n_0 ;
  wire \readData2_o[9]_i_3_n_0 ;
  wire sClk_BUFG;
  wire [3:2]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_12_O_UNCONNECTED ;
  wire [3:2]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_17_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][0]_i_3 
       (.I0(\RegFile_reg[3] [0]),
        .I1(\RegFile_reg[2] [0]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [0]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [0]),
        .O(\RegFile[1][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][0]_i_4 
       (.I0(\RegFile_reg[7] [0]),
        .I1(\RegFile_reg[6] [0]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [0]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [0]),
        .O(\RegFile[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][10]_i_3 
       (.I0(\RegFile_reg[3] [10]),
        .I1(\RegFile_reg[2] [10]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [10]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [10]),
        .O(\RegFile[1][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][10]_i_4 
       (.I0(\RegFile_reg[7] [10]),
        .I1(\RegFile_reg[6] [10]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [10]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [10]),
        .O(\RegFile[1][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][11]_i_3 
       (.I0(\RegFile_reg[3] [11]),
        .I1(\RegFile_reg[2] [11]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [11]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [11]),
        .O(\RegFile[1][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][11]_i_4 
       (.I0(\RegFile_reg[7] [11]),
        .I1(\RegFile_reg[6] [11]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [11]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [11]),
        .O(\RegFile[1][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][12]_i_3 
       (.I0(\RegFile_reg[3] [12]),
        .I1(\RegFile_reg[2] [12]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [12]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [12]),
        .O(\RegFile[1][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][12]_i_4 
       (.I0(\RegFile_reg[7] [12]),
        .I1(\RegFile_reg[6] [12]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [12]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [12]),
        .O(\RegFile[1][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][13]_i_3 
       (.I0(\RegFile_reg[3] [13]),
        .I1(\RegFile_reg[2] [13]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [13]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [13]),
        .O(\RegFile[1][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][13]_i_4 
       (.I0(\RegFile_reg[7] [13]),
        .I1(\RegFile_reg[6] [13]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [13]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [13]),
        .O(\RegFile[1][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][14]_i_3 
       (.I0(\RegFile_reg[3] [14]),
        .I1(\RegFile_reg[2] [14]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [14]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [14]),
        .O(\RegFile[1][14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][14]_i_4 
       (.I0(\RegFile_reg[7] [14]),
        .I1(\RegFile_reg[6] [14]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [14]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [14]),
        .O(\RegFile[1][14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][15]_i_4 
       (.I0(\RegFile_reg[3] [15]),
        .I1(\RegFile_reg[2] [15]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [15]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [15]),
        .O(\RegFile[1][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][15]_i_5 
       (.I0(\RegFile_reg[7] [15]),
        .I1(\RegFile_reg[6] [15]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [15]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [15]),
        .O(\RegFile[1][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][1]_i_3 
       (.I0(\RegFile_reg[3] [1]),
        .I1(\RegFile_reg[2] [1]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [1]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [1]),
        .O(\RegFile[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][1]_i_4 
       (.I0(\RegFile_reg[7] [1]),
        .I1(\RegFile_reg[6] [1]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [1]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [1]),
        .O(\RegFile[1][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][2]_i_3 
       (.I0(\RegFile_reg[3] [2]),
        .I1(\RegFile_reg[2] [2]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [2]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [2]),
        .O(\RegFile[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][2]_i_4 
       (.I0(\RegFile_reg[7] [2]),
        .I1(\RegFile_reg[6] [2]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [2]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [2]),
        .O(\RegFile[1][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][3]_i_3 
       (.I0(\RegFile_reg[3] [3]),
        .I1(\RegFile_reg[2] [3]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [3]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [3]),
        .O(\RegFile[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][3]_i_4 
       (.I0(\RegFile_reg[7] [3]),
        .I1(\RegFile_reg[6] [3]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [3]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [3]),
        .O(\RegFile[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][4]_i_3 
       (.I0(\RegFile_reg[3] [4]),
        .I1(\RegFile_reg[2] [4]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [4]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [4]),
        .O(\RegFile[1][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][4]_i_4 
       (.I0(\RegFile_reg[7] [4]),
        .I1(\RegFile_reg[6] [4]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [4]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [4]),
        .O(\RegFile[1][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][5]_i_3 
       (.I0(\RegFile_reg[3] [5]),
        .I1(\RegFile_reg[2] [5]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [5]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [5]),
        .O(\RegFile[1][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][5]_i_4 
       (.I0(\RegFile_reg[7] [5]),
        .I1(\RegFile_reg[6] [5]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [5]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [5]),
        .O(\RegFile[1][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][6]_i_3 
       (.I0(\RegFile_reg[3] [6]),
        .I1(\RegFile_reg[2] [6]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [6]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [6]),
        .O(\RegFile[1][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][6]_i_4 
       (.I0(\RegFile_reg[7] [6]),
        .I1(\RegFile_reg[6] [6]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [6]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [6]),
        .O(\RegFile[1][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][7]_i_3 
       (.I0(\RegFile_reg[3] [7]),
        .I1(\RegFile_reg[2] [7]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [7]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [7]),
        .O(\RegFile[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][7]_i_4 
       (.I0(\RegFile_reg[7] [7]),
        .I1(\RegFile_reg[6] [7]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [7]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [7]),
        .O(\RegFile[1][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][8]_i_3 
       (.I0(\RegFile_reg[3] [8]),
        .I1(\RegFile_reg[2] [8]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [8]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [8]),
        .O(\RegFile[1][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][8]_i_4 
       (.I0(\RegFile_reg[7] [8]),
        .I1(\RegFile_reg[6] [8]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [8]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [8]),
        .O(\RegFile[1][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][9]_i_3 
       (.I0(\RegFile_reg[3] [9]),
        .I1(\RegFile_reg[2] [9]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[1] [9]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[0] [9]),
        .O(\RegFile[1][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RegFile[1][9]_i_4 
       (.I0(\RegFile_reg[7] [9]),
        .I1(\RegFile_reg[6] [9]),
        .I2(\RegFile_reg[0][15]_0 [1]),
        .I3(\RegFile_reg[5] [9]),
        .I4(\RegFile_reg[0][15]_0 [0]),
        .I5(\RegFile_reg[4] [9]),
        .O(\RegFile[1][9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[0] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[0] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[0] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[0] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[0] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[0] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[0] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[0] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[0] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[0] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[0] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[0] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[0] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[0] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[0] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[0][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[0][0]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[0] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][0] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\RegFile_reg[1] [0]),
        .R(SR));
  MUXF7 \RegFile_reg[1][0]_i_2 
       (.I0(\RegFile[1][0]_i_3_n_0 ),
        .I1(\RegFile[1][0]_i_4_n_0 ),
        .O(RegFile__111[0]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][10] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(\RegFile_reg[1] [10]),
        .R(SR));
  MUXF7 \RegFile_reg[1][10]_i_2 
       (.I0(\RegFile[1][10]_i_3_n_0 ),
        .I1(\RegFile[1][10]_i_4_n_0 ),
        .O(RegFile__111[10]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][11] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(\RegFile_reg[1] [11]),
        .R(SR));
  MUXF7 \RegFile_reg[1][11]_i_2 
       (.I0(\RegFile[1][11]_i_3_n_0 ),
        .I1(\RegFile[1][11]_i_4_n_0 ),
        .O(RegFile__111[11]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][12] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(\RegFile_reg[1] [12]),
        .R(SR));
  MUXF7 \RegFile_reg[1][12]_i_2 
       (.I0(\RegFile[1][12]_i_3_n_0 ),
        .I1(\RegFile[1][12]_i_4_n_0 ),
        .O(RegFile__111[12]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][13] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(\RegFile_reg[1] [13]),
        .R(SR));
  MUXF7 \RegFile_reg[1][13]_i_2 
       (.I0(\RegFile[1][13]_i_3_n_0 ),
        .I1(\RegFile[1][13]_i_4_n_0 ),
        .O(RegFile__111[13]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][14] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(\RegFile_reg[1] [14]),
        .R(SR));
  MUXF7 \RegFile_reg[1][14]_i_2 
       (.I0(\RegFile[1][14]_i_3_n_0 ),
        .I1(\RegFile[1][14]_i_4_n_0 ),
        .O(RegFile__111[14]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][15] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(\RegFile_reg[1] [15]),
        .R(SR));
  MUXF7 \RegFile_reg[1][15]_i_3 
       (.I0(\RegFile[1][15]_i_4_n_0 ),
        .I1(\RegFile[1][15]_i_5_n_0 ),
        .O(RegFile__111[15]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][1] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\RegFile_reg[1] [1]),
        .R(SR));
  MUXF7 \RegFile_reg[1][1]_i_2 
       (.I0(\RegFile[1][1]_i_3_n_0 ),
        .I1(\RegFile[1][1]_i_4_n_0 ),
        .O(RegFile__111[1]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][2] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\RegFile_reg[1] [2]),
        .R(SR));
  MUXF7 \RegFile_reg[1][2]_i_2 
       (.I0(\RegFile[1][2]_i_3_n_0 ),
        .I1(\RegFile[1][2]_i_4_n_0 ),
        .O(RegFile__111[2]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][3] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\RegFile_reg[1] [3]),
        .R(SR));
  MUXF7 \RegFile_reg[1][3]_i_2 
       (.I0(\RegFile[1][3]_i_3_n_0 ),
        .I1(\RegFile[1][3]_i_4_n_0 ),
        .O(RegFile__111[3]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][4] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\RegFile_reg[1] [4]),
        .R(SR));
  MUXF7 \RegFile_reg[1][4]_i_2 
       (.I0(\RegFile[1][4]_i_3_n_0 ),
        .I1(\RegFile[1][4]_i_4_n_0 ),
        .O(RegFile__111[4]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][5] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\RegFile_reg[1] [5]),
        .R(SR));
  MUXF7 \RegFile_reg[1][5]_i_2 
       (.I0(\RegFile[1][5]_i_3_n_0 ),
        .I1(\RegFile[1][5]_i_4_n_0 ),
        .O(RegFile__111[5]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][6] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\RegFile_reg[1] [6]),
        .R(SR));
  MUXF7 \RegFile_reg[1][6]_i_2 
       (.I0(\RegFile[1][6]_i_3_n_0 ),
        .I1(\RegFile[1][6]_i_4_n_0 ),
        .O(RegFile__111[6]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][7] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\RegFile_reg[1] [7]),
        .R(SR));
  MUXF7 \RegFile_reg[1][7]_i_2 
       (.I0(\RegFile[1][7]_i_3_n_0 ),
        .I1(\RegFile[1][7]_i_4_n_0 ),
        .O(RegFile__111[7]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][8] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(\RegFile_reg[1] [8]),
        .R(SR));
  MUXF7 \RegFile_reg[1][8]_i_2 
       (.I0(\RegFile[1][8]_i_3_n_0 ),
        .I1(\RegFile[1][8]_i_4_n_0 ),
        .O(RegFile__111[8]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[1][9] 
       (.C(sClk_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(\RegFile_reg[1] [9]),
        .R(SR));
  MUXF7 \RegFile_reg[1][9]_i_2 
       (.I0(\RegFile[1][9]_i_3_n_0 ),
        .I1(\RegFile[1][9]_i_4_n_0 ),
        .O(RegFile__111[9]),
        .S(\RegFile_reg[0][15]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[2] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[2] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[2] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[2] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[2] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[2] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[2] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[2] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[2] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[2] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[2] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[2] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[2] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[2] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[2] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[2][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[2][15]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[2] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[3] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[3] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[3] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[3] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[3] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[3] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[3] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[3] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[3] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[3] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[3] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[3] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[3] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[3] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[3] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[3][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[3][0]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[3] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[4] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[4] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[4] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[4] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[4] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[4] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[4] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[4] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[4] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[4] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[4] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[4] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[4] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[4] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[4] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[4][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[4][0]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[4] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[5] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[5] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[5] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[5] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[5] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[5] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[5] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[5] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[5] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[5] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[5] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[5] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[5] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[5] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[5] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[5][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[5][0]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[5] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[6] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[6] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[6] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[6] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[6] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[6] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[6] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[6] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[6] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[6] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[6] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[6] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[6] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[6] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[6] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[6][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[6][0]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[6] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][0] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[0]),
        .Q(\RegFile_reg[7] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][10] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[10]),
        .Q(\RegFile_reg[7] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][11] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[11]),
        .Q(\RegFile_reg[7] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][12] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[12]),
        .Q(\RegFile_reg[7] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][13] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[13]),
        .Q(\RegFile_reg[7] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][14] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[14]),
        .Q(\RegFile_reg[7] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][15] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[15]),
        .Q(\RegFile_reg[7] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][1] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[1]),
        .Q(\RegFile_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][2] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[2]),
        .Q(\RegFile_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][3] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[3]),
        .Q(\RegFile_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][4] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[4]),
        .Q(\RegFile_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][5] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[5]),
        .Q(\RegFile_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][6] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[6]),
        .Q(\RegFile_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][7] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[7]),
        .Q(\RegFile_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][8] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[8]),
        .Q(\RegFile_reg[7] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RegFile_reg[7][9] 
       (.C(sClk_BUFG),
        .CE(\RegFile_reg[7][15]_0 ),
        .D(D[9]),
        .Q(\RegFile_reg[7] [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_11 
       (.I0(CO),
        .I1(\genblk3_0.bram18_single_bl.bram18_single_bl ),
        .I2(Q[7]),
        .I3(data1),
        .I4(Q[6]),
        .I5(data0),
        .O(\inst_o_reg[15] ));
  CARRY4 \genblk3_0.bram18_single_bl.bram18_single_bl_i_12 
       (.CI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_0 ),
        .CO({\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_12_CO_UNCONNECTED [3:2],data1,\genblk3_0.bram18_single_bl.bram18_single_bl_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_12_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\genblk3_0.bram18_single_bl.bram18_single_bl_i_15__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_16__0_n_0 }));
  CARRY4 \genblk3_0.bram18_single_bl.bram18_single_bl_i_13 
       (.CI(\genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_0 ),
        .CO({\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_13_CO_UNCONNECTED [3:2],data0,\genblk3_0.bram18_single_bl.bram18_single_bl_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\genblk3_0.bram18_single_bl.bram18_single_bl_i_18__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_19__0_n_0 }));
  CARRY4 \genblk3_0.bram18_single_bl.bram18_single_bl_i_14 
       (.CI(1'b0),
        .CO({\genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_1 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_2 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_14_O_UNCONNECTED [3:0]),
        .S({\genblk3_0.bram18_single_bl.bram18_single_bl_i_20__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_21__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_22__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_23__0_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_15__0 
       (.I0(\inst_o_reg[10]_16 ),
        .I1(\inst_o_reg[13]_14 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_16__0 
       (.I0(\inst_o_reg[10]_14 ),
        .I1(\inst_o_reg[13]_12 ),
        .I2(\inst_o_reg[13]_11 ),
        .I3(\inst_o_reg[10]_13 ),
        .I4(\inst_o_reg[10]_15 ),
        .I5(\inst_o_reg[13]_13 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_16__0_n_0 ));
  CARRY4 \genblk3_0.bram18_single_bl.bram18_single_bl_i_17 
       (.CI(1'b0),
        .CO({\genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_1 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_2 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_17_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk3_0.bram18_single_bl.bram18_single_bl_i_17_O_UNCONNECTED [3:0]),
        .S({\genblk3_0.bram18_single_bl.bram18_single_bl_i_24__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_25__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_26__0_n_0 ,\genblk3_0.bram18_single_bl.bram18_single_bl_i_27__0_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_18__0 
       (.I0(\inst_o_reg[10]_16 ),
        .I1(\inst_o_reg[13]_14 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_19__0 
       (.I0(\inst_o_reg[10]_14 ),
        .I1(\inst_o_reg[13]_12 ),
        .I2(\inst_o_reg[13]_11 ),
        .I3(\inst_o_reg[10]_13 ),
        .I4(\inst_o_reg[10]_15 ),
        .I5(\inst_o_reg[13]_13 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_20__0 
       (.I0(\inst_o_reg[10]_9 ),
        .I1(\inst_o_reg[13]_8 ),
        .I2(\inst_o_reg[13]_9 ),
        .I3(\inst_o_reg[10]_11 ),
        .I4(\inst_o_reg[13]_10 ),
        .I5(\inst_o_reg[10]_12 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_21__0 
       (.I0(\inst_o_reg[10]_6 ),
        .I1(\inst_o_reg[13]_6 ),
        .I2(\inst_o_reg[13]_5 ),
        .I3(\inst_o_reg[10]_5 ),
        .I4(\inst_o_reg[10]_8 ),
        .I5(\inst_o_reg[13]_7 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_22__0 
       (.I0(\inst_o_reg[10]_2 ),
        .I1(\inst_o_reg[13]_2 ),
        .I2(\inst_o_reg[13]_3 ),
        .I3(\inst_o_reg[10]_3 ),
        .I4(\inst_o_reg[13]_4 ),
        .I5(\inst_o_reg[10]_4 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_23__0 
       (.I0(\inst_o_reg[10]_0 ),
        .I1(\inst_o_reg[13]_0 ),
        .I2(\inst_o_reg[13] ),
        .I3(\inst_o_reg[10] ),
        .I4(\inst_o_reg[10]_1 ),
        .I5(\inst_o_reg[13]_1 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_24__0 
       (.I0(\inst_o_reg[10]_9 ),
        .I1(\inst_o_reg[13]_8 ),
        .I2(\inst_o_reg[13]_9 ),
        .I3(\inst_o_reg[10]_11 ),
        .I4(\inst_o_reg[13]_10 ),
        .I5(\inst_o_reg[10]_12 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_25__0 
       (.I0(\inst_o_reg[10]_6 ),
        .I1(\inst_o_reg[13]_6 ),
        .I2(\inst_o_reg[13]_5 ),
        .I3(\inst_o_reg[10]_5 ),
        .I4(\inst_o_reg[10]_8 ),
        .I5(\inst_o_reg[13]_7 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_26__0 
       (.I0(\inst_o_reg[10]_2 ),
        .I1(\inst_o_reg[13]_2 ),
        .I2(\inst_o_reg[13]_3 ),
        .I3(\inst_o_reg[10]_3 ),
        .I4(\inst_o_reg[13]_4 ),
        .I5(\inst_o_reg[10]_4 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk3_0.bram18_single_bl.bram18_single_bl_i_27__0 
       (.I0(\inst_o_reg[10]_0 ),
        .I1(\inst_o_reg[13]_0 ),
        .I2(\inst_o_reg[13] ),
        .I3(\inst_o_reg[10] ),
        .I4(\inst_o_reg[10]_1 ),
        .I5(\inst_o_reg[13]_1 ),
        .O(\genblk3_0.bram18_single_bl.bram18_single_bl_i_27__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(\inst_o_reg[10]_15 ),
        .I1(\inst_o_reg[13]_13 ),
        .I2(\inst_o_reg[13]_14 ),
        .I3(\inst_o_reg[10]_16 ),
        .O(\inst_o_reg[10]_10 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__0
       (.I0(\inst_o_reg[13]_13 ),
        .I1(\inst_o_reg[10]_15 ),
        .I2(\inst_o_reg[10]_16 ),
        .I3(\inst_o_reg[13]_14 ),
        .O(\inst_o_reg[13]_16 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(\inst_o_reg[10]_13 ),
        .I1(\inst_o_reg[13]_11 ),
        .I2(\inst_o_reg[13]_12 ),
        .I3(\inst_o_reg[10]_14 ),
        .O(\inst_o_reg[10]_10 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__0
       (.I0(\inst_o_reg[13]_11 ),
        .I1(\inst_o_reg[10]_13 ),
        .I2(\inst_o_reg[10]_14 ),
        .I3(\inst_o_reg[13]_12 ),
        .O(\inst_o_reg[13]_16 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(\inst_o_reg[10]_11 ),
        .I1(\inst_o_reg[13]_9 ),
        .I2(\inst_o_reg[13]_10 ),
        .I3(\inst_o_reg[10]_12 ),
        .O(\inst_o_reg[10]_10 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__0
       (.I0(\inst_o_reg[13]_9 ),
        .I1(\inst_o_reg[10]_11 ),
        .I2(\inst_o_reg[10]_12 ),
        .I3(\inst_o_reg[13]_10 ),
        .O(\inst_o_reg[13]_16 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(\inst_o_reg[10]_8 ),
        .I1(\inst_o_reg[13]_7 ),
        .I2(\inst_o_reg[13]_8 ),
        .I3(\inst_o_reg[10]_9 ),
        .O(\inst_o_reg[10]_10 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(\inst_o_reg[13]_7 ),
        .I1(\inst_o_reg[10]_8 ),
        .I2(\inst_o_reg[10]_9 ),
        .I3(\inst_o_reg[13]_8 ),
        .O(\inst_o_reg[13]_16 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\inst_o_reg[10]_15 ),
        .I1(\inst_o_reg[13]_13 ),
        .I2(\inst_o_reg[10]_16 ),
        .I3(\inst_o_reg[13]_14 ),
        .O(\inst_o_reg[10]_7 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__1
       (.I0(\inst_o_reg[10]_16 ),
        .I1(\inst_o_reg[13]_14 ),
        .I2(\inst_o_reg[13]_13 ),
        .I3(\inst_o_reg[10]_15 ),
        .O(\inst_o_reg[10]_18 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\inst_o_reg[10]_13 ),
        .I1(\inst_o_reg[13]_11 ),
        .I2(\inst_o_reg[10]_14 ),
        .I3(\inst_o_reg[13]_12 ),
        .O(\inst_o_reg[10]_7 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__1
       (.I0(\inst_o_reg[10]_14 ),
        .I1(\inst_o_reg[13]_12 ),
        .I2(\inst_o_reg[13]_11 ),
        .I3(\inst_o_reg[10]_13 ),
        .O(\inst_o_reg[10]_18 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\inst_o_reg[10]_11 ),
        .I1(\inst_o_reg[13]_9 ),
        .I2(\inst_o_reg[10]_12 ),
        .I3(\inst_o_reg[13]_10 ),
        .O(\inst_o_reg[10]_7 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(\inst_o_reg[13]_9 ),
        .I1(\inst_o_reg[10]_11 ),
        .I2(\inst_o_reg[13]_10 ),
        .I3(\inst_o_reg[10]_12 ),
        .O(\inst_o_reg[10]_18 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\inst_o_reg[10]_8 ),
        .I1(\inst_o_reg[13]_7 ),
        .I2(\inst_o_reg[10]_9 ),
        .I3(\inst_o_reg[13]_8 ),
        .O(\inst_o_reg[10]_7 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__1
       (.I0(\inst_o_reg[10]_9 ),
        .I1(\inst_o_reg[13]_8 ),
        .I2(\inst_o_reg[13]_7 ),
        .I3(\inst_o_reg[10]_8 ),
        .O(\inst_o_reg[10]_18 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\inst_o_reg[10]_5 ),
        .I1(\inst_o_reg[13]_5 ),
        .I2(\inst_o_reg[13]_6 ),
        .I3(\inst_o_reg[10]_6 ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(\inst_o_reg[13]_5 ),
        .I1(\inst_o_reg[10]_5 ),
        .I2(\inst_o_reg[10]_6 ),
        .I3(\inst_o_reg[13]_6 ),
        .O(\inst_o_reg[13]_15 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(\inst_o_reg[10]_3 ),
        .I1(\inst_o_reg[13]_3 ),
        .I2(\inst_o_reg[13]_4 ),
        .I3(\inst_o_reg[10]_4 ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(\inst_o_reg[13]_3 ),
        .I1(\inst_o_reg[10]_3 ),
        .I2(\inst_o_reg[10]_4 ),
        .I3(\inst_o_reg[13]_4 ),
        .O(\inst_o_reg[13]_15 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(\inst_o_reg[10]_1 ),
        .I1(\inst_o_reg[13]_1 ),
        .I2(\inst_o_reg[13]_2 ),
        .I3(\inst_o_reg[10]_2 ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(\inst_o_reg[13]_1 ),
        .I1(\inst_o_reg[10]_1 ),
        .I2(\inst_o_reg[10]_2 ),
        .I3(\inst_o_reg[13]_2 ),
        .O(\inst_o_reg[13]_15 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(\inst_o_reg[10] ),
        .I1(\inst_o_reg[13] ),
        .I2(\inst_o_reg[13]_0 ),
        .I3(\inst_o_reg[10]_0 ),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(\inst_o_reg[13] ),
        .I1(\inst_o_reg[10] ),
        .I2(\inst_o_reg[10]_0 ),
        .I3(\inst_o_reg[13]_0 ),
        .O(\inst_o_reg[13]_15 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\inst_o_reg[10]_5 ),
        .I1(\inst_o_reg[13]_5 ),
        .I2(\inst_o_reg[10]_6 ),
        .I3(\inst_o_reg[13]_6 ),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(\inst_o_reg[10]_6 ),
        .I1(\inst_o_reg[13]_6 ),
        .I2(\inst_o_reg[13]_5 ),
        .I3(\inst_o_reg[10]_5 ),
        .O(\inst_o_reg[10]_17 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\inst_o_reg[10]_3 ),
        .I1(\inst_o_reg[13]_3 ),
        .I2(\inst_o_reg[10]_4 ),
        .I3(\inst_o_reg[13]_4 ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\inst_o_reg[13]_3 ),
        .I1(\inst_o_reg[10]_3 ),
        .I2(\inst_o_reg[13]_4 ),
        .I3(\inst_o_reg[10]_4 ),
        .O(\inst_o_reg[10]_17 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\inst_o_reg[10]_1 ),
        .I1(\inst_o_reg[13]_1 ),
        .I2(\inst_o_reg[10]_2 ),
        .I3(\inst_o_reg[13]_2 ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(\inst_o_reg[10]_2 ),
        .I1(\inst_o_reg[13]_2 ),
        .I2(\inst_o_reg[13]_1 ),
        .I3(\inst_o_reg[10]_1 ),
        .O(\inst_o_reg[10]_17 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\inst_o_reg[10] ),
        .I1(\inst_o_reg[13] ),
        .I2(\inst_o_reg[10]_0 ),
        .I3(\inst_o_reg[13]_0 ),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(\inst_o_reg[10]_0 ),
        .I1(\inst_o_reg[13]_0 ),
        .I2(\inst_o_reg[13] ),
        .I3(\inst_o_reg[10] ),
        .O(\inst_o_reg[10]_17 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[0]_i_2 
       (.I0(\RegFile_reg[3] [0]),
        .I1(\RegFile_reg[2] [0]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [0]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [0]),
        .O(\readData1_o[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[0]_i_3 
       (.I0(\RegFile_reg[7] [0]),
        .I1(\RegFile_reg[6] [0]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [0]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [0]),
        .O(\readData1_o[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[10]_i_2 
       (.I0(\RegFile_reg[3] [10]),
        .I1(\RegFile_reg[2] [10]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [10]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [10]),
        .O(\readData1_o[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[10]_i_3 
       (.I0(\RegFile_reg[7] [10]),
        .I1(\RegFile_reg[6] [10]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [10]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [10]),
        .O(\readData1_o[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[11]_i_2 
       (.I0(\RegFile_reg[3] [11]),
        .I1(\RegFile_reg[2] [11]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [11]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [11]),
        .O(\readData1_o[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[11]_i_3 
       (.I0(\RegFile_reg[7] [11]),
        .I1(\RegFile_reg[6] [11]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [11]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [11]),
        .O(\readData1_o[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[12]_i_2 
       (.I0(\RegFile_reg[3] [12]),
        .I1(\RegFile_reg[2] [12]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [12]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [12]),
        .O(\readData1_o[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[12]_i_3 
       (.I0(\RegFile_reg[7] [12]),
        .I1(\RegFile_reg[6] [12]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [12]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [12]),
        .O(\readData1_o[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[13]_i_2 
       (.I0(\RegFile_reg[3] [13]),
        .I1(\RegFile_reg[2] [13]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [13]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [13]),
        .O(\readData1_o[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[13]_i_3 
       (.I0(\RegFile_reg[7] [13]),
        .I1(\RegFile_reg[6] [13]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [13]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [13]),
        .O(\readData1_o[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[14]_i_2 
       (.I0(\RegFile_reg[3] [14]),
        .I1(\RegFile_reg[2] [14]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [14]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [14]),
        .O(\readData1_o[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[14]_i_3 
       (.I0(\RegFile_reg[7] [14]),
        .I1(\RegFile_reg[6] [14]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [14]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [14]),
        .O(\readData1_o[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[15]_i_2 
       (.I0(\RegFile_reg[3] [15]),
        .I1(\RegFile_reg[2] [15]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [15]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [15]),
        .O(\readData1_o[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[15]_i_3 
       (.I0(\RegFile_reg[7] [15]),
        .I1(\RegFile_reg[6] [15]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [15]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [15]),
        .O(\readData1_o[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[1]_i_2 
       (.I0(\RegFile_reg[3] [1]),
        .I1(\RegFile_reg[2] [1]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [1]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [1]),
        .O(\readData1_o[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[1]_i_3 
       (.I0(\RegFile_reg[7] [1]),
        .I1(\RegFile_reg[6] [1]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [1]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [1]),
        .O(\readData1_o[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[2]_i_2 
       (.I0(\RegFile_reg[3] [2]),
        .I1(\RegFile_reg[2] [2]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [2]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [2]),
        .O(\readData1_o[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[2]_i_3 
       (.I0(\RegFile_reg[7] [2]),
        .I1(\RegFile_reg[6] [2]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [2]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [2]),
        .O(\readData1_o[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[3]_i_2 
       (.I0(\RegFile_reg[3] [3]),
        .I1(\RegFile_reg[2] [3]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [3]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [3]),
        .O(\readData1_o[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[3]_i_3 
       (.I0(\RegFile_reg[7] [3]),
        .I1(\RegFile_reg[6] [3]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [3]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [3]),
        .O(\readData1_o[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[4]_i_2 
       (.I0(\RegFile_reg[3] [4]),
        .I1(\RegFile_reg[2] [4]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [4]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [4]),
        .O(\readData1_o[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[4]_i_3 
       (.I0(\RegFile_reg[7] [4]),
        .I1(\RegFile_reg[6] [4]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [4]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [4]),
        .O(\readData1_o[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[5]_i_2 
       (.I0(\RegFile_reg[3] [5]),
        .I1(\RegFile_reg[2] [5]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [5]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [5]),
        .O(\readData1_o[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[5]_i_3 
       (.I0(\RegFile_reg[7] [5]),
        .I1(\RegFile_reg[6] [5]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [5]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [5]),
        .O(\readData1_o[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[6]_i_2 
       (.I0(\RegFile_reg[3] [6]),
        .I1(\RegFile_reg[2] [6]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [6]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [6]),
        .O(\readData1_o[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[6]_i_3 
       (.I0(\RegFile_reg[7] [6]),
        .I1(\RegFile_reg[6] [6]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [6]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [6]),
        .O(\readData1_o[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[7]_i_2 
       (.I0(\RegFile_reg[3] [7]),
        .I1(\RegFile_reg[2] [7]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [7]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [7]),
        .O(\readData1_o[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[7]_i_3 
       (.I0(\RegFile_reg[7] [7]),
        .I1(\RegFile_reg[6] [7]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [7]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [7]),
        .O(\readData1_o[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[8]_i_2 
       (.I0(\RegFile_reg[3] [8]),
        .I1(\RegFile_reg[2] [8]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [8]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [8]),
        .O(\readData1_o[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[8]_i_3 
       (.I0(\RegFile_reg[7] [8]),
        .I1(\RegFile_reg[6] [8]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [8]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [8]),
        .O(\readData1_o[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[9]_i_2 
       (.I0(\RegFile_reg[3] [9]),
        .I1(\RegFile_reg[2] [9]),
        .I2(Q[4]),
        .I3(\RegFile_reg[1] [9]),
        .I4(Q[3]),
        .I5(\RegFile_reg[0] [9]),
        .O(\readData1_o[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData1_o[9]_i_3 
       (.I0(\RegFile_reg[7] [9]),
        .I1(\RegFile_reg[6] [9]),
        .I2(Q[4]),
        .I3(\RegFile_reg[5] [9]),
        .I4(Q[3]),
        .I5(\RegFile_reg[4] [9]),
        .O(\readData1_o[9]_i_3_n_0 ));
  MUXF7 \readData1_o_reg[0]_i_1 
       (.I0(\readData1_o[0]_i_2_n_0 ),
        .I1(\readData1_o[0]_i_3_n_0 ),
        .O(\inst_o_reg[13] ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[10]_i_1 
       (.I0(\readData1_o[10]_i_2_n_0 ),
        .I1(\readData1_o[10]_i_3_n_0 ),
        .O(\inst_o_reg[13]_9 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[11]_i_1 
       (.I0(\readData1_o[11]_i_2_n_0 ),
        .I1(\readData1_o[11]_i_3_n_0 ),
        .O(\inst_o_reg[13]_10 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[12]_i_1 
       (.I0(\readData1_o[12]_i_2_n_0 ),
        .I1(\readData1_o[12]_i_3_n_0 ),
        .O(\inst_o_reg[13]_11 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[13]_i_1 
       (.I0(\readData1_o[13]_i_2_n_0 ),
        .I1(\readData1_o[13]_i_3_n_0 ),
        .O(\inst_o_reg[13]_12 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[14]_i_1 
       (.I0(\readData1_o[14]_i_2_n_0 ),
        .I1(\readData1_o[14]_i_3_n_0 ),
        .O(\inst_o_reg[13]_13 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[15]_i_1 
       (.I0(\readData1_o[15]_i_2_n_0 ),
        .I1(\readData1_o[15]_i_3_n_0 ),
        .O(\inst_o_reg[13]_14 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[1]_i_1 
       (.I0(\readData1_o[1]_i_2_n_0 ),
        .I1(\readData1_o[1]_i_3_n_0 ),
        .O(\inst_o_reg[13]_0 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[2]_i_1 
       (.I0(\readData1_o[2]_i_2_n_0 ),
        .I1(\readData1_o[2]_i_3_n_0 ),
        .O(\inst_o_reg[13]_1 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[3]_i_1 
       (.I0(\readData1_o[3]_i_2_n_0 ),
        .I1(\readData1_o[3]_i_3_n_0 ),
        .O(\inst_o_reg[13]_2 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[4]_i_1 
       (.I0(\readData1_o[4]_i_2_n_0 ),
        .I1(\readData1_o[4]_i_3_n_0 ),
        .O(\inst_o_reg[13]_3 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[5]_i_1 
       (.I0(\readData1_o[5]_i_2_n_0 ),
        .I1(\readData1_o[5]_i_3_n_0 ),
        .O(\inst_o_reg[13]_4 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[6]_i_1 
       (.I0(\readData1_o[6]_i_2_n_0 ),
        .I1(\readData1_o[6]_i_3_n_0 ),
        .O(\inst_o_reg[13]_5 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[7]_i_1 
       (.I0(\readData1_o[7]_i_2_n_0 ),
        .I1(\readData1_o[7]_i_3_n_0 ),
        .O(\inst_o_reg[13]_6 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[8]_i_1 
       (.I0(\readData1_o[8]_i_2_n_0 ),
        .I1(\readData1_o[8]_i_3_n_0 ),
        .O(\inst_o_reg[13]_7 ),
        .S(Q[5]));
  MUXF7 \readData1_o_reg[9]_i_1 
       (.I0(\readData1_o[9]_i_2_n_0 ),
        .I1(\readData1_o[9]_i_3_n_0 ),
        .O(\inst_o_reg[13]_8 ),
        .S(Q[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[0]_i_2 
       (.I0(\RegFile_reg[3] [0]),
        .I1(\RegFile_reg[2] [0]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [0]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [0]),
        .O(\readData2_o[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[0]_i_3 
       (.I0(\RegFile_reg[7] [0]),
        .I1(\RegFile_reg[6] [0]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [0]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [0]),
        .O(\readData2_o[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[10]_i_2 
       (.I0(\RegFile_reg[3] [10]),
        .I1(\RegFile_reg[2] [10]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [10]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [10]),
        .O(\readData2_o[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[10]_i_3 
       (.I0(\RegFile_reg[7] [10]),
        .I1(\RegFile_reg[6] [10]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [10]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [10]),
        .O(\readData2_o[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[11]_i_2 
       (.I0(\RegFile_reg[3] [11]),
        .I1(\RegFile_reg[2] [11]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [11]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [11]),
        .O(\readData2_o[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[11]_i_3 
       (.I0(\RegFile_reg[7] [11]),
        .I1(\RegFile_reg[6] [11]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [11]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [11]),
        .O(\readData2_o[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[12]_i_2 
       (.I0(\RegFile_reg[3] [12]),
        .I1(\RegFile_reg[2] [12]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [12]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [12]),
        .O(\readData2_o[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[12]_i_3 
       (.I0(\RegFile_reg[7] [12]),
        .I1(\RegFile_reg[6] [12]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [12]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [12]),
        .O(\readData2_o[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[13]_i_2 
       (.I0(\RegFile_reg[3] [13]),
        .I1(\RegFile_reg[2] [13]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [13]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [13]),
        .O(\readData2_o[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[13]_i_3 
       (.I0(\RegFile_reg[7] [13]),
        .I1(\RegFile_reg[6] [13]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [13]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [13]),
        .O(\readData2_o[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[14]_i_2 
       (.I0(\RegFile_reg[3] [14]),
        .I1(\RegFile_reg[2] [14]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [14]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [14]),
        .O(\readData2_o[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[14]_i_3 
       (.I0(\RegFile_reg[7] [14]),
        .I1(\RegFile_reg[6] [14]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [14]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [14]),
        .O(\readData2_o[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[15]_i_2 
       (.I0(\RegFile_reg[3] [15]),
        .I1(\RegFile_reg[2] [15]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [15]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [15]),
        .O(\readData2_o[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[15]_i_3 
       (.I0(\RegFile_reg[7] [15]),
        .I1(\RegFile_reg[6] [15]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [15]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [15]),
        .O(\readData2_o[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[1]_i_2 
       (.I0(\RegFile_reg[3] [1]),
        .I1(\RegFile_reg[2] [1]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [1]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [1]),
        .O(\readData2_o[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[1]_i_3 
       (.I0(\RegFile_reg[7] [1]),
        .I1(\RegFile_reg[6] [1]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [1]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [1]),
        .O(\readData2_o[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[2]_i_2 
       (.I0(\RegFile_reg[3] [2]),
        .I1(\RegFile_reg[2] [2]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [2]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [2]),
        .O(\readData2_o[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[2]_i_3 
       (.I0(\RegFile_reg[7] [2]),
        .I1(\RegFile_reg[6] [2]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [2]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [2]),
        .O(\readData2_o[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[3]_i_2 
       (.I0(\RegFile_reg[3] [3]),
        .I1(\RegFile_reg[2] [3]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [3]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [3]),
        .O(\readData2_o[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[3]_i_3 
       (.I0(\RegFile_reg[7] [3]),
        .I1(\RegFile_reg[6] [3]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [3]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [3]),
        .O(\readData2_o[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[4]_i_2 
       (.I0(\RegFile_reg[3] [4]),
        .I1(\RegFile_reg[2] [4]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [4]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [4]),
        .O(\readData2_o[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[4]_i_3 
       (.I0(\RegFile_reg[7] [4]),
        .I1(\RegFile_reg[6] [4]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [4]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [4]),
        .O(\readData2_o[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[5]_i_2 
       (.I0(\RegFile_reg[3] [5]),
        .I1(\RegFile_reg[2] [5]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [5]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [5]),
        .O(\readData2_o[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[5]_i_3 
       (.I0(\RegFile_reg[7] [5]),
        .I1(\RegFile_reg[6] [5]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [5]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [5]),
        .O(\readData2_o[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[6]_i_2 
       (.I0(\RegFile_reg[3] [6]),
        .I1(\RegFile_reg[2] [6]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [6]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [6]),
        .O(\readData2_o[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[6]_i_3 
       (.I0(\RegFile_reg[7] [6]),
        .I1(\RegFile_reg[6] [6]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [6]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [6]),
        .O(\readData2_o[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[7]_i_2 
       (.I0(\RegFile_reg[3] [7]),
        .I1(\RegFile_reg[2] [7]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [7]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [7]),
        .O(\readData2_o[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[7]_i_3 
       (.I0(\RegFile_reg[7] [7]),
        .I1(\RegFile_reg[6] [7]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [7]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [7]),
        .O(\readData2_o[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[8]_i_2 
       (.I0(\RegFile_reg[3] [8]),
        .I1(\RegFile_reg[2] [8]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [8]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [8]),
        .O(\readData2_o[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[8]_i_3 
       (.I0(\RegFile_reg[7] [8]),
        .I1(\RegFile_reg[6] [8]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [8]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [8]),
        .O(\readData2_o[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[9]_i_2 
       (.I0(\RegFile_reg[3] [9]),
        .I1(\RegFile_reg[2] [9]),
        .I2(Q[1]),
        .I3(\RegFile_reg[1] [9]),
        .I4(Q[0]),
        .I5(\RegFile_reg[0] [9]),
        .O(\readData2_o[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \readData2_o[9]_i_3 
       (.I0(\RegFile_reg[7] [9]),
        .I1(\RegFile_reg[6] [9]),
        .I2(Q[1]),
        .I3(\RegFile_reg[5] [9]),
        .I4(Q[0]),
        .I5(\RegFile_reg[4] [9]),
        .O(\readData2_o[9]_i_3_n_0 ));
  MUXF7 \readData2_o_reg[0]_i_1 
       (.I0(\readData2_o[0]_i_2_n_0 ),
        .I1(\readData2_o[0]_i_3_n_0 ),
        .O(\inst_o_reg[10] ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[10]_i_1 
       (.I0(\readData2_o[10]_i_2_n_0 ),
        .I1(\readData2_o[10]_i_3_n_0 ),
        .O(\inst_o_reg[10]_11 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[11]_i_1 
       (.I0(\readData2_o[11]_i_2_n_0 ),
        .I1(\readData2_o[11]_i_3_n_0 ),
        .O(\inst_o_reg[10]_12 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[12]_i_1 
       (.I0(\readData2_o[12]_i_2_n_0 ),
        .I1(\readData2_o[12]_i_3_n_0 ),
        .O(\inst_o_reg[10]_13 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[13]_i_1 
       (.I0(\readData2_o[13]_i_2_n_0 ),
        .I1(\readData2_o[13]_i_3_n_0 ),
        .O(\inst_o_reg[10]_14 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[14]_i_1 
       (.I0(\readData2_o[14]_i_2_n_0 ),
        .I1(\readData2_o[14]_i_3_n_0 ),
        .O(\inst_o_reg[10]_15 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[15]_i_1 
       (.I0(\readData2_o[15]_i_2_n_0 ),
        .I1(\readData2_o[15]_i_3_n_0 ),
        .O(\inst_o_reg[10]_16 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[1]_i_1 
       (.I0(\readData2_o[1]_i_2_n_0 ),
        .I1(\readData2_o[1]_i_3_n_0 ),
        .O(\inst_o_reg[10]_0 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[2]_i_1 
       (.I0(\readData2_o[2]_i_2_n_0 ),
        .I1(\readData2_o[2]_i_3_n_0 ),
        .O(\inst_o_reg[10]_1 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[3]_i_1 
       (.I0(\readData2_o[3]_i_2_n_0 ),
        .I1(\readData2_o[3]_i_3_n_0 ),
        .O(\inst_o_reg[10]_2 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[4]_i_1 
       (.I0(\readData2_o[4]_i_2_n_0 ),
        .I1(\readData2_o[4]_i_3_n_0 ),
        .O(\inst_o_reg[10]_3 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[5]_i_1 
       (.I0(\readData2_o[5]_i_2_n_0 ),
        .I1(\readData2_o[5]_i_3_n_0 ),
        .O(\inst_o_reg[10]_4 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[6]_i_1 
       (.I0(\readData2_o[6]_i_2_n_0 ),
        .I1(\readData2_o[6]_i_3_n_0 ),
        .O(\inst_o_reg[10]_5 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[7]_i_1 
       (.I0(\readData2_o[7]_i_2_n_0 ),
        .I1(\readData2_o[7]_i_3_n_0 ),
        .O(\inst_o_reg[10]_6 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[8]_i_1 
       (.I0(\readData2_o[8]_i_2_n_0 ),
        .I1(\readData2_o[8]_i_3_n_0 ),
        .O(\inst_o_reg[10]_8 ),
        .S(Q[2]));
  MUXF7 \readData2_o_reg[9]_i_1 
       (.I0(\readData2_o[9]_i_2_n_0 ),
        .I1(\readData2_o[9]_i_3_n_0 ),
        .O(\inst_o_reg[10]_9 ),
        .S(Q[2]));
endmodule

module clkgen
   (sClk,
    clk_IBUF_BUFG,
    sClk_BUFG);
  output sClk;
  input clk_IBUF_BUFG;
  input sClk_BUFG;

  wire clk_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire sClk;
  wire sClk_BUFG;
  wire [3:1]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] ,\counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] ,\counter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] ,\counter_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,sClk_BUFG,\counter_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(sClk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] ,\counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] ,\counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module seven_seg
   (seg7_clk,
    anode_L_OBUF,
    SR,
    clk_IBUF_BUFG);
  output [1:0]seg7_clk;
  output [1:0]anode_L_OBUF;
  input [0:0]SR;
  input clk_IBUF_BUFG;

  wire [0:0]SR;
  wire [1:0]anode_L_OBUF;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [1:0]seg7_clk;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \anode_L_OBUF[0]_inst_i_1 
       (.I0(seg7_clk[0]),
        .I1(seg7_clk[1]),
        .O(anode_L_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anode_L_OBUF[1]_inst_i_1 
       (.I0(seg7_clk[1]),
        .I1(seg7_clk[0]),
        .O(anode_L_OBUF[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(SR));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(SR));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(SR));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({seg7_clk,\count_reg_n_0_[17] ,\count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(\count_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(seg7_clk[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(seg7_clk[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(SR));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module uP16_BASYS3_top
   (clk,
    rst,
    sel,
    I_Status,
    seg_L,
    anode_L);
  input clk;
  input rst;
  input sel;
  output [3:0]I_Status;
  output [6:0]seg_L;
  output [3:0]anode_L;

  wire [3:0]I_Status;
  wire [2:0]I_Status_OBUF;
  wire [3:0]anode_L;
  wire [1:0]anode_L_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;
  wire sClk;
  wire sClk_BUFG;
  wire [1:0]seg7_clk;
  wire [6:0]seg_L;
  wire [6:0]seg_L_OBUF;
  wire sel;
  wire sel_IBUF;

initial begin
 $sdf_annotate("uP16_top_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \I_Status_OBUF[0]_inst 
       (.I(I_Status_OBUF[0]),
        .O(I_Status[0]));
  OBUF \I_Status_OBUF[1]_inst 
       (.I(I_Status_OBUF[1]),
        .O(I_Status[1]));
  OBUF \I_Status_OBUF[2]_inst 
       (.I(I_Status_OBUF[2]),
        .O(I_Status[2]));
  OBUF \I_Status_OBUF[3]_inst 
       (.I(1'b0),
        .O(I_Status[3]));
  uP16_top Imp1
       (.I_Status_OBUF(I_Status_OBUF),
        .SR(rst_IBUF),
        .sClk_BUFG(sClk_BUFG),
        .seg7_clk(seg7_clk),
        .seg_L_OBUF(seg_L_OBUF),
        .sel_IBUF(sel_IBUF));
  clkgen Imp2
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sClk(sClk),
        .sClk_BUFG(sClk_BUFG));
  seven_seg Imp3
       (.SR(rst_IBUF),
        .anode_L_OBUF(anode_L_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .seg7_clk(seg7_clk));
  OBUF \anode_L_OBUF[0]_inst 
       (.I(anode_L_OBUF[0]),
        .O(anode_L[0]));
  OBUF \anode_L_OBUF[1]_inst 
       (.I(anode_L_OBUF[1]),
        .O(anode_L[1]));
  OBUF \anode_L_OBUF[2]_inst 
       (.I(1'b1),
        .O(anode_L[2]));
  OBUF \anode_L_OBUF[3]_inst 
       (.I(1'b1),
        .O(anode_L[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  BUFG sClk_BUFG_inst
       (.I(sClk),
        .O(sClk_BUFG));
  OBUF \seg_L_OBUF[0]_inst 
       (.I(seg_L_OBUF[0]),
        .O(seg_L[0]));
  OBUF \seg_L_OBUF[1]_inst 
       (.I(seg_L_OBUF[1]),
        .O(seg_L[1]));
  OBUF \seg_L_OBUF[2]_inst 
       (.I(seg_L_OBUF[2]),
        .O(seg_L[2]));
  OBUF \seg_L_OBUF[3]_inst 
       (.I(seg_L_OBUF[3]),
        .O(seg_L[3]));
  OBUF \seg_L_OBUF[4]_inst 
       (.I(seg_L_OBUF[4]),
        .O(seg_L[4]));
  OBUF \seg_L_OBUF[5]_inst 
       (.I(seg_L_OBUF[5]),
        .O(seg_L[5]));
  OBUF \seg_L_OBUF[6]_inst 
       (.I(seg_L_OBUF[6]),
        .O(seg_L[6]));
  IBUF sel_IBUF_inst
       (.I(sel),
        .O(sel_IBUF));
endmodule

module uP16_top
   (I_Status_OBUF,
    seg_L_OBUF,
    sClk_BUFG,
    SR,
    sel_IBUF,
    seg7_clk);
  output [2:0]I_Status_OBUF;
  output [6:0]seg_L_OBUF;
  input sClk_BUFG;
  input [0:0]SR;
  input sel_IBUF;
  input [1:0]seg7_clk;

  wire [0:0]ALU_data1;
  wire \EX_1/0 ;
  wire \EX_1/ALUFlag0 ;
  wire [15:0]\EX_1/RegFile__111 ;
  wire [15:0]EX_ALUresult;
  wire [1:1]EX_ALUstatus;
  wire [2:0]EX_RFdest_rd_d;
  wire [3:0]ID_ALUop;
  wire ID_RFwriteEnab;
  wire ID_memEnab;
  wire ID_memEnab_d;
  wire ID_memWriteEnab_d;
  wire [15:0]ID_readData1_d;
  wire ID_sel_ALUsrc1;
  wire [17:0]IF_inst;
  wire [2:0]I_Status_OBUF;
  wire [9:0]PCplus1;
  wire [0:0]SR;
  wire T2_n_0;
  wire T2_n_1;
  wire T2_n_10;
  wire T2_n_11;
  wire T2_n_12;
  wire T2_n_13;
  wire T2_n_14;
  wire T2_n_15;
  wire T2_n_16;
  wire T2_n_2;
  wire T2_n_24;
  wire T2_n_25;
  wire T2_n_26;
  wire T2_n_27;
  wire T2_n_28;
  wire T2_n_29;
  wire T2_n_3;
  wire T2_n_30;
  wire T2_n_31;
  wire T2_n_32;
  wire T2_n_33;
  wire T2_n_34;
  wire T2_n_35;
  wire T2_n_36;
  wire T2_n_37;
  wire T2_n_38;
  wire T2_n_39;
  wire T2_n_4;
  wire T2_n_40;
  wire T2_n_41;
  wire T2_n_42;
  wire T2_n_43;
  wire T2_n_44;
  wire T2_n_45;
  wire T2_n_46;
  wire T2_n_47;
  wire T2_n_48;
  wire T2_n_49;
  wire T2_n_5;
  wire T2_n_50;
  wire T2_n_51;
  wire T2_n_52;
  wire T2_n_6;
  wire T2_n_7;
  wire T2_n_8;
  wire T2_n_9;
  wire T3_n_10;
  wire T3_n_11;
  wire T3_n_12;
  wire T3_n_13;
  wire T3_n_14;
  wire T3_n_15;
  wire T3_n_16;
  wire T3_n_17;
  wire T3_n_18;
  wire T3_n_19;
  wire T3_n_20;
  wire T3_n_21;
  wire T3_n_22;
  wire T3_n_23;
  wire T3_n_24;
  wire T3_n_25;
  wire T3_n_26;
  wire T3_n_27;
  wire T3_n_28;
  wire T3_n_29;
  wire T3_n_30;
  wire T3_n_31;
  wire T3_n_32;
  wire T3_n_33;
  wire T3_n_34;
  wire T3_n_35;
  wire T3_n_36;
  wire T3_n_37;
  wire T3_n_38;
  wire T3_n_39;
  wire T3_n_40;
  wire T3_n_41;
  wire T3_n_58;
  wire T4_n_10;
  wire T4_n_11;
  wire T4_n_12;
  wire T4_n_13;
  wire T4_n_14;
  wire T4_n_15;
  wire T4_n_16;
  wire T4_n_17;
  wire T4_n_19;
  wire T4_n_20;
  wire T4_n_21;
  wire T4_n_22;
  wire T4_n_3;
  wire T4_n_39;
  wire T4_n_4;
  wire T4_n_40;
  wire T4_n_41;
  wire T4_n_42;
  wire T4_n_43;
  wire T4_n_44;
  wire T4_n_45;
  wire T4_n_46;
  wire T4_n_47;
  wire T4_n_48;
  wire T4_n_49;
  wire T4_n_5;
  wire T4_n_50;
  wire T4_n_6;
  wire T4_n_7;
  wire T4_n_8;
  wire T4_n_9;
  wire T5_n_0;
  wire T5_n_1;
  wire T5_n_10;
  wire T5_n_11;
  wire T5_n_12;
  wire T5_n_13;
  wire T5_n_14;
  wire T5_n_15;
  wire T5_n_2;
  wire T5_n_3;
  wire T5_n_4;
  wire T5_n_5;
  wire T5_n_6;
  wire T5_n_7;
  wire T5_n_8;
  wire T5_n_9;
  wire T6_n_19;
  wire T6_n_23;
  wire T6_n_24;
  wire T6_n_25;
  wire T6_n_26;
  wire T6_n_27;
  wire T6_n_28;
  wire T6_n_29;
  wire [2:0]WB_dest_rd_o;
  wire [9:0]currPC_reg;
  wire [9:0]data;
  wire [15:0]memData_out;
  wire [9:0]nextPC;
  wire [15:0]p_1_in;
  wire sClk_BUFG;
  wire [1:0]seg7_clk;
  wire [6:0]seg_L_OBUF;
  wire sel_IBUF;
  wire sel_mem2RF_o;

  IF_stage T1
       (.ADDRARDADDR(nextPC),
        .D(IF_inst),
        .O({T2_n_24,T2_n_25,T2_n_26,T2_n_27}),
        .SR(SR),
        .currPC_reg(currPC_reg),
        .\currPC_reg[7]_0 ({T2_n_28,T2_n_29,T2_n_30,T2_n_31}),
        .\currPC_reg[9]_0 (PCplus1),
        .\currPC_reg[9]_1 ({T2_n_32,T2_n_33}),
        .sClk_BUFG(sClk_BUFG),
        .seg7_clk(seg7_clk),
        .seg_L_OBUF(seg_L_OBUF),
        .sel_IBUF(sel_IBUF));
  IF_ID_PR T2
       (.ADDRARDADDR(nextPC),
        .D(ID_ALUop),
        .DI(T2_n_0),
        .ID_RFwriteEnab(ID_RFwriteEnab),
        .ID_memEnab(ID_memEnab),
        .ID_sel_ALUsrc1(ID_sel_ALUsrc1),
        .O({T2_n_24,T2_n_25,T2_n_26,T2_n_27}),
        .\PCplus1_o_reg[6]_0 ({T2_n_38,T2_n_39,T2_n_40,T2_n_41,T2_n_42,T2_n_43,T2_n_44}),
        .\PCplus1_o_reg[8]_0 ({T2_n_51,T2_n_52}),
        .\PCplus1_o_reg[9]_0 (PCplus1),
        .Q({T2_n_1,T2_n_2,T2_n_3,T2_n_4,T2_n_5,T2_n_6,T2_n_7,T2_n_8,T2_n_9,T2_n_10,T2_n_11,T2_n_12,T2_n_13,T2_n_14,T2_n_15,T2_n_16}),
        .S({T2_n_34,T2_n_35,T2_n_36,T2_n_37}),
        .SR(SR),
        .currPC_reg(currPC_reg),
        .data(data),
        .\genblk3_0.bram18_single_bl.bram18_single_bl (T3_n_58),
        .\inst_o_reg[17]_0 ({T2_n_28,T2_n_29,T2_n_30,T2_n_31}),
        .\inst_o_reg[17]_1 ({T2_n_32,T2_n_33}),
        .\inst_o_reg[17]_2 (T2_n_49),
        .\inst_o_reg[17]_3 (T2_n_50),
        .\inst_o_reg[17]_4 (IF_inst),
        .\inst_o_reg[7]_0 ({T2_n_45,T2_n_46,T2_n_47,T2_n_48}),
        .sClk_BUFG(sClk_BUFG));
  ID_stage T3
       (.D(p_1_in),
        .DI(T2_n_0),
        .E(T6_n_23),
        .Q({T2_n_1,T2_n_2,T2_n_3,T2_n_4,T2_n_5,T2_n_6,T2_n_7,T2_n_8,T2_n_9}),
        .RegFile__111(\EX_1/RegFile__111 ),
        .\RegFile_reg[0][0] (T6_n_19),
        .\RegFile_reg[0][15] (EX_RFdest_rd_d),
        .\RegFile_reg[2][15] (T6_n_28),
        .\RegFile_reg[3][0] (T6_n_24),
        .\RegFile_reg[4][0] (T6_n_25),
        .\RegFile_reg[5][0] (T6_n_26),
        .\RegFile_reg[6][0] (T6_n_27),
        .\RegFile_reg[7][15] (T6_n_29),
        .S({T2_n_34,T2_n_35,T2_n_36,T2_n_37}),
        .SR(SR),
        .data(data),
        .\genblk3_0.bram18_single_bl.bram18_single_bl ({T2_n_38,T2_n_39,T2_n_40,T2_n_41,T2_n_42,T2_n_43,T2_n_44}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_0 ({T2_n_45,T2_n_46,T2_n_47,T2_n_48}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_1 ({T2_n_51,T2_n_52}),
        .\inst_o_reg[10] (T3_n_10),
        .\inst_o_reg[10]_0 (T3_n_12),
        .\inst_o_reg[10]_1 (T3_n_14),
        .\inst_o_reg[10]_10 (T3_n_32),
        .\inst_o_reg[10]_11 (T3_n_34),
        .\inst_o_reg[10]_12 (T3_n_36),
        .\inst_o_reg[10]_13 (T3_n_38),
        .\inst_o_reg[10]_14 (T3_n_40),
        .\inst_o_reg[10]_2 (T3_n_16),
        .\inst_o_reg[10]_3 (T3_n_18),
        .\inst_o_reg[10]_4 (T3_n_20),
        .\inst_o_reg[10]_5 (T3_n_22),
        .\inst_o_reg[10]_6 (T3_n_24),
        .\inst_o_reg[10]_7 (T3_n_26),
        .\inst_o_reg[10]_8 (T3_n_28),
        .\inst_o_reg[10]_9 (T3_n_30),
        .\inst_o_reg[13] (T3_n_11),
        .\inst_o_reg[13]_0 (T3_n_13),
        .\inst_o_reg[13]_1 (T3_n_15),
        .\inst_o_reg[13]_10 (T3_n_33),
        .\inst_o_reg[13]_11 (T3_n_35),
        .\inst_o_reg[13]_12 (T3_n_37),
        .\inst_o_reg[13]_13 (T3_n_39),
        .\inst_o_reg[13]_14 (T3_n_41),
        .\inst_o_reg[13]_2 (T3_n_17),
        .\inst_o_reg[13]_3 (T3_n_19),
        .\inst_o_reg[13]_4 (T3_n_21),
        .\inst_o_reg[13]_5 (T3_n_23),
        .\inst_o_reg[13]_6 (T3_n_25),
        .\inst_o_reg[13]_7 (T3_n_27),
        .\inst_o_reg[13]_8 (T3_n_29),
        .\inst_o_reg[13]_9 (T3_n_31),
        .\inst_o_reg[15] (T3_n_58),
        .sClk_BUFG(sClk_BUFG));
  ID_EX_PR T4
       (.\ALUop_o_reg[0]_0 ({T4_n_7,T4_n_8,T4_n_9,T4_n_10}),
        .\ALUop_o_reg[0]_1 ({T4_n_11,T4_n_12,T4_n_13,T4_n_14}),
        .\ALUop_o_reg[0]_2 ({T4_n_15,T4_n_16,T4_n_17,\EX_1/0 }),
        .\ALUop_o_reg[3]_0 ({EX_ALUstatus,\EX_1/ALUFlag0 }),
        .\ALUop_o_reg[3]_1 (ID_ALUop),
        .\ALUresult_o_reg[11] ({T5_n_8,T5_n_9,T5_n_10,T5_n_11}),
        .\ALUstatus_o_reg[2] ({T5_n_12,T5_n_13,T5_n_14,T5_n_15}),
        .D({T3_n_41,T3_n_39,T3_n_37,T3_n_35,T3_n_33,T3_n_31,T3_n_29,T3_n_27,T3_n_25,T3_n_23,T3_n_21,T3_n_19,T3_n_17,T3_n_15,T3_n_13,T3_n_11}),
        .DI({T4_n_4,T4_n_5,T4_n_6}),
        .EX_ALUresult(EX_ALUresult),
        .ID_RFwriteEnab(ID_RFwriteEnab),
        .ID_memEnab(ID_memEnab),
        .ID_memEnab_d(ID_memEnab_d),
        .ID_sel_ALUsrc1(ID_sel_ALUsrc1),
        .O({T5_n_0,T5_n_1,T5_n_2,T5_n_3}),
        .Q(ID_readData1_d),
        .RFwriteEnab_o_reg_0(T4_n_3),
        .S({T4_n_19,T4_n_20,T4_n_21,T4_n_22}),
        .SR(SR),
        .\WB_dest_rd_o_reg[2]_0 (WB_dest_rd_o),
        .\WB_dest_rd_o_reg[2]_1 ({T2_n_3,T2_n_4,T2_n_5,T2_n_9,T2_n_10,T2_n_11,T2_n_12,T2_n_13,T2_n_14,T2_n_15,T2_n_16}),
        .WEA(ID_memWriteEnab_d),
        .\genblk3_0.bram18_single_bl.bram18_single_bl ({T5_n_4,T5_n_5,T5_n_6,T5_n_7}),
        .memWriteEnab_o_reg_0(T2_n_49),
        .\readData2_o_reg[11]_0 ({T4_n_43,T4_n_44,T4_n_45,T4_n_46}),
        .\readData2_o_reg[15]_0 ({T4_n_47,T4_n_48,T4_n_49,T4_n_50}),
        .\readData2_o_reg[15]_1 ({T3_n_40,T3_n_38,T3_n_36,T3_n_34,T3_n_32,T3_n_30,T3_n_28,T3_n_26,T3_n_24,T3_n_22,T3_n_20,T3_n_18,T3_n_16,T3_n_14,T3_n_12,T3_n_10}),
        .\readData2_o_reg[7]_0 ({T4_n_39,T4_n_40,T4_n_41,T4_n_42}),
        .sClk_BUFG(sClk_BUFG),
        .sel_mem2RF_o(sel_mem2RF_o),
        .sel_mem2RF_o_reg_0(T2_n_50),
        .\signE_8immed_o_reg[0]_0 (ALU_data1));
  EX_stage T5
       (.\ALUop_o_reg[0] ({T5_n_8,T5_n_9,T5_n_10,T5_n_11}),
        .\ALUop_o_reg[0]_0 ({T5_n_12,T5_n_13,T5_n_14,T5_n_15}),
        .\ALUop_o_reg[1] ({T5_n_4,T5_n_5,T5_n_6,T5_n_7}),
        .\ALUresult_o[12]_i_2 ({T4_n_47,T4_n_48,T4_n_49,T4_n_50}),
        .DI({T4_n_4,T4_n_5,T4_n_6}),
        .O({T5_n_0,T5_n_1,T5_n_2,T5_n_3}),
        .S({T4_n_19,T4_n_20,T4_n_21,T4_n_22}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0 ({T4_n_7,T4_n_8,T4_n_9,T4_n_10}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_13__0_0 ({T4_n_43,T4_n_44,T4_n_45,T4_n_46}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_21 ({T4_n_11,T4_n_12,T4_n_13,T4_n_14}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_21_0 ({T4_n_39,T4_n_40,T4_n_41,T4_n_42}),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_29 (ALU_data1),
        .\genblk3_0.bram18_single_bl.bram18_single_bl_i_29_0 ({T4_n_15,T4_n_16,T4_n_17,\EX_1/0 }));
  EX_Mem_PR T6
       (.\ALUstatus_o_reg[1]_0 ({EX_ALUstatus,\EX_1/ALUFlag0 }),
        .D(p_1_in),
        .DOADO(memData_out),
        .E(T6_n_23),
        .EX_ALUresult(EX_ALUresult),
        .I_Status_OBUF(I_Status_OBUF),
        .Q(EX_RFdest_rd_d),
        .\RFdest_rd_o_reg[0]_0 (T6_n_27),
        .\RFdest_rd_o_reg[1]_0 (T6_n_19),
        .\RFdest_rd_o_reg[1]_1 (T6_n_26),
        .\RFdest_rd_o_reg[1]_2 (T6_n_28),
        .\RFdest_rd_o_reg[1]_3 (T6_n_29),
        .\RFdest_rd_o_reg[2]_0 (T6_n_24),
        .\RFdest_rd_o_reg[2]_1 (T6_n_25),
        .\RFdest_rd_o_reg[2]_2 (WB_dest_rd_o),
        .RFwriteEnab_o_reg_0(T4_n_3),
        .RegFile__111(\EX_1/RegFile__111 ),
        .SR(SR),
        .sClk_BUFG(sClk_BUFG),
        .sel_mem2RF_o(sel_mem2RF_o));
  Mem_stage T7
       (.DOADO(memData_out),
        .EX_ALUresult(EX_ALUresult[9:0]),
        .ID_memEnab_d(ID_memEnab_d),
        .Q(ID_readData1_d),
        .WEA(ID_memWriteEnab_d),
        .sClk_BUFG(sClk_BUFG));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
