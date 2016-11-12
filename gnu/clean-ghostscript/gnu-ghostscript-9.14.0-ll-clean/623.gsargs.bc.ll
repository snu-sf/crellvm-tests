; ModuleID = './gsargs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_list_s = type { i32, %struct._IO_FILE* (i8*, i8*)*, i8*, i32 (%struct._IO_FILE*, i8**)*, %struct.gs_memory_s*, i8**, i32, i32, [2054 x i8], [10 x %struct.arg_source_s] }
%struct.arg_source_s = type { i32, %union._u }
%union._u = type { %struct._su }
%struct._su = type { i32, i32, i8*, %struct.gs_memory_s*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

@.str = private unnamed_addr constant [16 x i8] c"./base/gsargs.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Too much nesting of @-files.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"arg_finit\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Command too long: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"arg_next\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unterminated quote in @-file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to open command line file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"arg_copy\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @codepoint_to_utf8(i8* %cstr, i32 %rune) #0 {
entry:
  %cstr.addr = alloca i8*, align 8
  %rune.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store i8* %cstr, i8** %cstr.addr, align 8, !tbaa !1
  store i32 %rune, i32* %rune.addr, align 4, !tbaa !5
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %idx, align 4, !tbaa !5
  %1 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %conv = trunc i32 %2 to i8
  %3 = load i32, i32* %idx, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %idx, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !7
  br label %if.end.77

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 2048
  br i1 %cmp1, label %if.then.3, label %if.else.8

if.then.3:                                        ; preds = %if.else
  %6 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr = ashr i32 %6, 6
  %or = or i32 192, %shr
  %conv4 = trunc i32 %or to i8
  %7 = load i32, i32* %idx, align 4, !tbaa !5
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, i32* %idx, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %conv4, i8* %arrayidx7, align 1, !tbaa !7
  br label %if.end.71

if.else.8:                                        ; preds = %if.else
  %9 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %9, 65536
  br i1 %cmp9, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else.8
  %10 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr12 = ashr i32 %10, 12
  %or13 = or i32 224, %shr12
  %conv14 = trunc i32 %or13 to i8
  %11 = load i32, i32* %idx, align 4, !tbaa !5
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %idx, align 4, !tbaa !5
  %idxprom16 = sext i32 %11 to i64
  %12 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  store i8 %conv14, i8* %arrayidx17, align 1, !tbaa !7
  br label %if.end.64

if.else.18:                                       ; preds = %if.else.8
  %13 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %13, 2097152
  br i1 %cmp19, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %if.else.18
  %14 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr22 = ashr i32 %14, 18
  %or23 = or i32 240, %shr22
  %conv24 = trunc i32 %or23 to i8
  %15 = load i32, i32* %idx, align 4, !tbaa !5
  %inc25 = add nsw i32 %15, 1
  store i32 %inc25, i32* %idx, align 4, !tbaa !5
  %idxprom26 = sext i32 %15 to i64
  %16 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 %idxprom26
  store i8 %conv24, i8* %arrayidx27, align 1, !tbaa !7
  br label %if.end.57

if.else.28:                                       ; preds = %if.else.18
  %17 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %17, 67108864
  br i1 %cmp29, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %if.else.28
  %18 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr32 = ashr i32 %18, 24
  %or33 = or i32 248, %shr32
  %conv34 = trunc i32 %or33 to i8
  %19 = load i32, i32* %idx, align 4, !tbaa !5
  %inc35 = add nsw i32 %19, 1
  store i32 %inc35, i32* %idx, align 4, !tbaa !5
  %idxprom36 = sext i32 %19 to i64
  %20 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %20, i64 %idxprom36
  store i8 %conv34, i8* %arrayidx37, align 1, !tbaa !7
  br label %if.end

if.else.38:                                       ; preds = %if.else.28
  %21 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr39 = ashr i32 %21, 30
  %or40 = or i32 252, %shr39
  %conv41 = trunc i32 %or40 to i8
  %22 = load i32, i32* %idx, align 4, !tbaa !5
  %inc42 = add nsw i32 %22, 1
  store i32 %inc42, i32* %idx, align 4, !tbaa !5
  %idxprom43 = sext i32 %22 to i64
  %23 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %23, i64 %idxprom43
  store i8 %conv41, i8* %arrayidx44, align 1, !tbaa !7
  %24 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr45 = ashr i32 %24, 24
  %or46 = or i32 192, %shr45
  %conv47 = trunc i32 %or46 to i8
  %25 = load i32, i32* %idx, align 4, !tbaa !5
  %inc48 = add nsw i32 %25, 1
  store i32 %inc48, i32* %idx, align 4, !tbaa !5
  %idxprom49 = sext i32 %25 to i64
  %26 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %26, i64 %idxprom49
  store i8 %conv47, i8* %arrayidx50, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else.38, %if.then.31
  %27 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr51 = ashr i32 %27, 18
  %or52 = or i32 192, %shr51
  %conv53 = trunc i32 %or52 to i8
  %28 = load i32, i32* %idx, align 4, !tbaa !5
  %inc54 = add nsw i32 %28, 1
  store i32 %inc54, i32* %idx, align 4, !tbaa !5
  %idxprom55 = sext i32 %28 to i64
  %29 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %29, i64 %idxprom55
  store i8 %conv53, i8* %arrayidx56, align 1, !tbaa !7
  br label %if.end.57

if.end.57:                                        ; preds = %if.end, %if.then.21
  %30 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr58 = ashr i32 %30, 12
  %or59 = or i32 192, %shr58
  %conv60 = trunc i32 %or59 to i8
  %31 = load i32, i32* %idx, align 4, !tbaa !5
  %inc61 = add nsw i32 %31, 1
  store i32 %inc61, i32* %idx, align 4, !tbaa !5
  %idxprom62 = sext i32 %31 to i64
  %32 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %32, i64 %idxprom62
  store i8 %conv60, i8* %arrayidx63, align 1, !tbaa !7
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.57, %if.then.11
  %33 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %shr65 = ashr i32 %33, 6
  %or66 = or i32 192, %shr65
  %conv67 = trunc i32 %or66 to i8
  %34 = load i32, i32* %idx, align 4, !tbaa !5
  %inc68 = add nsw i32 %34, 1
  store i32 %inc68, i32* %idx, align 4, !tbaa !5
  %idxprom69 = sext i32 %34 to i64
  %35 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %35, i64 %idxprom69
  store i8 %conv67, i8* %arrayidx70, align 1, !tbaa !7
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.64, %if.then.3
  %36 = load i32, i32* %rune.addr, align 4, !tbaa !5
  %and = and i32 %36, 63
  %or72 = or i32 128, %and
  %conv73 = trunc i32 %or72 to i8
  %37 = load i32, i32* %idx, align 4, !tbaa !5
  %inc74 = add nsw i32 %37, 1
  store i32 %inc74, i32* %idx, align 4, !tbaa !5
  %idxprom75 = sext i32 %37 to i64
  %38 = load i8*, i8** %cstr.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %38, i64 %idxprom75
  store i8 %conv73, i8* %arrayidx76, align 1, !tbaa !7
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.71, %if.then
  %39 = load i32, i32* %idx, align 4, !tbaa !5
  %40 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @arg_init(%struct.arg_list_s* %pal, i8** %argv, i32 %argc, %struct._IO_FILE* (i8*, i8*)* %arg_fopen, i8* %fopen_data, i32 (%struct._IO_FILE*, i8**)* %get_codepoint, %struct.gs_memory_s* %memory) #0 {
entry:
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %arg_fopen.addr = alloca %struct._IO_FILE* (i8*, i8*)*, align 8
  %fopen_data.addr = alloca i8*, align 8
  %get_codepoint.addr = alloca i32 (%struct._IO_FILE*, i8**)*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !5
  store %struct._IO_FILE* (i8*, i8*)* %arg_fopen, %struct._IO_FILE* (i8*, i8*)** %arg_fopen.addr, align 8, !tbaa !1
  store i8* %fopen_data, i8** %fopen_data.addr, align 8, !tbaa !1
  store i32 (%struct._IO_FILE*, i8**)* %get_codepoint, i32 (%struct._IO_FILE*, i8**)** %get_codepoint.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %0, i32 0, i32 0
  store i32 1, i32* %expand_ats, align 4, !tbaa !8
  %1 = load %struct._IO_FILE* (i8*, i8*)*, %struct._IO_FILE* (i8*, i8*)** %arg_fopen.addr, align 8, !tbaa !1
  %2 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %arg_fopen1 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %2, i32 0, i32 1
  store %struct._IO_FILE* (i8*, i8*)* %1, %struct._IO_FILE* (i8*, i8*)** %arg_fopen1, align 8, !tbaa !10
  %3 = load i8*, i8** %fopen_data.addr, align 8, !tbaa !1
  %4 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %fopen_data2 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %4, i32 0, i32 2
  store i8* %3, i8** %fopen_data2, align 8, !tbaa !11
  %5 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint.addr, align 8, !tbaa !1
  %tobool = icmp ne i32 (%struct._IO_FILE*, i8**)* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct._IO_FILE*, i8**)* [ %6, %cond.true ], [ @get_codepoint_utf8, %cond.false ]
  %7 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %get_codepoint3 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %7, i32 0, i32 3
  store i32 (%struct._IO_FILE*, i8**)* %cond, i32 (%struct._IO_FILE*, i8**)** %get_codepoint3, align 8, !tbaa !12
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %9 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %9, i32 0, i32 4
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %memory4, align 8, !tbaa !13
  %10 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %argp = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %11, i32 0, i32 5
  store i8** %add.ptr, i8*** %argp, align 8, !tbaa !14
  %12 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 1
  %13 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %argn = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %13, i32 0, i32 6
  store i32 %sub, i32* %argn, align 4, !tbaa !15
  %14 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %14, i32 0, i32 7
  store i32 0, i32* %depth, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_codepoint_utf8(%struct._IO_FILE* %file, i8** %astr) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %astr.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %rune = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8** %astr, i8*** %astr.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  br label %do.body

