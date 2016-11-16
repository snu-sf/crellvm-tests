; ModuleID = './jcmaster.bc'
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
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { {}*, {}*, {}*, {}*, {}*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }

@jpeg_natural_order2 = external constant [0 x i32], align 4
@jpeg_natural_order3 = external constant [0 x i32], align 4
@jpeg_natural_order4 = external constant [0 x i32], align 4
@jpeg_natural_order5 = external constant [0 x i32], align 4
@jpeg_natural_order6 = external constant [0 x i32], align 4
@jpeg_natural_order7 = external constant [0 x i32], align 4
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_calc_jpeg_dimensions(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 7
  %1 = load i32, i32* %image_width, align 4, !tbaa !5
  %conv = zext i32 %1 to i64
  %shr = ashr i64 %conv, 24
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 8
  %3 = load i32, i32* %image_height, align 4, !tbaa !10
  %conv1 = zext i32 %3 to i64
  %shr2 = ashr i64 %conv1, 24
  %tobool3 = icmp ne i64 %shr2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4, !tbaa !15
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 12
  %14 = load i32, i32* %scale_num, align 4, !tbaa !17
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 13
  %16 = load i32, i32* %scale_denom, align 4, !tbaa !18
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 63
  %18 = load i32, i32* %block_size, align 4, !tbaa !19
  %mul = mul i32 %16, %18
  %cmp = icmp uge i32 %14, %mul
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 7
  %20 = load i32, i32* %image_width8, align 4, !tbaa !5
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 63
  %22 = load i32, i32* %block_size9, align 4, !tbaa !19
  %mul10 = mul i32 %20, %22
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 14
  store i32 %mul10, i32* %jpeg_width, align 4, !tbaa !20
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 8
  %25 = load i32, i32* %image_height11, align 4, !tbaa !10
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 63
  %27 = load i32, i32* %block_size12, align 4, !tbaa !19
  %mul13 = mul i32 %25, %27
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 15
  store i32 %mul13, i32* %jpeg_height, align 4, !tbaa !21
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 50
  store i32 1, i32* %min_DCT_h_scaled_size, align 4, !tbaa !22
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 51
  store i32 1, i32* %min_DCT_v_scaled_size, align 4, !tbaa !23
  br label %if.end.423

if.else:                                          ; preds = %if.end
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 12
  %32 = load i32, i32* %scale_num14, align 4, !tbaa !17
  %mul15 = mul i32 %32, 2
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 13
  %34 = load i32, i32* %scale_denom16, align 4, !tbaa !18
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 63
  %36 = load i32, i32* %block_size17, align 4, !tbaa !19
  %mul18 = mul i32 %34, %36
  %cmp19 = icmp uge i32 %mul15, %mul18
  br i1 %cmp19, label %if.then.21, label %if.else.39

if.then.21:                                       ; preds = %if.else
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 7
  %38 = load i32, i32* %image_width22, align 4, !tbaa !5
  %conv23 = zext i32 %38 to i64
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 63
  %40 = load i32, i32* %block_size24, align 4, !tbaa !19
  %conv25 = sext i32 %40 to i64
  %mul26 = mul nsw i64 %conv23, %conv25
  %call = call i64 @jdiv_round_up(i64 %mul26, i64 2) #3
  %conv27 = trunc i64 %call to i32
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 14
  store i32 %conv27, i32* %jpeg_width28, align 4, !tbaa !20
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 8
  %43 = load i32, i32* %image_height29, align 4, !tbaa !10
  %conv30 = zext i32 %43 to i64
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 63
  %45 = load i32, i32* %block_size31, align 4, !tbaa !19
  %conv32 = sext i32 %45 to i64
  %mul33 = mul nsw i64 %conv30, %conv32
  %call34 = call i64 @jdiv_round_up(i64 %mul33, i64 2) #3
  %conv35 = trunc i64 %call34 to i32
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 15
  store i32 %conv35, i32* %jpeg_height36, align 4, !tbaa !21
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 50
  store i32 2, i32* %min_DCT_h_scaled_size37, align 4, !tbaa !22
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 51
  store i32 2, i32* %min_DCT_v_scaled_size38, align 4, !tbaa !23
  br label %if.end.422

if.else.39:                                       ; preds = %if.else
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 12
  %50 = load i32, i32* %scale_num40, align 4, !tbaa !17
  %mul41 = mul i32 %50, 3
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 13
  %52 = load i32, i32* %scale_denom42, align 4, !tbaa !18
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 63
  %54 = load i32, i32* %block_size43, align 4, !tbaa !19
  %mul44 = mul i32 %52, %54
  %cmp45 = icmp uge i32 %mul41, %mul44
  br i1 %cmp45, label %if.then.47, label %if.else.66

if.then.47:                                       ; preds = %if.else.39
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 7
  %56 = load i32, i32* %image_width48, align 4, !tbaa !5
  %conv49 = zext i32 %56 to i64
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 63
  %58 = load i32, i32* %block_size50, align 4, !tbaa !19
  %conv51 = sext i32 %58 to i64
  %mul52 = mul nsw i64 %conv49, %conv51
  %call53 = call i64 @jdiv_round_up(i64 %mul52, i64 3) #3
  %conv54 = trunc i64 %call53 to i32
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 14
  store i32 %conv54, i32* %jpeg_width55, align 4, !tbaa !20
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 8
  %61 = load i32, i32* %image_height56, align 4, !tbaa !10
  %conv57 = zext i32 %61 to i64
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 63
  %63 = load i32, i32* %block_size58, align 4, !tbaa !19
  %conv59 = sext i32 %63 to i64
  %mul60 = mul nsw i64 %conv57, %conv59
  %call61 = call i64 @jdiv_round_up(i64 %mul60, i64 3) #3
  %conv62 = trunc i64 %call61 to i32
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 15
  store i32 %conv62, i32* %jpeg_height63, align 4, !tbaa !21
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 50
  store i32 3, i32* %min_DCT_h_scaled_size64, align 4, !tbaa !22
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 51
  store i32 3, i32* %min_DCT_v_scaled_size65, align 4, !tbaa !23
  br label %if.end.421

if.else.66:                                       ; preds = %if.else.39
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 12
  %68 = load i32, i32* %scale_num67, align 4, !tbaa !17
  %mul68 = mul i32 %68, 4
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 13
  %70 = load i32, i32* %scale_denom69, align 4, !tbaa !18
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 63
  %72 = load i32, i32* %block_size70, align 4, !tbaa !19
  %mul71 = mul i32 %70, %72
  %cmp72 = icmp uge i32 %mul68, %mul71
  br i1 %cmp72, label %if.then.74, label %if.else.93

if.then.74:                                       ; preds = %if.else.66
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 7
  %74 = load i32, i32* %image_width75, align 4, !tbaa !5
  %conv76 = zext i32 %74 to i64
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 63
  %76 = load i32, i32* %block_size77, align 4, !tbaa !19
  %conv78 = sext i32 %76 to i64
  %mul79 = mul nsw i64 %conv76, %conv78
  %call80 = call i64 @jdiv_round_up(i64 %mul79, i64 4) #3
  %conv81 = trunc i64 %call80 to i32
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 14
  store i32 %conv81, i32* %jpeg_width82, align 4, !tbaa !20
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 8
  %79 = load i32, i32* %image_height83, align 4, !tbaa !10
  %conv84 = zext i32 %79 to i64
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 63
  %81 = load i32, i32* %block_size85, align 4, !tbaa !19
  %conv86 = sext i32 %81 to i64
  %mul87 = mul nsw i64 %conv84, %conv86
  %call88 = call i64 @jdiv_round_up(i64 %mul87, i64 4) #3
  %conv89 = trunc i64 %call88 to i32
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 15
  store i32 %conv89, i32* %jpeg_height90, align 4, !tbaa !21
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 50
  store i32 4, i32* %min_DCT_h_scaled_size91, align 4, !tbaa !22
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 51
  store i32 4, i32* %min_DCT_v_scaled_size92, align 4, !tbaa !23
  br label %if.end.420

if.else.93:                                       ; preds = %if.else.66
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 12
  %86 = load i32, i32* %scale_num94, align 4, !tbaa !17
  %mul95 = mul i32 %86, 5
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 13
  %88 = load i32, i32* %scale_denom96, align 4, !tbaa !18
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 63
  %90 = load i32, i32* %block_size97, align 4, !tbaa !19
  %mul98 = mul i32 %88, %90
  %cmp99 = icmp uge i32 %mul95, %mul98
  br i1 %cmp99, label %if.then.101, label %if.else.120

if.then.101:                                      ; preds = %if.else.93
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 7
  %92 = load i32, i32* %image_width102, align 4, !tbaa !5
  %conv103 = zext i32 %92 to i64
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 63
  %94 = load i32, i32* %block_size104, align 4, !tbaa !19
  %conv105 = sext i32 %94 to i64
  %mul106 = mul nsw i64 %conv103, %conv105
  %call107 = call i64 @jdiv_round_up(i64 %mul106, i64 5) #3
  %conv108 = trunc i64 %call107 to i32
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 14
  store i32 %conv108, i32* %jpeg_width109, align 4, !tbaa !20
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 8
  %97 = load i32, i32* %image_height110, align 4, !tbaa !10
  %conv111 = zext i32 %97 to i64
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 63
  %99 = load i32, i32* %block_size112, align 4, !tbaa !19
  %conv113 = sext i32 %99 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %call115 = call i64 @jdiv_round_up(i64 %mul114, i64 5) #3
  %conv116 = trunc i64 %call115 to i32
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 15
  store i32 %conv116, i32* %jpeg_height117, align 4, !tbaa !21
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 50
  store i32 5, i32* %min_DCT_h_scaled_size118, align 4, !tbaa !22
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 51
  store i32 5, i32* %min_DCT_v_scaled_size119, align 4, !tbaa !23
  br label %if.end.419

if.else.120:                                      ; preds = %if.else.93
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num121 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 12
  %104 = load i32, i32* %scale_num121, align 4, !tbaa !17
  %mul122 = mul i32 %104, 6
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 13
  %106 = load i32, i32* %scale_denom123, align 4, !tbaa !18
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 63
  %108 = load i32, i32* %block_size124, align 4, !tbaa !19
  %mul125 = mul i32 %106, %108
  %cmp126 = icmp uge i32 %mul122, %mul125
  br i1 %cmp126, label %if.then.128, label %if.else.147

if.then.128:                                      ; preds = %if.else.120
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 7
  %110 = load i32, i32* %image_width129, align 4, !tbaa !5
  %conv130 = zext i32 %110 to i64
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 63
  %112 = load i32, i32* %block_size131, align 4, !tbaa !19
  %conv132 = sext i32 %112 to i64
  %mul133 = mul nsw i64 %conv130, %conv132
  %call134 = call i64 @jdiv_round_up(i64 %mul133, i64 6) #3
  %conv135 = trunc i64 %call134 to i32
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 14
  store i32 %conv135, i32* %jpeg_width136, align 4, !tbaa !20
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 8
  %115 = load i32, i32* %image_height137, align 4, !tbaa !10
  %conv138 = zext i32 %115 to i64
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 63
  %117 = load i32, i32* %block_size139, align 4, !tbaa !19
  %conv140 = sext i32 %117 to i64
  %mul141 = mul nsw i64 %conv138, %conv140
  %call142 = call i64 @jdiv_round_up(i64 %mul141, i64 6) #3
  %conv143 = trunc i64 %call142 to i32
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height144 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 15
  store i32 %conv143, i32* %jpeg_height144, align 4, !tbaa !21
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 50
  store i32 6, i32* %min_DCT_h_scaled_size145, align 4, !tbaa !22
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size146 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 51
  store i32 6, i32* %min_DCT_v_scaled_size146, align 4, !tbaa !23
  br label %if.end.418

if.else.147:                                      ; preds = %if.else.120
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num148 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 12
  %122 = load i32, i32* %scale_num148, align 4, !tbaa !17
  %mul149 = mul i32 %122, 7
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom150 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 13
  %124 = load i32, i32* %scale_denom150, align 4, !tbaa !18
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 63
  %126 = load i32, i32* %block_size151, align 4, !tbaa !19
  %mul152 = mul i32 %124, %126
  %cmp153 = icmp uge i32 %mul149, %mul152
  br i1 %cmp153, label %if.then.155, label %if.else.174

if.then.155:                                      ; preds = %if.else.147
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width156 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 7
  %128 = load i32, i32* %image_width156, align 4, !tbaa !5
  %conv157 = zext i32 %128 to i64
  %129 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %129, i32 0, i32 63
  %130 = load i32, i32* %block_size158, align 4, !tbaa !19
  %conv159 = sext i32 %130 to i64
  %mul160 = mul nsw i64 %conv157, %conv159
  %call161 = call i64 @jdiv_round_up(i64 %mul160, i64 7) #3
  %conv162 = trunc i64 %call161 to i32
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width163 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 14
  store i32 %conv162, i32* %jpeg_width163, align 4, !tbaa !20
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height164 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 8
  %133 = load i32, i32* %image_height164, align 4, !tbaa !10
  %conv165 = zext i32 %133 to i64
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %134, i32 0, i32 63
  %135 = load i32, i32* %block_size166, align 4, !tbaa !19
  %conv167 = sext i32 %135 to i64
  %mul168 = mul nsw i64 %conv165, %conv167
  %call169 = call i64 @jdiv_round_up(i64 %mul168, i64 7) #3
  %conv170 = trunc i64 %call169 to i32
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height171 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %136, i32 0, i32 15
  store i32 %conv170, i32* %jpeg_height171, align 4, !tbaa !21
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 50
  store i32 7, i32* %min_DCT_h_scaled_size172, align 4, !tbaa !22
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size173 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 51
  store i32 7, i32* %min_DCT_v_scaled_size173, align 4, !tbaa !23
  br label %if.end.417

if.else.174:                                      ; preds = %if.else.147
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num175 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 12
  %140 = load i32, i32* %scale_num175, align 4, !tbaa !17
  %mul176 = mul i32 %140, 8
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom177 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 13
  %142 = load i32, i32* %scale_denom177, align 4, !tbaa !18
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size178 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %143, i32 0, i32 63
  %144 = load i32, i32* %block_size178, align 4, !tbaa !19
  %mul179 = mul i32 %142, %144
  %cmp180 = icmp uge i32 %mul176, %mul179
  br i1 %cmp180, label %if.then.182, label %if.else.201

if.then.182:                                      ; preds = %if.else.174
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 7
  %146 = load i32, i32* %image_width183, align 4, !tbaa !5
  %conv184 = zext i32 %146 to i64
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size185 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %147, i32 0, i32 63
  %148 = load i32, i32* %block_size185, align 4, !tbaa !19
  %conv186 = sext i32 %148 to i64
  %mul187 = mul nsw i64 %conv184, %conv186
  %call188 = call i64 @jdiv_round_up(i64 %mul187, i64 8) #3
  %conv189 = trunc i64 %call188 to i32
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 14
  store i32 %conv189, i32* %jpeg_width190, align 4, !tbaa !20
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 8
  %151 = load i32, i32* %image_height191, align 4, !tbaa !10
  %conv192 = zext i32 %151 to i64
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size193 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %152, i32 0, i32 63
  %153 = load i32, i32* %block_size193, align 4, !tbaa !19
  %conv194 = sext i32 %153 to i64
  %mul195 = mul nsw i64 %conv192, %conv194
  %call196 = call i64 @jdiv_round_up(i64 %mul195, i64 8) #3
  %conv197 = trunc i64 %call196 to i32
  %154 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height198 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %154, i32 0, i32 15
  store i32 %conv197, i32* %jpeg_height198, align 4, !tbaa !21
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size199 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %155, i32 0, i32 50
  store i32 8, i32* %min_DCT_h_scaled_size199, align 4, !tbaa !22
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size200 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 51
  store i32 8, i32* %min_DCT_v_scaled_size200, align 4, !tbaa !23
  br label %if.end.416

if.else.201:                                      ; preds = %if.else.174
  %157 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num202 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %157, i32 0, i32 12
  %158 = load i32, i32* %scale_num202, align 4, !tbaa !17
  %mul203 = mul i32 %158, 9
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 13
  %160 = load i32, i32* %scale_denom204, align 4, !tbaa !18
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size205 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %161, i32 0, i32 63
  %162 = load i32, i32* %block_size205, align 4, !tbaa !19
  %mul206 = mul i32 %160, %162
  %cmp207 = icmp uge i32 %mul203, %mul206
  br i1 %cmp207, label %if.then.209, label %if.else.228

if.then.209:                                      ; preds = %if.else.201
  %163 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width210 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %163, i32 0, i32 7
  %164 = load i32, i32* %image_width210, align 4, !tbaa !5
  %conv211 = zext i32 %164 to i64
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size212 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 63
  %166 = load i32, i32* %block_size212, align 4, !tbaa !19
  %conv213 = sext i32 %166 to i64
  %mul214 = mul nsw i64 %conv211, %conv213
  %call215 = call i64 @jdiv_round_up(i64 %mul214, i64 9) #3
  %conv216 = trunc i64 %call215 to i32
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width217 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 14
  store i32 %conv216, i32* %jpeg_width217, align 4, !tbaa !20
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height218 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 8
  %169 = load i32, i32* %image_height218, align 4, !tbaa !10
  %conv219 = zext i32 %169 to i64
  %170 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %170, i32 0, i32 63
  %171 = load i32, i32* %block_size220, align 4, !tbaa !19
  %conv221 = sext i32 %171 to i64
  %mul222 = mul nsw i64 %conv219, %conv221
  %call223 = call i64 @jdiv_round_up(i64 %mul222, i64 9) #3
  %conv224 = trunc i64 %call223 to i32
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height225 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %172, i32 0, i32 15
  store i32 %conv224, i32* %jpeg_height225, align 4, !tbaa !21
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size226 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %173, i32 0, i32 50
  store i32 9, i32* %min_DCT_h_scaled_size226, align 4, !tbaa !22
  %174 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size227 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %174, i32 0, i32 51
  store i32 9, i32* %min_DCT_v_scaled_size227, align 4, !tbaa !23
  br label %if.end.415

if.else.228:                                      ; preds = %if.else.201
  %175 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num229 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %175, i32 0, i32 12
  %176 = load i32, i32* %scale_num229, align 4, !tbaa !17
  %mul230 = mul i32 %176, 10
  %177 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom231 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %177, i32 0, i32 13
  %178 = load i32, i32* %scale_denom231, align 4, !tbaa !18
  %179 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size232 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %179, i32 0, i32 63
  %180 = load i32, i32* %block_size232, align 4, !tbaa !19
  %mul233 = mul i32 %178, %180
  %cmp234 = icmp uge i32 %mul230, %mul233
  br i1 %cmp234, label %if.then.236, label %if.else.255

if.then.236:                                      ; preds = %if.else.228
  %181 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width237 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %181, i32 0, i32 7
  %182 = load i32, i32* %image_width237, align 4, !tbaa !5
  %conv238 = zext i32 %182 to i64
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size239 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 63
  %184 = load i32, i32* %block_size239, align 4, !tbaa !19
  %conv240 = sext i32 %184 to i64
  %mul241 = mul nsw i64 %conv238, %conv240
  %call242 = call i64 @jdiv_round_up(i64 %mul241, i64 10) #3
  %conv243 = trunc i64 %call242 to i32
  %185 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width244 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %185, i32 0, i32 14
  store i32 %conv243, i32* %jpeg_width244, align 4, !tbaa !20
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height245 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %186, i32 0, i32 8
  %187 = load i32, i32* %image_height245, align 4, !tbaa !10
  %conv246 = zext i32 %187 to i64
  %188 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size247 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %188, i32 0, i32 63
  %189 = load i32, i32* %block_size247, align 4, !tbaa !19
  %conv248 = sext i32 %189 to i64
  %mul249 = mul nsw i64 %conv246, %conv248
  %call250 = call i64 @jdiv_round_up(i64 %mul249, i64 10) #3
  %conv251 = trunc i64 %call250 to i32
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height252 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %190, i32 0, i32 15
  store i32 %conv251, i32* %jpeg_height252, align 4, !tbaa !21
  %191 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size253 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %191, i32 0, i32 50
  store i32 10, i32* %min_DCT_h_scaled_size253, align 4, !tbaa !22
  %192 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size254 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %192, i32 0, i32 51
  store i32 10, i32* %min_DCT_v_scaled_size254, align 4, !tbaa !23
  br label %if.end.414

if.else.255:                                      ; preds = %if.else.228
  %193 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num256 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %193, i32 0, i32 12
  %194 = load i32, i32* %scale_num256, align 4, !tbaa !17
  %mul257 = mul i32 %194, 11
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom258 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %195, i32 0, i32 13
  %196 = load i32, i32* %scale_denom258, align 4, !tbaa !18
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size259 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 63
  %198 = load i32, i32* %block_size259, align 4, !tbaa !19
  %mul260 = mul i32 %196, %198
  %cmp261 = icmp uge i32 %mul257, %mul260
  br i1 %cmp261, label %if.then.263, label %if.else.282

if.then.263:                                      ; preds = %if.else.255
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width264 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %199, i32 0, i32 7
  %200 = load i32, i32* %image_width264, align 4, !tbaa !5
  %conv265 = zext i32 %200 to i64
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size266 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 63
  %202 = load i32, i32* %block_size266, align 4, !tbaa !19
  %conv267 = sext i32 %202 to i64
  %mul268 = mul nsw i64 %conv265, %conv267
  %call269 = call i64 @jdiv_round_up(i64 %mul268, i64 11) #3
  %conv270 = trunc i64 %call269 to i32
  %203 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width271 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %203, i32 0, i32 14
  store i32 %conv270, i32* %jpeg_width271, align 4, !tbaa !20
  %204 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height272 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %204, i32 0, i32 8
  %205 = load i32, i32* %image_height272, align 4, !tbaa !10
  %conv273 = zext i32 %205 to i64
  %206 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size274 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %206, i32 0, i32 63
  %207 = load i32, i32* %block_size274, align 4, !tbaa !19
  %conv275 = sext i32 %207 to i64
  %mul276 = mul nsw i64 %conv273, %conv275
  %call277 = call i64 @jdiv_round_up(i64 %mul276, i64 11) #3
  %conv278 = trunc i64 %call277 to i32
  %208 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height279 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %208, i32 0, i32 15
  store i32 %conv278, i32* %jpeg_height279, align 4, !tbaa !21
  %209 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size280 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %209, i32 0, i32 50
  store i32 11, i32* %min_DCT_h_scaled_size280, align 4, !tbaa !22
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size281 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 51
  store i32 11, i32* %min_DCT_v_scaled_size281, align 4, !tbaa !23
  br label %if.end.413

if.else.282:                                      ; preds = %if.else.255
  %211 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num283 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %211, i32 0, i32 12
  %212 = load i32, i32* %scale_num283, align 4, !tbaa !17
  %mul284 = mul i32 %212, 12
  %213 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom285 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %213, i32 0, i32 13
  %214 = load i32, i32* %scale_denom285, align 4, !tbaa !18
  %215 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size286 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %215, i32 0, i32 63
  %216 = load i32, i32* %block_size286, align 4, !tbaa !19
  %mul287 = mul i32 %214, %216
  %cmp288 = icmp uge i32 %mul284, %mul287
  br i1 %cmp288, label %if.then.290, label %if.else.309

if.then.290:                                      ; preds = %if.else.282
  %217 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width291 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %217, i32 0, i32 7
  %218 = load i32, i32* %image_width291, align 4, !tbaa !5
  %conv292 = zext i32 %218 to i64
  %219 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size293 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %219, i32 0, i32 63
  %220 = load i32, i32* %block_size293, align 4, !tbaa !19
  %conv294 = sext i32 %220 to i64
  %mul295 = mul nsw i64 %conv292, %conv294
  %call296 = call i64 @jdiv_round_up(i64 %mul295, i64 12) #3
  %conv297 = trunc i64 %call296 to i32
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width298 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 14
  store i32 %conv297, i32* %jpeg_width298, align 4, !tbaa !20
  %222 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height299 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %222, i32 0, i32 8
  %223 = load i32, i32* %image_height299, align 4, !tbaa !10
  %conv300 = zext i32 %223 to i64
  %224 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size301 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %224, i32 0, i32 63
  %225 = load i32, i32* %block_size301, align 4, !tbaa !19
  %conv302 = sext i32 %225 to i64
  %mul303 = mul nsw i64 %conv300, %conv302
  %call304 = call i64 @jdiv_round_up(i64 %mul303, i64 12) #3
  %conv305 = trunc i64 %call304 to i32
  %226 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height306 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %226, i32 0, i32 15
  store i32 %conv305, i32* %jpeg_height306, align 4, !tbaa !21
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size307 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 50
  store i32 12, i32* %min_DCT_h_scaled_size307, align 4, !tbaa !22
  %228 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size308 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %228, i32 0, i32 51
  store i32 12, i32* %min_DCT_v_scaled_size308, align 4, !tbaa !23
  br label %if.end.412

if.else.309:                                      ; preds = %if.else.282
  %229 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num310 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %229, i32 0, i32 12
  %230 = load i32, i32* %scale_num310, align 4, !tbaa !17
  %mul311 = mul i32 %230, 13
  %231 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom312 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %231, i32 0, i32 13
  %232 = load i32, i32* %scale_denom312, align 4, !tbaa !18
  %233 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size313 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %233, i32 0, i32 63
  %234 = load i32, i32* %block_size313, align 4, !tbaa !19
  %mul314 = mul i32 %232, %234
  %cmp315 = icmp uge i32 %mul311, %mul314
  br i1 %cmp315, label %if.then.317, label %if.else.336

if.then.317:                                      ; preds = %if.else.309
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width318 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %235, i32 0, i32 7
  %236 = load i32, i32* %image_width318, align 4, !tbaa !5
  %conv319 = zext i32 %236 to i64
  %237 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size320 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %237, i32 0, i32 63
  %238 = load i32, i32* %block_size320, align 4, !tbaa !19
  %conv321 = sext i32 %238 to i64
  %mul322 = mul nsw i64 %conv319, %conv321
  %call323 = call i64 @jdiv_round_up(i64 %mul322, i64 13) #3
  %conv324 = trunc i64 %call323 to i32
  %239 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width325 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %239, i32 0, i32 14
  store i32 %conv324, i32* %jpeg_width325, align 4, !tbaa !20
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height326 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %240, i32 0, i32 8
  %241 = load i32, i32* %image_height326, align 4, !tbaa !10
  %conv327 = zext i32 %241 to i64
  %242 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size328 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %242, i32 0, i32 63
  %243 = load i32, i32* %block_size328, align 4, !tbaa !19
  %conv329 = sext i32 %243 to i64
  %mul330 = mul nsw i64 %conv327, %conv329
  %call331 = call i64 @jdiv_round_up(i64 %mul330, i64 13) #3
  %conv332 = trunc i64 %call331 to i32
  %244 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height333 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %244, i32 0, i32 15
  store i32 %conv332, i32* %jpeg_height333, align 4, !tbaa !21
  %245 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size334 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %245, i32 0, i32 50
  store i32 13, i32* %min_DCT_h_scaled_size334, align 4, !tbaa !22
  %246 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size335 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %246, i32 0, i32 51
  store i32 13, i32* %min_DCT_v_scaled_size335, align 4, !tbaa !23
  br label %if.end.411

if.else.336:                                      ; preds = %if.else.309
  %247 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num337 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %247, i32 0, i32 12
  %248 = load i32, i32* %scale_num337, align 4, !tbaa !17
  %mul338 = mul i32 %248, 14
  %249 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom339 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %249, i32 0, i32 13
  %250 = load i32, i32* %scale_denom339, align 4, !tbaa !18
  %251 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size340 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %251, i32 0, i32 63
  %252 = load i32, i32* %block_size340, align 4, !tbaa !19
  %mul341 = mul i32 %250, %252
  %cmp342 = icmp uge i32 %mul338, %mul341
  br i1 %cmp342, label %if.then.344, label %if.else.363

if.then.344:                                      ; preds = %if.else.336
  %253 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width345 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %253, i32 0, i32 7
  %254 = load i32, i32* %image_width345, align 4, !tbaa !5
  %conv346 = zext i32 %254 to i64
  %255 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size347 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %255, i32 0, i32 63
  %256 = load i32, i32* %block_size347, align 4, !tbaa !19
  %conv348 = sext i32 %256 to i64
  %mul349 = mul nsw i64 %conv346, %conv348
  %call350 = call i64 @jdiv_round_up(i64 %mul349, i64 14) #3
  %conv351 = trunc i64 %call350 to i32
  %257 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width352 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %257, i32 0, i32 14
  store i32 %conv351, i32* %jpeg_width352, align 4, !tbaa !20
  %258 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height353 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %258, i32 0, i32 8
  %259 = load i32, i32* %image_height353, align 4, !tbaa !10
  %conv354 = zext i32 %259 to i64
  %260 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size355 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %260, i32 0, i32 63
  %261 = load i32, i32* %block_size355, align 4, !tbaa !19
  %conv356 = sext i32 %261 to i64
  %mul357 = mul nsw i64 %conv354, %conv356
  %call358 = call i64 @jdiv_round_up(i64 %mul357, i64 14) #3
  %conv359 = trunc i64 %call358 to i32
  %262 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height360 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %262, i32 0, i32 15
  store i32 %conv359, i32* %jpeg_height360, align 4, !tbaa !21
  %263 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size361 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %263, i32 0, i32 50
  store i32 14, i32* %min_DCT_h_scaled_size361, align 4, !tbaa !22
  %264 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size362 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %264, i32 0, i32 51
  store i32 14, i32* %min_DCT_v_scaled_size362, align 4, !tbaa !23
  br label %if.end.410

if.else.363:                                      ; preds = %if.else.336
  %265 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_num364 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %265, i32 0, i32 12
  %266 = load i32, i32* %scale_num364, align 4, !tbaa !17
  %mul365 = mul i32 %266, 15
  %267 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scale_denom366 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %267, i32 0, i32 13
  %268 = load i32, i32* %scale_denom366, align 4, !tbaa !18
  %269 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size367 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %269, i32 0, i32 63
  %270 = load i32, i32* %block_size367, align 4, !tbaa !19
  %mul368 = mul i32 %268, %270
  %cmp369 = icmp uge i32 %mul365, %mul368
  br i1 %cmp369, label %if.then.371, label %if.else.390

if.then.371:                                      ; preds = %if.else.363
  %271 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width372 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %271, i32 0, i32 7
  %272 = load i32, i32* %image_width372, align 4, !tbaa !5
  %conv373 = zext i32 %272 to i64
  %273 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size374 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %273, i32 0, i32 63
  %274 = load i32, i32* %block_size374, align 4, !tbaa !19
  %conv375 = sext i32 %274 to i64
  %mul376 = mul nsw i64 %conv373, %conv375
  %call377 = call i64 @jdiv_round_up(i64 %mul376, i64 15) #3
  %conv378 = trunc i64 %call377 to i32
  %275 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width379 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %275, i32 0, i32 14
  store i32 %conv378, i32* %jpeg_width379, align 4, !tbaa !20
  %276 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height380 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %276, i32 0, i32 8
  %277 = load i32, i32* %image_height380, align 4, !tbaa !10
  %conv381 = zext i32 %277 to i64
  %278 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size382 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %278, i32 0, i32 63
  %279 = load i32, i32* %block_size382, align 4, !tbaa !19
  %conv383 = sext i32 %279 to i64
  %mul384 = mul nsw i64 %conv381, %conv383
  %call385 = call i64 @jdiv_round_up(i64 %mul384, i64 15) #3
  %conv386 = trunc i64 %call385 to i32
  %280 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height387 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %280, i32 0, i32 15
  store i32 %conv386, i32* %jpeg_height387, align 4, !tbaa !21
  %281 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size388 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %281, i32 0, i32 50
  store i32 15, i32* %min_DCT_h_scaled_size388, align 4, !tbaa !22
  %282 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size389 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %282, i32 0, i32 51
  store i32 15, i32* %min_DCT_v_scaled_size389, align 4, !tbaa !23
  br label %if.end.409

if.else.390:                                      ; preds = %if.else.363
  %283 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width391 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %283, i32 0, i32 7
  %284 = load i32, i32* %image_width391, align 4, !tbaa !5
  %conv392 = zext i32 %284 to i64
  %285 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size393 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %285, i32 0, i32 63
  %286 = load i32, i32* %block_size393, align 4, !tbaa !19
  %conv394 = sext i32 %286 to i64
  %mul395 = mul nsw i64 %conv392, %conv394
  %call396 = call i64 @jdiv_round_up(i64 %mul395, i64 16) #3
  %conv397 = trunc i64 %call396 to i32
  %287 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width398 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %287, i32 0, i32 14
  store i32 %conv397, i32* %jpeg_width398, align 4, !tbaa !20
  %288 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height399 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %288, i32 0, i32 8
  %289 = load i32, i32* %image_height399, align 4, !tbaa !10
  %conv400 = zext i32 %289 to i64
  %290 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size401 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %290, i32 0, i32 63
  %291 = load i32, i32* %block_size401, align 4, !tbaa !19
  %conv402 = sext i32 %291 to i64
  %mul403 = mul nsw i64 %conv400, %conv402
  %call404 = call i64 @jdiv_round_up(i64 %mul403, i64 16) #3
  %conv405 = trunc i64 %call404 to i32
  %292 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height406 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %292, i32 0, i32 15
  store i32 %conv405, i32* %jpeg_height406, align 4, !tbaa !21
  %293 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size407 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %293, i32 0, i32 50
  store i32 16, i32* %min_DCT_h_scaled_size407, align 4, !tbaa !22
  %294 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size408 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %294, i32 0, i32 51
  store i32 16, i32* %min_DCT_v_scaled_size408, align 4, !tbaa !23
  br label %if.end.409

if.end.409:                                       ; preds = %if.else.390, %if.then.371
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.344
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.317
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.then.290
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %if.then.263
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %if.then.236
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %if.then.209
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.182
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %if.then.155
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.then.128
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %if.then.101
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.then.74
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.then.47
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.then.21
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.then.7
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @jinit_c_master_control(%struct.jpeg_compress_struct* %cinfo, i32 %transcode_only) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %transcode_only.addr = alloca i32, align 4
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %transcode_only, i32* %transcode_only.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !25
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !26
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48) #3
  %6 = bitcast i8* %call to %struct.my_comp_master*
  store %struct.my_comp_master* %6, %struct.my_comp_master** %master, align 8, !tbaa !1
  %7 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %7, i32 0, i32 0
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 66
  store %struct.jpeg_comp_master* %pub, %struct.jpeg_comp_master** %master1, align 8, !tbaa !28
  %9 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %9, i32 0, i32 0
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub2, i32 0, i32 0
  %prepare_for_pass3 = bitcast {}** %prepare_for_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @prepare_for_pass, void (%struct.jpeg_compress_struct*)** %prepare_for_pass3, align 8, !tbaa !29
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 0
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub4, i32 0, i32 1
  %pass_startup5 = bitcast {}** %pass_startup to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @pass_startup, void (%struct.jpeg_compress_struct*)** %pass_startup5, align 8, !tbaa !32
  %11 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub6 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub6, i32 0, i32 2
  %finish_pass7 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @finish_pass_master, void (%struct.jpeg_compress_struct*)** %finish_pass7, align 8, !tbaa !33
  %12 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub8 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %12, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub8, i32 0, i32 4
  store i32 0, i32* %is_last_pass, align 4, !tbaa !34
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = load i32, i32* %transcode_only.addr, align 4, !tbaa !24
  call void @initial_setup(%struct.jpeg_compress_struct* %13, i32 %14) #3
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 28
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !35
  %cmp = icmp ne %struct.jpeg_scan_info* %16, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !12
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 47
  store i32 0, i32* %progressive_mode, align 4, !tbaa !36
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 27
  store i32 1, i32* %num_scans, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 31
  %27 = load i32, i32* %optimize_coding, align 4, !tbaa !38
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 30
  store i32 0, i32* %arith_code, align 4, !tbaa !39
  br label %if.end.23

