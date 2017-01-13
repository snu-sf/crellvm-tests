; ModuleID = './jdcoefct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [64 x [64 x i16]*], [10 x %struct.jvirt_barray_control*] }

; Function Attrs: nounwind uwtable
define void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %ci = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 648) #4
  %6 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %6, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %8 = bitcast %struct.my_coef_controller* %7 to %struct.jpeg_d_coef_controller*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 85
  store %struct.jpeg_d_coef_controller* %8, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !14
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass, align 8, !tbaa !15
  %11 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %11, i32 0, i32 0
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub2, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @start_output_pass, void (%struct.jpeg_decompress_struct*)** %start_output_pass, align 8, !tbaa !18
  %12 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32 0, i32* %ci, align 4, !tbaa !19
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 44
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !20
  store %struct.jpeg_component_info* %17, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %ci, align 4, !tbaa !19
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 9
  %20 = load i32, i32* %num_components, align 4, !tbaa !21
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 3
  %22 = load i32, i32* %v_samp_factor, align 4, !tbaa !22
  store i32 %22, i32* %access_rows, align 4, !tbaa !19
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 1
  %24 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !6
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %24, i32 0, i32 5
  %25 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8, !tbaa !24
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 7
  %29 = load i32, i32* %width_in_blocks, align 4, !tbaa !25
  %conv = zext i32 %29 to i64
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 2
  %31 = load i32, i32* %h_samp_factor, align 4, !tbaa !26
  %conv4 = sext i32 %31 to i64
  %call5 = call i64 @jround_up(i64 %conv, i64 %conv4) #4
  %conv6 = trunc i64 %call5 to i32
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 8
  %33 = load i32, i32* %height_in_blocks, align 4, !tbaa !27
  %conv7 = zext i32 %33 to i64
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor8 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 3
  %35 = load i32, i32* %v_samp_factor8, align 4, !tbaa !22
  %conv9 = sext i32 %35 to i64
  %call10 = call i64 @jround_up(i64 %conv7, i64 %conv9) #4
  %conv11 = trunc i64 %call10 to i32
  %36 = load i32, i32* %access_rows, align 4, !tbaa !19
  %call12 = call %struct.jvirt_barray_control* %25(%struct.jpeg_common_struct* %27, i32 1, i32 1, i32 %conv6, i32 %conv11, i32 %36) #4
  %37 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %38, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  store %struct.jvirt_barray_control* %call12, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %ci, align 4, !tbaa !19
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !19
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub13 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %41, i32 0, i32 0
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub13, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8, !tbaa !28
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub14 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub14, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8, !tbaa !29
  %43 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image15 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %43, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image15, i32 0, i32 0
  %44 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %44, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub16, i32 0, i32 4
  store %struct.jvirt_barray_control** %arraydecay, %struct.jvirt_barray_control*** %coef_arrays, align 8, !tbaa !30
  %45 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %access_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %if.end.38

if.else:                                          ; preds = %entry
  %48 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 1
  %51 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem17, align 8, !tbaa !6
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %51, i32 0, i32 1
  %52 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !31
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %54 = bitcast %struct.jpeg_decompress_struct* %53 to %struct.jpeg_common_struct*
  %call18 = call i8* %52(%struct.jpeg_common_struct* %54, i32 1, i64 8192) #4
  %55 = bitcast i8* %call18 to [64 x i16]*
  store [64 x i16]* %55, [64 x i16]** %buffer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.25, %if.else
  %56 = load i32, i32* %i, align 4, !tbaa !19
  %cmp20 = icmp slt i32 %56, 64
  br i1 %cmp20, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %57 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %57, i64 %idx.ext
  %59 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom23 = sext i32 %59 to i64
  %60 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %60, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom23
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx24, align 8, !tbaa !1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %61 = load i32, i32* %i, align 4, !tbaa !19
  %inc26 = add nsw i32 %61, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !19
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 81
  %63 = load i32, i32* %lim_Se, align 4, !tbaa !32
  %cmp28 = icmp eq i32 %63, 0
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %for.end.27
  %64 = load [64 x i16]*, [64 x i16]** %buffer, align 8, !tbaa !1
  %65 = bitcast [64 x i16]* %64 to i8*
  %call31 = call i8* @memset(i8* %65, i32 0, i64 8192) #5
  br label %if.end