do.body:                                          ; preds = %do.cond.80, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fgetc(%struct._IO_FILE* %4) #6
  br label %cond.end.5

cond.false:                                       ; preds = %do.body
  %5 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %conv = sext i8 %7 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.false
  %8 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %8, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv3 = zext i8 %10 to i32
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.2
  %cond = phi i32 [ %conv3, %cond.true.2 ], [ -1, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %call, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond6, i32* %c, align 4, !tbaa !5
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.5
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %12, 128
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %13 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  br label %lead

lead:                                             ; preds = %if.end.74, %if.end.11
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %14, 192
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lead
  br label %do.cond.80

if.else:                                          ; preds = %lead
  %15 = load i32, i32* %c, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %15, 224
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  store i32 1, i32* %len, align 4, !tbaa !5
  %16 = load i32, i32* %c, align 4, !tbaa !5
  %and = and i32 %16, 31
  store i32 %and, i32* %rune, align 4, !tbaa !5
  br label %if.end.43

if.else.18:                                       ; preds = %if.else
  %17 = load i32, i32* %c, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %17, 240
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  store i32 2, i32* %len, align 4, !tbaa !5
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %and22 = and i32 %18, 15
  store i32 %and22, i32* %rune, align 4, !tbaa !5
  br label %if.end.42

if.else.23:                                       ; preds = %if.else.18
  %19 = load i32, i32* %c, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %19, 248
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  store i32 3, i32* %len, align 4, !tbaa !5
  %20 = load i32, i32* %c, align 4, !tbaa !5
  %and27 = and i32 %20, 7
  store i32 %and27, i32* %rune, align 4, !tbaa !5
  br label %if.end.41

if.else.28:                                       ; preds = %if.else.23
  %21 = load i32, i32* %c, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %21, 252
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.28
  store i32 4, i32* %len, align 4, !tbaa !5
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %and32 = and i32 %22, 3
  store i32 %and32, i32* %rune, align 4, !tbaa !5
  br label %if.end.40

if.else.33:                                       ; preds = %if.else.28
  %23 = load i32, i32* %c, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %23, 254
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else.33
  store i32 5, i32* %len, align 4, !tbaa !5
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %and37 = and i32 %24, 1
  store i32 %and37, i32* %rune, align 4, !tbaa !5
  br label %if.end.39

if.else.38:                                       ; preds = %if.else.33
  br label %do.cond.80

if.end.39:                                        ; preds = %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.26
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.21
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.17
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %land.end, %if.end.44
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %tobool46 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %do.body.45
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call48 = call i32 @fgetc(%struct._IO_FILE* %26) #6
  br label %cond.end.58

cond.false.49:                                    ; preds = %do.body.45
  %27 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %27, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %conv50 = sext i8 %29 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %cond.true.52, label %cond.false.55

cond.true.52:                                     ; preds = %cond.false.49
  %30 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %30, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr53, i8** %30, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !7
  %conv54 = zext i8 %32 to i32
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.49
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.52
  %cond57 = phi i32 [ %conv54, %cond.true.52 ], [ -1, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.47
  %cond59 = phi i32 [ %call48, %cond.true.47 ], [ %cond57, %cond.end.56 ]
  store i32 %cond59, i32* %c, align 4, !tbaa !5
  %33 = load i32, i32* %c, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %33, -1
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %cond.end.58
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.63:                                        ; preds = %cond.end.58
  %34 = load i32, i32* %rune, align 4, !tbaa !5
  %shl = shl i32 %34, 6
  %35 = load i32, i32* %c, align 4, !tbaa !5
  %and64 = and i32 %35, 63
  %or = or i32 %shl, %and64
  store i32 %or, i32* %rune, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.63
  %36 = load i32, i32* %c, align 4, !tbaa !5
  %and65 = and i32 %36, 192
  %cmp66 = icmp eq i32 %and65, 192
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %37 = load i32, i32* %len, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %len, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %dec, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %38 = phi i1 [ false, %do.cond ], [ %tobool68, %land.rhs ]
  br i1 %38, label %do.body.45, label %do.end

do.end:                                           ; preds = %land.end
  %39 = load i32, i32* %len, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %39, 0
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %do.end
  %40 = load i32, i32* %c, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %40, 128
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.70
  %41 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.then.70
  br label %lead

if.end.75:                                        ; preds = %do.end
  %42 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %42, 65279
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  br label %do.cond.80

if.end.79:                                        ; preds = %if.end.75
  br label %do.end.81

do.cond.80:                                       ; preds = %if.then.78, %if.else.38, %if.then.14
  br i1 true, label %do.body, label %do.end.81

do.end.81:                                        ; preds = %do.cond.80, %if.end.79
  %43 = load i32, i32* %rune, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.81, %if.then.73, %if.then.62, %if.then.10, %if.then
  %44 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @arg_push_memory_string(%struct.arg_list_s* %pal, i8* %str, i32 %parsed, %struct.gs_memory_s* %mem) #0 {
entry:
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %str.addr = alloca i8*, align 8
  %parsed.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %parsed, i32* %parsed.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %2 = load i32, i32* %parsed.addr, align 4, !tbaa !5
  %3 = load i32, i32* %parsed.addr, align 4, !tbaa !5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @arg_push_decoded_memory_string(%struct.arg_list_s* %0, i8* %1, i32 %2, i32 %3, %struct.gs_memory_s* %4) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @arg_push_decoded_memory_string(%struct.arg_list_s* %pal, i8* %str, i32 %parsed, i32 %decoded, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %str.addr = alloca i8*, align 8
  %parsed.addr = alloca i32, align 4
  %decoded.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pas = alloca %struct.arg_source_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %parsed, i32* %parsed.addr, align 4, !tbaa !5
  store i32 %decoded, i32* %decoded.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %1, i32 0, i32 7
  %2 = load i32, i32* %depth, align 4, !tbaa !16
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gs_program_name() #6
  %call1 = call i64 @gs_revision_number() #6
  call void @eprintf_program_ident(i8* %call, i64 %call1) #6
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 148) #6
  %call2 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth3 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %3, i32 0, i32 7
  %4 = load i32, i32* %depth3, align 4, !tbaa !16
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %sources = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %5, i32 0, i32 9
  %arrayidx = getelementptr inbounds [10 x %struct.arg_source_s], [10 x %struct.arg_source_s]* %sources, i32 0, i64 %idxprom
  store %struct.arg_source_s* %arrayidx, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %6 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %is_file = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %6, i32 0, i32 0
  store i32 0, i32* %is_file, align 4, !tbaa !17
  %7 = load i32, i32* %parsed.addr, align 4, !tbaa !5
  %8 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %8, i32 0, i32 1
  %s = bitcast %union._u* %u to %struct._su*
  %parsed4 = getelementptr inbounds %struct._su, %struct._su* %s, i32 0, i32 0
  store i32 %7, i32* %parsed4, align 4, !tbaa !19
  %9 = load i32, i32* %decoded.addr, align 4, !tbaa !5
  %10 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %10, i32 0, i32 1
  %s6 = bitcast %union._u* %u5 to %struct._su*
  %decoded7 = getelementptr inbounds %struct._su, %struct._su* %s6, i32 0, i32 1
  store i32 %9, i32* %decoded7, align 4, !tbaa !21
  %11 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %12 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u8 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %12, i32 0, i32 1
  %s9 = bitcast %union._u* %u8 to %struct._su*
  %chars = getelementptr inbounds %struct._su, %struct._su* %s9, i32 0, i32 2
  store i8* %11, i8** %chars, align 8, !tbaa !22
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u10 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %14, i32 0, i32 1
  %s11 = bitcast %union._u* %u10 to %struct._su*
  %memory = getelementptr inbounds %struct._su, %struct._su* %s11, i32 0, i32 3
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %15 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %16 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u12 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %16, i32 0, i32 1
  %s13 = bitcast %union._u* %u12 to %struct._su*
  %str14 = getelementptr inbounds %struct._su, %struct._su* %s13, i32 0, i32 4
  store i8* %15, i8** %str14, align 8, !tbaa !24
  %17 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth15 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %17, i32 0, i32 7
  %18 = load i32, i32* %depth15, align 4, !tbaa !16
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %depth15, align 4, !tbaa !16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare void @lprintf_file_and_line(i8*, i32) #2

declare i32 @errprintf_nomem(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @arg_finit(%struct.arg_list_s* %pal) #0 {
entry:
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %pas = alloca %struct.arg_source_s*, align 8
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %0 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %0, i32 0, i32 7
  %1 = load i32, i32* %depth, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth1 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %3, i32 0, i32 7
  %4 = load i32, i32* %depth1, align 4, !tbaa !16
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %depth1, align 4, !tbaa !16
  %idxprom = sext i32 %dec to i64
  %5 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %sources = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %5, i32 0, i32 9
  %arrayidx = getelementptr inbounds [10 x %struct.arg_source_s], [10 x %struct.arg_source_s]* %sources, i32 0, i64 %idxprom
  store %struct.arg_source_s* %arrayidx, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %6 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %is_file = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %6, i32 0, i32 0
  %7 = load i32, i32* %is_file, align 4, !tbaa !17
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %8, i32 0, i32 1
  %file = bitcast %union._u* %u to %struct._IO_FILE**
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = call i32 @fclose(%struct._IO_FILE* %9) #6
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %10 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %10, i32 0, i32 1
  %s = bitcast %union._u* %u3 to %struct._su*
  %memory = getelementptr inbounds %struct._su, %struct._su* %s, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %tobool4 = icmp ne %struct.gs_memory_s* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %12 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %12, i32 0, i32 1
  %s7 = bitcast %union._u* %u6 to %struct._su*
  %memory8 = getelementptr inbounds %struct._su, %struct._su* %s7, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !25
  %15 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u9 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %15, i32 0, i32 1
  %s10 = bitcast %union._u* %u9 to %struct._su*
  %memory11 = getelementptr inbounds %struct._su, %struct._su* %s10, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !23
  %17 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u12 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %17, i32 0, i32 1
  %s13 = bitcast %union._u* %u12 to %struct._su*
  %chars = getelementptr inbounds %struct._su, %struct._su* %s13, i32 0, i32 2
  %18 = load i8*, i8** %chars, align 8, !tbaa !22
  call void %14(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %19 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i8* @arg_next(%struct.arg_list_s* %pal, i32* %code, %struct.gs_memory_s* %errmem) #0 {
entry:
  %retval = alloca i8*, align 8
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %code.addr = alloca i32*, align 8
  %errmem.addr = alloca %struct.gs_memory_s*, align 8
  %pas = alloca %struct.arg_source_s*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %astr = alloca i8*, align 8
  %cstr = alloca i8*, align 8
  %result = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %in_quote = alloca i32, align 4
  %eol = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store i32* %code, i32** %code.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %errmem, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %astr, align 8, !tbaa !1
  %3 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %in_quote to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %eol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  br label %top

top:                                              ; preds = %if.end.211, %if.end.82, %entry
  %9 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %9, i32 0, i32 7
  %10 = load i32, i32* %depth, align 4, !tbaa !16
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %sources = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %11, i32 0, i32 9
  %arrayidx = getelementptr inbounds [10 x %struct.arg_source_s], [10 x %struct.arg_source_s]* %sources, i32 0, i64 %idxprom
  store %struct.arg_source_s* %arrayidx, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %12 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth1 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %12, i32 0, i32 7
  %13 = load i32, i32* %depth1, align 4, !tbaa !16
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %top
  %14 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %argn = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %14, i32 0, i32 6
  %15 = load i32, i32* %argn, align 4, !tbaa !15
  %cmp2 = icmp sle i32 %15, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %argn4 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %16, i32 0, i32 6
  %17 = load i32, i32* %argn4, align 4, !tbaa !15
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %argn4, align 4, !tbaa !15
  %18 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %argp = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %18, i32 0, i32 5
  %19 = load i8**, i8*** %argp, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %argp, align 8, !tbaa !14
  %20 = load i8*, i8** %19, align 8, !tbaa !1
  store i8* %20, i8** %result, align 8, !tbaa !1
  br label %at

if.end.5:                                         ; preds = %top
  %21 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %is_file = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %21, i32 0, i32 0
  %22 = load i32, i32* %is_file, align 4, !tbaa !17
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.5
  %23 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %23, i32 0, i32 1
  %file = bitcast %union._u* %u to %struct._IO_FILE**
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  store %struct._IO_FILE* %24, %struct._IO_FILE** %f, align 8, !tbaa !1
  br label %if.end.47

if.else:                                          ; preds = %if.end.5
  %25 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u7 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %25, i32 0, i32 1
  %s = bitcast %union._u* %u7 to %struct._su*
  %parsed = getelementptr inbounds %struct._su, %struct._su* %s, i32 0, i32 0
  %26 = load i32, i32* %parsed, align 4, !tbaa !19
  %tobool8 = icmp ne i32 %26, 0
  br i1 %tobool8, label %if.then.9, label %if.else.42

if.then.9:                                        ; preds = %if.else
  %27 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u10 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %27, i32 0, i32 1
  %s11 = bitcast %union._u* %u10 to %struct._su*
  %str = getelementptr inbounds %struct._su, %struct._su* %s11, i32 0, i32 4
  %28 = load i8*, i8** %str, align 8, !tbaa !24
  %call = call i64 @strlen(i8* %28) #7
  %cmp12 = icmp uge i64 %call, 2048
  br i1 %cmp12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.then.9
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %30 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u14 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %30, i32 0, i32 1
  %s15 = bitcast %union._u* %u14 to %struct._su*
  %str16 = getelementptr inbounds %struct._su, %struct._su* %s15, i32 0, i32 4
  %31 = load i8*, i8** %str16, align 8, !tbaa !24
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %31) #6
  %32 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %32, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.18:                                       ; preds = %if.then.9
  %33 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %cstr19 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %33, i32 0, i32 8
  %arraydecay = getelementptr inbounds [2054 x i8], [2054 x i8]* %cstr19, i32 0, i32 0
  %34 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u20 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %34, i32 0, i32 1
  %s21 = bitcast %union._u* %u20 to %struct._su*
  %str22 = getelementptr inbounds %struct._su, %struct._su* %s21, i32 0, i32 4
  %35 = load i8*, i8** %str22, align 8, !tbaa !24
  %call23 = call i8* @strcpy(i8* %arraydecay, i8* %35) #8
  %36 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %cstr24 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %36, i32 0, i32 8
  %arraydecay25 = getelementptr inbounds [2054 x i8], [2054 x i8]* %cstr24, i32 0, i32 0
  store i8* %arraydecay25, i8** %result, align 8, !tbaa !1
  %37 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u26 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %37, i32 0, i32 1
  %s27 = bitcast %union._u* %u26 to %struct._su*
  %memory = getelementptr inbounds %struct._su, %struct._su* %s27, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %tobool28 = icmp ne %struct.gs_memory_s* %38, null
  br i1 %tobool28, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.else.18
  %39 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u30 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %39, i32 0, i32 1
  %s31 = bitcast %union._u* %u30 to %struct._su*
  %memory32 = getelementptr inbounds %struct._su, %struct._su* %s31, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !25
  %42 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u33 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %42, i32 0, i32 1
  %s34 = bitcast %union._u* %u33 to %struct._su*
  %memory35 = getelementptr inbounds %struct._su, %struct._su* %s34, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !23
  %44 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u36 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %44, i32 0, i32 1
  %s37 = bitcast %union._u* %u36 to %struct._su*
  %chars = getelementptr inbounds %struct._su, %struct._su* %s37, i32 0, i32 2
  %45 = load i8*, i8** %chars, align 8, !tbaa !22
  call void %41(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.29, %if.else.18
  %46 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth39 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %46, i32 0, i32 7
  %47 = load i32, i32* %depth39, align 4, !tbaa !16
  %dec40 = add nsw i32 %47, -1
  store i32 %dec40, i32* %depth39, align 4, !tbaa !16
  %48 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %48, i32 -1
  store %struct.arg_source_s* %incdec.ptr41, %struct.arg_source_s** %pas, align 8, !tbaa !1
  br label %at

if.else.42:                                       ; preds = %if.else
  %49 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u43 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %49, i32 0, i32 1
  %s44 = bitcast %union._u* %u43 to %struct._su*
  %str45 = getelementptr inbounds %struct._su, %struct._su* %s44, i32 0, i32 4
  %50 = load i8*, i8** %str45, align 8, !tbaa !24
  store i8* %50, i8** %astr, align 8, !tbaa !1
  store %struct._IO_FILE* null, %struct._IO_FILE** %f, align 8, !tbaa !1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.6
  %51 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %cstr48 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %51, i32 0, i32 8
  %arraydecay49 = getelementptr inbounds [2054 x i8], [2054 x i8]* %cstr48, i32 0, i32 0
  store i8* %arraydecay49, i8** %cstr, align 8, !tbaa !1
  store i8* %arraydecay49, i8** %result, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %in_quote, align 4, !tbaa !5
  store i32 1, i32* %eol, align 4, !tbaa !5
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %53 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %54 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call50 = call i32 @get_codepoint(%struct._IO_FILE* %52, i8** %astr, %struct.arg_list_s* %53, %struct.arg_source_s* %54) #6
  store i32 %call50, i32* %c, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %lor.end.181, %if.end.155, %if.end.147, %if.end.127, %if.then.97, %if.end.47
  %55 = load i32, i32* %c, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %55, -1
  br i1 %cmp51, label %if.then.52, label %if.end.86

if.then.52:                                       ; preds = %for.cond
  %56 = load i32, i32* %in_quote, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %56, 0
  br i1 %tobool53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.then.52
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %57 to i64
  %58 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %58, i64 %idxprom55
  store i8 0, i8* %arrayidx56, align 1, !tbaa !7
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %cstr, align 8, !tbaa !1
  %call57 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* %60) #6
  %61 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %61, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.then.52
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %62, 0
  br i1 %cmp59, label %if.then.60, label %if.end.85

if.then.60:                                       ; preds = %if.end.58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %cmp61 = icmp ne %struct._IO_FILE* %63, null
  br i1 %cmp61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call63 = call i32 @fclose(%struct._IO_FILE* %64) #6
  br label %if.end.82

if.else.64:                                       ; preds = %if.then.60
  %65 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u65 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %65, i32 0, i32 1
  %s66 = bitcast %union._u* %u65 to %struct._su*
  %memory67 = getelementptr inbounds %struct._su, %struct._su* %s66, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !23
  %tobool68 = icmp ne %struct.gs_memory_s* %66, null
  br i1 %tobool68, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %if.else.64
  %67 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u70 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %67, i32 0, i32 1
  %s71 = bitcast %union._u* %u70 to %struct._su*
  %memory72 = getelementptr inbounds %struct._su, %struct._su* %s71, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !23
  %procs73 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object74 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs73, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object74, align 8, !tbaa !25
  %70 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u75 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %70, i32 0, i32 1
  %s76 = bitcast %union._u* %u75 to %struct._su*
  %memory77 = getelementptr inbounds %struct._su, %struct._su* %s76, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory77, align 8, !tbaa !23
  %72 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u78 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %72, i32 0, i32 1
  %s79 = bitcast %union._u* %u78 to %struct._su*
  %chars80 = getelementptr inbounds %struct._su, %struct._su* %s79, i32 0, i32 2
  %73 = load i8*, i8** %chars80, align 8, !tbaa !22
  call void %69(%struct.gs_memory_s* %71, i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.69, %if.else.64
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.62
  %74 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth83 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %74, i32 0, i32 7
  %75 = load i32, i32* %depth83, align 4, !tbaa !16
  %dec84 = add nsw i32 %75, -1
  store i32 %dec84, i32* %depth83, align 4, !tbaa !16
  br label %top

if.end.85:                                        ; preds = %if.end.58
  br label %for.end

if.end.86:                                        ; preds = %for.cond
  %76 = load i32, i32* %c, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %76, 0
  br i1 %cmp87, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.end.86
  %77 = load i32, i32* %c, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %77, 256
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.103

land.lhs.true.89:                                 ; preds = %land.lhs.true
  %78 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom90 = sext i32 %78 to i64
  %call91 = call i16** @__ctype_b_loc() #9
  %79 = load i16*, i16** %call91, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %79, i64 %idxprom90
  %80 = load i16, i16* %arrayidx92, align 2, !tbaa !28
  %conv = zext i16 %80 to i32
  %and = and i32 %conv, 8192
  %tobool93 = icmp ne i32 %and, 0
  br i1 %tobool93, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %land.lhs.true.89
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %81, 0
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.then.94
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %83 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %84 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call98 = call i32 @get_codepoint(%struct._IO_FILE* %82, i8** %astr, %struct.arg_list_s* %83, %struct.arg_source_s* %84) #6
  store i32 %call98, i32* %c, align 4, !tbaa !5
  br label %for.cond

if.end.99:                                        ; preds = %if.then.94
  %85 = load i32, i32* %in_quote, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %85, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.end.99
  br label %for.end

if.end.102:                                       ; preds = %if.end.99
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.89, %land.lhs.true, %if.end.86
  %86 = load i32, i32* %c, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %86, 35
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.128

land.lhs.true.106:                                ; preds = %if.end.103
  %87 = load i32, i32* %eol, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %87, 0
  br i1 %tobool107, label %if.then.108, label %if.end.128

if.then.108:                                      ; preds = %land.lhs.true.106
  br label %do.body

do.body:                                          ; preds = %lor.end.117, %if.then.108
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %89 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %90 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call109 = call i32 @get_codepoint(%struct._IO_FILE* %88, i8** %astr, %struct.arg_list_s* %89, %struct.arg_source_s* %90) #6
  store i32 %call109, i32* %c, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %91 = load i32, i32* %c, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %91, 0
  br i1 %cmp110, label %lor.end.117, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %92 = load i32, i32* %c, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %92, 13
  br i1 %cmp112, label %lor.end, label %lor.rhs.114

lor.rhs.114:                                      ; preds = %lor.rhs
  %93 = load i32, i32* %c, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %93, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.114, %lor.rhs
  %94 = phi i1 [ true, %lor.rhs ], [ %cmp115, %lor.rhs.114 ]
  br label %lor.end.117

lor.end.117:                                      ; preds = %lor.end, %do.cond
  %95 = phi i1 [ true, %do.cond ], [ %94, %lor.end ]
  %lnot = xor i1 %95, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.117
  %96 = load i32, i32* %c, align 4, !tbaa !5
  %cmp118 = icmp eq i32 %96, 13
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %do.end
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %98 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %99 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call121 = call i32 @get_codepoint(%struct._IO_FILE* %97, i8** %astr, %struct.arg_list_s* %98, %struct.arg_source_s* %99) #6
  store i32 %call121, i32* %c, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %do.end
  %100 = load i32, i32* %c, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %100, 10
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.122
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %102 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %103 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call126 = call i32 @get_codepoint(%struct._IO_FILE* %101, i8** %astr, %struct.arg_list_s* %102, %struct.arg_source_s* %103) #6
  store i32 %call126, i32* %c, align 4, !tbaa !5
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.122
  br label %for.cond

if.end.128:                                       ; preds = %land.lhs.true.106, %if.end.103
  %104 = load i32, i32* %c, align 4, !tbaa !5
  %cmp129 = icmp eq i32 %104, 92
  br i1 %cmp129, label %if.then.131, label %if.end.158

if.then.131:                                      ; preds = %if.end.128
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %106 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %107 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call132 = call i32 @get_codepoint(%struct._IO_FILE* %105, i8** %astr, %struct.arg_list_s* %106, %struct.arg_source_s* %107) #6
  store i32 %call132, i32* %c, align 4, !tbaa !5
  %108 = load i32, i32* %c, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %108, 13
  br i1 %cmp133, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.131
  %109 = load i32, i32* %c, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %109, 10
  br i1 %cmp135, label %if.then.137, label %if.end.148

if.then.137:                                      ; preds = %lor.lhs.false, %if.then.131
  %110 = load i32, i32* %c, align 4, !tbaa !5
  %cmp138 = icmp eq i32 %110, 13
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.137
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %112 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %113 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call141 = call i32 @get_codepoint(%struct._IO_FILE* %111, i8** %astr, %struct.arg_list_s* %112, %struct.arg_source_s* %113) #6
  store i32 %call141, i32* %c, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.then.137
  %114 = load i32, i32* %c, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %114, 10
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %116 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %117 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call146 = call i32 @get_codepoint(%struct._IO_FILE* %115, i8** %astr, %struct.arg_list_s* %116, %struct.arg_source_s* %117) #6
  store i32 %call146, i32* %c, align 4, !tbaa !5
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.end.142
  store i32 1, i32* %eol, align 4, !tbaa !5
  br label %for.cond

if.end.148:                                       ; preds = %lor.lhs.false
  %118 = load i32, i32* %i, align 4, !tbaa !5
  %cmp149 = icmp sge i32 %118, 2047
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %if.end.148
  %119 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom152 = sext i32 %119 to i64
  %120 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %120, i64 %idxprom152
  store i8 0, i8* %arrayidx153, align 1, !tbaa !7
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %122 = load i8*, i8** %cstr, align 8, !tbaa !1
  %call154 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %122) #6
  %123 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %123, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.155:                                       ; preds = %if.end.148
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %124 to i64
  %125 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %125, i64 %idxprom156
  store i8 92, i8* %arrayidx157, align 1, !tbaa !7
  store i32 0, i32* %eol, align 4, !tbaa !5
  br label %for.cond

if.end.158:                                       ; preds = %if.end.128
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %cmp159 = icmp sge i32 %126, 2047
  br i1 %cmp159, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %if.end.158
  %127 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom162 = sext i32 %127 to i64
  %128 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %128, i64 %idxprom162
  store i8 0, i8* %arrayidx163, align 1, !tbaa !7
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %130 = load i8*, i8** %cstr, align 8, !tbaa !1
  %call164 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* %130) #6
  %131 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %131, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.165:                                       ; preds = %if.end.158
  %132 = load i32, i32* %c, align 4, !tbaa !5
  %cmp166 = icmp eq i32 %132, 34
  br i1 %cmp166, label %if.then.168, label %if.else.171

if.then.168:                                      ; preds = %if.end.165
  %133 = load i32, i32* %in_quote, align 4, !tbaa !5
  %tobool169 = icmp ne i32 %133, 0
  %lnot170 = xor i1 %tobool169, true
  %lnot.ext = zext i1 %lnot170 to i32
  store i32 %lnot.ext, i32* %in_quote, align 4, !tbaa !5
  br label %if.end.175

if.else.171:                                      ; preds = %if.end.165
  %134 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom172 = sext i32 %134 to i64
  %135 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %135, i64 %idxprom172
  %136 = load i32, i32* %c, align 4, !tbaa !5
  %call174 = call i32 @codepoint_to_utf8(i8* %arrayidx173, i32 %136) #6
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %137, %call174
  store i32 %add, i32* %i, align 4, !tbaa !5
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.171, %if.then.168
  %138 = load i32, i32* %c, align 4, !tbaa !5
  %cmp176 = icmp eq i32 %138, 13
  br i1 %cmp176, label %lor.end.181, label %lor.rhs.178

lor.rhs.178:                                      ; preds = %if.end.175
  %139 = load i32, i32* %c, align 4, !tbaa !5
  %cmp179 = icmp eq i32 %139, 10
  br label %lor.end.181

lor.end.181:                                      ; preds = %lor.rhs.178, %if.end.175
  %140 = phi i1 [ true, %if.end.175 ], [ %cmp179, %lor.rhs.178 ]
  %lor.ext = zext i1 %140 to i32
  store i32 %lor.ext, i32* %eol, align 4, !tbaa !5
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %142 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %143 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %call182 = call i32 @get_codepoint(%struct._IO_FILE* %141, i8** %astr, %struct.arg_list_s* %142, %struct.arg_source_s* %143) #6
  store i32 %call182, i32* %c, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.101, %if.end.85
  %144 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom183 = sext i32 %144 to i64
  %145 = load i8*, i8** %cstr, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %145, i64 %idxprom183
  store i8 0, i8* %arrayidx184, align 1, !tbaa !7
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %cmp185 = icmp eq %struct._IO_FILE* %146, null
  br i1 %cmp185, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %for.end
  %147 = load i8*, i8** %astr, align 8, !tbaa !1
  %148 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u188 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %148, i32 0, i32 1
  %s189 = bitcast %union._u* %u188 to %struct._su*
  %str190 = getelementptr inbounds %struct._su, %struct._su* %s189, i32 0, i32 4
  store i8* %147, i8** %str190, align 8, !tbaa !24
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.187, %for.end
  br label %at

at:                                               ; preds = %if.end.191, %if.end.38, %if.end
  %149 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %expand_ats = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %149, i32 0, i32 0
  %150 = load i32, i32* %expand_ats, align 4, !tbaa !8
  %tobool192 = icmp ne i32 %150, 0
  br i1 %tobool192, label %land.lhs.true.193, label %if.end.218

land.lhs.true.193:                                ; preds = %at
  %151 = load i8*, i8** %result, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx194, align 1, !tbaa !7
  %conv195 = sext i8 %152 to i32
  %cmp196 = icmp eq i32 %conv195, 64
  br i1 %cmp196, label %if.then.198, label %if.end.218

if.then.198:                                      ; preds = %land.lhs.true.193
  %153 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth199 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %153, i32 0, i32 7
  %154 = load i32, i32* %depth199, align 4, !tbaa !16
  %cmp200 = icmp eq i32 %154, 10
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %if.then.198
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %call203 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #6
  %156 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %156, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.204:                                       ; preds = %if.then.198
  %157 = load i8*, i8** %result, align 8, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr205, i8** %result, align 8, !tbaa !1
  %158 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %arg_fopen = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %158, i32 0, i32 1
  %159 = load %struct._IO_FILE* (i8*, i8*)*, %struct._IO_FILE* (i8*, i8*)** %arg_fopen, align 8, !tbaa !10
  %160 = load i8*, i8** %result, align 8, !tbaa !1
  %161 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %fopen_data = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %161, i32 0, i32 2
  %162 = load i8*, i8** %fopen_data, align 8, !tbaa !11
  %call206 = call %struct._IO_FILE* %159(i8* %160, i8* %162) #6
  store %struct._IO_FILE* %call206, %struct._IO_FILE** %f, align 8, !tbaa !1
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %cmp207 = icmp eq %struct._IO_FILE* %163, null
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.204
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %errmem.addr, align 8, !tbaa !1
  %165 = load i8*, i8** %result, align 8, !tbaa !1
  %call210 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* %165) #6
  %166 = load i32*, i32** %code.addr, align 8, !tbaa !1
  store i32 -100, i32* %166, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.211:                                       ; preds = %if.end.204
  %167 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %depth212 = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %167, i32 0, i32 7
  %168 = load i32, i32* %depth212, align 4, !tbaa !16
  %inc213 = add nsw i32 %168, 1
  store i32 %inc213, i32* %depth212, align 4, !tbaa !16
  %169 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %incdec.ptr214 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %169, i32 1
  store %struct.arg_source_s* %incdec.ptr214, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %170 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %is_file215 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %170, i32 0, i32 0
  store i32 1, i32* %is_file215, align 4, !tbaa !17
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %172 = load %struct.arg_source_s*, %struct.arg_source_s** %pas, align 8, !tbaa !1
  %u216 = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %172, i32 0, i32 1
  %file217 = bitcast %union._u* %u216 to %struct._IO_FILE**
  store %struct._IO_FILE* %171, %struct._IO_FILE** %file217, align 8, !tbaa !1
  br label %top

if.end.218:                                       ; preds = %land.lhs.true.193, %at
  %173 = load i8*, i8** %result, align 8, !tbaa !1
  store i8* %173, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.218, %if.then.209, %if.then.202, %if.then.161, %if.then.151, %if.then.54, %if.then.13, %if.then.3
  %174 = bitcast i32* %eol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %in_quote to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i8** %cstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i8** %astr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast %struct.arg_source_s** %pas to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = load i8*, i8** %retval
  ret i8* %183
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @get_codepoint(%struct._IO_FILE* %file, i8** %astr, %struct.arg_list_s* %pal, %struct.arg_source_s* %pas) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %astr.addr = alloca i8**, align 8
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %pas.addr = alloca %struct.arg_source_s*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8** %astr, i8*** %astr.addr, align 8, !tbaa !1
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store %struct.arg_source_s* %pas, %struct.arg_source_s** %pas.addr, align 8, !tbaa !1
  %0 = load %struct.arg_source_s*, %struct.arg_source_s** %pas.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.arg_source_s, %struct.arg_source_s* %0, i32 0, i32 1
  %s = bitcast %union._u* %u to %struct._su*
  %decoded = getelementptr inbounds %struct._su, %struct._su* %s, i32 0, i32 1
  %1 = load i32, i32* %decoded, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %call = call i32 @get_codepoint_utf8(%struct._IO_FILE* %2, i8** %3) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %get_codepoint = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %4, i32 0, i32 3
  %5 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint, align 8, !tbaa !12
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %astr.addr, align 8, !tbaa !1
  %call1 = call i32 %5(%struct._IO_FILE* %6, i8** %7) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define i8* @arg_copy(i8* %str, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %sstr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %sstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %2 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %call1 = call i8* %2(%struct.gs_memory_s* %3, i32 %conv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %call1, i8** %sstr, align 8, !tbaa !1
  %5 = load i8*, i8** %sstr, align 8, !tbaa !1
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gs_program_name() #6
  %call4 = call i64 @gs_revision_number() #6
  call void @eprintf_program_ident(i8* %call3, i64 %call4) #6
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 347) #6
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %sstr, align 8, !tbaa !1
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call6 = call i8* @strcpy(i8* %6, i8* %7) #8
  %8 = load i8*, i8** %sstr, align 8, !tbaa !1
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %sstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define void @arg_free(i8* %str, %struct.gs_memory_s* %mem) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !25
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @arg_strcmp(%struct.arg_list_s* %pal, i8* %arg, i8* %match) #0 {
entry:
  %retval = alloca i32, align 4
  %pal.addr = alloca %struct.arg_list_s*, align 8
  %arg.addr = alloca i8*, align 8
  %match.addr = alloca i8*, align 8
  %rune = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.arg_list_s* %pal, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  store i8* %match, i8** %match.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %arg.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %match.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %4 = load %struct.arg_list_s*, %struct.arg_list_s** %pal.addr, align 8, !tbaa !1
  %get_codepoint = getelementptr inbounds %struct.arg_list_s, %struct.arg_list_s* %4, i32 0, i32 3
  %5 = load i32 (%struct._IO_FILE*, i8**)*, i32 (%struct._IO_FILE*, i8**)** %get_codepoint, align 8, !tbaa !12
  %call = call i32 %5(%struct._IO_FILE* null, i8** %arg.addr) #6
  store i32 %call, i32* %rune, align 4, !tbaa !5
  %6 = load i32, i32* %rune, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %rune, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  %7 = load i8*, i8** %match.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %match.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  %9 = load i32, i32* %rune, align 4, !tbaa !5
  %10 = load i32, i32* %c, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %9, %10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %11 = load i32, i32* %rune, align 4, !tbaa !5
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %13 = load i32, i32* %rune, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %15 = phi i1 [ false, %do.cond ], [ %tobool9, %land.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %if.then
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %rune to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @fgetc(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 0}
!9 = !{!"arg_list_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !3, i64 56, !3, i64 2112}
!10 = !{!9, !2, i64 8}
!11 = !{!9, !2, i64 16}
!12 = !{!9, !2, i64 24}
!13 = !{!9, !2, i64 32}
!14 = !{!9, !2, i64 40}
!15 = !{!9, !6, i64 48}
!16 = !{!9, !6, i64 52}
!17 = !{!18, !6, i64 0}
!18 = !{!"arg_source_s", !6, i64 0, !3, i64 8}
!19 = !{!20, !6, i64 0}
!20 = !{!"_su", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{!20, !6, i64 4}
!22 = !{!20, !2, i64 8}
!23 = !{!20, !2, i64 16}
!24 = !{!20, !2, i64 24}
!25 = !{!26, !2, i64 24}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !3, i64 0}
!30 = !{!26, !2, i64 64}
