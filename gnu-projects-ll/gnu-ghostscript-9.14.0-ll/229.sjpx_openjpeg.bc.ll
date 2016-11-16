; ModuleID = './sjpx_openjpeg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, {}* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_jpxd_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i8**, i8**, %struct.opj_image*, i32, i32, i32, i32, i32, i32, %struct.stream_block_s, i64, i64, i64, i32**, i32, i32, i32* }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.stream_block_s = type { i8*, i64, i64, i64 }
%struct.opj_dparameters = type { i32, i32, [4096 x i8], [4096 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@st_jpxd_state = internal constant %struct.gs_memory_struct_type_s { i32 240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_jpxd_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_jpxd_state, i32 (%struct.stream_state_s*)* @s_opjd_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_opjd_process, i32 1024, i32 1024, void (%struct.stream_state_s*)* @s_opjd_release, void (%struct.stream_state_s*)* @s_opjd_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"JPXDecode filter state\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"s_opjd_accumulate_input(alloc)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"s_opjd_accumulate_input(resize)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"./base/sjpx_openjpeg.c\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"openjpeg: failed to setup the decoder!\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"openjpeg: failed to open a byte stream!\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"openjpeg error: %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"openjpeg warning: %s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"openjpeg: failed to read header\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"openjpeg: failed to decode image!\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"decode_image(pdata)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"decode_image(sign_comps)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"s_jpxd_ycc_to_rgb\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"s_opjd_release(sb.data)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"s_opjd_release(pdata)\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"s_opjd_release(sign_comps)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_opjd_init(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jpxd_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jpxd_state_s*
  store %struct.stream_jpxd_state_s* %2, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %3, i32 0, i32 5
  store i8** null, i8*** %codec, align 8, !tbaa !5
  %4 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %4, i32 0, i32 7
  store %struct.opj_image* null, %struct.opj_image** %image, align 8, !tbaa !10
  %5 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %5, i32 0, i32 14
  %data = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !11
  %6 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %6, i32 0, i32 14
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb1, i32 0, i32 1
  store i64 0, i64* %size, align 8, !tbaa !12
  %7 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb2 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %7, i32 0, i32 14
  %pos = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb2, i32 0, i32 2
  store i64 0, i64* %pos, align 8, !tbaa !13
  %8 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb3 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %8, i32 0, i32 14
  %fill = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb3, i32 0, i32 3
  store i64 0, i64* %fill, align 8, !tbaa !14
  %9 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %out_offset = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %9, i32 0, i32 16
  store i64 0, i64* %out_offset, align 8, !tbaa !15
  %10 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %img_offset = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %10, i32 0, i32 17
  store i64 0, i64* %img_offset, align 8, !tbaa !16
  %11 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %11, i32 0, i32 18
  store i32** null, i32*** %pdata, align 8, !tbaa !17
  %12 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sign_comps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %12, i32 0, i32 21
  store i32* null, i32** %sign_comps, align 8, !tbaa !18
  %13 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %13, i32 0, i32 6
  store i8** null, i8*** %stream, align 8, !tbaa !19
  %14 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_opjd_process(%struct.stream_state_s* %ss, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %state = alloca %struct.stream_jpxd_state_s*, align 8
  %in_size = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ret = alloca i32, align 4
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !20
  %0 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jpxd_state_s*
  store %struct.stream_jpxd_state_s* %2, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %3 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !21
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !23
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %in_size, align 8, !tbaa !24
  %8 = load i64, i64* %in_size, align 8, !tbaa !24
  %cmp = icmp sgt i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %11 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call = call i32 @s_opjd_accumulate_input(%struct.stream_jpxd_state_s* %10, %struct.stream_cursor_read_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %12 = load i32, i32* %code, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %14, i32 0, i32 5
  %15 = load i8**, i8*** %codec, align 8, !tbaa !5
  %cmp3 = icmp eq i8** %15, null
  br i1 %cmp3, label %if.then.4, label %if.end.24

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %16, i32 0, i32 14
  %data = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %18 to i32
  %cmp5 = icmp eq i32 %conv, 255
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.4
  %19 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb7 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %19, i32 0, i32 14
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb7, i32 0, i32 1
  %20 = load i64, i64* %size, align 8, !tbaa !12
  %cmp8 = icmp eq i64 %20, 1
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb10 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %21, i32 0, i32 14
  %data11 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb10, i32 0, i32 0
  %22 = load i8*, i8** %data11, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx12, align 1, !tbaa !25
  %conv13 = zext i8 %23 to i32
  %cmp14 = icmp eq i32 %conv13, 79
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %24 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %call17 = call i32 @s_opjd_set_codec_format(%struct.stream_state_s* %24, i32 0) #5
  store i32 %call17, i32* %code, align 4, !tbaa !20
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false, %if.then.4
  %25 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %call18 = call i32 @s_opjd_set_codec_format(%struct.stream_state_s* %25, i32 2) #5
  store i32 %call18, i32* %code, align 4, !tbaa !20
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %26 = load i32, i32* %code, align 4, !tbaa !20
  %cmp20 = icmp slt i32 %26, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %27 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %entry
  %29 = load i32, i32* %last.addr, align 4, !tbaa !20
  %cmp26 = icmp eq i32 %29, 1
  br i1 %cmp26, label %if.then.28, label %if.end.46

if.then.28:                                       ; preds = %if.end.25
  %30 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %30, i32 0, i32 7
  %31 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !10
  %cmp29 = icmp eq %struct.opj_image* %31, null
  br i1 %cmp29, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %if.then.28
  %32 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 -2, i32* %ret, align 4, !tbaa !20
  %33 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %33, i32 0, i32 6
  %34 = load i8**, i8*** %stream, align 8, !tbaa !19
  %35 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb32 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %35, i32 0, i32 14
  %36 = bitcast %struct.stream_block_s* %sb32 to i8*
  call void @opj_stream_set_user_data(i8** %34, i8* %36) #5
  %37 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream33 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %37, i32 0, i32 6
  %38 = load i8**, i8*** %stream33, align 8, !tbaa !19
  %39 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb34 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %39, i32 0, i32 14
  %size35 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb34, i32 0, i32 1
  %40 = load i64, i64* %size35, align 8, !tbaa !12
  call void @opj_stream_set_user_data_length(i8** %38, i64 %40) #5
  %41 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %call36 = call i32 @decode_image(%struct.stream_jpxd_state_s* %41) #5
  store i32 %call36, i32* %ret, align 4, !tbaa !20
  %42 = load i32, i32* %ret, align 4, !tbaa !20
  %cmp37 = icmp ne i32 %42, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.31
  %43 = load i32, i32* %ret, align 4, !tbaa !20
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.40:                                        ; preds = %if.then.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %if.end.40, %if.then.39
  %44 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %cleanup.dest.42 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.42, label %cleanup.47 [
    i32 0, label %cleanup.cont.43
  ]

cleanup.cont.43:                                  ; preds = %cleanup.41
  br label %if.end.44

if.end.44:                                        ; preds = %cleanup.cont.43, %if.then.28
  %45 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %46 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call45 = call i32 @process_one_trunk(%struct.stream_jpxd_state_s* %45, %struct.stream_cursor_write_s* %46) #5
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.46:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %if.end.44, %cleanup.41, %cleanup
  %47 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @s_opjd_release(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jpxd_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jpxd_state_s*
  store %struct.stream_jpxd_state_s* %2, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %3, i32 0, i32 5
  %4 = load i8**, i8*** %codec, align 8, !tbaa !5
  %cmp = icmp eq i8** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %5, i32 0, i32 7
  %6 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !10
  %tobool = icmp ne %struct.opj_image* %6, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %image2 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %7, i32 0, i32 7
  %8 = load %struct.opj_image*, %struct.opj_image** %image2, align 8, !tbaa !10
  call void @opj_image_destroy(%struct.opj_image* %8) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %9 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %9, i32 0, i32 6
  %10 = load i8**, i8*** %stream, align 8, !tbaa !19
  %tobool4 = icmp ne i8** %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %11 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream6 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %11, i32 0, i32 6
  %12 = load i8**, i8*** %stream6, align 8, !tbaa !19
  call void @opj_stream_destroy(i8** %12) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %13 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec8 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %13, i32 0, i32 5
  %14 = load i8**, i8*** %codec8, align 8, !tbaa !5
  %tobool9 = icmp ne i8** %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %15 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec11 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %15, i32 0, i32 5
  %16 = load i8**, i8*** %codec11, align 8, !tbaa !5
  call void @opj_destroy_codec(i8** %16) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %17 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %17, i32 0, i32 14
  %data = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8, !tbaa !11
  %tobool13 = icmp ne i8* %18, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %23 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !26
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !27
  %26 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sb17 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %26, i32 0, i32 14
  %data18 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb17, i32 0, i32 0
  %27 = load i8*, i8** %data18, align 8, !tbaa !11
  call void %22(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.12
  %28 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %28, i32 0, i32 18
  %29 = load i32**, i32*** %pdata, align 8, !tbaa !17
  %tobool20 = icmp ne i32** %29, null
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.19
  %30 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %30, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !26
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !27
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object25, align 8, !tbaa !30
  %34 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !26
  %non_gc_memory27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory27, align 8, !tbaa !27
  %37 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %pdata28 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %37, i32 0, i32 18
  %38 = load i32**, i32*** %pdata28, align 8, !tbaa !17
  %39 = bitcast i32** %38 to i8*
  call void %33(%struct.gs_memory_s* %36, i8* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %if.end.19
  %40 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sign_comps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %40, i32 0, i32 21
  %41 = load i32*, i32** %sign_comps, align 8, !tbaa !18
  %tobool30 = icmp ne i32* %41, null
  br i1 %tobool30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.29
  %42 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %42, i32 0, i32 1
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !26
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !27
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !30
  %46 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !26
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !27
  %49 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %sign_comps38 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %49, i32 0, i32 21
  %50 = load i32*, i32** %sign_comps38, align 8, !tbaa !18
  %51 = bitcast i32* %50 to i8*
  call void %45(%struct.gs_memory_s* %48, i8* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.31, %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then
  %52 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_opjd_set_defaults(%struct.stream_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %state = alloca %struct.stream_jpxd_state_s*, align 8
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jpxd_state_s*
  store %struct.stream_jpxd_state_s* %2, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %3 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %3, i32 0, i32 13
  store i32 0, i32* %alpha, align 4, !tbaa !31
  %4 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %colorspace = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %4, i32 0, i32 12
  store i32 2, i32* %colorspace, align 4, !tbaa !32
  %5 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_opjd_accumulate_input(%struct.stream_jpxd_state_s* %state, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_jpxd_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %in_size = alloca i64, align 8
  %new_buf = alloca i8*, align 8
  %new_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_jpxd_state_s* %state, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %0 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !21
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !23
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %in_size, align 8, !tbaa !24
  %5 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %5, i32 0, i32 14
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb, i32 0, i32 1
  %6 = load i64, i64* %size, align 8, !tbaa !12
  %7 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %7, i32 0, i32 14
  %fill = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb1, i32 0, i32 3
  %8 = load i64, i64* %fill, align 8, !tbaa !14
  %9 = load i64, i64* %in_size, align 8, !tbaa !24
  %add = add i64 %8, %9
  %cmp = icmp ult i64 %6, %add
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %10 = bitcast i8** %new_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb2 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %12, i32 0, i32 14
  %size3 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb2, i32 0, i32 1
  %13 = load i64, i64* %size3, align 8, !tbaa !12
  %cmp4 = icmp eq i64 %13, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i64, i64* %in_size, align 8, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb5 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %15, i32 0, i32 14
  %size6 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb5, i32 0, i32 1
  %16 = load i64, i64* %size6, align 8, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %16, %cond.false ]
  store i64 %cond, i64* %new_size, align 8, !tbaa !24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %17 = load i64, i64* %new_size, align 8, !tbaa !24
  %18 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb7 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %18, i32 0, i32 14
  %fill8 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb7, i32 0, i32 3
  %19 = load i64, i64* %fill8, align 8, !tbaa !14
  %20 = load i64, i64* %in_size, align 8, !tbaa !24
  %add9 = add i64 %19, %20
  %cmp10 = icmp ult i64 %17, %add9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i64, i64* %new_size, align 8, !tbaa !24
  %shl = shl i64 %21, 1
  store i64 %shl, i64* %new_size, align 8, !tbaa !24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb11 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %22, i32 0, i32 14
  %data = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb11, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !11
  %cmp12 = icmp eq i8* %23, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.end
  %24 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %24, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %27 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !33
  %28 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %28, i32 0, i32 1
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !26
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !27
  %31 = load i64, i64* %new_size, align 8, !tbaa !24
  %conv = trunc i64 %31 to i32
  %call = call i8* %27(%struct.gs_memory_s* %30, i32 %conv, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %call, i8** %new_buf, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end
  %32 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %32, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !26
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !27
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 1
  %35 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !34
  %36 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !26
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !27
  %39 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb21 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %39, i32 0, i32 14
  %data22 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb21, i32 0, i32 0
  %40 = load i8*, i8** %data22, align 8, !tbaa !11
  %41 = load i64, i64* %new_size, align 8, !tbaa !24
  %conv23 = trunc i64 %41 to i32
  %call24 = call i8* %35(%struct.gs_memory_s* %38, i8* %40, i32 %conv23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %call24, i8** %new_buf, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %42 = load i8*, i8** %new_buf, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %42, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  %43 = load i8*, i8** %new_buf, align 8, !tbaa !1
  %44 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb29 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %44, i32 0, i32 14
  %data30 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb29, i32 0, i32 0
  store i8* %43, i8** %data30, align 8, !tbaa !11
  %45 = load i64, i64* %new_size, align 8, !tbaa !24
  %46 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb31 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %46, i32 0, i32 14
  %size32 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb31, i32 0, i32 1
  store i64 %45, i64* %size32, align 8, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %47 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i8** %new_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %entry
  %49 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb35 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %49, i32 0, i32 14
  %data36 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb35, i32 0, i32 0
  %50 = load i8*, i8** %data36, align 8, !tbaa !11
  %51 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb37 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %51, i32 0, i32 14
  %fill38 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb37, i32 0, i32 3
  %52 = load i64, i64* %fill38, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %52
  %53 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %53, i32 0, i32 0
  %54 = load i8*, i8** %ptr39, align 8, !tbaa !23
  %add.ptr40 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i64, i64* %in_size, align 8, !tbaa !24
  %call41 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr40, i64 %55) #6
  %56 = load i64, i64* %in_size, align 8, !tbaa !24
  %57 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sb42 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %57, i32 0, i32 14
  %fill43 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %sb42, i32 0, i32 3
  %58 = load i64, i64* %fill43, align 8, !tbaa !14
  %add44 = add i64 %58, %56
  store i64 %add44, i64* %fill43, align 8, !tbaa !14
  %59 = load i64, i64* %in_size, align 8, !tbaa !24
  %60 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr45 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %60, i32 0, i32 0
  %61 = load i8*, i8** %ptr45, align 8, !tbaa !23
  %add.ptr46 = getelementptr inbounds i8, i8* %61, i64 %59
  store i8* %add.ptr46, i8** %ptr45, align 8, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.34, %cleanup
  %62 = bitcast i64* %in_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @s_opjd_set_codec_format(%struct.stream_state_s* %ss, i32 %format) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %format.addr = alloca i32, align 4
  %state = alloca %struct.stream_jpxd_state_s*, align 8
  %parameters = alloca %struct.opj_dparameters, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !25
  %0 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_jpxd_state_s*
  store %struct.stream_jpxd_state_s* %2, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %3 = bitcast %struct.opj_dparameters* %parameters to i8*
  call void @llvm.lifetime.start(i64 8252, i8* %3) #2
  call void @opj_set_default_decoder_parameters(%struct.opj_dparameters* %parameters) #5
  %4 = load i32, i32* %format.addr, align 4, !tbaa !25
  %call = call i8** @opj_create_decompress(i32 %4) #5
  %5 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %5, i32 0, i32 5
  store i8** %call, i8*** %codec, align 8, !tbaa !5
  %6 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %6, i32 0, i32 5
  %7 = load i8**, i8*** %codec1, align 8, !tbaa !5
  %cmp = icmp eq i8** %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec2 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %8, i32 0, i32 5
  %9 = load i8**, i8*** %codec2, align 8, !tbaa !5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %11 = bitcast %struct._IO_FILE* %10 to i8*
  %call3 = call i32 @opj_set_error_handler(i8** %9, void (i8*, i8*)* @sjpx_error_callback, i8* %11) #5
  %12 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec4 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %12, i32 0, i32 5
  %13 = load i8**, i8*** %codec4, align 8, !tbaa !5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %15 = bitcast %struct._IO_FILE* %14 to i8*
  %call5 = call i32 @opj_set_info_handler(i8** %13, void (i8*, i8*)* @sjpx_info_callback, i8* %15) #5
  %16 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec6 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %16, i32 0, i32 5
  %17 = load i8**, i8*** %codec6, align 8, !tbaa !5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %19 = bitcast %struct._IO_FILE* %18 to i8*
  %call7 = call i32 @opj_set_warning_handler(i8** %17, void (i8*, i8*)* @sjpx_warning_callback, i8* %19) #5
  %20 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %colorspace = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %20, i32 0, i32 12
  %21 = load i32, i32* %colorspace, align 4, !tbaa !32
  %cmp8 = icmp eq i32 %21, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %parameters, i32 0, i32 16
  %22 = load i32, i32* %flags, align 4, !tbaa !35
  %or = or i32 %22, 1
  store i32 %or, i32* %flags, align 4, !tbaa !35
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %23 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %codec11 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %23, i32 0, i32 5
  %24 = load i8**, i8*** %codec11, align 8, !tbaa !5
  %call12 = call i32 @opj_setup_decoder(i8** %24, %struct.opj_dparameters* %parameters) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 138) #5
  %call14 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %call16 = call i8** @opj_stream_default_create(i32 1) #5
  %25 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %25, i32 0, i32 6
  store i8** %call16, i8*** %stream, align 8, !tbaa !19
  %26 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream17 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %26, i32 0, i32 6
  %27 = load i8**, i8*** %stream17, align 8, !tbaa !19
  %cmp18 = icmp eq i8** %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 146) #5
  %call20 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %28 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream22 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %28, i32 0, i32 6
  %29 = load i8**, i8*** %stream22, align 8, !tbaa !19
  call void @opj_stream_set_read_function(i8** %29, i64 (i8*, i64, i8*)* @sjpx_stream_read) #5
  %30 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream23 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %30, i32 0, i32 6
  %31 = load i8**, i8*** %stream23, align 8, !tbaa !19
  call void @opj_stream_set_skip_function(i8** %31, i64 (i64, i8*)* @sjpx_stream_skip) #5
  %32 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state, align 8, !tbaa !1
  %stream24 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %32, i32 0, i32 6
  %33 = load i8**, i8*** %stream24, align 8, !tbaa !19
  call void @opj_stream_set_seek_function(i8** %33, i32 (i64, i8*)* @sjpx_stream_seek) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.19, %if.then.13, %if.then
  %34 = bitcast %struct.opj_dparameters* %parameters to i8*
  call void @llvm.lifetime.end(i64 8252, i8* %34) #2
  %35 = bitcast %struct.stream_jpxd_state_s** %state to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @opj_stream_set_user_data(i8**, i8*) #1

declare void @opj_stream_set_user_data_length(i8**, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_image(%struct.stream_jpxd_state_s* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_jpxd_state_s*, align 8
  %numprimcomp = alloca i32, align 4
  %alpha_comp = alloca i32, align 4
  %compno = alloca i32, align 4
  %rowbytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_jpxd_state_s* %state, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %0 = bitcast i32* %numprimcomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %numprimcomp, align 4, !tbaa !20
  %1 = bitcast i32* %alpha_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 -1, i32* %alpha_comp, align 4, !tbaa !20
  %2 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %rowbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %4, i32 0, i32 6
  %5 = load i8**, i8*** %stream, align 8, !tbaa !19
  %6 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %codec = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %6, i32 0, i32 5
  %7 = load i8**, i8*** %codec, align 8, !tbaa !5
  %8 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %8, i32 0, i32 7
  %call = call i32 @opj_read_header(i8** %5, i8** %7, %struct.opj_image** %image) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 244) #5
  %call1 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %codec2 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %9, i32 0, i32 5
  %10 = load i8**, i8*** %codec2, align 8, !tbaa !5
  %11 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %stream3 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %11, i32 0, i32 6
  %12 = load i8**, i8*** %stream3, align 8, !tbaa !19
  %13 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image4 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %13, i32 0, i32 7
  %14 = load %struct.opj_image*, %struct.opj_image** %image4, align 8, !tbaa !10
  %call5 = call i32 @opj_decode(i8** %10, i8** %12, %struct.opj_image* %14) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 251) #5
  %call8 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0)) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %15 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image10 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %15, i32 0, i32 7
  %16 = load %struct.opj_image*, %struct.opj_image** %image10, align 8, !tbaa !10
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 4
  %17 = load i32, i32* %numcomps, align 4, !tbaa !37
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %18 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image13 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %18, i32 0, i32 7
  %19 = load %struct.opj_image*, %struct.opj_image** %image13, align 8, !tbaa !10
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %19, i32 0, i32 6
  %20 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %20, i64 0
  %w = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx, i32 0, i32 2
  %21 = load i32, i32* %w, align 4, !tbaa !40
  %22 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %22, i32 0, i32 8
  store i32 %21, i32* %width, align 4, !tbaa !43
  %23 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image14 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %23, i32 0, i32 7
  %24 = load %struct.opj_image*, %struct.opj_image** %image14, align 8, !tbaa !10
  %comps15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 6
  %25 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps15, align 8, !tbaa !39
  %arrayidx16 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %25, i64 0
  %h = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx16, i32 0, i32 3
  %26 = load i32, i32* %h, align 4, !tbaa !44
  %27 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %27, i32 0, i32 9
  store i32 %26, i32* %height, align 4, !tbaa !45
  %28 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image17 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %28, i32 0, i32 7
  %29 = load %struct.opj_image*, %struct.opj_image** %image17, align 8, !tbaa !10
  %comps18 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %29, i32 0, i32 6
  %30 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps18, align 8, !tbaa !39
  %arrayidx19 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %30, i64 0
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx19, i32 0, i32 6
  %31 = load i32, i32* %prec, align 4, !tbaa !46
  %32 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %32, i32 0, i32 10
  store i32 %31, i32* %bpp, align 4, !tbaa !47
  %33 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %samescale = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %33, i32 0, i32 11
  store i32 1, i32* %samescale, align 4, !tbaa !48
  store i32 1, i32* %compno, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %34 = load i32, i32* %compno, align 4, !tbaa !20
  %35 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image20 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %35, i32 0, i32 7
  %36 = load %struct.opj_image*, %struct.opj_image** %image20, align 8, !tbaa !10
  %numcomps21 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %36, i32 0, i32 4
  %37 = load i32, i32* %numcomps21, align 4, !tbaa !37
  %cmp22 = icmp ult i32 %34, %37
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp23 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %38, i32 0, i32 10
  %39 = load i32, i32* %bpp23, align 4, !tbaa !47
  %40 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image24 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %41, i32 0, i32 7
  %42 = load %struct.opj_image*, %struct.opj_image** %image24, align 8, !tbaa !10
  %comps25 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %42, i32 0, i32 6
  %43 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps25, align 8, !tbaa !39
  %arrayidx26 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %43, i64 %idxprom
  %prec27 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx26, i32 0, i32 6
  %44 = load i32, i32* %prec27, align 4, !tbaa !46
  %cmp28 = icmp ne i32 %39, %44
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %for.body
  %45 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %45, i32 0, i32 8
  %46 = load i32, i32* %width31, align 4, !tbaa !43
  %47 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom32 = sext i32 %47 to i64
  %48 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image33 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %48, i32 0, i32 7
  %49 = load %struct.opj_image*, %struct.opj_image** %image33, align 8, !tbaa !10
  %comps34 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %49, i32 0, i32 6
  %50 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps34, align 8, !tbaa !39
  %arrayidx35 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %50, i64 %idxprom32
  %w36 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx35, i32 0, i32 2
  %51 = load i32, i32* %w36, align 4, !tbaa !40
  %cmp37 = icmp ult i32 %46, %51
  br i1 %cmp37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.30
  %52 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom39 = sext i32 %52 to i64
  %53 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image40 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %53, i32 0, i32 7
  %54 = load %struct.opj_image*, %struct.opj_image** %image40, align 8, !tbaa !10
  %comps41 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %54, i32 0, i32 6
  %55 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps41, align 8, !tbaa !39
  %arrayidx42 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %55, i64 %idxprom39
  %w43 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx42, i32 0, i32 2
  %56 = load i32, i32* %w43, align 4, !tbaa !40
  %57 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %57, i32 0, i32 8
  store i32 %56, i32* %width44, align 4, !tbaa !43
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %if.end.30
  %58 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height46 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %58, i32 0, i32 9
  %59 = load i32, i32* %height46, align 4, !tbaa !45
  %60 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom47 = sext i32 %60 to i64
  %61 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image48 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %61, i32 0, i32 7
  %62 = load %struct.opj_image*, %struct.opj_image** %image48, align 8, !tbaa !10
  %comps49 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %62, i32 0, i32 6
  %63 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps49, align 8, !tbaa !39
  %arrayidx50 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %63, i64 %idxprom47
  %h51 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx50, i32 0, i32 3
  %64 = load i32, i32* %h51, align 4, !tbaa !44
  %cmp52 = icmp ult i32 %59, %64
  br i1 %cmp52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.45
  %65 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom54 = sext i32 %65 to i64
  %66 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image55 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %66, i32 0, i32 7
  %67 = load %struct.opj_image*, %struct.opj_image** %image55, align 8, !tbaa !10
  %comps56 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 6
  %68 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps56, align 8, !tbaa !39
  %arrayidx57 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %68, i64 %idxprom54
  %h58 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx57, i32 0, i32 3
  %69 = load i32, i32* %h58, align 4, !tbaa !44
  %70 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height59 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %70, i32 0, i32 9
  store i32 %69, i32* %height59, align 4, !tbaa !45
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.end.45
  %71 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom61 = sext i32 %71 to i64
  %72 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image62 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %72, i32 0, i32 7
  %73 = load %struct.opj_image*, %struct.opj_image** %image62, align 8, !tbaa !10
  %comps63 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %73, i32 0, i32 6
  %74 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps63, align 8, !tbaa !39
  %arrayidx64 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %74, i64 %idxprom61
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx64, i32 0, i32 0
  %75 = load i32, i32* %dx, align 4, !tbaa !49
  %76 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image65 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %76, i32 0, i32 7
  %77 = load %struct.opj_image*, %struct.opj_image** %image65, align 8, !tbaa !10
  %comps66 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %77, i32 0, i32 6
  %78 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps66, align 8, !tbaa !39
  %arrayidx67 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %78, i64 0
  %dx68 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx67, i32 0, i32 0
  %79 = load i32, i32* %dx68, align 4, !tbaa !49
  %cmp69 = icmp ne i32 %75, %79
  br i1 %cmp69, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.60
  %80 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom70 = sext i32 %80 to i64
  %81 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image71 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %81, i32 0, i32 7
  %82 = load %struct.opj_image*, %struct.opj_image** %image71, align 8, !tbaa !10
  %comps72 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %82, i32 0, i32 6
  %83 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps72, align 8, !tbaa !39
  %arrayidx73 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %83, i64 %idxprom70
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx73, i32 0, i32 1
  %84 = load i32, i32* %dy, align 4, !tbaa !50
  %85 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image74 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %85, i32 0, i32 7
  %86 = load %struct.opj_image*, %struct.opj_image** %image74, align 8, !tbaa !10
  %comps75 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %86, i32 0, i32 6
  %87 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps75, align 8, !tbaa !39
  %arrayidx76 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %87, i64 0
  %dy77 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx76, i32 0, i32 1
  %88 = load i32, i32* %dy77, align 4, !tbaa !50
  %cmp78 = icmp ne i32 %84, %88
  br i1 %cmp78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %lor.lhs.false, %if.end.60
  %89 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %samescale80 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %89, i32 0, i32 11
  store i32 0, i32* %samescale80, align 4, !tbaa !48
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %90 = load i32, i32* %compno, align 4, !tbaa !20
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.106, %for.end
  %91 = load i32, i32* %compno, align 4, !tbaa !20
  %92 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image83 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %92, i32 0, i32 7
  %93 = load %struct.opj_image*, %struct.opj_image** %image83, align 8, !tbaa !10
  %numcomps84 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %93, i32 0, i32 4
  %94 = load i32, i32* %numcomps84, align 4, !tbaa !37
  %cmp85 = icmp ult i32 %91, %94
  br i1 %cmp85, label %for.body.86, label %for.end.108

for.body.86:                                      ; preds = %for.cond.82
  %95 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom87 = sext i32 %95 to i64
  %96 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image88 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %96, i32 0, i32 7
  %97 = load %struct.opj_image*, %struct.opj_image** %image88, align 8, !tbaa !10
  %comps89 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %97, i32 0, i32 6
  %98 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps89, align 8, !tbaa !39
  %arrayidx90 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %98, i64 %idxprom87
  %alpha = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx90, i32 0, i32 12
  %99 = load i16, i16* %alpha, align 2, !tbaa !51
  %conv = zext i16 %99 to i32
  %cmp91 = icmp eq i32 %conv, 0
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %for.body.86
  %100 = load i32, i32* %numprimcomp, align 4, !tbaa !20
  %inc94 = add nsw i32 %100, 1
  store i32 %inc94, i32* %numprimcomp, align 4, !tbaa !20
  br label %if.end.105

if.else:                                          ; preds = %for.body.86
  %101 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom95 = sext i32 %101 to i64
  %102 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image96 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %102, i32 0, i32 7
  %103 = load %struct.opj_image*, %struct.opj_image** %image96, align 8, !tbaa !10
  %comps97 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %103, i32 0, i32 6
  %104 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps97, align 8, !tbaa !39
  %arrayidx98 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %104, i64 %idxprom95
  %alpha99 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx98, i32 0, i32 12
  %105 = load i16, i16* %alpha99, align 2, !tbaa !51
  %conv100 = zext i16 %105 to i32
  %cmp101 = icmp eq i32 %conv100, 1
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else
  %106 = load i32, i32* %compno, align 4, !tbaa !20
  store i32 %106, i32* %alpha_comp, align 4, !tbaa !20
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.else
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %107 = load i32, i32* %compno, align 4, !tbaa !20
  %inc107 = add nsw i32 %107, 1
  store i32 %inc107, i32* %compno, align 4, !tbaa !20
  br label %for.cond.82

for.end.108:                                      ; preds = %for.cond.82
  %108 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image109 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %108, i32 0, i32 7
  %109 = load %struct.opj_image*, %struct.opj_image** %image109, align 8, !tbaa !10
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %109, i32 0, i32 5
  %110 = load i32, i32* %color_space, align 4, !tbaa !52
  switch i32 %110, label %sw.default [
    i32 2, label %sw.bb
    i32 -1, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %for.end.108
  %111 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %colorspace = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %111, i32 0, i32 12
  store i32 1, i32* %colorspace, align 4, !tbaa !32
  br label %sw.epilog

sw.bb.110:                                        ; preds = %for.end.108
  %112 = load i32, i32* %numprimcomp, align 4, !tbaa !20
  %cmp111 = icmp slt i32 %112, 3
  br i1 %cmp111, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %sw.bb.110
  %113 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %colorspace114 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %113, i32 0, i32 12
  store i32 1, i32* %colorspace114, align 4, !tbaa !32
  br label %if.end.123

if.else.115:                                      ; preds = %sw.bb.110
  %114 = load i32, i32* %numprimcomp, align 4, !tbaa !20
  %cmp116 = icmp eq i32 %114, 4
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.else.115
  %115 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %colorspace119 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %115, i32 0, i32 12
  store i32 3, i32* %colorspace119, align 4, !tbaa !32
  br label %if.end.122

if.else.120:                                      ; preds = %if.else.115
  %116 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %colorspace121 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %116, i32 0, i32 12
  store i32 2, i32* %colorspace121, align 4, !tbaa !32
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.118
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.113
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.108
  %117 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %colorspace124 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %117, i32 0, i32 12
  store i32 2, i32* %colorspace124, align 4, !tbaa !32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.123, %sw.bb
  %118 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp125 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %118, i32 0, i32 20
  store i32 -1, i32* %alpha_comp125, align 4, !tbaa !53
  %119 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha126 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %119, i32 0, i32 13
  %120 = load i32, i32* %alpha126, align 4, !tbaa !31
  %tobool127 = icmp ne i32 %120, 0
  br i1 %tobool127, label %if.then.128, label %if.else.130

if.then.128:                                      ; preds = %sw.epilog
  %121 = load i32, i32* %alpha_comp, align 4, !tbaa !20
  %122 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp129 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %122, i32 0, i32 20
  store i32 %121, i32* %alpha_comp129, align 4, !tbaa !53
  %123 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %123, i32 0, i32 19
  store i32 1, i32* %out_numcomps, align 4, !tbaa !54
  br label %if.end.132

if.else.130:                                      ; preds = %sw.epilog
  %124 = load i32, i32* %numprimcomp, align 4, !tbaa !20
  %125 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps131 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %125, i32 0, i32 19
  store i32 %124, i32* %out_numcomps131, align 4, !tbaa !54
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.128
  %126 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp133 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %126, i32 0, i32 10
  %127 = load i32, i32* %bpp133, align 4, !tbaa !47
  %cmp134 = icmp eq i32 %127, 12
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.132
  %128 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp137 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %128, i32 0, i32 10
  store i32 16, i32* %bpp137, align 4, !tbaa !47
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.132
  %129 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width139 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %129, i32 0, i32 8
  %130 = load i32, i32* %width139, align 4, !tbaa !43
  %131 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp140 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %131, i32 0, i32 10
  %132 = load i32, i32* %bpp140, align 4, !tbaa !47
  %mul = mul nsw i32 %130, %132
  %133 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps141 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %133, i32 0, i32 19
  %134 = load i32, i32* %out_numcomps141, align 4, !tbaa !54
  %mul142 = mul nsw i32 %mul, %134
  %add = add nsw i32 %mul142, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %rowbytes, align 4, !tbaa !20
  %135 = load i32, i32* %rowbytes, align 4, !tbaa !20
  %136 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height143 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %136, i32 0, i32 9
  %137 = load i32, i32* %height143, align 4, !tbaa !45
  %mul144 = mul nsw i32 %135, %137
  %conv145 = sext i32 %mul144 to i64
  %138 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %totalbytes = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %138, i32 0, i32 15
  store i64 %conv145, i64* %totalbytes, align 8, !tbaa !55
  %139 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image146 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %139, i32 0, i32 7
  %140 = load %struct.opj_image*, %struct.opj_image** %image146, align 8, !tbaa !10
  %color_space147 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %140, i32 0, i32 5
  %141 = load i32, i32* %color_space147, align 4, !tbaa !52
  %cmp148 = icmp eq i32 %141, 3
  br i1 %cmp148, label %if.then.155, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.138
  %142 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image151 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %142, i32 0, i32 7
  %143 = load %struct.opj_image*, %struct.opj_image** %image151, align 8, !tbaa !10
  %color_space152 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %143, i32 0, i32 5
  %144 = load i32, i32* %color_space152, align 4, !tbaa !52
  %cmp153 = icmp eq i32 %144, 4
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %lor.lhs.false.150, %if.end.138
  %145 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %call156 = call i32 @s_jpxd_ycc_to_rgb(%struct.stream_jpxd_state_s* %145) #5
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %lor.lhs.false.150
  %146 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %146, i32 0, i32 1
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %149 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !33
  %150 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory158 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %150, i32 0, i32 1
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory158, align 8, !tbaa !26
  %non_gc_memory159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %151, i32 0, i32 3
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory159, align 8, !tbaa !27
  %153 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image160 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %153, i32 0, i32 7
  %154 = load %struct.opj_image*, %struct.opj_image** %image160, align 8, !tbaa !10
  %numcomps161 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %154, i32 0, i32 4
  %155 = load i32, i32* %numcomps161, align 4, !tbaa !37
  %conv162 = zext i32 %155 to i64
  %mul163 = mul i64 8, %conv162
  %conv164 = trunc i64 %mul163 to i32
  %call165 = call i8* %149(%struct.gs_memory_s* %152, i32 %conv164, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #5
  %156 = bitcast i8* %call165 to i32**
  %157 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %157, i32 0, i32 18
  store i32** %156, i32*** %pdata, align 8, !tbaa !17
  %158 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata166 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %158, i32 0, i32 18
  %159 = load i32**, i32*** %pdata166, align 8, !tbaa !17
  %tobool167 = icmp ne i32** %159, null
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.end.157
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %if.end.157
  %160 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory170 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %160, i32 0, i32 1
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory170, align 8, !tbaa !26
  %non_gc_memory171 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %161, i32 0, i32 3
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory171, align 8, !tbaa !27
  %procs172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %alloc_byte_array173 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs172, i32 0, i32 10
  %163 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array173, align 8, !tbaa !33
  %164 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory174 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %164, i32 0, i32 1
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory174, align 8, !tbaa !26
  %non_gc_memory175 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %165, i32 0, i32 3
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory175, align 8, !tbaa !27
  %167 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image176 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %167, i32 0, i32 7
  %168 = load %struct.opj_image*, %struct.opj_image** %image176, align 8, !tbaa !10
  %numcomps177 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %168, i32 0, i32 4
  %169 = load i32, i32* %numcomps177, align 4, !tbaa !37
  %conv178 = zext i32 %169 to i64
  %mul179 = mul i64 4, %conv178
  %conv180 = trunc i64 %mul179 to i32
  %call181 = call i8* %163(%struct.gs_memory_s* %166, i32 %conv180, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #5
  %170 = bitcast i8* %call181 to i32*
  %171 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %171, i32 0, i32 21
  store i32* %170, i32** %sign_comps, align 8, !tbaa !18
  %172 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps182 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %172, i32 0, i32 21
  %173 = load i32*, i32** %sign_comps182, align 8, !tbaa !18
  %tobool183 = icmp ne i32* %173, null
  br i1 %tobool183, label %if.end.185, label %if.then.184

if.then.184:                                      ; preds = %if.end.169
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.185:                                       ; preds = %if.end.169
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.210, %if.end.185
  %174 = load i32, i32* %compno, align 4, !tbaa !20
  %175 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image187 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %175, i32 0, i32 7
  %176 = load %struct.opj_image*, %struct.opj_image** %image187, align 8, !tbaa !10
  %numcomps188 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %176, i32 0, i32 4
  %177 = load i32, i32* %numcomps188, align 4, !tbaa !37
  %cmp189 = icmp ult i32 %174, %177
  br i1 %cmp189, label %for.body.191, label %for.end.212

for.body.191:                                     ; preds = %for.cond.186
  %178 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom192 = sext i32 %178 to i64
  %179 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image193 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %179, i32 0, i32 7
  %180 = load %struct.opj_image*, %struct.opj_image** %image193, align 8, !tbaa !10
  %comps194 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %180, i32 0, i32 6
  %181 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps194, align 8, !tbaa !39
  %arrayidx195 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %181, i64 %idxprom192
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx195, i32 0, i32 8
  %182 = load i32, i32* %sgnd, align 4, !tbaa !56
  %tobool196 = icmp ne i32 %182, 0
  br i1 %tobool196, label %if.then.197, label %if.else.205

if.then.197:                                      ; preds = %for.body.191
  %183 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp198 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %183, i32 0, i32 10
  %184 = load i32, i32* %bpp198, align 4, !tbaa !47
  %rem = srem i32 %184, 8
  %cmp199 = icmp eq i32 %rem, 0
  br i1 %cmp199, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.197
  br label %cond.end

cond.false:                                       ; preds = %if.then.197
  %185 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp201 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %185, i32 0, i32 10
  %186 = load i32, i32* %bpp201, align 4, !tbaa !47
  %sub = sub nsw i32 %186, 1
  %shl = shl i32 1, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %shl, %cond.false ]
  %187 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom202 = sext i32 %187 to i64
  %188 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps203 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %188, i32 0, i32 21
  %189 = load i32*, i32** %sign_comps203, align 8, !tbaa !18
  %arrayidx204 = getelementptr inbounds i32, i32* %189, i64 %idxprom202
  store i32 %cond, i32* %arrayidx204, align 4, !tbaa !20
  br label %if.end.209

if.else.205:                                      ; preds = %for.body.191
  %190 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom206 = sext i32 %190 to i64
  %191 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps207 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %191, i32 0, i32 21
  %192 = load i32*, i32** %sign_comps207, align 8, !tbaa !18
  %arrayidx208 = getelementptr inbounds i32, i32* %192, i64 %idxprom206
  store i32 0, i32* %arrayidx208, align 4, !tbaa !20
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.205, %cond.end
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %193 = load i32, i32* %compno, align 4, !tbaa !20
  %inc211 = add nsw i32 %193, 1
  store i32 %inc211, i32* %compno, align 4, !tbaa !20
  br label %for.cond.186

for.end.212:                                      ; preds = %for.cond.186
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.212, %if.then.184, %if.then.168, %if.then.29, %if.then.11, %if.then.7, %if.then
  %194 = bitcast i32* %rowbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32* %alpha_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %numprimcomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = load i32, i32* %retval
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define internal i32 @process_one_trunk(%struct.stream_jpxd_state_s* %state, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_jpxd_state_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %out_size = alloca i64, align 8
  %bytepp1 = alloca i32, align 4
  %bytepp = alloca i32, align 4
  %write_size = alloca i64, align 8
  %in_offset = alloca i64, align 8
  %shift_bit = alloca i32, align 4
  %img_numcomps = alloca i32, align 4
  %compno = alloca i32, align 4
  %i = alloca i64, align 8
  %b = alloca i32, align 4
  %pend = alloca i8*, align 8
  %image_total = alloca i64, align 8
  %bt = alloca i32, align 4
  %bit_pos = alloca i32, align 4
  %rowbytes = alloca i32, align 4
  %currowcnt = alloca i32, align 4
  %start_comp = alloca i32, align 4
  %y_offset = alloca i64, align 8
  %x_offset = alloca i64, align 8
  %in_offset_scaled = alloca i32, align 4
  %in_offset_scaled352 = alloca i32, align 4
  %image_total417 = alloca i64, align 8
  %compno422 = alloca i32, align 4
  %bt430 = alloca i32, align 4
  %in_offset_scaled454 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_jpxd_state_s* %state, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %0 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %limit, align 8, !tbaa !57
  %3 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !59
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %out_size, align 8, !tbaa !24
  %5 = bitcast i32* %bytepp1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %6, i32 0, i32 10
  %7 = load i32, i32* %bpp, align 4, !tbaa !47
  %div = sdiv i32 %7, 8
  store i32 %div, i32* %bytepp1, align 4, !tbaa !20
  %8 = bitcast i32* %bytepp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %9, i32 0, i32 19
  %10 = load i32, i32* %out_numcomps, align 4, !tbaa !54
  %11 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %11, i32 0, i32 10
  %12 = load i32, i32* %bpp1, align 4, !tbaa !47
  %mul = mul nsw i32 %10, %12
  %div2 = sdiv i32 %mul, 8
  store i32 %div2, i32* %bytepp, align 4, !tbaa !20
  %13 = bitcast i64* %write_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i64, i64* %out_size, align 8, !tbaa !24
  %15 = load i32, i32* %bytepp, align 4, !tbaa !20
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i64, i64* %out_size, align 8, !tbaa !24
  %17 = load i32, i32* %bytepp, align 4, !tbaa !20
  %conv = sext i32 %17 to i64
  %rem = urem i64 %16, %conv
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %rem, %cond.true ], [ 0, %cond.false ]
  %sub = sub i64 %14, %cond
  %18 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %totalbytes = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %18, i32 0, i32 15
  %19 = load i64, i64* %totalbytes, align 8, !tbaa !55
  %20 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %20, i32 0, i32 16
  %21 = load i64, i64* %out_offset, align 8, !tbaa !15
  %sub3 = sub i64 %19, %21
  %cmp = icmp ult i64 %sub, %sub3
  br i1 %cmp, label %cond.true.5, label %cond.false.14

cond.true.5:                                      ; preds = %cond.end
  %22 = load i64, i64* %out_size, align 8, !tbaa !24
  %23 = load i32, i32* %bytepp, align 4, !tbaa !20
  %tobool6 = icmp ne i32 %23, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.true.5
  %24 = load i64, i64* %out_size, align 8, !tbaa !24
  %25 = load i32, i32* %bytepp, align 4, !tbaa !20
  %conv8 = sext i32 %25 to i64
  %rem9 = urem i64 %24, %conv8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.true.5
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.7
  %cond12 = phi i64 [ %rem9, %cond.true.7 ], [ 0, %cond.false.10 ]
  %sub13 = sub i64 %22, %cond12
  br label %cond.end.18

cond.false.14:                                    ; preds = %cond.end
  %26 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %totalbytes15 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %26, i32 0, i32 15
  %27 = load i64, i64* %totalbytes15, align 8, !tbaa !55
  %28 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset16 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %28, i32 0, i32 16
  %29 = load i64, i64* %out_offset16, align 8, !tbaa !15
  %sub17 = sub i64 %27, %29
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.14, %cond.end.11
  %cond19 = phi i64 [ %sub13, %cond.end.11 ], [ %sub17, %cond.false.14 ]
  store i64 %cond19, i64* %write_size, align 8, !tbaa !24
  %30 = bitcast i64* %in_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset20 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %31, i32 0, i32 16
  %32 = load i64, i64* %out_offset20, align 8, !tbaa !15
  %mul21 = mul i64 %32, 8
  %33 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp22 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %33, i32 0, i32 10
  %34 = load i32, i32* %bpp22, align 4, !tbaa !47
  %conv23 = sext i32 %34 to i64
  %div24 = udiv i64 %mul21, %conv23
  %35 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps25 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %35, i32 0, i32 19
  %36 = load i32, i32* %out_numcomps25, align 4, !tbaa !54
  %conv26 = sext i32 %36 to i64
  %div27 = udiv i64 %div24, %conv26
  store i64 %div27, i64* %in_offset, align 8, !tbaa !24
  %37 = bitcast i32* %shift_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp28 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %38, i32 0, i32 10
  %39 = load i32, i32* %bpp28, align 4, !tbaa !47
  %40 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %40, i32 0, i32 7
  %41 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !10
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %41, i32 0, i32 6
  %42 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %42, i64 0
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx, i32 0, i32 6
  %43 = load i32, i32* %prec, align 4, !tbaa !46
  %sub29 = sub i32 %39, %43
  store i32 %sub29, i32* %shift_bit, align 4, !tbaa !20
  %44 = bitcast i32* %img_numcomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps30 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %45, i32 0, i32 19
  %46 = load i32, i32* %out_numcomps30, align 4, !tbaa !54
  %47 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image31 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %47, i32 0, i32 7
  %48 = load %struct.opj_image*, %struct.opj_image** %image31, align 8, !tbaa !10
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %48, i32 0, i32 4
  %49 = load i32, i32* %numcomps, align 4, !tbaa !37
  %cmp32 = icmp ult i32 %46, %49
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.18
  %50 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps35 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %50, i32 0, i32 19
  %51 = load i32, i32* %out_numcomps35, align 4, !tbaa !54
  br label %cond.end.39

cond.false.36:                                    ; preds = %cond.end.18
  %52 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image37 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %52, i32 0, i32 7
  %53 = load %struct.opj_image*, %struct.opj_image** %image37, align 8, !tbaa !10
  %numcomps38 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %53, i32 0, i32 4
  %54 = load i32, i32* %numcomps38, align 4, !tbaa !37
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.36, %cond.true.34
  %cond40 = phi i32 [ %51, %cond.true.34 ], [ %54, %cond.false.36 ]
  store i32 %cond40, i32* %img_numcomps, align 4, !tbaa !20
  %55 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr41 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %59, i32 0, i32 1
  %60 = load i8*, i8** %ptr41, align 8, !tbaa !59
  %61 = load i64, i64* %write_size, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %61
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %add.ptr42, i8** %pend, align 8, !tbaa !1
  %62 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp43 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %62, i32 0, i32 10
  %63 = load i32, i32* %bpp43, align 4, !tbaa !47
  %cmp44 = icmp slt i32 %63, 8
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.39
  %64 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %64, i32 0, i32 17
  %65 = load i64, i64* %img_offset, align 8, !tbaa !16
  store i64 %65, i64* %in_offset, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.39
  %66 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %66, i32 0, i32 1
  %67 = load i8*, i8** %ptr46, align 8, !tbaa !59
  %incdec.ptr = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr, i8** %ptr46, align 8, !tbaa !59
  %68 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %68, i32 0, i32 13
  %69 = load i32, i32* %alpha, align 4, !tbaa !31
  %tobool47 = icmp ne i32 %69, 0
  br i1 %tobool47, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %70 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %70, i32 0, i32 20
  %71 = load i32, i32* %alpha_comp, align 4, !tbaa !53
  %cmp48 = icmp eq i32 %71, -1
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %land.lhs.true
  %72 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr51 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %72, i32 0, i32 1
  %73 = load i8*, i8** %ptr51, align 8, !tbaa !59
  %74 = load i64, i64* %write_size, align 8, !tbaa !24
  %call = call i8* @memset(i8* %73, i32 255, i64 %74) #6
  %75 = load i64, i64* %write_size, align 8, !tbaa !24
  %76 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %76, i32 0, i32 1
  %77 = load i8*, i8** %ptr52, align 8, !tbaa !59
  %add.ptr53 = getelementptr inbounds i8, i8* %77, i64 %75
  store i8* %add.ptr53, i8** %ptr52, align 8, !tbaa !59
  br label %if.end.506

if.else:                                          ; preds = %land.lhs.true, %if.end
  %78 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %samescale = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %78, i32 0, i32 11
  %79 = load i32, i32* %samescale, align 4, !tbaa !48
  %tobool54 = icmp ne i32 %79, 0
  br i1 %tobool54, label %if.then.55, label %if.else.274

if.then.55:                                       ; preds = %if.else
  %80 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha56 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %80, i32 0, i32 13
  %81 = load i32, i32* %alpha56, align 4, !tbaa !31
  %tobool57 = icmp ne i32 %81, 0
  br i1 %tobool57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.then.55
  %82 = load i64, i64* %in_offset, align 8, !tbaa !24
  %83 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp59 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %83, i32 0, i32 20
  %84 = load i32, i32* %alpha_comp59, align 4, !tbaa !53
  %idxprom = sext i32 %84 to i64
  %85 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image60 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %85, i32 0, i32 7
  %86 = load %struct.opj_image*, %struct.opj_image** %image60, align 8, !tbaa !10
  %comps61 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %86, i32 0, i32 6
  %87 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps61, align 8, !tbaa !39
  %arrayidx62 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %87, i64 %idxprom
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx62, i32 0, i32 11
  %88 = load i32*, i32** %data, align 8, !tbaa !60
  %arrayidx63 = getelementptr inbounds i32, i32* %88, i64 %82
  %89 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %89, i32 0, i32 18
  %90 = load i32**, i32*** %pdata, align 8, !tbaa !17
  %arrayidx64 = getelementptr inbounds i32*, i32** %90, i64 0
  store i32* %arrayidx63, i32** %arrayidx64, align 8, !tbaa !1
  br label %if.end.77

if.else.65:                                       ; preds = %if.then.55
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.65
  %91 = load i32, i32* %compno, align 4, !tbaa !20
  %92 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp66 = icmp slt i32 %91, %92
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load i64, i64* %in_offset, align 8, !tbaa !24
  %94 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom68 = sext i32 %94 to i64
  %95 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image69 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %95, i32 0, i32 7
  %96 = load %struct.opj_image*, %struct.opj_image** %image69, align 8, !tbaa !10
  %comps70 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %96, i32 0, i32 6
  %97 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps70, align 8, !tbaa !39
  %arrayidx71 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %97, i64 %idxprom68
  %data72 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx71, i32 0, i32 11
  %98 = load i32*, i32** %data72, align 8, !tbaa !60
  %arrayidx73 = getelementptr inbounds i32, i32* %98, i64 %93
  %99 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom74 = sext i32 %99 to i64
  %100 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata75 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %100, i32 0, i32 18
  %101 = load i32**, i32*** %pdata75, align 8, !tbaa !17
  %arrayidx76 = getelementptr inbounds i32*, i32** %101, i64 %idxprom74
  store i32* %arrayidx73, i32** %arrayidx76, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32, i32* %compno, align 4, !tbaa !20
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %if.then.58
  %103 = load i32, i32* %shift_bit, align 4, !tbaa !20
  %cmp78 = icmp eq i32 %103, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.else.104

land.lhs.true.80:                                 ; preds = %if.end.77
  %104 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp81 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %104, i32 0, i32 10
  %105 = load i32, i32* %bpp81, align 4, !tbaa !47
  %cmp82 = icmp eq i32 %105, 8
  br i1 %cmp82, label %if.then.84, label %if.else.104

if.then.84:                                       ; preds = %land.lhs.true.80
  br label %while.cond

while.cond:                                       ; preds = %for.end.103, %if.then.84
  %106 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr85 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %106, i32 0, i32 1
  %107 = load i8*, i8** %ptr85, align 8, !tbaa !59
  %108 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp86 = icmp ult i8* %107, %108
  br i1 %cmp86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.101, %while.body
  %109 = load i32, i32* %compno, align 4, !tbaa !20
  %110 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp89 = icmp slt i32 %109, %110
  br i1 %cmp89, label %for.body.91, label %for.end.103

for.body.91:                                      ; preds = %for.cond.88
  %111 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom92 = sext i32 %111 to i64
  %112 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata93 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %112, i32 0, i32 18
  %113 = load i32**, i32*** %pdata93, align 8, !tbaa !17
  %arrayidx94 = getelementptr inbounds i32*, i32** %113, i64 %idxprom92
  %114 = load i32*, i32** %arrayidx94, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr95, i32** %arrayidx94, align 8, !tbaa !1
  %115 = load i32, i32* %114, align 4, !tbaa !20
  %116 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom96 = sext i32 %116 to i64
  %117 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %117, i32 0, i32 21
  %118 = load i32*, i32** %sign_comps, align 8, !tbaa !18
  %arrayidx97 = getelementptr inbounds i32, i32* %118, i64 %idxprom96
  %119 = load i32, i32* %arrayidx97, align 4, !tbaa !20
  %add = add nsw i32 %115, %119
  %conv98 = trunc i32 %add to i8
  %120 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr99 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %120, i32 0, i32 1
  %121 = load i8*, i8** %ptr99, align 8, !tbaa !59
  %incdec.ptr100 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr100, i8** %ptr99, align 8, !tbaa !59
  store i8 %conv98, i8* %121, align 1, !tbaa !25
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.91
  %122 = load i32, i32* %compno, align 4, !tbaa !20
  %inc102 = add nsw i32 %122, 1
  store i32 %inc102, i32* %compno, align 4, !tbaa !20
  br label %for.cond.88

for.end.103:                                      ; preds = %for.cond.88
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.273

if.else.104:                                      ; preds = %land.lhs.true.80, %if.end.77
  %123 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp105 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %123, i32 0, i32 10
  %124 = load i32, i32* %bpp105, align 4, !tbaa !47
  %rem106 = srem i32 %124, 8
  %cmp107 = icmp eq i32 %rem106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.153

if.then.109:                                      ; preds = %if.else.104
  br label %while.cond.110

while.cond.110:                                   ; preds = %for.end.151, %if.then.109
  %125 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr111 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %125, i32 0, i32 1
  %126 = load i8*, i8** %ptr111, align 8, !tbaa !59
  %127 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp112 = icmp ult i8* %126, %127
  br i1 %cmp112, label %while.body.114, label %while.end.152

while.body.114:                                   ; preds = %while.cond.110
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.149, %while.body.114
  %128 = load i32, i32* %compno, align 4, !tbaa !20
  %129 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp116 = icmp slt i32 %128, %129
  br i1 %cmp116, label %for.body.118, label %for.end.151

for.body.118:                                     ; preds = %for.cond.115
  store i32 0, i32* %b, align 4, !tbaa !20
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.142, %for.body.118
  %130 = load i32, i32* %b, align 4, !tbaa !20
  %131 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %cmp120 = icmp slt i32 %130, %131
  br i1 %cmp120, label %for.body.122, label %for.end.144

for.body.122:                                     ; preds = %for.cond.119
  %132 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom123 = sext i32 %132 to i64
  %133 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata124 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %133, i32 0, i32 18
  %134 = load i32**, i32*** %pdata124, align 8, !tbaa !17
  %arrayidx125 = getelementptr inbounds i32*, i32** %134, i64 %idxprom123
  %135 = load i32*, i32** %arrayidx125, align 8, !tbaa !1
  %136 = load i32, i32* %135, align 4, !tbaa !20
  %137 = load i32, i32* %shift_bit, align 4, !tbaa !20
  %shl = shl i32 %136, %137
  %138 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %139 = load i32, i32* %b, align 4, !tbaa !20
  %sub126 = sub nsw i32 %138, %139
  %sub127 = sub nsw i32 %sub126, 1
  %mul128 = mul nsw i32 8, %sub127
  %shr = ashr i32 %shl, %mul128
  %140 = load i32, i32* %b, align 4, !tbaa !20
  %cmp129 = icmp eq i32 %140, 0
  br i1 %cmp129, label %cond.true.131, label %cond.false.135

cond.true.131:                                    ; preds = %for.body.122
  %141 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom132 = sext i32 %141 to i64
  %142 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps133 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %142, i32 0, i32 21
  %143 = load i32*, i32** %sign_comps133, align 8, !tbaa !18
  %arrayidx134 = getelementptr inbounds i32, i32* %143, i64 %idxprom132
  %144 = load i32, i32* %arrayidx134, align 4, !tbaa !20
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.body.122
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.131
  %cond137 = phi i32 [ %144, %cond.true.131 ], [ 0, %cond.false.135 ]
  %add138 = add nsw i32 %shr, %cond137
  %conv139 = trunc i32 %add138 to i8
  %145 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr140 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %145, i32 0, i32 1
  %146 = load i8*, i8** %ptr140, align 8, !tbaa !59
  %incdec.ptr141 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr141, i8** %ptr140, align 8, !tbaa !59
  store i8 %conv139, i8* %146, align 1, !tbaa !25
  br label %for.inc.142

for.inc.142:                                      ; preds = %cond.end.136
  %147 = load i32, i32* %b, align 4, !tbaa !20
  %inc143 = add nsw i32 %147, 1
  store i32 %inc143, i32* %b, align 4, !tbaa !20
  br label %for.cond.119

for.end.144:                                      ; preds = %for.cond.119
  %148 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom145 = sext i32 %148 to i64
  %149 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata146 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %149, i32 0, i32 18
  %150 = load i32**, i32*** %pdata146, align 8, !tbaa !17
  %arrayidx147 = getelementptr inbounds i32*, i32** %150, i64 %idxprom145
  %151 = load i32*, i32** %arrayidx147, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %incdec.ptr148, i32** %arrayidx147, align 8, !tbaa !1
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.144
  %152 = load i32, i32* %compno, align 4, !tbaa !20
  %inc150 = add nsw i32 %152, 1
  store i32 %inc150, i32* %compno, align 4, !tbaa !20
  br label %for.cond.115

for.end.151:                                      ; preds = %for.cond.115
  br label %while.cond.110

while.end.152:                                    ; preds = %while.cond.110
  br label %if.end.272

if.else.153:                                      ; preds = %if.else.104
  %153 = bitcast i64* %image_total to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #2
  %154 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %154, i32 0, i32 8
  %155 = load i32, i32* %width, align 4, !tbaa !43
  %156 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %156, i32 0, i32 9
  %157 = load i32, i32* %height, align 4, !tbaa !45
  %mul154 = mul nsw i32 %155, %157
  %conv155 = sext i32 %mul154 to i64
  store i64 %conv155, i64* %image_total, align 8, !tbaa !24
  %158 = bitcast i32* %bt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #2
  store i32 0, i32* %bt, align 4, !tbaa !20
  %159 = bitcast i32* %bit_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #2
  store i32 0, i32* %bit_pos, align 4, !tbaa !20
  %160 = bitcast i32* %rowbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #2
  %161 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width156 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %161, i32 0, i32 8
  %162 = load i32, i32* %width156, align 4, !tbaa !43
  %163 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp157 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %163, i32 0, i32 10
  %164 = load i32, i32* %bpp157, align 4, !tbaa !47
  %mul158 = mul nsw i32 %162, %164
  %165 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps159 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %165, i32 0, i32 19
  %166 = load i32, i32* %out_numcomps159, align 4, !tbaa !54
  %mul160 = mul nsw i32 %mul158, %166
  %add161 = add nsw i32 %mul160, 7
  %div162 = sdiv i32 %add161, 8
  store i32 %div162, i32* %rowbytes, align 4, !tbaa !20
  %167 = bitcast i32* %currowcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #2
  %168 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset163 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %168, i32 0, i32 16
  %169 = load i64, i64* %out_offset163, align 8, !tbaa !15
  %170 = load i32, i32* %rowbytes, align 4, !tbaa !20
  %conv164 = sext i32 %170 to i64
  %rem165 = urem i64 %169, %conv164
  %conv166 = trunc i64 %rem165 to i32
  store i32 %conv166, i32* %currowcnt, align 4, !tbaa !20
  %171 = bitcast i32* %start_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #2
  %172 = load i32, i32* %currowcnt, align 4, !tbaa !20
  %mul167 = mul nsw i32 %172, 8
  %173 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %rem168 = srem i32 %mul167, %173
  store i32 %rem168, i32* %start_comp, align 4, !tbaa !20
  %174 = load i32, i32* %start_comp, align 4, !tbaa !20
  %cmp169 = icmp ne i32 %174, 0
  br i1 %cmp169, label %if.then.171, label %if.end.209

if.then.171:                                      ; preds = %if.else.153
  %175 = load i32, i32* %start_comp, align 4, !tbaa !20
  store i32 %175, i32* %compno, align 4, !tbaa !20
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.206, %if.then.171
  %176 = load i32, i32* %compno, align 4, !tbaa !20
  %177 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp173 = icmp slt i32 %176, %177
  br i1 %cmp173, label %for.body.175, label %for.end.208

for.body.175:                                     ; preds = %for.cond.172
  %178 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset176 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %178, i32 0, i32 17
  %179 = load i64, i64* %img_offset176, align 8, !tbaa !16
  %180 = load i64, i64* %image_total, align 8, !tbaa !24
  %cmp177 = icmp ult i64 %179, %180
  br i1 %cmp177, label %if.then.179, label %if.end.191

if.then.179:                                      ; preds = %for.body.175
  %181 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp180 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %181, i32 0, i32 10
  %182 = load i32, i32* %bpp180, align 4, !tbaa !47
  %183 = load i32, i32* %bt, align 4, !tbaa !20
  %shl181 = shl i32 %183, %182
  store i32 %shl181, i32* %bt, align 4, !tbaa !20
  %184 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom182 = sext i32 %184 to i64
  %185 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata183 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %185, i32 0, i32 18
  %186 = load i32**, i32*** %pdata183, align 8, !tbaa !17
  %arrayidx184 = getelementptr inbounds i32*, i32** %186, i64 %idxprom182
  %187 = load i32*, i32** %arrayidx184, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i32, i32* %187, i64 -1
  %188 = load i32, i32* %add.ptr185, align 4, !tbaa !20
  %189 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom186 = sext i32 %189 to i64
  %190 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps187 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %190, i32 0, i32 21
  %191 = load i32*, i32** %sign_comps187, align 8, !tbaa !18
  %arrayidx188 = getelementptr inbounds i32, i32* %191, i64 %idxprom186
  %192 = load i32, i32* %arrayidx188, align 4, !tbaa !20
  %add189 = add nsw i32 %188, %192
  %193 = load i32, i32* %bt, align 4, !tbaa !20
  %add190 = add nsw i32 %193, %add189
  store i32 %add190, i32* %bt, align 4, !tbaa !20
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.179, %for.body.175
  %194 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp192 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %194, i32 0, i32 10
  %195 = load i32, i32* %bpp192, align 4, !tbaa !47
  %196 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %add193 = add nsw i32 %196, %195
  store i32 %add193, i32* %bit_pos, align 4, !tbaa !20
  %197 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %cmp194 = icmp sge i32 %197, 8
  br i1 %cmp194, label %if.then.196, label %if.end.205

if.then.196:                                      ; preds = %if.end.191
  %198 = load i32, i32* %bt, align 4, !tbaa !20
  %199 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sub197 = sub nsw i32 %199, 8
  %shr198 = ashr i32 %198, %sub197
  %conv199 = trunc i32 %shr198 to i8
  %200 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr200 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %200, i32 0, i32 1
  %201 = load i8*, i8** %ptr200, align 8, !tbaa !59
  %incdec.ptr201 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr201, i8** %ptr200, align 8, !tbaa !59
  store i8 %conv199, i8* %201, align 1, !tbaa !25
  %202 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sub202 = sub nsw i32 %202, 8
  store i32 %sub202, i32* %bit_pos, align 4, !tbaa !20
  %203 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %shl203 = shl i32 1, %203
  %sub204 = sub nsw i32 %shl203, 1
  %204 = load i32, i32* %bt, align 4, !tbaa !20
  %and = and i32 %204, %sub204
  store i32 %and, i32* %bt, align 4, !tbaa !20
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.196, %if.end.191
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205
  %205 = load i32, i32* %compno, align 4, !tbaa !20
  %inc207 = add nsw i32 %205, 1
  store i32 %inc207, i32* %compno, align 4, !tbaa !20
  br label %for.cond.172

for.end.208:                                      ; preds = %for.cond.172
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %if.else.153
  br label %while.cond.210

while.cond.210:                                   ; preds = %if.end.270, %if.end.209
  %206 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr211 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %206, i32 0, i32 1
  %207 = load i8*, i8** %ptr211, align 8, !tbaa !59
  %208 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp212 = icmp ult i8* %207, %208
  br i1 %cmp212, label %while.body.214, label %while.end.271

while.body.214:                                   ; preds = %while.cond.210
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.250, %while.body.214
  %209 = load i32, i32* %compno, align 4, !tbaa !20
  %210 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp216 = icmp slt i32 %209, %210
  br i1 %cmp216, label %for.body.218, label %for.end.252

for.body.218:                                     ; preds = %for.cond.215
  %211 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset219 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %211, i32 0, i32 17
  %212 = load i64, i64* %img_offset219, align 8, !tbaa !16
  %213 = load i64, i64* %image_total, align 8, !tbaa !24
  %cmp220 = icmp ult i64 %212, %213
  br i1 %cmp220, label %if.then.222, label %if.end.234

if.then.222:                                      ; preds = %for.body.218
  %214 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp223 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %214, i32 0, i32 10
  %215 = load i32, i32* %bpp223, align 4, !tbaa !47
  %216 = load i32, i32* %bt, align 4, !tbaa !20
  %shl224 = shl i32 %216, %215
  store i32 %shl224, i32* %bt, align 4, !tbaa !20
  %217 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom225 = sext i32 %217 to i64
  %218 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %pdata226 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %218, i32 0, i32 18
  %219 = load i32**, i32*** %pdata226, align 8, !tbaa !17
  %arrayidx227 = getelementptr inbounds i32*, i32** %219, i64 %idxprom225
  %220 = load i32*, i32** %arrayidx227, align 8, !tbaa !1
  %incdec.ptr228 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %incdec.ptr228, i32** %arrayidx227, align 8, !tbaa !1
  %221 = load i32, i32* %220, align 4, !tbaa !20
  %222 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom229 = sext i32 %222 to i64
  %223 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps230 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %223, i32 0, i32 21
  %224 = load i32*, i32** %sign_comps230, align 8, !tbaa !18
  %arrayidx231 = getelementptr inbounds i32, i32* %224, i64 %idxprom229
  %225 = load i32, i32* %arrayidx231, align 4, !tbaa !20
  %add232 = add nsw i32 %221, %225
  %226 = load i32, i32* %bt, align 4, !tbaa !20
  %add233 = add nsw i32 %226, %add232
  store i32 %add233, i32* %bt, align 4, !tbaa !20
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.222, %for.body.218
  %227 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp235 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %227, i32 0, i32 10
  %228 = load i32, i32* %bpp235, align 4, !tbaa !47
  %229 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %add236 = add nsw i32 %229, %228
  store i32 %add236, i32* %bit_pos, align 4, !tbaa !20
  %230 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %cmp237 = icmp sge i32 %230, 8
  br i1 %cmp237, label %if.then.239, label %if.end.249

if.then.239:                                      ; preds = %if.end.234
  %231 = load i32, i32* %bt, align 4, !tbaa !20
  %232 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sub240 = sub nsw i32 %232, 8
  %shr241 = ashr i32 %231, %sub240
  %conv242 = trunc i32 %shr241 to i8
  %233 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr243 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %233, i32 0, i32 1
  %234 = load i8*, i8** %ptr243, align 8, !tbaa !59
  %incdec.ptr244 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr244, i8** %ptr243, align 8, !tbaa !59
  store i8 %conv242, i8* %234, align 1, !tbaa !25
  %235 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sub245 = sub nsw i32 %235, 8
  store i32 %sub245, i32* %bit_pos, align 4, !tbaa !20
  %236 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %shl246 = shl i32 1, %236
  %sub247 = sub nsw i32 %shl246, 1
  %237 = load i32, i32* %bt, align 4, !tbaa !20
  %and248 = and i32 %237, %sub247
  store i32 %and248, i32* %bt, align 4, !tbaa !20
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.239, %if.end.234
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249
  %238 = load i32, i32* %compno, align 4, !tbaa !20
  %inc251 = add nsw i32 %238, 1
  store i32 %inc251, i32* %compno, align 4, !tbaa !20
  br label %for.cond.215

for.end.252:                                      ; preds = %for.cond.215
  %239 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset253 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %239, i32 0, i32 17
  %240 = load i64, i64* %img_offset253, align 8, !tbaa !16
  %inc254 = add i64 %240, 1
  store i64 %inc254, i64* %img_offset253, align 8, !tbaa !16
  %241 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %cmp255 = icmp ne i32 %241, 0
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.270

land.lhs.true.257:                                ; preds = %for.end.252
  %242 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset258 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %242, i32 0, i32 17
  %243 = load i64, i64* %img_offset258, align 8, !tbaa !16
  %244 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width259 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %244, i32 0, i32 8
  %245 = load i32, i32* %width259, align 4, !tbaa !43
  %conv260 = sext i32 %245 to i64
  %rem261 = urem i64 %243, %conv260
  %cmp262 = icmp eq i64 %rem261, 0
  br i1 %cmp262, label %if.then.264, label %if.end.270

if.then.264:                                      ; preds = %land.lhs.true.257
  %246 = load i32, i32* %bt, align 4, !tbaa !20
  %247 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sub265 = sub nsw i32 8, %247
  %shl266 = shl i32 %246, %sub265
  %conv267 = trunc i32 %shl266 to i8
  %248 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr268 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %248, i32 0, i32 1
  %249 = load i8*, i8** %ptr268, align 8, !tbaa !59
  %incdec.ptr269 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr269, i8** %ptr268, align 8, !tbaa !59
  store i8 %conv267, i8* %249, align 1, !tbaa !25
  store i32 0, i32* %bit_pos, align 4, !tbaa !20
  store i32 0, i32* %bt, align 4, !tbaa !20
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.264, %land.lhs.true.257, %for.end.252
  br label %while.cond.210

while.end.271:                                    ; preds = %while.cond.210
  %250 = bitcast i32* %start_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  %251 = bitcast i32* %currowcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %252 = bitcast i32* %rowbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #2
  %253 = bitcast i32* %bit_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i32* %bt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  %255 = bitcast i64* %image_total to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #2
  br label %if.end.272

if.end.272:                                       ; preds = %while.end.271, %while.end.152
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %while.end
  br label %if.end.505

if.else.274:                                      ; preds = %if.else
  %256 = bitcast i64* %y_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #2
  %257 = load i64, i64* %in_offset, align 8, !tbaa !24
  %258 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width275 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %258, i32 0, i32 8
  %259 = load i32, i32* %width275, align 4, !tbaa !43
  %conv276 = sext i32 %259 to i64
  %div277 = udiv i64 %257, %conv276
  store i64 %div277, i64* %y_offset, align 8, !tbaa !24
  %260 = bitcast i64* %x_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #2
  %261 = load i64, i64* %in_offset, align 8, !tbaa !24
  %262 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width278 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %262, i32 0, i32 8
  %263 = load i32, i32* %width278, align 4, !tbaa !43
  %conv279 = sext i32 %263 to i64
  %rem280 = urem i64 %261, %conv279
  store i64 %rem280, i64* %x_offset, align 8, !tbaa !24
  br label %while.cond.281

while.cond.281:                                   ; preds = %if.end.503, %if.else.274
  %264 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr282 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %264, i32 0, i32 1
  %265 = load i8*, i8** %ptr282, align 8, !tbaa !59
  %266 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp283 = icmp ult i8* %265, %266
  br i1 %cmp283, label %while.body.285, label %while.end.504

while.body.285:                                   ; preds = %while.cond.281
  %267 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp286 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %267, i32 0, i32 10
  %268 = load i32, i32* %bpp286, align 4, !tbaa !47
  %rem287 = srem i32 %268, 8
  %cmp288 = icmp eq i32 %rem287, 0
  br i1 %cmp288, label %if.then.290, label %if.else.416

if.then.290:                                      ; preds = %while.body.285
  %269 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha291 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %269, i32 0, i32 13
  %270 = load i32, i32* %alpha291, align 4, !tbaa !31
  %tobool292 = icmp ne i32 %270, 0
  br i1 %tobool292, label %if.then.293, label %if.else.347

if.then.293:                                      ; preds = %if.then.290
  %271 = bitcast i32* %in_offset_scaled to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #2
  %272 = load i64, i64* %y_offset, align 8, !tbaa !24
  %273 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp294 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %273, i32 0, i32 20
  %274 = load i32, i32* %alpha_comp294, align 4, !tbaa !53
  %idxprom295 = sext i32 %274 to i64
  %275 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image296 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %275, i32 0, i32 7
  %276 = load %struct.opj_image*, %struct.opj_image** %image296, align 8, !tbaa !10
  %comps297 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %276, i32 0, i32 6
  %277 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps297, align 8, !tbaa !39
  %arrayidx298 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %277, i64 %idxprom295
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx298, i32 0, i32 1
  %278 = load i32, i32* %dy, align 4, !tbaa !50
  %conv299 = zext i32 %278 to i64
  %div300 = udiv i64 %272, %conv299
  %279 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width301 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %279, i32 0, i32 8
  %280 = load i32, i32* %width301, align 4, !tbaa !43
  %conv302 = sext i32 %280 to i64
  %mul303 = mul i64 %div300, %conv302
  %281 = load i64, i64* %x_offset, align 8, !tbaa !24
  %add304 = add i64 %mul303, %281
  %282 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp305 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %282, i32 0, i32 20
  %283 = load i32, i32* %alpha_comp305, align 4, !tbaa !53
  %idxprom306 = sext i32 %283 to i64
  %284 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image307 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %284, i32 0, i32 7
  %285 = load %struct.opj_image*, %struct.opj_image** %image307, align 8, !tbaa !10
  %comps308 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %285, i32 0, i32 6
  %286 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps308, align 8, !tbaa !39
  %arrayidx309 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %286, i64 %idxprom306
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx309, i32 0, i32 0
  %287 = load i32, i32* %dx, align 4, !tbaa !49
  %conv310 = zext i32 %287 to i64
  %div311 = udiv i64 %add304, %conv310
  %conv312 = trunc i64 %div311 to i32
  store i32 %conv312, i32* %in_offset_scaled, align 4, !tbaa !20
  store i32 0, i32* %b, align 4, !tbaa !20
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.344, %if.then.293
  %288 = load i32, i32* %b, align 4, !tbaa !20
  %289 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %cmp314 = icmp slt i32 %288, %289
  br i1 %cmp314, label %for.body.316, label %for.end.346

for.body.316:                                     ; preds = %for.cond.313
  %290 = load i32, i32* %in_offset_scaled, align 4, !tbaa !20
  %idxprom317 = sext i32 %290 to i64
  %291 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp318 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %291, i32 0, i32 20
  %292 = load i32, i32* %alpha_comp318, align 4, !tbaa !53
  %idxprom319 = sext i32 %292 to i64
  %293 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image320 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %293, i32 0, i32 7
  %294 = load %struct.opj_image*, %struct.opj_image** %image320, align 8, !tbaa !10
  %comps321 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %294, i32 0, i32 6
  %295 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps321, align 8, !tbaa !39
  %arrayidx322 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %295, i64 %idxprom319
  %data323 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx322, i32 0, i32 11
  %296 = load i32*, i32** %data323, align 8, !tbaa !60
  %arrayidx324 = getelementptr inbounds i32, i32* %296, i64 %idxprom317
  %297 = load i32, i32* %arrayidx324, align 4, !tbaa !20
  %298 = load i32, i32* %shift_bit, align 4, !tbaa !20
  %shl325 = shl i32 %297, %298
  %299 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %300 = load i32, i32* %b, align 4, !tbaa !20
  %sub326 = sub nsw i32 %299, %300
  %sub327 = sub nsw i32 %sub326, 1
  %mul328 = mul nsw i32 8, %sub327
  %shr329 = ashr i32 %shl325, %mul328
  %301 = load i32, i32* %b, align 4, !tbaa !20
  %cmp330 = icmp eq i32 %301, 0
  br i1 %cmp330, label %cond.true.332, label %cond.false.337

cond.true.332:                                    ; preds = %for.body.316
  %302 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp333 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %302, i32 0, i32 20
  %303 = load i32, i32* %alpha_comp333, align 4, !tbaa !53
  %idxprom334 = sext i32 %303 to i64
  %304 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps335 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %304, i32 0, i32 21
  %305 = load i32*, i32** %sign_comps335, align 8, !tbaa !18
  %arrayidx336 = getelementptr inbounds i32, i32* %305, i64 %idxprom334
  %306 = load i32, i32* %arrayidx336, align 4, !tbaa !20
  br label %cond.end.338

cond.false.337:                                   ; preds = %for.body.316
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.337, %cond.true.332
  %cond339 = phi i32 [ %306, %cond.true.332 ], [ 0, %cond.false.337 ]
  %add340 = add nsw i32 %shr329, %cond339
  %conv341 = trunc i32 %add340 to i8
  %307 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr342 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %307, i32 0, i32 1
  %308 = load i8*, i8** %ptr342, align 8, !tbaa !59
  %incdec.ptr343 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr343, i8** %ptr342, align 8, !tbaa !59
  store i8 %conv341, i8* %308, align 1, !tbaa !25
  br label %for.inc.344

for.inc.344:                                      ; preds = %cond.end.338
  %309 = load i32, i32* %b, align 4, !tbaa !20
  %inc345 = add nsw i32 %309, 1
  store i32 %inc345, i32* %b, align 4, !tbaa !20
  br label %for.cond.313

for.end.346:                                      ; preds = %for.cond.313
  %310 = bitcast i32* %in_offset_scaled to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  br label %if.end.407

if.else.347:                                      ; preds = %if.then.290
  store i32 0, i32* %compno, align 4, !tbaa !20
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.404, %if.else.347
  %311 = load i32, i32* %compno, align 4, !tbaa !20
  %312 = load i32, i32* %img_numcomps, align 4, !tbaa !20
  %cmp349 = icmp slt i32 %311, %312
  br i1 %cmp349, label %for.body.351, label %for.end.406

for.body.351:                                     ; preds = %for.cond.348
  %313 = bitcast i32* %in_offset_scaled352 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %313) #2
  %314 = load i64, i64* %y_offset, align 8, !tbaa !24
  %315 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom353 = sext i32 %315 to i64
  %316 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image354 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %316, i32 0, i32 7
  %317 = load %struct.opj_image*, %struct.opj_image** %image354, align 8, !tbaa !10
  %comps355 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %317, i32 0, i32 6
  %318 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps355, align 8, !tbaa !39
  %arrayidx356 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %318, i64 %idxprom353
  %dy357 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx356, i32 0, i32 1
  %319 = load i32, i32* %dy357, align 4, !tbaa !50
  %conv358 = zext i32 %319 to i64
  %div359 = udiv i64 %314, %conv358
  %320 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width360 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %320, i32 0, i32 8
  %321 = load i32, i32* %width360, align 4, !tbaa !43
  %conv361 = sext i32 %321 to i64
  %mul362 = mul i64 %div359, %conv361
  %322 = load i64, i64* %x_offset, align 8, !tbaa !24
  %add363 = add i64 %mul362, %322
  %323 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom364 = sext i32 %323 to i64
  %324 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image365 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %324, i32 0, i32 7
  %325 = load %struct.opj_image*, %struct.opj_image** %image365, align 8, !tbaa !10
  %comps366 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %325, i32 0, i32 6
  %326 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps366, align 8, !tbaa !39
  %arrayidx367 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %326, i64 %idxprom364
  %dx368 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx367, i32 0, i32 0
  %327 = load i32, i32* %dx368, align 4, !tbaa !49
  %conv369 = zext i32 %327 to i64
  %div370 = udiv i64 %add363, %conv369
  %conv371 = trunc i64 %div370 to i32
  store i32 %conv371, i32* %in_offset_scaled352, align 4, !tbaa !20
  store i32 0, i32* %b, align 4, !tbaa !20
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.401, %for.body.351
  %328 = load i32, i32* %b, align 4, !tbaa !20
  %329 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %cmp373 = icmp slt i32 %328, %329
  br i1 %cmp373, label %for.body.375, label %for.end.403

for.body.375:                                     ; preds = %for.cond.372
  %330 = load i32, i32* %in_offset_scaled352, align 4, !tbaa !20
  %idxprom376 = sext i32 %330 to i64
  %331 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom377 = sext i32 %331 to i64
  %332 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image378 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %332, i32 0, i32 7
  %333 = load %struct.opj_image*, %struct.opj_image** %image378, align 8, !tbaa !10
  %comps379 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %333, i32 0, i32 6
  %334 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps379, align 8, !tbaa !39
  %arrayidx380 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %334, i64 %idxprom377
  %data381 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx380, i32 0, i32 11
  %335 = load i32*, i32** %data381, align 8, !tbaa !60
  %arrayidx382 = getelementptr inbounds i32, i32* %335, i64 %idxprom376
  %336 = load i32, i32* %arrayidx382, align 4, !tbaa !20
  %337 = load i32, i32* %shift_bit, align 4, !tbaa !20
  %shl383 = shl i32 %336, %337
  %338 = load i32, i32* %bytepp1, align 4, !tbaa !20
  %339 = load i32, i32* %b, align 4, !tbaa !20
  %sub384 = sub nsw i32 %338, %339
  %sub385 = sub nsw i32 %sub384, 1
  %mul386 = mul nsw i32 8, %sub385
  %shr387 = ashr i32 %shl383, %mul386
  %340 = load i32, i32* %b, align 4, !tbaa !20
  %cmp388 = icmp eq i32 %340, 0
  br i1 %cmp388, label %cond.true.390, label %cond.false.394

cond.true.390:                                    ; preds = %for.body.375
  %341 = load i32, i32* %compno, align 4, !tbaa !20
  %idxprom391 = sext i32 %341 to i64
  %342 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps392 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %342, i32 0, i32 21
  %343 = load i32*, i32** %sign_comps392, align 8, !tbaa !18
  %arrayidx393 = getelementptr inbounds i32, i32* %343, i64 %idxprom391
  %344 = load i32, i32* %arrayidx393, align 4, !tbaa !20
  br label %cond.end.395

cond.false.394:                                   ; preds = %for.body.375
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.394, %cond.true.390
  %cond396 = phi i32 [ %344, %cond.true.390 ], [ 0, %cond.false.394 ]
  %add397 = add nsw i32 %shr387, %cond396
  %conv398 = trunc i32 %add397 to i8
  %345 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr399 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %345, i32 0, i32 1
  %346 = load i8*, i8** %ptr399, align 8, !tbaa !59
  %incdec.ptr400 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %incdec.ptr400, i8** %ptr399, align 8, !tbaa !59
  store i8 %conv398, i8* %346, align 1, !tbaa !25
  br label %for.inc.401

for.inc.401:                                      ; preds = %cond.end.395
  %347 = load i32, i32* %b, align 4, !tbaa !20
  %inc402 = add nsw i32 %347, 1
  store i32 %inc402, i32* %b, align 4, !tbaa !20
  br label %for.cond.372

for.end.403:                                      ; preds = %for.cond.372
  %348 = bitcast i32* %in_offset_scaled352 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #2
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.end.403
  %349 = load i32, i32* %compno, align 4, !tbaa !20
  %inc405 = add nsw i32 %349, 1
  store i32 %inc405, i32* %compno, align 4, !tbaa !20
  br label %for.cond.348

for.end.406:                                      ; preds = %for.cond.348
  br label %if.end.407

if.end.407:                                       ; preds = %for.end.406, %for.end.346
  %350 = load i64, i64* %x_offset, align 8, !tbaa !24
  %inc408 = add i64 %350, 1
  store i64 %inc408, i64* %x_offset, align 8, !tbaa !24
  %351 = load i64, i64* %x_offset, align 8, !tbaa !24
  %352 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width409 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %352, i32 0, i32 8
  %353 = load i32, i32* %width409, align 4, !tbaa !43
  %conv410 = sext i32 %353 to i64
  %cmp411 = icmp uge i64 %351, %conv410
  br i1 %cmp411, label %if.then.413, label %if.end.415

if.then.413:                                      ; preds = %if.end.407
  %354 = load i64, i64* %y_offset, align 8, !tbaa !24
  %inc414 = add i64 %354, 1
  store i64 %inc414, i64* %y_offset, align 8, !tbaa !24
  store i64 0, i64* %x_offset, align 8, !tbaa !24
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.413, %if.end.407
  br label %if.end.503

if.else.416:                                      ; preds = %while.body.285
  %355 = bitcast i64* %image_total417 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %355) #2
  %356 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width418 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %356, i32 0, i32 8
  %357 = load i32, i32* %width418, align 4, !tbaa !43
  %358 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height419 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %358, i32 0, i32 9
  %359 = load i32, i32* %height419, align 4, !tbaa !45
  %mul420 = mul nsw i32 %357, %359
  %conv421 = sext i32 %mul420 to i64
  store i64 %conv421, i64* %image_total417, align 8, !tbaa !24
  %360 = bitcast i32* %compno422 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %360) #2
  %361 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha423 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %361, i32 0, i32 13
  %362 = load i32, i32* %alpha423, align 4, !tbaa !31
  %tobool424 = icmp ne i32 %362, 0
  br i1 %tobool424, label %cond.true.425, label %cond.false.427

cond.true.425:                                    ; preds = %if.else.416
  %363 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %alpha_comp426 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %363, i32 0, i32 20
  %364 = load i32, i32* %alpha_comp426, align 4, !tbaa !53
  br label %cond.end.428

cond.false.427:                                   ; preds = %if.else.416
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.427, %cond.true.425
  %cond429 = phi i32 [ %364, %cond.true.425 ], [ 0, %cond.false.427 ]
  store i32 %cond429, i32* %compno422, align 4, !tbaa !20
  %365 = bitcast i32* %bt430 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %365) #2
  store i32 0, i32* %bt430, align 4, !tbaa !20
  store i64 0, i64* %i, align 8, !tbaa !24
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.497, %cond.end.428
  %366 = load i64, i64* %i, align 8, !tbaa !24
  %367 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp432 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %367, i32 0, i32 10
  %368 = load i32, i32* %bpp432, align 4, !tbaa !47
  %div433 = sdiv i32 8, %368
  %conv434 = sext i32 %div433 to i64
  %cmp435 = icmp ult i64 %366, %conv434
  br i1 %cmp435, label %for.body.437, label %for.end.499

for.body.437:                                     ; preds = %for.cond.431
  %369 = load i32, i32* %bt430, align 4, !tbaa !20
  %370 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %bpp438 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %370, i32 0, i32 10
  %371 = load i32, i32* %bpp438, align 4, !tbaa !47
  %shl439 = shl i32 %369, %371
  store i32 %shl439, i32* %bt430, align 4, !tbaa !20
  %372 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset440 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %372, i32 0, i32 17
  %373 = load i64, i64* %img_offset440, align 8, !tbaa !16
  %374 = load i64, i64* %image_total417, align 8, !tbaa !24
  %cmp441 = icmp ult i64 %373, %374
  br i1 %cmp441, label %land.lhs.true.443, label %if.end.496

land.lhs.true.443:                                ; preds = %for.body.437
  %375 = load i64, i64* %i, align 8, !tbaa !24
  %cmp444 = icmp ne i64 %375, 0
  br i1 %cmp444, label %land.lhs.true.446, label %if.then.453

land.lhs.true.446:                                ; preds = %land.lhs.true.443
  %376 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset447 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %376, i32 0, i32 17
  %377 = load i64, i64* %img_offset447, align 8, !tbaa !16
  %378 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width448 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %378, i32 0, i32 8
  %379 = load i32, i32* %width448, align 4, !tbaa !43
  %conv449 = sext i32 %379 to i64
  %rem450 = urem i64 %377, %conv449
  %cmp451 = icmp eq i64 %rem450, 0
  br i1 %cmp451, label %if.end.496, label %if.then.453

if.then.453:                                      ; preds = %land.lhs.true.446, %land.lhs.true.443
  %380 = bitcast i32* %in_offset_scaled454 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #2
  %381 = load i64, i64* %y_offset, align 8, !tbaa !24
  %382 = load i32, i32* %compno422, align 4, !tbaa !20
  %idxprom455 = sext i32 %382 to i64
  %383 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image456 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %383, i32 0, i32 7
  %384 = load %struct.opj_image*, %struct.opj_image** %image456, align 8, !tbaa !10
  %comps457 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %384, i32 0, i32 6
  %385 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps457, align 8, !tbaa !39
  %arrayidx458 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %385, i64 %idxprom455
  %dy459 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx458, i32 0, i32 1
  %386 = load i32, i32* %dy459, align 4, !tbaa !50
  %conv460 = zext i32 %386 to i64
  %div461 = udiv i64 %381, %conv460
  %387 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width462 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %387, i32 0, i32 8
  %388 = load i32, i32* %width462, align 4, !tbaa !43
  %conv463 = sext i32 %388 to i64
  %mul464 = mul i64 %div461, %conv463
  %389 = load i64, i64* %x_offset, align 8, !tbaa !24
  %add465 = add i64 %mul464, %389
  %390 = load i32, i32* %compno422, align 4, !tbaa !20
  %idxprom466 = sext i32 %390 to i64
  %391 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image467 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %391, i32 0, i32 7
  %392 = load %struct.opj_image*, %struct.opj_image** %image467, align 8, !tbaa !10
  %comps468 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %392, i32 0, i32 6
  %393 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps468, align 8, !tbaa !39
  %arrayidx469 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %393, i64 %idxprom466
  %dx470 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx469, i32 0, i32 0
  %394 = load i32, i32* %dx470, align 4, !tbaa !49
  %conv471 = zext i32 %394 to i64
  %div472 = udiv i64 %add465, %conv471
  %conv473 = trunc i64 %div472 to i32
  store i32 %conv473, i32* %in_offset_scaled454, align 4, !tbaa !20
  %395 = load i32, i32* %in_offset_scaled454, align 4, !tbaa !20
  %idxprom474 = sext i32 %395 to i64
  %396 = load i32, i32* %compno422, align 4, !tbaa !20
  %idxprom475 = sext i32 %396 to i64
  %397 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image476 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %397, i32 0, i32 7
  %398 = load %struct.opj_image*, %struct.opj_image** %image476, align 8, !tbaa !10
  %comps477 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %398, i32 0, i32 6
  %399 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps477, align 8, !tbaa !39
  %arrayidx478 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %399, i64 %idxprom475
  %data479 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx478, i32 0, i32 11
  %400 = load i32*, i32** %data479, align 8, !tbaa !60
  %arrayidx480 = getelementptr inbounds i32, i32* %400, i64 %idxprom474
  %401 = load i32, i32* %arrayidx480, align 4, !tbaa !20
  %402 = load i32, i32* %compno422, align 4, !tbaa !20
  %idxprom481 = sext i32 %402 to i64
  %403 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %sign_comps482 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %403, i32 0, i32 21
  %404 = load i32*, i32** %sign_comps482, align 8, !tbaa !18
  %arrayidx483 = getelementptr inbounds i32, i32* %404, i64 %idxprom481
  %405 = load i32, i32* %arrayidx483, align 4, !tbaa !20
  %add484 = add nsw i32 %401, %405
  %406 = load i32, i32* %bt430, align 4, !tbaa !20
  %add485 = add nsw i32 %406, %add484
  store i32 %add485, i32* %bt430, align 4, !tbaa !20
  %407 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %img_offset486 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %407, i32 0, i32 17
  %408 = load i64, i64* %img_offset486, align 8, !tbaa !16
  %inc487 = add i64 %408, 1
  store i64 %inc487, i64* %img_offset486, align 8, !tbaa !16
  %409 = load i64, i64* %x_offset, align 8, !tbaa !24
  %inc488 = add i64 %409, 1
  store i64 %inc488, i64* %x_offset, align 8, !tbaa !24
  %410 = load i64, i64* %x_offset, align 8, !tbaa !24
  %411 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width489 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %411, i32 0, i32 8
  %412 = load i32, i32* %width489, align 4, !tbaa !43
  %conv490 = sext i32 %412 to i64
  %cmp491 = icmp uge i64 %410, %conv490
  br i1 %cmp491, label %if.then.493, label %if.end.495

if.then.493:                                      ; preds = %if.then.453
  %413 = load i64, i64* %y_offset, align 8, !tbaa !24
  %inc494 = add i64 %413, 1
  store i64 %inc494, i64* %y_offset, align 8, !tbaa !24
  store i64 0, i64* %x_offset, align 8, !tbaa !24
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.493, %if.then.453
  %414 = bitcast i32* %in_offset_scaled454 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #2
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %land.lhs.true.446, %for.body.437
  br label %for.inc.497

for.inc.497:                                      ; preds = %if.end.496
  %415 = load i64, i64* %i, align 8, !tbaa !24
  %inc498 = add i64 %415, 1
  store i64 %inc498, i64* %i, align 8, !tbaa !24
  br label %for.cond.431

for.end.499:                                      ; preds = %for.cond.431
  %416 = load i32, i32* %bt430, align 4, !tbaa !20
  %conv500 = trunc i32 %416 to i8
  %417 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr501 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %417, i32 0, i32 1
  %418 = load i8*, i8** %ptr501, align 8, !tbaa !59
  %incdec.ptr502 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %incdec.ptr502, i8** %ptr501, align 8, !tbaa !59
  store i8 %conv500, i8* %418, align 1, !tbaa !25
  %419 = bitcast i32* %bt430 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #2
  %420 = bitcast i32* %compno422 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #2
  %421 = bitcast i64* %image_total417 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #2
  br label %if.end.503

if.end.503:                                       ; preds = %for.end.499, %if.end.415
  br label %while.cond.281

while.end.504:                                    ; preds = %while.cond.281
  %422 = bitcast i64* %x_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #2
  %423 = bitcast i64* %y_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #2
  br label %if.end.505

if.end.505:                                       ; preds = %while.end.504, %if.end.273
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.50
  %424 = load i64, i64* %write_size, align 8, !tbaa !24
  %425 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset507 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %425, i32 0, i32 16
  %426 = load i64, i64* %out_offset507, align 8, !tbaa !15
  %add508 = add i64 %426, %424
  store i64 %add508, i64* %out_offset507, align 8, !tbaa !15
  %427 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr509 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %427, i32 0, i32 1
  %428 = load i8*, i8** %ptr509, align 8, !tbaa !59
  %incdec.ptr510 = getelementptr inbounds i8, i8* %428, i32 -1
  store i8* %incdec.ptr510, i8** %ptr509, align 8, !tbaa !59
  %429 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_offset511 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %429, i32 0, i32 16
  %430 = load i64, i64* %out_offset511, align 8, !tbaa !15
  %431 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %totalbytes512 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %431, i32 0, i32 15
  %432 = load i64, i64* %totalbytes512, align 8, !tbaa !55
  %cmp513 = icmp eq i64 %430, %432
  br i1 %cmp513, label %if.then.515, label %if.else.516

if.then.515:                                      ; preds = %if.end.506
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.516:                                      ; preds = %if.end.506
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.516, %if.then.515
  %433 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #2
  %434 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %434) #2
  %435 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %435) #2
  %436 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #2
  %437 = bitcast i32* %img_numcomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #2
  %438 = bitcast i32* %shift_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #2
  %439 = bitcast i64* %in_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #2
  %440 = bitcast i64* %write_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #2
  %441 = bitcast i32* %bytepp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #2
  %442 = bitcast i32* %bytepp1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #2
  %443 = bitcast i64* %out_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %443) #2
  %444 = load i32, i32* %retval
  ret i32 %444
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @opj_set_default_decoder_parameters(%struct.opj_dparameters*) #1

declare i8** @opj_create_decompress(i32) #1

declare i32 @opj_set_error_handler(i8**, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sjpx_error_callback(i8* %msg, i8* %ptr) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 71) #5
  %0 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* %0) #5
  ret void
}

declare i32 @opj_set_info_handler(i8**, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sjpx_info_callback(i8* %msg, i8* %ptr) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  ret void
}

declare i32 @opj_set_warning_handler(i8**, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sjpx_warning_callback(i8* %msg, i8* %ptr) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 84) #5
  %0 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %0) #5
  ret void
}

