; ModuleID = './t1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_t1 = type { %struct.opj_mqc*, %struct.opj_raw*, i32*, i16*, i32, i32, i32, i32, i32 }
%struct.opj_mqc = type { i32, i32, i32, i8*, i8*, i8*, [19 x %struct.opj_mqc_state*], %struct.opj_mqc_state** }
%struct.opj_mqc_state = type { i32, i32, %struct.opj_mqc_state*, %struct.opj_mqc_state* }
%struct.opj_raw = type { i8, i32, i32, i32, i8*, i8*, i8* }
%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_tcd_cblk_dec = type { i8*, %struct.opj_tcd_seg*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_seg = type { i8**, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_tile = type { i32, i32, i32, i32, i32, %struct.opj_tcd_tilecomp*, i32, double, [100 x double], i32 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }

@opj_t1_updateflags.mod = internal constant [8 x i16] [i16 64, i16 1088, i16 32, i16 544, i16 128, i16 2176, i16 16, i16 272], align 16
@lut_ctxno_zc = internal global [1024 x i8] c"\00\01\01\02\01\02\02\02\01\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\00\01\01\02\01\02\02\02\01\02\02\02\02\02\02\02\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\00\01\01\02\01\02\02\02\01\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\00\03\03\06\03\06\06\08\03\06\06\08\06\08\08\08\01\04\04\07\04\07\07\08\04\07\07\08\07\08\08\08\01\04\04\07\04\07\07\08\04\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\01\04\04\07\04\07\07\08\04\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\01\04\04\07\04\07\07\08\04\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08\02\05\05\07\05\07\07\08\05\07\07\08\07\08\08\08", align 16
@lut_ctxno_sc = internal global [256 x i8] c"\09\0A\0C\0D\0A\0A\0D\0D\0C\0D\0C\0D\0D\0D\0D\0D\09\0A\0C\0B\0A\09\0D\0C\0C\0B\0C\0B\0D\0C\0D\0C\09\0A\0C\0B\0A\0A\0B\0B\0C\0D\09\0A\0D\0D\0A\0A\09\0A\0C\0D\0A\09\0B\0C\0C\0B\09\0A\0D\0C\0A\09\09\0A\0C\0D\0A\09\0B\0C\0C\0D\0C\0D\0B\0C\0B\0C\09\0A\0C\0B\0A\0A\0B\0B\0C\0B\0C\0B\0B\0B\0B\0B\09\0A\0C\0B\0A\09\0D\0C\0C\0D\09\0A\0B\0C\0A\09\09\0A\0C\0D\0A\0A\0D\0D\0C\0B\09\0A\0B\0B\0A\0A\09\0A\0C\0D\0A\0A\0D\0D\0C\0B\09\0A\0B\0B\0A\0A\09\0A\0C\0B\0A\09\0D\0C\0C\0D\09\0A\0B\0C\0A\09\09\0A\0C\0B\0A\0A\0B\0B\0C\0B\0C\0B\0B\0B\0B\0B\09\0A\0C\0D\0A\09\0B\0C\0C\0D\0C\0D\0B\0C\0B\0C\09\0A\0C\0D\0A\09\0B\0C\0C\0B\09\0A\0D\0C\0A\09\09\0A\0C\0B\0A\0A\0B\0B\0C\0D\09\0A\0D\0D\0A\0A\09\0A\0C\0B\0A\09\0D\0C\0C\0B\0C\0B\0D\0C\0D\0C\09\0A\0C\0D\0A\0A\0D\0D\0C\0D\0C\0D\0D\0D\0D\0D", align 16
@lut_spb = internal global [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\01\01\00\00\00\00\00\00\00\00\00\01\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\00\01\01\00\00\00\00\00\00\01\00\00\01\01\01\01\01\01\01\00\00\00\01\00\00\01\01\00\00\00\00\00\00\00\00\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\01\01\00\01\01\01\00\00\00\00\01\01\00\00\01\01\01\01\01\01\01\01\01\01\00\01\01\01\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\00\00\01\01\00\00\01\01\01\00\00\01\00\00\01\01\00\00\01\01\00\01\01\01\01\01\00\00\01\01\01\00\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@lut_nmsedec_sig = internal global [128 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 384, i16 768, i16 1152, i16 1536, i16 1920, i16 2304, i16 2688, i16 3072, i16 3456, i16 3840, i16 4224, i16 4608, i16 4992, i16 5376, i16 5760, i16 6144, i16 6528, i16 6912, i16 7296, i16 7680, i16 8064, i16 8448, i16 8832, i16 9216, i16 9600, i16 9984, i16 10368, i16 10752, i16 11136, i16 11520, i16 11904, i16 12288, i16 12672, i16 13056, i16 13440, i16 13824, i16 14208, i16 14592, i16 14976, i16 15360, i16 15744, i16 16128, i16 16512, i16 16896, i16 17280, i16 17664, i16 18048, i16 18432, i16 18816, i16 19200, i16 19584, i16 19968, i16 20352, i16 20736, i16 21120, i16 21504, i16 21888, i16 22272, i16 22656, i16 23040, i16 23424, i16 23808, i16 24192, i16 24576, i16 24960, i16 25344, i16 25728, i16 26112, i16 26496, i16 26880, i16 27264, i16 27648, i16 28032, i16 28416, i16 28800, i16 29184, i16 29568, i16 29952, i16 30336], align 16
@lut_nmsedec_sig0 = internal global [128 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 384, i16 384, i16 512, i16 512, i16 640, i16 640, i16 768, i16 768, i16 896, i16 1024, i16 1024, i16 1152, i16 1280, i16 1408, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2944, i16 3072, i16 3200, i16 3328, i16 3584, i16 3712, i16 3840, i16 4096, i16 4224, i16 4480, i16 4608, i16 4864, i16 4992, i16 5248, i16 5376, i16 5632, i16 5888, i16 6016, i16 6272, i16 6528, i16 6784, i16 6912, i16 7168, i16 7424, i16 7680, i16 7936, i16 8192, i16 8448, i16 8704, i16 8960, i16 9216, i16 9472, i16 9856, i16 10112, i16 10368, i16 10624, i16 11008, i16 11264, i16 11520, i16 11904, i16 12160, i16 12544, i16 12800, i16 13184, i16 13440, i16 13824, i16 14080, i16 14464, i16 14848, i16 15104, i16 15488, i16 15872, i16 16256, i16 16512, i16 16896, i16 17280, i16 17664, i16 18048, i16 18432, i16 18816, i16 19200, i16 19584, i16 19968, i16 20352, i16 20864, i16 21248, i16 21632, i16 22016, i16 22528, i16 22912, i16 23296, i16 23808, i16 24192, i16 24704, i16 25088, i16 25600, i16 25984, i16 26496, i16 26880, i16 27392, i16 27904, i16 28288, i16 28800, i16 29312, i16 29824, i16 30208, i16 30720, i16 31232, i16 31744, i16 32256], align 16
@lut_nmsedec_ref = internal global [128 x i16] [i16 6144, i16 6016, i16 5888, i16 5760, i16 5632, i16 5504, i16 5376, i16 5248, i16 5120, i16 4992, i16 4864, i16 4736, i16 4608, i16 4480, i16 4352, i16 4224, i16 4096, i16 3968, i16 3840, i16 3712, i16 3584, i16 3456, i16 3328, i16 3200, i16 3072, i16 2944, i16 2816, i16 2688, i16 2560, i16 2432, i16 2304, i16 2176, i16 2048, i16 1920, i16 1792, i16 1664, i16 1536, i16 1408, i16 1280, i16 1152, i16 1024, i16 896, i16 768, i16 640, i16 512, i16 384, i16 256, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 256, i16 384, i16 512, i16 640, i16 768, i16 896, i16 1024, i16 1152, i16 1280, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2816, i16 2944, i16 3072, i16 3200, i16 3328, i16 3456, i16 3584, i16 3712, i16 3840, i16 3968, i16 4096, i16 4224, i16 4352, i16 4480, i16 4608, i16 4736, i16 4864, i16 4992, i16 5120, i16 5248, i16 5376, i16 5504, i16 5632, i16 5760, i16 5888, i16 6016], align 16
@lut_nmsedec_ref0 = internal global [128 x i16] [i16 8192, i16 7936, i16 7680, i16 7424, i16 7168, i16 6912, i16 6784, i16 6528, i16 6272, i16 6016, i16 5888, i16 5632, i16 5376, i16 5248, i16 4992, i16 4864, i16 4608, i16 4480, i16 4224, i16 4096, i16 3840, i16 3712, i16 3584, i16 3328, i16 3200, i16 3072, i16 2944, i16 2688, i16 2560, i16 2432, i16 2304, i16 2176, i16 2048, i16 1920, i16 1792, i16 1664, i16 1536, i16 1408, i16 1408, i16 1280, i16 1152, i16 1024, i16 1024, i16 896, i16 768, i16 768, i16 640, i16 640, i16 512, i16 512, i16 384, i16 384, i16 256, i16 256, i16 256, i16 128, i16 128, i16 128, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 384, i16 384, i16 512, i16 512, i16 640, i16 640, i16 768, i16 768, i16 896, i16 1024, i16 1024, i16 1152, i16 1280, i16 1408, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2944, i16 3072, i16 3200, i16 3328, i16 3584, i16 3712, i16 3840, i16 4096, i16 4224, i16 4480, i16 4608, i16 4864, i16 4992, i16 5248, i16 5376, i16 5632, i16 5888, i16 6016, i16 6272, i16 6528, i16 6784, i16 6912, i16 7168, i16 7424, i16 7680, i16 7936], align 16

; Function Attrs: nounwind uwtable
define i32 @opj_t1_allocate_buffers(%struct.opj_t1* %t1, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.opj_t1*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %datasize = alloca i32, align 4
  %flagssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast i32* %datasize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %w.addr, align 4, !tbaa !5
  %2 = load i32, i32* %h.addr, align 4, !tbaa !5
  %mul = mul i32 %1, %2
  store i32 %mul, i32* %datasize, align 4, !tbaa !5
  %3 = bitcast i32* %flagssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %datasize, align 4, !tbaa !5
  %5 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %datasize1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %5, i32 0, i32 6
  %6 = load i32, i32* %datasize1, align 4, !tbaa !7
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %7 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %7, i32 0, i32 2
  %8 = load i32*, i32** %data, align 8, !tbaa !9
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #6
  %10 = load i32, i32* %datasize, align 4, !tbaa !5
  %conv = zext i32 %10 to i64
  %mul2 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul2) #6
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 2
  store i32* %11, i32** %data3, align 8, !tbaa !9
  %13 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %13, i32 0, i32 2
  %14 = load i32*, i32** %data4, align 8, !tbaa !9
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load i32, i32* %datasize, align 4, !tbaa !5
  %16 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %datasize6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %16, i32 0, i32 6
  store i32 %15, i32* %datasize6, align 4, !tbaa !7
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %17 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %17, i32 0, i32 2
  %18 = load i32*, i32** %data8, align 8, !tbaa !9
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %datasize, align 4, !tbaa !5
  %conv9 = zext i32 %20 to i64
  %mul10 = mul i64 %conv9, 4
  %call11 = call i8* @memset(i8* %19, i32 0, i64 %mul10) #6
  %21 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add i32 %21, 2
  %22 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %22, i32 0, i32 8
  store i32 %add, i32* %flags_stride, align 4, !tbaa !10
  %23 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride12 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %23, i32 0, i32 8
  %24 = load i32, i32* %flags_stride12, align 4, !tbaa !10
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add13 = add i32 %25, 2
  %mul14 = mul i32 %24, %add13
  store i32 %mul14, i32* %flagssize, align 4, !tbaa !5
  %26 = load i32, i32* %flagssize, align 4, !tbaa !5
  %27 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flagssize15 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %27, i32 0, i32 7
  %28 = load i32, i32* %flagssize15, align 4, !tbaa !11
  %cmp16 = icmp ugt i32 %26, %28
  br i1 %cmp16, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end.7
  %29 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %29, i32 0, i32 3
  %30 = load i16*, i16** %flags, align 8, !tbaa !12
  %31 = bitcast i16* %30 to i8*
  call void @free(i8* %31) #6
  %32 = load i32, i32* %flagssize, align 4, !tbaa !5
  %conv19 = zext i32 %32 to i64
  %mul20 = mul i64 %conv19, 2
  %call21 = call noalias i8* @malloc(i64 %mul20) #6
  %33 = bitcast i8* %call21 to i16*
  %34 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags22 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %34, i32 0, i32 3
  store i16* %33, i16** %flags22, align 8, !tbaa !12
  %35 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags23 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %35, i32 0, i32 3
  %36 = load i16*, i16** %flags23, align 8, !tbaa !12
  %tobool24 = icmp ne i16* %36, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.18
  %37 = load i32, i32* %flagssize, align 4, !tbaa !5
  %38 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flagssize27 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %38, i32 0, i32 7
  store i32 %37, i32* %flagssize27, align 4, !tbaa !11
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %if.end.7
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags29 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 3
  %40 = load i16*, i16** %flags29, align 8, !tbaa !12
  %41 = bitcast i16* %40 to i8*
  %42 = load i32, i32* %flagssize, align 4, !tbaa !5
  %conv30 = zext i32 %42 to i64
  %mul31 = mul i64 %conv30, 2
  %call32 = call i8* @memset(i8* %41, i32 0, i64 %mul31) #6
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w33 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %44, i32 0, i32 4
  store i32 %43, i32* %w33, align 4, !tbaa !13
  %45 = load i32, i32* %h.addr, align 4, !tbaa !5
  %46 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h34 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %46, i32 0, i32 5
  store i32 %45, i32* %h34, align 4, !tbaa !14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.25, %if.then.5
  %47 = bitcast i32* %flagssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %datasize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.opj_t1* @opj_t1_create() #0 {
entry:
  %retval = alloca %struct.opj_t1*, align 8
  %l_t1 = alloca %struct.opj_t1*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_t1* null, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %call = call noalias i8* @malloc(i64 56) #6
  %1 = bitcast i8* %call to %struct.opj_t1*
  store %struct.opj_t1* %1, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %2 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_t1* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.opj_t1* null, %struct.opj_t1** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %4 = bitcast %struct.opj_t1* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 56) #6
  %call2 = call %struct.opj_mqc* @opj_mqc_create() #7
  %5 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %mqc = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %5, i32 0, i32 0
  store %struct.opj_mqc* %call2, %struct.opj_mqc** %mqc, align 8, !tbaa !15
  %6 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %mqc3 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %6, i32 0, i32 0
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc3, align 8, !tbaa !15
  %tobool4 = icmp ne %struct.opj_mqc* %7, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  call void @opj_t1_destroy(%struct.opj_t1* %8) #7
  store %struct.opj_t1* null, %struct.opj_t1** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct.opj_raw* @opj_raw_create() #7
  %9 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %raw = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %9, i32 0, i32 1
  store %struct.opj_raw* %call7, %struct.opj_raw** %raw, align 8, !tbaa !16
  %10 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  %raw8 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %10, i32 0, i32 1
  %11 = load %struct.opj_raw*, %struct.opj_raw** %raw8, align 8, !tbaa !16
  %tobool9 = icmp ne %struct.opj_raw* %11, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %12 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  call void @opj_t1_destroy(%struct.opj_t1* %12) #7
  store %struct.opj_t1* null, %struct.opj_t1** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %13 = load %struct.opj_t1*, %struct.opj_t1** %l_t1, align 8, !tbaa !1
  store %struct.opj_t1* %13, %struct.opj_t1** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %14 = bitcast %struct.opj_t1** %l_t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load %struct.opj_t1*, %struct.opj_t1** %retval
  ret %struct.opj_t1* %15
}

declare %struct.opj_mqc* @opj_mqc_create() #3

; Function Attrs: nounwind uwtable
define void @opj_t1_destroy(%struct.opj_t1* %p_t1) #0 {
entry:
  %p_t1.addr = alloca %struct.opj_t1*, align 8
  store %struct.opj_t1* %p_t1, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %0 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_t1* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %mqc = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %1, i32 0, i32 0
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !15
  call void @opj_mqc_destroy(%struct.opj_mqc* %2) #7
  %3 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  store %struct.opj_mqc* null, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  %4 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %raw = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %4, i32 0, i32 1
  %5 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !16
  call void @opj_raw_destroy(%struct.opj_raw* %5) #7
  %6 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %raw2 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %6, i32 0, i32 1
  store %struct.opj_raw* null, %struct.opj_raw** %raw2, align 8, !tbaa !16
  %7 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %7, i32 0, i32 2
  %8 = load i32*, i32** %data, align 8, !tbaa !9
  %tobool3 = icmp ne i32* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %9, i32 0, i32 2
  %10 = load i32*, i32** %data5, align 8, !tbaa !9
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #6
  %12 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 2
  store i32* null, i32** %data6, align 8, !tbaa !9
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %13 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %13, i32 0, i32 3
  %14 = load i16*, i16** %flags, align 8, !tbaa !12
  %tobool8 = icmp ne i16* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %15 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %flags10 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %15, i32 0, i32 3
  %16 = load i16*, i16** %flags10, align 8, !tbaa !12
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* %17) #6
  %18 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %flags11 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %18, i32 0, i32 3
  store i16* null, i16** %flags11, align 8, !tbaa !12
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %19 = load %struct.opj_t1*, %struct.opj_t1** %p_t1.addr, align 8, !tbaa !1
  %20 = bitcast %struct.opj_t1* %19 to i8*
  call void @free(i8* %20) #6
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

declare %struct.opj_raw* @opj_raw_create() #3

declare void @opj_mqc_destroy(%struct.opj_mqc*) #3

declare void @opj_raw_destroy(%struct.opj_raw*) #3

; Function Attrs: nounwind uwtable
define i32 @opj_t1_decode_cblks(%struct.opj_t1* %t1, %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tccp* %tccp) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.opj_t1*, align 8
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  %tccp.addr = alloca %struct.opj_tccp*, align 8
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %tile_w = alloca i32, align 4
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %band = alloca %struct.opj_tcd_band*, align 8
  %precinct = alloca %struct.opj_tcd_precinct*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_dec*, align 8
  %datap = alloca i32*, align 8
  %cblk_w = alloca i32, align 4
  %cblk_h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pres = alloca %struct.opj_tcd_resolution*, align 8
  %pres38 = alloca %struct.opj_tcd_resolution*, align 8
  %thresh = alloca i32, align 4
  %val = alloca i32, align 4
  %mag = alloca i32, align 4
  %tiledp = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %tiledp104 = alloca float*, align 8
  %tiledp2 = alloca float*, align 8
  %tmp118 = alloca float, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  store %struct.opj_tccp* %tccp, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %tile_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %5, i32 0, i32 2
  %6 = load i32, i32* %x1, align 4, !tbaa !17
  %7 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %7, i32 0, i32 0
  %8 = load i32, i32* %x0, align 4, !tbaa !19
  %sub = sub nsw i32 %6, %8
  store i32 %sub, i32* %tile_w, align 4, !tbaa !5
  store i32 0, i32* %resno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.153, %entry
  %9 = load i32, i32* %resno, align 4, !tbaa !5
  %10 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %minimum_num_resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %10, i32 0, i32 5
  %11 = load i32, i32* %minimum_num_resolutions, align 4, !tbaa !20
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end.155

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i32, i32* %resno, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %14, i32 0, i32 6
  %15 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %15, i64 %idxprom
  store %struct.opj_tcd_resolution* %arrayidx, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.147, %for.body
  %16 = load i32, i32* %bandno, align 4, !tbaa !5
  %17 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %17, i32 0, i32 6
  %18 = load i32, i32* %numbands, align 4, !tbaa !22
  %cmp2 = icmp ult i32 %16, %18
  br i1 %cmp2, label %for.body.3, label %for.end.149

for.body.3:                                       ; preds = %for.cond.1
  %19 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %bandno, align 4, !tbaa !5
  %idxprom4 = zext i32 %20 to i64
  %21 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %21, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i64 %idxprom4
  store %struct.opj_tcd_band* %arrayidx5, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  store i32 0, i32* %precno, align 4, !tbaa !5
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.141, %for.body.3
  %22 = load i32, i32* %precno, align 4, !tbaa !5
  %23 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %23, i32 0, i32 4
  %24 = load i32, i32* %pw, align 4, !tbaa !24
  %25 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %25, i32 0, i32 5
  %26 = load i32, i32* %ph, align 4, !tbaa !25
  %mul = mul i32 %24, %26
  %cmp7 = icmp ult i32 %22, %mul
  br i1 %cmp7, label %for.body.8, label %for.end.143

for.body.8:                                       ; preds = %for.cond.6
  %27 = bitcast %struct.opj_tcd_precinct** %precinct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %precno, align 4, !tbaa !5
  %idxprom9 = zext i32 %28 to i64
  %29 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %29, i32 0, i32 5
  %30 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !26
  %arrayidx10 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %30, i64 %idxprom9
  store %struct.opj_tcd_precinct* %arrayidx10, %struct.opj_tcd_precinct** %precinct, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.135, %for.body.8
  %31 = load i32, i32* %cblkno, align 4, !tbaa !5
  %32 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precinct, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %32, i32 0, i32 4
  %33 = load i32, i32* %cw, align 4, !tbaa !29
  %34 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precinct, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %34, i32 0, i32 5
  %35 = load i32, i32* %ch, align 4, !tbaa !31
  %mul12 = mul i32 %33, %35
  %cmp13 = icmp ult i32 %31, %mul12
  br i1 %cmp13, label %for.body.14, label %for.end.137

for.body.14:                                      ; preds = %for.cond.11
  %36 = bitcast %struct.opj_tcd_cblk_dec** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %cblkno, align 4, !tbaa !5
  %idxprom15 = zext i32 %37 to i64
  %38 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precinct, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %38, i32 0, i32 6
  %dec = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_dec**
  %39 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %dec, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %39, i64 %idxprom15
  store %struct.opj_tcd_cblk_dec* %arrayidx16, %struct.opj_tcd_cblk_dec** %cblk, align 8, !tbaa !1
  %40 = bitcast i32** %datap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast i32* %cblk_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %cblk_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %48 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk, align 8, !tbaa !1
  %49 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno17 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %49, i32 0, i32 4
  %50 = load i32, i32* %bandno17, align 4, !tbaa !32
  %51 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %roishift = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %51, i32 0, i32 9
  %52 = load i32, i32* %roishift, align 4, !tbaa !33
  %53 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %cblksty = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %53, i32 0, i32 4
  %54 = load i32, i32* %cblksty, align 4, !tbaa !35
  %call = call i32 @opj_t1_decode_cblk(%struct.opj_t1* %47, %struct.opj_tcd_cblk_dec* %48, i32 %50, i32 %52, i32 %54) #7
  %cmp18 = icmp eq i32 0, %call
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.14
  %55 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk, align 8, !tbaa !1
  %x019 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %55, i32 0, i32 2
  %56 = load i32, i32* %x019, align 4, !tbaa !36
  %57 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %x020 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %57, i32 0, i32 0
  %58 = load i32, i32* %x020, align 4, !tbaa !38
  %sub21 = sub nsw i32 %56, %58
  store i32 %sub21, i32* %x, align 4, !tbaa !5
  %59 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %59, i32 0, i32 3
  %60 = load i32, i32* %y0, align 4, !tbaa !39
  %61 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %y022 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %61, i32 0, i32 1
  %62 = load i32, i32* %y022, align 4, !tbaa !40
  %sub23 = sub nsw i32 %60, %62
  store i32 %sub23, i32* %y, align 4, !tbaa !5
  %63 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno24 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %63, i32 0, i32 4
  %64 = load i32, i32* %bandno24, align 4, !tbaa !32
  %and = and i32 %64, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end
  %65 = bitcast %struct.opj_tcd_resolution** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i32, i32* %resno, align 4, !tbaa !5
  %sub26 = sub i32 %66, 1
  %idxprom27 = zext i32 %sub26 to i64
  %67 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions28 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %67, i32 0, i32 6
  %68 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions28, align 8, !tbaa !21
  %arrayidx29 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %68, i64 %idxprom27
  store %struct.opj_tcd_resolution* %arrayidx29, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %69 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %x130 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %69, i32 0, i32 2
  %70 = load i32, i32* %x130, align 4, !tbaa !41
  %71 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %x031 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %71, i32 0, i32 0
  %72 = load i32, i32* %x031, align 4, !tbaa !42
  %sub32 = sub nsw i32 %70, %72
  %73 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %73, %sub32
  store i32 %add, i32* %x, align 4, !tbaa !5
  %74 = bitcast %struct.opj_tcd_resolution** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %if.end
  %75 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno34 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %75, i32 0, i32 4
  %76 = load i32, i32* %bandno34, align 4, !tbaa !32
  %and35 = and i32 %76, 2
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %if.end.33
  %77 = bitcast %struct.opj_tcd_resolution** %pres38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i32, i32* %resno, align 4, !tbaa !5
  %sub39 = sub i32 %78, 1
  %idxprom40 = zext i32 %sub39 to i64
  %79 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions41 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %79, i32 0, i32 6
  %80 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions41, align 8, !tbaa !21
  %arrayidx42 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %80, i64 %idxprom40
  store %struct.opj_tcd_resolution* %arrayidx42, %struct.opj_tcd_resolution** %pres38, align 8, !tbaa !1
  %81 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres38, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %81, i32 0, i32 3
  %82 = load i32, i32* %y1, align 4, !tbaa !43
  %83 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres38, align 8, !tbaa !1
  %y043 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %83, i32 0, i32 1
  %84 = load i32, i32* %y043, align 4, !tbaa !44
  %sub44 = sub nsw i32 %82, %84
  %85 = load i32, i32* %y, align 4, !tbaa !5
  %add45 = add nsw i32 %85, %sub44
  store i32 %add45, i32* %y, align 4, !tbaa !5
  %86 = bitcast %struct.opj_tcd_resolution** %pres38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.37, %if.end.33
  %87 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %87, i32 0, i32 2
  %88 = load i32*, i32** %data, align 8, !tbaa !9
  store i32* %88, i32** %datap, align 8, !tbaa !1
  %89 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %89, i32 0, i32 4
  %90 = load i32, i32* %w, align 4, !tbaa !13
  store i32 %90, i32* %cblk_w, align 4, !tbaa !5
  %91 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %91, i32 0, i32 5
  %92 = load i32, i32* %h, align 4, !tbaa !14
  store i32 %92, i32* %cblk_h, align 4, !tbaa !5
  %93 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %roishift47 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %93, i32 0, i32 9
  %94 = load i32, i32* %roishift47, align 4, !tbaa !33
  %tobool48 = icmp ne i32 %94, 0
  br i1 %tobool48, label %if.then.49, label %if.end.75

if.then.49:                                       ; preds = %if.end.46
  %95 = bitcast i32* %thresh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %roishift50 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %96, i32 0, i32 9
  %97 = load i32, i32* %roishift50, align 4, !tbaa !33
  %shl = shl i32 1, %97
  store i32 %shl, i32* %thresh, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.72, %if.then.49
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %99 = load i32, i32* %cblk_h, align 4, !tbaa !5
  %cmp52 = icmp ult i32 %98, %99
  br i1 %cmp52, label %for.body.53, label %for.end.74

for.body.53:                                      ; preds = %for.cond.51
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %for.body.53
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %101 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %cmp55 = icmp ult i32 %100, %101
  br i1 %cmp55, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.54
  %102 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %104 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %mul57 = mul i32 %103, %104
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %add58 = add i32 %mul57, %105
  %idxprom59 = zext i32 %add58 to i64
  %106 = load i32*, i32** %datap, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %106, i64 %idxprom59
  %107 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  store i32 %107, i32* %val, align 4, !tbaa !5
  %108 = bitcast i32* %mag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load i32, i32* %val, align 4, !tbaa !5
  %call61 = call i32 @abs(i32 %109) #8
  store i32 %call61, i32* %mag, align 4, !tbaa !5
  %110 = load i32, i32* %mag, align 4, !tbaa !5
  %111 = load i32, i32* %thresh, align 4, !tbaa !5
  %cmp62 = icmp sge i32 %110, %111
  br i1 %cmp62, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %for.body.56
  %112 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %roishift64 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %112, i32 0, i32 9
  %113 = load i32, i32* %roishift64, align 4, !tbaa !33
  %114 = load i32, i32* %mag, align 4, !tbaa !5
  %shr = ashr i32 %114, %113
  store i32 %shr, i32* %mag, align 4, !tbaa !5
  %115 = load i32, i32* %val, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %115, 0
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.63
  %116 = load i32, i32* %mag, align 4, !tbaa !5
  %sub66 = sub nsw i32 0, %116
  br label %cond.end