if.end:                                           ; preds = %if.then.30, %for.end.27
  %66 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %66, i32 0, i32 0
  %consume_data33 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub32, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @dummy_consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data33, align 8, !tbaa !28
  %67 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub34 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %67, i32 0, i32 0
  %decompress_data35 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub34, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_onepass, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data35, align 8, !tbaa !29
  %68 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %pub36 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %68, i32 0, i32 0
  %coef_arrays37 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub36, i32 0, i32 4
  store %struct.jvirt_barray_control** null, %struct.jvirt_barray_control*** %coef_arrays37, align 8, !tbaa !30
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [64 x i16]** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %for.end
  %71 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 36
  store i32 0, i32* %input_iMCU_row, align 4, !tbaa !33
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 38
  store i32 0, i32* %output_iMCU_row, align 4, !tbaa !34
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 85
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %11) #1
  %12 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32 0, i32* %ci, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %ci, align 4, !tbaa !19
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 69
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 70
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 8
  %22 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !36
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 1
  %26 = load i32, i32* %component_index, align 4, !tbaa !37
  %idxprom2 = sext i32 %26 to i64
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom2
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx3, align 8, !tbaa !1
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 36
  %30 = load i32, i32* %input_iMCU_row, align 4, !tbaa !33
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 3
  %32 = load i32, i32* %v_samp_factor, align 4, !tbaa !22
  %mul = mul i32 %30, %32
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 3
  %34 = load i32, i32* %v_samp_factor4, align 4, !tbaa !22
  %call = call [64 x i16]** %22(%struct.jpeg_common_struct* %24, %struct.jvirt_barray_control* %28, i32 %mul, i32 %34, i32 1) #4
  %35 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom5 = sext i32 %35 to i64
  %arrayidx6 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom5
  store [64 x i16]** %call, [64 x i16]*** %arrayidx6, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %ci, align 4, !tbaa !19
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %37, i32 0, i32 2
  %38 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !38
  store i32 %38, i32* %yoffset, align 4, !tbaa !19
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.52, %for.end
  %39 = load i32, i32* %yoffset, align 4, !tbaa !19
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 3
  %41 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !39
  %cmp8 = icmp slt i32 %39, %41
  br i1 %cmp8, label %for.body.9, label %for.end.54

for.body.9:                                       ; preds = %for.cond.7
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 1
  %43 = load i32, i32* %MCU_ctr, align 4, !tbaa !40
  store i32 %43, i32* %MCU_col_num, align 4, !tbaa !19
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.body.9
  %44 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 71
  %46 = load i32, i32* %MCUs_per_row, align 4, !tbaa !41
  %cmp11 = icmp ult i32 %44, %46
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %blkn, align 4, !tbaa !19
  store i32 0, i32* %ci, align 4, !tbaa !19
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %for.body.12
  %47 = load i32, i32* %ci, align 4, !tbaa !19
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 69
  %49 = load i32, i32* %comps_in_scan14, align 4, !tbaa !35
  %cmp15 = icmp slt i32 %47, %49
  br i1 %cmp15, label %for.body.16, label %for.end.43

for.body.16:                                      ; preds = %for.cond.13
  %50 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom17 = sext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 70
  %arrayidx19 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info18, i32 0, i64 %idxprom17
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx19, align 8, !tbaa !1
  store %struct.jpeg_component_info* %52, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %53 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 14
  %55 = load i32, i32* %MCU_width, align 4, !tbaa !42
  %mul20 = mul i32 %53, %55
  store i32 %mul20, i32* %start_col, align 4, !tbaa !19
  store i32 0, i32* %yindex, align 4, !tbaa !19
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.38, %for.body.16
  %56 = load i32, i32* %yindex, align 4, !tbaa !19
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 15
  %58 = load i32, i32* %MCU_height, align 4, !tbaa !43
  %cmp22 = icmp slt i32 %56, %58
  br i1 %cmp22, label %for.body.23, label %for.end.40

