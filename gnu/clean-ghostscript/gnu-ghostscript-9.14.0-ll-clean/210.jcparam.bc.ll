; ModuleID = './jcparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }

@std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: nounwind uwtable
define void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %cinfo, i32 %which_tbl, i32* %basic_table, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %which_tbl.addr = alloca i32, align 4
  %basic_table.addr = alloca i32*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %qtblptr = alloca %struct.JQUANT_TBL**, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %which_tbl, i32* %which_tbl.addr, align 4, !tbaa !5
  store i32* %basic_table, i32** %basic_table.addr, align 8, !tbaa !1
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !5
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !7
  %0 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %4, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !13
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 5
  %8 = load i32, i32* %global_state1, align 4, !tbaa !8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %8, i32* %arrayidx, align 4, !tbaa !5
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %which_tbl.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %16, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, i32* %which_tbl.addr, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %17, 4
  br i1 %cmp6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !12
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 32, i32* %msg_code9, align 4, !tbaa !13
  %20 = load i32, i32* %which_tbl.addr, align 4, !tbaa !5
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !12
  %msg_parm11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i12 = bitcast %union.anon* %msg_parm11 to [8 x i32]*
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %i12, i32 0, i64 0
  store i32 %20, i32* %arrayidx13, align 4, !tbaa !5
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8, !tbaa !12
  %error_exit15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit15, align 8, !tbaa !16
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.7, %lor.lhs.false
  %28 = load i32, i32* %which_tbl.addr, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 20
  %arrayidx17 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL** %arrayidx17, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !1
  %30 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !1
  %31 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %30, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.JQUANT_TBL* %31, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  %call = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %33) #4
  %34 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %call, %struct.JQUANT_TBL** %34, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %35, 64
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %36 to i64
  %37 = load i32*, i32** %basic_table.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %37, i64 %idxprom22
  %38 = load i32, i32* %arrayidx23, align 4, !tbaa !5
  %conv = zext i32 %38 to i64
  %39 = load i32, i32* %scale_factor.addr, align 4, !tbaa !5
  %conv24 = sext i32 %39 to i64
  %mul = mul nsw i64 %conv, %conv24
  %add = add nsw i64 %mul, 50
  %div = sdiv i64 %add, 100
  store i64 %div, i64* %temp, align 8, !tbaa !17
  %40 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp25 = icmp sle i64 %40, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  store i64 1, i64* %temp, align 8, !tbaa !17
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.body
  %41 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp29 = icmp sgt i64 %41, 32767
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i64 32767, i64* %temp, align 8, !tbaa !17
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %42 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.32
  %43 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp33 = icmp sgt i64 %43, 255
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  store i64 255, i64* %temp, align 8, !tbaa !17
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true, %if.end.32
  %44 = load i64, i64* %temp, align 8, !tbaa !17
  %conv37 = trunc i64 %44 to i16
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %45 to i64
  %46 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !1
  %47 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %46, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %47, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom38
  store i16 %conv37, i16* %arrayidx39, align 2, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !1
  %50 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %49, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %50, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4, !tbaa !19
  %51 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jpeg_default_qtables(%struct.jpeg_compress_struct* %cinfo, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %force_baseline.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !7
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %q_scale_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 21
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %q_scale_factor, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %3 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %0, i32 0, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_luminance_quant_tbl, i32 0, i32 0), i32 %2, i32 %3) #4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %q_scale_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 21
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %q_scale_factor1, i32 0, i64 1
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %7 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %4, i32 1, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_chrominance_quant_tbl, i32 0, i32 0), i32 %6, i32 %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* %cinfo, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !5
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !7
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load i32, i32* %scale_factor.addr, align 4, !tbaa !5
  %2 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %0, i32 0, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_luminance_quant_tbl, i32 0, i32 0), i32 %1, i32 %2) #4
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %4 = load i32, i32* %scale_factor.addr, align 4, !tbaa !5
  %5 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %3, i32 1, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @std_chrominance_quant_tbl, i32 0, i32 0), i32 %4, i32 %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_quality_scaling(i32 %quality) #0 {
entry:
  %quality.addr = alloca i32, align 4
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !5
  %0 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %quality.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 100
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 100, i32* %quality.addr, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %2, 50
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %3 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %div = sdiv i32 5000, %3
  store i32 %div, i32* %quality.addr, align 4, !tbaa !5
  br label %if.end.6