cond.false:                                       ; preds = %if.then.63
  %117 = load i32, i32* %mag, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub66, %cond.true ], [ %117, %cond.false ]
  %118 = load i32, i32* %j, align 4, !tbaa !5
  %119 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %mul67 = mul i32 %118, %119
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %add68 = add i32 %mul67, %120
  %idxprom69 = zext i32 %add68 to i64
  %121 = load i32*, i32** %datap, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i32, i32* %121, i64 %idxprom69
  store i32 %cond, i32* %arrayidx70, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %cond.end, %for.body.56
  %122 = bitcast i32* %mag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %124, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end
  %125 = load i32, i32* %j, align 4, !tbaa !5
  %inc73 = add i32 %125, 1
  store i32 %inc73, i32* %j, align 4, !tbaa !5
  br label %for.cond.51

for.end.74:                                       ; preds = %for.cond.51
  %126 = bitcast i32* %thresh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %if.end.46
  %127 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %127, i32 0, i32 5
  %128 = load i32, i32* %qmfbid, align 4, !tbaa !45
  %cmp76 = icmp eq i32 %128, 1
  br i1 %cmp76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.end.75
  %129 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load i32, i32* %y, align 4, !tbaa !5
  %131 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul78 = mul i32 %130, %131
  %132 = load i32, i32* %x, align 4, !tbaa !5
  %add79 = add i32 %mul78, %132
  %idxprom80 = zext i32 %add79 to i64
  %133 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data81 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %133, i32 0, i32 8
  %134 = load i32*, i32** %data81, align 8, !tbaa !46
  %arrayidx82 = getelementptr inbounds i32, i32* %134, i64 %idxprom80
  store i32* %arrayidx82, i32** %tiledp, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.100, %if.then.77
  %135 = load i32, i32* %j, align 4, !tbaa !5
  %136 = load i32, i32* %cblk_h, align 4, !tbaa !5
  %cmp84 = icmp ult i32 %135, %136
  br i1 %cmp84, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.83
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.97, %for.body.85
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %138 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %cmp87 = icmp ult i32 %137, %138
  br i1 %cmp87, label %for.body.88, label %for.end.99

for.body.88:                                      ; preds = %for.cond.86
  %139 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = load i32, i32* %j, align 4, !tbaa !5
  %141 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %mul89 = mul i32 %140, %141
  %142 = load i32, i32* %i, align 4, !tbaa !5
  %add90 = add i32 %mul89, %142
  %idxprom91 = zext i32 %add90 to i64
  %143 = load i32*, i32** %datap, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i32, i32* %143, i64 %idxprom91
  %144 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  store i32 %144, i32* %tmp, align 4, !tbaa !5
  %145 = load i32, i32* %tmp, align 4, !tbaa !5
  %div = sdiv i32 %145, 2
  %146 = load i32, i32* %j, align 4, !tbaa !5
  %147 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul93 = mul i32 %146, %147
  %148 = load i32, i32* %i, align 4, !tbaa !5
  %add94 = add i32 %mul93, %148
  %idxprom95 = zext i32 %add94 to i64
  %149 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i32, i32* %149, i64 %idxprom95
  store i32 %div, i32* %arrayidx96, align 4, !tbaa !5
  %150 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.88
  %151 = load i32, i32* %i, align 4, !tbaa !5
  %inc98 = add i32 %151, 1
  store i32 %inc98, i32* %i, align 4, !tbaa !5
  br label %for.cond.86

for.end.99:                                       ; preds = %for.cond.86
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %152 = load i32, i32* %j, align 4, !tbaa !5
  %inc101 = add i32 %152, 1
  store i32 %inc101, i32* %j, align 4, !tbaa !5
  br label %for.cond.83

for.end.102:                                      ; preds = %for.cond.83
  %153 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  br label %if.end.127

if.else:                                          ; preds = %if.end.75
  %154 = bitcast float** %tiledp104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = load i32, i32* %y, align 4, !tbaa !5
  %156 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul105 = mul i32 %155, %156
  %157 = load i32, i32* %x, align 4, !tbaa !5
  %add106 = add i32 %mul105, %157
  %idxprom107 = zext i32 %add106 to i64
  %158 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data108 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %158, i32 0, i32 8
  %159 = load i32*, i32** %data108, align 8, !tbaa !46
  %arrayidx109 = getelementptr inbounds i32, i32* %159, i64 %idxprom107
  %160 = bitcast i32* %arrayidx109 to float*
  store float* %160, float** %tiledp104, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.124, %if.else
  %161 = load i32, i32* %j, align 4, !tbaa !5
  %162 = load i32, i32* %cblk_h, align 4, !tbaa !5
  %cmp111 = icmp ult i32 %161, %162
  br i1 %cmp111, label %for.body.112, label %for.end.126

for.body.112:                                     ; preds = %for.cond.110
  %163 = bitcast float** %tiledp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  %164 = load float*, float** %tiledp104, align 8, !tbaa !1
  store float* %164, float** %tiledp2, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.121, %for.body.112
  %165 = load i32, i32* %i, align 4, !tbaa !5
  %166 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %cmp115 = icmp ult i32 %165, %166
  br i1 %cmp115, label %for.body.116, label %for.end.123

for.body.116:                                     ; preds = %for.cond.114
  %167 = bitcast float* %tmp118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %168 = load i32*, i32** %datap, align 8, !tbaa !1
  %169 = load i32, i32* %168, align 4, !tbaa !5
  %conv = sitofp i32 %169 to float
  %170 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %stepsize = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %170, i32 0, i32 8
  %171 = load float, float* %stepsize, align 4, !tbaa !47
  %mul119 = fmul float %conv, %171
  store float %mul119, float* %tmp118, align 4, !tbaa !48
  %172 = load float, float* %tmp118, align 4, !tbaa !48
  %173 = load float*, float** %tiledp2, align 8, !tbaa !1
  store float %172, float* %173, align 4, !tbaa !48
  %174 = load i32*, i32** %datap, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %incdec.ptr, i32** %datap, align 8, !tbaa !1
  %175 = load float*, float** %tiledp2, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds float, float* %175, i32 1
  store float* %incdec.ptr120, float** %tiledp2, align 8, !tbaa !1
  %176 = bitcast float* %tmp118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.116
  %177 = load i32, i32* %i, align 4, !tbaa !5
  %inc122 = add i32 %177, 1
  store i32 %inc122, i32* %i, align 4, !tbaa !5
  br label %for.cond.114

for.end.123:                                      ; preds = %for.cond.114
  %178 = load i32, i32* %tile_w, align 4, !tbaa !5
  %179 = load float*, float** %tiledp104, align 8, !tbaa !1
  %idx.ext = zext i32 %178 to i64
  %add.ptr = getelementptr inbounds float, float* %179, i64 %idx.ext
  store float* %add.ptr, float** %tiledp104, align 8, !tbaa !1
  %180 = bitcast float** %tiledp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end.123
  %181 = load i32, i32* %j, align 4, !tbaa !5
  %inc125 = add i32 %181, 1
  store i32 %inc125, i32* %j, align 4, !tbaa !5
  br label %for.cond.110

for.end.126:                                      ; preds = %for.cond.110
  %182 = bitcast float** %tiledp104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.126, %for.end.102
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.127, %if.then
  %183 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %cblk_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %cblk_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32** %datap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast %struct.opj_tcd_cblk_dec** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.138 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.135

for.inc.135:                                      ; preds = %cleanup.cont
  %191 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc136 = add i32 %191, 1
  store i32 %inc136, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.11

for.end.137:                                      ; preds = %for.cond.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.138

cleanup.138:                                      ; preds = %for.end.137, %cleanup
  %192 = bitcast %struct.opj_tcd_precinct** %precinct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %cleanup.dest.139 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.139, label %cleanup.144 [
    i32 0, label %cleanup.cont.140
  ]

cleanup.cont.140:                                 ; preds = %cleanup.138
  br label %for.inc.141

for.inc.141:                                      ; preds = %cleanup.cont.140
  %193 = load i32, i32* %precno, align 4, !tbaa !5
  %inc142 = add i32 %193, 1
  store i32 %inc142, i32* %precno, align 4, !tbaa !5
  br label %for.cond.6

for.end.143:                                      ; preds = %for.cond.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %for.end.143, %cleanup.138
  %194 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %cleanup.dest.145 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.145, label %cleanup.150 [
    i32 0, label %cleanup.cont.146
  ]

cleanup.cont.146:                                 ; preds = %cleanup.144
  br label %for.inc.147

for.inc.147:                                      ; preds = %cleanup.cont.146
  %195 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc148 = add i32 %195, 1
  store i32 %inc148, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.1

for.end.149:                                      ; preds = %for.cond.1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %for.end.149, %cleanup.144
  %196 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %cleanup.156 [
    i32 0, label %cleanup.cont.152
  ]

cleanup.cont.152:                                 ; preds = %cleanup.150
  br label %for.inc.153

for.inc.153:                                      ; preds = %cleanup.cont.152
  %197 = load i32, i32* %resno, align 4, !tbaa !5
  %inc154 = add i32 %197, 1
  store i32 %inc154, i32* %resno, align 4, !tbaa !5
  br label %for.cond

for.end.155:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %for.end.155, %cleanup.150
  %198 = bitcast i32* %tile_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_t1_decode_cblk(%struct.opj_t1* %t1, %struct.opj_tcd_cblk_dec* %cblk, i32 %orient, i32 %roishift, i32 %cblksty) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.opj_t1*, align 8
  %cblk.addr = alloca %struct.opj_tcd_cblk_dec*, align 8
  %orient.addr = alloca i32, align 4
  %roishift.addr = alloca i32, align 4
  %cblksty.addr = alloca i32, align 4
  %raw = alloca %struct.opj_raw*, align 8
  %mqc = alloca %struct.opj_mqc*, align 8
  %bpno = alloca i32, align 4
  %passtype = alloca i32, align 4
  %segno = alloca i32, align 4
  %passno = alloca i32, align 4
  %type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %seg = alloca %struct.opj_tcd_seg*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_dec* %cblk, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %roishift, i32* %roishift.addr, align 4, !tbaa !5
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %raw1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %1, i32 0, i32 1
  %2 = load %struct.opj_raw*, %struct.opj_raw** %raw1, align 8, !tbaa !16
  store %struct.opj_raw* %2, %struct.opj_raw** %raw, align 8, !tbaa !1
  %3 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc2 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %4, i32 0, i32 0
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc2, align 8, !tbaa !15
  store %struct.opj_mqc* %5, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %6 = bitcast i32* %bpno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %passtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %segno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  call void @llvm.lifetime.start(i64 1, i8* %type) #1
  store i8 0, i8* %type, align 1, !tbaa !49
  %10 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %11 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %11, i32 0, i32 4
  %12 = load i32, i32* %x1, align 4, !tbaa !50
  %13 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %13, i32 0, i32 2
  %14 = load i32, i32* %x0, align 4, !tbaa !36
  %sub = sub nsw i32 %12, %14
  %15 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %15, i32 0, i32 5
  %16 = load i32, i32* %y1, align 4, !tbaa !51
  %17 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %17, i32 0, i32 3
  %18 = load i32, i32* %y0, align 4, !tbaa !39
  %sub3 = sub nsw i32 %16, %18
  %call = call i32 @opj_t1_allocate_buffers(%struct.opj_t1* %10, i32 %sub, i32 %sub3) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end:                                           ; preds = %entry
  %19 = load i32, i32* %roishift.addr, align 4, !tbaa !5
  %20 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %numbps = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %20, i32 0, i32 6
  %21 = load i32, i32* %numbps, align 4, !tbaa !52
  %add = add i32 %19, %21
  %sub4 = sub i32 %add, 1
  store i32 %sub4, i32* %bpno, align 4, !tbaa !5
  store i32 2, i32* %passtype, align 4, !tbaa !5
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_resetstates(%struct.opj_mqc* %22) #7
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %23, i32 18, i32 0, i32 46) #7
  %24 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %24, i32 17, i32 0, i32 3) #7
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %25, i32 0, i32 0, i32 4) #7
  store i32 0, i32* %segno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %if.end
  %26 = load i32, i32* %segno, align 4, !tbaa !5
  %27 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %real_num_segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %27, i32 0, i32 12
  %28 = load i32, i32* %real_num_segs, align 4, !tbaa !53
  %cmp = icmp ult i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %29 = bitcast %struct.opj_tcd_seg** %seg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i32, i32* %segno, align 4, !tbaa !5
  %idxprom = zext i32 %30 to i64
  %31 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %segs = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %31, i32 0, i32 1
  %32 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %segs, align 8, !tbaa !54
  %arrayidx = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %32, i64 %idxprom
  store %struct.opj_tcd_seg* %arrayidx, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %33 = load i32, i32* %bpno, align 4, !tbaa !5
  %34 = load %struct.opj_tcd_cblk_dec*, %struct.opj_tcd_cblk_dec** %cblk.addr, align 8, !tbaa !1
  %numbps5 = getelementptr inbounds %struct.opj_tcd_cblk_dec, %struct.opj_tcd_cblk_dec* %34, i32 0, i32 6
  %35 = load i32, i32* %numbps5, align 4, !tbaa !52
  %sub6 = sub nsw i32 %35, 1
  %sub7 = sub nsw i32 %sub6, 4
  %cmp8 = icmp sle i32 %33, %sub7
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body
  %36 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %36, 2
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %37 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %37, 1
  %tobool10 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.body
  %38 = phi i1 [ false, %land.lhs.true ], [ false, %for.body ], [ %tobool10, %land.rhs ]
  %cond = select i1 %38, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %type, align 1, !tbaa !49
  %39 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %39, i32 0, i32 0
  %40 = load i8**, i8*** %data, align 8, !tbaa !55
  %cmp11 = icmp eq i8** %40, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.end
  %41 = load i8, i8* %type, align 1, !tbaa !49
  %conv15 = zext i8 %41 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %42 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !1
  %43 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %data19 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %43, i32 0, i32 0
  %44 = load i8**, i8*** %data19, align 8, !tbaa !55
  %45 = load i8*, i8** %44, align 8, !tbaa !1
  %46 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %dataindex = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %46, i32 0, i32 1
  %47 = load i32, i32* %dataindex, align 4, !tbaa !57
  %idx.ext = zext i32 %47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  %48 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %48, i32 0, i32 4
  %49 = load i32, i32* %len, align 4, !tbaa !58
  call void @opj_raw_init_dec(%struct.opj_raw* %42, i8* %add.ptr, i32 %49) #7
  br label %if.end.30

if.else:                                          ; preds = %if.end.14
  %50 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %51 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %data20 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %51, i32 0, i32 0
  %52 = load i8**, i8*** %data20, align 8, !tbaa !55
  %53 = load i8*, i8** %52, align 8, !tbaa !1
  %54 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %dataindex21 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %54, i32 0, i32 1
  %55 = load i32, i32* %dataindex21, align 4, !tbaa !57
  %idx.ext22 = zext i32 %55 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %53, i64 %idx.ext22
  %56 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %len24 = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %56, i32 0, i32 4
  %57 = load i32, i32* %len24, align 4, !tbaa !58
  %call25 = call i32 @opj_mqc_init_dec(%struct.opj_mqc* %50, i8* %add.ptr23, i32 %57) #7
  %cmp26 = icmp eq i32 0, %call25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.18
  store i32 0, i32* %passno, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.end.30
  %58 = load i32, i32* %passno, align 4, !tbaa !5
  %59 = load %struct.opj_tcd_seg*, %struct.opj_tcd_seg** %seg, align 8, !tbaa !1
  %real_num_passes = getelementptr inbounds %struct.opj_tcd_seg, %struct.opj_tcd_seg* %59, i32 0, i32 3
  %60 = load i32, i32* %real_num_passes, align 4, !tbaa !59
  %cmp32 = icmp ult i32 %58, %60
  br i1 %cmp32, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.31
  %61 = load i32, i32* %passtype, align 4, !tbaa !5
  switch i32 %61, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %for.body.34
  %62 = load i8, i8* %type, align 1, !tbaa !49
  %conv35 = zext i8 %62 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %sw.bb
  %63 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %64 = load i32, i32* %bpno, align 4, !tbaa !5
  %add39 = add nsw i32 %64, 1
  %65 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %66 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_raw(%struct.opj_t1* %63, i32 %add39, i32 %65, i32 %66) #7
  br label %if.end.48

if.else.40:                                       ; preds = %sw.bb
  %67 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and41 = and i32 %67, 8
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.40
  %68 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %69 = load i32, i32* %bpno, align 4, !tbaa !5
  %add44 = add nsw i32 %69, 1
  %70 = load i32, i32* %orient.addr, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_mqc_vsc(%struct.opj_t1* %68, i32 %add44, i32 %70) #7
  br label %if.end.47

if.else.45:                                       ; preds = %if.else.40
  %71 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %72 = load i32, i32* %bpno, align 4, !tbaa !5
  %add46 = add nsw i32 %72, 1
  %73 = load i32, i32* %orient.addr, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_mqc(%struct.opj_t1* %71, i32 %add46, i32 %73) #7
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.38
  br label %sw.epilog

sw.bb.49:                                         ; preds = %for.body.34
  %74 = load i8, i8* %type, align 1, !tbaa !49
  %conv50 = zext i8 %74 to i32
  %cmp51 = icmp eq i32 %conv50, 1
  br i1 %cmp51, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %sw.bb.49
  %75 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %76 = load i32, i32* %bpno, align 4, !tbaa !5
  %add54 = add nsw i32 %76, 1
  %77 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_raw(%struct.opj_t1* %75, i32 %add54, i32 %77) #7
  br label %if.end.63

if.else.55:                                       ; preds = %sw.bb.49
  %78 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and56 = and i32 %78, 8
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.else.55
  %79 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %80 = load i32, i32* %bpno, align 4, !tbaa !5
  %add59 = add nsw i32 %80, 1
  call void @opj_t1_dec_refpass_mqc_vsc(%struct.opj_t1* %79, i32 %add59) #7
  br label %if.end.62

if.else.60:                                       ; preds = %if.else.55
  %81 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %82 = load i32, i32* %bpno, align 4, !tbaa !5
  %add61 = add nsw i32 %82, 1
  call void @opj_t1_dec_refpass_mqc(%struct.opj_t1* %81, i32 %add61) #7
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.53
  br label %sw.epilog

sw.bb.64:                                         ; preds = %for.body.34
  %83 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %84 = load i32, i32* %bpno, align 4, !tbaa !5
  %add65 = add nsw i32 %84, 1
  %85 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %86 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass(%struct.opj_t1* %83, i32 %add65, i32 %85, i32 %86) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.34, %sw.bb.64, %if.end.63, %if.end.48
  %87 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and66 = and i32 %87, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.73

land.lhs.true.68:                                 ; preds = %sw.epilog
  %88 = load i8, i8* %type, align 1, !tbaa !49
  %conv69 = zext i8 %88 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.68
  %89 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_resetstates(%struct.opj_mqc* %89) #7
  %90 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %90, i32 18, i32 0, i32 46) #7
  %91 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %91, i32 17, i32 0, i32 3) #7
  %92 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %92, i32 0, i32 0, i32 4) #7
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true.68, %sw.epilog
  %93 = load i32, i32* %passtype, align 4, !tbaa !5
  %inc = add i32 %93, 1
  store i32 %inc, i32* %passtype, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %inc, 3
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  store i32 0, i32* %passtype, align 4, !tbaa !5
  %94 = load i32, i32* %bpno, align 4, !tbaa !5
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %bpno, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %95 = load i32, i32* %passno, align 4, !tbaa !5
  %inc78 = add i32 %95, 1
  store i32 %inc78, i32* %passno, align 4, !tbaa !5
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.28, %if.then.13
  %96 = bitcast %struct.opj_tcd_seg** %seg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.82 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc.79
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.79

for.inc.79:                                       ; preds = %cleanup.cont, %cleanup
  %97 = load i32, i32* %segno, align 4, !tbaa !5
  %inc80 = add i32 %97, 1
  store i32 %inc80, i32* %segno, align 4, !tbaa !5
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %for.end.81, %cleanup, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %type) #1
  %98 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %segno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %passtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %bpno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define i32 @opj_t1_encode_cblks(%struct.opj_t1* %t1, %struct.opj_tcd_tile* %tile, %struct.opj_tcp* %tcp, double* %mct_norms) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.opj_t1*, align 8
  %tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %tcp.addr = alloca %struct.opj_tcp*, align 8
  %mct_norms.addr = alloca double*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %bandno = alloca i32, align 4
  %precno = alloca i32, align 4
  %cblkno = alloca i32, align 4
  %tilec = alloca %struct.opj_tcd_tilecomp*, align 8
  %tccp = alloca %struct.opj_tccp*, align 8
  %tile_w = alloca i32, align 4
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %band = alloca %struct.opj_tcd_band*, align 8
  %bandconst = alloca i32, align 4
  %prc = alloca %struct.opj_tcd_precinct*, align 8
  %cblk = alloca %struct.opj_tcd_cblk_enc*, align 8
  %datap = alloca i32*, align 8
  %tiledp = alloca i32*, align 8
  %cblk_w = alloca i32, align 4
  %cblk_h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pres = alloca %struct.opj_tcd_resolution*, align 8
  %pres45 = alloca %struct.opj_tcd_resolution*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store %struct.opj_tcd_tile* %tile, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  store %struct.opj_tcp* %tcp, %struct.opj_tcp** %tcp.addr, align 8, !tbaa !1
  store double* %mct_norms, double** %mct_norms.addr, align 8, !tbaa !1
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %distotile = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %5, i32 0, i32 7
  store double 0.000000e+00, double* %distotile, align 8, !tbaa !60
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.160, %entry
  %6 = load i32, i32* %compno, align 4, !tbaa !5
  %7 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %7, i32 0, i32 4
  %8 = load i32, i32* %numcomps, align 4, !tbaa !63
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.162

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %11, i32 0, i32 5
  %12 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %comps, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %12, i64 %idxprom
  store %struct.opj_tcd_tilecomp* %arrayidx, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %13 = bitcast %struct.opj_tccp** %tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom1 = zext i32 %14 to i64
  %15 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp.addr, align 8, !tbaa !1
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %15, i32 0, i32 13
  %16 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !65
  %arrayidx2 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %16, i64 %idxprom1
  store %struct.opj_tccp* %arrayidx2, %struct.opj_tccp** %tccp, align 8, !tbaa !1
  %17 = bitcast i32* %tile_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %18, i32 0, i32 2
  %19 = load i32, i32* %x1, align 4, !tbaa !17
  %20 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %20, i32 0, i32 0
  %21 = load i32, i32* %x0, align 4, !tbaa !19
  %sub = sub nsw i32 %19, %21
  store i32 %sub, i32* %tile_w, align 4, !tbaa !5
  store i32 0, i32* %resno, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.152, %for.body
  %22 = load i32, i32* %resno, align 4, !tbaa !5
  %23 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %23, i32 0, i32 4
  %24 = load i32, i32* %numresolutions, align 4, !tbaa !67
  %cmp4 = icmp ult i32 %22, %24
  br i1 %cmp4, label %for.body.5, label %for.end.154

for.body.5:                                       ; preds = %for.cond.3
  %25 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %resno, align 4, !tbaa !5
  %idxprom6 = zext i32 %26 to i64
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 0, i32 6
  %28 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !21
  %arrayidx7 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %28, i64 %idxprom6
  store %struct.opj_tcd_resolution* %arrayidx7, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  store i32 0, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.146, %for.body.5
  %29 = load i32, i32* %bandno, align 4, !tbaa !5
  %30 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %numbands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %30, i32 0, i32 6
  %31 = load i32, i32* %numbands, align 4, !tbaa !22
  %cmp9 = icmp ult i32 %29, %31
  br i1 %cmp9, label %for.body.10, label %for.end.148

for.body.10:                                      ; preds = %for.cond.8
  %32 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i32, i32* %bandno, align 4, !tbaa !5
  %idxprom11 = zext i32 %33 to i64
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %bands = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %34, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [3 x %struct.opj_tcd_band], [3 x %struct.opj_tcd_band]* %bands, i32 0, i64 %idxprom11
  store %struct.opj_tcd_band* %arrayidx12, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %35 = bitcast i32* %bandconst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %stepsize = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %36, i32 0, i32 8
  %37 = load float, float* %stepsize, align 4, !tbaa !47
  %mul = fmul float %37, 8.192000e+03
  %conv = fpext float %mul to double
  %call = call double @floor(double %conv) #8
  %conv13 = fptosi double %call to i32
  %div = sdiv i32 67108864, %conv13
  store i32 %div, i32* %bandconst, align 4, !tbaa !5
  store i32 0, i32* %precno, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.139, %for.body.10
  %38 = load i32, i32* %precno, align 4, !tbaa !5
  %39 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %pw = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %39, i32 0, i32 4
  %40 = load i32, i32* %pw, align 4, !tbaa !24
  %41 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %ph = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %41, i32 0, i32 5
  %42 = load i32, i32* %ph, align 4, !tbaa !25
  %mul15 = mul i32 %40, %42
  %cmp16 = icmp ult i32 %38, %mul15
  br i1 %cmp16, label %for.body.18, label %for.end.141

for.body.18:                                      ; preds = %for.cond.14
  %43 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i32, i32* %precno, align 4, !tbaa !5
  %idxprom19 = zext i32 %44 to i64
  %45 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %precincts = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %45, i32 0, i32 5
  %46 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %precincts, align 8, !tbaa !26
  %arrayidx20 = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %46, i64 %idxprom19
  store %struct.opj_tcd_precinct* %arrayidx20, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  store i32 0, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.133, %for.body.18
  %47 = load i32, i32* %cblkno, align 4, !tbaa !5
  %48 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %48, i32 0, i32 4
  %49 = load i32, i32* %cw, align 4, !tbaa !29
  %50 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %50, i32 0, i32 5
  %51 = load i32, i32* %ch, align 4, !tbaa !31
  %mul22 = mul i32 %49, %51
  %cmp23 = icmp ult i32 %47, %mul22
  br i1 %cmp23, label %for.body.25, label %for.end.135