declare i32 @opj_setup_decoder(i8**, %struct.opj_dparameters*) #1

declare void @dprintf_file_and_line(i8*, i32) #1

declare i32 @errprintf_nomem(i8*, ...) #1

declare i8** @opj_stream_default_create(i32) #1

declare void @opj_stream_set_read_function(i8**, i64 (i8*, i64, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @sjpx_stream_read(i8* %p_buffer, i64 %p_nb_bytes, i8* %p_user_data) #0 {
entry:
  %retval = alloca i64, align 8
  %p_buffer.addr = alloca i8*, align 8
  %p_nb_bytes.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  %sb = alloca %struct.stream_block_s*, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %p_buffer, i8** %p_buffer.addr, align 8, !tbaa !1
  store i64 %p_nb_bytes, i64* %p_nb_bytes.addr, align 8, !tbaa !24
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_block_s*
  store %struct.stream_block_s* %2, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8, !tbaa !61
  %6 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %6, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8, !tbaa !62
  %sub = sub i64 %5, %7
  store i64 %sub, i64* %len, align 8, !tbaa !24
  %8 = load i64, i64* %len, align 8, !tbaa !24
  %cmp = icmp ult i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %len, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %len, align 8, !tbaa !24
  %cmp1 = icmp eq i64 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load i64, i64* %len, align 8, !tbaa !24
  %11 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !24
  %cmp4 = icmp ugt i64 %10, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %12 = load i64, i64* %p_nb_bytes.addr, align 8, !tbaa !24
  store i64 %12, i64* %len, align 8, !tbaa !24
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %13 = load i8*, i8** %p_buffer.addr, align 8, !tbaa !1
  %14 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !63
  %16 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos7 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %16, i32 0, i32 2
  %17 = load i64, i64* %pos7, align 8, !tbaa !62
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %17
  %18 = load i64, i64* %len, align 8, !tbaa !24
  %call = call i8* @memcpy(i8* %13, i8* %add.ptr, i64 %18) #6
  %19 = load i64, i64* %len, align 8, !tbaa !24
  %20 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos8 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %20, i32 0, i32 2
  %21 = load i64, i64* %pos8, align 8, !tbaa !62
  %add = add i64 %21, %19
  store i64 %add, i64* %pos8, align 8, !tbaa !62
  %22 = load i64, i64* %len, align 8, !tbaa !24
  store i64 %22, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.2
  %23 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i64, i64* %retval
  ret i64 %25
}

declare void @opj_stream_set_skip_function(i8**, i64 (i64, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @sjpx_stream_skip(i64 %skip, i8* %p_user_data) #0 {
entry:
  %skip.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  %sb = alloca %struct.stream_block_s*, align 8
  store i64 %skip, i64* %skip.addr, align 8, !tbaa !24
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_block_s*
  store %struct.stream_block_s* %2, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %3 = load i64, i64* %skip.addr, align 8, !tbaa !24
  %4 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8, !tbaa !61
  %6 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %6, i32 0, i32 2
  %7 = load i64, i64* %pos, align 8, !tbaa !62
  %sub = sub i64 %5, %7
  %cmp = icmp ugt i64 %3, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %8, i32 0, i32 1
  %9 = load i64, i64* %size1, align 8, !tbaa !61
  %10 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos2 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %10, i32 0, i32 2
  %11 = load i64, i64* %pos2, align 8, !tbaa !62
  %sub3 = sub i64 %9, %11
  store i64 %sub3, i64* %skip.addr, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %skip.addr, align 8, !tbaa !24
  %13 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos4 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %13, i32 0, i32 2
  %14 = load i64, i64* %pos4, align 8, !tbaa !62
  %add = add i64 %14, %12
  store i64 %add, i64* %pos4, align 8, !tbaa !62
  %15 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos5 = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %15, i32 0, i32 2
  %16 = load i64, i64* %pos5, align 8, !tbaa !62
  %17 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i64 %16
}

declare void @opj_stream_set_seek_function(i8**, i32 (i64, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sjpx_stream_seek(i64 %seek_pos, i8* %p_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %seek_pos.addr = alloca i64, align 8
  %p_user_data.addr = alloca i8*, align 8
  %sb = alloca %struct.stream_block_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %seek_pos, i64* %seek_pos.addr, align 8, !tbaa !24
  store i8* %p_user_data, i8** %p_user_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %p_user_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_block_s*
  store %struct.stream_block_s* %2, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %3 = load i64, i64* %seek_pos.addr, align 8, !tbaa !24
  %4 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8, !tbaa !61
  %cmp = icmp ugt i64 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %seek_pos.addr, align 8, !tbaa !24
  %7 = load %struct.stream_block_s*, %struct.stream_block_s** %sb, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.stream_block_s, %struct.stream_block_s* %7, i32 0, i32 2
  store i64 %6, i64* %pos, align 8, !tbaa !62
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.stream_block_s** %sb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @opj_read_header(i8**, i8**, %struct.opj_image**) #1

declare i32 @opj_decode(i8**, i8**, %struct.opj_image*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_jpxd_ycc_to_rgb(%struct.stream_jpxd_state_s* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.stream_jpxd_state_s*, align 8
  %max_value = alloca i32, align 4
  %flip_value = alloca i32, align 4
  %p = alloca [3 x i32], align 4
  %q = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %sgnd = alloca [2 x i32], align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %idx = alloca i64, align 8
  %row_bufs = alloca [3 x i32*], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.stream_jpxd_state_s* %state, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %1, i32 0, i32 7
  %2 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !10
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %2, i32 0, i32 6
  %3 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %3, i64 0
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx, i32 0, i32 6
  %4 = load i32, i32* %prec, align 4, !tbaa !46
  %shl = shl i32 -1, %4
  %neg = xor i32 %shl, -1
  store i32 %neg, i32* %max_value, align 4, !tbaa !20
  %5 = bitcast i32* %flip_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %6, i32 0, i32 7
  %7 = load %struct.opj_image*, %struct.opj_image** %image1, align 8, !tbaa !10
  %comps2 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %7, i32 0, i32 6
  %8 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps2, align 8, !tbaa !39
  %arrayidx3 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %8, i64 0
  %prec4 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx3, i32 0, i32 6
  %9 = load i32, i32* %prec4, align 4, !tbaa !46
  %sub = sub i32 %9, 1
  %shl5 = shl i32 1, %sub
  store i32 %shl5, i32* %flip_value, align 4, !tbaa !20
  %10 = bitcast [3 x i32]* %p to i8*
  call void @llvm.lifetime.start(i64 12, i8* %10) #2
  %11 = bitcast [3 x i32]* %q to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11) #2
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast [2 x i32]* %sgnd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast [3 x i32*]* %row_bufs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #2
  %18 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %out_numcomps = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %18, i32 0, i32 19
  %19 = load i32, i32* %out_numcomps, align 4, !tbaa !54
  %cmp = icmp ne i32 %19, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %20, 2
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %add = add nsw i32 %21, 1
  %idxprom = sext i32 %add to i64
  %22 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image7 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %22, i32 0, i32 7
  %23 = load %struct.opj_image*, %struct.opj_image** %image7, align 8, !tbaa !10
  %comps8 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %23, i32 0, i32 6
  %24 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps8, align 8, !tbaa !39
  %arrayidx9 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %24, i64 %idxprom
  %sgnd10 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx9, i32 0, i32 8
  %25 = load i32, i32* %sgnd10, align 4, !tbaa !56
  %26 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom11 = sext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %sgnd, i32 0, i64 %idxprom11
  store i32 %25, i32* %arrayidx12, align 4, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.end
  %28 = load i32, i32* %i, align 4, !tbaa !20
  %cmp14 = icmp slt i32 %28, 3
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %29 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %29, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !33
  %33 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %33, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !26
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !27
  %36 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %36, i32 0, i32 8
  %37 = load i32, i32* %width, align 4, !tbaa !43
  %conv = sext i32 %37 to i64
  %mul = mul i64 4, %conv
  %conv18 = trunc i64 %mul to i32
  %call = call i8* %32(%struct.gs_memory_s* %35, i32 %conv18, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #5
  %38 = bitcast i8* %call to i32*
  %39 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom19 = sext i32 %39 to i64
  %arrayidx20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 %idxprom19
  store i32* %38, i32** %arrayidx20, align 8, !tbaa !1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %40 = load i32, i32* %i, align 4, !tbaa !20
  %inc22 = add nsw i32 %40, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !20
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  %arrayidx24 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 0
  %41 = load i32*, i32** %arrayidx24, align 8, !tbaa !1
  %tobool = icmp ne i32* %41, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.30

lor.lhs.false:                                    ; preds = %for.end.23
  %arrayidx25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 1
  %42 = load i32*, i32** %arrayidx25, align 8, !tbaa !1
  %tobool26 = icmp ne i32* %42, null
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.30

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %arrayidx28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 2
  %43 = load i32*, i32** %arrayidx28, align 8, !tbaa !1
  %tobool29 = icmp ne i32* %43, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %for.end.23
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false.27
  store i64 0, i64* %idx, align 8, !tbaa !24
  store i64 0, i64* %y, align 8, !tbaa !24
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.178, %if.end.31
  %44 = load i64, i64* %y, align 8, !tbaa !24
  %45 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %45, i32 0, i32 9
  %46 = load i32, i32* %height, align 4, !tbaa !45
  %conv33 = sext i32 %46 to i64
  %cmp34 = icmp ult i64 %44, %conv33
  br i1 %cmp34, label %for.body.36, label %for.end.180

for.body.36:                                      ; preds = %for.cond.32
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.67, %for.body.36
  %47 = load i32, i32* %i, align 4, !tbaa !20
  %cmp38 = icmp slt i32 %47, 3
  br i1 %cmp38, label %for.body.40, label %for.end.69

for.body.40:                                      ; preds = %for.cond.37
  %48 = load i64, i64* %y, align 8, !tbaa !24
  %49 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image42 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %50, i32 0, i32 7
  %51 = load %struct.opj_image*, %struct.opj_image** %image42, align 8, !tbaa !10
  %comps43 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 6
  %52 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps43, align 8, !tbaa !39
  %arrayidx44 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %52, i64 %idxprom41
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx44, i32 0, i32 1
  %53 = load i32, i32* %dy, align 4, !tbaa !50
  %conv45 = zext i32 %53 to i64
  %rem = urem i64 %48, %conv45
  %cmp46 = icmp eq i64 %rem, 0
  br i1 %cmp46, label %if.then.48, label %if.end.66

if.then.48:                                       ; preds = %for.body.40
  %54 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom49 = sext i32 %54 to i64
  %arrayidx50 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 %idxprom49
  %55 = load i32*, i32** %arrayidx50, align 8, !tbaa !1
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !20
  %59 = load i64, i64* %idx, align 8, !tbaa !24
  %60 = load i64, i64* %y, align 8, !tbaa !24
  %call51 = call i64 @get_scaled_idx(%struct.stream_jpxd_state_s* %57, i32 %58, i64 %59, i64 0, i64 %60) #5
  %61 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom52 = sext i32 %61 to i64
  %62 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image53 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %62, i32 0, i32 7
  %63 = load %struct.opj_image*, %struct.opj_image** %image53, align 8, !tbaa !10
  %comps54 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %63, i32 0, i32 6
  %64 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps54, align 8, !tbaa !39
  %arrayidx55 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %64, i64 %idxprom52
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx55, i32 0, i32 11
  %65 = load i32*, i32** %data, align 8, !tbaa !60
  %arrayidx56 = getelementptr inbounds i32, i32* %65, i64 %call51
  %66 = bitcast i32* %arrayidx56 to i8*
  %67 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width57 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %67, i32 0, i32 8
  %68 = load i32, i32* %width57, align 4, !tbaa !43
  %conv58 = sext i32 %68 to i64
  %mul59 = mul i64 4, %conv58
  %69 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom60 = sext i32 %69 to i64
  %70 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image61 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %70, i32 0, i32 7
  %71 = load %struct.opj_image*, %struct.opj_image** %image61, align 8, !tbaa !10
  %comps62 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %71, i32 0, i32 6
  %72 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps62, align 8, !tbaa !39
  %arrayidx63 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %72, i64 %idxprom60
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx63, i32 0, i32 0
  %73 = load i32, i32* %dx, align 4, !tbaa !49
  %conv64 = zext i32 %73 to i64
  %div = udiv i64 %mul59, %conv64
  %call65 = call i8* @memcpy(i8* %56, i8* %66, i64 %div) #6
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.48, %for.body.40
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %74 = load i32, i32* %i, align 4, !tbaa !20
  %inc68 = add nsw i32 %74, 1
  store i32 %inc68, i32* %i, align 4, !tbaa !20
  br label %for.cond.37

for.end.69:                                       ; preds = %for.cond.37
  store i64 0, i64* %x, align 8, !tbaa !24
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.174, %for.end.69
  %75 = load i64, i64* %x, align 8, !tbaa !24
  %76 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width71 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %76, i32 0, i32 8
  %77 = load i32, i32* %width71, align 4, !tbaa !43
  %conv72 = sext i32 %77 to i64
  %cmp73 = icmp ult i64 %75, %conv72
  br i1 %cmp73, label %for.body.75, label %for.end.177

for.body.75:                                      ; preds = %for.cond.70
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %for.body.75
  %78 = load i32, i32* %i, align 4, !tbaa !20
  %cmp77 = icmp slt i32 %78, 3
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %79 = load i64, i64* %x, align 8, !tbaa !24
  %80 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom80 = sext i32 %80 to i64
  %81 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image81 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %81, i32 0, i32 7
  %82 = load %struct.opj_image*, %struct.opj_image** %image81, align 8, !tbaa !10
  %comps82 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %82, i32 0, i32 6
  %83 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps82, align 8, !tbaa !39
  %arrayidx83 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %83, i64 %idxprom80
  %dx84 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx83, i32 0, i32 0
  %84 = load i32, i32* %dx84, align 4, !tbaa !49
  %conv85 = zext i32 %84 to i64
  %div86 = udiv i64 %79, %conv85
  %85 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom87 = sext i32 %85 to i64
  %arrayidx88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 %idxprom87
  %86 = load i32*, i32** %arrayidx88, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %86, i64 %div86
  %87 = load i32, i32* %arrayidx89, align 4, !tbaa !20
  %88 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom90 = sext i32 %88 to i64
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 %idxprom90
  store i32 %87, i32* %arrayidx91, align 4, !tbaa !20
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.79
  %89 = load i32, i32* %i, align 4, !tbaa !20
  %inc93 = add nsw i32 %89, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !20
  br label %for.cond.76

for.end.94:                                       ; preds = %for.cond.76
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %sgnd, i32 0, i64 0
  %90 = load i32, i32* %arrayidx95, align 4, !tbaa !20
  %tobool96 = icmp ne i32 %90, 0
  br i1 %tobool96, label %if.end.100, label %if.then.97

if.then.97:                                       ; preds = %for.end.94
  %91 = load i32, i32* %flip_value, align 4, !tbaa !20
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 1
  %92 = load i32, i32* %arrayidx98, align 4, !tbaa !20
  %sub99 = sub nsw i32 %92, %91
  store i32 %sub99, i32* %arrayidx98, align 4, !tbaa !20
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %for.end.94
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %sgnd, i32 0, i64 1
  %93 = load i32, i32* %arrayidx101, align 4, !tbaa !20
  %tobool102 = icmp ne i32 %93, 0
  br i1 %tobool102, label %if.end.106, label %if.then.103

if.then.103:                                      ; preds = %if.end.100
  %94 = load i32, i32* %flip_value, align 4, !tbaa !20
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 2
  %95 = load i32, i32* %arrayidx104, align 4, !tbaa !20
  %sub105 = sub nsw i32 %95, %94
  store i32 %sub105, i32* %arrayidx104, align 4, !tbaa !20
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.103, %if.end.100
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 0
  %96 = load i32, i32* %arrayidx107, align 4, !tbaa !20
  %conv108 = sitofp i32 %96 to double
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 2
  %97 = load i32, i32* %arrayidx109, align 4, !tbaa !20
  %conv110 = sitofp i32 %97 to double
  %mul111 = fmul double 1.402000e+00, %conv110
  %add112 = fadd double %conv108, %mul111
  %conv113 = fptosi double %add112 to i32
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 0
  store i32 %conv113, i32* %arrayidx114, align 4, !tbaa !20
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 0
  %98 = load i32, i32* %arrayidx115, align 4, !tbaa !20
  %conv116 = sitofp i32 %98 to double
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 1
  %99 = load i32, i32* %arrayidx117, align 4, !tbaa !20
  %conv118 = sitofp i32 %99 to double
  %mul119 = fmul double 3.441300e-01, %conv118
  %sub120 = fsub double %conv116, %mul119
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 2
  %100 = load i32, i32* %arrayidx121, align 4, !tbaa !20
  %conv122 = sitofp i32 %100 to double
  %mul123 = fmul double 7.141400e-01, %conv122
  %sub124 = fsub double %sub120, %mul123
  %conv125 = fptosi double %sub124 to i32
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 1
  store i32 %conv125, i32* %arrayidx126, align 4, !tbaa !20
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 0
  %101 = load i32, i32* %arrayidx127, align 4, !tbaa !20
  %conv128 = sitofp i32 %101 to double
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %p, i32 0, i64 1
  %102 = load i32, i32* %arrayidx129, align 4, !tbaa !20
  %conv130 = sitofp i32 %102 to double
  %mul131 = fmul double 1.772000e+00, %conv130
  %add132 = fadd double %conv128, %mul131
  %conv133 = fptosi double %add132 to i32
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 2
  store i32 %conv133, i32* %arrayidx134, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.155, %if.end.106
  %103 = load i32, i32* %i, align 4, !tbaa !20
  %cmp136 = icmp slt i32 %103, 3
  br i1 %cmp136, label %for.body.138, label %for.end.157

for.body.138:                                     ; preds = %for.cond.135
  %104 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom139 = sext i32 %104 to i64
  %arrayidx140 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 %idxprom139
  %105 = load i32, i32* %arrayidx140, align 4, !tbaa !20
  %cmp141 = icmp slt i32 %105, 0
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %for.body.138
  %106 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom144 = sext i32 %106 to i64
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 %idxprom144
  store i32 0, i32* %arrayidx145, align 4, !tbaa !20
  br label %if.end.154

if.else:                                          ; preds = %for.body.138
  %107 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom146 = sext i32 %107 to i64
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 %idxprom146
  %108 = load i32, i32* %arrayidx147, align 4, !tbaa !20
  %109 = load i32, i32* %max_value, align 4, !tbaa !20
  %cmp148 = icmp ugt i32 %108, %109
  br i1 %cmp148, label %if.then.150, label %if.end.153

if.then.150:                                      ; preds = %if.else
  %110 = load i32, i32* %max_value, align 4, !tbaa !20
  %111 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom151 = sext i32 %111 to i64
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 %idxprom151
  store i32 %110, i32* %arrayidx152, align 4, !tbaa !20
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.150, %if.else
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.143
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %112 = load i32, i32* %i, align 4, !tbaa !20
  %inc156 = add nsw i32 %112, 1
  store i32 %inc156, i32* %i, align 4, !tbaa !20
  br label %for.cond.135

for.end.157:                                      ; preds = %for.cond.135
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.171, %for.end.157
  %113 = load i32, i32* %i, align 4, !tbaa !20
  %cmp159 = icmp slt i32 %113, 3
  br i1 %cmp159, label %for.body.161, label %for.end.173

for.body.161:                                     ; preds = %for.cond.158
  %114 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom162 = sext i32 %114 to i64
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %q, i32 0, i64 %idxprom162
  %115 = load i32, i32* %arrayidx163, align 4, !tbaa !20
  %116 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %117 = load i32, i32* %i, align 4, !tbaa !20
  %118 = load i64, i64* %idx, align 8, !tbaa !24
  %119 = load i64, i64* %x, align 8, !tbaa !24
  %120 = load i64, i64* %y, align 8, !tbaa !24
  %call164 = call i64 @get_scaled_idx(%struct.stream_jpxd_state_s* %116, i32 %117, i64 %118, i64 %119, i64 %120) #5
  %121 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom165 = sext i32 %121 to i64
  %122 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image166 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %122, i32 0, i32 7
  %123 = load %struct.opj_image*, %struct.opj_image** %image166, align 8, !tbaa !10
  %comps167 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %123, i32 0, i32 6
  %124 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps167, align 8, !tbaa !39
  %arrayidx168 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %124, i64 %idxprom165
  %data169 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx168, i32 0, i32 11
  %125 = load i32*, i32** %data169, align 8, !tbaa !60
  %arrayidx170 = getelementptr inbounds i32, i32* %125, i64 %call164
  store i32 %115, i32* %arrayidx170, align 4, !tbaa !20
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.161
  %126 = load i32, i32* %i, align 4, !tbaa !20
  %inc172 = add nsw i32 %126, 1
  store i32 %inc172, i32* %i, align 4, !tbaa !20
  br label %for.cond.158

for.end.173:                                      ; preds = %for.cond.158
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173
  %127 = load i64, i64* %x, align 8, !tbaa !24
  %inc175 = add i64 %127, 1
  store i64 %inc175, i64* %x, align 8, !tbaa !24
  %128 = load i64, i64* %idx, align 8, !tbaa !24
  %inc176 = add i64 %128, 1
  store i64 %inc176, i64* %idx, align 8, !tbaa !24
  br label %for.cond.70

for.end.177:                                      ; preds = %for.cond.70
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end.177
  %129 = load i64, i64* %y, align 8, !tbaa !24
  %inc179 = add i64 %129, 1
  store i64 %inc179, i64* %y, align 8, !tbaa !24
  br label %for.cond.32

for.end.180:                                      ; preds = %for.cond.32
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.192, %for.end.180
  %130 = load i32, i32* %i, align 4, !tbaa !20
  %cmp182 = icmp slt i32 %130, 3
  br i1 %cmp182, label %for.body.184, label %for.end.194

for.body.184:                                     ; preds = %for.cond.181
  %131 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory185 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %131, i32 0, i32 1
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory185, align 8, !tbaa !26
  %non_gc_memory186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory186, align 8, !tbaa !27
  %procs187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs187, i32 0, i32 2
  %134 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !30
  %135 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %memory188 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %135, i32 0, i32 1
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory188, align 8, !tbaa !26
  %non_gc_memory189 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory189, align 8, !tbaa !27
  %138 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom190 = sext i32 %138 to i64
  %arrayidx191 = getelementptr inbounds [3 x i32*], [3 x i32*]* %row_bufs, i32 0, i64 %idxprom190
  %139 = load i32*, i32** %arrayidx191, align 8, !tbaa !1
  %140 = bitcast i32* %139 to i8*
  call void %134(%struct.gs_memory_s* %137, i8* %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.184
  %141 = load i32, i32* %i, align 4, !tbaa !20
  %inc193 = add nsw i32 %141, 1
  store i32 %inc193, i32* %i, align 4, !tbaa !20
  br label %for.cond.181

for.end.194:                                      ; preds = %for.cond.181
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.194, %if.then.30, %if.then
  %142 = bitcast [3 x i32*]* %row_bufs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %142) #2
  %143 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i64* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast [2 x i32]* %sgnd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast [3 x i32]* %q to i8*
  call void @llvm.lifetime.end(i64 12, i8* %148) #2
  %149 = bitcast [3 x i32]* %p to i8*
  call void @llvm.lifetime.end(i64 12, i8* %149) #2
  %150 = bitcast i32* %flip_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = load i32, i32* %retval
  ret i32 %152
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @get_scaled_idx(%struct.stream_jpxd_state_s* %state, i32 %compno, i64 %idx, i64 %x, i64 %y) #4 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %struct.stream_jpxd_state_s*, align 8
  %compno.addr = alloca i32, align 4
  %idx.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store %struct.stream_jpxd_state_s* %state, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  store i32 %compno, i32* %compno.addr, align 4, !tbaa !20
  store i64 %idx, i64* %idx.addr, align 8, !tbaa !24
  store i64 %x, i64* %x.addr, align 8, !tbaa !24
  store i64 %y, i64* %y.addr, align 8, !tbaa !24
  %0 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %samescale = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %0, i32 0, i32 11
  %1 = load i32, i32* %samescale, align 4, !tbaa !48
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %idx.addr, align 8, !tbaa !24
  store i64 %2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %y.addr, align 8, !tbaa !24
  %4 = load i32, i32* %compno.addr, align 4, !tbaa !20
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %5, i32 0, i32 7
  %6 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !10
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %6, i32 0, i32 6
  %7 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %7, i64 %idxprom
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx, i32 0, i32 1
  %8 = load i32, i32* %dy, align 4, !tbaa !50
  %conv = zext i32 %8 to i64
  %div = udiv i64 %3, %conv
  %9 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %9, i32 0, i32 8
  %10 = load i32, i32* %width, align 4, !tbaa !43
  %conv1 = sext i32 %10 to i64
  %mul = mul i64 %div, %conv1
  %11 = load i64, i64* %x.addr, align 8, !tbaa !24
  %add = add i64 %mul, %11
  %12 = load i32, i32* %compno.addr, align 4, !tbaa !20
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.stream_jpxd_state_s*, %struct.stream_jpxd_state_s** %state.addr, align 8, !tbaa !1
  %image3 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %13, i32 0, i32 7
  %14 = load %struct.opj_image*, %struct.opj_image** %image3, align 8, !tbaa !10
  %comps4 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 6
  %15 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps4, align 8, !tbaa !39
  %arrayidx5 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %15, i64 %idxprom2
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx5, i32 0, i32 0
  %16 = load i32, i32* %dx, align 4, !tbaa !49
  %conv6 = zext i32 %16 to i64
  %div7 = udiv i64 %add, %conv6
  store i64 %div7, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @opj_image_destroy(%struct.opj_image*) #1

declare void @opj_stream_destroy(i8**) #1

declare void @opj_destroy_codec(i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 112}
!6 = !{!"stream_jpxd_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !2, i64 112, !2, i64 120, !2, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !3, i64 152, !7, i64 156, !8, i64 160, !9, i64 192, !9, i64 200, !9, i64 208, !2, i64 216, !7, i64 224, !7, i64 228, !2, i64 232}
!7 = !{!"int", !3, i64 0}
!8 = !{!"stream_block_s", !2, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"long", !3, i64 0}
!10 = !{!6, !2, i64 128}
!11 = !{!6, !2, i64 160}
!12 = !{!6, !9, i64 168}
!13 = !{!6, !9, i64 176}
!14 = !{!6, !9, i64 184}
!15 = !{!6, !9, i64 200}
!16 = !{!6, !9, i64 208}
!17 = !{!6, !2, i64 216}
!18 = !{!6, !2, i64 232}
!19 = !{!6, !2, i64 120}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !2, i64 8}
!22 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!22, !2, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!3, !3, i64 0}
!26 = !{!6, !2, i64 8}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 24}
!31 = !{!6, !7, i64 156}
!32 = !{!6, !3, i64 152}
!33 = !{!28, !2, i64 88}
!34 = !{!28, !2, i64 16}
!35 = !{!36, !7, i64 8248}
!36 = !{!"opj_dparameters", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 4104, !7, i64 8200, !7, i64 8204, !7, i64 8208, !7, i64 8212, !7, i64 8216, !7, i64 8220, !7, i64 8224, !7, i64 8228, !7, i64 8232, !7, i64 8236, !7, i64 8240, !7, i64 8244, !7, i64 8248}
!37 = !{!38, !7, i64 16}
!38 = !{!"opj_image", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !7, i64 40}
!39 = !{!38, !2, i64 24}
!40 = !{!41, !7, i64 8}
!41 = !{!"opj_image_comp", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !2, i64 48, !42, i64 56}
!42 = !{!"short", !3, i64 0}
!43 = !{!6, !7, i64 136}
!44 = !{!41, !7, i64 12}
!45 = !{!6, !7, i64 140}
!46 = !{!41, !7, i64 24}
!47 = !{!6, !7, i64 144}
!48 = !{!6, !7, i64 148}
!49 = !{!41, !7, i64 0}
!50 = !{!41, !7, i64 4}
!51 = !{!41, !42, i64 56}
!52 = !{!38, !3, i64 20}
!53 = !{!6, !7, i64 228}
!54 = !{!6, !7, i64 224}
!55 = !{!6, !9, i64 192}
!56 = !{!41, !7, i64 32}
!57 = !{!58, !2, i64 16}
!58 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!59 = !{!58, !2, i64 8}
!60 = !{!41, !2, i64 48}
!61 = !{!8, !9, i64 8}
!62 = !{!8, !9, i64 16}
!63 = !{!8, !2, i64 0}