if.else:                                          ; preds = %if.end.3
  %4 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %4, 2
  %sub = sub nsw i32 200, %mul
  store i32 %sub, i32* %quality.addr, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %5 = load i32, i32* %quality.addr, align 4, !tbaa !5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_quality(%struct.jpeg_compress_struct* %cinfo, i32 %quality, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %quality.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !5
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !7
  %0 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %call = call i32 @jpeg_quality_scaling(i32 %0) #4
  store i32 %call, i32* %quality.addr, align 4, !tbaa !5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %2 = load i32, i32* %quality.addr, align 4, !tbaa !5
  %3 = load i32, i32* %force_baseline.addr, align 4, !tbaa !7
  call void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* %1, i32 %2, i32 %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_defaults(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %2, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !13
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %6 = load i32, i32* %global_state1, align 4, !tbaa !8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !5
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 19
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.jpeg_component_info* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !22
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 0
  %18 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !23
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  %call = call i8* %18(%struct.jpeg_common_struct* %20, i32 0, i64 960) #4
  %21 = bitcast i8* %call to %struct.jpeg_component_info*
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 19
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %comp_info7, align 8, !tbaa !21
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 12
  store i32 1, i32* %scale_num, align 4, !tbaa !25
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 13
  store i32 1, i32* %scale_denom, align 4, !tbaa !26
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 16
  store i32 8, i32* %data_precision, align 4, !tbaa !27
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* %26, i32 75, i32 1) #4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @std_huff_tables(%struct.jpeg_compress_struct* %27) #4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %28, 16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 24
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx10, align 1, !tbaa !7
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 25
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom11
  store i8 1, i8* %arrayidx12, align 1, !tbaa !7
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %33 to i64
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 26
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom13
  store i8 5, i8* %arrayidx14, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 28
  store %struct.jpeg_scan_info* null, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !28
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 27
  store i32 0, i32* %num_scans, align 4, !tbaa !29
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 29
  store i32 0, i32* %raw_data_in, align 4, !tbaa !30
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 16
  %40 = load i32, i32* %data_precision15, align 4, !tbaa !27
  %cmp16 = icmp sgt i32 %40, 8
  %cond = select i1 %cmp16, i32 1, i32 0
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 30
  store i32 %cond, i32* %arith_code, align 4, !tbaa !31
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 31
  store i32 0, i32* %optimize_coding, align 4, !tbaa !32
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 32
  store i32 0, i32* %CCIR601_sampling, align 4, !tbaa !33
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %do_fancy_downsampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 33
  store i32 1, i32* %do_fancy_downsampling, align 4, !tbaa !34
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 34
  store i32 0, i32* %smoothing_factor, align 4, !tbaa !35
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 35
  store i32 0, i32* %dct_method, align 4, !tbaa !36
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 36
  store i32 0, i32* %restart_interval, align 4, !tbaa !37
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 37
  store i32 0, i32* %restart_in_rows, align 4, !tbaa !38
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 39
  store i8 1, i8* %JFIF_major_version, align 1, !tbaa !39
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_minor_version = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 40
  store i8 1, i8* %JFIF_minor_version, align 1, !tbaa !40
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 41
  store i8 0, i8* %density_unit, align 1, !tbaa !41
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 42
  store i16 1, i16* %X_density, align 2, !tbaa !42
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 43
  store i16 1, i16* %Y_density, align 2, !tbaa !43
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 45
  store i32 0, i32* %color_transform, align 4, !tbaa !44
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* %55) #4
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @std_huff_tables(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* %0, %struct.JHUFF_TBL** %arrayidx, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_luminance, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_luminance, i32 0, i32 0)) #4
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 23
  %arrayidx1 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* %2, %struct.JHUFF_TBL** %arrayidx1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_luminance, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_luminance, i32 0, i32 0)) #4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs2, i32 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* %4, %struct.JHUFF_TBL** %arrayidx3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_chrominance, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_chrominance, i32 0, i32 0)) #4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 23
  %arrayidx5 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs4, i32 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* %6, %struct.JHUFF_TBL** %arrayidx5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_chrominance, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_chrominance, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_default_colorspace(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 10
  %1 = load i32, i32* %in_color_space, align 4, !tbaa !45
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %2, i32 0) #4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %3, i32 1) #4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %4, i32 3) #4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %5, i32 3) #4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %6, i32 4) #4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %7, i32 5) #4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %8, i32 6) #4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %9, i32 7) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 10, i32* %msg_code, align 4, !tbaa !13
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %cinfo, i32 %colorspace) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %colorspace.addr = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %colorspace, i32* %colorspace.addr, align 4, !tbaa !7
  %0 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !13
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %global_state1, align 4, !tbaa !8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !5
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %colorspace.addr, align 4, !tbaa !7
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 18
  store i32 %15, i32* %jpeg_color_space, align 4, !tbaa !46
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 38
  store i32 0, i32* %write_JFIF_header, align 4, !tbaa !47
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 44
  store i32 0, i32* %write_Adobe_marker, align 4, !tbaa !48
  %19 = load i32, i32* %colorspace.addr, align 4, !tbaa !7
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.37
    i32 3, label %sw.bb.74
    i32 4, label %sw.bb.101
    i32 5, label %sw.bb.136
    i32 6, label %sw.bb.171
    i32 7, label %sw.bb.210
  ]