for.body.25:                                      ; preds = %for.cond.21
  %52 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load i32, i32* %cblkno, align 4, !tbaa !5
  %idxprom26 = zext i32 %53 to i64
  %54 = load %struct.opj_tcd_precinct*, %struct.opj_tcd_precinct** %prc, align 8, !tbaa !1
  %cblks = getelementptr inbounds %struct.opj_tcd_precinct, %struct.opj_tcd_precinct* %54, i32 0, i32 6
  %enc = bitcast %union.anon* %cblks to %struct.opj_tcd_cblk_enc**
  %55 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %enc, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %55, i64 %idxprom26
  store %struct.opj_tcd_cblk_enc* %arrayidx27, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %56 = bitcast i32** %datap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast i32* %cblk_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %cblk_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %x028 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %63, i32 0, i32 3
  %64 = load i32, i32* %x028, align 4, !tbaa !68
  %65 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %x029 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %65, i32 0, i32 0
  %66 = load i32, i32* %x029, align 4, !tbaa !38
  %sub30 = sub nsw i32 %64, %66
  store i32 %sub30, i32* %x, align 4, !tbaa !5
  %67 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %68, i32 0, i32 4
  %69 = load i32, i32* %y0, align 4, !tbaa !70
  %70 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %y031 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %70, i32 0, i32 1
  %71 = load i32, i32* %y031, align 4, !tbaa !40
  %sub32 = sub nsw i32 %69, %71
  store i32 %sub32, i32* %y, align 4, !tbaa !5
  %72 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno33 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %72, i32 0, i32 4
  %73 = load i32, i32* %bandno33, align 4, !tbaa !32
  %and = and i32 %73, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.25
  %74 = bitcast %struct.opj_tcd_resolution** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i32, i32* %resno, align 4, !tbaa !5
  %sub34 = sub i32 %75, 1
  %idxprom35 = zext i32 %sub34 to i64
  %76 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %resolutions36 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %76, i32 0, i32 6
  %77 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions36, align 8, !tbaa !21
  %arrayidx37 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %77, i64 %idxprom35
  store %struct.opj_tcd_resolution* %arrayidx37, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %78 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %x138 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %78, i32 0, i32 2
  %79 = load i32, i32* %x138, align 4, !tbaa !41
  %80 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres, align 8, !tbaa !1
  %x039 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %80, i32 0, i32 0
  %81 = load i32, i32* %x039, align 4, !tbaa !42
  %sub40 = sub nsw i32 %79, %81
  %82 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %82, %sub40
  store i32 %add, i32* %x, align 4, !tbaa !5
  %83 = bitcast %struct.opj_tcd_resolution** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.25
  %84 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno41 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %84, i32 0, i32 4
  %85 = load i32, i32* %bandno41, align 4, !tbaa !32
  %and42 = and i32 %85, 2
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %if.end
  %86 = bitcast %struct.opj_tcd_resolution** %pres45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load i32, i32* %resno, align 4, !tbaa !5
  %sub46 = sub i32 %87, 1
  %idxprom47 = zext i32 %sub46 to i64
  %88 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %resolutions48 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %88, i32 0, i32 6
  %89 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions48, align 8, !tbaa !21
  %arrayidx49 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %89, i64 %idxprom47
  store %struct.opj_tcd_resolution* %arrayidx49, %struct.opj_tcd_resolution** %pres45, align 8, !tbaa !1
  %90 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres45, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %90, i32 0, i32 3
  %91 = load i32, i32* %y1, align 4, !tbaa !43
  %92 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %pres45, align 8, !tbaa !1
  %y050 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %92, i32 0, i32 1
  %93 = load i32, i32* %y050, align 4, !tbaa !44
  %sub51 = sub nsw i32 %91, %93
  %94 = load i32, i32* %y, align 4, !tbaa !5
  %add52 = add nsw i32 %94, %sub51
  store i32 %add52, i32* %y, align 4, !tbaa !5
  %95 = bitcast %struct.opj_tcd_resolution** %pres45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.44, %if.end
  %96 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %97 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %x154 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %97, i32 0, i32 5
  %98 = load i32, i32* %x154, align 4, !tbaa !71
  %99 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %x055 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %99, i32 0, i32 3
  %100 = load i32, i32* %x055, align 4, !tbaa !68
  %sub56 = sub nsw i32 %98, %100
  %101 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %y157 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %101, i32 0, i32 6
  %102 = load i32, i32* %y157, align 4, !tbaa !72
  %103 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %y058 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %103, i32 0, i32 4
  %104 = load i32, i32* %y058, align 4, !tbaa !70
  %sub59 = sub nsw i32 %102, %104
  %call60 = call i32 @opj_t1_allocate_buffers(%struct.opj_t1* %96, i32 %sub56, i32 %sub59) #7
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %if.end.53
  %105 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %105, i32 0, i32 2
  %106 = load i32*, i32** %data, align 8, !tbaa !9
  store i32* %106, i32** %datap, align 8, !tbaa !1
  %107 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %107, i32 0, i32 4
  %108 = load i32, i32* %w, align 4, !tbaa !13
  store i32 %108, i32* %cblk_w, align 4, !tbaa !5
  %109 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %109, i32 0, i32 5
  %110 = load i32, i32* %h, align 4, !tbaa !14
  store i32 %110, i32* %cblk_h, align 4, !tbaa !5
  %111 = load i32, i32* %y, align 4, !tbaa !5
  %112 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul64 = mul i32 %111, %112
  %113 = load i32, i32* %x, align 4, !tbaa !5
  %add65 = add i32 %mul64, %113
  %idxprom66 = zext i32 %add65 to i64
  %114 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %data67 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %114, i32 0, i32 8
  %115 = load i32*, i32** %data67, align 8, !tbaa !46
  %arrayidx68 = getelementptr inbounds i32, i32* %115, i64 %idxprom66
  store i32* %arrayidx68, i32** %tiledp, align 8, !tbaa !1
  %116 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !1
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %116, i32 0, i32 5
  %117 = load i32, i32* %qmfbid, align 4, !tbaa !45
  %cmp69 = icmp eq i32 %117, 1
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %if.end.63
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.88, %if.then.71
  %118 = load i32, i32* %j, align 4, !tbaa !5
  %119 = load i32, i32* %cblk_h, align 4, !tbaa !5
  %cmp73 = icmp ult i32 %118, %119
  br i1 %cmp73, label %for.body.75, label %for.end.90

for.body.75:                                      ; preds = %for.cond.72
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %for.body.75
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %121 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %cmp77 = icmp ult i32 %120, %121
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.76
  %122 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = load i32, i32* %j, align 4, !tbaa !5
  %124 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul80 = mul i32 %123, %124
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %add81 = add i32 %mul80, %125
  %idxprom82 = zext i32 %add81 to i64
  %126 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i32, i32* %126, i64 %idxprom82
  %127 = load i32, i32* %arrayidx83, align 4, !tbaa !5
  store i32 %127, i32* %tmp, align 4, !tbaa !5
  %128 = load i32, i32* %tmp, align 4, !tbaa !5
  %shl = shl i32 %128, 6
  %129 = load i32, i32* %j, align 4, !tbaa !5
  %130 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %mul84 = mul i32 %129, %130
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %add85 = add i32 %mul84, %131
  %idxprom86 = zext i32 %add85 to i64
  %132 = load i32*, i32** %datap, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i32, i32* %132, i64 %idxprom86
  store i32 %shl, i32* %arrayidx87, align 4, !tbaa !5
  %133 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.79
  %134 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %134, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.76

for.end:                                          ; preds = %for.cond.76
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end
  %135 = load i32, i32* %j, align 4, !tbaa !5
  %inc89 = add i32 %135, 1
  store i32 %inc89, i32* %j, align 4, !tbaa !5
  br label %for.cond.72

for.end.90:                                       ; preds = %for.cond.72
  br label %if.end.116

if.else:                                          ; preds = %if.end.63
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.113, %if.else
  %136 = load i32, i32* %j, align 4, !tbaa !5
  %137 = load i32, i32* %cblk_h, align 4, !tbaa !5
  %cmp92 = icmp ult i32 %136, %137
  br i1 %cmp92, label %for.body.94, label %for.end.115

for.body.94:                                      ; preds = %for.cond.91
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.110, %for.body.94
  %138 = load i32, i32* %i, align 4, !tbaa !5
  %139 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %cmp96 = icmp ult i32 %138, %139
  br i1 %cmp96, label %for.body.98, label %for.end.112

for.body.98:                                      ; preds = %for.cond.95
  %140 = bitcast i32* %tmp100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = load i32, i32* %j, align 4, !tbaa !5
  %142 = load i32, i32* %tile_w, align 4, !tbaa !5
  %mul101 = mul i32 %141, %142
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %add102 = add i32 %mul101, %143
  %idxprom103 = zext i32 %add102 to i64
  %144 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %144, i64 %idxprom103
  %145 = load i32, i32* %arrayidx104, align 4, !tbaa !5
  store i32 %145, i32* %tmp100, align 4, !tbaa !5
  %146 = load i32, i32* %tmp100, align 4, !tbaa !5
  %147 = load i32, i32* %bandconst, align 4, !tbaa !5
  %call105 = call i32 @opj_int_fix_mul(i32 %146, i32 %147) #7
  %shr = ashr i32 %call105, 5
  %148 = load i32, i32* %j, align 4, !tbaa !5
  %149 = load i32, i32* %cblk_w, align 4, !tbaa !5
  %mul106 = mul i32 %148, %149
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %add107 = add i32 %mul106, %150
  %idxprom108 = zext i32 %add107 to i64
  %151 = load i32*, i32** %datap, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %151, i64 %idxprom108
  store i32 %shr, i32* %arrayidx109, align 4, !tbaa !5
  %152 = bitcast i32* %tmp100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.98
  %153 = load i32, i32* %i, align 4, !tbaa !5
  %inc111 = add i32 %153, 1
  store i32 %inc111, i32* %i, align 4, !tbaa !5
  br label %for.cond.95

for.end.112:                                      ; preds = %for.cond.95
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %154 = load i32, i32* %j, align 4, !tbaa !5
  %inc114 = add i32 %154, 1
  store i32 %inc114, i32* %j, align 4, !tbaa !5
  br label %for.cond.91

for.end.115:                                      ; preds = %for.cond.91
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.115, %for.end.90
  %155 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %156 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk, align 8, !tbaa !1
  %157 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %bandno117 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %157, i32 0, i32 4
  %158 = load i32, i32* %bandno117, align 4, !tbaa !32
  %159 = load i32, i32* %compno, align 4, !tbaa !5
  %160 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec, align 8, !tbaa !1
  %numresolutions118 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %160, i32 0, i32 4
  %161 = load i32, i32* %numresolutions118, align 4, !tbaa !67
  %sub119 = sub i32 %161, 1
  %162 = load i32, i32* %resno, align 4, !tbaa !5
  %sub120 = sub i32 %sub119, %162
  %163 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !1
  %qmfbid121 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %163, i32 0, i32 5
  %164 = load i32, i32* %qmfbid121, align 4, !tbaa !45
  %165 = load %struct.opj_tcd_band*, %struct.opj_tcd_band** %band, align 8, !tbaa !1
  %stepsize122 = getelementptr inbounds %struct.opj_tcd_band, %struct.opj_tcd_band* %165, i32 0, i32 8
  %166 = load float, float* %stepsize122, align 4, !tbaa !47
  %conv123 = fpext float %166 to double
  %167 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !1
  %cblksty = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %167, i32 0, i32 4
  %168 = load i32, i32* %cblksty, align 4, !tbaa !35
  %169 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %numcomps124 = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %169, i32 0, i32 4
  %170 = load i32, i32* %numcomps124, align 4, !tbaa !63
  %171 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %172 = load double*, double** %mct_norms.addr, align 8, !tbaa !1
  call void @opj_t1_encode_cblk(%struct.opj_t1* %155, %struct.opj_tcd_cblk_enc* %156, i32 %158, i32 %159, i32 %sub120, i32 %164, double %conv123, i32 %168, i32 %170, %struct.opj_tcd_tile* %171, double* %172) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.62
  %173 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %cblk_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %cblk_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i32** %datap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.opj_tcd_cblk_enc** %cblk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.136 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.133

for.inc.133:                                      ; preds = %cleanup.cont
  %182 = load i32, i32* %cblkno, align 4, !tbaa !5
  %inc134 = add i32 %182, 1
  store i32 %inc134, i32* %cblkno, align 4, !tbaa !5
  br label %for.cond.21

for.end.135:                                      ; preds = %for.cond.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %for.end.135, %cleanup
  %183 = bitcast %struct.opj_tcd_precinct** %prc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %cleanup.dest.137 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.137, label %cleanup.142 [
    i32 0, label %cleanup.cont.138
  ]

cleanup.cont.138:                                 ; preds = %cleanup.136
  br label %for.inc.139

for.inc.139:                                      ; preds = %cleanup.cont.138
  %184 = load i32, i32* %precno, align 4, !tbaa !5
  %inc140 = add i32 %184, 1
  store i32 %inc140, i32* %precno, align 4, !tbaa !5
  br label %for.cond.14

for.end.141:                                      ; preds = %for.cond.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.142

cleanup.142:                                      ; preds = %for.end.141, %cleanup.136
  %185 = bitcast i32* %bandconst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast %struct.opj_tcd_band** %band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %cleanup.dest.144 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.144, label %cleanup.149 [
    i32 0, label %cleanup.cont.145
  ]

cleanup.cont.145:                                 ; preds = %cleanup.142
  br label %for.inc.146

for.inc.146:                                      ; preds = %cleanup.cont.145
  %187 = load i32, i32* %bandno, align 4, !tbaa !5
  %inc147 = add i32 %187, 1
  store i32 %inc147, i32* %bandno, align 4, !tbaa !5
  br label %for.cond.8

for.end.148:                                      ; preds = %for.cond.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %for.end.148, %cleanup.142
  %188 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %cleanup.dest.150 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.150, label %cleanup.155 [
    i32 0, label %cleanup.cont.151
  ]

cleanup.cont.151:                                 ; preds = %cleanup.149
  br label %for.inc.152

for.inc.152:                                      ; preds = %cleanup.cont.151
  %189 = load i32, i32* %resno, align 4, !tbaa !5
  %inc153 = add i32 %189, 1
  store i32 %inc153, i32* %resno, align 4, !tbaa !5
  br label %for.cond.3

for.end.154:                                      ; preds = %for.cond.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.155

cleanup.155:                                      ; preds = %for.end.154, %cleanup.149
  %190 = bitcast i32* %tile_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast %struct.opj_tccp** %tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast %struct.opj_tcd_tilecomp** %tilec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %cleanup.dest.158 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.158, label %cleanup.163 [
    i32 0, label %cleanup.cont.159
  ]

cleanup.cont.159:                                 ; preds = %cleanup.155
  br label %for.inc.160

for.inc.160:                                      ; preds = %cleanup.cont.159
  %193 = load i32, i32* %compno, align 4, !tbaa !5
  %inc161 = add i32 %193, 1
  store i32 %inc161, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end.162:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

cleanup.163:                                      ; preds = %for.end.162, %cleanup.155
  %194 = bitcast i32* %cblkno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %precno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = load i32, i32* %retval
  ret i32 %199
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_fix_mul(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %temp = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %b.addr, align 4, !tbaa !5
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* %temp, align 8, !tbaa !73
  %3 = load i64, i64* %temp, align 8, !tbaa !73
  %and = and i64 %3, 4096
  %4 = load i64, i64* %temp, align 8, !tbaa !73
  %add = add nsw i64 %4, %and
  store i64 %add, i64* %temp, align 8, !tbaa !73
  %5 = load i64, i64* %temp, align 8, !tbaa !73
  %shr = ashr i64 %5, 13
  %conv2 = trunc i64 %shr to i32
  %6 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %conv2
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_encode_cblk(%struct.opj_t1* %t1, %struct.opj_tcd_cblk_enc* %cblk, i32 %orient, i32 %compno, i32 %level, i32 %qmfbid, double %stepsize, i32 %cblksty, i32 %numcomps, %struct.opj_tcd_tile* %tile, double* %mct_norms) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %cblk.addr = alloca %struct.opj_tcd_cblk_enc*, align 8
  %orient.addr = alloca i32, align 4
  %compno.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %qmfbid.addr = alloca i32, align 4
  %stepsize.addr = alloca double, align 8
  %cblksty.addr = alloca i32, align 4
  %numcomps.addr = alloca i32, align 4
  %tile.addr = alloca %struct.opj_tcd_tile*, align 8
  %mct_norms.addr = alloca double*, align 8
  %cumwmsedec = alloca double, align 8
  %mqc = alloca %struct.opj_mqc*, align 8
  %passno = alloca i32, align 4
  %bpno = alloca i32, align 4
  %passtype = alloca i32, align 4
  %nmsedec = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %type = alloca i8, align 1
  %tempwmsedec = alloca double, align 8
  %tmp = alloca i32, align 4
  %pass = alloca %struct.opj_tcd_pass*, align 8
  %correction = alloca i32, align 4
  %pass134 = alloca %struct.opj_tcd_pass*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store %struct.opj_tcd_cblk_enc* %cblk, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !5
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  store i32 %qmfbid, i32* %qmfbid.addr, align 4, !tbaa !5
  store double %stepsize, double* %stepsize.addr, align 8, !tbaa !75
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  store i32 %numcomps, i32* %numcomps.addr, align 4, !tbaa !5
  store %struct.opj_tcd_tile* %tile, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  store double* %mct_norms, double** %mct_norms.addr, align 8, !tbaa !1
  %0 = bitcast double* %cumwmsedec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0.000000e+00, double* %cumwmsedec, align 8, !tbaa !75
  %1 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %2, i32 0, i32 0
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %3, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %4 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bpno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %passtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %nmsedec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %nmsedec, align 4, !tbaa !5
  %8 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  call void @llvm.lifetime.start(i64 1, i8* %type) #1
  store i8 0, i8* %type, align 1, !tbaa !49
  %10 = bitcast double* %tempwmsedec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 0, i32* %max, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 4
  %13 = load i32, i32* %w, align 4, !tbaa !13
  %14 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %14, i32 0, i32 5
  %15 = load i32, i32* %h, align 4, !tbaa !14
  %mul = mul i32 %13, %15
  %cmp = icmp ult i32 %11, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %18, i32 0, i32 2
  %19 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call = call i32 @abs(i32 %20) #8
  store i32 %call, i32* %tmp, align 4, !tbaa !5
  %21 = load i32, i32* %max, align 4, !tbaa !5
  %22 = load i32, i32* %tmp, align 4, !tbaa !5
  %call2 = call i32 @opj_int_max(i32 %21, i32 %22) #7
  store i32 %call2, i32* %max, align 4, !tbaa !5
  %23 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %max, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %26 = load i32, i32* %max, align 4, !tbaa !5
  %call3 = call i32 @opj_int_floorlog2(i32 %26) #7
  %add = add nsw i32 %call3, 1
  %sub = sub nsw i32 %add, 6
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %27 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %27, i32 0, i32 7
  store i32 %cond, i32* %numbps, align 4, !tbaa !76
  %28 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps4 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %28, i32 0, i32 7
  %29 = load i32, i32* %numbps4, align 4, !tbaa !76
  %sub5 = sub i32 %29, 1
  store i32 %sub5, i32* %bpno, align 4, !tbaa !5
  store i32 2, i32* %passtype, align 4, !tbaa !5
  %30 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_resetstates(%struct.opj_mqc* %30) #7
  %31 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %31, i32 18, i32 0, i32 46) #7
  %32 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %32, i32 17, i32 0, i32 3) #7
  %33 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %33, i32 0, i32 0, i32 4) #7
  %34 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %35 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %35, i32 0, i32 0
  %36 = load i8*, i8** %data6, align 8, !tbaa !77
  call void @opj_mqc_init_enc(%struct.opj_mqc* %34, i8* %36) #7
  store i32 0, i32* %passno, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.116, %cond.end
  %37 = load i32, i32* %bpno, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %37, 0
  br i1 %cmp8, label %for.body.9, label %for.end.118

for.body.9:                                       ; preds = %for.cond.7
  %38 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i32, i32* %passno, align 4, !tbaa !5
  %idxprom11 = zext i32 %39 to i64
  %40 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %passes = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %40, i32 0, i32 2
  %41 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes, align 8, !tbaa !78
  %arrayidx12 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %41, i64 %idxprom11
  store %struct.opj_tcd_pass* %arrayidx12, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %42 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 3, i32* %correction, align 4, !tbaa !5
  %43 = load i32, i32* %bpno, align 4, !tbaa !5
  %44 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps14 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %44, i32 0, i32 7
  %45 = load i32, i32* %numbps14, align 4, !tbaa !76
  %sub15 = sub nsw i32 %45, 4
  %cmp16 = icmp slt i32 %43, %sub15
  br i1 %cmp16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body.9
  %46 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %46, 2
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %47 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %47, 1
  %tobool18 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.body.9
  %48 = phi i1 [ false, %land.lhs.true ], [ false, %for.body.9 ], [ %tobool18, %land.rhs ]
  %cond19 = select i1 %48, i32 1, i32 0
  %conv = trunc i32 %cond19 to i8
  store i8 %conv, i8* %type, align 1, !tbaa !49
  %49 = load i32, i32* %passtype, align 4, !tbaa !5
  switch i32 %49, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.20
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %land.end
  %50 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %51 = load i32, i32* %bpno, align 4, !tbaa !5
  %52 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %53 = load i8, i8* %type, align 1, !tbaa !49
  %54 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_enc_sigpass(%struct.opj_t1* %50, i32 %51, i32 %52, i32* %nmsedec, i8 zeroext %53, i32 %54) #7
  br label %sw.epilog

sw.bb.20:                                         ; preds = %land.end
  %55 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %56 = load i32, i32* %bpno, align 4, !tbaa !5
  %57 = load i8, i8* %type, align 1, !tbaa !49
  %58 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_enc_refpass(%struct.opj_t1* %55, i32 %56, i32* %nmsedec, i8 zeroext %57, i32 %58) #7
  br label %sw.epilog

sw.bb.21:                                         ; preds = %land.end
  %59 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %60 = load i32, i32* %bpno, align 4, !tbaa !5
  %61 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %62 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  call void @opj_t1_enc_clnpass(%struct.opj_t1* %59, i32 %60, i32 %61, i32* %nmsedec, i32 %62) #7
  %63 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and22 = and i32 %63, 32
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.21
  %64 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_segmark_enc(%struct.opj_mqc* %64) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end, %if.end, %sw.bb.20, %sw.bb
  %65 = load i32, i32* %nmsedec, align 4, !tbaa !5
  %66 = load i32, i32* %compno.addr, align 4, !tbaa !5
  %67 = load i32, i32* %level.addr, align 4, !tbaa !5
  %68 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %69 = load i32, i32* %bpno, align 4, !tbaa !5
  %70 = load i32, i32* %qmfbid.addr, align 4, !tbaa !5
  %71 = load double, double* %stepsize.addr, align 8, !tbaa !75
  %72 = load i32, i32* %numcomps.addr, align 4, !tbaa !5
  %73 = load double*, double** %mct_norms.addr, align 8, !tbaa !1
  %call24 = call double @opj_t1_getwmsedec(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, double %71, i32 %72, double* %73) #7
  store double %call24, double* %tempwmsedec, align 8, !tbaa !75
  %74 = load double, double* %tempwmsedec, align 8, !tbaa !75
  %75 = load double, double* %cumwmsedec, align 8, !tbaa !75
  %add25 = fadd double %75, %74
  store double %add25, double* %cumwmsedec, align 8, !tbaa !75
  %76 = load double, double* %tempwmsedec, align 8, !tbaa !75
  %77 = load %struct.opj_tcd_tile*, %struct.opj_tcd_tile** %tile.addr, align 8, !tbaa !1
  %distotile = getelementptr inbounds %struct.opj_tcd_tile, %struct.opj_tcd_tile* %77, i32 0, i32 7
  %78 = load double, double* %distotile, align 8, !tbaa !60
  %add26 = fadd double %78, %76
  store double %add26, double* %distotile, align 8, !tbaa !60
  %79 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and27 = and i32 %79, 4
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.42

land.lhs.true.29:                                 ; preds = %sw.epilog
  %80 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %80, 2
  br i1 %cmp30, label %land.lhs.true.32, label %if.then.36

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %81 = load i32, i32* %bpno, align 4, !tbaa !5
  %sub33 = sub nsw i32 %81, 1
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %if.else.42, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.32, %land.lhs.true.29
  %82 = load i8, i8* %type, align 1, !tbaa !49
  %conv37 = zext i8 %82 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.36
  %83 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_flush(%struct.opj_mqc* %83) #7
  store i32 1, i32* %correction, align 4, !tbaa !5
  br label %if.end.41

if.else:                                          ; preds = %if.then.36
  %84 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_flush(%struct.opj_mqc* %84) #7
  store i32 1, i32* %correction, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.40
  %85 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %85, i32 0, i32 3
  %bf.load = load i8, i8* %term, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %term, align 4
  br label %if.end.76

if.else.42:                                       ; preds = %land.lhs.true.32, %sw.epilog
  %86 = load i32, i32* %bpno, align 4, !tbaa !5
  %87 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps43 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %87, i32 0, i32 7
  %88 = load i32, i32* %numbps43, align 4, !tbaa !76
  %sub44 = sub nsw i32 %88, 4
  %cmp45 = icmp slt i32 %86, %sub44
  br i1 %cmp45, label %land.lhs.true.47, label %lor.lhs.false

land.lhs.true.47:                                 ; preds = %if.else.42
  %89 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp48 = icmp ugt i32 %89, 0
  br i1 %cmp48, label %land.lhs.true.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.47, %if.else.42
  %90 = load i32, i32* %bpno, align 4, !tbaa !5
  %91 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps50 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %91, i32 0, i32 7
  %92 = load i32, i32* %numbps50, align 4, !tbaa !76
  %sub51 = sub nsw i32 %92, 4
  %cmp52 = icmp eq i32 %90, %sub51
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.71

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %93 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %93, 2
  br i1 %cmp55, label %land.lhs.true.57, label %if.else.71

land.lhs.true.57:                                 ; preds = %land.lhs.true.54, %land.lhs.true.47
  %94 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and58 = and i32 %94, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.71

if.then.60:                                       ; preds = %land.lhs.true.57
  %95 = load i8, i8* %type, align 1, !tbaa !49
  %conv61 = zext i8 %95 to i32
  %cmp62 = icmp eq i32 %conv61, 1
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.then.60
  %96 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_flush(%struct.opj_mqc* %96) #7
  store i32 1, i32* %correction, align 4, !tbaa !5
  br label %if.end.66

if.else.65:                                       ; preds = %if.then.60
  %97 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_flush(%struct.opj_mqc* %97) #7
  store i32 1, i32* %correction, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  %98 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term67 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %98, i32 0, i32 3
  %bf.load68 = load i8, i8* %term67, align 4
  %bf.clear69 = and i8 %bf.load68, -2
  %bf.set70 = or i8 %bf.clear69, 1
  store i8 %bf.set70, i8* %term67, align 4
  br label %if.end.75

if.else.71:                                       ; preds = %land.lhs.true.57, %land.lhs.true.54, %lor.lhs.false
  %99 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term72 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %99, i32 0, i32 3
  %bf.load73 = load i8, i8* %term72, align 4
  %bf.clear74 = and i8 %bf.load73, -2
  store i8 %bf.clear74, i8* %term72, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.71, %if.end.66
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.41
  %100 = load i32, i32* %passtype, align 4, !tbaa !5
  %inc77 = add i32 %100, 1
  store i32 %inc77, i32* %passtype, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %inc77, 3
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.76
  store i32 0, i32* %passtype, align 4, !tbaa !5
  %101 = load i32, i32* %bpno, align 4, !tbaa !5
  %dec = add nsw i32 %101, -1
  store i32 %dec, i32* %bpno, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.76
  %102 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %term82 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %102, i32 0, i32 3
  %bf.load83 = load i8, i8* %term82, align 4
  %bf.clear84 = and i8 %bf.load83, 1
  %bf.cast = zext i8 %bf.clear84 to i32
  %tobool85 = icmp ne i32 %bf.cast, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.109

land.lhs.true.86:                                 ; preds = %if.end.81
  %103 = load i32, i32* %bpno, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %103, 0
  br i1 %cmp87, label %if.then.89, label %if.end.109

if.then.89:                                       ; preds = %land.lhs.true.86
  %104 = load i32, i32* %bpno, align 4, !tbaa !5
  %105 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %numbps90 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %105, i32 0, i32 7
  %106 = load i32, i32* %numbps90, align 4, !tbaa !76
  %sub91 = sub nsw i32 %106, 4
  %cmp92 = icmp slt i32 %104, %sub91
  br i1 %cmp92, label %land.lhs.true.94, label %land.end.100

land.lhs.true.94:                                 ; preds = %if.then.89
  %107 = load i32, i32* %passtype, align 4, !tbaa !5
  %cmp95 = icmp ult i32 %107, 2
  br i1 %cmp95, label %land.rhs.97, label %land.end.100