for.body.23:                                      ; preds = %for.cond.21
  %59 = load i32, i32* %yindex, align 4, !tbaa !19
  %60 = load i32, i32* %yoffset, align 4, !tbaa !19
  %add = add nsw i32 %59, %60
  %idxprom24 = sext i32 %add to i64
  %61 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom25 = sext i32 %61 to i64
  %arrayidx26 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom25
  %62 = load [64 x i16]**, [64 x i16]*** %arrayidx26, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %62, i64 %idxprom24
  %63 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8, !tbaa !1
  %64 = load i32, i32* %start_col, align 4, !tbaa !19
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %63, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  store i32 0, i32* %xindex, align 4, !tbaa !19
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.body.23
  %65 = load i32, i32* %xindex, align 4, !tbaa !19
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 14
  %67 = load i32, i32* %MCU_width29, align 4, !tbaa !42
  %cmp30 = icmp slt i32 %65, %67
  br i1 %cmp30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %68 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %68, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  %69 = load i32, i32* %blkn, align 4, !tbaa !19
  %inc32 = add nsw i32 %69, 1
  store i32 %inc32, i32* %blkn, align 4, !tbaa !19
  %idxprom33 = sext i32 %69 to i64
  %70 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %70, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom33
  store [64 x i16]* %68, [64 x i16]** %arrayidx34, align 8, !tbaa !1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %71 = load i32, i32* %xindex, align 4, !tbaa !19
  %inc36 = add nsw i32 %71, 1
  store i32 %inc36, i32* %xindex, align 4, !tbaa !19
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %72 = load i32, i32* %yindex, align 4, !tbaa !19
  %inc39 = add nsw i32 %72, 1
  store i32 %inc39, i32* %yindex, align 4, !tbaa !19
  br label %for.cond.21

for.end.40:                                       ; preds = %for.cond.21
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %73 = load i32, i32* %ci, align 4, !tbaa !19
  %inc42 = add nsw i32 %73, 1
  store i32 %inc42, i32* %ci, align 4, !tbaa !19
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 89
  %75 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !44
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %75, i32 0, i32 1
  %76 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !45
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %78 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %78, i32 0, i32 4
  %arraydecay = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer44, i32 0, i32 0
  %call45 = call i32 %76(%struct.jpeg_decompress_struct* %77, [64 x i16]** %arraydecay) #4
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.43
  %79 = load i32, i32* %yoffset, align 4, !tbaa !19
  %80 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %80, i32 0, i32 2
  store i32 %79, i32* %MCU_vert_offset46, align 4, !tbaa !38
  %81 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %82 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %82, i32 0, i32 1
  store i32 %81, i32* %MCU_ctr47, align 4, !tbaa !40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end.43
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %83 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %inc49 = add i32 %83, 1
  store i32 %inc49, i32* %MCU_col_num, align 4, !tbaa !19
  br label %for.cond.10

for.end.50:                                       ; preds = %for.cond.10
  %84 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr51 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %84, i32 0, i32 1
  store i32 0, i32* %MCU_ctr51, align 4, !tbaa !40
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.50
  %85 = load i32, i32* %yoffset, align 4, !tbaa !19
  %inc53 = add nsw i32 %85, 1
  store i32 %inc53, i32* %yoffset, align 4, !tbaa !19
  br label %for.cond.7