sw.bb:                                            ; preds = %if.end
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 9
  %21 = load i32, i32* %input_components, align 4, !tbaa !49
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 17
  store i32 %21, i32* %num_components, align 4, !tbaa !50
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 17
  %24 = load i32, i32* %num_components4, align 4, !tbaa !50
  %cmp5 = icmp slt i32 %24, 1
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 17
  %26 = load i32, i32* %num_components6, align 4, !tbaa !50
  %cmp7 = icmp sgt i32 %26, 10
  br i1 %cmp7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %lor.lhs.false, %sw.bb
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !12
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 27, i32* %msg_code10, align 4, !tbaa !13
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 17
  %30 = load i32, i32* %num_components11, align 4, !tbaa !50
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !12
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %30, i32* %arrayidx15, align 4, !tbaa !5
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !12
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm17 to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 1
  store i32 10, i32* %arrayidx19, align 4, !tbaa !5
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !12
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !16
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %39 = bitcast %struct.jpeg_compress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.8, %lor.lhs.false
  store i32 0, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %40 = load i32, i32* %ci, align 4, !tbaa !5
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 17
  %42 = load i32, i32* %num_components23, align 4, !tbaa !50
  %cmp24 = icmp slt i32 %40, %42
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %ci, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 19
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  %arrayidx25 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i64 %idxprom
  store %struct.jpeg_component_info* %arrayidx25, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %46 = load i32, i32* %ci, align 4, !tbaa !5
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 0
  store i32 %46, i32* %component_id, align 4, !tbaa !51
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 2
  store i32 1, i32* %h_samp_factor, align 4, !tbaa !53
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 0, i32 3
  store i32 1, i32* %v_samp_factor, align 4, !tbaa !54
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no, align 4, !tbaa !55
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no, align 4, !tbaa !56
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no, align 4, !tbaa !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %ci, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 38
  store i32 1, i32* %write_JFIF_header27, align 4, !tbaa !47
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 17
  store i32 1, i32* %num_components28, align 4, !tbaa !50
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 19
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info29, align 8, !tbaa !21
  %arrayidx30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i64 0
  store %struct.jpeg_component_info* %arrayidx30, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 0
  store i32 1, i32* %component_id31, align 4, !tbaa !51
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 2
  store i32 1, i32* %h_samp_factor32, align 4, !tbaa !53
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 3
  store i32 1, i32* %v_samp_factor33, align 4, !tbaa !54
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no34, align 4, !tbaa !55
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no35 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no35, align 4, !tbaa !56
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no36, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_Adobe_marker38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 44
  store i32 1, i32* %write_Adobe_marker38, align 4, !tbaa !48
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 17
  store i32 3, i32* %num_components39, align 4, !tbaa !50
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 19
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info40, align 8, !tbaa !21
  %arrayidx41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i64 0
  store %struct.jpeg_component_info* %arrayidx41, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 0
  store i32 82, i32* %component_id42, align 4, !tbaa !51
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 2
  store i32 1, i32* %h_samp_factor43, align 4, !tbaa !53
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 3
  store i32 1, i32* %v_samp_factor44, align 4, !tbaa !54
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no45, align 4, !tbaa !55
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 45
  %73 = load i32, i32* %color_transform, align 4, !tbaa !44
  %cmp46 = icmp eq i32 %73, 1
  %cond = select i1 %cmp46, i32 1, i32 0
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 5
  store i32 %cond, i32* %dc_tbl_no47, align 4, !tbaa !56
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 45
  %76 = load i32, i32* %color_transform48, align 4, !tbaa !44
  %cmp49 = icmp eq i32 %76, 1
  %cond50 = select i1 %cmp49, i32 1, i32 0
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 6
  store i32 %cond50, i32* %ac_tbl_no51, align 4, !tbaa !57
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 19
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info52, align 8, !tbaa !21
  %arrayidx53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i64 1
  store %struct.jpeg_component_info* %arrayidx53, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 0
  store i32 71, i32* %component_id54, align 4, !tbaa !51
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 2
  store i32 1, i32* %h_samp_factor55, align 4, !tbaa !53
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 3
  store i32 1, i32* %v_samp_factor56, align 4, !tbaa !54
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no57, align 4, !tbaa !55
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no58, align 4, !tbaa !56
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no59, align 4, !tbaa !57
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 19
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info60, align 8, !tbaa !21
  %arrayidx61 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i64 2
  store %struct.jpeg_component_info* %arrayidx61, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 0
  store i32 66, i32* %component_id62, align 4, !tbaa !51
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 2
  store i32 1, i32* %h_samp_factor63, align 4, !tbaa !53
  %90 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %90, i32 0, i32 3
  store i32 1, i32* %v_samp_factor64, align 4, !tbaa !54
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no65, align 4, !tbaa !55
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 45
  %93 = load i32, i32* %color_transform66, align 4, !tbaa !44
  %cmp67 = icmp eq i32 %93, 1
  %cond68 = select i1 %cmp67, i32 1, i32 0
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 5
  store i32 %cond68, i32* %dc_tbl_no69, align 4, !tbaa !56
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 45
  %96 = load i32, i32* %color_transform70, align 4, !tbaa !44
  %cmp71 = icmp eq i32 %96, 1
  %cond72 = select i1 %cmp71, i32 1, i32 0
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 6
  store i32 %cond72, i32* %ac_tbl_no73, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 38
  store i32 1, i32* %write_JFIF_header75, align 4, !tbaa !47
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 17
  store i32 3, i32* %num_components76, align 4, !tbaa !50
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 19
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info77, align 8, !tbaa !21
  %arrayidx78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i64 0
  store %struct.jpeg_component_info* %arrayidx78, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id79 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i32 0, i32 0
  store i32 1, i32* %component_id79, align 4, !tbaa !51
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 2
  store i32 2, i32* %h_samp_factor80, align 4, !tbaa !53
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 3
  store i32 2, i32* %v_samp_factor81, align 4, !tbaa !54
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no82, align 4, !tbaa !55
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no83, align 4, !tbaa !56
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no84 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no84, align 4, !tbaa !57
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 19
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info85, align 8, !tbaa !21
  %arrayidx86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i64 1
  store %struct.jpeg_component_info* %arrayidx86, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id87 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 0, i32 0
  store i32 2, i32* %component_id87, align 4, !tbaa !51
  %111 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor88 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %111, i32 0, i32 2
  store i32 1, i32* %h_samp_factor88, align 4, !tbaa !53
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 0, i32 3
  store i32 1, i32* %v_samp_factor89, align 4, !tbaa !54
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no90, align 4, !tbaa !55
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no91 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no91, align 4, !tbaa !56
  %115 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %115, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no92, align 4, !tbaa !57
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 19
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info93, align 8, !tbaa !21
  %arrayidx94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %117, i64 2
  store %struct.jpeg_component_info* %arrayidx94, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %118 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id95 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %118, i32 0, i32 0
  store i32 3, i32* %component_id95, align 4, !tbaa !51
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 0, i32 2
  store i32 1, i32* %h_samp_factor96, align 4, !tbaa !53
  %120 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %120, i32 0, i32 3
  store i32 1, i32* %v_samp_factor97, align 4, !tbaa !54
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no98 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no98, align 4, !tbaa !55
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no99, align 4, !tbaa !56
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no100, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_Adobe_marker102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %124, i32 0, i32 44
  store i32 1, i32* %write_Adobe_marker102, align 4, !tbaa !48
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 17
  store i32 4, i32* %num_components103, align 4, !tbaa !50
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 19
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info104, align 8, !tbaa !21
  %arrayidx105 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0
  store %struct.jpeg_component_info* %arrayidx105, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id106 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 0, i32 0
  store i32 67, i32* %component_id106, align 4, !tbaa !51
  %129 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i32 0, i32 2
  store i32 1, i32* %h_samp_factor107, align 4, !tbaa !53
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 0, i32 3
  store i32 1, i32* %v_samp_factor108, align 4, !tbaa !54
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no109 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no109, align 4, !tbaa !55
  %132 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %132, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no110, align 4, !tbaa !56
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no111, align 4, !tbaa !57
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %134, i32 0, i32 19
  %135 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info112, align 8, !tbaa !21
  %arrayidx113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1
  store %struct.jpeg_component_info* %arrayidx113, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %136 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %136, i32 0, i32 0
  store i32 77, i32* %component_id114, align 4, !tbaa !51
  %137 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %137, i32 0, i32 2
  store i32 1, i32* %h_samp_factor115, align 4, !tbaa !53
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i32 0, i32 3
  store i32 1, i32* %v_samp_factor116, align 4, !tbaa !54
  %139 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no117 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %139, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no117, align 4, !tbaa !55
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no118 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no118, align 4, !tbaa !56
  %141 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %141, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no119, align 4, !tbaa !57
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 19
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info120, align 8, !tbaa !21
  %arrayidx121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2
  store %struct.jpeg_component_info* %arrayidx121, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %144 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id122 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %144, i32 0, i32 0
  store i32 89, i32* %component_id122, align 4, !tbaa !51
  %145 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %145, i32 0, i32 2
  store i32 1, i32* %h_samp_factor123, align 4, !tbaa !53
  %146 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor124 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %146, i32 0, i32 3
  store i32 1, i32* %v_samp_factor124, align 4, !tbaa !54
  %147 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no125 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %147, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no125, align 4, !tbaa !55
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no126 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no126, align 4, !tbaa !56
  %149 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %149, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no127, align 4, !tbaa !57
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 19
  %151 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info128, align 8, !tbaa !21
  %arrayidx129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3
  store %struct.jpeg_component_info* %arrayidx129, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %152 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id130 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %152, i32 0, i32 0
  store i32 75, i32* %component_id130, align 4, !tbaa !51
  %153 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor131 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %153, i32 0, i32 2
  store i32 1, i32* %h_samp_factor131, align 4, !tbaa !53
  %154 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor132 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %154, i32 0, i32 3
  store i32 1, i32* %v_samp_factor132, align 4, !tbaa !54
  %155 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no133 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %155, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no133, align 4, !tbaa !55
  %156 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no134 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %156, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no134, align 4, !tbaa !56
  %157 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no135 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %157, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no135, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.136:                                        ; preds = %if.end
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_Adobe_marker137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %158, i32 0, i32 44
  store i32 1, i32* %write_Adobe_marker137, align 4, !tbaa !48
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 17
  store i32 4, i32* %num_components138, align 4, !tbaa !50
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 19
  %161 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info139, align 8, !tbaa !21
  %arrayidx140 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %161, i64 0
  store %struct.jpeg_component_info* %arrayidx140, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %162 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id141 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %162, i32 0, i32 0
  store i32 1, i32* %component_id141, align 4, !tbaa !51
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor142 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %163, i32 0, i32 2
  store i32 2, i32* %h_samp_factor142, align 4, !tbaa !53
  %164 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %164, i32 0, i32 3
  store i32 2, i32* %v_samp_factor143, align 4, !tbaa !54
  %165 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no144 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %165, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no144, align 4, !tbaa !55
  %166 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no145 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %166, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no145, align 4, !tbaa !56
  %167 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no146 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %167, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no146, align 4, !tbaa !57
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 19
  %169 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info147, align 8, !tbaa !21
  %arrayidx148 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %169, i64 1
  store %struct.jpeg_component_info* %arrayidx148, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %170 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %170, i32 0, i32 0
  store i32 2, i32* %component_id149, align 4, !tbaa !51
  %171 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor150 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %171, i32 0, i32 2
  store i32 1, i32* %h_samp_factor150, align 4, !tbaa !53
  %172 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor151 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %172, i32 0, i32 3
  store i32 1, i32* %v_samp_factor151, align 4, !tbaa !54
  %173 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %173, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no152, align 4, !tbaa !55
  %174 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no153 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %174, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no153, align 4, !tbaa !56
  %175 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %175, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no154, align 4, !tbaa !57
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info155 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 19
  %177 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info155, align 8, !tbaa !21
  %arrayidx156 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %177, i64 2
  store %struct.jpeg_component_info* %arrayidx156, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %178 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id157 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %178, i32 0, i32 0
  store i32 3, i32* %component_id157, align 4, !tbaa !51
  %179 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor158 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %179, i32 0, i32 2
  store i32 1, i32* %h_samp_factor158, align 4, !tbaa !53
  %180 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor159 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %180, i32 0, i32 3
  store i32 1, i32* %v_samp_factor159, align 4, !tbaa !54
  %181 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no160 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %181, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no160, align 4, !tbaa !55
  %182 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no161 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %182, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no161, align 4, !tbaa !56
  %183 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no162 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %183, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no162, align 4, !tbaa !57
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info163 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 19
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info163, align 8, !tbaa !21
  %arrayidx164 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i64 3
  store %struct.jpeg_component_info* %arrayidx164, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %186 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id165 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %186, i32 0, i32 0
  store i32 4, i32* %component_id165, align 4, !tbaa !51
  %187 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor166 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %187, i32 0, i32 2
  store i32 2, i32* %h_samp_factor166, align 4, !tbaa !53
  %188 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor167 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %188, i32 0, i32 3
  store i32 2, i32* %v_samp_factor167, align 4, !tbaa !54
  %189 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no168 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %189, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no168, align 4, !tbaa !55
  %190 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no169 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %190, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no169, align 4, !tbaa !56
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no170 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no170, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.end
  %192 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %192, i32 0, i32 38
  store i32 1, i32* %write_JFIF_header172, align 4, !tbaa !47
  %193 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %193, i32 0, i32 39
  store i8 2, i8* %JFIF_major_version, align 1, !tbaa !39
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components173 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %194, i32 0, i32 17
  store i32 3, i32* %num_components173, align 4, !tbaa !50
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %195, i32 0, i32 19
  %196 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info174, align 8, !tbaa !21
  %arrayidx175 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %196, i64 0
  store %struct.jpeg_component_info* %arrayidx175, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %197 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id176 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %197, i32 0, i32 0
  store i32 114, i32* %component_id176, align 4, !tbaa !51
  %198 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor177 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %198, i32 0, i32 2
  store i32 1, i32* %h_samp_factor177, align 4, !tbaa !53
  %199 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor178 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %199, i32 0, i32 3
  store i32 1, i32* %v_samp_factor178, align 4, !tbaa !54
  %200 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no179 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %200, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no179, align 4, !tbaa !55
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform180 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 45
  %202 = load i32, i32* %color_transform180, align 4, !tbaa !44
  %cmp181 = icmp eq i32 %202, 1
  %cond182 = select i1 %cmp181, i32 1, i32 0
  %203 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no183 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %203, i32 0, i32 5
  store i32 %cond182, i32* %dc_tbl_no183, align 4, !tbaa !56
  %204 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform184 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %204, i32 0, i32 45
  %205 = load i32, i32* %color_transform184, align 4, !tbaa !44
  %cmp185 = icmp eq i32 %205, 1
  %cond186 = select i1 %cmp185, i32 1, i32 0
  %206 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no187 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %206, i32 0, i32 6
  store i32 %cond186, i32* %ac_tbl_no187, align 4, !tbaa !57
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info188 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 19
  %208 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info188, align 8, !tbaa !21
  %arrayidx189 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %208, i64 1
  store %struct.jpeg_component_info* %arrayidx189, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %209 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id190 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %209, i32 0, i32 0
  store i32 103, i32* %component_id190, align 4, !tbaa !51
  %210 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor191 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %210, i32 0, i32 2
  store i32 1, i32* %h_samp_factor191, align 4, !tbaa !53
  %211 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor192 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %211, i32 0, i32 3
  store i32 1, i32* %v_samp_factor192, align 4, !tbaa !54
  %212 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no193 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %212, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no193, align 4, !tbaa !55
  %213 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no194 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %213, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no194, align 4, !tbaa !56
  %214 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no195 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %214, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no195, align 4, !tbaa !57
  %215 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info196 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %215, i32 0, i32 19
  %216 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info196, align 8, !tbaa !21
  %arrayidx197 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %216, i64 2
  store %struct.jpeg_component_info* %arrayidx197, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %217 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %217, i32 0, i32 0
  store i32 98, i32* %component_id198, align 4, !tbaa !51
  %218 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor199 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %218, i32 0, i32 2
  store i32 1, i32* %h_samp_factor199, align 4, !tbaa !53
  %219 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor200 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %219, i32 0, i32 3
  store i32 1, i32* %v_samp_factor200, align 4, !tbaa !54
  %220 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no201 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %220, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no201, align 4, !tbaa !55
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform202 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 45
  %222 = load i32, i32* %color_transform202, align 4, !tbaa !44
  %cmp203 = icmp eq i32 %222, 1
  %cond204 = select i1 %cmp203, i32 1, i32 0
  %223 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no205 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %223, i32 0, i32 5
  store i32 %cond204, i32* %dc_tbl_no205, align 4, !tbaa !56
  %224 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform206 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %224, i32 0, i32 45
  %225 = load i32, i32* %color_transform206, align 4, !tbaa !44
  %cmp207 = icmp eq i32 %225, 1
  %cond208 = select i1 %cmp207, i32 1, i32 0
  %226 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no209 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %226, i32 0, i32 6
  store i32 %cond208, i32* %ac_tbl_no209, align 4, !tbaa !57
  br label %sw.epilog