land.rhs.97:                                      ; preds = %land.lhs.true.94
  %108 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and98 = and i32 %108, 1
  %tobool99 = icmp ne i32 %and98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.97, %land.lhs.true.94, %if.then.89
  %109 = phi i1 [ false, %land.lhs.true.94 ], [ false, %if.then.89 ], [ %tobool99, %land.rhs.97 ]
  %cond101 = select i1 %109, i32 1, i32 0
  %conv102 = trunc i32 %cond101 to i8
  store i8 %conv102, i8* %type, align 1, !tbaa !49
  %110 = load i8, i8* %type, align 1, !tbaa !49
  %conv103 = zext i8 %110 to i32
  %cmp104 = icmp eq i32 %conv103, 1
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %land.end.100
  %111 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_bypass_init_enc(%struct.opj_mqc* %111) #7
  br label %if.end.108

if.else.107:                                      ; preds = %land.end.100
  %112 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_restart_init_enc(%struct.opj_mqc* %112) #7
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.106
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %land.lhs.true.86, %if.end.81
  %113 = load double, double* %cumwmsedec, align 8, !tbaa !75
  %114 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %distortiondec = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %114, i32 0, i32 1
  store double %113, double* %distortiondec, align 8, !tbaa !79
  %115 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call110 = call i32 @opj_mqc_numbytes(%struct.opj_mqc* %115) #7
  %116 = load i32, i32* %correction, align 4, !tbaa !5
  %add111 = add i32 %call110, %116
  %117 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass, align 8, !tbaa !1
  %rate = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %117, i32 0, i32 0
  store i32 %add111, i32* %rate, align 4, !tbaa !81
  %118 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and112 = and i32 %118, 2
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.109
  %119 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_reset_enc(%struct.opj_mqc* %119) #7
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.109
  %120 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.opj_tcd_pass** %pass to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %122 = load i32, i32* %passno, align 4, !tbaa !5
  %inc117 = add i32 %122, 1
  store i32 %inc117, i32* %passno, align 4, !tbaa !5
  br label %for.cond.7

for.end.118:                                      ; preds = %for.cond.7
  %123 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and119 = and i32 %123, 16
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %for.end.118
  %124 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_erterm_enc(%struct.opj_mqc* %124) #7
  br label %if.end.127

if.else.122:                                      ; preds = %for.end.118
  %125 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and123 = and i32 %125, 1
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %if.else.122
  %126 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  call void @opj_mqc_flush(%struct.opj_mqc* %126) #7
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.else.122
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.121
  %127 = load i32, i32* %passno, align 4, !tbaa !5
  %128 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %totalpasses = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %128, i32 0, i32 11
  store i32 %127, i32* %totalpasses, align 4, !tbaa !82
  store i32 0, i32* %passno, align 4, !tbaa !5
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.175, %if.end.127
  %129 = load i32, i32* %passno, align 4, !tbaa !5
  %130 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %totalpasses129 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %130, i32 0, i32 11
  %131 = load i32, i32* %totalpasses129, align 4, !tbaa !82
  %cmp130 = icmp ult i32 %129, %131
  br i1 %cmp130, label %for.body.132, label %for.end.177

for.body.132:                                     ; preds = %for.cond.128
  %132 = bitcast %struct.opj_tcd_pass** %pass134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load i32, i32* %passno, align 4, !tbaa !5
  %idxprom135 = zext i32 %133 to i64
  %134 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %passes136 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %134, i32 0, i32 2
  %135 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes136, align 8, !tbaa !78
  %arrayidx137 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %135, i64 %idxprom135
  store %struct.opj_tcd_pass* %arrayidx137, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %136 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate138 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %136, i32 0, i32 0
  %137 = load i32, i32* %rate138, align 4, !tbaa !81
  %138 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call139 = call i32 @opj_mqc_numbytes(%struct.opj_mqc* %138) #7
  %cmp140 = icmp ugt i32 %137, %call139
  br i1 %cmp140, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %for.body.132
  %139 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call143 = call i32 @opj_mqc_numbytes(%struct.opj_mqc* %139) #7
  %140 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate144 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %140, i32 0, i32 0
  store i32 %call143, i32* %rate144, align 4, !tbaa !81
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %for.body.132
  %141 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate146 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %141, i32 0, i32 0
  %142 = load i32, i32* %rate146, align 4, !tbaa !81
  %cmp147 = icmp ugt i32 %142, 1
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.161

land.lhs.true.149:                                ; preds = %if.end.145
  %143 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate150 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %143, i32 0, i32 0
  %144 = load i32, i32* %rate150, align 4, !tbaa !81
  %sub151 = sub i32 %144, 1
  %idxprom152 = zext i32 %sub151 to i64
  %145 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %data153 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %145, i32 0, i32 0
  %146 = load i8*, i8** %data153, align 8, !tbaa !77
  %arrayidx154 = getelementptr inbounds i8, i8* %146, i64 %idxprom152
  %147 = load i8, i8* %arrayidx154, align 1, !tbaa !49
  %conv155 = zext i8 %147 to i32
  %cmp156 = icmp eq i32 %conv155, 255
  br i1 %cmp156, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %land.lhs.true.149
  %148 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate159 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %148, i32 0, i32 0
  %149 = load i32, i32* %rate159, align 4, !tbaa !81
  %dec160 = add i32 %149, -1
  store i32 %dec160, i32* %rate159, align 4, !tbaa !81
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %land.lhs.true.149, %if.end.145
  %150 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %rate162 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %150, i32 0, i32 0
  %151 = load i32, i32* %rate162, align 4, !tbaa !81
  %152 = load i32, i32* %passno, align 4, !tbaa !5
  %cmp163 = icmp eq i32 %152, 0
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %if.end.161
  br label %cond.end.172

cond.false.166:                                   ; preds = %if.end.161
  %153 = load i32, i32* %passno, align 4, !tbaa !5
  %sub167 = sub i32 %153, 1
  %idxprom168 = zext i32 %sub167 to i64
  %154 = load %struct.opj_tcd_cblk_enc*, %struct.opj_tcd_cblk_enc** %cblk.addr, align 8, !tbaa !1
  %passes169 = getelementptr inbounds %struct.opj_tcd_cblk_enc, %struct.opj_tcd_cblk_enc* %154, i32 0, i32 2
  %155 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %passes169, align 8, !tbaa !78
  %arrayidx170 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %155, i64 %idxprom168
  %rate171 = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %arrayidx170, i32 0, i32 0
  %156 = load i32, i32* %rate171, align 4, !tbaa !81
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.166, %cond.true.165
  %cond173 = phi i32 [ 0, %cond.true.165 ], [ %156, %cond.false.166 ]
  %sub174 = sub i32 %151, %cond173
  %157 = load %struct.opj_tcd_pass*, %struct.opj_tcd_pass** %pass134, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.opj_tcd_pass, %struct.opj_tcd_pass* %157, i32 0, i32 2
  store i32 %sub174, i32* %len, align 4, !tbaa !83
  %158 = bitcast %struct.opj_tcd_pass** %pass134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  br label %for.inc.175

for.inc.175:                                      ; preds = %cond.end.172
  %159 = load i32, i32* %passno, align 4, !tbaa !5
  %inc176 = add i32 %159, 1
  store i32 %inc176, i32* %passno, align 4, !tbaa !5
  br label %for.cond.128

for.end.177:                                      ; preds = %for.cond.128
  %160 = bitcast double* %tempwmsedec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  call void @llvm.lifetime.end(i64 1, i8* %type) #1
  %161 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %nmsedec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %passtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %bpno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %passno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast double* %cumwmsedec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  ret void
}

declare void @opj_mqc_resetstates(%struct.opj_mqc*) #3

declare void @opj_mqc_setstate(%struct.opj_mqc*, i32, i32, i32) #3

declare void @opj_raw_init_dec(%struct.opj_raw*, i8*, i32) #3

declare i32 @opj_mqc_init_dec(%struct.opj_mqc*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_sigpass_raw(%struct.opj_t1* %t1, i32 %bpno, i32 %orient, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %cblksty.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %half = alloca i32, align 4
  %oneplushalf = alloca i32, align 4
  %vsc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %half to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %7
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %8 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %half, align 4, !tbaa !5
  %9 = load i32, i32* %one, align 4, !tbaa !5
  %10 = load i32, i32* %half, align 4, !tbaa !5
  %or = or i32 %9, %10
  store i32 %or, i32* %oneplushalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 5
  %13 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %15, i32 0, i32 4
  %16 = load i32, i32* %w, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %14, %16
  br i1 %cmp2, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %17, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %19, 4
  %cmp5 = icmp ult i32 %18, %add
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %21 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %21, i32 0, i32 5
  %22 = load i32, i32* %h6, align 4, !tbaa !14
  %cmp7 = icmp ult i32 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %23 = phi i1 [ false, %for.cond.4 ], [ %cmp7, %land.rhs ]
  br i1 %23, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %land.end
  %24 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %24, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs.9, label %land.end.14

land.rhs.9:                                       ; preds = %for.body.8
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %add10 = add i32 %26, 3
  %cmp11 = icmp eq i32 %25, %add10
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.9
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h12 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 5
  %29 = load i32, i32* %h12, align 4, !tbaa !14
  %sub = sub i32 %29, 1
  %cmp13 = icmp eq i32 %27, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.9
  %30 = phi i1 [ true, %land.rhs.9 ], [ %cmp13, %lor.rhs ]
  br label %land.end.14

land.end.14:                                      ; preds = %lor.end, %for.body.8
  %31 = phi i1 [ false, %for.body.8 ], [ %30, %lor.end ]
  %cond = select i1 %31, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %32 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %add15 = add i32 %33, 1
  %34 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %34, i32 0, i32 8
  %35 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add15, %35
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %add16 = add i32 %mul, %36
  %add17 = add i32 %add16, 1
  %idxprom = zext i32 %add17 to i64
  %37 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %37, i32 0, i32 3
  %38 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %38, i64 %idxprom
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %40 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w18 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %40, i32 0, i32 4
  %41 = load i32, i32* %w18, align 4, !tbaa !13
  %mul19 = mul i32 %39, %41
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %add20 = add i32 %mul19, %42
  %idxprom21 = zext i32 %add20 to i64
  %43 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %43, i32 0, i32 2
  %44 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds i32, i32* %44, i64 %idxprom21
  %45 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %46 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  %47 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_raw(%struct.opj_t1* %32, i16* %arrayidx, i32* %arrayidx22, i32 %45, i32 %46, i32 %47) #7
  br label %for.inc

for.inc:                                          ; preds = %land.end.14
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %48, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc24 = add i32 %49, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.25:                                       ; preds = %for.cond.1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %add27 = add i32 %50, 4
  store i32 %add27, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %half to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_sigpass_mqc_vsc(%struct.opj_t1* %t1, i32 %bpno, i32 %orient) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %half = alloca i32, align 4
  %oneplushalf = alloca i32, align 4
  %vsc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %half to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %7
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %8 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %half, align 4, !tbaa !5
  %9 = load i32, i32* %one, align 4, !tbaa !5
  %10 = load i32, i32* %half, align 4, !tbaa !5
  %or = or i32 %9, %10
  store i32 %or, i32* %oneplushalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 5
  %13 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %15, i32 0, i32 4
  %16 = load i32, i32* %w, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %14, %16
  br i1 %cmp2, label %for.body.3, label %for.end.23

for.body.3:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %17, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %19, 4
  %cmp5 = icmp ult i32 %18, %add
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %21 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %21, i32 0, i32 5
  %22 = load i32, i32* %h6, align 4, !tbaa !14
  %cmp7 = icmp ult i32 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %23 = phi i1 [ false, %for.cond.4 ], [ %cmp7, %land.rhs ]
  br i1 %23, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %land.end
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %add9 = add i32 %25, 3
  %cmp10 = icmp eq i32 %24, %add9
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.8
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %27 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h11 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %27, i32 0, i32 5
  %28 = load i32, i32* %h11, align 4, !tbaa !14
  %sub = sub i32 %28, 1
  %cmp12 = icmp eq i32 %26, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.8
  %29 = phi i1 [ true, %for.body.8 ], [ %cmp12, %lor.rhs ]
  %cond = select i1 %29, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %30 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %add13 = add i32 %31, 1
  %32 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %32, i32 0, i32 8
  %33 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add13, %33
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %add14 = add i32 %mul, %34
  %add15 = add i32 %add14, 1
  %idxprom = zext i32 %add15 to i64
  %35 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %35, i32 0, i32 3
  %36 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %36, i64 %idxprom
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %38 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w16 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %38, i32 0, i32 4
  %39 = load i32, i32* %w16, align 4, !tbaa !13
  %mul17 = mul i32 %37, %39
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %add18 = add i32 %mul17, %40
  %idxprom19 = zext i32 %add18 to i64
  %41 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %41, i32 0, i32 2
  %42 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds i32, i32* %42, i64 %idxprom19
  %43 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %44 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  %45 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc_vsc(%struct.opj_t1* %30, i16* %arrayidx, i32* %arrayidx20, i32 %43, i32 %44, i32 %45) #7
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %46, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc22 = add i32 %47, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.23:                                       ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %add25 = add i32 %48, 4
  store i32 %add25, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %49 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %half to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_sigpass_mqc(%struct.opj_t1* %t1, i32 %bpno, i32 %orient) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %half = alloca i32, align 4
  %oneplushalf = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %data1 = alloca i32*, align 8
  %flags1 = alloca i16*, align 8
  %data2 = alloca i32*, align 8
  %flags2 = alloca i16*, align 8
  %data243 = alloca i32*, align 8
  %flags246 = alloca i16*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %half to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %7, i32 0, i32 2
  %8 = load i32*, i32** %data, align 8, !tbaa !9
  store i32* %8, i32** %data1, align 8, !tbaa !1
  %9 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %10, i32 0, i32 3
  %11 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 1
  store i16* %arrayidx, i16** %flags1, align 8, !tbaa !1
  %12 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %12
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %13 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %13, 1
  store i32 %shr, i32* %half, align 4, !tbaa !5
  %14 = load i32, i32* %one, align 4, !tbaa !5
  %15 = load i32, i32* %half, align 4, !tbaa !5
  %or = or i32 %14, %15
  store i32 %or, i32* %oneplushalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %17 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %17, i32 0, i32 5
  %18 = load i32, i32* %h, align 4, !tbaa !14
  %and = and i32 %18, -4
  %cmp = icmp ult i32 %16, %and
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %20, i32 0, i32 4
  %21 = load i32, i32* %w, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %19, %21
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %22 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32*, i32** %data1, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %data2, align 8, !tbaa !1
  %25 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i16*, i16** %flags1, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext4 = zext i32 %27 to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %26, i64 %idx.ext4
  store i16* %add.ptr5, i16** %flags2, align 8, !tbaa !1
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 8
  %29 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %30 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext6 = zext i32 %29 to i64
  %add.ptr7 = getelementptr inbounds i16, i16* %30, i64 %idx.ext6
  store i16* %add.ptr7, i16** %flags2, align 8, !tbaa !1
  %31 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %32 = load i16*, i16** %flags2, align 8, !tbaa !1
  %33 = load i32*, i32** %data2, align 8, !tbaa !1
  %34 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %35 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %31, i16* %32, i32* %33, i32 %34, i32 %35) #7
  %36 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w8 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %36, i32 0, i32 4
  %37 = load i32, i32* %w8, align 4, !tbaa !13
  %38 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext9 = zext i32 %37 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %38, i64 %idx.ext9
  store i32* %add.ptr10, i32** %data2, align 8, !tbaa !1
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride11 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 8
  %40 = load i32, i32* %flags_stride11, align 4, !tbaa !10
  %41 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext12 = zext i32 %40 to i64
  %add.ptr13 = getelementptr inbounds i16, i16* %41, i64 %idx.ext12
  store i16* %add.ptr13, i16** %flags2, align 8, !tbaa !1
  %42 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %43 = load i16*, i16** %flags2, align 8, !tbaa !1
  %44 = load i32*, i32** %data2, align 8, !tbaa !1
  %45 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %46 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %42, i16* %43, i32* %44, i32 %45, i32 %46) #7
  %47 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w14 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %47, i32 0, i32 4
  %48 = load i32, i32* %w14, align 4, !tbaa !13
  %49 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext15 = zext i32 %48 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %49, i64 %idx.ext15
  store i32* %add.ptr16, i32** %data2, align 8, !tbaa !1
  %50 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride17 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %50, i32 0, i32 8
  %51 = load i32, i32* %flags_stride17, align 4, !tbaa !10
  %52 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext18 = zext i32 %51 to i64
  %add.ptr19 = getelementptr inbounds i16, i16* %52, i64 %idx.ext18
  store i16* %add.ptr19, i16** %flags2, align 8, !tbaa !1
  %53 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %54 = load i16*, i16** %flags2, align 8, !tbaa !1
  %55 = load i32*, i32** %data2, align 8, !tbaa !1
  %56 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %57 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %53, i16* %54, i32* %55, i32 %56, i32 %57) #7
  %58 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w20 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %58, i32 0, i32 4
  %59 = load i32, i32* %w20, align 4, !tbaa !13
  %60 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext21 = zext i32 %59 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %60, i64 %idx.ext21
  store i32* %add.ptr22, i32** %data2, align 8, !tbaa !1
  %61 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride23 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %61, i32 0, i32 8
  %62 = load i32, i32* %flags_stride23, align 4, !tbaa !10
  %63 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext24 = zext i32 %62 to i64
  %add.ptr25 = getelementptr inbounds i16, i16* %63, i64 %idx.ext24
  store i16* %add.ptr25, i16** %flags2, align 8, !tbaa !1
  %64 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %65 = load i16*, i16** %flags2, align 8, !tbaa !1
  %66 = load i32*, i32** %data2, align 8, !tbaa !1
  %67 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %68 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %64, i16* %65, i32* %66, i32 %67, i32 %68) #7
  %69 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w26 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %69, i32 0, i32 4
  %70 = load i32, i32* %w26, align 4, !tbaa !13
  %71 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext27 = zext i32 %70 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %71, i64 %idx.ext27
  store i32* %add.ptr28, i32** %data2, align 8, !tbaa !1
  %72 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %74, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %75 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w29 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %75, i32 0, i32 4
  %76 = load i32, i32* %w29, align 4, !tbaa !13
  %shl30 = shl i32 %76, 2
  %77 = load i32*, i32** %data1, align 8, !tbaa !1
  %idx.ext31 = zext i32 %shl30 to i64
  %add.ptr32 = getelementptr inbounds i32, i32* %77, i64 %idx.ext31
  store i32* %add.ptr32, i32** %data1, align 8, !tbaa !1
  %78 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride33 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %78, i32 0, i32 8
  %79 = load i32, i32* %flags_stride33, align 4, !tbaa !10
  %shl34 = shl i32 %79, 2
  %80 = load i16*, i16** %flags1, align 8, !tbaa !1
  %idx.ext35 = zext i32 %shl34 to i64
  %add.ptr36 = getelementptr inbounds i16, i16* %80, i64 %idx.ext35
  store i16* %add.ptr36, i16** %flags1, align 8, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %81, 4
  store i32 %add, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.62, %for.end.38
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %83 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w40 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %83, i32 0, i32 4
  %84 = load i32, i32* %w40, align 4, !tbaa !13
  %cmp41 = icmp ult i32 %82, %84
  br i1 %cmp41, label %for.body.42, label %for.end.64

for.body.42:                                      ; preds = %for.cond.39
  %85 = bitcast i32** %data243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load i32*, i32** %data1, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext44 = zext i32 %87 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %86, i64 %idx.ext44
  store i32* %add.ptr45, i32** %data243, align 8, !tbaa !1
  %88 = bitcast i16** %flags246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load i16*, i16** %flags1, align 8, !tbaa !1
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext47 = zext i32 %90 to i64
  %add.ptr48 = getelementptr inbounds i16, i16* %89, i64 %idx.ext47
  store i16* %add.ptr48, i16** %flags246, align 8, !tbaa !1
  %91 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %91, i32* %j, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.59, %for.body.42
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %93 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h50 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %93, i32 0, i32 5
  %94 = load i32, i32* %h50, align 4, !tbaa !14
  %cmp51 = icmp ult i32 %92, %94
  br i1 %cmp51, label %for.body.52, label %for.end.61

for.body.52:                                      ; preds = %for.cond.49
  %95 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride53 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %95, i32 0, i32 8
  %96 = load i32, i32* %flags_stride53, align 4, !tbaa !10
  %97 = load i16*, i16** %flags246, align 8, !tbaa !1
  %idx.ext54 = zext i32 %96 to i64
  %add.ptr55 = getelementptr inbounds i16, i16* %97, i64 %idx.ext54
  store i16* %add.ptr55, i16** %flags246, align 8, !tbaa !1
  %98 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %99 = load i16*, i16** %flags246, align 8, !tbaa !1
  %100 = load i32*, i32** %data243, align 8, !tbaa !1
  %101 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %102 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %98, i16* %99, i32* %100, i32 %101, i32 %102) #7
  %103 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w56 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %103, i32 0, i32 4
  %104 = load i32, i32* %w56, align 4, !tbaa !13
  %105 = load i32*, i32** %data243, align 8, !tbaa !1
  %idx.ext57 = zext i32 %104 to i64
  %add.ptr58 = getelementptr inbounds i32, i32* %105, i64 %idx.ext57
  store i32* %add.ptr58, i32** %data243, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.52
  %106 = load i32, i32* %j, align 4, !tbaa !5
  %inc60 = add i32 %106, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !5
  br label %for.cond.49

for.end.61:                                       ; preds = %for.cond.49
  %107 = bitcast i16** %flags246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32** %data243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %inc63 = add i32 %109, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !5
  br label %for.cond.39