if.else.11:                                       ; preds = %if.end
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 30
  %30 = load i32, i32* %arith_code12, align 4, !tbaa !39
  %tobool13 = icmp ne i32 %30, 0
  br i1 %tobool13, label %if.end.22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.11
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 47
  %32 = load i32, i32* %progressive_mode14, align 4, !tbaa !36
  %tobool15 = icmp ne i32 %32, 0
  br i1 %tobool15, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 63
  %34 = load i32, i32* %block_size, align 4, !tbaa !19
  %cmp16 = icmp sgt i32 %34, 1
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 63
  %36 = load i32, i32* %block_size18, align 4, !tbaa !19
  %cmp19 = icmp slt i32 %36, 8
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.17, %land.lhs.true
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 31
  store i32 1, i32* %optimize_coding21, align 4, !tbaa !38
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.17, %lor.lhs.false, %if.else.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  %38 = load i32, i32* %transcode_only.addr, align 4, !tbaa !24
  %tobool24 = icmp ne i32 %38, 0
  br i1 %tobool24, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %if.end.23
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 31
  %40 = load i32, i32* %optimize_coding26, align 4, !tbaa !38
  %tobool27 = icmp ne i32 %40, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.25
  %41 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %41, i32 0, i32 1
  store i32 1, i32* %pass_type, align 4, !tbaa !40
  br label %if.end.31

