module $__CC_BRAM_TDP_(...);

parameter INIT = 0;
parameter OPTION_MODE = "20K";

parameter PORT_A_CLK_POL = 1;
parameter PORT_A_RD_USED = 1;
parameter PORT_A_WR_USED = 1;
parameter PORT_A_RD_WIDTH = 1;
parameter PORT_A_WR_WIDTH = 1;
parameter PORT_A_WR_BE_WIDTH = 1;
parameter PORT_A_OPTION_WR_MODE = "NO_CHANGE";

parameter PORT_B_CLK_POL = 1;
parameter PORT_B_RD_USED = 1;
parameter PORT_B_WR_USED = 1;
parameter PORT_B_RD_WIDTH = 1;
parameter PORT_B_WR_WIDTH = 1;
parameter PORT_B_WR_BE_WIDTH = 1;
parameter PORT_B_OPTION_WR_MODE = "NO_CHANGE";

input PORT_A_CLK;
input PORT_A_CLK_EN;
input PORT_A_WR_EN;
input [15:0] PORT_A_ADDR;
input [PORT_A_WR_BE_WIDTH-1:0] PORT_A_WR_BE;
input [PORT_A_WR_WIDTH-1:0] PORT_A_WR_DATA;
output [PORT_A_RD_WIDTH-1:0] PORT_A_RD_DATA;

input PORT_B_CLK;
input PORT_B_CLK_EN;
input PORT_B_WR_EN;
input [15:0] PORT_B_ADDR;
input [PORT_B_WR_BE_WIDTH-1:0] PORT_B_WR_BE;
input [PORT_B_WR_WIDTH-1:0] PORT_B_WR_DATA;
output [PORT_B_RD_WIDTH-1:0] PORT_B_RD_DATA;

