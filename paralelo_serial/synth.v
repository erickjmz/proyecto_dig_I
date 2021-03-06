/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth.v:1" *)
module synth(clk_4f, clk_32f, reset_L, data_in, valid_in, data_out);
  (* src = "synth.v:12" *)
  wire _000_;
  (* src = "synth.v:12" *)
  wire [2:0] _001_;
  (* src = "synth.v:12" *)
  wire [7:0] _002_;
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
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  (* src = "synth.v:3" *)
  input clk_32f;
  (* src = "synth.v:2" *)
  input clk_4f;
  (* src = "synth.v:5" *)
  input [7:0] data_in;
  (* src = "synth.v:7" *)
  output data_out;
  (* src = "synth.v:4" *)
  input reset_L;
  (* init = 3'h0 *)
  (* src = "synth.v:9" *)
  wire [2:0] selector;
  (* src = "synth.v:10" *)
  wire [7:0] tmp_out;
  (* src = "synth.v:6" *)
  input valid_in;
  NOT _091_ (
    .A(reset_L),
    .Y(_022_)
  );
  NOT _092_ (
    .A(selector[2]),
    .Y(_056_)
  );
  NOT _093_ (
    .A(selector[0]),
    .Y(_001_[0])
  );
  NOT _094_ (
    .A(selector[1]),
    .Y(_057_)
  );
  NOT _095_ (
    .A(data_in[0]),
    .Y(_058_)
  );
  NOT _096_ (
    .A(valid_in),
    .Y(_059_)
  );
  NOT _097_ (
    .A(data_in[1]),
    .Y(_060_)
  );
  NOT _098_ (
    .A(data_in[2]),
    .Y(_061_)
  );
  NOT _099_ (
    .A(data_in[3]),
    .Y(_062_)
  );
  NOT _100_ (
    .A(data_in[4]),
    .Y(_063_)
  );
  NOT _101_ (
    .A(data_in[5]),
    .Y(_064_)
  );
  NOT _102_ (
    .A(data_in[6]),
    .Y(_065_)
  );
  NOT _103_ (
    .A(data_in[7]),
    .Y(_066_)
  );
  NOT _104_ (
    .A(tmp_out[7]),
    .Y(_067_)
  );
  NOT _105_ (
    .A(data_out),
    .Y(_068_)
  );
  NOT _106_ (
    .A(tmp_out[3]),
    .Y(_069_)
  );
  NOT _107_ (
    .A(tmp_out[1]),
    .Y(_070_)
  );
  NAND _108_ (
    .A(data_in[0]),
    .B(valid_in),
    .Y(_071_)
  );
  NOT _109_ (
    .A(_071_),
    .Y(_002_[0])
  );
  NAND _110_ (
    .A(valid_in),
    .B(data_in[1]),
    .Y(_072_)
  );
  NOT _111_ (
    .A(_072_),
    .Y(_002_[1])
  );
  NAND _112_ (
    .A(valid_in),
    .B(_061_),
    .Y(_002_[2])
  );
  NAND _113_ (
    .A(valid_in),
    .B(_062_),
    .Y(_002_[3])
  );
  NAND _114_ (
    .A(valid_in),
    .B(_063_),
    .Y(_002_[4])
  );
  NAND _115_ (
    .A(valid_in),
    .B(_064_),
    .Y(_002_[5])
  );
  NAND _116_ (
    .A(valid_in),
    .B(data_in[6]),
    .Y(_073_)
  );
  NOT _117_ (
    .A(_073_),
    .Y(_002_[6])
  );
  NAND _118_ (
    .A(valid_in),
    .B(_066_),
    .Y(_002_[7])
  );
  NAND _119_ (
    .A(_059_),
    .B(data_out),
    .Y(_074_)
  );
  NOR _120_ (
    .A(_001_[0]),
    .B(selector[1]),
    .Y(_075_)
  );
  NAND _121_ (
    .A(selector[0]),
    .B(_057_),
    .Y(_076_)
  );
  NAND _122_ (
    .A(_056_),
    .B(_075_),
    .Y(_077_)
  );
  NOR _123_ (
    .A(selector[0]),
    .B(selector[1]),
    .Y(_078_)
  );
  NOT _124_ (
    .A(_078_),
    .Y(_079_)
  );
  NOR _125_ (
    .A(selector[2]),
    .B(_079_),
    .Y(_080_)
  );
  NAND _126_ (
    .A(_056_),
    .B(_078_),
    .Y(_081_)
  );
  NAND _127_ (
    .A(_068_),
    .B(_081_),
    .Y(_082_)
  );
  NAND _128_ (
    .A(_067_),
    .B(_080_),
    .Y(_083_)
  );
  NAND _129_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  NAND _130_ (
    .A(_077_),
    .B(_084_),
    .Y(_085_)
  );
  NAND _131_ (
    .A(_001_[0]),
    .B(selector[1]),
    .Y(_086_)
  );
  NOT _132_ (
    .A(_086_),
    .Y(_087_)
  );
  NOR _133_ (
    .A(selector[2]),
    .B(_086_),
    .Y(_088_)
  );
  NOR _134_ (
    .A(tmp_out[6]),
    .B(_077_),
    .Y(_089_)
  );
  NOR _135_ (
    .A(_088_),
    .B(_089_),
    .Y(_090_)
  );
  NAND _136_ (
    .A(_085_),
    .B(_090_),
    .Y(_023_)
  );
  NAND _137_ (
    .A(selector[0]),
    .B(selector[1]),
    .Y(_024_)
  );
  NOT _138_ (
    .A(_024_),
    .Y(_025_)
  );
  NOR _139_ (
    .A(selector[2]),
    .B(_024_),
    .Y(_026_)
  );
  NAND _140_ (
    .A(_056_),
    .B(_025_),
    .Y(_027_)
  );
  NAND _141_ (
    .A(tmp_out[5]),
    .B(_088_),
    .Y(_028_)
  );
  NOT _142_ (
    .A(_028_),
    .Y(_029_)
  );
  NOR _143_ (
    .A(_026_),
    .B(_029_),
    .Y(_030_)
  );
  NAND _144_ (
    .A(_023_),
    .B(_030_),
    .Y(_031_)
  );
  NAND _145_ (
    .A(selector[2]),
    .B(_078_),
    .Y(_032_)
  );
  NOT _146_ (
    .A(_032_),
    .Y(_033_)
  );
  NOR _147_ (
    .A(tmp_out[4]),
    .B(_027_),
    .Y(_034_)
  );
  NOR _148_ (
    .A(_033_),
    .B(_034_),
    .Y(_035_)
  );
  NAND _149_ (
    .A(_031_),
    .B(_035_),
    .Y(_036_)
  );
  NOR _150_ (
    .A(_069_),
    .B(_032_),
    .Y(_037_)
  );
  NOR _151_ (
    .A(_056_),
    .B(_076_),
    .Y(_038_)
  );
  NAND _152_ (
    .A(selector[2]),
    .B(_075_),
    .Y(_039_)
  );
  NOR _153_ (
    .A(_037_),
    .B(_038_),
    .Y(_040_)
  );
  NAND _154_ (
    .A(_036_),
    .B(_040_),
    .Y(_041_)
  );
  NOR _155_ (
    .A(_056_),
    .B(_086_),
    .Y(_042_)
  );
  NAND _156_ (
    .A(selector[2]),
    .B(_087_),
    .Y(_043_)
  );
  NOR _157_ (
    .A(tmp_out[2]),
    .B(_039_),
    .Y(_044_)
  );
  NOR _158_ (
    .A(_042_),
    .B(_044_),
    .Y(_045_)
  );
  NAND _159_ (
    .A(_041_),
    .B(_045_),
    .Y(_046_)
  );
  NOR _160_ (
    .A(_056_),
    .B(_024_),
    .Y(_047_)
  );
  NAND _161_ (
    .A(selector[2]),
    .B(_025_),
    .Y(_048_)
  );
  NOR _162_ (
    .A(_070_),
    .B(_043_),
    .Y(_049_)
  );
  NOR _163_ (
    .A(_047_),
    .B(_049_),
    .Y(_050_)
  );
  NAND _164_ (
    .A(_046_),
    .B(_050_),
    .Y(_051_)
  );
  NOR _165_ (
    .A(tmp_out[0]),
    .B(_048_),
    .Y(_052_)
  );
  NOR _166_ (
    .A(_059_),
    .B(_052_),
    .Y(_053_)
  );
  NAND _167_ (
    .A(_051_),
    .B(_053_),
    .Y(_054_)
  );
  NAND _168_ (
    .A(_074_),
    .B(_054_),
    .Y(_000_)
  );
  NAND _169_ (
    .A(_076_),
    .B(_086_),
    .Y(_001_[1])
  );
  NAND _170_ (
    .A(selector[2]),
    .B(_024_),
    .Y(_055_)
  );
  NAND _171_ (
    .A(_027_),
    .B(_055_),
    .Y(_001_[2])
  );
  NOR _172_ (
    .A(reset_L),
    .B(_058_),
    .Y(_003_)
  );
  NOR _173_ (
    .A(reset_L),
    .B(_060_),
    .Y(_004_)
  );
  NOR _174_ (
    .A(reset_L),
    .B(_061_),
    .Y(_005_)
  );
  NOR _175_ (
    .A(reset_L),
    .B(_062_),
    .Y(_006_)
  );
  NOR _176_ (
    .A(reset_L),
    .B(_063_),
    .Y(_007_)
  );
  NOR _177_ (
    .A(reset_L),
    .B(_064_),
    .Y(_008_)
  );
  NOR _178_ (
    .A(reset_L),
    .B(_065_),
    .Y(_009_)
  );
  NOR _179_ (
    .A(reset_L),
    .B(_066_),
    .Y(_010_)
  );
  NOR _180_ (
    .A(reset_L),
    .B(data_in[0]),
    .Y(_011_)
  );
  NOR _181_ (
    .A(reset_L),
    .B(data_in[1]),
    .Y(_012_)
  );
  NOR _182_ (
    .A(reset_L),
    .B(data_in[2]),
    .Y(_013_)
  );
  NOR _183_ (
    .A(reset_L),
    .B(data_in[3]),
    .Y(_014_)
  );
  NOR _184_ (
    .A(reset_L),
    .B(data_in[4]),
    .Y(_015_)
  );
  NOR _185_ (
    .A(reset_L),
    .B(data_in[5]),
    .Y(_016_)
  );
  NOR _186_ (
    .A(reset_L),
    .B(data_in[6]),
    .Y(_017_)
  );
  NOR _187_ (
    .A(reset_L),
    .B(data_in[7]),
    .Y(_018_)
  );
  NOT _188_ (
    .A(reset_L),
    .Y(_019_)
  );
  NOT _189_ (
    .A(reset_L),
    .Y(_020_)
  );
  NOT _190_ (
    .A(reset_L),
    .Y(_021_)
  );
  (* src = "synth.v:12" *)
  DFFSR _191_ (
    .C(clk_32f),
    .D(_002_[0]),
    .Q(tmp_out[0]),
    .R(_011_),
    .S(_003_)
  );
  (* src = "synth.v:12" *)
  DFFSR _192_ (
    .C(clk_32f),
    .D(_002_[1]),
    .Q(tmp_out[1]),
    .R(_012_),
    .S(_004_)
  );
  (* src = "synth.v:12" *)
  DFFSR _193_ (
    .C(clk_32f),
    .D(_002_[2]),
    .Q(tmp_out[2]),
    .R(_013_),
    .S(_005_)
  );
  (* src = "synth.v:12" *)
  DFFSR _194_ (
    .C(clk_32f),
    .D(_002_[3]),
    .Q(tmp_out[3]),
    .R(_014_),
    .S(_006_)
  );
  (* src = "synth.v:12" *)
  DFFSR _195_ (
    .C(clk_32f),
    .D(_002_[4]),
    .Q(tmp_out[4]),
    .R(_015_),
    .S(_007_)
  );
  (* src = "synth.v:12" *)
  DFFSR _196_ (
    .C(clk_32f),
    .D(_002_[5]),
    .Q(tmp_out[5]),
    .R(_016_),
    .S(_008_)
  );
  (* src = "synth.v:12" *)
  DFFSR _197_ (
    .C(clk_32f),
    .D(_002_[6]),
    .Q(tmp_out[6]),
    .R(_017_),
    .S(_009_)
  );
  (* src = "synth.v:12" *)
  DFFSR _198_ (
    .C(clk_32f),
    .D(_002_[7]),
    .Q(tmp_out[7]),
    .R(_018_),
    .S(_010_)
  );
  (* src = "synth.v:12" *)
  DFFSR _199_ (
    .C(clk_32f),
    .D(_001_[0]),
    .Q(selector[0]),
    .R(_019_),
    .S(1'h0)
  );
  (* src = "synth.v:12" *)
  DFFSR _200_ (
    .C(clk_32f),
    .D(_001_[1]),
    .Q(selector[1]),
    .R(_020_),
    .S(1'h0)
  );
  (* src = "synth.v:12" *)
  DFFSR _201_ (
    .C(clk_32f),
    .D(_001_[2]),
    .Q(selector[2]),
    .R(_021_),
    .S(1'h0)
  );
  (* src = "synth.v:12" *)
  DFFSR _202_ (
    .C(clk_32f),
    .D(_000_),
    .Q(data_out),
    .R(_022_),
    .S(1'h0)
  );
endmodule