sw.bb.210:                                        ; preds = %if.end
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %write_JFIF_header211 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 38
  store i32 1, i32* %write_JFIF_header211, align 4, !tbaa !47
  %228 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %JFIF_major_version212 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %228, i32 0, i32 39
  store i8 2, i8* %JFIF_major_version212, align 1, !tbaa !39
  %229 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components213 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %229, i32 0, i32 17
  store i32 3, i32* %num_components213, align 4, !tbaa !50
  %230 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info214 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %230, i32 0, i32 19
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info214, align 8, !tbaa !21
  %arrayidx215 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i64 0
  store %struct.jpeg_component_info* %arrayidx215, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %232 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id216 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %232, i32 0, i32 0
  store i32 1, i32* %component_id216, align 4, !tbaa !51
  %233 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor217 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %233, i32 0, i32 2
  store i32 2, i32* %h_samp_factor217, align 4, !tbaa !53
  %234 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor218 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %234, i32 0, i32 3
  store i32 2, i32* %v_samp_factor218, align 4, !tbaa !54
  %235 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no219 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %235, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no219, align 4, !tbaa !55
  %236 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no220 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %236, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no220, align 4, !tbaa !56
  %237 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no221 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %237, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no221, align 4, !tbaa !57
  %238 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %238, i32 0, i32 19
  %239 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info222, align 8, !tbaa !21
  %arrayidx223 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %239, i64 1
  store %struct.jpeg_component_info* %arrayidx223, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %240 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id224 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %240, i32 0, i32 0
  store i32 34, i32* %component_id224, align 4, !tbaa !51
  %241 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor225 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %241, i32 0, i32 2
  store i32 1, i32* %h_samp_factor225, align 4, !tbaa !53
  %242 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor226 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %242, i32 0, i32 3
  store i32 1, i32* %v_samp_factor226, align 4, !tbaa !54
  %243 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no227 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %243, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no227, align 4, !tbaa !55
  %244 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no228 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %244, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no228, align 4, !tbaa !56
  %245 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no229 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %245, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no229, align 4, !tbaa !57
  %246 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info230 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %246, i32 0, i32 19
  %247 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info230, align 8, !tbaa !21
  %arrayidx231 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %247, i64 2
  store %struct.jpeg_component_info* %arrayidx231, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %248 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_id232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %248, i32 0, i32 0
  store i32 35, i32* %component_id232, align 4, !tbaa !51
  %249 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor233 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %249, i32 0, i32 2
  store i32 1, i32* %h_samp_factor233, align 4, !tbaa !53
  %250 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor234 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %250, i32 0, i32 3
  store i32 1, i32* %v_samp_factor234, align 4, !tbaa !54
  %251 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no235 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %251, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no235, align 4, !tbaa !55
  %252 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no236 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %252, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no236, align 4, !tbaa !56
  %253 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no237 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %253, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no237, align 4, !tbaa !57
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %254 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err238 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %254, i32 0, i32 0
  %255 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err238, align 8, !tbaa !12
  %msg_code239 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %255, i32 0, i32 5
  store i32 11, i32* %msg_code239, align 4, !tbaa !13
  %256 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err240 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %256, i32 0, i32 0
  %257 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err240, align 8, !tbaa !12
  %error_exit241 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %257, i32 0, i32 0
  %258 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit241, align 8, !tbaa !16
  %259 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %260 = bitcast %struct.jpeg_compress_struct* %259 to %struct.jpeg_common_struct*
  call void %258(%struct.jpeg_common_struct* %260) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.210, %sw.bb.171, %sw.bb.136, %sw.bb.101, %sw.bb.74, %sw.bb.37, %sw.bb.26, %for.end
  %261 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_huff_table(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL** %htblptr, i8* %bits, i8* %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htblptr.addr = alloca %struct.JHUFF_TBL**, align 8
  %bits.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %nsymbols = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.JHUFF_TBL** %htblptr, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  store i8* %bits, i8** %bits.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nsymbols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  %3 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %2, align 8, !tbaa !1
  %cmp = icmp eq %struct.JHUFF_TBL* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %5) #4
  %6 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %6, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  %8 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %8, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %bits1, i32 0, i32 0
  %9 = load i8*, i8** %bits.addr, align 8, !tbaa !1
  %call2 = call i8* @memcpy(i8* %arraydecay, i8* %9, i64 17) #5
  store i32 0, i32* %nsymbols, align 4, !tbaa !5
  store i32 1, i32* %len, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %len, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %10, 16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %len, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %bits.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %13 to i32
  %14 = load i32, i32* %nsymbols, align 4, !tbaa !5
  %add = add nsw i32 %14, %conv
  store i32 %add, i32* %nsymbols, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %len, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %len, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %nsymbols, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load i32, i32* %nsymbols, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %17, 256
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %for.end
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 9, i32* %msg_code, align 4, !tbaa !13
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %lor.lhs.false
  %25 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  %26 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %25, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %26, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %27 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %28 = load i32, i32* %nsymbols, align 4, !tbaa !5
  %conv12 = sext i32 %28 to i64
  %mul = mul i64 %conv12, 1
  %call13 = call i8* @memcpy(i8* %arraydecay11, i8* %27, i64 %mul) #5
  %29 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !1
  %30 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %29, align 8, !tbaa !1
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %30, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4, !tbaa !58
  %31 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %nsymbols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 36}