for.end.64:                                       ; preds = %for.cond.39
  %110 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %half to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_refpass_raw(%struct.opj_t1* %t1, i32 %bpno, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %cblksty.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %poshalf = alloca i32, align 4
  %neghalf = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vsc = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %7
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %8 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %poshalf, align 4, !tbaa !5
  %9 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %poshalf, align 4, !tbaa !5
  %sub = sub nsw i32 0, %10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %neghalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %cond.end
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 5
  %13 = load i32, i32* %h, align 4, !tbaa !14
  %cmp1 = icmp ult i32 %11, %13
  br i1 %cmp1, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.26, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %15, i32 0, i32 4
  %16 = load i32, i32* %w, align 4, !tbaa !13
  %cmp3 = icmp ult i32 %14, %16
  br i1 %cmp3, label %for.body.4, label %for.end.28

for.body.4:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %17, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %19, 4
  %cmp6 = icmp ult i32 %18, %add
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.5
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %21 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h7 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %21, i32 0, i32 5
  %22 = load i32, i32* %h7, align 4, !tbaa !14
  %cmp8 = icmp ult i32 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.5
  %23 = phi i1 [ false, %for.cond.5 ], [ %cmp8, %land.rhs ]
  br i1 %23, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  %24 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %24, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs.10, label %land.end.16

land.rhs.10:                                      ; preds = %for.body.9
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %add11 = add i32 %26, 3
  %cmp12 = icmp eq i32 %25, %add11
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.10
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h13 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 5
  %29 = load i32, i32* %h13, align 4, !tbaa !14
  %sub14 = sub i32 %29, 1
  %cmp15 = icmp eq i32 %27, %sub14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.10
  %30 = phi i1 [ true, %land.rhs.10 ], [ %cmp15, %lor.rhs ]
  br label %land.end.16

land.end.16:                                      ; preds = %lor.end, %for.body.9
  %31 = phi i1 [ false, %for.body.9 ], [ %30, %lor.end ]
  %cond17 = select i1 %31, i32 1, i32 0
  store i32 %cond17, i32* %vsc, align 4, !tbaa !5
  %32 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %add18 = add i32 %33, 1
  %34 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %34, i32 0, i32 8
  %35 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add18, %35
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %add19 = add i32 %mul, %36
  %add20 = add i32 %add19, 1
  %idxprom = zext i32 %add20 to i64
  %37 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %37, i32 0, i32 3
  %38 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %38, i64 %idxprom
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %40 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w21 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %40, i32 0, i32 4
  %41 = load i32, i32* %w21, align 4, !tbaa !13
  %mul22 = mul i32 %39, %41
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %add23 = add i32 %mul22, %42
  %idxprom24 = zext i32 %add23 to i64
  %43 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %43, i32 0, i32 2
  %44 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx25 = getelementptr inbounds i32, i32* %44, i64 %idxprom24
  %45 = load i32, i32* %poshalf, align 4, !tbaa !5
  %46 = load i32, i32* %neghalf, align 4, !tbaa !5
  %47 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_raw(%struct.opj_t1* %32, i16* %arrayidx, i32* %arrayidx25, i32 %45, i32 %46, i32 %47) #7
  br label %for.inc

for.inc:                                          ; preds = %land.end.16
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %48, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %land.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc27 = add i32 %49, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.28:                                       ; preds = %for.cond.2
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %add30 = add i32 %50, 4
  store i32 %add30, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %51 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_refpass_mqc_vsc(%struct.opj_t1* %t1, i32 %bpno) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %poshalf = alloca i32, align 4
  %neghalf = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vsc = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %7
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %8 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %poshalf, align 4, !tbaa !5
  %9 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %poshalf, align 4, !tbaa !5
  %sub = sub nsw i32 0, %10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %neghalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %cond.end
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 5
  %13 = load i32, i32* %h, align 4, !tbaa !14
  %cmp1 = icmp ult i32 %11, %13
  br i1 %cmp1, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.24, %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %15, i32 0, i32 4
  %16 = load i32, i32* %w, align 4, !tbaa !13
  %cmp3 = icmp ult i32 %14, %16
  br i1 %cmp3, label %for.body.4, label %for.end.26

for.body.4:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %17, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %19, 4
  %cmp6 = icmp ult i32 %18, %add
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.5
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %21 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h7 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %21, i32 0, i32 5
  %22 = load i32, i32* %h7, align 4, !tbaa !14
  %cmp8 = icmp ult i32 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.5
  %23 = phi i1 [ false, %for.cond.5 ], [ %cmp8, %land.rhs ]
  br i1 %23, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %add10 = add i32 %25, 3
  %cmp11 = icmp eq i32 %24, %add10
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body.9
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %27 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h12 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %27, i32 0, i32 5
  %28 = load i32, i32* %h12, align 4, !tbaa !14
  %sub13 = sub i32 %28, 1
  %cmp14 = icmp eq i32 %26, %sub13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.9
  %29 = phi i1 [ true, %for.body.9 ], [ %cmp14, %lor.rhs ]
  %cond15 = select i1 %29, i32 1, i32 0
  store i32 %cond15, i32* %vsc, align 4, !tbaa !5
  %30 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %add16 = add i32 %31, 1
  %32 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %32, i32 0, i32 8
  %33 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add16, %33
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %add17 = add i32 %mul, %34
  %add18 = add i32 %add17, 1
  %idxprom = zext i32 %add18 to i64
  %35 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %35, i32 0, i32 3
  %36 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %36, i64 %idxprom
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %38 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w19 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %38, i32 0, i32 4
  %39 = load i32, i32* %w19, align 4, !tbaa !13
  %mul20 = mul i32 %37, %39
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %add21 = add i32 %mul20, %40
  %idxprom22 = zext i32 %add21 to i64
  %41 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %41, i32 0, i32 2
  %42 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds i32, i32* %42, i64 %idxprom22
  %43 = load i32, i32* %poshalf, align 4, !tbaa !5
  %44 = load i32, i32* %neghalf, align 4, !tbaa !5
  %45 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc_vsc(%struct.opj_t1* %30, i16* %arrayidx, i32* %arrayidx23, i32 %43, i32 %44, i32 %45) #7
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %46, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %land.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc25 = add i32 %47, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.26:                                       ; preds = %for.cond.2
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %add28 = add i32 %48, 4
  store i32 %add28, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %49 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_refpass_mqc(%struct.opj_t1* %t1, i32 %bpno) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %poshalf = alloca i32, align 4
  %neghalf = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %data1 = alloca i32*, align 8
  %flags1 = alloca i16*, align 8
  %data2 = alloca i32*, align 8
  %flags2 = alloca i16*, align 8
  %data244 = alloca i32*, align 8
  %flags247 = alloca i16*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %7, i32 0, i32 2
  %8 = load i32*, i32** %data, align 8, !tbaa !9
  store i32* %8, i32** %data1, align 8, !tbaa !1
  %9 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %10, i32 0, i32 3
  %11 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 1
  store i16* %arrayidx, i16** %flags1, align 8, !tbaa !1
  %12 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %12
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %13 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %13, 1
  store i32 %shr, i32* %poshalf, align 4, !tbaa !5
  %14 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %poshalf, align 4, !tbaa !5
  %sub = sub nsw i32 0, %15
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %neghalf, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %cond.end
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %17 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %17, i32 0, i32 5
  %18 = load i32, i32* %h, align 4, !tbaa !14
  %and = and i32 %18, -4
  %cmp1 = icmp ult i32 %16, %and
  br i1 %cmp1, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %20, i32 0, i32 4
  %21 = load i32, i32* %w, align 4, !tbaa !13
  %cmp3 = icmp ult i32 %19, %21
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %22 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32*, i32** %data1, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %data2, align 8, !tbaa !1
  %25 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i16*, i16** %flags1, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext5 = zext i32 %27 to i64
  %add.ptr6 = getelementptr inbounds i16, i16* %26, i64 %idx.ext5
  store i16* %add.ptr6, i16** %flags2, align 8, !tbaa !1
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 8
  %29 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %30 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext7 = zext i32 %29 to i64
  %add.ptr8 = getelementptr inbounds i16, i16* %30, i64 %idx.ext7
  store i16* %add.ptr8, i16** %flags2, align 8, !tbaa !1
  %31 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %32 = load i16*, i16** %flags2, align 8, !tbaa !1
  %33 = load i32*, i32** %data2, align 8, !tbaa !1
  %34 = load i32, i32* %poshalf, align 4, !tbaa !5
  %35 = load i32, i32* %neghalf, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %31, i16* %32, i32* %33, i32 %34, i32 %35) #7
  %36 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w9 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %36, i32 0, i32 4
  %37 = load i32, i32* %w9, align 4, !tbaa !13
  %38 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext10 = zext i32 %37 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %38, i64 %idx.ext10
  store i32* %add.ptr11, i32** %data2, align 8, !tbaa !1
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride12 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 8
  %40 = load i32, i32* %flags_stride12, align 4, !tbaa !10
  %41 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext13 = zext i32 %40 to i64
  %add.ptr14 = getelementptr inbounds i16, i16* %41, i64 %idx.ext13
  store i16* %add.ptr14, i16** %flags2, align 8, !tbaa !1
  %42 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %43 = load i16*, i16** %flags2, align 8, !tbaa !1
  %44 = load i32*, i32** %data2, align 8, !tbaa !1
  %45 = load i32, i32* %poshalf, align 4, !tbaa !5
  %46 = load i32, i32* %neghalf, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %42, i16* %43, i32* %44, i32 %45, i32 %46) #7
  %47 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w15 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %47, i32 0, i32 4
  %48 = load i32, i32* %w15, align 4, !tbaa !13
  %49 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext16 = zext i32 %48 to i64
  %add.ptr17 = getelementptr inbounds i32, i32* %49, i64 %idx.ext16
  store i32* %add.ptr17, i32** %data2, align 8, !tbaa !1
  %50 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride18 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %50, i32 0, i32 8
  %51 = load i32, i32* %flags_stride18, align 4, !tbaa !10
  %52 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext19 = zext i32 %51 to i64
  %add.ptr20 = getelementptr inbounds i16, i16* %52, i64 %idx.ext19
  store i16* %add.ptr20, i16** %flags2, align 8, !tbaa !1
  %53 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %54 = load i16*, i16** %flags2, align 8, !tbaa !1
  %55 = load i32*, i32** %data2, align 8, !tbaa !1
  %56 = load i32, i32* %poshalf, align 4, !tbaa !5
  %57 = load i32, i32* %neghalf, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %53, i16* %54, i32* %55, i32 %56, i32 %57) #7
  %58 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w21 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %58, i32 0, i32 4
  %59 = load i32, i32* %w21, align 4, !tbaa !13
  %60 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext22 = zext i32 %59 to i64
  %add.ptr23 = getelementptr inbounds i32, i32* %60, i64 %idx.ext22
  store i32* %add.ptr23, i32** %data2, align 8, !tbaa !1
  %61 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride24 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %61, i32 0, i32 8
  %62 = load i32, i32* %flags_stride24, align 4, !tbaa !10
  %63 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext25 = zext i32 %62 to i64
  %add.ptr26 = getelementptr inbounds i16, i16* %63, i64 %idx.ext25
  store i16* %add.ptr26, i16** %flags2, align 8, !tbaa !1
  %64 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %65 = load i16*, i16** %flags2, align 8, !tbaa !1
  %66 = load i32*, i32** %data2, align 8, !tbaa !1
  %67 = load i32, i32* %poshalf, align 4, !tbaa !5
  %68 = load i32, i32* %neghalf, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %64, i16* %65, i32* %66, i32 %67, i32 %68) #7
  %69 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w27 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %69, i32 0, i32 4
  %70 = load i32, i32* %w27, align 4, !tbaa !13
  %71 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext28 = zext i32 %70 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %71, i64 %idx.ext28
  store i32* %add.ptr29, i32** %data2, align 8, !tbaa !1
  %72 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %74, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %75 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w30 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %75, i32 0, i32 4
  %76 = load i32, i32* %w30, align 4, !tbaa !13
  %shl31 = shl i32 %76, 2
  %77 = load i32*, i32** %data1, align 8, !tbaa !1
  %idx.ext32 = zext i32 %shl31 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %77, i64 %idx.ext32
  store i32* %add.ptr33, i32** %data1, align 8, !tbaa !1
  %78 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride34 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %78, i32 0, i32 8
  %79 = load i32, i32* %flags_stride34, align 4, !tbaa !10
  %shl35 = shl i32 %79, 2
  %80 = load i16*, i16** %flags1, align 8, !tbaa !1
  %idx.ext36 = zext i32 %shl35 to i64
  %add.ptr37 = getelementptr inbounds i16, i16* %80, i64 %idx.ext36
  store i16* %add.ptr37, i16** %flags1, align 8, !tbaa !1
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %81, 4
  store i32 %add, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.63, %for.end.39
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %83 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w41 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %83, i32 0, i32 4
  %84 = load i32, i32* %w41, align 4, !tbaa !13
  %cmp42 = icmp ult i32 %82, %84
  br i1 %cmp42, label %for.body.43, label %for.end.65

for.body.43:                                      ; preds = %for.cond.40
  %85 = bitcast i32** %data244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load i32*, i32** %data1, align 8, !tbaa !1
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext45 = zext i32 %87 to i64
  %add.ptr46 = getelementptr inbounds i32, i32* %86, i64 %idx.ext45
  store i32* %add.ptr46, i32** %data244, align 8, !tbaa !1
  %88 = bitcast i16** %flags247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load i16*, i16** %flags1, align 8, !tbaa !1
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext48 = zext i32 %90 to i64
  %add.ptr49 = getelementptr inbounds i16, i16* %89, i64 %idx.ext48
  store i16* %add.ptr49, i16** %flags247, align 8, !tbaa !1
  %91 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %91, i32* %j, align 4, !tbaa !5
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.60, %for.body.43
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %93 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h51 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %93, i32 0, i32 5
  %94 = load i32, i32* %h51, align 4, !tbaa !14
  %cmp52 = icmp ult i32 %92, %94
  br i1 %cmp52, label %for.body.53, label %for.end.62

for.body.53:                                      ; preds = %for.cond.50
  %95 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride54 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %95, i32 0, i32 8
  %96 = load i32, i32* %flags_stride54, align 4, !tbaa !10
  %97 = load i16*, i16** %flags247, align 8, !tbaa !1
  %idx.ext55 = zext i32 %96 to i64
  %add.ptr56 = getelementptr inbounds i16, i16* %97, i64 %idx.ext55
  store i16* %add.ptr56, i16** %flags247, align 8, !tbaa !1
  %98 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %99 = load i16*, i16** %flags247, align 8, !tbaa !1
  %100 = load i32*, i32** %data244, align 8, !tbaa !1
  %101 = load i32, i32* %poshalf, align 4, !tbaa !5
  %102 = load i32, i32* %neghalf, align 4, !tbaa !5
  call void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %98, i16* %99, i32* %100, i32 %101, i32 %102) #7
  %103 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w57 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %103, i32 0, i32 4
  %104 = load i32, i32* %w57, align 4, !tbaa !13
  %105 = load i32*, i32** %data244, align 8, !tbaa !1
  %idx.ext58 = zext i32 %104 to i64
  %add.ptr59 = getelementptr inbounds i32, i32* %105, i64 %idx.ext58
  store i32* %add.ptr59, i32** %data244, align 8, !tbaa !1
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.53
  %106 = load i32, i32* %j, align 4, !tbaa !5
  %inc61 = add i32 %106, 1
  store i32 %inc61, i32* %j, align 4, !tbaa !5
  br label %for.cond.50

for.end.62:                                       ; preds = %for.cond.50
  %107 = bitcast i16** %flags247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32** %data244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %109 = load i32, i32* %i, align 4, !tbaa !5
  %inc64 = add i32 %109, 1
  store i32 %inc64, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.end.65:                                       ; preds = %for.cond.40
  %110 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %neghalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %poshalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_clnpass(%struct.opj_t1* %t1, i32 %bpno, i32 %orient, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %cblksty.addr = alloca i32, align 4
  %one = alloca i32, align 4
  %half = alloca i32, align 4
  %oneplushalf = alloca i32, align 4
  %agg = alloca i32, align 4
  %runlen = alloca i32, align 4
  %vsc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %segsym = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  %data1 = alloca i32*, align 8
  %flags1 = alloca i16*, align 8
  %data2 = alloca i32*, align 8
  %flags2 = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  %data2277 = alloca i32*, align 8
  %flags2280 = alloca i16*, align 8
  %v = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %half to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %agg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %segsym to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %10, 32
  store i32 %and, i32* %segsym, align 4, !tbaa !5
  %11 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %12, i32 0, i32 0
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %13, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %14 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %14
  store i32 %shl, i32* %one, align 4, !tbaa !5
  %15 = load i32, i32* %one, align 4, !tbaa !5
  %shr = ashr i32 %15, 1
  store i32 %shr, i32* %half, align 4, !tbaa !5
  %16 = load i32, i32* %one, align 4, !tbaa !5
  %17 = load i32, i32* %half, align 4, !tbaa !5
  %or = or i32 %16, %17
  store i32 %or, i32* %oneplushalf, align 4, !tbaa !5
  %18 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and2 = and i32 %18, 8
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.else.109

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %if.then
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %20 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %20, i32 0, i32 5
  %21 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.103, %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %23 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %23, i32 0, i32 4
  %24 = load i32, i32* %w, align 4, !tbaa !13
  %cmp4 = icmp ult i32 %22, %24
  br i1 %cmp4, label %for.body.5, label %for.end.105

for.body.5:                                       ; preds = %for.cond.3
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %add = add i32 %25, 3
  %26 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %26, i32 0, i32 5
  %27 = load i32, i32* %h6, align 4, !tbaa !14
  %cmp7 = icmp ult i32 %add, %27
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body.5
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %add9 = add i32 1, %28
  %29 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %29, i32 0, i32 8
  %30 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add9, %30
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %add10 = add i32 1, %31
  %add11 = add i32 %mul, %add10
  %idxprom = zext i32 %add11 to i64
  %32 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %32, i32 0, i32 3
  %33 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %33, i64 %idxprom
  %34 = load i16, i16* %arrayidx, align 2, !tbaa !84
  %conv = sext i16 %34 to i32
  %and12 = and i32 %conv, 20735
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %35 = load i32, i32* %k, align 4, !tbaa !5
  %add14 = add i32 1, %35
  %add15 = add i32 %add14, 1
  %36 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride16 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %36, i32 0, i32 8
  %37 = load i32, i32* %flags_stride16, align 4, !tbaa !10
  %mul17 = mul i32 %add15, %37
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %add18 = add i32 1, %38
  %add19 = add i32 %mul17, %add18
  %idxprom20 = zext i32 %add19 to i64
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags21 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 3
  %40 = load i16*, i16** %flags21, align 8, !tbaa !12
  %arrayidx22 = getelementptr inbounds i16, i16* %40, i64 %idxprom20
  %41 = load i16, i16* %arrayidx22, align 2, !tbaa !84
  %conv23 = sext i16 %41 to i32
  %and24 = and i32 %conv23, 20735
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.end, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %k, align 4, !tbaa !5
  %add27 = add i32 1, %42
  %add28 = add i32 %add27, 2
  %43 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride29 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %43, i32 0, i32 8
  %44 = load i32, i32* %flags_stride29, align 4, !tbaa !10
  %mul30 = mul i32 %add28, %44
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %add31 = add i32 1, %45
  %add32 = add i32 %mul30, %add31
  %idxprom33 = zext i32 %add32 to i64
  %46 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags34 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %46, i32 0, i32 3
  %47 = load i16*, i16** %flags34, align 8, !tbaa !12
  %arrayidx35 = getelementptr inbounds i16, i16* %47, i64 %idxprom33
  %48 = load i16, i16* %arrayidx35, align 2, !tbaa !84
  %conv36 = sext i16 %48 to i32
  %and37 = and i32 %conv36, 20735
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.26
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %add39 = add i32 1, %49
  %add40 = add i32 %add39, 3
  %50 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride41 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %50, i32 0, i32 8
  %51 = load i32, i32* %flags_stride41, align 4, !tbaa !10
  %mul42 = mul i32 %add40, %51
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %add43 = add i32 1, %52
  %add44 = add i32 %mul42, %add43
  %idxprom45 = zext i32 %add44 to i64
  %53 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags46 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %53, i32 0, i32 3
  %54 = load i16*, i16** %flags46, align 8, !tbaa !12
  %arrayidx47 = getelementptr inbounds i16, i16* %54, i64 %idxprom45
  %55 = load i16, i16* %arrayidx47, align 2, !tbaa !84
  %conv48 = sext i16 %55 to i32
  %and49 = and i32 %conv48, -1095
  %and50 = and i32 %and49, 20735
  %tobool51 = icmp ne i32 %and50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.26, %lor.lhs.false, %if.then.8
  %56 = phi i1 [ true, %lor.lhs.false.26 ], [ true, %lor.lhs.false ], [ true, %if.then.8 ], [ %tobool51, %lor.rhs ]
  %lnot = xor i1 %56, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %agg, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body.5
  store i32 0, i32* %agg, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %57 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %57, 0
  br i1 %tobool52, label %if.then.53, label %if.else.65

if.then.53:                                       ; preds = %if.end
  %58 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %58, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 17
  %59 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %59, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx54, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %60 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call = call i32 @opj_mqc_decode(%struct.opj_mqc* %60) #7
  %tobool55 = icmp ne i32 %call, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.then.53
  br label %for.inc.103

if.end.57:                                        ; preds = %if.then.53
  %61 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs58 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %61, i32 0, i32 6
  %arrayidx59 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs58, i32 0, i64 18
  %62 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx60 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %62, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx59, %struct.opj_mqc_state*** %curctx60, align 8, !tbaa !86
  %63 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call61 = call i32 @opj_mqc_decode(%struct.opj_mqc* %63) #7
  store i32 %call61, i32* %runlen, align 4, !tbaa !5
  %64 = load i32, i32* %runlen, align 4, !tbaa !5
  %shl62 = shl i32 %64, 1
  %65 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call63 = call i32 @opj_mqc_decode(%struct.opj_mqc* %65) #7
  %or64 = or i32 %shl62, %call63
  store i32 %or64, i32* %runlen, align 4, !tbaa !5
  br label %if.end.66

if.else.65:                                       ; preds = %if.end
  store i32 0, i32* %runlen, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.end.57
  %66 = load i32, i32* %k, align 4, !tbaa !5
  %67 = load i32, i32* %runlen, align 4, !tbaa !5
  %add67 = add i32 %66, %67
  store i32 %add67, i32* %j, align 4, !tbaa !5
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %if.end.66
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %69 = load i32, i32* %k, align 4, !tbaa !5
  %add69 = add i32 %69, 4
  %cmp70 = icmp ult i32 %68, %add69
  br i1 %cmp70, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.68
  %70 = load i32, i32* %j, align 4, !tbaa !5
  %71 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h72 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %71, i32 0, i32 5
  %72 = load i32, i32* %h72, align 4, !tbaa !14
  %cmp73 = icmp ult i32 %70, %72
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.68
  %73 = phi i1 [ false, %for.cond.68 ], [ %cmp73, %land.rhs ]
  br i1 %73, label %for.body.75, label %for.end

for.body.75:                                      ; preds = %land.end
  %74 = load i32, i32* %j, align 4, !tbaa !5
  %75 = load i32, i32* %k, align 4, !tbaa !5
  %add76 = add i32 %75, 3
  %cmp77 = icmp eq i32 %74, %add76
  br i1 %cmp77, label %lor.end.83, label %lor.rhs.79

lor.rhs.79:                                       ; preds = %for.body.75
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %77 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h80 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %77, i32 0, i32 5
  %78 = load i32, i32* %h80, align 4, !tbaa !14
  %sub = sub i32 %78, 1
  %cmp81 = icmp eq i32 %76, %sub
  br label %lor.end.83

lor.end.83:                                       ; preds = %lor.rhs.79, %for.body.75
  %79 = phi i1 [ true, %for.body.75 ], [ %cmp81, %lor.rhs.79 ]
  %cond = select i1 %79, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %80 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %81 = load i32, i32* %j, align 4, !tbaa !5
  %add84 = add i32 %81, 1
  %82 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride85 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %82, i32 0, i32 8
  %83 = load i32, i32* %flags_stride85, align 4, !tbaa !10
  %mul86 = mul i32 %add84, %83
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %add87 = add i32 %mul86, %84
  %add88 = add i32 %add87, 1
  %idxprom89 = zext i32 %add88 to i64
  %85 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags90 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %85, i32 0, i32 3
  %86 = load i16*, i16** %flags90, align 8, !tbaa !12
  %arrayidx91 = getelementptr inbounds i16, i16* %86, i64 %idxprom89
  %87 = load i32, i32* %j, align 4, !tbaa !5
  %88 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w92 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %88, i32 0, i32 4
  %89 = load i32, i32* %w92, align 4, !tbaa !13
  %mul93 = mul i32 %87, %89
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %add94 = add i32 %mul93, %90
  %idxprom95 = zext i32 %add94 to i64
  %91 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %91, i32 0, i32 2
  %92 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx96 = getelementptr inbounds i32, i32* %92, i64 %idxprom95
  %93 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %94 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  %95 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %95, 0
  br i1 %tobool97, label %land.rhs.98, label %land.end.102

land.rhs.98:                                      ; preds = %lor.end.83
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %97 = load i32, i32* %k, align 4, !tbaa !5
  %98 = load i32, i32* %runlen, align 4, !tbaa !5
  %add99 = add i32 %97, %98
  %cmp100 = icmp eq i32 %96, %add99
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.98, %lor.end.83
  %99 = phi i1 [ false, %lor.end.83 ], [ %cmp100, %land.rhs.98 ]
  %land.ext = zext i1 %99 to i32
  %100 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step_vsc(%struct.opj_t1* %80, i16* %arrayidx91, i32* %arrayidx96, i32 %93, i32 %94, i32 %land.ext, i32 %100) #7
  br label %for.inc

for.inc:                                          ; preds = %land.end.102
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %101, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.68

for.end:                                          ; preds = %land.end
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end, %if.then.56
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %inc104 = add i32 %102, 1
  store i32 %inc104, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.105:                                      ; preds = %for.cond.3
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %103 = load i32, i32* %k, align 4, !tbaa !5
  %add107 = add i32 %103, 4
  store i32 %add107, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  br label %if.end.300

if.else.109:                                      ; preds = %entry
  %104 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data110 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %105, i32 0, i32 2
  %106 = load i32*, i32** %data110, align 8, !tbaa !9
  store i32* %106, i32** %data1, align 8, !tbaa !1
  %107 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags111 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %108, i32 0, i32 3
  %109 = load i16*, i16** %flags111, align 8, !tbaa !12
  %arrayidx112 = getelementptr inbounds i16, i16* %109, i64 1
  store i16* %arrayidx112, i16** %flags1, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.269, %if.else.109
  %110 = load i32, i32* %k, align 4, !tbaa !5
  %111 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h114 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %111, i32 0, i32 5
  %112 = load i32, i32* %h114, align 4, !tbaa !14
  %and115 = and i32 %112, -4
  %cmp116 = icmp ult i32 %110, %and115
  br i1 %cmp116, label %for.body.118, label %for.end.271

for.body.118:                                     ; preds = %for.cond.113
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.258, %for.body.118
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %114 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w120 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %114, i32 0, i32 4
  %115 = load i32, i32* %w120, align 4, !tbaa !13
  %cmp121 = icmp ult i32 %113, %115
  br i1 %cmp121, label %for.body.123, label %for.end.260

for.body.123:                                     ; preds = %for.cond.119
  %116 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = load i32*, i32** %data1, align 8, !tbaa !1
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = zext i32 %118 to i64
  %add.ptr = getelementptr inbounds i32, i32* %117, i64 %idx.ext
  store i32* %add.ptr, i32** %data2, align 8, !tbaa !1
  %119 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %120 = load i16*, i16** %flags1, align 8, !tbaa !1
  %121 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext124 = zext i32 %121 to i64
  %add.ptr125 = getelementptr inbounds i16, i16* %120, i64 %idx.ext124
  store i16* %add.ptr125, i16** %flags2, align 8, !tbaa !1
  %122 = load i32, i32* %k, align 4, !tbaa !5
  %add126 = add i32 1, %122
  %123 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride127 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %123, i32 0, i32 8
  %124 = load i32, i32* %flags_stride127, align 4, !tbaa !10
  %mul128 = mul i32 %add126, %124
  %125 = load i32, i32* %i, align 4, !tbaa !5
  %add129 = add i32 1, %125
  %add130 = add i32 %mul128, %add129
  %idxprom131 = zext i32 %add130 to i64
  %126 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags132 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %126, i32 0, i32 3
  %127 = load i16*, i16** %flags132, align 8, !tbaa !12
  %arrayidx133 = getelementptr inbounds i16, i16* %127, i64 %idxprom131
  %128 = load i16, i16* %arrayidx133, align 2, !tbaa !84
  %conv134 = sext i16 %128 to i32
  %and135 = and i32 %conv134, 20735
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %lor.end.176, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %for.body.123
  %129 = load i32, i32* %k, align 4, !tbaa !5
  %add138 = add i32 1, %129
  %add139 = add i32 %add138, 1
  %130 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride140 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %130, i32 0, i32 8
  %131 = load i32, i32* %flags_stride140, align 4, !tbaa !10
  %mul141 = mul i32 %add139, %131
  %132 = load i32, i32* %i, align 4, !tbaa !5
  %add142 = add i32 1, %132
  %add143 = add i32 %mul141, %add142
  %idxprom144 = zext i32 %add143 to i64
  %133 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags145 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %133, i32 0, i32 3
  %134 = load i16*, i16** %flags145, align 8, !tbaa !12
  %arrayidx146 = getelementptr inbounds i16, i16* %134, i64 %idxprom144
  %135 = load i16, i16* %arrayidx146, align 2, !tbaa !84
  %conv147 = sext i16 %135 to i32
  %and148 = and i32 %conv147, 20735
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %lor.end.176, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %lor.lhs.false.137
  %136 = load i32, i32* %k, align 4, !tbaa !5
  %add151 = add i32 1, %136
  %add152 = add i32 %add151, 2
  %137 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride153 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %137, i32 0, i32 8
  %138 = load i32, i32* %flags_stride153, align 4, !tbaa !10
  %mul154 = mul i32 %add152, %138
  %139 = load i32, i32* %i, align 4, !tbaa !5
  %add155 = add i32 1, %139
  %add156 = add i32 %mul154, %add155
  %idxprom157 = zext i32 %add156 to i64
  %140 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags158 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %140, i32 0, i32 3
  %141 = load i16*, i16** %flags158, align 8, !tbaa !12
  %arrayidx159 = getelementptr inbounds i16, i16* %141, i64 %idxprom157
  %142 = load i16, i16* %arrayidx159, align 2, !tbaa !84
  %conv160 = sext i16 %142 to i32
  %and161 = and i32 %conv160, 20735
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %lor.end.176, label %lor.rhs.163

lor.rhs.163:                                      ; preds = %lor.lhs.false.150
  %143 = load i32, i32* %k, align 4, !tbaa !5
  %add164 = add i32 1, %143
  %add165 = add i32 %add164, 3
  %144 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride166 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %144, i32 0, i32 8
  %145 = load i32, i32* %flags_stride166, align 4, !tbaa !10
  %mul167 = mul i32 %add165, %145
  %146 = load i32, i32* %i, align 4, !tbaa !5
  %add168 = add i32 1, %146
  %add169 = add i32 %mul167, %add168
  %idxprom170 = zext i32 %add169 to i64
  %147 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags171 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %147, i32 0, i32 3
  %148 = load i16*, i16** %flags171, align 8, !tbaa !12
  %arrayidx172 = getelementptr inbounds i16, i16* %148, i64 %idxprom170
  %149 = load i16, i16* %arrayidx172, align 2, !tbaa !84
  %conv173 = sext i16 %149 to i32
  %and174 = and i32 %conv173, 20735
  %tobool175 = icmp ne i32 %and174, 0
  br label %lor.end.176

lor.end.176:                                      ; preds = %lor.rhs.163, %lor.lhs.false.150, %lor.lhs.false.137, %for.body.123
  %150 = phi i1 [ true, %lor.lhs.false.150 ], [ true, %lor.lhs.false.137 ], [ true, %for.body.123 ], [ %tobool175, %lor.rhs.163 ]
  %lnot177 = xor i1 %150, true
  %lnot.ext178 = zext i1 %lnot177 to i32
  store i32 %lnot.ext178, i32* %agg, align 4, !tbaa !5
  %151 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %151, 0
  br i1 %tobool179, label %if.then.180, label %if.else.231

if.then.180:                                      ; preds = %lor.end.176
  %152 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs181 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %152, i32 0, i32 6
  %arrayidx182 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs181, i32 0, i64 17
  %153 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx183 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %153, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx182, %struct.opj_mqc_state*** %curctx183, align 8, !tbaa !86
  %154 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call184 = call i32 @opj_mqc_decode(%struct.opj_mqc* %154) #7
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.end.187, label %if.then.186

if.then.186:                                      ; preds = %if.then.180
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup

if.end.187:                                       ; preds = %if.then.180
  %155 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs188 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %155, i32 0, i32 6
  %arrayidx189 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs188, i32 0, i64 18
  %156 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx190 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %156, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx189, %struct.opj_mqc_state*** %curctx190, align 8, !tbaa !86
  %157 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call191 = call i32 @opj_mqc_decode(%struct.opj_mqc* %157) #7
  store i32 %call191, i32* %runlen, align 4, !tbaa !5
  %158 = load i32, i32* %runlen, align 4, !tbaa !5
  %shl192 = shl i32 %158, 1
  %159 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call193 = call i32 @opj_mqc_decode(%struct.opj_mqc* %159) #7
  %or194 = or i32 %shl192, %call193
  store i32 %or194, i32* %runlen, align 4, !tbaa !5
  %160 = load i32, i32* %runlen, align 4, !tbaa !5
  %161 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride195 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %161, i32 0, i32 8
  %162 = load i32, i32* %flags_stride195, align 4, !tbaa !10
  %mul196 = mul i32 %160, %162
  %163 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext197 = zext i32 %mul196 to i64
  %add.ptr198 = getelementptr inbounds i16, i16* %163, i64 %idx.ext197
  store i16* %add.ptr198, i16** %flags2, align 8, !tbaa !1
  %164 = load i32, i32* %runlen, align 4, !tbaa !5
  %165 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w199 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %165, i32 0, i32 4
  %166 = load i32, i32* %w199, align 4, !tbaa !13
  %mul200 = mul i32 %164, %166
  %167 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext201 = zext i32 %mul200 to i64
  %add.ptr202 = getelementptr inbounds i32, i32* %167, i64 %idx.ext201
  store i32* %add.ptr202, i32** %data2, align 8, !tbaa !1
  %168 = load i32, i32* %k, align 4, !tbaa !5
  %169 = load i32, i32* %runlen, align 4, !tbaa !5
  %add203 = add i32 %168, %169
  store i32 %add203, i32* %j, align 4, !tbaa !5
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.228, %if.end.187
  %170 = load i32, i32* %j, align 4, !tbaa !5
  %171 = load i32, i32* %k, align 4, !tbaa !5
  %add205 = add i32 %171, 4
  %cmp206 = icmp ult i32 %170, %add205
  br i1 %cmp206, label %land.rhs.208, label %land.end.212

land.rhs.208:                                     ; preds = %for.cond.204
  %172 = load i32, i32* %j, align 4, !tbaa !5
  %173 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h209 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %173, i32 0, i32 5
  %174 = load i32, i32* %h209, align 4, !tbaa !14
  %cmp210 = icmp ult i32 %172, %174
  br label %land.end.212

land.end.212:                                     ; preds = %land.rhs.208, %for.cond.204
  %175 = phi i1 [ false, %for.cond.204 ], [ %cmp210, %land.rhs.208 ]
  br i1 %175, label %for.body.214, label %for.end.230

for.body.214:                                     ; preds = %land.end.212
  %176 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride215 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %176, i32 0, i32 8
  %177 = load i32, i32* %flags_stride215, align 4, !tbaa !10
  %178 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext216 = zext i32 %177 to i64
  %add.ptr217 = getelementptr inbounds i16, i16* %178, i64 %idx.ext216
  store i16* %add.ptr217, i16** %flags2, align 8, !tbaa !1
  %179 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool218 = icmp ne i32 %179, 0
  br i1 %tobool218, label %land.lhs.true, label %if.else.223

land.lhs.true:                                    ; preds = %for.body.214
  %180 = load i32, i32* %j, align 4, !tbaa !5
  %181 = load i32, i32* %k, align 4, !tbaa !5
  %182 = load i32, i32* %runlen, align 4, !tbaa !5
  %add219 = add i32 %181, %182
  %cmp220 = icmp eq i32 %180, %add219
  br i1 %cmp220, label %if.then.222, label %if.else.223

if.then.222:                                      ; preds = %land.lhs.true
  %183 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %184 = load i16*, i16** %flags2, align 8, !tbaa !1
  %185 = load i32*, i32** %data2, align 8, !tbaa !1
  %186 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %187 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step_partial(%struct.opj_t1* %183, i16* %184, i32* %185, i32 %186, i32 %187) #7
  br label %if.end.224

if.else.223:                                      ; preds = %land.lhs.true, %for.body.214
  %188 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %189 = load i16*, i16** %flags2, align 8, !tbaa !1
  %190 = load i32*, i32** %data2, align 8, !tbaa !1
  %191 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %192 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %188, i16* %189, i32* %190, i32 %191, i32 %192) #7
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.223, %if.then.222
  %193 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w225 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %193, i32 0, i32 4
  %194 = load i32, i32* %w225, align 4, !tbaa !13
  %195 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext226 = zext i32 %194 to i64
  %add.ptr227 = getelementptr inbounds i32, i32* %195, i64 %idx.ext226
  store i32* %add.ptr227, i32** %data2, align 8, !tbaa !1
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.224
  %196 = load i32, i32* %j, align 4, !tbaa !5
  %inc229 = add i32 %196, 1
  store i32 %inc229, i32* %j, align 4, !tbaa !5
  br label %for.cond.204