generate
	if (OPTION_MODE == "20K") begin
		CC_BRAM_20K #(
			.INIT_00(INIT['h00*320+:320]),
			.INIT_01(INIT['h01*320+:320]),
			.INIT_02(INIT['h02*320+:320]),
			.INIT_03(INIT['h03*320+:320]),
			.INIT_04(INIT['h04*320+:320]),
			.INIT_05(INIT['h05*320+:320]),
			.INIT_06(INIT['h06*320+:320]),
			.INIT_07(INIT['h07*320+:320]),
			.INIT_08(INIT['h08*320+:320]),
			.INIT_09(INIT['h09*320+:320]),
			.INIT_0A(INIT['h0a*320+:320]),
			.INIT_0B(INIT['h0b*320+:320]),
			.INIT_0C(INIT['h0c*320+:320]),
			.INIT_0D(INIT['h0d*320+:320]),
			.INIT_0E(INIT['h0e*320+:320]),
			.INIT_0F(INIT['h0f*320+:320]),
			.INIT_10(INIT['h10*320+:320]),
			.INIT_11(INIT['h11*320+:320]),
			.INIT_12(INIT['h12*320+:320]),
			.INIT_13(INIT['h13*320+:320]),
			.INIT_14(INIT['h14*320+:320]),
			.INIT_15(INIT['h15*320+:320]),
			.INIT_16(INIT['h16*320+:320]),
			.INIT_17(INIT['h17*320+:320]),
			.INIT_18(INIT['h18*320+:320]),
			.INIT_19(INIT['h19*320+:320]),
			.INIT_1A(INIT['h1a*320+:320]),
			.INIT_1B(INIT['h1b*320+:320]),
			.INIT_1C(INIT['h1c*320+:320]),
			.INIT_1D(INIT['h1d*320+:320]),
			.INIT_1E(INIT['h1e*320+:320]),
			.INIT_1F(INIT['h1f*320+:320]),
			.INIT_20(INIT['h20*320+:320]),
			.INIT_21(INIT['h21*320+:320]),
			.INIT_22(INIT['h22*320+:320]),
			.INIT_23(INIT['h23*320+:320]),
			.INIT_24(INIT['h24*320+:320]),
			.INIT_25(INIT['h25*320+:320]),
			.INIT_26(INIT['h26*320+:320]),
			.INIT_27(INIT['h27*320+:320]),
			.INIT_28(INIT['h28*320+:320]),
			.INIT_29(INIT['h29*320+:320]),
			.INIT_2A(INIT['h2a*320+:320]),
			.INIT_2B(INIT['h2b*320+:320]),
			.INIT_2C(INIT['h2c*320+:320]),
			.INIT_2D(INIT['h2d*320+:320]),
			.INIT_2E(INIT['h2e*320+:320]),
			.INIT_2F(INIT['h2f*320+:320]),
			.INIT_30(INIT['h30*320+:320]),
			.INIT_31(INIT['h31*320+:320]),
			.INIT_32(INIT['h32*320+:320]),
			.INIT_33(INIT['h33*320+:320]),
			.INIT_34(INIT['h34*320+:320]),
			.INIT_35(INIT['h35*320+:320]),
			.INIT_36(INIT['h36*320+:320]),
			.INIT_37(INIT['h37*320+:320]),
			.INIT_38(INIT['h38*320+:320]),
			.INIT_39(INIT['h39*320+:320]),
			.INIT_3A(INIT['h3a*320+:320]),
			.INIT_3B(INIT['h3b*320+:320]),
			.INIT_3C(INIT['h3c*320+:320]),
			.INIT_3D(INIT['h3d*320+:320]),
			.INIT_3E(INIT['h3e*320+:320]),
			.INIT_3F(INIT['h3f*320+:320]),
			.A_RD_WIDTH(PORT_A_RD_USED ? PORT_A_RD_WIDTH : 0),
			.A_WR_WIDTH(PORT_A_WR_USED ? PORT_A_WR_WIDTH : 0),
			.B_RD_WIDTH(PORT_B_RD_USED ? PORT_B_RD_WIDTH : 0),
			.B_WR_WIDTH(PORT_B_WR_USED ? PORT_B_WR_WIDTH : 0),
			.RAM_MODE("TDP"),
			.A_WR_MODE(PORT_A_OPTION_WR_MODE),
			.B_WR_MODE(PORT_B_OPTION_WR_MODE),
			.A_CLK_INV(!PORT_A_CLK_POL),
			.B_CLK_INV(!PORT_B_CLK_POL),
		) _TECHMAP_REPLACE_ (
			.A_CLK(PORT_A_CLK),
			.A_EN(PORT_A_CLK_EN),
			.A_WE(PORT_A_WR_EN),
			.A_BM(PORT_A_WR_BE),
			.A_DI(PORT_A_WR_DATA),
			.A_ADDR({PORT_A_ADDR[13:5], 1'b0, PORT_A_ADDR[4:0], 1'b0}),
			.A_DO(PORT_A_RD_DATA),
			.B_CLK(PORT_B_CLK),
			.B_EN(PORT_B_CLK_EN),
			.B_WE(PORT_B_WR_EN),
			.B_BM(PORT_B_WR_BE),
			.B_DI(PORT_B_WR_DATA),
			.B_ADDR({PORT_B_ADDR[13:5], 1'b0, PORT_B_ADDR[4:0], 1'b0}),
			.B_DO(PORT_B_RD_DATA),
		);
	end else if (OPTION_MODE == "40K") begin
		CC_BRAM_40K #(
			.INIT_00(INIT['h00*320+:320]),
			.INIT_01(INIT['h01*320+:320]),
			.INIT_02(INIT['h02*320+:320]),
			.INIT_03(INIT['h03*320+:320]),
			.INIT_04(INIT['h04*320+:320]),
			.INIT_05(INIT['h05*320+:320]),
			.INIT_06(INIT['h06*320+:320]),
			.INIT_07(INIT['h07*320+:320]),
			.INIT_08(INIT['h08*320+:320]),
			.INIT_09(INIT['h09*320+:320]),
			.INIT_0A(INIT['h0a*320+:320]),
			.INIT_0B(INIT['h0b*320+:320]),
			.INIT_0C(INIT['h0c*320+:320]),
			.INIT_0D(INIT['h0d*320+:320]),
			.INIT_0E(INIT['h0e*320+:320]),
			.INIT_0F(INIT['h0f*320+:320]),
			.INIT_10(INIT['h10*320+:320]),
			.INIT_11(INIT['h11*320+:320]),
			.INIT_12(INIT['h12*320+:320]),
			.INIT_13(INIT['h13*320+:320]),
			.INIT_14(INIT['h14*320+:320]),
			.INIT_15(INIT['h15*320+:320]),
			.INIT_16(INIT['h16*320+:320]),
			.INIT_17(INIT['h17*320+:320]),
			.INIT_18(INIT['h18*320+:320]),
			.INIT_19(INIT['h19*320+:320]),
			.INIT_1A(INIT['h1a*320+:320]),
			.INIT_1B(INIT['h1b*320+:320]),
			.INIT_1C(INIT['h1c*320+:320]),
			.INIT_1D(INIT['h1d*320+:320]),
			.INIT_1E(INIT['h1e*320+:320]),
			.INIT_1F(INIT['h1f*320+:320]),
			.INIT_20(INIT['h20*320+:320]),
			.INIT_21(INIT['h21*320+:320]),
			.INIT_22(INIT['h22*320+:320]),
			.INIT_23(INIT['h23*320+:320]),
			.INIT_24(INIT['h24*320+:320]),
			.INIT_25(INIT['h25*320+:320]),
			.INIT_26(INIT['h26*320+:320]),
			.INIT_27(INIT['h27*320+:320]),
			.INIT_28(INIT['h28*320+:320]),
			.INIT_29(INIT['h29*320+:320]),
			.INIT_2A(INIT['h2a*320+:320]),
			.INIT_2B(INIT['h2b*320+:320]),
			.INIT_2C(INIT['h2c*320+:320]),
			.INIT_2D(INIT['h2d*320+:320]),
			.INIT_2E(INIT['h2e*320+:320]),
			.INIT_2F(INIT['h2f*320+:320]),
			.INIT_30(INIT['h30*320+:320]),
			.INIT_31(INIT['h31*320+:320]),
			.INIT_32(INIT['h32*320+:320]),
			.INIT_33(INIT['h33*320+:320]),
			.INIT_34(INIT['h34*320+:320]),
			.INIT_35(INIT['h35*320+:320]),
			.INIT_36(INIT['h36*320+:320]),
			.INIT_37(INIT['h37*320+:320]),
			.INIT_38(INIT['h38*320+:320]),
			.INIT_39(INIT['h39*320+:320]),
			.INIT_3A(INIT['h3a*320+:320]),
			.INIT_3B(INIT['h3b*320+:320]),
			.INIT_3C(INIT['h3c*320+:320]),
			.INIT_3D(INIT['h3d*320+:320]),
			.INIT_3E(INIT['h3e*320+:320]),
			.INIT_3F(INIT['h3f*320+:320]),
			.INIT_40(INIT['h40*320+:320]),
			.INIT_41(INIT['h41*320+:320]),
			.INIT_42(INIT['h42*320+:320]),
			.INIT_43(INIT['h43*320+:320]),
			.INIT_44(INIT['h44*320+:320]),
			.INIT_45(INIT['h45*320+:320]),
			.INIT_46(INIT['h46*320+:320]),
			.INIT_47(INIT['h47*320+:320]),
			.INIT_48(INIT['h48*320+:320]),
			.INIT_49(INIT['h49*320+:320]),
			.INIT_4A(INIT['h4a*320+:320]),
			.INIT_4B(INIT['h4b*320+:320]),
			.INIT_4C(INIT['h4c*320+:320]),
			.INIT_4D(INIT['h4d*320+:320]),
			.INIT_4E(INIT['h4e*320+:320]),
			.INIT_4F(INIT['h4f*320+:320]),
			.INIT_50(INIT['h50*320+:320]),
			.INIT_51(INIT['h51*320+:320]),
			.INIT_52(INIT['h52*320+:320]),
			.INIT_53(INIT['h53*320+:320]),
			.INIT_54(INIT['h54*320+:320]),
			.INIT_55(INIT['h55*320+:320]),
			.INIT_56(INIT['h56*320+:320]),
			.INIT_57(INIT['h57*320+:320]),
			.INIT_58(INIT['h58*320+:320]),
			.INIT_59(INIT['h59*320+:320]),
			.INIT_5A(INIT['h5a*320+:320]),
			.INIT_5B(INIT['h5b*320+:320]),
			.INIT_5C(INIT['h5c*320+:320]),
			.INIT_5D(INIT['h5d*320+:320]),
			.INIT_5E(INIT['h5e*320+:320]),
			.INIT_5F(INIT['h5f*320+:320]),
			.INIT_60(INIT['h60*320+:320]),
			.INIT_61(INIT['h61*320+:320]),
			.INIT_62(INIT['h62*320+:320]),
			.INIT_63(INIT['h63*320+:320]),
			.INIT_64(INIT['h64*320+:320]),
			.INIT_65(INIT['h65*320+:320]),
			.INIT_66(INIT['h66*320+:320]),
			.INIT_67(INIT['h67*320+:320]),
			.INIT_68(INIT['h68*320+:320]),
			.INIT_69(INIT['h69*320+:320]),
			.INIT_6A(INIT['h6a*320+:320]),
			.INIT_6B(INIT['h6b*320+:320]),
			.INIT_6C(INIT['h6c*320+:320]),
			.INIT_6D(INIT['h6d*320+:320]),
			.INIT_6E(INIT['h6e*320+:320]),
			.INIT_6F(INIT['h6f*320+:320]),
			.INIT_70(INIT['h70*320+:320]),
			.INIT_71(INIT['h71*320+:320]),
			.INIT_72(INIT['h72*320+:320]),
			.INIT_73(INIT['h73*320+:320]),
			.INIT_74(INIT['h74*320+:320]),
			.INIT_75(INIT['h75*320+:320]),
			.INIT_76(INIT['h76*320+:320]),
			.INIT_77(INIT['h77*320+:320]),
			.INIT_78(INIT['h78*320+:320]),
			.INIT_79(INIT['h79*320+:320]),
			.INIT_7A(INIT['h7a*320+:320]),
			.INIT_7B(INIT['h7b*320+:320]),
			.INIT_7C(INIT['h7c*320+:320]),
			.INIT_7D(INIT['h7d*320+:320]),
			.INIT_7E(INIT['h7e*320+:320]),
			.INIT_7F(INIT['h7f*320+:320]),
			.A_RD_WIDTH(PORT_A_RD_USED ? PORT_A_RD_WIDTH : 0),
			.A_WR_WIDTH(PORT_A_WR_USED ? PORT_A_WR_WIDTH : 0),
			.B_RD_WIDTH(PORT_B_RD_USED ? PORT_B_RD_WIDTH : 0),
			.B_WR_WIDTH(PORT_B_WR_USED ? PORT_B_WR_WIDTH : 0),
			.RAM_MODE("TDP"),
			.A_WR_MODE(PORT_A_OPTION_WR_MODE),
			.B_WR_MODE(PORT_B_OPTION_WR_MODE),
			.A_CLK_INV(!PORT_A_CLK_POL),
			.B_CLK_INV(!PORT_B_CLK_POL),
		) _TECHMAP_REPLACE_ (
			.A_CLK(PORT_A_CLK),
			.A_EN(PORT_A_CLK_EN),
			.A_WE(PORT_A_WR_EN),
			.A_BM(PORT_A_WR_BE),
			.A_DI(PORT_A_WR_DATA),
			.A_ADDR({PORT_A_ADDR[14:0], 1'b0}),
			.A_DO(PORT_A_RD_DATA),
			.B_CLK(PORT_B_CLK),
			.B_EN(PORT_B_CLK_EN),
			.B_WE(PORT_B_WR_EN),
			.B_BM(PORT_B_WR_BE),
			.B_DI(PORT_B_WR_DATA),
			.B_ADDR({PORT_B_ADDR[14:0], 1'b0}),
			.B_DO(PORT_B_RD_DATA),
		);
	end else begin
		wire CAS_A, CAS_B;
		CC_BRAM_40K #(
			.INIT_00(INIT['h00*320+:320]),
			.INIT_01(INIT['h01*320+:320]),
			.INIT_02(INIT['h02*320+:320]),
			.INIT_03(INIT['h03*320+:320]),
			.INIT_04(INIT['h04*320+:320]),
			.INIT_05(INIT['h05*320+:320]),
			.INIT_06(INIT['h06*320+:320]),
			.INIT_07(INIT['h07*320+:320]),
			.INIT_08(INIT['h08*320+:320]),
			.INIT_09(INIT['h09*320+:320]),
			.INIT_0A(INIT['h0a*320+:320]),
			.INIT_0B(INIT['h0b*320+:320]),
			.INIT_0C(INIT['h0c*320+:320]),
			.INIT_0D(INIT['h0d*320+:320]),
			.INIT_0E(INIT['h0e*320+:320]),
			.INIT_0F(INIT['h0f*320+:320]),
			.INIT_10(INIT['h10*320+:320]),
			.INIT_11(INIT['h11*320+:320]),
			.INIT_12(INIT['h12*320+:320]),
			.INIT_13(INIT['h13*320+:320]),
			.INIT_14(INIT['h14*320+:320]),
			.INIT_15(INIT['h15*320+:320]),
			.INIT_16(INIT['h16*320+:320]),
			.INIT_17(INIT['h17*320+:320]),
			.INIT_18(INIT['h18*320+:320]),
			.INIT_19(INIT['h19*320+:320]),
			.INIT_1A(INIT['h1a*320+:320]),
			.INIT_1B(INIT['h1b*320+:320]),
			.INIT_1C(INIT['h1c*320+:320]),
			.INIT_1D(INIT['h1d*320+:320]),
			.INIT_1E(INIT['h1e*320+:320]),
			.INIT_1F(INIT['h1f*320+:320]),
			.INIT_20(INIT['h20*320+:320]),
			.INIT_21(INIT['h21*320+:320]),
			.INIT_22(INIT['h22*320+:320]),
			.INIT_23(INIT['h23*320+:320]),
			.INIT_24(INIT['h24*320+:320]),
			.INIT_25(INIT['h25*320+:320]),
			.INIT_26(INIT['h26*320+:320]),
			.INIT_27(INIT['h27*320+:320]),
			.INIT_28(INIT['h28*320+:320]),
			.INIT_29(INIT['h29*320+:320]),
			.INIT_2A(INIT['h2a*320+:320]),
			.INIT_2B(INIT['h2b*320+:320]),
			.INIT_2C(INIT['h2c*320+:320]),
			.INIT_2D(INIT['h2d*320+:320]),
			.INIT_2E(INIT['h2e*320+:320]),
			.INIT_2F(INIT['h2f*320+:320]),
			.INIT_30(INIT['h30*320+:320]),
			.INIT_31(INIT['h31*320+:320]),
			.INIT_32(INIT['h32*320+:320]),
			.INIT_33(INIT['h33*320+:320]),
			.INIT_34(INIT['h34*320+:320]),
			.INIT_35(INIT['h35*320+:320]),
			.INIT_36(INIT['h36*320+:320]),
			.INIT_37(INIT['h37*320+:320]),
			.INIT_38(INIT['h38*320+:320]),
			.INIT_39(INIT['h39*320+:320]),
			.INIT_3A(INIT['h3a*320+:320]),
			.INIT_3B(INIT['h3b*320+:320]),
			.INIT_3C(INIT['h3c*320+:320]),
			.INIT_3D(INIT['h3d*320+:320]),
			.INIT_3E(INIT['h3e*320+:320]),
			.INIT_3F(INIT['h3f*320+:320]),
			.INIT_40(INIT['h40*320+:320]),
			.INIT_41(INIT['h41*320+:320]),
			.INIT_42(INIT['h42*320+:320]),
			.INIT_43(INIT['h43*320+:320]),
			.INIT_44(INIT['h44*320+:320]),
			.INIT_45(INIT['h45*320+:320]),
			.INIT_46(INIT['h46*320+:320]),
			.INIT_47(INIT['h47*320+:320]),
			.INIT_48(INIT['h48*320+:320]),
			.INIT_49(INIT['h49*320+:320]),
			.INIT_4A(INIT['h4a*320+:320]),
			.INIT_4B(INIT['h4b*320+:320]),
			.INIT_4C(INIT['h4c*320+:320]),
			.INIT_4D(INIT['h4d*320+:320]),
			.INIT_4E(INIT['h4e*320+:320]),
			.INIT_4F(INIT['h4f*320+:320]),
			.INIT_50(INIT['h50*320+:320]),
			.INIT_51(INIT['h51*320+:320]),
			.INIT_52(INIT['h52*320+:320]),
			.INIT_53(INIT['h53*320+:320]),
			.INIT_54(INIT['h54*320+:320]),
			.INIT_55(INIT['h55*320+:320]),
			.INIT_56(INIT['h56*320+:320]),
			.INIT_57(INIT['h57*320+:320]),
			.INIT_58(INIT['h58*320+:320]),
			.INIT_59(INIT['h59*320+:320]),
			.INIT_5A(INIT['h5a*320+:320]),
			.INIT_5B(INIT['h5b*320+:320]),
			.INIT_5C(INIT['h5c*320+:320]),
			.INIT_5D(INIT['h5d*320+:320]),
			.INIT_5E(INIT['h5e*320+:320]),
			.INIT_5F(INIT['h5f*320+:320]),
			.INIT_60(INIT['h60*320+:320]),
			.INIT_61(INIT['h61*320+:320]),
			.INIT_62(INIT['h62*320+:320]),
			.INIT_63(INIT['h63*320+:320]),
			.INIT_64(INIT['h64*320+:320]),
			.INIT_65(INIT['h65*320+:320]),
			.INIT_66(INIT['h66*320+:320]),
			.INIT_67(INIT['h67*320+:320]),
			.INIT_68(INIT['h68*320+:320]),
			.INIT_69(INIT['h69*320+:320]),
			.INIT_6A(INIT['h6a*320+:320]),
			.INIT_6B(INIT['h6b*320+:320]),
			.INIT_6C(INIT['h6c*320+:320]),
			.INIT_6D(INIT['h6d*320+:320]),
			.INIT_6E(INIT['h6e*320+:320]),
			.INIT_6F(INIT['h6f*320+:320]),
			.INIT_70(INIT['h70*320+:320]),
			.INIT_71(INIT['h71*320+:320]),
			.INIT_72(INIT['h72*320+:320]),
			.INIT_73(INIT['h73*320+:320]),
			.INIT_74(INIT['h74*320+:320]),
			.INIT_75(INIT['h75*320+:320]),
			.INIT_76(INIT['h76*320+:320]),
			.INIT_77(INIT['h77*320+:320]),
			.INIT_78(INIT['h78*320+:320]),
			.INIT_79(INIT['h79*320+:320]),
			.INIT_7A(INIT['h7a*320+:320]),
			.INIT_7B(INIT['h7b*320+:320]),
			.INIT_7C(INIT['h7c*320+:320]),
			.INIT_7D(INIT['h7d*320+:320]),
			.INIT_7E(INIT['h7e*320+:320]),
			.INIT_7F(INIT['h7f*320+:320]),
			.A_RD_WIDTH(PORT_A_RD_USED ? PORT_A_RD_WIDTH : 0),
			.A_WR_WIDTH(PORT_A_WR_USED ? PORT_A_WR_WIDTH : 0),
			.B_RD_WIDTH(PORT_B_RD_USED ? PORT_B_RD_WIDTH : 0),
			.B_WR_WIDTH(PORT_B_WR_USED ? PORT_B_WR_WIDTH : 0),
			.RAM_MODE("TDP"),
			.A_WR_MODE(PORT_A_OPTION_WR_MODE),
			.B_WR_MODE(PORT_B_OPTION_WR_MODE),
			.A_CLK_INV(!PORT_A_CLK_POL),
			.B_CLK_INV(!PORT_B_CLK_POL),
			.CAS("LOWER"),
		) lower (
			.A_CO(CAS_A),
			.B_CO(CAS_B),
			.A_CLK(PORT_A_CLK),
			.A_EN(PORT_A_CLK_EN),
			.A_WE(PORT_A_WR_EN),
			.A_BM(PORT_A_WR_BE),
			.A_DI(PORT_A_WR_DATA),
			.A_ADDR({PORT_A_ADDR[14:0], PORT_A_ADDR[15]}),
			.B_CLK(PORT_B_CLK),
			.B_EN(PORT_B_CLK_EN),
			.B_WE(PORT_B_WR_EN),
			.B_BM(PORT_B_WR_BE),
			.B_DI(PORT_B_WR_DATA),
			.B_ADDR({PORT_B_ADDR[14:0], PORT_B_ADDR[15]}),
		);
		CC_BRAM_40K #(
			.INIT_00(INIT['h80*320+:320]),
			.INIT_01(INIT['h81*320+:320]),
			.INIT_02(INIT['h82*320+:320]),
			.INIT_03(INIT['h83*320+:320]),
			.INIT_04(INIT['h84*320+:320]),
			.INIT_05(INIT['h85*320+:320]),
			.INIT_06(INIT['h86*320+:320]),
			.INIT_07(INIT['h87*320+:320]),
			.INIT_08(INIT['h88*320+:320]),
			.INIT_09(INIT['h89*320+:320]),
			.INIT_0A(INIT['h8a*320+:320]),
			.INIT_0B(INIT['h8b*320+:320]),
			.INIT_0C(INIT['h8c*320+:320]),
			.INIT_0D(INIT['h8d*320+:320]),
			.INIT_0E(INIT['h8e*320+:320]),
			.INIT_0F(INIT['h8f*320+:320]),
			.INIT_10(INIT['h90*320+:320]),
			.INIT_11(INIT['h91*320+:320]),
			.INIT_12(INIT['h92*320+:320]),
			.INIT_13(INIT['h93*320+:320]),
			.INIT_14(INIT['h94*320+:320]),
			.INIT_15(INIT['h95*320+:320]),
			.INIT_16(INIT['h96*320+:320]),
			.INIT_17(INIT['h97*320+:320]),
			.INIT_18(INIT['h98*320+:320]),
			.INIT_19(INIT['h99*320+:320]),
			.INIT_1A(INIT['h9a*320+:320]),
			.INIT_1B(INIT['h9b*320+:320]),
			.INIT_1C(INIT['h9c*320+:320]),
			.INIT_1D(INIT['h9d*320+:320]),
			.INIT_1E(INIT['h9e*320+:320]),
			.INIT_1F(INIT['h9f*320+:320]),
			.INIT_20(INIT['ha0*320+:320]),
			.INIT_21(INIT['ha1*320+:320]),
			.INIT_22(INIT['ha2*320+:320]),
			.INIT_23(INIT['ha3*320+:320]),
			.INIT_24(INIT['ha4*320+:320]),
			.INIT_25(INIT['ha5*320+:320]),
			.INIT_26(INIT['ha6*320+:320]),
			.INIT_27(INIT['ha7*320+:320]),
			.INIT_28(INIT['ha8*320+:320]),
			.INIT_29(INIT['ha9*320+:320]),
			.INIT_2A(INIT['haa*320+:320]),
			.INIT_2B(INIT['hab*320+:320]),
			.INIT_2C(INIT['hac*320+:320]),
			.INIT_2D(INIT['had*320+:320]),
			.INIT_2E(INIT['hae*320+:320]),
			.INIT_2F(INIT['haf*320+:320]),
			.INIT_30(INIT['hb0*320+:320]),
			.INIT_31(INIT['hb1*320+:320]),
			.INIT_32(INIT['hb2*320+:320]),
			.INIT_33(INIT['hb3*320+:320]),
			.INIT_34(INIT['hb4*320+:320]),
			.INIT_35(INIT['hb5*320+:320]),
			.INIT_36(INIT['hb6*320+:320]),
			.INIT_37(INIT['hb7*320+:320]),
			.INIT_38(INIT['hb8*320+:320]),
			.INIT_39(INIT['hb9*320+:320]),
			.INIT_3A(INIT['hba*320+:320]),
			.INIT_3B(INIT['hbb*320+:320]),
			.INIT_3C(INIT['hbc*320+:320]),
			.INIT_3D(INIT['hbd*320+:320]),
			.INIT_3E(INIT['hbe*320+:320]),
			.INIT_3F(INIT['hbf*320+:320]),
			.INIT_40(INIT['hc0*320+:320]),
			.INIT_41(INIT['hc1*320+:320]),
			.INIT_42(INIT['hc2*320+:320]),
			.INIT_43(INIT['hc3*320+:320]),
			.INIT_44(INIT['hc4*320+:320]),
			.INIT_45(INIT['hc5*320+:320]),
			.INIT_46(INIT['hc6*320+:320]),
			.INIT_47(INIT['hc7*320+:320]),
			.INIT_48(INIT['hc8*320+:320]),
			.INIT_49(INIT['hc9*320+:320]),
			.INIT_4A(INIT['hca*320+:320]),
			.INIT_4B(INIT['hcb*320+:320]),
			.INIT_4C(INIT['hcc*320+:320]),
			.INIT_4D(INIT['hcd*320+:320]),
			.INIT_4E(INIT['hce*320+:320]),
			.INIT_4F(INIT['hcf*320+:320]),
			.INIT_50(INIT['hd0*320+:320]),
			.INIT_51(INIT['hd1*320+:320]),
			.INIT_52(INIT['hd2*320+:320]),
			.INIT_53(INIT['hd3*320+:320]),
			.INIT_54(INIT['hd4*320+:320]),
			.INIT_55(INIT['hd5*320+:320]),
			.INIT_56(INIT['hd6*320+:320]),
			.INIT_57(INIT['hd7*320+:320]),
			.INIT_58(INIT['hd8*320+:320]),
			.INIT_59(INIT['hd9*320+:320]),
			.INIT_5A(INIT['hda*320+:320]),
			.INIT_5B(INIT['hdb*320+:320]),
			.INIT_5C(INIT['hdc*320+:320]),
			.INIT_5D(INIT['hdd*320+:320]),
			.INIT_5E(INIT['hde*320+:320]),
			.INIT_5F(INIT['hdf*320+:320]),
			.INIT_60(INIT['he0*320+:320]),
			.INIT_61(INIT['he1*320+:320]),
			.INIT_62(INIT['he2*320+:320]),
			.INIT_63(INIT['he3*320+:320]),
			.INIT_64(INIT['he4*320+:320]),
			.INIT_65(INIT['he5*320+:320]),
			.INIT_66(INIT['he6*320+:320]),
			.INIT_67(INIT['he7*320+:320]),
			.INIT_68(INIT['he8*320+:320]),
			.INIT_69(INIT['he9*320+:320]),
			.INIT_6A(INIT['hea*320+:320]),
			.INIT_6B(INIT['heb*320+:320]),
			.INIT_6C(INIT['hec*320+:320]),
			.INIT_6D(INIT['hed*320+:320]),
			.INIT_6E(INIT['hee*320+:320]),
			.INIT_6F(INIT['hef*320+:320]),
			.INIT_70(INIT['hf0*320+:320]),
			.INIT_71(INIT['hf1*320+:320]),
			.INIT_72(INIT['hf2*320+:320]),
			.INIT_73(INIT['hf3*320+:320]),
			.INIT_74(INIT['hf4*320+:320]),
			.INIT_75(INIT['hf5*320+:320]),
			.INIT_76(INIT['hf6*320+:320]),
			.INIT_77(INIT['hf7*320+:320]),
			.INIT_78(INIT['hf8*320+:320]),
			.INIT_79(INIT['hf9*320+:320]),
			.INIT_7A(INIT['hfa*320+:320]),
			.INIT_7B(INIT['hfb*320+:320]),
			.INIT_7C(INIT['hfc*320+:320]),
			.INIT_7D(INIT['hfd*320+:320]),
			.INIT_7E(INIT['hfe*320+:320]),
			.INIT_7F(INIT['hff*320+:320]),
			.A_RD_WIDTH(PORT_A_RD_USED ? PORT_A_RD_WIDTH : 0),
			.A_WR_WIDTH(PORT_A_WR_USED ? PORT_A_WR_WIDTH : 0),
			.B_RD_WIDTH(PORT_B_RD_USED ? PORT_B_RD_WIDTH : 0),
			.B_WR_WIDTH(PORT_B_WR_USED ? PORT_B_WR_WIDTH : 0),
			.RAM_MODE("TDP"),
			.A_WR_MODE(PORT_A_OPTION_WR_MODE),
			.B_WR_MODE(PORT_B_OPTION_WR_MODE),
			.A_CLK_INV(!PORT_A_CLK_POL),
			.B_CLK_INV(!PORT_B_CLK_POL),
			.CAS("UPPER"),
		) upper (
			.A_CI(CAS_A),
			.B_CI(CAS_B),
			.A_CLK(PORT_A_CLK),
			.A_EN(PORT_A_CLK_EN),
			.A_WE(PORT_A_WR_EN),
			.A_BM(PORT_A_WR_BE),
			.A_DI(PORT_A_WR_DATA),
			.A_DO(PORT_A_RD_DATA),
			.A_ADDR({PORT_A_ADDR[14:0], PORT_A_ADDR[15]}),
			.B_CLK(PORT_B_CLK),
			.B_EN(PORT_B_CLK_EN),
			.B_WE(PORT_B_WR_EN),
			.B_BM(PORT_B_WR_BE),
			.B_DI(PORT_B_WR_DATA),
			.B_DO(PORT_B_RD_DATA),
			.B_ADDR({PORT_B_ADDR[14:0], PORT_B_ADDR[15]}),
		);
	end
endgenerate

endmodule


module $__CC_BRAM_SDP_(...);

parameter INIT = 0;
parameter OPTION_MODE = "20K";
parameter OPTION_WR_MODE = "NO_CHANGE";

parameter PORT_W_CLK_POL = 1;
parameter PORT_W_USED = 1;
parameter PORT_W_WIDTH = 40;
parameter PORT_W_WR_BE_WIDTH = 40;

parameter PORT_R_CLK_POL = 1;
parameter PORT_R_USED = 1;
parameter PORT_R_WIDTH = 40;

input PORT_W_CLK;
input PORT_W_CLK_EN;
input PORT_W_WR_EN;
input [15:0] PORT_W_ADDR;
input [PORT_W_WR_BE_WIDTH-1:0] PORT_W_WR_BE;
input [PORT_W_WIDTH-1:0] PORT_W_WR_DATA;

input PORT_R_CLK;
input PORT_R_CLK_EN;
input [15:0] PORT_R_ADDR;
output [PORT_R_WIDTH-1:0] PORT_R_RD_DATA;

generate
	if (OPTION_MODE == "20K") begin
		CC_BRAM_20K #(
			.INIT_00(INIT['h00*320+:320]),
			.INIT_01(INIT['h01*320+:320]),
			.INIT_02(INIT['h02*320+:320]),
			.INIT_03(INIT['h03*320+:320]),
			.INIT_04(INIT['h04*320+:320]),
			.INIT_05(INIT['h05*320+:320]),
			.INIT_06(INIT['h06*320+:320]),
			.INIT_07(INIT['h07*320+:320]),
			.INIT_08(INIT['h08*320+:320]),
			.INIT_09(INIT['h09*320+:320]),
			.INIT_0A(INIT['h0a*320+:320]),
			.INIT_0B(INIT['h0b*320+:320]),
			.INIT_0C(INIT['h0c*320+:320]),
			.INIT_0D(INIT['h0d*320+:320]),
			.INIT_0E(INIT['h0e*320+:320]),
			.INIT_0F(INIT['h0f*320+:320]),
			.INIT_10(INIT['h10*320+:320]),
			.INIT_11(INIT['h11*320+:320]),
			.INIT_12(INIT['h12*320+:320]),
			.INIT_13(INIT['h13*320+:320]),
			.INIT_14(INIT['h14*320+:320]),
			.INIT_15(INIT['h15*320+:320]),
			.INIT_16(INIT['h16*320+:320]),
			.INIT_17(INIT['h17*320+:320]),
			.INIT_18(INIT['h18*320+:320]),
			.INIT_19(INIT['h19*320+:320]),
			.INIT_1A(INIT['h1a*320+:320]),
			.INIT_1B(INIT['h1b*320+:320]),
			.INIT_1C(INIT['h1c*320+:320]),
			.INIT_1D(INIT['h1d*320+:320]),
			.INIT_1E(INIT['h1e*320+:320]),
			.INIT_1F(INIT['h1f*320+:320]),
			.INIT_20(INIT['h20*320+:320]),
			.INIT_21(INIT['h21*320+:320]),
			.INIT_22(INIT['h22*320+:320]),
			.INIT_23(INIT['h23*320+:320]),
			.INIT_24(INIT['h24*320+:320]),
			.INIT_25(INIT['h25*320+:320]),
			.INIT_26(INIT['h26*320+:320]),
			.INIT_27(INIT['h27*320+:320]),
			.INIT_28(INIT['h28*320+:320]),
			.INIT_29(INIT['h29*320+:320]),
			.INIT_2A(INIT['h2a*320+:320]),
			.INIT_2B(INIT['h2b*320+:320]),
			.INIT_2C(INIT['h2c*320+:320]),
			.INIT_2D(INIT['h2d*320+:320]),
			.INIT_2E(INIT['h2e*320+:320]),
			.INIT_2F(INIT['h2f*320+:320]),
			.INIT_30(INIT['h30*320+:320]),
			.INIT_31(INIT['h31*320+:320]),
			.INIT_32(INIT['h32*320+:320]),
			.INIT_33(INIT['h33*320+:320]),
			.INIT_34(INIT['h34*320+:320]),
			.INIT_35(INIT['h35*320+:320]),
			.INIT_36(INIT['h36*320+:320]),
			.INIT_37(INIT['h37*320+:320]),
			.INIT_38(INIT['h38*320+:320]),
			.INIT_39(INIT['h39*320+:320]),
			.INIT_3A(INIT['h3a*320+:320]),
			.INIT_3B(INIT['h3b*320+:320]),
			.INIT_3C(INIT['h3c*320+:320]),
			.INIT_3D(INIT['h3d*320+:320]),
			.INIT_3E(INIT['h3e*320+:320]),
			.INIT_3F(INIT['h3f*320+:320]),
			.A_RD_WIDTH(0),
			.A_WR_WIDTH(PORT_W_USED ? PORT_W_WIDTH : 0),
			.B_RD_WIDTH(PORT_R_USED ? PORT_R_WIDTH : 0),
			.B_WR_WIDTH(0),
			.RAM_MODE("SDP"),
			.A_WR_MODE(OPTION_WR_MODE),
			.B_WR_MODE(OPTION_WR_MODE),
			.A_CLK_INV(!PORT_W_CLK_POL),
			.B_CLK_INV(!PORT_R_CLK_POL),
		) _TECHMAP_REPLACE_ (
			.A_CLK(PORT_W_CLK),
			.A_EN(PORT_W_CLK_EN),
			.A_WE(PORT_W_WR_EN),
			.A_BM(PORT_W_WR_BE[19:0]),
			.B_BM(PORT_W_WR_BE[39:20]),
			.A_DI(PORT_W_WR_DATA[19:0]),
			.B_DI(PORT_W_WR_DATA[39:20]),
			.A_ADDR({PORT_W_ADDR[13:5], 1'b0, PORT_W_ADDR[4:0], 1'b0}),
			.B_CLK(PORT_R_CLK),
			.B_EN(PORT_R_CLK_EN),
			.B_WE(1'b0),
			.B_ADDR({PORT_R_ADDR[13:5], 1'b0, PORT_R_ADDR[4:0], 1'b0}),
			.A_DO(PORT_R_RD_DATA[19:0]),
			.B_DO(PORT_R_RD_DATA[39:20]),
		);
	end else if (OPTION_MODE == "40K") begin
		CC_BRAM_40K #(
			.INIT_00(INIT['h00*320+:320]),
			.INIT_01(INIT['h01*320+:320]),
			.INIT_02(INIT['h02*320+:320]),
			.INIT_03(INIT['h03*320+:320]),
			.INIT_04(INIT['h04*320+:320]),
			.INIT_05(INIT['h05*320+:320]),
			.INIT_06(INIT['h06*320+:320]),
			.INIT_07(INIT['h07*320+:320]),
			.INIT_08(INIT['h08*320+:320]),
			.INIT_09(INIT['h09*320+:320]),
			.INIT_0A(INIT['h0a*320+:320]),
			.INIT_0B(INIT['h0b*320+:320]),
			.INIT_0C(INIT['h0c*320+:320]),
			.INIT_0D(INIT['h0d*320+:320]),
			.INIT_0E(INIT['h0e*320+:320]),
			.INIT_0F(INIT['h0f*320+:320]),
			.INIT_10(INIT['h10*320+:320]),
			.INIT_11(INIT['h11*320+:320]),
			.INIT_12(INIT['h12*320+:320]),
			.INIT_13(INIT['h13*320+:320]),
			.INIT_14(INIT['h14*320+:320]),
			.INIT_15(INIT['h15*320+:320]),
			.INIT_16(INIT['h16*320+:320]),
			.INIT_17(INIT['h17*320+:320]),
			.INIT_18(INIT['h18*320+:320]),
			.INIT_19(INIT['h19*320+:320]),
			.INIT_1A(INIT['h1a*320+:320]),
			.INIT_1B(INIT['h1b*320+:320]),
			.INIT_1C(INIT['h1c*320+:320]),
			.INIT_1D(INIT['h1d*320+:320]),
			.INIT_1E(INIT['h1e*320+:320]),
			.INIT_1F(INIT['h1f*320+:320]),
			.INIT_20(INIT['h20*320+:320]),
			.INIT_21(INIT['h21*320+:320]),
			.INIT_22(INIT['h22*320+:320]),
			.INIT_23(INIT['h23*320+:320]),
			.INIT_24(INIT['h24*320+:320]),
			.INIT_25(INIT['h25*320+:320]),
			.INIT_26(INIT['h26*320+:320]),
			.INIT_27(INIT['h27*320+:320]),
			.INIT_28(INIT['h28*320+:320]),
			.INIT_29(INIT['h29*320+:320]),
			.INIT_2A(INIT['h2a*320+:320]),
			.INIT_2B(INIT['h2b*320+:320]),
			.INIT_2C(INIT['h2c*320+:320]),
			.INIT_2D(INIT['h2d*320+:320]),
			.INIT_2E(INIT['h2e*320+:320]),
			.INIT_2F(INIT['h2f*320+:320]),
			.INIT_30(INIT['h30*320+:320]),
			.INIT_31(INIT['h31*320+:320]),
			.INIT_32(INIT['h32*320+:320]),
			.INIT_33(INIT['h33*320+:320]),
			.INIT_34(INIT['h34*320+:320]),
			.INIT_35(INIT['h35*320+:320]),
			.INIT_36(INIT['h36*320+:320]),
			.INIT_37(INIT['h37*320+:320]),
			.INIT_38(INIT['h38*320+:320]),
			.INIT_39(INIT['h39*320+:320]),
			.INIT_3A(INIT['h3a*320+:320]),
			.INIT_3B(INIT['h3b*320+:320]),
			.INIT_3C(INIT['h3c*320+:320]),
			.INIT_3D(INIT['h3d*320+:320]),
			.INIT_3E(INIT['h3e*320+:320]),
			.INIT_3F(INIT['h3f*320+:320]),
			.INIT_40(INIT['h40*320+:320]),
			.INIT_41(INIT['h41*320+:320]),
			.INIT_42(INIT['h42*320+:320]),
			.INIT_43(INIT['h43*320+:320]),
			.INIT_44(INIT['h44*320+:320]),
			.INIT_45(INIT['h45*320+:320]),
			.INIT_46(INIT['h46*320+:320]),
			.INIT_47(INIT['h47*320+:320]),
			.INIT_48(INIT['h48*320+:320]),
			.INIT_49(INIT['h49*320+:320]),
			.INIT_4A(INIT['h4a*320+:320]),
			.INIT_4B(INIT['h4b*320+:320]),
			.INIT_4C(INIT['h4c*320+:320]),
			.INIT_4D(INIT['h4d*320+:320]),
			.INIT_4E(INIT['h4e*320+:320]),
			.INIT_4F(INIT['h4f*320+:320]),
			.INIT_50(INIT['h50*320+:320]),
			.INIT_51(INIT['h51*320+:320]),
			.INIT_52(INIT['h52*320+:320]),
			.INIT_53(INIT['h53*320+:320]),
			.INIT_54(INIT['h54*320+:320]),
			.INIT_55(INIT['h55*320+:320]),
			.INIT_56(INIT['h56*320+:320]),
			.INIT_57(INIT['h57*320+:320]),
			.INIT_58(INIT['h58*320+:320]),
			.INIT_59(INIT['h59*320+:320]),
			.INIT_5A(INIT['h5a*320+:320]),
			.INIT_5B(INIT['h5b*320+:320]),
			.INIT_5C(INIT['h5c*320+:320]),
			.INIT_5D(INIT['h5d*320+:320]),
			.INIT_5E(INIT['h5e*320+:320]),
			.INIT_5F(INIT['h5f*320+:320]),
			.INIT_60(INIT['h60*320+:320]),
			.INIT_61(INIT['h61*320+:320]),
			.INIT_62(INIT['h62*320+:320]),
			.INIT_63(INIT['h63*320+:320]),
			.INIT_64(INIT['h64*320+:320]),
			.INIT_65(INIT['h65*320+:320]),
			.INIT_66(INIT['h66*320+:320]),
			.INIT_67(INIT['h67*320+:320]),
			.INIT_68(INIT['h68*320+:320]),
			.INIT_69(INIT['h69*320+:320]),
			.INIT_6A(INIT['h6a*320+:320]),
			.INIT_6B(INIT['h6b*320+:320]),
			.INIT_6C(INIT['h6c*320+:320]),
			.INIT_6D(INIT['h6d*320+:320]),
			.INIT_6E(INIT['h6e*320+:320]),
			.INIT_6F(INIT['h6f*320+:320]),
			.INIT_70(INIT['h70*320+:320]),
			.INIT_71(INIT['h71*320+:320]),
			.INIT_72(INIT['h72*320+:320]),
			.INIT_73(INIT['h73*320+:320]),
			.INIT_74(INIT['h74*320+:320]),
			.INIT_75(INIT['h75*320+:320]),
			.INIT_76(INIT['h76*320+:320]),
			.INIT_77(INIT['h77*320+:320]),
			.INIT_78(INIT['h78*320+:320]),
			.INIT_79(INIT['h79*320+:320]),
			.INIT_7A(INIT['h7a*320+:320]),
			.INIT_7B(INIT['h7b*320+:320]),
			.INIT_7C(INIT['h7c*320+:320]),
			.INIT_7D(INIT['h7d*320+:320]),
			.INIT_7E(INIT['h7e*320+:320]),
			.INIT_7F(INIT['h7f*320+:320]),
			.A_RD_WIDTH(0),
			.A_WR_WIDTH(PORT_W_USED ? PORT_W_WIDTH : 0),
			.B_RD_WIDTH(PORT_R_USED ? PORT_R_WIDTH : 0),
			.B_WR_WIDTH(0),
			.RAM_MODE("SDP"),
			.A_WR_MODE(OPTION_WR_MODE),
			.B_WR_MODE(OPTION_WR_MODE),
			.A_CLK_INV(!PORT_W_CLK_POL),
			.B_CLK_INV(!PORT_R_CLK_POL),
		) _TECHMAP_REPLACE_ (
			.A_CLK(PORT_W_CLK),
			.A_EN(PORT_W_CLK_EN),
			.A_WE(PORT_W_WR_EN),
			.A_BM(PORT_W_WR_BE[39:0]),
			.B_BM(PORT_W_WR_BE[79:40]),
			.A_DI(PORT_W_WR_DATA[39:0]),
			.B_DI(PORT_W_WR_DATA[79:40]),
			.A_ADDR({PORT_W_ADDR[14:0], 1'b0}),
			.B_CLK(PORT_R_CLK),
			.B_EN(PORT_R_CLK_EN),
			.B_WE(1'b0),
			.B_ADDR({PORT_R_ADDR[14:0], 1'b0}),
			.A_DO(PORT_R_RD_DATA[39:0]),
			.B_DO(PORT_R_RD_DATA[79:40]),
		);
	end
endgenerate

endmodule