if.else.29:                                       ; preds = %if.then.25
  %42 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type30 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %42, i32 0, i32 1
  store i32 2, i32* %pass_type30, align 4, !tbaa !40
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.34

if.else.32:                                       ; preds = %if.end.23
  %43 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type33 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %43, i32 0, i32 1
  store i32 0, i32* %pass_type33, align 4, !tbaa !40
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.end.31
  %44 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %44, i32 0, i32 4
  store i32 0, i32* %scan_number, align 4, !tbaa !41
  %45 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %45, i32 0, i32 2
  store i32 0, i32* %pass_number, align 4, !tbaa !42
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 31
  %47 = load i32, i32* %optimize_coding35, align 4, !tbaa !38
  %tobool36 = icmp ne i32 %47, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.end.34
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_scans38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 27
  %49 = load i32, i32* %num_scans38, align 4, !tbaa !37
  %mul = mul nsw i32 %49, 2
  %50 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %50, i32 0, i32 3
  store i32 %mul, i32* %total_passes, align 4, !tbaa !43
  br label %if.end.42

if.else.39:                                       ; preds = %if.end.34
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_scans40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 27
  %52 = load i32, i32* %num_scans40, align 4, !tbaa !37
  %53 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %total_passes41 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %53, i32 0, i32 3
  store i32 %52, i32* %total_passes41, align 4, !tbaa !43
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.37
  %54 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 66
  %2 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8, !tbaa !28
  %3 = bitcast %struct.jpeg_comp_master* %2 to %struct.my_comp_master*
  store %struct.my_comp_master* %3, %struct.my_comp_master** %master, align 8, !tbaa !1
  %4 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %4, i32 0, i32 1
  %5 = load i32, i32* %pass_type, align 4, !tbaa !40
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %6) #3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @per_scan_setup(%struct.jpeg_compress_struct* %7) #3
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 29
  %9 = load i32, i32* %raw_data_in, align 4, !tbaa !44
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 71
  %11 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8, !tbaa !45
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %11, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  %12 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !46
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %12(%struct.jpeg_compress_struct* %13) #3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 72
  %15 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8, !tbaa !48
  %start_pass3 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %15, i32 0, i32 0
  %start_pass4 = bitcast {}** %start_pass3 to void (%struct.jpeg_compress_struct*)**
  %16 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass4, align 8, !tbaa !49
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %16(%struct.jpeg_compress_struct* %17) #3
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 68
  %19 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8, !tbaa !51
  %start_pass5 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass5, align 8, !tbaa !52
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %20(%struct.jpeg_compress_struct* %21, i32 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 73
  %23 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8, !tbaa !54
  %start_pass6 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %23, i32 0, i32 0
  %start_pass7 = bitcast {}** %start_pass6 to void (%struct.jpeg_compress_struct*)**
  %24 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass7, align 8, !tbaa !55
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %24(%struct.jpeg_compress_struct* %25) #3
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 74
  %27 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !57
  %start_pass8 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %27, i32 0, i32 0
  %28 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass8, align 8, !tbaa !58
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 31
  %31 = load i32, i32* %optimize_coding, align 4, !tbaa !38
  call void %28(%struct.jpeg_compress_struct* %29, i32 %31) #3
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 69
  %33 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8, !tbaa !60
  %start_pass9 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass9, align 8, !tbaa !61
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %36 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %36, i32 0, i32 3
  %37 = load i32, i32* %total_passes, align 4, !tbaa !43
  %cmp = icmp sgt i32 %37, 1
  %cond = select i1 %cmp, i32 3, i32 0
  call void %34(%struct.jpeg_compress_struct* %35, i32 %cond) #3
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 67
  %39 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main, align 8, !tbaa !63
  %start_pass10 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass10, align 8, !tbaa !64
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %40(%struct.jpeg_compress_struct* %41, i32 0) #3
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 31
  %43 = load i32, i32* %optimize_coding11, align 4, !tbaa !38
  %tobool12 = icmp ne i32 %43, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %44 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %44, i32 0, i32 0
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4, !tbaa !66
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %45 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub14 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %45, i32 0, i32 0
  %call_pass_startup15 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub14, i32 0, i32 3
  store i32 1, i32* %call_pass_startup15, align 4, !tbaa !66
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 31
  %47 = load i32, i32* %optimize_coding18, align 4, !tbaa !38
  %tobool19 = icmp ne i32 %47, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %sw.bb.17
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %48) #3
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @per_scan_setup(%struct.jpeg_compress_struct* %49) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %sw.bb.17
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 74
  %51 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy22, align 8, !tbaa !57
  %start_pass23 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %51, i32 0, i32 0
  %52 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass23, align 8, !tbaa !58
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %52(%struct.jpeg_compress_struct* %53, i32 0) #3
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 69
  %55 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef24, align 8, !tbaa !60
  %start_pass25 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass25, align 8, !tbaa !61
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %56(%struct.jpeg_compress_struct* %57, i32 2) #3
  %58 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %58, i32 0, i32 4
  %59 = load i32, i32* %scan_number, align 4, !tbaa !41
  %cmp26 = icmp eq i32 %59, 0
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.21
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 70
  %61 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !67
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %61, i32 0, i32 1
  %write_frame_header28 = bitcast {}** %write_frame_header to void (%struct.jpeg_compress_struct*)**
  %62 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header28, align 8, !tbaa !68
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %62(%struct.jpeg_compress_struct* %63) #3
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.21
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 70
  %65 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker30, align 8, !tbaa !67
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %65, i32 0, i32 2
  %write_scan_header31 = bitcast {}** %write_scan_header to void (%struct.jpeg_compress_struct*)**
  %66 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header31, align 8, !tbaa !70
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %66(%struct.jpeg_compress_struct* %67) #3
  %68 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub32 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %68, i32 0, i32 0
  %call_pass_startup33 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub32, i32 0, i32 3
  store i32 0, i32* %call_pass_startup33, align 4, !tbaa !66
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !12
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.29, %if.end.16
  %76 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %76, i32 0, i32 2
  %77 = load i32, i32* %pass_number, align 4, !tbaa !42
  %78 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %total_passes35 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %78, i32 0, i32 3
  %79 = load i32, i32* %total_passes35, align 4, !tbaa !43
  %sub = sub nsw i32 %79, 1
  %cmp36 = icmp eq i32 %77, %sub
  %conv = zext i1 %cmp36 to i32
  %80 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pub37 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %80, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub37, i32 0, i32 4
  store i32 %conv, i32* %is_last_pass, align 4, !tbaa !34
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 2
  %82 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !71
  %cmp38 = icmp ne %struct.jpeg_progress_mgr* %82, null
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %sw.epilog
  %83 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_number41 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %83, i32 0, i32 2
  %84 = load i32, i32* %pass_number41, align 4, !tbaa !42
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 2
  %86 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress42, align 8, !tbaa !71
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %86, i32 0, i32 3
  store i32 %84, i32* %completed_passes, align 4, !tbaa !72
  %87 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %total_passes43 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %87, i32 0, i32 3
  %88 = load i32, i32* %total_passes43, align 4, !tbaa !43
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 2
  %90 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress44, align 8, !tbaa !71
  %total_passes45 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %90, i32 0, i32 4
  store i32 %88, i32* %total_passes45, align 4, !tbaa !74
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %sw.epilog
  %91 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 66
  %1 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master, align 8, !tbaa !28
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %1, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4, !tbaa !75
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 70
  %3 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8, !tbaa !67
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %3, i32 0, i32 1
  %write_frame_header1 = bitcast {}** %write_frame_header to void (%struct.jpeg_compress_struct*)**
  %4 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header1, align 8, !tbaa !68
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %4(%struct.jpeg_compress_struct* %5) #3
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 70
  %7 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker2, align 8, !tbaa !67
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %7, i32 0, i32 2
  %write_scan_header3 = bitcast {}** %write_scan_header to void (%struct.jpeg_compress_struct*)**
  %8 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header3, align 8, !tbaa !70
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %8(%struct.jpeg_compress_struct* %9) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 66
  %2 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8, !tbaa !28
  %3 = bitcast %struct.jpeg_comp_master* %2 to %struct.my_comp_master*
  store %struct.my_comp_master* %3, %struct.my_comp_master** %master, align 8, !tbaa !1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 74
  %5 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8, !tbaa !57
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %5, i32 0, i32 2
  %finish_pass2 = bitcast {}** %finish_pass to void (%struct.jpeg_compress_struct*)**
  %6 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass2, align 8, !tbaa !76
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %6(%struct.jpeg_compress_struct* %7) #3
  %8 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %8, i32 0, i32 1
  %9 = load i32, i32* %pass_type, align 4, !tbaa !40
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type3 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 1
  store i32 2, i32* %pass_type3, align 4, !tbaa !40
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 31
  %12 = load i32, i32* %optimize_coding, align 4, !tbaa !38
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %13, i32 0, i32 4
  %14 = load i32, i32* %scan_number, align 4, !tbaa !41
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %scan_number, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type5 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %15, i32 0, i32 1
  store i32 2, i32* %pass_type5, align 4, !tbaa !40
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %optimize_coding7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 31
  %17 = load i32, i32* %optimize_coding7, align 4, !tbaa !38
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %sw.bb.6
  %18 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_type10 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %18, i32 0, i32 1
  store i32 1, i32* %pass_type10, align 4, !tbaa !40
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %sw.bb.6
  %19 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %scan_number12 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %19, i32 0, i32 4
  %20 = load i32, i32* %scan_number12, align 4, !tbaa !41
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %scan_number12, align 4, !tbaa !41
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.11, %sw.bb.4, %if.end
  %21 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %21, i32 0, i32 2
  %22 = load i32, i32* %pass_number, align 4, !tbaa !42
  %inc14 = add nsw i32 %22, 1
  store i32 %inc14, i32* %pass_number, align 4, !tbaa !42
  %23 = bitcast %struct.my_comp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initial_setup(%struct.jpeg_compress_struct* %cinfo, i32 %transcode_only) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %transcode_only.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %ssize = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %transcode_only, i32* %transcode_only.addr, align 4, !tbaa !24
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %transcode_only.addr, align 4, !tbaa !24
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_calc_trans_dimensions(%struct.jpeg_compress_struct* %4) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_calc_jpeg_dimensions(%struct.jpeg_compress_struct* %5) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 63
  %7 = load i32, i32* %block_size, align 4, !tbaa !19
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 63
  %9 = load i32, i32* %block_size1, align 4, !tbaa !19
  %cmp2 = icmp sgt i32 %9, 16
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 7, i32* %msg_code, align 4, !tbaa !12
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 63
  %13 = load i32, i32* %block_size4, align 4, !tbaa !19
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %13, i32* %arrayidx, align 4, !tbaa !15
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 63
  %17 = load i32, i32* %block_size6, align 4, !tbaa !19
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !11
  %msg_parm8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i9 = bitcast %union.anon* %msg_parm8 to [8 x i32]*
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %i9, i32 0, i64 1
  store i32 %17, i32* %arrayidx10, align 4, !tbaa !15
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.3, %lor.lhs.false
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 63
  %26 = load i32, i32* %block_size13, align 4, !tbaa !19
  switch i32 %26, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.18
    i32 6, label %sw.bb.20
    i32 7, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.12
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order2, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.12
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order3, i32 0, i32 0), i32** %natural_order15, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.12
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order4, i32 0, i32 0), i32** %natural_order17, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.12
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order5, i32 0, i32 0), i32** %natural_order19, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.12
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order6, i32 0, i32 0), i32** %natural_order21, align 8, !tbaa !77
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.12
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order7, i32 0, i32 0), i32** %natural_order23, align 8, !tbaa !77
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 64
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order24, align 8, !tbaa !77
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 63
  %35 = load i32, i32* %block_size25, align 4, !tbaa !19
  %cmp26 = icmp slt i32 %35, 8
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 63
  %37 = load i32, i32* %block_size27, align 4, !tbaa !19
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 63
  %39 = load i32, i32* %block_size28, align 4, !tbaa !19
  %mul = mul nsw i32 %37, %39
  %sub = sub nsw i32 %mul, 1
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 63, %cond.false ]
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 65
  store i32 %cond, i32* %lim_Se, align 4, !tbaa !78
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 15
  %42 = load i32, i32* %jpeg_height, align 4, !tbaa !21
  %cmp29 = icmp ule i32 %42, 0
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %cond.end
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 14
  %44 = load i32, i32* %jpeg_width, align 4, !tbaa !20
  %cmp31 = icmp ule i32 %44, 0
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 17
  %46 = load i32, i32* %num_components, align 4, !tbaa !79
  %cmp33 = icmp sle i32 %46, 0
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.30, %cond.end
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !11
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 33, i32* %msg_code36, align 4, !tbaa !12
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !11
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 0
  %51 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit38, align 8, !tbaa !16
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %53 = bitcast %struct.jpeg_compress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* %53) #3
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %lor.lhs.false.32
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 15
  %55 = load i32, i32* %jpeg_height40, align 4, !tbaa !21
  %conv = zext i32 %55 to i64
  %cmp41 = icmp sgt i64 %conv, 65500
  br i1 %cmp41, label %if.then.48, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.39
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 14
  %57 = load i32, i32* %jpeg_width44, align 4, !tbaa !20
  %conv45 = zext i32 %57 to i64
  %cmp46 = icmp sgt i64 %conv45, 65500
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %lor.lhs.false.43, %if.end.39
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8, !tbaa !11
  %msg_code50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 42, i32* %msg_code50, align 4, !tbaa !12
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err51, align 8, !tbaa !11
  %msg_parm52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 6
  %i53 = bitcast %union.anon* %msg_parm52 to [8 x i32]*
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %i53, i32 0, i64 0
  store i32 65500, i32* %arrayidx54, align 4, !tbaa !15
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8, !tbaa !11
  %error_exit56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit56, align 8, !tbaa !16
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %66 = bitcast %struct.jpeg_compress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* %66) #3
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.48, %lor.lhs.false.43
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 16
  %68 = load i32, i32* %data_precision, align 4, !tbaa !80
  %cmp58 = icmp slt i32 %68, 8
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.57
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 16
  %70 = load i32, i32* %data_precision61, align 4, !tbaa !80
  %cmp62 = icmp sgt i32 %70, 12
  br i1 %cmp62, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %lor.lhs.false.60, %if.end.57
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !11
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 16, i32* %msg_code66, align 4, !tbaa !12
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 16
  %74 = load i32, i32* %data_precision67, align 4, !tbaa !80
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !11
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i70 = bitcast %union.anon* %msg_parm69 to [8 x i32]*
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %i70, i32 0, i64 0
  store i32 %74, i32* %arrayidx71, align 4, !tbaa !15
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !11
  %error_exit73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 0
  %79 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit73, align 8, !tbaa !16
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %81 = bitcast %struct.jpeg_compress_struct* %80 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* %81) #3
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.64, %lor.lhs.false.60
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 17
  %83 = load i32, i32* %num_components75, align 4, !tbaa !79
  %cmp76 = icmp sgt i32 %83, 10
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %if.end.74
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !11
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 5
  store i32 27, i32* %msg_code80, align 4, !tbaa !12
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 17
  %87 = load i32, i32* %num_components81, align 4, !tbaa !79
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err82, align 8, !tbaa !11
  %msg_parm83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 6
  %i84 = bitcast %union.anon* %msg_parm83 to [8 x i32]*
  %arrayidx85 = getelementptr inbounds [8 x i32], [8 x i32]* %i84, i32 0, i64 0
  store i32 %87, i32* %arrayidx85, align 4, !tbaa !15
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err86, align 8, !tbaa !11
  %msg_parm87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 6
  %i88 = bitcast %union.anon* %msg_parm87 to [8 x i32]*
  %arrayidx89 = getelementptr inbounds [8 x i32], [8 x i32]* %i88, i32 0, i64 1
  store i32 10, i32* %arrayidx89, align 4, !tbaa !15
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err90, align 8, !tbaa !11
  %error_exit91 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 0
  %94 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit91, align 8, !tbaa !16
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %96 = bitcast %struct.jpeg_compress_struct* %95 to %struct.jpeg_common_struct*
  call void %94(%struct.jpeg_common_struct* %96) #3
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.78, %if.end.74
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 48
  store i32 1, i32* %max_h_samp_factor, align 4, !tbaa !81
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 49
  store i32 1, i32* %max_v_samp_factor, align 4, !tbaa !82
  store i32 0, i32* %ci, align 4, !tbaa !15
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 19
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !83
  store %struct.jpeg_component_info* %100, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.92
  %101 = load i32, i32* %ci, align 4, !tbaa !15
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 17
  %103 = load i32, i32* %num_components93, align 4, !tbaa !79
  %cmp94 = icmp slt i32 %101, %103
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 2
  %105 = load i32, i32* %h_samp_factor, align 4, !tbaa !84
  %cmp96 = icmp sle i32 %105, 0
  br i1 %cmp96, label %if.then.109, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %for.body
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 2
  %107 = load i32, i32* %h_samp_factor99, align 4, !tbaa !84
  %cmp100 = icmp sgt i32 %107, 4
  br i1 %cmp100, label %if.then.109, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.98
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 3
  %109 = load i32, i32* %v_samp_factor, align 4, !tbaa !86
  %cmp103 = icmp sle i32 %109, 0
  br i1 %cmp103, label %if.then.109, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.102
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor106 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 0, i32 3
  %111 = load i32, i32* %v_samp_factor106, align 4, !tbaa !86
  %cmp107 = icmp sgt i32 %111, 4
  br i1 %cmp107, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false.102, %lor.lhs.false.98, %for.body
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8, !tbaa !11
  %msg_code111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 5
  store i32 19, i32* %msg_code111, align 4, !tbaa !12
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8, !tbaa !11
  %error_exit113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 0
  %116 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit113, align 8, !tbaa !16
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %118 = bitcast %struct.jpeg_compress_struct* %117 to %struct.jpeg_common_struct*
  call void %116(%struct.jpeg_common_struct* %118) #3
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %lor.lhs.false.105
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 48
  %120 = load i32, i32* %max_h_samp_factor115, align 4, !tbaa !81
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 0, i32 2
  %122 = load i32, i32* %h_samp_factor116, align 4, !tbaa !84
  %cmp117 = icmp sgt i32 %120, %122
  br i1 %cmp117, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %if.end.114
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 48
  %124 = load i32, i32* %max_h_samp_factor120, align 4, !tbaa !81
  br label %cond.end.123