for.end.54:                                       ; preds = %for.cond.7
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 36
  %87 = load i32, i32* %input_iMCU_row55, align 4, !tbaa !33
  %inc56 = add i32 %87, 1
  store i32 %inc56, i32* %input_iMCU_row55, align 4, !tbaa !33
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 67
  %89 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !47
  %cmp57 = icmp ult i32 %inc56, %89
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.54
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %90) #4
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %for.end.54
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 87
  %92 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !48
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %92, i32 0, i32 3
  %93 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8, !tbaa !49
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %93(%struct.jpeg_decompress_struct* %94) #4
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.58, %if.then
  %95 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [4 x [64 x i16]**]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %97) #1
  %98 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %buffer = alloca [64 x i16]**, align 8
  %buffer_ptr = alloca [64 x i16]*, align 8
  %output_ptr = alloca i8**, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 85
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 67
  %6 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !47
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %last_iMCU_row, align 4, !tbaa !19
  %7 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 35
  %18 = load i32, i32* %input_scan_number, align 4, !tbaa !51
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 37
  %20 = load i32, i32* %output_scan_number, align 4, !tbaa !52
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 35
  %22 = load i32, i32* %input_scan_number2, align 4, !tbaa !51
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 37
  %24 = load i32, i32* %output_scan_number3, align 4, !tbaa !52
  %cmp4 = icmp eq i32 %22, %24
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 36
  %26 = load i32, i32* %input_iMCU_row, align 4, !tbaa !33
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 38
  %28 = load i32, i32* %output_iMCU_row, align 4, !tbaa !34
  %cmp5 = icmp ule i32 %26, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %29 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %30 = phi i1 [ true, %while.cond ], [ %29, %land.end ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 87
  %32 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !48
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %32, i32 0, i32 0
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !53
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %33(%struct.jpeg_decompress_struct* %34) #4
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %ci, align 4, !tbaa !19
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 44
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !20
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %while.end
  %37 = load i32, i32* %ci, align 4, !tbaa !19
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 9
  %39 = load i32, i32* %num_components, align 4, !tbaa !21
  %cmp7 = icmp slt i32 %37, %39
  br i1 %cmp7, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 13
  %41 = load i32, i32* %component_needed, align 4, !tbaa !54
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %for.inc.39

if.end.9:                                         ; preds = %for.body
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 1
  %43 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %43, i32 0, i32 8
  %44 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !36
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  %47 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %48, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %49 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8, !tbaa !1
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 38
  %51 = load i32, i32* %output_iMCU_row10, align 4, !tbaa !34
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 3
  %53 = load i32, i32* %v_samp_factor, align 4, !tbaa !22
  %mul = mul i32 %51, %53
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  %55 = load i32, i32* %v_samp_factor11, align 4, !tbaa !22
  %call12 = call [64 x i16]** %44(%struct.jpeg_common_struct* %46, %struct.jvirt_barray_control* %49, i32 %mul, i32 %55, i32 0) #4
  store [64 x i16]** %call12, [64 x i16]*** %buffer, align 8, !tbaa !1
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 38
  %57 = load i32, i32* %output_iMCU_row13, align 4, !tbaa !34
  %58 = load i32, i32* %last_iMCU_row, align 4, !tbaa !19
  %cmp14 = icmp ult i32 %57, %58
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 3
  %60 = load i32, i32* %v_samp_factor16, align 4, !tbaa !22
  store i32 %60, i32* %block_rows, align 4, !tbaa !19
  br label %if.end.22

if.else:                                          ; preds = %if.end.9
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 8
  %62 = load i32, i32* %height_in_blocks, align 4, !tbaa !27
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 3
  %64 = load i32, i32* %v_samp_factor17, align 4, !tbaa !22
  %rem = urem i32 %62, %64
  store i32 %rem, i32* %block_rows, align 4, !tbaa !19
  %65 = load i32, i32* %block_rows, align 4, !tbaa !19
  %cmp18 = icmp eq i32 %65, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 3
  %67 = load i32, i32* %v_samp_factor20, align 4, !tbaa !22
  store i32 %67, i32* %block_rows, align 4, !tbaa !19
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %68 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom23 = sext i32 %68 to i64
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 90
  %70 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !55
  %inverse_DCT24 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %70, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT24, i32 0, i64 %idxprom23
  %71 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx25, align 8, !tbaa !1
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %71, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !1
  %72 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom26 = sext i32 %72 to i64
  %73 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8**, i8*** %73, i64 %idxprom26
  %74 = load i8**, i8*** %arrayidx27, align 8, !tbaa !1
  store i8** %74, i8*** %output_ptr, align 8, !tbaa !1
  store i32 0, i32* %block_row, align 4, !tbaa !19
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.36, %if.end.22
  %75 = load i32, i32* %block_row, align 4, !tbaa !19
  %76 = load i32, i32* %block_rows, align 4, !tbaa !19
  %cmp29 = icmp slt i32 %75, %76
  br i1 %cmp29, label %for.body.30, label %for.end.38

for.body.30:                                      ; preds = %for.cond.28
  %77 = load i32, i32* %block_row, align 4, !tbaa !19
  %idxprom31 = sext i32 %77 to i64
  %78 = load [64 x i16]**, [64 x i16]*** %buffer, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds [64 x i16]*, [64 x i16]** %78, i64 %idxprom31
  %79 = load [64 x i16]*, [64 x i16]** %arrayidx32, align 8, !tbaa !1
  store [64 x i16]* %79, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  store i32 0, i32* %output_col, align 4, !tbaa !19
  store i32 0, i32* %block_num, align 4, !tbaa !19
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body.30
  %80 = load i32, i32* %block_num, align 4, !tbaa !19
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 7
  %82 = load i32, i32* %width_in_blocks, align 4, !tbaa !25
  %cmp34 = icmp ult i32 %80, %82
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %83 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !1
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %86 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  %87 = bitcast [64 x i16]* %86 to i16*
  %88 = load i8**, i8*** %output_ptr, align 8, !tbaa !1
  %89 = load i32, i32* %output_col, align 4, !tbaa !19
  call void %83(%struct.jpeg_decompress_struct* %84, %struct.jpeg_component_info* %85, i16* %87, i8** %88, i32 %89) #4
  %90 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %90, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8, !tbaa !1
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 9
  %92 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !56
  %93 = load i32, i32* %output_col, align 4, !tbaa !19
  %add = add i32 %93, %92
  store i32 %add, i32* %output_col, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %94 = load i32, i32* %block_num, align 4, !tbaa !19
  %inc = add i32 %94, 1
  store i32 %inc, i32* %block_num, align 4, !tbaa !19
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 10
  %96 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !57
  %97 = load i8**, i8*** %output_ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %96 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %97, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8, !tbaa !1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %98 = load i32, i32* %block_row, align 4, !tbaa !19
  %inc37 = add nsw i32 %98, 1
  store i32 %inc37, i32* %block_row, align 4, !tbaa !19
  br label %for.cond.28

for.end.38:                                       ; preds = %for.cond.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38, %if.then.8
  %99 = load i32, i32* %ci, align 4, !tbaa !19
  %inc40 = add nsw i32 %99, 1
  store i32 %inc40, i32* %ci, align 4, !tbaa !19
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 1
  store %struct.jpeg_component_info* %incdec.ptr41, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 38
  %102 = load i32, i32* %output_iMCU_row43, align 4, !tbaa !34
  %inc44 = add i32 %102, 1
  store i32 %inc44, i32* %output_iMCU_row43, align 4, !tbaa !34
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 67
  %104 = load i32, i32* %total_iMCU_rows45, align 4, !tbaa !47
  %cmp46 = icmp ult i32 %inc44, %104
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end.42
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %for.end.42
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.47, %if.then
  %105 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast [64 x i16]** %buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast [64 x i16]*** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %block_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %block_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %block_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @dummy_consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_onepass(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %useful_width = alloca i32, align 4
  %output_ptr = alloca i8**, align 8
  %start_col = alloca i32, align 4
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 85
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 71
  %7 = load i32, i32* %MCUs_per_row, align 4, !tbaa !41
  %sub = sub i32 %7, 1
  store i32 %sub, i32* %last_MCU_col, align 4, !tbaa !19
  %8 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 67
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !47
  %sub2 = sub i32 %10, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4, !tbaa !19
  %11 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %useful_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %22, i32 0, i32 2
  %23 = load i32, i32* %MCU_vert_offset, align 4, !tbaa !38
  store i32 %23, i32* %yoffset, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %entry
  %24 = load i32, i32* %yoffset, align 4, !tbaa !19
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 3
  %26 = load i32, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !39
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 1
  %28 = load i32, i32* %MCU_ctr, align 4, !tbaa !40
  store i32 %28, i32* %MCU_col_num, align 4, !tbaa !19
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.62, %for.body
  %29 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %30 = load i32, i32* %last_MCU_col, align 4, !tbaa !19
  %cmp4 = icmp ule i32 %29, %30
  br i1 %cmp4, label %for.body.5, label %for.end.64

for.body.5:                                       ; preds = %for.cond.3
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 81
  %32 = load i32, i32* %lim_Se, align 4, !tbaa !32
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %33 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %33, i32 0, i32 4
  %arrayidx = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer, i32 0, i64 0
  %34 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  %35 = bitcast [64 x i16]* %34 to i8*
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 73
  %37 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !58
  %conv = sext i32 %37 to i64
  %mul = mul i64 %conv, 128
  %call = call i8* @memset(i8* %35, i32 0, i64 %mul) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 89
  %39 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !44
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %39, i32 0, i32 1
  %40 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !45
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 4
  %arraydecay = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer6, i32 0, i32 0
  %call7 = call i32 %40(%struct.jpeg_decompress_struct* %41, [64 x i16]** %arraydecay) #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %43 = load i32, i32* %yoffset, align 4, !tbaa !19
  %44 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset10 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %44, i32 0, i32 2
  store i32 %43, i32* %MCU_vert_offset10, align 4, !tbaa !38
  %45 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %46 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr11 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %46, i32 0, i32 1
  store i32 %45, i32* %MCU_ctr11, align 4, !tbaa !40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %blkn, align 4, !tbaa !19
  store i32 0, i32* %ci, align 4, !tbaa !19
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.59, %if.end.12
  %47 = load i32, i32* %ci, align 4, !tbaa !19
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 69
  %49 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp14 = icmp slt i32 %47, %49
  br i1 %cmp14, label %for.body.16, label %for.end.61

for.body.16:                                      ; preds = %for.cond.13
  %50 = load i32, i32* %ci, align 4, !tbaa !19
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 70
  %arrayidx17 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx17, align 8, !tbaa !1
  store %struct.jpeg_component_info* %52, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 13
  %54 = load i32, i32* %component_needed, align 4, !tbaa !54
  %tobool18 = icmp ne i32 %54, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.body.16
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 16
  %56 = load i32, i32* %MCU_blocks, align 4, !tbaa !59
  %57 = load i32, i32* %blkn, align 4, !tbaa !19
  %add = add nsw i32 %57, %56
  store i32 %add, i32* %blkn, align 4, !tbaa !19
  br label %for.inc.59

if.end.20:                                        ; preds = %for.body.16
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 1
  %59 = load i32, i32* %component_index, align 4, !tbaa !37
  %idxprom21 = sext i32 %59 to i64
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 90
  %61 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !55
  %inverse_DCT22 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %61, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT22, i32 0, i64 %idxprom21
  %62 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx23, align 8, !tbaa !1
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %62, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !1
  %63 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %64 = load i32, i32* %last_MCU_col, align 4, !tbaa !19
  %cmp24 = icmp ult i32 %63, %64
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 14
  %66 = load i32, i32* %MCU_width, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 18
  %68 = load i32, i32* %last_col_width, align 4, !tbaa !60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %68, %cond.false ]
  store i32 %cond, i32* %useful_width, align 4, !tbaa !19
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_index26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 1
  %70 = load i32, i32* %component_index26, align 4, !tbaa !37
  %idxprom27 = sext i32 %70 to i64
  %71 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8**, i8*** %71, i64 %idxprom27
  %72 = load i8**, i8*** %arrayidx28, align 8, !tbaa !1
  %73 = load i32, i32* %yoffset, align 4, !tbaa !19
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 10
  %75 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !57
  %mul29 = mul nsw i32 %73, %75
  %idx.ext = sext i32 %mul29 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %72, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8, !tbaa !1
  %76 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 17
  %78 = load i32, i32* %MCU_sample_width, align 4, !tbaa !61
  %mul30 = mul i32 %76, %78
  store i32 %mul30, i32* %start_col, align 4, !tbaa !19
  store i32 0, i32* %yindex, align 4, !tbaa !19
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.56, %cond.end
  %79 = load i32, i32* %yindex, align 4, !tbaa !19
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 15
  %81 = load i32, i32* %MCU_height, align 4, !tbaa !43
  %cmp32 = icmp slt i32 %79, %81
  br i1 %cmp32, label %for.body.34, label %for.end.58

for.body.34:                                      ; preds = %for.cond.31
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 36
  %83 = load i32, i32* %input_iMCU_row, align 4, !tbaa !33
  %84 = load i32, i32* %last_iMCU_row, align 4, !tbaa !19
  %cmp35 = icmp ult i32 %83, %84
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.34
  %85 = load i32, i32* %yoffset, align 4, !tbaa !19
  %86 = load i32, i32* %yindex, align 4, !tbaa !19
  %add37 = add nsw i32 %85, %86
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 19
  %88 = load i32, i32* %last_row_height, align 4, !tbaa !62
  %cmp38 = icmp slt i32 %add37, %88
  br i1 %cmp38, label %if.then.40, label %if.end.50

if.then.40:                                       ; preds = %lor.lhs.false, %for.body.34
  %89 = load i32, i32* %start_col, align 4, !tbaa !19
  store i32 %89, i32* %output_col, align 4, !tbaa !19
  store i32 0, i32* %xindex, align 4, !tbaa !19
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.then.40
  %90 = load i32, i32* %xindex, align 4, !tbaa !19
  %91 = load i32, i32* %useful_width, align 4, !tbaa !19
  %cmp42 = icmp slt i32 %90, %91
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %92 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8, !tbaa !1
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %95 = load i32, i32* %blkn, align 4, !tbaa !19
  %96 = load i32, i32* %xindex, align 4, !tbaa !19
  %add45 = add nsw i32 %95, %96
  %idxprom46 = sext i32 %add45 to i64
  %97 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_buffer47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %97, i32 0, i32 4
  %arrayidx48 = getelementptr inbounds [64 x [64 x i16]*], [64 x [64 x i16]*]* %MCU_buffer47, i32 0, i64 %idxprom46
  %98 = load [64 x i16]*, [64 x i16]** %arrayidx48, align 8, !tbaa !1
  %99 = bitcast [64 x i16]* %98 to i16*
  %100 = load i8**, i8*** %output_ptr, align 8, !tbaa !1
  %101 = load i32, i32* %output_col, align 4, !tbaa !19
  call void %92(%struct.jpeg_decompress_struct* %93, %struct.jpeg_component_info* %94, i16* %99, i8** %100, i32 %101) #4
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i32 0, i32 9
  %103 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !56
  %104 = load i32, i32* %output_col, align 4, !tbaa !19
  %add49 = add i32 %104, %103
  store i32 %add49, i32* %output_col, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body.44
  %105 = load i32, i32* %xindex, align 4, !tbaa !19
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %xindex, align 4, !tbaa !19
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %lor.lhs.false
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 14
  %107 = load i32, i32* %MCU_width51, align 4, !tbaa !42
  %108 = load i32, i32* %blkn, align 4, !tbaa !19
  %add52 = add nsw i32 %108, %107
  store i32 %add52, i32* %blkn, align 4, !tbaa !19
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i32 0, i32 10
  %110 = load i32, i32* %DCT_v_scaled_size53, align 4, !tbaa !57
  %111 = load i8**, i8*** %output_ptr, align 8, !tbaa !1
  %idx.ext54 = sext i32 %110 to i64
  %add.ptr55 = getelementptr inbounds i8*, i8** %111, i64 %idx.ext54
  store i8** %add.ptr55, i8*** %output_ptr, align 8, !tbaa !1
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.50
  %112 = load i32, i32* %yindex, align 4, !tbaa !19
  %inc57 = add nsw i32 %112, 1
  store i32 %inc57, i32* %yindex, align 4, !tbaa !19
  br label %for.cond.31

for.end.58:                                       ; preds = %for.cond.31
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58, %if.then.19
  %113 = load i32, i32* %ci, align 4, !tbaa !19
  %inc60 = add nsw i32 %113, 1
  store i32 %inc60, i32* %ci, align 4, !tbaa !19
  br label %for.cond.13

for.end.61:                                       ; preds = %for.cond.13
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %114 = load i32, i32* %MCU_col_num, align 4, !tbaa !19
  %inc63 = add i32 %114, 1
  store i32 %inc63, i32* %MCU_col_num, align 4, !tbaa !19
  br label %for.cond.3

for.end.64:                                       ; preds = %for.cond.3
  %115 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr65 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %115, i32 0, i32 1
  store i32 0, i32* %MCU_ctr65, align 4, !tbaa !40
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.64
  %116 = load i32, i32* %yoffset, align 4, !tbaa !19
  %inc67 = add nsw i32 %116, 1
  store i32 %inc67, i32* %yoffset, align 4, !tbaa !19
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 38
  %118 = load i32, i32* %output_iMCU_row, align 4, !tbaa !34
  %inc69 = add i32 %118, 1
  store i32 %inc69, i32* %output_iMCU_row, align 4, !tbaa !34
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 36
  %120 = load i32, i32* %input_iMCU_row70, align 4, !tbaa !33
  %inc71 = add i32 %120, 1
  store i32 %inc71, i32* %input_iMCU_row70, align 4, !tbaa !33
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 67
  %122 = load i32, i32* %total_iMCU_rows72, align 4, !tbaa !47
  %cmp73 = icmp ult i32 %inc71, %122
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end.68
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %123) #4
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %for.end.68
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 87
  %125 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !48
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %125, i32 0, i32 3
  %126 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8, !tbaa !49
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %126(%struct.jpeg_decompress_struct* %127) #4
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then.75, %if.then.9
  %128 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32* %output_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %start_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i8*** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %useful_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %yoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %yindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %xindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %last_iMCU_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %last_MCU_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %MCU_col_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = load i32, i32* %retval
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 85
  %2 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_coef_controller* %2 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %3, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 69
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !35
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 3
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4, !tbaa !39
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 36
  %8 = load i32, i32* %input_iMCU_row, align 4, !tbaa !33
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 67
  %10 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !47
  %sub = sub i32 %10, 1
  %cmp2 = icmp ult i32 %8, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 70
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 3
  %13 = load i32, i32* %v_samp_factor, align 4, !tbaa !22
  %14 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %14, i32 0, i32 3
  store i32 %13, i32* %MCU_rows_per_iMCU_row4, align 4, !tbaa !39
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 70
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 19
  %17 = load i32, i32* %last_row_height, align 4, !tbaa !62
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 3
  store i32 %17, i32* %MCU_rows_per_iMCU_row8, align 4, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 1
  store i32 0, i32* %MCU_ctr, align 4, !tbaa !40
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8, !tbaa !1
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 2
  store i32 0, i32* %MCU_vert_offset, align 4, !tbaa !38
  %21 = bitcast %struct.my_coef_controller** %coef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !3, i64 64, !8, i64 68, !8, i64 72, !9, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !8, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !2, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !8, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !8, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !10, i64 384, !10, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !2, i64 440, !8, i64 448, !3, i64 456, !8, i64 488, !8, i64 492, !8, i64 496, !3, i64 500, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !2, i64 776, !8, i64 784, !8, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 808}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 56, !3, i64 568}