!9 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !10, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !6, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !6, i64 308, !3, i64 312, !6, i64 316, !6, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !11, i64 332, !11, i64 334, !3, i64 336, !3, i64 340, !6, i64 344, !3, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !3, i64 376, !6, i64 408, !6, i64 412, !6, i64 416, !3, i64 420, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !2, i64 480, !6, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !6, i64 576}
!10 = !{!"double", !3, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!9, !2, i64 0}
!13 = !{!14, !6, i64 40}
!14 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !3, i64 44, !6, i64 124, !15, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !6, i64 160, !6, i64 164}
!15 = !{!"long", !3, i64 0}
!16 = !{!14, !2, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !3, i64 128}
!20 = !{!"", !3, i64 0, !3, i64 128}
!21 = !{!9, !2, i64 104}
!22 = !{!9, !2, i64 8}
!23 = !{!24, !2, i64 0}
!24 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !15, i64 88, !15, i64 96}
!25 = !{!9, !6, i64 72}
!26 = !{!9, !6, i64 76}
!27 = !{!9, !6, i64 88}
!28 = !{!9, !2, i64 280}
!29 = !{!9, !6, i64 272}
!30 = !{!9, !3, i64 288}
!31 = !{!9, !3, i64 292}
!32 = !{!9, !3, i64 296}
!33 = !{!9, !3, i64 300}
!34 = !{!9, !3, i64 304}
!35 = !{!9, !6, i64 308}
!36 = !{!9, !3, i64 312}
!37 = !{!9, !6, i64 316}
!38 = !{!9, !6, i64 320}
!39 = !{!9, !3, i64 328}
!40 = !{!9, !3, i64 329}
!41 = !{!9, !3, i64 330}
!42 = !{!9, !11, i64 332}
!43 = !{!9, !11, i64 334}
!44 = !{!9, !3, i64 340}
!45 = !{!9, !3, i64 60}
!46 = !{!9, !3, i64 96}
!47 = !{!9, !3, i64 324}
!48 = !{!9, !3, i64 336}
!49 = !{!9, !6, i64 56}
!50 = !{!9, !6, i64 92}
!51 = !{!52, !6, i64 0}
!52 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!53 = !{!52, !6, i64 8}
!54 = !{!52, !6, i64 12}
!55 = !{!52, !6, i64 16}
!56 = !{!52, !6, i64 20}
!57 = !{!52, !6, i64 24}
!58 = !{!59, !3, i64 276}
!59 = !{!"", !3, i64 0, !3, i64 17, !3, i64 276}