cond.false.121:                                   ; preds = %if.end.114
  %125 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor122 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %125, i32 0, i32 2
  %126 = load i32, i32* %h_samp_factor122, align 4, !tbaa !84
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.119
  %cond124 = phi i32 [ %124, %cond.true.119 ], [ %126, %cond.false.121 ]
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 48
  store i32 %cond124, i32* %max_h_samp_factor125, align 4, !tbaa !81
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 49
  %129 = load i32, i32* %max_v_samp_factor126, align 4, !tbaa !82
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 0, i32 3
  %131 = load i32, i32* %v_samp_factor127, align 4, !tbaa !86
  %cmp128 = icmp sgt i32 %129, %131
  br i1 %cmp128, label %cond.true.130, label %cond.false.132

cond.true.130:                                    ; preds = %cond.end.123
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 49
  %133 = load i32, i32* %max_v_samp_factor131, align 4, !tbaa !82
  br label %cond.end.134

cond.false.132:                                   ; preds = %cond.end.123
  %134 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor133 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %134, i32 0, i32 3
  %135 = load i32, i32* %v_samp_factor133, align 4, !tbaa !86
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.true.130
  %cond135 = phi i32 [ %133, %cond.true.130 ], [ %135, %cond.false.132 ]
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %136, i32 0, i32 49
  store i32 %cond135, i32* %max_v_samp_factor136, align 4, !tbaa !82
  br label %for.inc