for.end.230:                                      ; preds = %land.end.212
  br label %if.end.256

if.else.231:                                      ; preds = %lor.end.176
  %197 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride232 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %197, i32 0, i32 8
  %198 = load i32, i32* %flags_stride232, align 4, !tbaa !10
  %199 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext233 = zext i32 %198 to i64
  %add.ptr234 = getelementptr inbounds i16, i16* %199, i64 %idx.ext233
  store i16* %add.ptr234, i16** %flags2, align 8, !tbaa !1
  %200 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %201 = load i16*, i16** %flags2, align 8, !tbaa !1
  %202 = load i32*, i32** %data2, align 8, !tbaa !1
  %203 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %204 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %200, i16* %201, i32* %202, i32 %203, i32 %204) #7
  %205 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w235 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %205, i32 0, i32 4
  %206 = load i32, i32* %w235, align 4, !tbaa !13
  %207 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext236 = zext i32 %206 to i64
  %add.ptr237 = getelementptr inbounds i32, i32* %207, i64 %idx.ext236
  store i32* %add.ptr237, i32** %data2, align 8, !tbaa !1
  %208 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride238 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %208, i32 0, i32 8
  %209 = load i32, i32* %flags_stride238, align 4, !tbaa !10
  %210 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext239 = zext i32 %209 to i64
  %add.ptr240 = getelementptr inbounds i16, i16* %210, i64 %idx.ext239
  store i16* %add.ptr240, i16** %flags2, align 8, !tbaa !1
  %211 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %212 = load i16*, i16** %flags2, align 8, !tbaa !1
  %213 = load i32*, i32** %data2, align 8, !tbaa !1
  %214 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %215 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %211, i16* %212, i32* %213, i32 %214, i32 %215) #7
  %216 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w241 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %216, i32 0, i32 4
  %217 = load i32, i32* %w241, align 4, !tbaa !13
  %218 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext242 = zext i32 %217 to i64
  %add.ptr243 = getelementptr inbounds i32, i32* %218, i64 %idx.ext242
  store i32* %add.ptr243, i32** %data2, align 8, !tbaa !1
  %219 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride244 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %219, i32 0, i32 8
  %220 = load i32, i32* %flags_stride244, align 4, !tbaa !10
  %221 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext245 = zext i32 %220 to i64
  %add.ptr246 = getelementptr inbounds i16, i16* %221, i64 %idx.ext245
  store i16* %add.ptr246, i16** %flags2, align 8, !tbaa !1
  %222 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %223 = load i16*, i16** %flags2, align 8, !tbaa !1
  %224 = load i32*, i32** %data2, align 8, !tbaa !1
  %225 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %226 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %222, i16* %223, i32* %224, i32 %225, i32 %226) #7
  %227 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w247 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %227, i32 0, i32 4
  %228 = load i32, i32* %w247, align 4, !tbaa !13
  %229 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext248 = zext i32 %228 to i64
  %add.ptr249 = getelementptr inbounds i32, i32* %229, i64 %idx.ext248
  store i32* %add.ptr249, i32** %data2, align 8, !tbaa !1
  %230 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride250 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %230, i32 0, i32 8
  %231 = load i32, i32* %flags_stride250, align 4, !tbaa !10
  %232 = load i16*, i16** %flags2, align 8, !tbaa !1
  %idx.ext251 = zext i32 %231 to i64
  %add.ptr252 = getelementptr inbounds i16, i16* %232, i64 %idx.ext251
  store i16* %add.ptr252, i16** %flags2, align 8, !tbaa !1
  %233 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %234 = load i16*, i16** %flags2, align 8, !tbaa !1
  %235 = load i32*, i32** %data2, align 8, !tbaa !1
  %236 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %237 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %233, i16* %234, i32* %235, i32 %236, i32 %237) #7
  %238 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w253 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %238, i32 0, i32 4
  %239 = load i32, i32* %w253, align 4, !tbaa !13
  %240 = load i32*, i32** %data2, align 8, !tbaa !1
  %idx.ext254 = zext i32 %239 to i64
  %add.ptr255 = getelementptr inbounds i32, i32* %240, i64 %idx.ext254
  store i32* %add.ptr255, i32** %data2, align 8, !tbaa !1
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.231, %for.end.230
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.256, %if.then.186
  %241 = bitcast i16** %flags2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32** %data2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %for.inc.258
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.258

for.inc.258:                                      ; preds = %cleanup.cont, %cleanup
  %243 = load i32, i32* %i, align 4, !tbaa !5
  %inc259 = add i32 %243, 1
  store i32 %inc259, i32* %i, align 4, !tbaa !5
  br label %for.cond.119

for.end.260:                                      ; preds = %for.cond.119
  %244 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w261 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %244, i32 0, i32 4
  %245 = load i32, i32* %w261, align 4, !tbaa !13
  %shl262 = shl i32 %245, 2
  %246 = load i32*, i32** %data1, align 8, !tbaa !1
  %idx.ext263 = zext i32 %shl262 to i64
  %add.ptr264 = getelementptr inbounds i32, i32* %246, i64 %idx.ext263
  store i32* %add.ptr264, i32** %data1, align 8, !tbaa !1
  %247 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride265 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %247, i32 0, i32 8
  %248 = load i32, i32* %flags_stride265, align 4, !tbaa !10
  %shl266 = shl i32 %248, 2
  %249 = load i16*, i16** %flags1, align 8, !tbaa !1
  %idx.ext267 = zext i32 %shl266 to i64
  %add.ptr268 = getelementptr inbounds i16, i16* %249, i64 %idx.ext267
  store i16* %add.ptr268, i16** %flags1, align 8, !tbaa !1
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.260
  %250 = load i32, i32* %k, align 4, !tbaa !5
  %add270 = add i32 %250, 4
  store i32 %add270, i32* %k, align 4, !tbaa !5
  br label %for.cond.113

for.end.271:                                      ; preds = %for.cond.113
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.297, %for.end.271
  %251 = load i32, i32* %i, align 4, !tbaa !5
  %252 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w273 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %252, i32 0, i32 4
  %253 = load i32, i32* %w273, align 4, !tbaa !13
  %cmp274 = icmp ult i32 %251, %253
  br i1 %cmp274, label %for.body.276, label %for.end.299

for.body.276:                                     ; preds = %for.cond.272
  %254 = bitcast i32** %data2277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i32*, i32** %data1, align 8, !tbaa !1
  %256 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext278 = zext i32 %256 to i64
  %add.ptr279 = getelementptr inbounds i32, i32* %255, i64 %idx.ext278
  store i32* %add.ptr279, i32** %data2277, align 8, !tbaa !1
  %257 = bitcast i16** %flags2280 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #1
  %258 = load i16*, i16** %flags1, align 8, !tbaa !1
  %259 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext281 = zext i32 %259 to i64
  %add.ptr282 = getelementptr inbounds i16, i16* %258, i64 %idx.ext281
  store i16* %add.ptr282, i16** %flags2280, align 8, !tbaa !1
  %260 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %260, i32* %j, align 4, !tbaa !5
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.294, %for.body.276
  %261 = load i32, i32* %j, align 4, !tbaa !5
  %262 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h284 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %262, i32 0, i32 5
  %263 = load i32, i32* %h284, align 4, !tbaa !14
  %cmp285 = icmp ult i32 %261, %263
  br i1 %cmp285, label %for.body.287, label %for.end.296

for.body.287:                                     ; preds = %for.cond.283
  %264 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride288 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %264, i32 0, i32 8
  %265 = load i32, i32* %flags_stride288, align 4, !tbaa !10
  %266 = load i16*, i16** %flags2280, align 8, !tbaa !1
  %idx.ext289 = zext i32 %265 to i64
  %add.ptr290 = getelementptr inbounds i16, i16* %266, i64 %idx.ext289
  store i16* %add.ptr290, i16** %flags2280, align 8, !tbaa !1
  %267 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %268 = load i16*, i16** %flags2280, align 8, !tbaa !1
  %269 = load i32*, i32** %data2277, align 8, !tbaa !1
  %270 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %271 = load i32, i32* %oneplushalf, align 4, !tbaa !5
  call void @opj_t1_dec_clnpass_step(%struct.opj_t1* %267, i16* %268, i32* %269, i32 %270, i32 %271) #7
  %272 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w291 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %272, i32 0, i32 4
  %273 = load i32, i32* %w291, align 4, !tbaa !13
  %274 = load i32*, i32** %data2277, align 8, !tbaa !1
  %idx.ext292 = zext i32 %273 to i64
  %add.ptr293 = getelementptr inbounds i32, i32* %274, i64 %idx.ext292
  store i32* %add.ptr293, i32** %data2277, align 8, !tbaa !1
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.body.287
  %275 = load i32, i32* %j, align 4, !tbaa !5
  %inc295 = add i32 %275, 1
  store i32 %inc295, i32* %j, align 4, !tbaa !5
  br label %for.cond.283

for.end.296:                                      ; preds = %for.cond.283
  %276 = bitcast i16** %flags2280 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i32** %data2277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.end.296
  %278 = load i32, i32* %i, align 4, !tbaa !5
  %inc298 = add i32 %278, 1
  store i32 %inc298, i32* %i, align 4, !tbaa !5
  br label %for.cond.272

for.end.299:                                      ; preds = %for.cond.272
  %279 = bitcast i16** %flags1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i32** %data1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  br label %if.end.300

if.end.300:                                       ; preds = %for.end.299, %for.end.108
  %281 = load i32, i32* %segsym, align 4, !tbaa !5
  %tobool301 = icmp ne i32 %281, 0
  br i1 %tobool301, label %if.then.302, label %if.end.316

if.then.302:                                      ; preds = %if.end.300
  %282 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  store i32 0, i32* %v, align 4, !tbaa !5
  %283 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs303 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %283, i32 0, i32 6
  %arrayidx304 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs303, i32 0, i64 18
  %284 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx305 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %284, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx304, %struct.opj_mqc_state*** %curctx305, align 8, !tbaa !86
  %285 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call306 = call i32 @opj_mqc_decode(%struct.opj_mqc* %285) #7
  store i32 %call306, i32* %v, align 4, !tbaa !5
  %286 = load i32, i32* %v, align 4, !tbaa !5
  %shl307 = shl i32 %286, 1
  %287 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call308 = call i32 @opj_mqc_decode(%struct.opj_mqc* %287) #7
  %or309 = or i32 %shl307, %call308
  store i32 %or309, i32* %v, align 4, !tbaa !5
  %288 = load i32, i32* %v, align 4, !tbaa !5
  %shl310 = shl i32 %288, 1
  %289 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call311 = call i32 @opj_mqc_decode(%struct.opj_mqc* %289) #7
  %or312 = or i32 %shl310, %call311
  store i32 %or312, i32* %v, align 4, !tbaa !5
  %290 = load i32, i32* %v, align 4, !tbaa !5
  %shl313 = shl i32 %290, 1
  %291 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call314 = call i32 @opj_mqc_decode(%struct.opj_mqc* %291) #7
  %or315 = or i32 %shl313, %call314
  store i32 %or315, i32* %v, align 4, !tbaa !5
  %292 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.302, %if.end.300
  %293 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast i32* %segsym to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %agg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %oneplushalf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %half to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_sigpass_step_raw(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf, i32 %vsc) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %raw = alloca %struct.opj_raw*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %raw1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 1
  %4 = load %struct.opj_raw*, %struct.opj_raw** %raw1, align 8, !tbaa !16
  store %struct.opj_raw* %4, %struct.opj_raw** %raw, align 8, !tbaa !1
  %5 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %6 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !84
  %conv = sext i16 %8 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %10 = load i16, i16* %9, align 2, !tbaa !84
  %conv2 = sext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %11, 255
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %cond.end
  %12 = load i32, i32* %flag, align 4, !tbaa !5
  %and5 = and i32 %12, 20480
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.17, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !1
  %call = call i32 @opj_raw_decode(%struct.opj_raw* %13) #7
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !1
  %call9 = call i32 @opj_raw_decode(%struct.opj_raw* %14) #7
  store i32 %call9, i32* %v, align 4, !tbaa !5
  %15 = load i32, i32* %v, align 4, !tbaa !5
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then.8
  %16 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %16
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.then.8
  %17 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %sub, %cond.true.11 ], [ %17, %cond.false.12 ]
  %18 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond14, i32* %18, align 4, !tbaa !5
  %19 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %20 = load i32, i32* %v, align 4, !tbaa !5
  %21 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %21, i32 0, i32 8
  %22 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %19, i32 %20, i32 %22) #7
  br label %if.end

if.end:                                           ; preds = %cond.end.13, %if.then
  %23 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %24 = load i16, i16* %23, align 2, !tbaa !84
  %conv15 = sext i16 %24 to i32
  %or = or i32 %conv15, 16384
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %23, align 2, !tbaa !84
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  %25 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

declare i32 @opj_raw_decode(%struct.opj_raw*) #3

; Function Attrs: nounwind uwtable
define internal void @opj_t1_updateflags(i16* %flagsp, i32 %s, i32 %stride) #0 {
entry:
  %flagsp.addr = alloca i16*, align 8
  %s.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %np = alloca i16*, align 8
  %sp = alloca i16*, align 8
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32 %s, i32* %s.addr, align 4, !tbaa !5
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !5
  %0 = bitcast i16** %np to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %2 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 %idx.neg
  store i16* %add.ptr, i16** %np, align 8, !tbaa !1
  %3 = bitcast i16** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %stride.addr, align 4, !tbaa !5
  %idx.ext1 = zext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %4, i64 %idx.ext1
  store i16* %add.ptr2, i16** %sp, align 8, !tbaa !1
  %6 = load i16*, i16** %np, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 -1
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %or = or i32 %conv, 2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !84
  %8 = load i32, i32* %s.addr, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [8 x i16], [8 x i16]* @opj_t1_updateflags.mod, i32 0, i64 %idxprom
  %9 = load i16, i16* %arrayidx4, align 2, !tbaa !84
  %conv5 = sext i16 %9 to i32
  %10 = load i16*, i16** %np, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx6, align 2, !tbaa !84
  %conv7 = sext i16 %11 to i32
  %or8 = or i32 %conv7, %conv5
  %conv9 = trunc i32 %or8 to i16
  store i16 %conv9, i16* %arrayidx6, align 2, !tbaa !84
  %12 = load i16*, i16** %np, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %12, i64 1
  %13 = load i16, i16* %arrayidx10, align 2, !tbaa !84
  %conv11 = sext i16 %13 to i32
  %or12 = or i32 %conv11, 4
  %conv13 = trunc i32 %or12 to i16
  store i16 %conv13, i16* %arrayidx10, align 2, !tbaa !84
  %14 = load i32, i32* %s.addr, align 4, !tbaa !5
  %add = add i32 %14, 2
  %idxprom14 = zext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [8 x i16], [8 x i16]* @opj_t1_updateflags.mod, i32 0, i64 %idxprom14
  %15 = load i16, i16* %arrayidx15, align 2, !tbaa !84
  %conv16 = sext i16 %15 to i32
  %16 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %16, i64 -1
  %17 = load i16, i16* %arrayidx17, align 2, !tbaa !84
  %conv18 = sext i16 %17 to i32
  %or19 = or i32 %conv18, %conv16
  %conv20 = trunc i32 %or19 to i16
  store i16 %conv20, i16* %arrayidx17, align 2, !tbaa !84
  %18 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx21, align 2, !tbaa !84
  %conv22 = sext i16 %19 to i32
  %or23 = or i32 %conv22, 4096
  %conv24 = trunc i32 %or23 to i16
  store i16 %conv24, i16* %arrayidx21, align 2, !tbaa !84
  %20 = load i32, i32* %s.addr, align 4, !tbaa !5
  %add25 = add i32 %20, 4
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [8 x i16], [8 x i16]* @opj_t1_updateflags.mod, i32 0, i64 %idxprom26
  %21 = load i16, i16* %arrayidx27, align 2, !tbaa !84
  %conv28 = sext i16 %21 to i32
  %22 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %22, i64 1
  %23 = load i16, i16* %arrayidx29, align 2, !tbaa !84
  %conv30 = sext i16 %23 to i32
  %or31 = or i32 %conv30, %conv28
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* %arrayidx29, align 2, !tbaa !84
  %24 = load i16*, i16** %sp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %24, i64 -1
  %25 = load i16, i16* %arrayidx33, align 2, !tbaa !84
  %conv34 = sext i16 %25 to i32
  %or35 = or i32 %conv34, 1
  %conv36 = trunc i32 %or35 to i16
  store i16 %conv36, i16* %arrayidx33, align 2, !tbaa !84
  %26 = load i32, i32* %s.addr, align 4, !tbaa !5
  %add37 = add i32 %26, 6
  %idxprom38 = zext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [8 x i16], [8 x i16]* @opj_t1_updateflags.mod, i32 0, i64 %idxprom38
  %27 = load i16, i16* %arrayidx39, align 2, !tbaa !84
  %conv40 = sext i16 %27 to i32
  %28 = load i16*, i16** %sp, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %28, i64 0
  %29 = load i16, i16* %arrayidx41, align 2, !tbaa !84
  %conv42 = sext i16 %29 to i32
  %or43 = or i32 %conv42, %conv40
  %conv44 = trunc i32 %or43 to i16
  store i16 %conv44, i16* %arrayidx41, align 2, !tbaa !84
  %30 = load i16*, i16** %sp, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %30, i64 1
  %31 = load i16, i16* %arrayidx45, align 2, !tbaa !84
  %conv46 = sext i16 %31 to i32
  %or47 = or i32 %conv46, 8
  %conv48 = trunc i32 %or47 to i16
  store i16 %conv48, i16* %arrayidx45, align 2, !tbaa !84
  %32 = bitcast i16** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i16** %np to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_sigpass_step_mqc_vsc(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf, i32 %vsc) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !84
  %conv2 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %10, 255
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and5 = and i32 %11, 20480
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.27, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %flag, align 4, !tbaa !5
  %13 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_zc(i32 %12, i32 %13) #7
  %conv7 = zext i8 %call to i32
  %idxprom = zext i32 %conv7 to i64
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call8 = call i32 @opj_mqc_decode(%struct.opj_mqc* %16) #7
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %17 = load i32, i32* %flag, align 4, !tbaa !5
  %call11 = call zeroext i8 @opj_t1_getctxno_sc(i32 %17) #7
  %conv12 = zext i8 %call11 to i32
  %idxprom13 = zext i32 %conv12 to i64
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs14 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs14, i32 0, i64 %idxprom13
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx16 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx15, %struct.opj_mqc_state*** %curctx16, align 8, !tbaa !86
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call17 = call i32 @opj_mqc_decode(%struct.opj_mqc* %20) #7
  %21 = load i32, i32* %flag, align 4, !tbaa !5
  %call18 = call zeroext i8 @opj_t1_getspb(i32 %21) #7
  %conv19 = zext i8 %call18 to i32
  %xor = xor i32 %call17, %conv19
  store i32 %xor, i32* %v, align 4, !tbaa !5
  %22 = load i32, i32* %v, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %22, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %if.then.10
  %23 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.then.10
  %24 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %sub, %cond.true.21 ], [ %24, %cond.false.22 ]
  %25 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond24, i32* %25, align 4, !tbaa !5
  %26 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %27 = load i32, i32* %v, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 8
  %29 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %26, i32 %27, i32 %29) #7
  br label %if.end

if.end:                                           ; preds = %cond.end.23, %if.then
  %30 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %31 = load i16, i16* %30, align 2, !tbaa !84
  %conv25 = sext i16 %31 to i32
  %or = or i32 %conv25, 16384
  %conv26 = trunc i32 %or to i16
  store i16 %conv26, i16* %30, align 2, !tbaa !84
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  %32 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @opj_t1_getctxno_zc(i32 %f, i32 %orient) #5 {
entry:
  %f.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  %0 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %shl = shl i32 %0, 8
  %1 = load i32, i32* %f.addr, align 4, !tbaa !5
  %and = and i32 %1, 255
  %or = or i32 %shl, %and
  %idxprom = zext i32 %or to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* @lut_ctxno_zc, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !49
  ret i8 %2
}

declare i32 @opj_mqc_decode(%struct.opj_mqc*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @opj_t1_getctxno_sc(i32 %f) #0 {
entry:
  %f.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4, !tbaa !5
  %0 = load i32, i32* %f.addr, align 4, !tbaa !5
  %and = and i32 %0, 4080
  %shr = lshr i32 %and, 4
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @lut_ctxno_sc, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !49
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @opj_t1_getspb(i32 %f) #0 {
entry:
  %f.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4, !tbaa !5
  %0 = load i32, i32* %f.addr, align 4, !tbaa !5
  %and = and i32 %0, 4080
  %shr = lshr i32 %and, 4
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @lut_spb, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !49
  ret i8 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_sigpass_step_mqc(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %6 = load i16, i16* %5, align 2, !tbaa !84
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %flag, align 4, !tbaa !5
  %7 = load i32, i32* %flag, align 4, !tbaa !5
  %and = and i32 %7, 255
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %flag, align 4, !tbaa !5
  %and2 = and i32 %8, 20480
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end.20, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_zc(i32 %9, i32 %10) #7
  %conv4 = zext i8 %call to i32
  %idxprom = zext i32 %conv4 to i64
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call5 = call i32 @opj_mqc_decode(%struct.opj_mqc* %13) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = load i32, i32* %flag, align 4, !tbaa !5
  %call8 = call zeroext i8 @opj_t1_getctxno_sc(i32 %14) #7
  %conv9 = zext i8 %call8 to i32
  %idxprom10 = zext i32 %conv9 to i64
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs11 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs11, i32 0, i64 %idxprom10
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx13 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx12, %struct.opj_mqc_state*** %curctx13, align 8, !tbaa !86
  %17 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call14 = call i32 @opj_mqc_decode(%struct.opj_mqc* %17) #7
  %18 = load i32, i32* %flag, align 4, !tbaa !5
  %call15 = call zeroext i8 @opj_t1_getspb(i32 %18) #7
  %conv16 = zext i8 %call15 to i32
  %xor = xor i32 %call14, %conv16
  store i32 %xor, i32* %v, align 4, !tbaa !5
  %19 = load i32, i32* %v, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %20 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %20
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %21 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %21, %cond.false ]
  %22 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond, i32* %22, align 4, !tbaa !5
  %23 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %24 = load i32, i32* %v, align 4, !tbaa !5
  %25 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %25, i32 0, i32 8
  %26 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %23, i32 %24, i32 %26) #7
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %27 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %28 = load i16, i16* %27, align 2, !tbaa !84
  %conv18 = sext i16 %28 to i32
  %or = or i32 %conv18, 16384
  %conv19 = trunc i32 %or to i16
  store i16 %conv19, i16* %27, align 2, !tbaa !84
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %land.lhs.true, %entry
  %29 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_refpass_step_raw(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %poshalf, i32 %neghalf, i32 %vsc) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %poshalf.addr = alloca i32, align 4
  %neghalf.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %t = alloca i32, align 4
  %flag = alloca i32, align 4
  %raw = alloca %struct.opj_raw*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %poshalf, i32* %poshalf.addr, align 4, !tbaa !5
  store i32 %neghalf, i32* %neghalf.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %raw1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %4, i32 0, i32 1
  %5 = load %struct.opj_raw*, %struct.opj_raw** %raw1, align 8, !tbaa !16
  store %struct.opj_raw* %5, %struct.opj_raw** %raw, align 8, !tbaa !1
  %6 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !84
  %conv = sext i16 %8 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %10 = load i16, i16* %9, align 2, !tbaa !84
  %conv2 = sext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %11, 20480
  %cmp = icmp eq i32 %and3, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load %struct.opj_raw*, %struct.opj_raw** %raw, align 8, !tbaa !1
  %call = call i32 @opj_raw_decode(%struct.opj_raw* %12) #7
  store i32 %call, i32* %v, align 4, !tbaa !5
  %13 = load i32, i32* %v, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.then
  %14 = load i32, i32* %poshalf.addr, align 4, !tbaa !5
  br label %cond.end.8

