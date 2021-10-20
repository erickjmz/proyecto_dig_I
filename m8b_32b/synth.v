/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth.v:1" *)
module synth(clk_4f, clk_f, data_in, valid_in, reset_L, data_out, valid_out);
  (* src = "synth.v:13" *)
  wire [31:0] _000_;
  (* src = "synth.v:13" *)
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
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  (* src = "synth.v:2" *)
  input clk_4f;
  (* src = "synth.v:3" *)
  input clk_f;
  (* src = "synth.v:4" *)
  input [7:0] data_in;
  (* src = "synth.v:7" *)
  output [31:0] data_out;
  (* src = "synth.v:6" *)
  input reset_L;
  (* onehot = 32'd1 *)
  wire [3:0] selector;
  (* src = "synth.v:5" *)
  input valid_in;
  (* src = "synth.v:8" *)
  output valid_out;
  NOT _139_ (
    .A(data_in[0]),
    .Y(_124_)
  );
  NOT _140_ (
    .A(data_in[1]),
    .Y(_125_)
  );
  NOT _141_ (
    .A(data_in[2]),
    .Y(_126_)
  );
  NOT _142_ (
    .A(data_in[3]),
    .Y(_127_)
  );
  NOT _143_ (
    .A(data_in[4]),
    .Y(_128_)
  );
  NOT _144_ (
    .A(data_in[5]),
    .Y(_129_)
  );
  NOT _145_ (
    .A(data_in[6]),
    .Y(_130_)
  );
  NOT _146_ (
    .A(data_in[7]),
    .Y(_131_)
  );
  NOT _147_ (
    .A(reset_L),
    .Y(_132_)
  );
  NOT _148_ (
    .A(valid_in),
    .Y(_133_)
  );
  NOT _149_ (
    .A(selector[2]),
    .Y(_134_)
  );
  NAND _150_ (
    .A(reset_L),
    .B(selector[3]),
    .Y(_135_)
  );
  NOR _151_ (
    .A(_132_),
    .B(_133_),
    .Y(_136_)
  );
  NAND _152_ (
    .A(reset_L),
    .B(valid_in),
    .Y(_137_)
  );
  NOR _153_ (
    .A(_133_),
    .B(_135_),
    .Y(_138_)
  );
  NOR _154_ (
    .A(selector[0]),
    .B(selector[2]),
    .Y(_006_)
  );
  NAND _155_ (
    .A(selector[2]),
    .B(_136_),
    .Y(_007_)
  );
  NAND _156_ (
    .A(selector[0]),
    .B(_136_),
    .Y(_008_)
  );
  NOR _157_ (
    .A(_137_),
    .B(_006_),
    .Y(_009_)
  );
  NOR _158_ (
    .A(_138_),
    .B(_009_),
    .Y(_010_)
  );
  NOT _159_ (
    .A(_010_),
    .Y(_011_)
  );
  NAND _160_ (
    .A(selector[1]),
    .B(_136_),
    .Y(_012_)
  );
  NAND _161_ (
    .A(_010_),
    .B(_012_),
    .Y(_013_)
  );
  NOR _162_ (
    .A(_132_),
    .B(_013_),
    .Y(_014_)
  );
  NAND _163_ (
    .A(selector[2]),
    .B(_014_),
    .Y(_015_)
  );
  NAND _164_ (
    .A(_134_),
    .B(_138_),
    .Y(_016_)
  );
  NOR _165_ (
    .A(selector[0]),
    .B(_016_),
    .Y(_017_)
  );
  NOT _166_ (
    .A(_017_),
    .Y(_018_)
  );
  NAND _167_ (
    .A(_015_),
    .B(_018_),
    .Y(_004_)
  );
  NAND _168_ (
    .A(selector[0]),
    .B(_137_),
    .Y(_019_)
  );
  NOR _169_ (
    .A(selector[0]),
    .B(_007_),
    .Y(_020_)
  );
  NOR _170_ (
    .A(_132_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _171_ (
    .A(_019_),
    .B(_021_),
    .Y(_002_)
  );
  NOR _172_ (
    .A(_011_),
    .B(_012_),
    .Y(_022_)
  );
  NOR _173_ (
    .A(valid_in),
    .B(_135_),
    .Y(_023_)
  );
  NOR _174_ (
    .A(_022_),
    .B(_023_),
    .Y(_024_)
  );
  NOT _175_ (
    .A(_024_),
    .Y(_005_)
  );
  NAND _176_ (
    .A(selector[1]),
    .B(_014_),
    .Y(_025_)
  );
  NAND _177_ (
    .A(_008_),
    .B(_025_),
    .Y(_003_)
  );
  NOR _178_ (
    .A(data_out[24]),
    .B(_022_),
    .Y(_026_)
  );
  NAND _179_ (
    .A(_124_),
    .B(_022_),
    .Y(_027_)
  );
  NAND _180_ (
    .A(reset_L),
    .B(_027_),
    .Y(_028_)
  );
  NOR _181_ (
    .A(_026_),
    .B(_028_),
    .Y(_000_[24])
  );
  NOR _182_ (
    .A(data_out[25]),
    .B(_022_),
    .Y(_029_)
  );
  NAND _183_ (
    .A(_125_),
    .B(_022_),
    .Y(_030_)
  );
  NAND _184_ (
    .A(reset_L),
    .B(_030_),
    .Y(_031_)
  );
  NOR _185_ (
    .A(_029_),
    .B(_031_),
    .Y(_000_[25])
  );
  NOR _186_ (
    .A(data_out[26]),
    .B(_022_),
    .Y(_032_)
  );
  NAND _187_ (
    .A(_126_),
    .B(_022_),
    .Y(_033_)
  );
  NAND _188_ (
    .A(reset_L),
    .B(_033_),
    .Y(_034_)
  );
  NOR _189_ (
    .A(_032_),
    .B(_034_),
    .Y(_000_[26])
  );
  NOR _190_ (
    .A(data_out[27]),
    .B(_022_),
    .Y(_035_)
  );
  NAND _191_ (
    .A(_127_),
    .B(_022_),
    .Y(_036_)
  );
  NAND _192_ (
    .A(reset_L),
    .B(_036_),
    .Y(_037_)
  );
  NOR _193_ (
    .A(_035_),
    .B(_037_),
    .Y(_000_[27])
  );
  NOR _194_ (
    .A(data_out[28]),
    .B(_022_),
    .Y(_038_)
  );
  NAND _195_ (
    .A(_128_),
    .B(_022_),
    .Y(_039_)
  );
  NAND _196_ (
    .A(reset_L),
    .B(_039_),
    .Y(_040_)
  );
  NOR _197_ (
    .A(_038_),
    .B(_040_),
    .Y(_000_[28])
  );
  NOR _198_ (
    .A(data_out[29]),
    .B(_022_),
    .Y(_041_)
  );
  NAND _199_ (
    .A(_129_),
    .B(_022_),
    .Y(_042_)
  );
  NAND _200_ (
    .A(reset_L),
    .B(_042_),
    .Y(_043_)
  );
  NOR _201_ (
    .A(_041_),
    .B(_043_),
    .Y(_000_[29])
  );
  NOR _202_ (
    .A(data_out[30]),
    .B(_022_),
    .Y(_044_)
  );
  NAND _203_ (
    .A(_130_),
    .B(_022_),
    .Y(_045_)
  );
  NAND _204_ (
    .A(reset_L),
    .B(_045_),
    .Y(_046_)
  );
  NOR _205_ (
    .A(_044_),
    .B(_046_),
    .Y(_000_[30])
  );
  NOR _206_ (
    .A(data_out[31]),
    .B(_022_),
    .Y(_047_)
  );
  NAND _207_ (
    .A(_131_),
    .B(_022_),
    .Y(_048_)
  );
  NAND _208_ (
    .A(reset_L),
    .B(_048_),
    .Y(_049_)
  );
  NOR _209_ (
    .A(_047_),
    .B(_049_),
    .Y(_000_[31])
  );
  NOR _210_ (
    .A(data_out[16]),
    .B(_017_),
    .Y(_050_)
  );
  NAND _211_ (
    .A(_124_),
    .B(_017_),
    .Y(_051_)
  );
  NAND _212_ (
    .A(reset_L),
    .B(_051_),
    .Y(_052_)
  );
  NOR _213_ (
    .A(_050_),
    .B(_052_),
    .Y(_000_[16])
  );
  NOR _214_ (
    .A(data_out[17]),
    .B(_017_),
    .Y(_053_)
  );
  NAND _215_ (
    .A(_125_),
    .B(_017_),
    .Y(_054_)
  );
  NAND _216_ (
    .A(reset_L),
    .B(_054_),
    .Y(_055_)
  );
  NOR _217_ (
    .A(_053_),
    .B(_055_),
    .Y(_000_[17])
  );
  NOR _218_ (
    .A(data_out[18]),
    .B(_017_),
    .Y(_056_)
  );
  NAND _219_ (
    .A(_126_),
    .B(_017_),
    .Y(_057_)
  );
  NAND _220_ (
    .A(reset_L),
    .B(_057_),
    .Y(_058_)
  );
  NOR _221_ (
    .A(_056_),
    .B(_058_),
    .Y(_000_[18])
  );
  NOR _222_ (
    .A(data_out[19]),
    .B(_017_),
    .Y(_059_)
  );
  NAND _223_ (
    .A(_127_),
    .B(_017_),
    .Y(_060_)
  );
  NAND _224_ (
    .A(reset_L),
    .B(_060_),
    .Y(_061_)
  );
  NOR _225_ (
    .A(_059_),
    .B(_061_),
    .Y(_000_[19])
  );
  NOR _226_ (
    .A(data_out[20]),
    .B(_017_),
    .Y(_062_)
  );
  NAND _227_ (
    .A(_128_),
    .B(_017_),
    .Y(_063_)
  );
  NAND _228_ (
    .A(reset_L),
    .B(_063_),
    .Y(_064_)
  );
  NOR _229_ (
    .A(_062_),
    .B(_064_),
    .Y(_000_[20])
  );
  NOR _230_ (
    .A(data_out[21]),
    .B(_017_),
    .Y(_065_)
  );
  NAND _231_ (
    .A(_129_),
    .B(_017_),
    .Y(_066_)
  );
  NAND _232_ (
    .A(reset_L),
    .B(_066_),
    .Y(_067_)
  );
  NOR _233_ (
    .A(_065_),
    .B(_067_),
    .Y(_000_[21])
  );
  NOR _234_ (
    .A(data_out[22]),
    .B(_017_),
    .Y(_068_)
  );
  NAND _235_ (
    .A(_130_),
    .B(_017_),
    .Y(_069_)
  );
  NAND _236_ (
    .A(reset_L),
    .B(_069_),
    .Y(_070_)
  );
  NOR _237_ (
    .A(_068_),
    .B(_070_),
    .Y(_000_[22])
  );
  NOR _238_ (
    .A(data_out[23]),
    .B(_017_),
    .Y(_071_)
  );
  NAND _239_ (
    .A(_131_),
    .B(_017_),
    .Y(_072_)
  );
  NAND _240_ (
    .A(reset_L),
    .B(_072_),
    .Y(_073_)
  );
  NOR _241_ (
    .A(_071_),
    .B(_073_),
    .Y(_000_[23])
  );
  NAND _242_ (
    .A(data_in[0]),
    .B(_020_),
    .Y(_074_)
  );
  NAND _243_ (
    .A(data_out[8]),
    .B(_021_),
    .Y(_075_)
  );
  NAND _244_ (
    .A(_074_),
    .B(_075_),
    .Y(_000_[8])
  );
  NAND _245_ (
    .A(data_in[1]),
    .B(_020_),
    .Y(_076_)
  );
  NAND _246_ (
    .A(data_out[9]),
    .B(_021_),
    .Y(_077_)
  );
  NAND _247_ (
    .A(_076_),
    .B(_077_),
    .Y(_000_[9])
  );
  NAND _248_ (
    .A(data_in[2]),
    .B(_020_),
    .Y(_078_)
  );
  NAND _249_ (
    .A(data_out[10]),
    .B(_021_),
    .Y(_079_)
  );
  NAND _250_ (
    .A(_078_),
    .B(_079_),
    .Y(_000_[10])
  );
  NAND _251_ (
    .A(data_in[3]),
    .B(_020_),
    .Y(_080_)
  );
  NAND _252_ (
    .A(data_out[11]),
    .B(_021_),
    .Y(_081_)
  );
  NAND _253_ (
    .A(_080_),
    .B(_081_),
    .Y(_000_[11])
  );
  NAND _254_ (
    .A(data_in[4]),
    .B(_020_),
    .Y(_082_)
  );
  NAND _255_ (
    .A(data_out[12]),
    .B(_021_),
    .Y(_083_)
  );
  NAND _256_ (
    .A(_082_),
    .B(_083_),
    .Y(_000_[12])
  );
  NAND _257_ (
    .A(data_in[5]),
    .B(_020_),
    .Y(_084_)
  );
  NAND _258_ (
    .A(data_out[13]),
    .B(_021_),
    .Y(_085_)
  );
  NAND _259_ (
    .A(_084_),
    .B(_085_),
    .Y(_000_[13])
  );
  NAND _260_ (
    .A(data_in[6]),
    .B(_020_),
    .Y(_086_)
  );
  NAND _261_ (
    .A(data_out[14]),
    .B(_021_),
    .Y(_087_)
  );
  NAND _262_ (
    .A(_086_),
    .B(_087_),
    .Y(_000_[14])
  );
  NAND _263_ (
    .A(data_in[7]),
    .B(_020_),
    .Y(_088_)
  );
  NAND _264_ (
    .A(data_out[15]),
    .B(_021_),
    .Y(_089_)
  );
  NAND _265_ (
    .A(_088_),
    .B(_089_),
    .Y(_000_[15])
  );
  NOR _266_ (
    .A(data_in[0]),
    .B(_008_),
    .Y(_090_)
  );
  NAND _267_ (
    .A(reset_L),
    .B(data_out[0]),
    .Y(_091_)
  );
  NAND _268_ (
    .A(_008_),
    .B(_091_),
    .Y(_092_)
  );
  NOT _269_ (
    .A(_092_),
    .Y(_093_)
  );
  NOR _270_ (
    .A(_090_),
    .B(_093_),
    .Y(_000_[0])
  );
  NOR _271_ (
    .A(data_in[1]),
    .B(_008_),
    .Y(_094_)
  );
  NAND _272_ (
    .A(reset_L),
    .B(data_out[1]),
    .Y(_095_)
  );
  NAND _273_ (
    .A(_008_),
    .B(_095_),
    .Y(_096_)
  );
  NOT _274_ (
    .A(_096_),
    .Y(_097_)
  );
  NOR _275_ (
    .A(_094_),
    .B(_097_),
    .Y(_000_[1])
  );
  NOR _276_ (
    .A(data_in[2]),
    .B(_008_),
    .Y(_098_)
  );
  NAND _277_ (
    .A(reset_L),
    .B(data_out[2]),
    .Y(_099_)
  );
  NAND _278_ (
    .A(_008_),
    .B(_099_),
    .Y(_100_)
  );
  NOT _279_ (
    .A(_100_),
    .Y(_101_)
  );
  NOR _280_ (
    .A(_098_),
    .B(_101_),
    .Y(_000_[2])
  );
  NOR _281_ (
    .A(data_in[3]),
    .B(_008_),
    .Y(_102_)
  );
  NAND _282_ (
    .A(reset_L),
    .B(data_out[3]),
    .Y(_103_)
  );
  NAND _283_ (
    .A(_008_),
    .B(_103_),
    .Y(_104_)
  );
  NOT _284_ (
    .A(_104_),
    .Y(_105_)
  );
  NOR _285_ (
    .A(_102_),
    .B(_105_),
    .Y(_000_[3])
  );
  NOR _286_ (
    .A(data_in[4]),
    .B(_008_),
    .Y(_106_)
  );
  NAND _287_ (
    .A(reset_L),
    .B(data_out[4]),
    .Y(_107_)
  );
  NAND _288_ (
    .A(_008_),
    .B(_107_),
    .Y(_108_)
  );
  NOT _289_ (
    .A(_108_),
    .Y(_109_)
  );
  NOR _290_ (
    .A(_106_),
    .B(_109_),
    .Y(_000_[4])
  );
  NOR _291_ (
    .A(data_in[5]),
    .B(_008_),
    .Y(_110_)
  );
  NAND _292_ (
    .A(reset_L),
    .B(data_out[5]),
    .Y(_111_)
  );
  NAND _293_ (
    .A(_008_),
    .B(_111_),
    .Y(_112_)
  );
  NOT _294_ (
    .A(_112_),
    .Y(_113_)
  );
  NOR _295_ (
    .A(_110_),
    .B(_113_),
    .Y(_000_[5])
  );
  NOR _296_ (
    .A(data_in[6]),
    .B(_008_),
    .Y(_114_)
  );
  NAND _297_ (
    .A(reset_L),
    .B(data_out[6]),
    .Y(_115_)
  );
  NAND _298_ (
    .A(_008_),
    .B(_115_),
    .Y(_116_)
  );
  NOT _299_ (
    .A(_116_),
    .Y(_117_)
  );
  NOR _300_ (
    .A(_114_),
    .B(_117_),
    .Y(_000_[6])
  );
  NOR _301_ (
    .A(data_in[7]),
    .B(_008_),
    .Y(_118_)
  );
  NAND _302_ (
    .A(reset_L),
    .B(data_out[7]),
    .Y(_119_)
  );
  NAND _303_ (
    .A(_008_),
    .B(_119_),
    .Y(_120_)
  );
  NOT _304_ (
    .A(_120_),
    .Y(_121_)
  );
  NOR _305_ (
    .A(_118_),
    .B(_121_),
    .Y(_000_[7])
  );
  NOR _306_ (
    .A(_132_),
    .B(valid_in),
    .Y(_122_)
  );
  NOR _307_ (
    .A(valid_out),
    .B(_013_),
    .Y(_123_)
  );
  NOR _308_ (
    .A(_122_),
    .B(_123_),
    .Y(_001_)
  );
  DFF _309_ (
    .C(clk_4f),
    .D(_002_),
    .Q(selector[0])
  );
  DFF _310_ (
    .C(clk_4f),
    .D(_003_),
    .Q(selector[1])
  );
  DFF _311_ (
    .C(clk_4f),
    .D(_004_),
    .Q(selector[2])
  );
  DFF _312_ (
    .C(clk_4f),
    .D(_005_),
    .Q(selector[3])
  );
  (* src = "synth.v:13" *)
  DFF _313_ (
    .C(clk_4f),
    .D(_001_),
    .Q(valid_out)
  );
  (* src = "synth.v:13" *)
  DFF _314_ (
    .C(clk_4f),
    .D(_000_[0]),
    .Q(data_out[0])
  );
  (* src = "synth.v:13" *)
  DFF _315_ (
    .C(clk_4f),
    .D(_000_[1]),
    .Q(data_out[1])
  );
  (* src = "synth.v:13" *)
  DFF _316_ (
    .C(clk_4f),
    .D(_000_[2]),
    .Q(data_out[2])
  );
  (* src = "synth.v:13" *)
  DFF _317_ (
    .C(clk_4f),
    .D(_000_[3]),
    .Q(data_out[3])
  );
  (* src = "synth.v:13" *)
  DFF _318_ (
    .C(clk_4f),
    .D(_000_[4]),
    .Q(data_out[4])
  );
  (* src = "synth.v:13" *)
  DFF _319_ (
    .C(clk_4f),
    .D(_000_[5]),
    .Q(data_out[5])
  );
  (* src = "synth.v:13" *)
  DFF _320_ (
    .C(clk_4f),
    .D(_000_[6]),
    .Q(data_out[6])
  );
  (* src = "synth.v:13" *)
  DFF _321_ (
    .C(clk_4f),
    .D(_000_[7]),
    .Q(data_out[7])
  );
  (* src = "synth.v:13" *)
  DFF _322_ (
    .C(clk_4f),
    .D(_000_[8]),
    .Q(data_out[8])
  );
  (* src = "synth.v:13" *)
  DFF _323_ (
    .C(clk_4f),
    .D(_000_[9]),
    .Q(data_out[9])
  );
  (* src = "synth.v:13" *)
  DFF _324_ (
    .C(clk_4f),
    .D(_000_[10]),
    .Q(data_out[10])
  );
  (* src = "synth.v:13" *)
  DFF _325_ (
    .C(clk_4f),
    .D(_000_[11]),
    .Q(data_out[11])
  );
  (* src = "synth.v:13" *)
  DFF _326_ (
    .C(clk_4f),
    .D(_000_[12]),
    .Q(data_out[12])
  );
  (* src = "synth.v:13" *)
  DFF _327_ (
    .C(clk_4f),
    .D(_000_[13]),
    .Q(data_out[13])
  );
  (* src = "synth.v:13" *)
  DFF _328_ (
    .C(clk_4f),
    .D(_000_[14]),
    .Q(data_out[14])
  );
  (* src = "synth.v:13" *)
  DFF _329_ (
    .C(clk_4f),
    .D(_000_[15]),
    .Q(data_out[15])
  );
  (* src = "synth.v:13" *)
  DFF _330_ (
    .C(clk_4f),
    .D(_000_[16]),
    .Q(data_out[16])
  );
  (* src = "synth.v:13" *)
  DFF _331_ (
    .C(clk_4f),
    .D(_000_[17]),
    .Q(data_out[17])
  );
  (* src = "synth.v:13" *)
  DFF _332_ (
    .C(clk_4f),
    .D(_000_[18]),
    .Q(data_out[18])
  );
  (* src = "synth.v:13" *)
  DFF _333_ (
    .C(clk_4f),
    .D(_000_[19]),
    .Q(data_out[19])
  );
  (* src = "synth.v:13" *)
  DFF _334_ (
    .C(clk_4f),
    .D(_000_[20]),
    .Q(data_out[20])
  );
  (* src = "synth.v:13" *)
  DFF _335_ (
    .C(clk_4f),
    .D(_000_[21]),
    .Q(data_out[21])
  );
  (* src = "synth.v:13" *)
  DFF _336_ (
    .C(clk_4f),
    .D(_000_[22]),
    .Q(data_out[22])
  );
  (* src = "synth.v:13" *)
  DFF _337_ (
    .C(clk_4f),
    .D(_000_[23]),
    .Q(data_out[23])
  );
  (* src = "synth.v:13" *)
  DFF _338_ (
    .C(clk_4f),
    .D(_000_[24]),
    .Q(data_out[24])
  );
  (* src = "synth.v:13" *)
  DFF _339_ (
    .C(clk_4f),
    .D(_000_[25]),
    .Q(data_out[25])
  );
  (* src = "synth.v:13" *)
  DFF _340_ (
    .C(clk_4f),
    .D(_000_[26]),
    .Q(data_out[26])
  );
  (* src = "synth.v:13" *)
  DFF _341_ (
    .C(clk_4f),
    .D(_000_[27]),
    .Q(data_out[27])
  );
  (* src = "synth.v:13" *)
  DFF _342_ (
    .C(clk_4f),
    .D(_000_[28]),
    .Q(data_out[28])
  );
  (* src = "synth.v:13" *)
  DFF _343_ (
    .C(clk_4f),
    .D(_000_[29]),
    .Q(data_out[29])
  );
  (* src = "synth.v:13" *)
  DFF _344_ (
    .C(clk_4f),
    .D(_000_[30]),
    .Q(data_out[30])
  );
  (* src = "synth.v:13" *)
  DFF _345_ (
    .C(clk_4f),
    .D(_000_[31]),
    .Q(data_out[31])
  );
endmodule