for.inc:                                          ; preds = %cond.end.134
  %137 = load i32, i32* %ci, align 4, !tbaa !15
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !15
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4, !tbaa !15
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 19
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info137, align 8, !tbaa !83
  store %struct.jpeg_component_info* %140, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.246, %for.end
  %141 = load i32, i32* %ci, align 4, !tbaa !15
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 17
  %143 = load i32, i32* %num_components139, align 4, !tbaa !79
  %cmp140 = icmp slt i32 %141, %143
  br i1 %cmp140, label %for.body.142, label %for.end.249

for.body.142:                                     ; preds = %for.cond.138
  %144 = load i32, i32* %ci, align 4, !tbaa !15
  %145 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %145, i32 0, i32 1
  store i32 %144, i32* %component_index, align 4, !tbaa !87
  store i32 1, i32* %ssize, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.142
  %146 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %146, i32 0, i32 50
  %147 = load i32, i32* %min_DCT_h_scaled_size, align 4, !tbaa !22
  %148 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul143 = mul nsw i32 %147, %148
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %do_fancy_downsampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 33
  %150 = load i32, i32* %do_fancy_downsampling, align 4, !tbaa !88
  %tobool144 = icmp ne i32 %150, 0
  %cond145 = select i1 %tobool144, i32 8, i32 4
  %cmp146 = icmp sle i32 %mul143, %cond145
  br i1 %cmp146, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %151 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor148 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %151, i32 0, i32 48
  %152 = load i32, i32* %max_h_samp_factor148, align 4, !tbaa !81
  %153 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %153, i32 0, i32 2
  %154 = load i32, i32* %h_samp_factor149, align 4, !tbaa !84
  %155 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul150 = mul nsw i32 %154, %155
  %mul151 = mul nsw i32 %mul150, 2
  %rem = srem i32 %152, %mul151
  %cmp152 = icmp eq i32 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %156 = phi i1 [ false, %while.cond ], [ %cmp152, %land.rhs ]
  br i1 %156, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %157 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul154 = mul nsw i32 %157, 2
  store i32 %mul154, i32* %ssize, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %land.end
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size155 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %158, i32 0, i32 50
  %159 = load i32, i32* %min_DCT_h_scaled_size155, align 4, !tbaa !22
  %160 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul156 = mul nsw i32 %159, %160
  %161 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %161, i32 0, i32 9
  store i32 %mul156, i32* %DCT_h_scaled_size, align 4, !tbaa !89
  store i32 1, i32* %ssize, align 4, !tbaa !15
  br label %while.cond.157