cond.false.7:                                     ; preds = %if.then
  %15 = load i32, i32* %neghalf.addr, align 4, !tbaa !5
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %14, %cond.true.6 ], [ %15, %cond.false.7 ]
  store i32 %cond9, i32* %t, align 4, !tbaa !5
  %16 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.8
  %18 = load i32, i32* %t, align 4, !tbaa !5
  %sub = sub nsw i32 0, %18
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end.8
  %19 = load i32, i32* %t, align 4, !tbaa !5
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i32 [ %sub, %cond.true.12 ], [ %19, %cond.false.13 ]
  %20 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %add = add nsw i32 %21, %cond15
  store i32 %add, i32* %20, align 4, !tbaa !5
  %22 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %23 = load i16, i16* %22, align 2, !tbaa !84
  %conv16 = sext i16 %23 to i32
  %or = or i32 %conv16, 8192
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %22, align 2, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end
  %24 = bitcast %struct.opj_raw** %raw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_refpass_step_mqc_vsc(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %poshalf, i32 %neghalf, i32 %vsc) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %poshalf.addr = alloca i32, align 4
  %neghalf.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %t = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %poshalf, i32* %poshalf.addr, align 4, !tbaa !5
  store i32 %neghalf, i32* %neghalf.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %4, i32 0, i32 0
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %5, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %6 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %8 = load i16, i16* %7, align 2, !tbaa !84
  %conv = sext i16 %8 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %10 = load i16, i16* %9, align 2, !tbaa !84
  %conv2 = sext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %11, 20480
  %cmp = icmp eq i32 %and3, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %flag, align 4, !tbaa !5
  %call = call i32 @opj_t1_getctxno_mag(i32 %12) #7
  %idxprom = zext i32 %call to i64
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %13, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call5 = call i32 @opj_mqc_decode(%struct.opj_mqc* %15) #7
  store i32 %call5, i32* %v, align 4, !tbaa !5
  %16 = load i32, i32* %v, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.then
  %17 = load i32, i32* %poshalf.addr, align 4, !tbaa !5
  br label %cond.end.9

cond.false.8:                                     ; preds = %if.then
  %18 = load i32, i32* %neghalf.addr, align 4, !tbaa !5
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i32 [ %17, %cond.true.7 ], [ %18, %cond.false.8 ]
  store i32 %cond10, i32* %t, align 4, !tbaa !5
  %19 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %20, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  %21 = load i32, i32* %t, align 4, !tbaa !5
  %sub = sub nsw i32 0, %21
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.9
  %22 = load i32, i32* %t, align 4, !tbaa !5
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %sub, %cond.true.13 ], [ %22, %cond.false.14 ]
  %23 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %add = add nsw i32 %24, %cond16
  store i32 %add, i32* %23, align 4, !tbaa !5
  %25 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %26 = load i16, i16* %25, align 2, !tbaa !84
  %conv17 = sext i16 %26 to i32
  %or = or i32 %conv17, 8192
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, i16* %25, align 2, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %cond.end.15, %cond.end
  %27 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_t1_getctxno_mag(i32 %f) #5 {
entry:
  %f.addr = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4, !tbaa !5
  %0 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %f.addr, align 4, !tbaa !5
  %and = and i32 %1, 255
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 15, i32 14
  store i32 %cond, i32* %tmp1, align 4, !tbaa !5
  %2 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %f.addr, align 4, !tbaa !5
  %and1 = and i32 %3, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %tmp1, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 16, %cond.true ], [ %4, %cond.false ]
  store i32 %cond3, i32* %tmp2, align 4, !tbaa !5
  %5 = load i32, i32* %tmp2, align 4, !tbaa !5
  %6 = bitcast i32* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast i32* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_t1_dec_refpass_step_mqc(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %poshalf, i32 %neghalf) #5 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %poshalf.addr = alloca i32, align 4
  %neghalf.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %t = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %poshalf, i32* %poshalf.addr, align 4, !tbaa !5
  store i32 %neghalf, i32* %neghalf.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %4, i32 0, i32 0
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %5, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %flag, align 4, !tbaa !5
  %8 = load i32, i32* %flag, align 4, !tbaa !5
  %and = and i32 %8, 20480
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %flag, align 4, !tbaa !5
  %call = call i32 @opj_t1_getctxno_mag(i32 %9) #7
  %idxprom = zext i32 %call to i64
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call3 = call i32 @opj_mqc_decode(%struct.opj_mqc* %12) #7
  store i32 %call3, i32* %v, align 4, !tbaa !5
  %13 = load i32, i32* %v, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i32, i32* %poshalf.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i32, i32* %neghalf.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %t, align 4, !tbaa !5
  %16 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  %18 = load i32, i32* %t, align 4, !tbaa !5
  %sub = sub nsw i32 0, %18
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %19 = load i32, i32* %t, align 4, !tbaa !5
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %sub, %cond.true.6 ], [ %19, %cond.false.7 ]
  %20 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %add = add nsw i32 %21, %cond9
  store i32 %add, i32* %20, align 4, !tbaa !5
  %22 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %23 = load i16, i16* %22, align 2, !tbaa !84
  %conv10 = sext i16 %23 to i32
  %or = or i32 %conv10, 8192
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %22, align 2, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %cond.end.8, %entry
  %24 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_clnpass_step_vsc(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf, i32 %partial, i32 %vsc) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %partial.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  store i32 %partial, i32* %partial.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !84
  %conv2 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %partial.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %LABEL_PARTIAL

if.end:                                           ; preds = %cond.end
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and4 = and i32 %11, 20480
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.end.26, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %flag, align 4, !tbaa !5
  %13 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_zc(i32 %12, i32 %13) #7
  %conv7 = zext i8 %call to i32
  %idxprom = zext i32 %conv7 to i64
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call8 = call i32 @opj_mqc_decode(%struct.opj_mqc* %16) #7
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %if.then.6
  br label %LABEL_PARTIAL

LABEL_PARTIAL:                                    ; preds = %if.then.10, %if.then
  %17 = load i32, i32* %flag, align 4, !tbaa !5
  %call11 = call zeroext i8 @opj_t1_getctxno_sc(i32 %17) #7
  %conv12 = zext i8 %call11 to i32
  %idxprom13 = zext i32 %conv12 to i64
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs14 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs14, i32 0, i64 %idxprom13
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx16 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx15, %struct.opj_mqc_state*** %curctx16, align 8, !tbaa !86
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call17 = call i32 @opj_mqc_decode(%struct.opj_mqc* %20) #7
  %21 = load i32, i32* %flag, align 4, !tbaa !5
  %call18 = call zeroext i8 @opj_t1_getspb(i32 %21) #7
  %conv19 = zext i8 %call18 to i32
  %xor = xor i32 %call17, %conv19
  store i32 %xor, i32* %v, align 4, !tbaa !5
  %22 = load i32, i32* %v, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %22, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %LABEL_PARTIAL
  %23 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %23
  br label %cond.end.23

cond.false.22:                                    ; preds = %LABEL_PARTIAL
  %24 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %sub, %cond.true.21 ], [ %24, %cond.false.22 ]
  %25 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond24, i32* %25, align 4, !tbaa !5
  %26 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %27 = load i32, i32* %v, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %28, i32 0, i32 8
  %29 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %26, i32 %27, i32 %29) #7
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %if.then.6
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %30 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %31 = load i16, i16* %30, align 2, !tbaa !84
  %conv27 = sext i16 %31 to i32
  %and28 = and i32 %conv27, -16385
  %conv29 = trunc i32 %and28 to i16
  store i16 %conv29, i16* %30, align 2, !tbaa !84
  %32 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_clnpass_step_partial(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %flag, align 4, !tbaa !5
  %8 = load i32, i32* %flag, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_sc(i32 %8) #7
  %conv2 = zext i8 %call to i32
  %idxprom = zext i32 %conv2 to i64
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call3 = call i32 @opj_mqc_decode(%struct.opj_mqc* %11) #7
  %12 = load i32, i32* %flag, align 4, !tbaa !5
  %call4 = call zeroext i8 @opj_t1_getspb(i32 %12) #7
  %conv5 = zext i8 %call4 to i32
  %xor = xor i32 %call3, %conv5
  store i32 %xor, i32* %v, align 4, !tbaa !5
  %13 = load i32, i32* %v, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %15, %cond.false ]
  %16 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond, i32* %16, align 4, !tbaa !5
  %17 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %18 = load i32, i32* %v, align 4, !tbaa !5
  %19 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %19, i32 0, i32 8
  %20 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %17, i32 %18, i32 %20) #7
  %21 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %22 = load i16, i16* %21, align 2, !tbaa !84
  %conv6 = sext i16 %22 to i32
  %and = and i32 %conv6, -16385
  %conv7 = trunc i32 %and to i16
  store i16 %conv7, i16* %21, align 2, !tbaa !84
  %23 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_dec_clnpass_step(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %oneplushalf) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %oneplushalf.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %oneplushalf, i32* %oneplushalf.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %6 = load i16, i16* %5, align 2, !tbaa !84
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %flag, align 4, !tbaa !5
  %7 = load i32, i32* %flag, align 4, !tbaa !5
  %and = and i32 %7, 20480
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.16, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %flag, align 4, !tbaa !5
  %9 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_zc(i32 %8, i32 %9) #7
  %conv2 = zext i8 %call to i32
  %idxprom = zext i32 %conv2 to i64
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call3 = call i32 @opj_mqc_decode(%struct.opj_mqc* %12) #7
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load i32, i32* %flag, align 4, !tbaa !5
  %call6 = call zeroext i8 @opj_t1_getctxno_sc(i32 %13) #7
  %conv7 = zext i8 %call6 to i32
  %idxprom8 = zext i32 %conv7 to i64
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs9 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs9, i32 0, i64 %idxprom8
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx11 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx10, %struct.opj_mqc_state*** %curctx11, align 8, !tbaa !86
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %call12 = call i32 @opj_mqc_decode(%struct.opj_mqc* %16) #7
  %17 = load i32, i32* %flag, align 4, !tbaa !5
  %call13 = call zeroext i8 @opj_t1_getspb(i32 %17) #7
  %conv14 = zext i8 %call13 to i32
  %xor = xor i32 %call12, %conv14
  store i32 %xor, i32* %v, align 4, !tbaa !5
  %18 = load i32, i32* %v, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  %19 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %19
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %20 = load i32, i32* %oneplushalf.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %20, %cond.false ]
  %21 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  store i32 %cond, i32* %21, align 4, !tbaa !5
  %22 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %23 = load i32, i32* %v, align 4, !tbaa !5
  %24 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %24, i32 0, i32 8
  %25 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %22, i32 %23, i32 %25) #7
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %26 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %27 = load i16, i16* %26, align 2, !tbaa !84
  %conv17 = sext i16 %27 to i32
  %and18 = and i32 %conv17, -16385
  %conv19 = trunc i32 %and18 to i16
  store i16 %conv19, i16* %26, align 2, !tbaa !84
  %28 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floorlog2(i32 %a) #5 {
entry:
  %a.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %a.addr, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %l, align 4, !tbaa !5
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

declare void @opj_mqc_init_enc(%struct.opj_mqc*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_sigpass(%struct.opj_t1* %t1, i32 %bpno, i32 %orient, i32* %nmsedec, i8 zeroext %type, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %cblksty.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vsc = alloca i32, align 4
  %one = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i8 %type, i8* %type.addr, align 1, !tbaa !49
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  store i32 0, i32* %5, align 4, !tbaa !5
  %6 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %6, 6
  %shl = shl i32 1, %add
  store i32 %shl, i32* %one, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %7 = load i32, i32* %k, align 4, !tbaa !5
  %8 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %8, i32 0, i32 5
  %9 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.24, %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %11, i32 0, i32 4
  %12 = load i32, i32* %w, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %10, %12
  br i1 %cmp2, label %for.body.3, label %for.end.26

for.body.3:                                       ; preds = %for.cond.1
  %13 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %13, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %14 = load i32, i32* %j, align 4, !tbaa !5
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %add5 = add i32 %15, 4
  %cmp6 = icmp ult i32 %14, %add5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %17 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h7 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %17, i32 0, i32 5
  %18 = load i32, i32* %h7, align 4, !tbaa !14
  %cmp8 = icmp ult i32 %16, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %19 = phi i1 [ false, %for.cond.4 ], [ %cmp8, %land.rhs ]
  br i1 %19, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  %20 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %20, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %for.body.9
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %add11 = add i32 %22, 3
  %cmp12 = icmp eq i32 %21, %add11
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.10
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %24 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h13 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %24, i32 0, i32 5
  %25 = load i32, i32* %h13, align 4, !tbaa !14
  %sub = sub i32 %25, 1
  %cmp14 = icmp eq i32 %23, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.10
  %26 = phi i1 [ true, %land.rhs.10 ], [ %cmp14, %lor.rhs ]
  br label %land.end.15

land.end.15:                                      ; preds = %lor.end, %for.body.9
  %27 = phi i1 [ false, %for.body.9 ], [ %26, %lor.end ]
  %cond = select i1 %27, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %add16 = add i32 %29, 1
  %30 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %30, i32 0, i32 8
  %31 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add16, %31
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %add17 = add i32 %mul, %32
  %add18 = add i32 %add17, 1
  %idxprom = zext i32 %add18 to i64
  %33 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %33, i32 0, i32 3
  %34 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %34, i64 %idxprom
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %36 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w19 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %36, i32 0, i32 4
  %37 = load i32, i32* %w19, align 4, !tbaa !13
  %mul20 = mul i32 %35, %37
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %add21 = add i32 %mul20, %38
  %idxprom22 = zext i32 %add21 to i64
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 2
  %40 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom22
  %41 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %42 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %43 = load i32, i32* %one, align 4, !tbaa !5
  %44 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %45 = load i8, i8* %type.addr, align 1, !tbaa !49
  %46 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_enc_sigpass_step(%struct.opj_t1* %28, i16* %arrayidx, i32* %arrayidx23, i32 %41, i32 %42, i32 %43, i32* %44, i8 zeroext %45, i32 %46) #7
  br label %for.inc

for.inc:                                          ; preds = %land.end.15
  %47 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %47, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %inc25 = add i32 %48, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.26:                                       ; preds = %for.cond.1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %add28 = add i32 %49, 4
  store i32 %add28, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %50 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_refpass(%struct.opj_t1* %t1, i32 %bpno, i32* %nmsedec, i8 zeroext %type, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %cblksty.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vsc = alloca i32, align 4
  %one = alloca i32, align 4
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i8 %type, i8* %type.addr, align 1, !tbaa !49
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  store i32 0, i32* %5, align 4, !tbaa !5
  %6 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %6, 6
  %shl = shl i32 1, %add
  store i32 %shl, i32* %one, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %7 = load i32, i32* %k, align 4, !tbaa !5
  %8 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %8, i32 0, i32 5
  %9 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.24, %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %11, i32 0, i32 4
  %12 = load i32, i32* %w, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %10, %12
  br i1 %cmp2, label %for.body.3, label %for.end.26

for.body.3:                                       ; preds = %for.cond.1
  %13 = load i32, i32* %k, align 4, !tbaa !5
  store i32 %13, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %14 = load i32, i32* %j, align 4, !tbaa !5
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %add5 = add i32 %15, 4
  %cmp6 = icmp ult i32 %14, %add5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %17 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h7 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %17, i32 0, i32 5
  %18 = load i32, i32* %h7, align 4, !tbaa !14
  %cmp8 = icmp ult i32 %16, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %19 = phi i1 [ false, %for.cond.4 ], [ %cmp8, %land.rhs ]
  br i1 %19, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  %20 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %20, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %for.body.9
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %add11 = add i32 %22, 3
  %cmp12 = icmp eq i32 %21, %add11
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.10
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %24 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h13 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %24, i32 0, i32 5
  %25 = load i32, i32* %h13, align 4, !tbaa !14
  %sub = sub i32 %25, 1
  %cmp14 = icmp eq i32 %23, %sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.10
  %26 = phi i1 [ true, %land.rhs.10 ], [ %cmp14, %lor.rhs ]
  br label %land.end.15

land.end.15:                                      ; preds = %lor.end, %for.body.9
  %27 = phi i1 [ false, %for.body.9 ], [ %26, %lor.end ]
  %cond = select i1 %27, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %28 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %add16 = add i32 %29, 1
  %30 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %30, i32 0, i32 8
  %31 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add16, %31
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %add17 = add i32 %mul, %32
  %add18 = add i32 %add17, 1
  %idxprom = zext i32 %add18 to i64
  %33 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %33, i32 0, i32 3
  %34 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %34, i64 %idxprom
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %36 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w19 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %36, i32 0, i32 4
  %37 = load i32, i32* %w19, align 4, !tbaa !13
  %mul20 = mul i32 %35, %37
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %add21 = add i32 %mul20, %38
  %idxprom22 = zext i32 %add21 to i64
  %39 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %39, i32 0, i32 2
  %40 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom22
  %41 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %42 = load i32, i32* %one, align 4, !tbaa !5
  %43 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %44 = load i8, i8* %type.addr, align 1, !tbaa !49
  %45 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_enc_refpass_step(%struct.opj_t1* %28, i16* %arrayidx, i32* %arrayidx23, i32 %41, i32 %42, i32* %43, i8 zeroext %44, i32 %45) #7
  br label %for.inc

for.inc:                                          ; preds = %land.end.15
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %46, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc25 = add i32 %47, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.26:                                       ; preds = %for.cond.1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %add28 = add i32 %48, 4
  store i32 %add28, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %49 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_clnpass(%struct.opj_t1* %t1, i32 %bpno, i32 %orient, i32* %nmsedec, i32 %cblksty) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %bpno.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %cblksty.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %one = alloca i32, align 4
  %agg = alloca i32, align 4
  %runlen = alloca i32, align 4
  %vsc = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i32 %cblksty, i32* %cblksty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %agg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %8, i32 0, i32 0
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %9, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %10 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  store i32 0, i32* %10, align 4, !tbaa !5
  %11 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, 6
  %shl = shl i32 1, %add
  store i32 %shl, i32* %one, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.183, %entry
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %13 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %13, i32 0, i32 5
  %14 = load i32, i32* %h, align 4, !tbaa !14
  %cmp = icmp ult i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.185

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.180, %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %16, i32 0, i32 4
  %17 = load i32, i32* %w, align 4, !tbaa !13
  %cmp3 = icmp ult i32 %15, %17
  br i1 %cmp3, label %for.body.4, label %for.end.182

for.body.4:                                       ; preds = %for.cond.2
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %add5 = add i32 %18, 3
  %19 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h6 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %19, i32 0, i32 5
  %20 = load i32, i32* %h6, align 4, !tbaa !14
  %cmp7 = icmp ult i32 %add5, %20
  br i1 %cmp7, label %if.then, label %if.else.105

if.then:                                          ; preds = %for.body.4
  %21 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and = and i32 %21, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %add9 = add i32 1, %22
  %23 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %23, i32 0, i32 8
  %24 = load i32, i32* %flags_stride, align 4, !tbaa !10
  %mul = mul i32 %add9, %24
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %add10 = add i32 1, %25
  %add11 = add i32 %mul, %add10
  %idxprom = zext i32 %add11 to i64
  %26 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %26, i32 0, i32 3
  %27 = load i16*, i16** %flags, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !84
  %conv = sext i16 %28 to i32
  %and12 = and i32 %conv, 20735
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %add14 = add i32 1, %29
  %add15 = add i32 %add14, 1
  %30 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride16 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %30, i32 0, i32 8
  %31 = load i32, i32* %flags_stride16, align 4, !tbaa !10
  %mul17 = mul i32 %add15, %31
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %add18 = add i32 1, %32
  %add19 = add i32 %mul17, %add18
  %idxprom20 = zext i32 %add19 to i64
  %33 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags21 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %33, i32 0, i32 3
  %34 = load i16*, i16** %flags21, align 8, !tbaa !12
  %arrayidx22 = getelementptr inbounds i16, i16* %34, i64 %idxprom20
  %35 = load i16, i16* %arrayidx22, align 2, !tbaa !84
  %conv23 = sext i16 %35 to i32
  %and24 = and i32 %conv23, 20735
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.end, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %add27 = add i32 1, %36
  %add28 = add i32 %add27, 2
  %37 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride29 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %37, i32 0, i32 8
  %38 = load i32, i32* %flags_stride29, align 4, !tbaa !10
  %mul30 = mul i32 %add28, %38
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %add31 = add i32 1, %39
  %add32 = add i32 %mul30, %add31
  %idxprom33 = zext i32 %add32 to i64
  %40 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags34 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %40, i32 0, i32 3
  %41 = load i16*, i16** %flags34, align 8, !tbaa !12
  %arrayidx35 = getelementptr inbounds i16, i16* %41, i64 %idxprom33
  %42 = load i16, i16* %arrayidx35, align 2, !tbaa !84
  %conv36 = sext i16 %42 to i32
  %and37 = and i32 %conv36, 20735
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.26
  %43 = load i32, i32* %k, align 4, !tbaa !5
  %add39 = add i32 1, %43
  %add40 = add i32 %add39, 3
  %44 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride41 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %44, i32 0, i32 8
  %45 = load i32, i32* %flags_stride41, align 4, !tbaa !10
  %mul42 = mul i32 %add40, %45
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %add43 = add i32 1, %46
  %add44 = add i32 %mul42, %add43
  %idxprom45 = zext i32 %add44 to i64
  %47 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags46 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %47, i32 0, i32 3
  %48 = load i16*, i16** %flags46, align 8, !tbaa !12
  %arrayidx47 = getelementptr inbounds i16, i16* %48, i64 %idxprom45
  %49 = load i16, i16* %arrayidx47, align 2, !tbaa !84
  %conv48 = sext i16 %49 to i32
  %and49 = and i32 %conv48, -1095
  %and50 = and i32 %and49, 20735
  %tobool51 = icmp ne i32 %and50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.26, %lor.lhs.false, %if.then.8
  %50 = phi i1 [ true, %lor.lhs.false.26 ], [ true, %lor.lhs.false ], [ true, %if.then.8 ], [ %tobool51, %lor.rhs ]
  %lnot = xor i1 %50, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %agg, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %add52 = add i32 1, %51
  %52 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride53 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %52, i32 0, i32 8
  %53 = load i32, i32* %flags_stride53, align 4, !tbaa !10
  %mul54 = mul i32 %add52, %53
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %add55 = add i32 1, %54
  %add56 = add i32 %mul54, %add55
  %idxprom57 = zext i32 %add56 to i64
  %55 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags58 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %55, i32 0, i32 3
  %56 = load i16*, i16** %flags58, align 8, !tbaa !12
  %arrayidx59 = getelementptr inbounds i16, i16* %56, i64 %idxprom57
  %57 = load i16, i16* %arrayidx59, align 2, !tbaa !84
  %conv60 = sext i16 %57 to i32
  %and61 = and i32 %conv60, 20735
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %lor.end.102, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.else
  %58 = load i32, i32* %k, align 4, !tbaa !5
  %add64 = add i32 1, %58
  %add65 = add i32 %add64, 1
  %59 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride66 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %59, i32 0, i32 8
  %60 = load i32, i32* %flags_stride66, align 4, !tbaa !10
  %mul67 = mul i32 %add65, %60
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %add68 = add i32 1, %61
  %add69 = add i32 %mul67, %add68
  %idxprom70 = zext i32 %add69 to i64
  %62 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags71 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %62, i32 0, i32 3
  %63 = load i16*, i16** %flags71, align 8, !tbaa !12
  %arrayidx72 = getelementptr inbounds i16, i16* %63, i64 %idxprom70
  %64 = load i16, i16* %arrayidx72, align 2, !tbaa !84
  %conv73 = sext i16 %64 to i32
  %and74 = and i32 %conv73, 20735
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %lor.end.102, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.63
  %65 = load i32, i32* %k, align 4, !tbaa !5
  %add77 = add i32 1, %65
  %add78 = add i32 %add77, 2
  %66 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride79 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %66, i32 0, i32 8
  %67 = load i32, i32* %flags_stride79, align 4, !tbaa !10
  %mul80 = mul i32 %add78, %67
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %add81 = add i32 1, %68
  %add82 = add i32 %mul80, %add81
  %idxprom83 = zext i32 %add82 to i64
  %69 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags84 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %69, i32 0, i32 3
  %70 = load i16*, i16** %flags84, align 8, !tbaa !12
  %arrayidx85 = getelementptr inbounds i16, i16* %70, i64 %idxprom83
  %71 = load i16, i16* %arrayidx85, align 2, !tbaa !84
  %conv86 = sext i16 %71 to i32
  %and87 = and i32 %conv86, 20735
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %lor.end.102, label %lor.rhs.89

lor.rhs.89:                                       ; preds = %lor.lhs.false.76
  %72 = load i32, i32* %k, align 4, !tbaa !5
  %add90 = add i32 1, %72
  %add91 = add i32 %add90, 3
  %73 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride92 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %73, i32 0, i32 8
  %74 = load i32, i32* %flags_stride92, align 4, !tbaa !10
  %mul93 = mul i32 %add91, %74
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %add94 = add i32 1, %75
  %add95 = add i32 %mul93, %add94
  %idxprom96 = zext i32 %add95 to i64
  %76 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags97 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %76, i32 0, i32 3
  %77 = load i16*, i16** %flags97, align 8, !tbaa !12
  %arrayidx98 = getelementptr inbounds i16, i16* %77, i64 %idxprom96
  %78 = load i16, i16* %arrayidx98, align 2, !tbaa !84
  %conv99 = sext i16 %78 to i32
  %and100 = and i32 %conv99, 20735
  %tobool101 = icmp ne i32 %and100, 0
  br label %lor.end.102

lor.end.102:                                      ; preds = %lor.rhs.89, %lor.lhs.false.76, %lor.lhs.false.63, %if.else
  %79 = phi i1 [ true, %lor.lhs.false.76 ], [ true, %lor.lhs.false.63 ], [ true, %if.else ], [ %tobool101, %lor.rhs.89 ]
  %lnot103 = xor i1 %79, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  store i32 %lnot.ext104, i32* %agg, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %lor.end.102, %lor.end
  br label %if.end.106

if.else.105:                                      ; preds = %for.body.4
  store i32 0, i32* %agg, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.end
  %80 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %80, 0
  br i1 %tobool107, label %if.then.108, label %if.else.134

if.then.108:                                      ; preds = %if.end.106
  store i32 0, i32* %runlen, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc, %if.then.108
  %81 = load i32, i32* %runlen, align 4, !tbaa !5
  %cmp110 = icmp ult i32 %81, 4
  br i1 %cmp110, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.109
  %82 = load i32, i32* %k, align 4, !tbaa !5
  %83 = load i32, i32* %runlen, align 4, !tbaa !5
  %add113 = add i32 %82, %83
  %84 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w114 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %84, i32 0, i32 4
  %85 = load i32, i32* %w114, align 4, !tbaa !13
  %mul115 = mul i32 %add113, %85
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %add116 = add i32 %mul115, %86
  %idxprom117 = zext i32 %add116 to i64
  %87 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %87, i32 0, i32 2
  %88 = load i32*, i32** %data, align 8, !tbaa !9
  %arrayidx118 = getelementptr inbounds i32, i32* %88, i64 %idxprom117
  %89 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %call = call i32 @opj_int_abs(i32 %89) #7
  %90 = load i32, i32* %one, align 4, !tbaa !5
  %and119 = and i32 %call, %90
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.body.112
  br label %for.end

if.end.122:                                       ; preds = %for.body.112
  br label %for.inc

for.inc:                                          ; preds = %if.end.122
  %91 = load i32, i32* %runlen, align 4, !tbaa !5
  %inc = add i32 %91, 1
  store i32 %inc, i32* %runlen, align 4, !tbaa !5
  br label %for.cond.109

for.end:                                          ; preds = %if.then.121, %for.cond.109
  %92 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %92, i32 0, i32 6
  %arrayidx123 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 17
  %93 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %93, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx123, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %94 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %95 = load i32, i32* %runlen, align 4, !tbaa !5
  %cmp124 = icmp ne i32 %95, 4
  %conv125 = zext i1 %cmp124 to i32
  call void @opj_mqc_encode(%struct.opj_mqc* %94, i32 %conv125) #7
  %96 = load i32, i32* %runlen, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %96, 4
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %for.end
  br label %for.inc.180

if.end.129:                                       ; preds = %for.end
  %97 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs130 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %97, i32 0, i32 6
  %arrayidx131 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs130, i32 0, i64 18
  %98 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx132 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %98, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx131, %struct.opj_mqc_state*** %curctx132, align 8, !tbaa !86
  %99 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %100 = load i32, i32* %runlen, align 4, !tbaa !5
  %shr = lshr i32 %100, 1
  call void @opj_mqc_encode(%struct.opj_mqc* %99, i32 %shr) #7
  %101 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %102 = load i32, i32* %runlen, align 4, !tbaa !5
  %and133 = and i32 %102, 1
  call void @opj_mqc_encode(%struct.opj_mqc* %101, i32 %and133) #7
  br label %if.end.135

if.else.134:                                      ; preds = %if.end.106
  store i32 0, i32* %runlen, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.end.129
  %103 = load i32, i32* %k, align 4, !tbaa !5
  %104 = load i32, i32* %runlen, align 4, !tbaa !5
  %add136 = add i32 %103, %104
  store i32 %add136, i32* %j, align 4, !tbaa !5
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.177, %if.end.135
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %add138 = add i32 %106, 4
  %cmp139 = icmp ult i32 %105, %add138
  br i1 %cmp139, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.137
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %108 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h141 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %108, i32 0, i32 5
  %109 = load i32, i32* %h141, align 4, !tbaa !14
  %cmp142 = icmp ult i32 %107, %109
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.137
  %110 = phi i1 [ false, %for.cond.137 ], [ %cmp142, %land.rhs ]
  br i1 %110, label %for.body.144, label %for.end.179

for.body.144:                                     ; preds = %land.end
  %111 = load i32, i32* %cblksty.addr, align 4, !tbaa !5
  %and145 = and i32 %111, 8
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %land.rhs.147, label %land.end.156

land.rhs.147:                                     ; preds = %for.body.144
  %112 = load i32, i32* %j, align 4, !tbaa !5
  %113 = load i32, i32* %k, align 4, !tbaa !5
  %add148 = add i32 %113, 3
  %cmp149 = icmp eq i32 %112, %add148
  br i1 %cmp149, label %lor.end.155, label %lor.rhs.151

lor.rhs.151:                                      ; preds = %land.rhs.147
  %114 = load i32, i32* %j, align 4, !tbaa !5
  %115 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %h152 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %115, i32 0, i32 5
  %116 = load i32, i32* %h152, align 4, !tbaa !14
  %sub = sub i32 %116, 1
  %cmp153 = icmp eq i32 %114, %sub
  br label %lor.end.155

lor.end.155:                                      ; preds = %lor.rhs.151, %land.rhs.147
  %117 = phi i1 [ true, %land.rhs.147 ], [ %cmp153, %lor.rhs.151 ]
  br label %land.end.156

land.end.156:                                     ; preds = %lor.end.155, %for.body.144
  %118 = phi i1 [ false, %for.body.144 ], [ %117, %lor.end.155 ]
  %cond = select i1 %118, i32 1, i32 0
  store i32 %cond, i32* %vsc, align 4, !tbaa !5
  %119 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %120 = load i32, i32* %j, align 4, !tbaa !5
  %add157 = add i32 %120, 1
  %121 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride158 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %121, i32 0, i32 8
  %122 = load i32, i32* %flags_stride158, align 4, !tbaa !10
  %mul159 = mul i32 %add157, %122
  %123 = load i32, i32* %i, align 4, !tbaa !5
  %add160 = add i32 %mul159, %123
  %add161 = add i32 %add160, 1
  %idxprom162 = zext i32 %add161 to i64
  %124 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags163 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %124, i32 0, i32 3
  %125 = load i16*, i16** %flags163, align 8, !tbaa !12
  %arrayidx164 = getelementptr inbounds i16, i16* %125, i64 %idxprom162
  %126 = load i32, i32* %j, align 4, !tbaa !5
  %127 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %w165 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %127, i32 0, i32 4
  %128 = load i32, i32* %w165, align 4, !tbaa !13
  %mul166 = mul i32 %126, %128
  %129 = load i32, i32* %i, align 4, !tbaa !5
  %add167 = add i32 %mul166, %129
  %idxprom168 = zext i32 %add167 to i64
  %130 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %data169 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %130, i32 0, i32 2
  %131 = load i32*, i32** %data169, align 8, !tbaa !9
  %arrayidx170 = getelementptr inbounds i32, i32* %131, i64 %idxprom168
  %132 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %133 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %134 = load i32, i32* %one, align 4, !tbaa !5
  %135 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %136 = load i32, i32* %agg, align 4, !tbaa !5
  %tobool171 = icmp ne i32 %136, 0
  br i1 %tobool171, label %land.rhs.172, label %land.end.176

land.rhs.172:                                     ; preds = %land.end.156
  %137 = load i32, i32* %j, align 4, !tbaa !5
  %138 = load i32, i32* %k, align 4, !tbaa !5
  %139 = load i32, i32* %runlen, align 4, !tbaa !5
  %add173 = add i32 %138, %139
  %cmp174 = icmp eq i32 %137, %add173
  br label %land.end.176

land.end.176:                                     ; preds = %land.rhs.172, %land.end.156
  %140 = phi i1 [ false, %land.end.156 ], [ %cmp174, %land.rhs.172 ]
  %land.ext = zext i1 %140 to i32
  %141 = load i32, i32* %vsc, align 4, !tbaa !5
  call void @opj_t1_enc_clnpass_step(%struct.opj_t1* %119, i16* %arrayidx164, i32* %arrayidx170, i32 %132, i32 %133, i32 %134, i32* %135, i32 %land.ext, i32 %141) #7
  br label %for.inc.177

for.inc.177:                                      ; preds = %land.end.176
  %142 = load i32, i32* %j, align 4, !tbaa !5
  %inc178 = add i32 %142, 1
  store i32 %inc178, i32* %j, align 4, !tbaa !5
  br label %for.cond.137

for.end.179:                                      ; preds = %land.end
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.end.179, %if.then.128
  %143 = load i32, i32* %i, align 4, !tbaa !5
  %inc181 = add i32 %143, 1
  store i32 %inc181, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.182:                                      ; preds = %for.cond.2
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.end.182
  %144 = load i32, i32* %k, align 4, !tbaa !5
  %add184 = add i32 %144, 4
  store i32 %add184, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.185:                                      ; preds = %for.cond
  %145 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %vsc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %runlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %agg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  ret void
}

declare void @opj_mqc_segmark_enc(%struct.opj_mqc*) #3

; Function Attrs: nounwind uwtable
define internal double @opj_t1_getwmsedec(i32 %nmsedec, i32 %compno, i32 %level, i32 %orient, i32 %bpno, i32 %qmfbid, double %stepsize, i32 %numcomps, double* %mct_norms) #0 {
entry:
  %nmsedec.addr = alloca i32, align 4
  %compno.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  %bpno.addr = alloca i32, align 4
  %qmfbid.addr = alloca i32, align 4
  %stepsize.addr = alloca double, align 8
  %numcomps.addr = alloca i32, align 4
  %mct_norms.addr = alloca double*, align 8
  %w1 = alloca double, align 8
  %w2 = alloca double, align 8
  %wmsedec = alloca double, align 8
  store i32 %nmsedec, i32* %nmsedec.addr, align 4, !tbaa !5
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !5
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %qmfbid, i32* %qmfbid.addr, align 4, !tbaa !5
  store double %stepsize, double* %stepsize.addr, align 8, !tbaa !75
  store i32 %numcomps, i32* %numcomps.addr, align 4, !tbaa !5
  store double* %mct_norms, double** %mct_norms.addr, align 8, !tbaa !1
  %0 = bitcast double* %w1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 1.000000e+00, double* %w1, align 8, !tbaa !75
  %1 = bitcast double* %w2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %wmsedec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %numcomps.addr, align 4, !tbaa !5
  %4 = load double*, double** %mct_norms.addr, align 8, !tbaa !1
  %tobool = icmp ne double* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %compno.addr, align 4, !tbaa !5
  %idxprom = zext i32 %5 to i64
  %6 = load double*, double** %mct_norms.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8, !tbaa !75
  store double %7, double* %w1, align 8, !tbaa !75
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %qmfbid.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %9 = load i32, i32* %level.addr, align 4, !tbaa !5
  %10 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call double @opj_dwt_getnorm(i32 %9, i32 %10) #7
  store double %call, double* %w2, align 8, !tbaa !75
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %level.addr, align 4, !tbaa !5
  %12 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call2 = call double @opj_dwt_getnorm_real(i32 %11, i32 %12) #7
  store double %call2, double* %w2, align 8, !tbaa !75
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %13 = load double, double* %w1, align 8, !tbaa !75
  %14 = load double, double* %w2, align 8, !tbaa !75
  %mul = fmul double %13, %14
  %15 = load double, double* %stepsize.addr, align 8, !tbaa !75
  %mul4 = fmul double %mul, %15
  %16 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %shl = shl i32 1, %16
  %conv = sitofp i32 %shl to double
  %mul5 = fmul double %mul4, %conv
  store double %mul5, double* %wmsedec, align 8, !tbaa !75
  %17 = load double, double* %wmsedec, align 8, !tbaa !75
  %18 = load i32, i32* %nmsedec.addr, align 4, !tbaa !5
  %conv6 = sitofp i32 %18 to double
  %mul7 = fmul double %17, %conv6
  %div = fdiv double %mul7, 8.192000e+03
  %19 = load double, double* %wmsedec, align 8, !tbaa !75
  %mul8 = fmul double %19, %div
  store double %mul8, double* %wmsedec, align 8, !tbaa !75
  %20 = load double, double* %wmsedec, align 8, !tbaa !75
  %21 = bitcast double* %wmsedec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast double* %w2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast double* %w1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret double %20
}

declare void @opj_mqc_flush(%struct.opj_mqc*) #3

declare void @opj_mqc_bypass_init_enc(%struct.opj_mqc*) #3

declare void @opj_mqc_restart_init_enc(%struct.opj_mqc*) #3

declare i32 @opj_mqc_numbytes(%struct.opj_mqc*) #3

declare void @opj_mqc_reset_enc(%struct.opj_mqc*) #3

declare void @opj_mqc_erterm_enc(%struct.opj_mqc*) #3

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_sigpass_step(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %bpno, i32 %one, i32* %nmsedec, i8 zeroext %type, i32 %vsc) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %bpno.addr = alloca i32, align 4
  %one.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %one, i32* %one.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i8 %type, i8* %type.addr, align 1, !tbaa !49
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !84
  %conv2 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %10, 255
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i32, i32* %flag, align 4, !tbaa !5
  %and5 = and i32 %11, 20480
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.41, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %call = call i32 @opj_int_abs(i32 %13) #7
  %14 = load i32, i32* %one.addr, align 4, !tbaa !5
  %and7 = and i32 %call, %14
  %tobool8 = icmp ne i32 %and7, 0
  %cond9 = select i1 %tobool8, i32 1, i32 0
  store i32 %cond9, i32* %v, align 4, !tbaa !5
  %15 = load i32, i32* %flag, align 4, !tbaa !5
  %16 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call10 = call zeroext i8 @opj_t1_getctxno_zc(i32 %15, i32 %16) #7
  %conv11 = zext i8 %call10 to i32
  %idxprom = zext i32 %conv11 to i64
  %17 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %17, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %19 = load i8, i8* %type.addr, align 1, !tbaa !49
  %conv12 = zext i8 %19 to i32
  %cmp = icmp eq i32 %conv12, 1
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %21 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_bypass_enc(%struct.opj_mqc* %20, i32 %21) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %23 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_encode(%struct.opj_mqc* %22, i32 %23) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  %24 = load i32, i32* %v, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.38

if.then.16:                                       ; preds = %if.end
  %25 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %26, 0
  %cond19 = select i1 %cmp17, i32 1, i32 0
  store i32 %cond19, i32* %v, align 4, !tbaa !5
  %27 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %call20 = call i32 @opj_int_abs(i32 %28) #7
  %29 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %29, 6
  %call21 = call signext i16 @opj_t1_getnmsedec_sig(i32 %call20, i32 %add) #7
  %conv22 = sext i16 %call21 to i32
  %30 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %add23 = add nsw i32 %31, %conv22
  store i32 %add23, i32* %30, align 4, !tbaa !5
  %32 = load i32, i32* %flag, align 4, !tbaa !5
  %call24 = call zeroext i8 @opj_t1_getctxno_sc(i32 %32) #7
  %conv25 = zext i8 %call24 to i32
  %idxprom26 = zext i32 %conv25 to i64
  %33 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs27 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %33, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs27, i32 0, i64 %idxprom26
  %34 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx29 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %34, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx28, %struct.opj_mqc_state*** %curctx29, align 8, !tbaa !86
  %35 = load i8, i8* %type.addr, align 1, !tbaa !49
  %conv30 = zext i8 %35 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.16
  %36 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %37 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_bypass_enc(%struct.opj_mqc* %36, i32 %37) #7
  br label %if.end.37

if.else.34:                                       ; preds = %if.then.16
  %38 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %39 = load i32, i32* %v, align 4, !tbaa !5
  %40 = load i32, i32* %flag, align 4, !tbaa !5
  %call35 = call zeroext i8 @opj_t1_getspb(i32 %40) #7
  %conv36 = zext i8 %call35 to i32
  %xor = xor i32 %39, %conv36
  call void @opj_mqc_encode(%struct.opj_mqc* %38, i32 %xor) #7
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %41 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %42 = load i32, i32* %v, align 4, !tbaa !5
  %43 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %43, i32 0, i32 8
  %44 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %41, i32 %42, i32 %44) #7
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  %45 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %46 = load i16, i16* %45, align 2, !tbaa !84
  %conv39 = sext i16 %46 to i32
  %or = or i32 %conv39, 16384
  %conv40 = trunc i32 %or to i16
  store i16 %conv40, i16* %45, align 2, !tbaa !84
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %land.lhs.true, %cond.end
  %47 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_abs(i32 %a) #5 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

