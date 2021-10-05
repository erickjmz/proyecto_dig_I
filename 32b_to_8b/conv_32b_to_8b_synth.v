/* Generated by Yosys 0.9+4300 (git sha1 551ef85c, clang  -fPIC -Os) */

(* top =  1  *)
(* src = "conv_32b_to_8b_synth.v:1.1-33.10" *)
module conv_32b_to_8b_synth(data_in, clk, clk_4f, valid_in, data_out, valid_out);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  (* src = "conv_32b_to_8b_synth.v:2.29-2.32" *)
  input clk;
  (* src = "conv_32b_to_8b_synth.v:2.34-2.40" *)
  input clk_4f;
  (* src = "conv_32b_to_8b_synth.v:1.36-1.43" *)
  input [31:0] data_in;
  (* src = "conv_32b_to_8b_synth.v:3.39-3.47" *)
  output [7:0] data_out;
  (* src = "conv_32b_to_8b_synth.v:6.11-6.14" *)
  wire [1:0] sel;
  (* src = "conv_32b_to_8b_synth.v:2.42-2.50" *)
  input valid_in;
  (* src = "conv_32b_to_8b_synth.v:4.34-4.43" *)
  output valid_out;
  NOT _076_ (
    .A(valid_in),
    .Y(_036_)
  );
  NOT _077_ (
    .A(sel[1]),
    .Y(_037_)
  );
  NOT _078_ (
    .A(sel[0]),
    .Y(_038_)
  );
  NOR _079_ (
    .A(sel[1]),
    .B(_038_),
    .Y(_039_)
  );
  NAND _080_ (
    .A(data_in[23]),
    .B(_039_),
    .Y(_040_)
  );
  NOR _081_ (
    .A(_037_),
    .B(sel[0]),
    .Y(_041_)
  );
  NAND _082_ (
    .A(data_in[15]),
    .B(_041_),
    .Y(_042_)
  );
  NAND _083_ (
    .A(_040_),
    .B(_042_),
    .Y(_043_)
  );
  NOR _084_ (
    .A(sel[1]),
    .B(sel[0]),
    .Y(_044_)
  );
  NAND _085_ (
    .A(data_in[31]),
    .B(_044_),
    .Y(_045_)
  );
  NOR _086_ (
    .A(_037_),
    .B(_038_),
    .Y(_046_)
  );
  NAND _087_ (
    .A(sel[1]),
    .B(sel[0]),
    .Y(_047_)
  );
  NAND _088_ (
    .A(data_in[7]),
    .B(_046_),
    .Y(_048_)
  );
  NAND _089_ (
    .A(_045_),
    .B(_048_),
    .Y(_049_)
  );
  NOR _090_ (
    .A(_043_),
    .B(_049_),
    .Y(_050_)
  );
  NOR _091_ (
    .A(_036_),
    .B(_050_),
    .Y(_009_)
  );
  NAND _092_ (
    .A(data_in[22]),
    .B(_039_),
    .Y(_051_)
  );
  NAND _093_ (
    .A(data_in[14]),
    .B(_041_),
    .Y(_052_)
  );
  NAND _094_ (
    .A(_051_),
    .B(_052_),
    .Y(_053_)
  );
  NAND _095_ (
    .A(data_in[30]),
    .B(_044_),
    .Y(_054_)
  );
  NAND _096_ (
    .A(data_in[6]),
    .B(_046_),
    .Y(_055_)
  );
  NAND _097_ (
    .A(_054_),
    .B(_055_),
    .Y(_056_)
  );
  NOR _098_ (
    .A(_053_),
    .B(_056_),
    .Y(_057_)
  );
  NOR _099_ (
    .A(_036_),
    .B(_057_),
    .Y(_008_)
  );
  NAND _100_ (
    .A(data_in[21]),
    .B(_039_),
    .Y(_058_)
  );
  NAND _101_ (
    .A(data_in[13]),
    .B(_041_),
    .Y(_059_)
  );
  NAND _102_ (
    .A(_058_),
    .B(_059_),
    .Y(_060_)
  );
  NAND _103_ (
    .A(data_in[29]),
    .B(_044_),
    .Y(_061_)
  );
  NAND _104_ (
    .A(data_in[5]),
    .B(_046_),
    .Y(_062_)
  );
  NAND _105_ (
    .A(_061_),
    .B(_062_),
    .Y(_063_)
  );
  NOR _106_ (
    .A(_060_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _107_ (
    .A(_036_),
    .B(_064_),
    .Y(_007_)
  );
  NAND _108_ (
    .A(data_in[20]),
    .B(_039_),
    .Y(_065_)
  );
  NAND _109_ (
    .A(data_in[12]),
    .B(_041_),
    .Y(_066_)
  );
  NAND _110_ (
    .A(_065_),
    .B(_066_),
    .Y(_067_)
  );
  NAND _111_ (
    .A(data_in[28]),
    .B(_044_),
    .Y(_068_)
  );
  NAND _112_ (
    .A(data_in[4]),
    .B(_046_),
    .Y(_069_)
  );
  NAND _113_ (
    .A(_068_),
    .B(_069_),
    .Y(_070_)
  );
  NOR _114_ (
    .A(_067_),
    .B(_070_),
    .Y(_071_)
  );
  NOR _115_ (
    .A(_036_),
    .B(_071_),
    .Y(_006_)
  );
  NAND _116_ (
    .A(data_in[19]),
    .B(_039_),
    .Y(_072_)
  );
  NAND _117_ (
    .A(data_in[11]),
    .B(_041_),
    .Y(_073_)
  );
  NAND _118_ (
    .A(_072_),
    .B(_073_),
    .Y(_074_)
  );
  NAND _119_ (
    .A(data_in[27]),
    .B(_044_),
    .Y(_075_)
  );
  NAND _120_ (
    .A(data_in[3]),
    .B(_046_),
    .Y(_011_)
  );
  NAND _121_ (
    .A(_075_),
    .B(_011_),
    .Y(_012_)
  );
  NOR _122_ (
    .A(_074_),
    .B(_012_),
    .Y(_013_)
  );
  NOR _123_ (
    .A(_036_),
    .B(_013_),
    .Y(_005_)
  );
  NAND _124_ (
    .A(data_in[18]),
    .B(_039_),
    .Y(_014_)
  );
  NAND _125_ (
    .A(data_in[10]),
    .B(_041_),
    .Y(_015_)
  );
  NAND _126_ (
    .A(_014_),
    .B(_015_),
    .Y(_016_)
  );
  NAND _127_ (
    .A(data_in[26]),
    .B(_044_),
    .Y(_017_)
  );
  NAND _128_ (
    .A(data_in[2]),
    .B(_046_),
    .Y(_018_)
  );
  NAND _129_ (
    .A(_017_),
    .B(_018_),
    .Y(_019_)
  );
  NOR _130_ (
    .A(_016_),
    .B(_019_),
    .Y(_020_)
  );
  NOR _131_ (
    .A(_036_),
    .B(_020_),
    .Y(_004_)
  );
  NAND _132_ (
    .A(data_in[17]),
    .B(_039_),
    .Y(_021_)
  );
  NAND _133_ (
    .A(data_in[9]),
    .B(_041_),
    .Y(_022_)
  );
  NAND _134_ (
    .A(_021_),
    .B(_022_),
    .Y(_023_)
  );
  NAND _135_ (
    .A(data_in[25]),
    .B(_044_),
    .Y(_024_)
  );
  NAND _136_ (
    .A(data_in[1]),
    .B(_046_),
    .Y(_025_)
  );
  NAND _137_ (
    .A(_024_),
    .B(_025_),
    .Y(_026_)
  );
  NOR _138_ (
    .A(_023_),
    .B(_026_),
    .Y(_027_)
  );
  NOR _139_ (
    .A(_036_),
    .B(_027_),
    .Y(_003_)
  );
  NAND _140_ (
    .A(data_in[16]),
    .B(_039_),
    .Y(_028_)
  );
  NAND _141_ (
    .A(data_in[8]),
    .B(_041_),
    .Y(_029_)
  );
  NAND _142_ (
    .A(_028_),
    .B(_029_),
    .Y(_030_)
  );
  NAND _143_ (
    .A(data_in[24]),
    .B(_044_),
    .Y(_031_)
  );
  NAND _144_ (
    .A(data_in[0]),
    .B(_046_),
    .Y(_032_)
  );
  NAND _145_ (
    .A(_031_),
    .B(_032_),
    .Y(_033_)
  );
  NOR _146_ (
    .A(_030_),
    .B(_033_),
    .Y(_034_)
  );
  NOR _147_ (
    .A(_036_),
    .B(_034_),
    .Y(_002_)
  );
  NAND _148_ (
    .A(valid_in),
    .B(_047_),
    .Y(_035_)
  );
  NOR _149_ (
    .A(_044_),
    .B(_035_),
    .Y(_001_)
  );
  NOR _150_ (
    .A(_036_),
    .B(sel[0]),
    .Y(_000_)
  );
  BUF _151_ (
    .A(valid_in),
    .Y(_010_)
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _152_ (
    .C(clk_4f),
    .D(_000_),
    .Q(sel[0])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _153_ (
    .C(clk_4f),
    .D(_001_),
    .Q(sel[1])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _154_ (
    .C(clk_4f),
    .D(_002_),
    .Q(data_out[0])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _155_ (
    .C(clk_4f),
    .D(_003_),
    .Q(data_out[1])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _156_ (
    .C(clk_4f),
    .D(_004_),
    .Q(data_out[2])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _157_ (
    .C(clk_4f),
    .D(_005_),
    .Q(data_out[3])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _158_ (
    .C(clk_4f),
    .D(_006_),
    .Q(data_out[4])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _159_ (
    .C(clk_4f),
    .D(_007_),
    .Q(data_out[5])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _160_ (
    .C(clk_4f),
    .D(_008_),
    .Q(data_out[6])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _161_ (
    .C(clk_4f),
    .D(_009_),
    .Q(data_out[7])
  );
  (* src = "conv_32b_to_8b_synth.v:7.1-32.4" *)
  DFF _162_ (
    .C(clk_4f),
    .D(_010_),
    .Q(valid_out)
  );
endmodule