while.cond.157:                                   ; preds = %while.body.173, %while.end
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 51
  %163 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !23
  %164 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul158 = mul nsw i32 %163, %164
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %do_fancy_downsampling159 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 33
  %166 = load i32, i32* %do_fancy_downsampling159, align 4, !tbaa !88
  %tobool160 = icmp ne i32 %166, 0
  %cond161 = select i1 %tobool160, i32 8, i32 4
  %cmp162 = icmp sle i32 %mul158, %cond161
  br i1 %cmp162, label %land.rhs.164, label %land.end.172

land.rhs.164:                                     ; preds = %while.cond.157
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 49
  %168 = load i32, i32* %max_v_samp_factor165, align 4, !tbaa !82
  %169 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor166 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %169, i32 0, i32 3
  %170 = load i32, i32* %v_samp_factor166, align 4, !tbaa !86
  %171 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul167 = mul nsw i32 %170, %171
  %mul168 = mul nsw i32 %mul167, 2
  %rem169 = srem i32 %168, %mul168
  %cmp170 = icmp eq i32 %rem169, 0
  br label %land.end.172

land.end.172:                                     ; preds = %land.rhs.164, %while.cond.157
  %172 = phi i1 [ false, %while.cond.157 ], [ %cmp170, %land.rhs.164 ]
  br i1 %172, label %while.body.173, label %while.end.175

while.body.173:                                   ; preds = %land.end.172
  %173 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul174 = mul nsw i32 %173, 2
  store i32 %mul174, i32* %ssize, align 4, !tbaa !15
  br label %while.cond.157

while.end.175:                                    ; preds = %land.end.172
  %174 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %174, i32 0, i32 51
  %175 = load i32, i32* %min_DCT_v_scaled_size176, align 4, !tbaa !23
  %176 = load i32, i32* %ssize, align 4, !tbaa !15
  %mul177 = mul nsw i32 %175, %176
  %177 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %177, i32 0, i32 10
  store i32 %mul177, i32* %DCT_v_scaled_size, align 4, !tbaa !90
  %178 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size178 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %178, i32 0, i32 9
  %179 = load i32, i32* %DCT_h_scaled_size178, align 4, !tbaa !89
  %180 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size179 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %180, i32 0, i32 10
  %181 = load i32, i32* %DCT_v_scaled_size179, align 4, !tbaa !90
  %mul180 = mul nsw i32 %181, 2
  %cmp181 = icmp sgt i32 %179, %mul180
  br i1 %cmp181, label %if.then.183, label %if.else.187

if.then.183:                                      ; preds = %while.end.175
  %182 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size184 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %182, i32 0, i32 10
  %183 = load i32, i32* %DCT_v_scaled_size184, align 4, !tbaa !90
  %mul185 = mul nsw i32 %183, 2
  %184 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %184, i32 0, i32 9
  store i32 %mul185, i32* %DCT_h_scaled_size186, align 4, !tbaa !89
  br label %if.end.198

if.else.187:                                      ; preds = %while.end.175
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size188 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i32 0, i32 10
  %186 = load i32, i32* %DCT_v_scaled_size188, align 4, !tbaa !90
  %187 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size189 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %187, i32 0, i32 9
  %188 = load i32, i32* %DCT_h_scaled_size189, align 4, !tbaa !89
  %mul190 = mul nsw i32 %188, 2
  %cmp191 = icmp sgt i32 %186, %mul190
  br i1 %cmp191, label %if.then.193, label %if.end.197