declare void @opj_mqc_bypass_enc(%struct.opj_mqc*, i32) #3

declare void @opj_mqc_encode(%struct.opj_mqc*, i32) #3

; Function Attrs: nounwind uwtable
define internal signext i16 @opj_t1_getnmsedec_sig(i32 %x, i32 %bitpos) #0 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca i32, align 4
  %bitpos.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %bitpos, i32* %bitpos.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bitpos.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %bitpos.addr, align 4, !tbaa !5
  %sub = sub i32 %2, 6
  %shr = lshr i32 %1, %sub
  %and = and i32 %shr, 127
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @lut_nmsedec_sig, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !84
  store i16 %3, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and1 = and i32 %4, 127
  %idxprom2 = zext i32 %and1 to i64
  %arrayidx3 = getelementptr inbounds [128 x i16], [128 x i16]* @lut_nmsedec_sig0, i32 0, i64 %idxprom2
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !84
  store i16 %5, i16* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i16, i16* %retval
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_refpass_step(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %bpno, i32 %one, i32* %nmsedec, i8 zeroext %type, i32 %vsc) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %bpno.addr = alloca i32, align 4
  %one.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %one, i32* %one.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i8 %type, i8* %type.addr, align 1, !tbaa !49
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !84
  %conv2 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %flag, align 4, !tbaa !5
  %and3 = and i32 %10, 20480
  %cmp = icmp eq i32 %and3, 4096
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %cond.end
  %11 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %call = call i32 @opj_int_abs(i32 %12) #7
  %13 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, 6
  %call5 = call signext i16 @opj_t1_getnmsedec_ref(i32 %call, i32 %add) #7
  %conv6 = sext i16 %call5 to i32
  %14 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %add7 = add nsw i32 %15, %conv6
  store i32 %add7, i32* %14, align 4, !tbaa !5
  %16 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %call8 = call i32 @opj_int_abs(i32 %17) #7
  %18 = load i32, i32* %one.addr, align 4, !tbaa !5
  %and9 = and i32 %call8, %18
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 1, i32 0
  store i32 %cond11, i32* %v, align 4, !tbaa !5
  %19 = load i32, i32* %flag, align 4, !tbaa !5
  %call12 = call i32 @opj_t1_getctxno_mag(i32 %19) #7
  %idxprom = zext i32 %call12 to i64
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %20, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %21 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %21, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %22 = load i8, i8* %type.addr, align 1, !tbaa !49
  %conv13 = zext i8 %22 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %24 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_bypass_enc(%struct.opj_mqc* %23, i32 %24) #7
  br label %if.end

if.else:                                          ; preds = %if.then
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %26 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_encode(%struct.opj_mqc* %25, i32 %26) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  %27 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %28 = load i16, i16* %27, align 2, !tbaa !84
  %conv17 = sext i16 %28 to i32
  %or = or i32 %conv17, 8192
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, i16* %27, align 2, !tbaa !84
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %cond.end
  %29 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @opj_t1_getnmsedec_ref(i32 %x, i32 %bitpos) #0 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca i32, align 4
  %bitpos.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %bitpos, i32* %bitpos.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bitpos.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %bitpos.addr, align 4, !tbaa !5
  %sub = sub i32 %2, 6
  %shr = lshr i32 %1, %sub
  %and = and i32 %shr, 127
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i16], [128 x i16]* @lut_nmsedec_ref, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !84
  store i16 %3, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and1 = and i32 %4, 127
  %idxprom2 = zext i32 %and1 to i64
  %arrayidx3 = getelementptr inbounds [128 x i16], [128 x i16]* @lut_nmsedec_ref0, i32 0, i64 %idxprom2
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !84
  store i16 %5, i16* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i16, i16* %retval
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define internal void @opj_t1_enc_clnpass_step(%struct.opj_t1* %t1, i16* %flagsp, i32* %datap, i32 %orient, i32 %bpno, i32 %one, i32* %nmsedec, i32 %partial, i32 %vsc) #0 {
entry:
  %t1.addr = alloca %struct.opj_t1*, align 8
  %flagsp.addr = alloca i16*, align 8
  %datap.addr = alloca i32*, align 8
  %orient.addr = alloca i32, align 4
  %bpno.addr = alloca i32, align 4
  %one.addr = alloca i32, align 4
  %nmsedec.addr = alloca i32*, align 8
  %partial.addr = alloca i32, align 4
  %vsc.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %flag = alloca i32, align 4
  %mqc = alloca %struct.opj_mqc*, align 8
  store %struct.opj_t1* %t1, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  store i16* %flagsp, i16** %flagsp.addr, align 8, !tbaa !1
  store i32* %datap, i32** %datap.addr, align 8, !tbaa !1
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !5
  store i32 %bpno, i32* %bpno.addr, align 4, !tbaa !5
  store i32 %one, i32* %one.addr, align 4, !tbaa !5
  store i32* %nmsedec, i32** %nmsedec.addr, align 8, !tbaa !1
  store i32 %partial, i32* %partial.addr, align 4, !tbaa !5
  store i32 %vsc, i32* %vsc.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %mqc1 = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %3, i32 0, i32 0
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc1, align 8, !tbaa !15
  store %struct.opj_mqc* %4, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %5 = load i32, i32* %vsc.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %7 = load i16, i16* %6, align 2, !tbaa !84
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, -1095
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %9 = load i16, i16* %8, align 2, !tbaa !84
  %conv2 = sext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %conv2, %cond.false ]
  store i32 %cond, i32* %flag, align 4, !tbaa !5
  %10 = load i32, i32* %partial.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %LABEL_PARTIAL

if.end:                                           ; preds = %cond.end
  %11 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !84
  %conv4 = sext i16 %12 to i32
  %and5 = and i32 %conv4, 20480
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.30, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %flag, align 4, !tbaa !5
  %14 = load i32, i32* %orient.addr, align 4, !tbaa !5
  %call = call zeroext i8 @opj_t1_getctxno_zc(i32 %13, i32 %14) #7
  %conv8 = zext i8 %call to i32
  %idxprom = zext i32 %conv8 to i64
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !86
  %17 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %call9 = call i32 @opj_int_abs(i32 %18) #7
  %19 = load i32, i32* %one.addr, align 4, !tbaa !5
  %and10 = and i32 %call9, %19
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 1, i32 0
  store i32 %cond12, i32* %v, align 4, !tbaa !5
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %21 = load i32, i32* %v, align 4, !tbaa !5
  call void @opj_mqc_encode(%struct.opj_mqc* %20, i32 %21) #7
  %22 = load i32, i32* %v, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.end.29

if.then.14:                                       ; preds = %if.then.7
  br label %LABEL_PARTIAL

LABEL_PARTIAL:                                    ; preds = %if.then.14, %if.then
  %23 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %call15 = call i32 @opj_int_abs(i32 %24) #7
  %25 = load i32, i32* %bpno.addr, align 4, !tbaa !5
  %add = add nsw i32 %25, 6
  %call16 = call signext i16 @opj_t1_getnmsedec_sig(i32 %call15, i32 %add) #7
  %conv17 = sext i16 %call16 to i32
  %26 = load i32*, i32** %nmsedec.addr, align 8, !tbaa !1
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %add18 = add nsw i32 %27, %conv17
  store i32 %add18, i32* %26, align 4, !tbaa !5
  %28 = load i32, i32* %flag, align 4, !tbaa !5
  %call19 = call zeroext i8 @opj_t1_getctxno_sc(i32 %28) #7
  %conv20 = zext i8 %call19 to i32
  %idxprom21 = zext i32 %conv20 to i64
  %29 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %ctxs22 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %29, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs22, i32 0, i64 %idxprom21
  %30 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %curctx24 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %30, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx23, %struct.opj_mqc_state*** %curctx24, align 8, !tbaa !86
  %31 = load i32*, i32** %datap.addr, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %cmp = icmp slt i32 %32, 0
  %cond26 = select i1 %cmp, i32 1, i32 0
  store i32 %cond26, i32* %v, align 4, !tbaa !5
  %33 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %34 = load i32, i32* %v, align 4, !tbaa !5
  %35 = load i32, i32* %flag, align 4, !tbaa !5
  %call27 = call zeroext i8 @opj_t1_getspb(i32 %35) #7
  %conv28 = zext i8 %call27 to i32
  %xor = xor i32 %34, %conv28
  call void @opj_mqc_encode(%struct.opj_mqc* %33, i32 %xor) #7
  %36 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %37 = load i32, i32* %v, align 4, !tbaa !5
  %38 = load %struct.opj_t1*, %struct.opj_t1** %t1.addr, align 8, !tbaa !1
  %flags_stride = getelementptr inbounds %struct.opj_t1, %struct.opj_t1* %38, i32 0, i32 8
  %39 = load i32, i32* %flags_stride, align 4, !tbaa !10
  call void @opj_t1_updateflags(i16* %36, i32 %37, i32 %39) #7
  br label %if.end.29

if.end.29:                                        ; preds = %LABEL_PARTIAL, %if.then.7
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %40 = load i16*, i16** %flagsp.addr, align 8, !tbaa !1
  %41 = load i16, i16* %40, align 2, !tbaa !84
  %conv31 = sext i16 %41 to i32
  %and32 = and i32 %conv31, -16385
  %conv33 = trunc i32 %and32 to i16
  store i16 %conv33, i16* %40, align 2, !tbaa !84
  %42 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

declare double @opj_dwt_getnorm(i32, i32) #3

declare double @opj_dwt_getnorm_real(i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 40}
!8 = !{!"opj_t1", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!9 = !{!8, !2, i64 16}
!10 = !{!8, !6, i64 48}
!11 = !{!8, !6, i64 44}
!12 = !{!8, !2, i64 24}
!13 = !{!8, !6, i64 32}
!14 = !{!8, !6, i64 36}
!15 = !{!8, !2, i64 0}
!16 = !{!8, !2, i64 8}
!17 = !{!18, !6, i64 8}
!18 = !{!"opj_tcd_tilecomp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !6, i64 52}
!19 = !{!18, !6, i64 0}
!20 = !{!18, !6, i64 20}
!21 = !{!18, !2, i64 24}
!22 = !{!23, !6, i64 24}
!23 = !{!"opj_tcd_resolution", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 32}
!24 = !{!23, !6, i64 16}
!25 = !{!23, !6, i64 20}
!26 = !{!27, !2, i64 24}
!27 = !{!"opj_tcd_band", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !28, i64 40}
!28 = !{!"float", !3, i64 0}
!29 = !{!30, !6, i64 16}
!30 = !{!"opj_tcd_precinct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !6, i64 32, !2, i64 40, !2, i64 48}
!31 = !{!30, !6, i64 20}
!32 = !{!27, !6, i64 16}
!33 = !{!34, !6, i64 808}
!34 = !{!"opj_tccp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 28, !6, i64 804, !6, i64 808, !3, i64 812, !3, i64 944, !6, i64 1076}
!35 = !{!34, !6, i64 16}
!36 = !{!37, !6, i64 16}
!37 = !{!"opj_tcd_cblk_dec", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!38 = !{!27, !6, i64 0}
!39 = !{!37, !6, i64 20}
!40 = !{!27, !6, i64 4}
!41 = !{!23, !6, i64 8}
!42 = !{!23, !6, i64 0}
!43 = !{!23, !6, i64 12}
!44 = !{!23, !6, i64 4}
!45 = !{!34, !6, i64 20}
!46 = !{!18, !2, i64 40}
!47 = !{!27, !28, i64 40}
!48 = !{!28, !28, i64 0}
!49 = !{!3, !3, i64 0}
!50 = !{!37, !6, i64 24}
!51 = !{!37, !6, i64 28}
!52 = !{!37, !6, i64 32}
!53 = !{!37, !6, i64 56}
!54 = !{!37, !2, i64 8}
!55 = !{!56, !2, i64 0}
!56 = !{!"opj_tcd_seg", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!57 = !{!56, !6, i64 8}
!58 = !{!56, !6, i64 20}
!59 = !{!56, !6, i64 16}
!60 = !{!61, !62, i64 40}
!61 = !{!"opj_tcd_tile", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !62, i64 40, !3, i64 48, !6, i64 848}
!62 = !{!"double", !3, i64 0}
!63 = !{!61, !6, i64 16}
!64 = !{!61, !2, i64 24}
!65 = !{!66, !2, i64 5584}
!66 = !{!"opj_tcp", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !6, i64 420, !3, i64 424, !2, i64 5160, !2, i64 5168, !6, i64 5176, !6, i64 5180, !3, i64 5184, !2, i64 5584, !6, i64 5592, !2, i64 5600, !6, i64 5608, !2, i64 5616, !2, i64 5624, !2, i64 5632, !2, i64 5640, !6, i64 5648, !6, i64 5652, !2, i64 5656, !6, i64 5664, !6, i64 5668, !6, i64 5672, !6, i64 5672}
!67 = !{!18, !6, i64 16}
!68 = !{!69, !6, i64 24}
!69 = !{!"opj_tcd_cblk_enc", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56}
!70 = !{!69, !6, i64 28}
!71 = !{!69, !6, i64 32}
!72 = !{!69, !6, i64 36}
!73 = !{!74, !74, i64 0}
!74 = !{!"long", !3, i64 0}
!75 = !{!62, !62, i64 0}
!76 = !{!69, !6, i64 40}
!77 = !{!69, !2, i64 0}
!78 = !{!69, !2, i64 16}
!79 = !{!80, !62, i64 8}
!80 = !{!"opj_tcd_pass", !6, i64 0, !62, i64 8, !6, i64 16, !6, i64 20}
!81 = !{!80, !6, i64 0}
!82 = !{!69, !6, i64 56}
!83 = !{!80, !6, i64 16}
!84 = !{!85, !85, i64 0}
!85 = !{!"short", !3, i64 0}
!86 = !{!87, !2, i64 192}
!87 = !{!"opj_mqc", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !2, i64 192}