!17 = !{!"jpeg_d_coef_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!18 = !{!16, !2, i64 16}
!19 = !{!8, !8, i64 0}
!20 = !{!7, !2, i64 304}
!21 = !{!7, !8, i64 56}
!22 = !{!23, !8, i64 12}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!24 = !{!12, !2, i64 40}
!25 = !{!23, !8, i64 28}
!26 = !{!23, !8, i64 8}
!27 = !{!23, !8, i64 32}
!28 = !{!16, !2, i64 8}
!29 = !{!16, !2, i64 24}
!30 = !{!16, !2, i64 32}
!31 = !{!12, !2, i64 8}
!32 = !{!7, !8, i64 784}
!33 = !{!7, !8, i64 176}
!34 = !{!7, !8, i64 184}
!35 = !{!7, !8, i64 448}
!36 = !{!12, !2, i64 64}
!37 = !{!23, !8, i64 4}
!38 = !{!16, !8, i64 44}
!39 = !{!16, !8, i64 48}
!40 = !{!16, !8, i64 40}
!41 = !{!7, !8, i64 488}
!42 = !{!23, !8, i64 56}
!43 = !{!23, !8, i64 60}
!44 = !{!7, !2, i64 840}
!45 = !{!46, !2, i64 8}
!46 = !{!"jpeg_entropy_decoder", !2, i64 0, !2, i64 8, !2, i64 16}
!47 = !{!7, !8, i64 432}
!48 = !{!7, !2, i64 824}
!49 = !{!50, !2, i64 24}
!50 = !{!"jpeg_input_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 36}
!51 = !{!7, !8, i64 172}
!52 = !{!7, !8, i64 180}
!53 = !{!50, !2, i64 0}
!54 = !{!23, !3, i64 52}
!55 = !{!7, !2, i64 848}
!56 = !{!23, !8, i64 36}
!57 = !{!23, !8, i64 40}
!58 = !{!7, !8, i64 496}
!59 = !{!23, !8, i64 64}
!60 = !{!23, !8, i64 72}
!61 = !{!23, !8, i64 68}
!62 = !{!23, !8, i64 76}