if.then.193:                                      ; preds = %if.else.187
  %189 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size194 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %189, i32 0, i32 9
  %190 = load i32, i32* %DCT_h_scaled_size194, align 4, !tbaa !89
  %mul195 = mul nsw i32 %190, 2
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i32 0, i32 10
  store i32 %mul195, i32* %DCT_v_scaled_size196, align 4, !tbaa !90
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.193, %if.else.187
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.then.183
  %192 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width199 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %192, i32 0, i32 14
  %193 = load i32, i32* %jpeg_width199, align 4, !tbaa !20
  %conv200 = zext i32 %193 to i64
  %194 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor201 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %194, i32 0, i32 2
  %195 = load i32, i32* %h_samp_factor201, align 4, !tbaa !84
  %conv202 = sext i32 %195 to i64
  %mul203 = mul nsw i64 %conv200, %conv202
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 48
  %197 = load i32, i32* %max_h_samp_factor204, align 4, !tbaa !81
  %198 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size205 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %198, i32 0, i32 63
  %199 = load i32, i32* %block_size205, align 4, !tbaa !19
  %mul206 = mul nsw i32 %197, %199
  %conv207 = sext i32 %mul206 to i64
  %call = call i64 @jdiv_round_up(i64 %mul203, i64 %conv207) #3
  %conv208 = trunc i64 %call to i32
  %200 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %200, i32 0, i32 7
  store i32 %conv208, i32* %width_in_blocks, align 4, !tbaa !91
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height209 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 15
  %202 = load i32, i32* %jpeg_height209, align 4, !tbaa !21
  %conv210 = zext i32 %202 to i64
  %203 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor211 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %203, i32 0, i32 3
  %204 = load i32, i32* %v_samp_factor211, align 4, !tbaa !86
  %conv212 = sext i32 %204 to i64
  %mul213 = mul nsw i64 %conv210, %conv212
  %205 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor214 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %205, i32 0, i32 49
  %206 = load i32, i32* %max_v_samp_factor214, align 4, !tbaa !82
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 63
  %208 = load i32, i32* %block_size215, align 4, !tbaa !19
  %mul216 = mul nsw i32 %206, %208
  %conv217 = sext i32 %mul216 to i64
  %call218 = call i64 @jdiv_round_up(i64 %mul213, i64 %conv217) #3
  %conv219 = trunc i64 %call218 to i32
  %209 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %209, i32 0, i32 8
  store i32 %conv219, i32* %height_in_blocks, align 4, !tbaa !92
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 14
  %211 = load i32, i32* %jpeg_width220, align 4, !tbaa !20
  %conv221 = zext i32 %211 to i64
  %212 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor222 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %212, i32 0, i32 2
  %213 = load i32, i32* %h_samp_factor222, align 4, !tbaa !84
  %214 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size223 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %214, i32 0, i32 9
  %215 = load i32, i32* %DCT_h_scaled_size223, align 4, !tbaa !89
  %mul224 = mul nsw i32 %213, %215
  %conv225 = sext i32 %mul224 to i64
  %mul226 = mul nsw i64 %conv221, %conv225
  %216 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor227 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %216, i32 0, i32 48
  %217 = load i32, i32* %max_h_samp_factor227, align 4, !tbaa !81
  %218 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size228 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %218, i32 0, i32 63
  %219 = load i32, i32* %block_size228, align 4, !tbaa !19
  %mul229 = mul nsw i32 %217, %219
  %conv230 = sext i32 %mul229 to i64
  %call231 = call i64 @jdiv_round_up(i64 %mul226, i64 %conv230) #3
  %conv232 = trunc i64 %call231 to i32
  %220 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %220, i32 0, i32 11
  store i32 %conv232, i32* %downsampled_width, align 4, !tbaa !93
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height233 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 15
  %222 = load i32, i32* %jpeg_height233, align 4, !tbaa !21
  %conv234 = zext i32 %222 to i64
  %223 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor235 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %223, i32 0, i32 3
  %224 = load i32, i32* %v_samp_factor235, align 4, !tbaa !86
  %225 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size236 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %225, i32 0, i32 10
  %226 = load i32, i32* %DCT_v_scaled_size236, align 4, !tbaa !90
  %mul237 = mul nsw i32 %224, %226
  %conv238 = sext i32 %mul237 to i64
  %mul239 = mul nsw i64 %conv234, %conv238
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor240 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 49
  %228 = load i32, i32* %max_v_samp_factor240, align 4, !tbaa !82
  %229 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size241 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %229, i32 0, i32 63
  %230 = load i32, i32* %block_size241, align 4, !tbaa !19
  %mul242 = mul nsw i32 %228, %230
  %conv243 = sext i32 %mul242 to i64
  %call244 = call i64 @jdiv_round_up(i64 %mul239, i64 %conv243) #3
  %conv245 = trunc i64 %call244 to i32
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 12
  store i32 %conv245, i32* %downsampled_height, align 4, !tbaa !94
  %232 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %232, i32 0, i32 13
  store i32 0, i32* %component_needed, align 4, !tbaa !95
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.198
  %233 = load i32, i32* %ci, align 4, !tbaa !15
  %inc247 = add nsw i32 %233, 1
  store i32 %inc247, i32* %ci, align 4, !tbaa !15
  %234 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr248 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %234, i32 1
  store %struct.jpeg_component_info* %incdec.ptr248, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.138

for.end.249:                                      ; preds = %for.cond.138
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height250 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %235, i32 0, i32 15
  %236 = load i32, i32* %jpeg_height250, align 4, !tbaa !21
  %conv251 = zext i32 %236 to i64
  %237 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor252 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %237, i32 0, i32 49
  %238 = load i32, i32* %max_v_samp_factor252, align 4, !tbaa !82
  %239 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size253 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %239, i32 0, i32 63
  %240 = load i32, i32* %block_size253, align 4, !tbaa !19
  %mul254 = mul nsw i32 %238, %240
  %conv255 = sext i32 %mul254 to i64
  %call256 = call i64 @jdiv_round_up(i64 %conv251, i64 %conv255) #3
  %conv257 = trunc i64 %call256 to i32
  %241 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %241, i32 0, i32 52
  store i32 %conv257, i32* %total_iMCU_rows, align 4, !tbaa !96
  %242 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  %243 = bitcast i32* %ssize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #2
  %244 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @select_scan_parameters(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 17
  %2 = load i32, i32* %num_components, align 4, !tbaa !79
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 27, i32* %msg_code, align 4, !tbaa !12
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 17
  %6 = load i32, i32* %num_components1, align 4, !tbaa !79
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !15
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %msg_parm4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i5 = bitcast %union.anon* %msg_parm4 to [8 x i32]*
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %i5, i32 0, i64 1
  store i32 4, i32* %arrayidx6, align 4, !tbaa !15
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 17
  %17 = load i32, i32* %num_components8, align 4, !tbaa !79
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 53
  store i32 %17, i32* %comps_in_scan, align 4, !tbaa !97
  store i32 0, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %ci, align 4, !tbaa !15
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 17
  %21 = load i32, i32* %num_components9, align 4, !tbaa !79
  %cmp10 = icmp slt i32 %19, %21
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 19
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !83
  %arrayidx11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i64 %idxprom
  %25 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 54
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom12
  store %struct.jpeg_component_info* %arrayidx11, %struct.jpeg_component_info** %arrayidx13, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %ci, align 4, !tbaa !15
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 59
  store i32 0, i32* %Ss, align 4, !tbaa !98
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 63
  %30 = load i32, i32* %block_size, align 4, !tbaa !19
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 63
  %32 = load i32, i32* %block_size14, align 4, !tbaa !19
  %mul = mul nsw i32 %30, %32
  %sub = sub nsw i32 %mul, 1
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 60
  store i32 %sub, i32* %Se, align 4, !tbaa !99
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 61
  store i32 0, i32* %Ah, align 4, !tbaa !100
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 62
  store i32 0, i32* %Al, align 4, !tbaa !101
  %36 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %nominal = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 53
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !97
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 54
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %7, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 7
  %9 = load i32, i32* %width_in_blocks, align 4, !tbaa !91
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 55
  store i32 %9, i32* %MCUs_per_row, align 4, !tbaa !102
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 8
  %12 = load i32, i32* %height_in_blocks, align 4, !tbaa !92
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 56
  store i32 %12, i32* %MCU_rows_in_scan, align 4, !tbaa !103
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 14
  store i32 1, i32* %MCU_width, align 4, !tbaa !104
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 15
  store i32 1, i32* %MCU_height, align 4, !tbaa !105
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 16
  store i32 1, i32* %MCU_blocks, align 4, !tbaa !106
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 9
  %18 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !89
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 17
  store i32 %18, i32* %MCU_sample_width, align 4, !tbaa !107
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 18
  store i32 1, i32* %last_col_width, align 4, !tbaa !108
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 8
  %22 = load i32, i32* %height_in_blocks2, align 4, !tbaa !92
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 3
  %24 = load i32, i32* %v_samp_factor, align 4, !tbaa !86
  %rem = urem i32 %22, %24
  store i32 %rem, i32* %tmp, align 4, !tbaa !15
  %25 = load i32, i32* %tmp, align 4, !tbaa !15
  %cmp3 = icmp eq i32 %25, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 3
  %27 = load i32, i32* %v_samp_factor5, align 4, !tbaa !86
  store i32 %27, i32* %tmp, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %28 = load i32, i32* %tmp, align 4, !tbaa !15
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 19
  store i32 %28, i32* %last_row_height, align 4, !tbaa !109
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 57
  store i32 1, i32* %blocks_in_MCU, align 4, !tbaa !110
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 58
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4, !tbaa !15
  br label %if.end.83

if.else:                                          ; preds = %entry
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 53
  %33 = load i32, i32* %comps_in_scan7, align 4, !tbaa !97
  %cmp8 = icmp sle i32 %33, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 53
  %35 = load i32, i32* %comps_in_scan9, align 4, !tbaa !97
  %cmp10 = icmp sgt i32 %35, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 27, i32* %msg_code, align 4, !tbaa !12
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 53
  %39 = load i32, i32* %comps_in_scan12, align 4, !tbaa !97
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %39, i32* %arrayidx14, align 4, !tbaa !15
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !11
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4, !tbaa !15
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %48 = bitcast %struct.jpeg_compress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48) #3
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 14
  %50 = load i32, i32* %jpeg_width, align 4, !tbaa !20
  %conv = zext i32 %50 to i64
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 48
  %52 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !81
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 63
  %54 = load i32, i32* %block_size, align 4, !tbaa !19
  %mul = mul nsw i32 %52, %54
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21) #3
  %conv22 = trunc i64 %call to i32
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 55
  store i32 %conv22, i32* %MCUs_per_row23, align 4, !tbaa !102
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 15
  %57 = load i32, i32* %jpeg_height, align 4, !tbaa !21
  %conv24 = zext i32 %57 to i64
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 49
  %59 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !82
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 63
  %61 = load i32, i32* %block_size25, align 4, !tbaa !19
  %mul26 = mul nsw i32 %59, %61
  %conv27 = sext i32 %mul26 to i64
  %call28 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv27) #3
  %conv29 = trunc i64 %call28 to i32
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_rows_in_scan30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 56
  store i32 %conv29, i32* %MCU_rows_in_scan30, align 4, !tbaa !103
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 57
  store i32 0, i32* %blocks_in_MCU31, align 4, !tbaa !110
  store i32 0, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %64 = load i32, i32* %ci, align 4, !tbaa !15
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 53
  %66 = load i32, i32* %comps_in_scan32, align 4, !tbaa !97
  %cmp33 = icmp slt i32 %64, %66
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i32, i32* %ci, align 4, !tbaa !15
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 54
  %arrayidx36 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info35, i32 0, i64 %idxprom
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx36, align 8, !tbaa !1
  store %struct.jpeg_component_info* %69, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 2
  %71 = load i32, i32* %h_samp_factor, align 4, !tbaa !84
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 14
  store i32 %71, i32* %MCU_width37, align 4, !tbaa !104
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 3
  %74 = load i32, i32* %v_samp_factor38, align 4, !tbaa !86
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i32 0, i32 15
  store i32 %74, i32* %MCU_height39, align 4, !tbaa !105
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 14
  %77 = load i32, i32* %MCU_width40, align 4, !tbaa !104
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 15
  %79 = load i32, i32* %MCU_height41, align 4, !tbaa !105
  %mul42 = mul nsw i32 %77, %79
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 16
  store i32 %mul42, i32* %MCU_blocks43, align 4, !tbaa !106
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 14
  %82 = load i32, i32* %MCU_width44, align 4, !tbaa !104
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 9
  %84 = load i32, i32* %DCT_h_scaled_size45, align 4, !tbaa !89
  %mul46 = mul nsw i32 %82, %84
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 17
  store i32 %mul46, i32* %MCU_sample_width47, align 4, !tbaa !107
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 7
  %87 = load i32, i32* %width_in_blocks48, align 4, !tbaa !91
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 14
  %89 = load i32, i32* %MCU_width49, align 4, !tbaa !104
  %rem50 = urem i32 %87, %89
  store i32 %rem50, i32* %tmp, align 4, !tbaa !15
  %90 = load i32, i32* %tmp, align 4, !tbaa !15
  %cmp51 = icmp eq i32 %90, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %for.body
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 14
  %92 = load i32, i32* %MCU_width54, align 4, !tbaa !104
  store i32 %92, i32* %tmp, align 4, !tbaa !15
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %for.body
  %93 = load i32, i32* %tmp, align 4, !tbaa !15
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 18
  store i32 %93, i32* %last_col_width56, align 4, !tbaa !108
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 8
  %96 = load i32, i32* %height_in_blocks57, align 4, !tbaa !92
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 15
  %98 = load i32, i32* %MCU_height58, align 4, !tbaa !105
  %rem59 = urem i32 %96, %98
  store i32 %rem59, i32* %tmp, align 4, !tbaa !15
  %99 = load i32, i32* %tmp, align 4, !tbaa !15
  %cmp60 = icmp eq i32 %99, 0
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.55
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 0, i32 15
  %101 = load i32, i32* %MCU_height63, align 4, !tbaa !105
  store i32 %101, i32* %tmp, align 4, !tbaa !15
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.55
  %102 = load i32, i32* %tmp, align 4, !tbaa !15
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 19
  store i32 %102, i32* %last_row_height65, align 4, !tbaa !109
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 16
  %105 = load i32, i32* %MCU_blocks66, align 4, !tbaa !106
  store i32 %105, i32* %mcublks, align 4, !tbaa !15
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 57
  %107 = load i32, i32* %blocks_in_MCU67, align 4, !tbaa !110
  %108 = load i32, i32* %mcublks, align 4, !tbaa !15
  %add = add nsw i32 %107, %108
  %cmp68 = icmp sgt i32 %add, 10
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.64
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !11
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 5
  store i32 14, i32* %msg_code72, align 4, !tbaa !12
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8, !tbaa !11
  %error_exit74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 0
  %113 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit74, align 8, !tbaa !16
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %115 = bitcast %struct.jpeg_compress_struct* %114 to %struct.jpeg_common_struct*
  call void %113(%struct.jpeg_common_struct* %115) #3
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.75
  %116 = load i32, i32* %mcublks, align 4, !tbaa !15
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %mcublks, align 4, !tbaa !15
  %cmp76 = icmp sgt i32 %116, 0
  br i1 %cmp76, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %117 = load i32, i32* %ci, align 4, !tbaa !15
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 57
  %119 = load i32, i32* %blocks_in_MCU78, align 4, !tbaa !110
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %blocks_in_MCU78, align 4, !tbaa !110
  %idxprom79 = sext i32 %119 to i64
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 58
  %arrayidx81 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership80, i32 0, i64 %idxprom79
  store i32 %117, i32* %arrayidx81, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %121 = load i32, i32* %ci, align 4, !tbaa !15
  %inc82 = add nsw i32 %121, 1
  store i32 %inc82, i32* %ci, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %if.end
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %122, i32 0, i32 37
  %123 = load i32, i32* %restart_in_rows, align 4, !tbaa !111
  %cmp84 = icmp sgt i32 %123, 0
  br i1 %cmp84, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %if.end.83
  %124 = bitcast i64* %nominal to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #2
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_in_rows88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 37
  %126 = load i32, i32* %restart_in_rows88, align 4, !tbaa !111
  %conv89 = sext i32 %126 to i64
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 55
  %128 = load i32, i32* %MCUs_per_row90, align 4, !tbaa !102
  %conv91 = zext i32 %128 to i64
  %mul92 = mul nsw i64 %conv89, %conv91
  store i64 %mul92, i64* %nominal, align 8, !tbaa !112
  %129 = load i64, i64* %nominal, align 8, !tbaa !112
  %cmp93 = icmp slt i64 %129, 65535
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.86
  %130 = load i64, i64* %nominal, align 8, !tbaa !112
  br label %cond.end

cond.false:                                       ; preds = %if.then.86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %130, %cond.true ], [ 65535, %cond.false ]
  %conv95 = trunc i64 %cond to i32
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 36
  store i32 %conv95, i32* %restart_interval, align 4, !tbaa !113
  %132 = bitcast i64* %nominal to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  br label %if.end.96

if.end.96:                                        ; preds = %cond.end, %if.end.83
  %133 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  %134 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jpeg_calc_trans_dimensions(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 50
  %1 = load i32, i32* %min_DCT_h_scaled_size, align 4, !tbaa !22
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 51
  %3 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !23
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 7, i32* %msg_code, align 4, !tbaa !12
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 50
  %7 = load i32, i32* %min_DCT_h_scaled_size1, align 4, !tbaa !22
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !15
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 51
  %11 = load i32, i32* %min_DCT_v_scaled_size3, align 4, !tbaa !23
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %msg_parm5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 6
  %i6 = bitcast %union.anon* %msg_parm5 to [8 x i32]*
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %i6, i32 0, i64 1
  store i32 %11, i32* %arrayidx7, align 4, !tbaa !15
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 50
  %20 = load i32, i32* %min_DCT_h_scaled_size9, align 4, !tbaa !22
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 63
  store i32 %20, i32* %block_size, align 4, !tbaa !19
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 48}
!6 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !8, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !9, i64 332, !9, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!6, !7, i64 52}
!11 = !{!6, !2, i64 0}
!12 = !{!13, !7, i64 40}
!13 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !14, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!14 = !{!"long", !3, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!13, !2, i64 0}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !7, i64 76}
!19 = !{!6, !7, i64 476}
!20 = !{!6, !7, i64 80}
!21 = !{!6, !7, i64 84}
!22 = !{!6, !7, i64 360}
!23 = !{!6, !7, i64 364}
!24 = !{!3, !3, i64 0}
!25 = !{!6, !2, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !14, i64 88, !14, i64 96}
!28 = !{!6, !2, i64 496}
!29 = !{!30, !2, i64 0}
!30 = !{!"", !31, i64 0, !3, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!31 = !{!"jpeg_comp_master", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28}
!32 = !{!30, !2, i64 8}
!33 = !{!30, !2, i64 16}
!34 = !{!30, !3, i64 28}
!35 = !{!6, !2, i64 280}
!36 = !{!6, !3, i64 348}
!37 = !{!6, !7, i64 272}
!38 = !{!6, !3, i64 296}
!39 = !{!6, !3, i64 292}
!40 = !{!30, !3, i64 32}
!41 = !{!30, !7, i64 44}
!42 = !{!30, !7, i64 36}
!43 = !{!30, !7, i64 40}
!44 = !{!6, !3, i64 288}
!45 = !{!6, !2, i64 536}
!46 = !{!47, !2, i64 0}
!47 = !{!"jpeg_color_converter", !2, i64 0, !2, i64 8}
!48 = !{!6, !2, i64 544}
!49 = !{!50, !2, i64 0}
!50 = !{!"jpeg_downsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!51 = !{!6, !2, i64 512}
!52 = !{!53, !2, i64 0}
!53 = !{!"jpeg_c_prep_controller", !2, i64 0, !2, i64 8}
!54 = !{!6, !2, i64 552}
!55 = !{!56, !2, i64 0}
!56 = !{!"jpeg_forward_dct", !2, i64 0, !3, i64 8}
!57 = !{!6, !2, i64 560}
!58 = !{!59, !2, i64 0}
!59 = !{!"jpeg_entropy_encoder", !2, i64 0, !2, i64 8, !2, i64 16}
!60 = !{!6, !2, i64 520}
!61 = !{!62, !2, i64 0}
!62 = !{!"jpeg_c_coef_controller", !2, i64 0, !2, i64 8}
!63 = !{!6, !2, i64 504}
!64 = !{!65, !2, i64 0}
!65 = !{!"jpeg_c_main_controller", !2, i64 0, !2, i64 8}
!66 = !{!30, !3, i64 24}
!67 = !{!6, !2, i64 528}
!68 = !{!69, !2, i64 8}
!69 = !{!"jpeg_marker_writer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!70 = !{!69, !2, i64 16}
!71 = !{!6, !2, i64 16}
!72 = !{!73, !7, i64 24}
!73 = !{!"jpeg_progress_mgr", !2, i64 0, !14, i64 8, !14, i64 16, !7, i64 24, !7, i64 28}
!74 = !{!73, !7, i64 28}
!75 = !{!31, !3, i64 24}
!76 = !{!59, !2, i64 16}
!77 = !{!6, !2, i64 480}
!78 = !{!6, !7, i64 488}
!79 = !{!6, !7, i64 92}
!80 = !{!6, !7, i64 88}
!81 = !{!6, !7, i64 352}
!82 = !{!6, !7, i64 356}
!83 = !{!6, !2, i64 104}
!84 = !{!85, !7, i64 8}
!85 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!86 = !{!85, !7, i64 12}
!87 = !{!85, !7, i64 4}
!88 = !{!6, !3, i64 304}
!89 = !{!85, !7, i64 36}
!90 = !{!85, !7, i64 40}
!91 = !{!85, !7, i64 28}
!92 = !{!85, !7, i64 32}
!93 = !{!85, !7, i64 44}
!94 = !{!85, !7, i64 48}
!95 = !{!85, !3, i64 52}
!96 = !{!6, !7, i64 368}
!97 = !{!6, !7, i64 372}
!98 = !{!6, !7, i64 460}
!99 = !{!6, !7, i64 464}
!100 = !{!6, !7, i64 468}
!101 = !{!6, !7, i64 472}
!102 = !{!6, !7, i64 408}
!103 = !{!6, !7, i64 412}
!104 = !{!85, !7, i64 56}
!105 = !{!85, !7, i64 60}
!106 = !{!85, !7, i64 64}
!107 = !{!85, !7, i64 68}
!108 = !{!85, !7, i64 72}
!109 = !{!85, !7, i64 76}
!110 = !{!6, !7, i64 416}
!111 = !{!6, !7, i64 320}
!112 = !{!14, !14, i64 0}
!113 = !{!6, !7, i64 316}
