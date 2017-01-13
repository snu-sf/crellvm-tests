; ModuleID = './igcstr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type { void (%struct.obj_header_s*, i32)*, i32 (%struct.obj_header_s*, i32, i32)*, void (%struct.gs_memory_s*, %struct.obj_header_s*, %struct.obj_header_s*, i32)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type { %struct.gc_procs_with_refs_s*, %struct.chunk_locator_s, %struct.vm_spaces_s, i32, i32, %struct.gs_memory_s*, %struct.name_table_s*, %struct.gs_memory_s* }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.lost_ = type { i64, i64, i64 }
%struct.stream_s = type opaque
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.alloc_change_s = type opaque
%struct.alloc_save_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.name_table_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque

@count_zero_bits_table = internal constant [256 x i8] c"\08\07\07\06\07\06\06\05\07\06\06\05\06\05\05\04\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\04\03\03\02\03\02\02\01\03\02\02\01\02\01\01\00", align 16

; Function Attrs: nounwind uwtable
define void @gc_strings_set_marks(%struct.chunk_s* %cp, i32 %mark) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mark.addr = alloca i32, align 4
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store i32 %mark, i32* %mark.addr, align 4, !tbaa !5
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 17
  %1 = load i8*, i8** %smark, align 8, !tbaa !7
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 17
  %3 = load i8*, i8** %smark1, align 8, !tbaa !7
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %4, i32 0, i32 18
  %5 = load i32, i32* %smark_size, align 4, !tbaa !9
  %conv = zext i32 %5 to i64
  %call = call i8* @memset(i8* %3, i32 0, i64 %conv) #4
  %6 = load i32, i32* %mark.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.end
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 19
  %8 = load i8*, i8** %sbase, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 7
  %10 = load i8*, i8** %climit, align 8, !tbaa !11
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sbase3 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 19
  %12 = load i8*, i8** %sbase3, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %sub.ptr.sub, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv4 = trunc i64 %sub to i32
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %call5 = call i32 @gc_mark_string(i8* %add.ptr, i32 %conv4, i32 1, %struct.chunk_s* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gc_mark_string(i8* %ptr, i32 %size, i32 %set, %struct.chunk_s* %cp) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %cp.addr = alloca %struct.chunk_s*, align 8
  %offset = alloca i32, align 4
  %bp = alloca i32*, align 8
  %bn = alloca i32, align 4
  %m = alloca i32, align 4
  %left = alloca i32, align 4
  %marks = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %set, i32* %set.addr, align 4, !tbaa !5
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sub (i64 0, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64)))
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 19
  %3 = load i8*, i8** %sbase, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %offset, align 4, !tbaa !5
  %4 = bitcast i32** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 17
  %6 = load i8*, i8** %smark, align 8, !tbaa !7
  %7 = load i32, i32* %offset, align 4, !tbaa !5
  %and = and i32 %7, -32
  %shr = lshr i32 %and, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = bitcast i8* %add.ptr1 to i32*
  store i32* %8, i32** %bp, align 8, !tbaa !1
  %9 = bitcast i32* %bn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %offset, align 4, !tbaa !5
  %and2 = and i32 %10, 31
  store i32 %and2, i32* %bn, align 4, !tbaa !5
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %bn, align 4, !tbaa !5
  %shl = shl i32 -1, %12
  store i32 %shl, i32* %m, align 4, !tbaa !5
  %13 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv3 = zext i32 %14 to i64
  %add = add i64 %conv3, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %left, align 4, !tbaa !5
  %15 = bitcast i32* %marks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %marks, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %set.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %17 = load i32, i32* %left, align 4, !tbaa !5
  %18 = load i32, i32* %bn, align 4, !tbaa !5
  %add5 = add i32 %17, %18
  %cmp = icmp uge i32 %add5, 32
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %19 = load i32*, i32** %bp, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %neg = xor i32 %20, -1
  %21 = load i32, i32* %m, align 4, !tbaa !5
  %and8 = and i32 %neg, %21
  %22 = load i32, i32* %marks, align 4, !tbaa !5
  %or = or i32 %22, %and8
  store i32 %or, i32* %marks, align 4, !tbaa !5
  %23 = load i32, i32* %m, align 4, !tbaa !5
  %24 = load i32*, i32** %bp, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %or9 = or i32 %25, %23
  store i32 %or9, i32* %24, align 4, !tbaa !5
  store i32 -1, i32* %m, align 4, !tbaa !5
  %26 = load i32, i32* %bn, align 4, !tbaa !5
  %sub = sub i32 32, %26
  %27 = load i32, i32* %left, align 4, !tbaa !5
  %sub10 = sub i32 %27, %sub
  store i32 %sub10, i32* %left, align 4, !tbaa !5
  %28 = load i32*, i32** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr, i32** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %29 = load i32, i32* %left, align 4, !tbaa !5
  %cmp11 = icmp uge i32 %29, 32
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32*, i32** %bp, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %neg13 = xor i32 %31, -1
  %32 = load i32, i32* %marks, align 4, !tbaa !5
  %or14 = or i32 %32, %neg13
  store i32 %or14, i32* %marks, align 4, !tbaa !5
  %33 = load i32*, i32** %bp, align 8, !tbaa !1
  store i32 -1, i32* %33, align 4, !tbaa !5
  %34 = load i32, i32* %left, align 4, !tbaa !5
  %sub15 = sub i32 %34, 32
  store i32 %sub15, i32* %left, align 4, !tbaa !5
  %35 = load i32*, i32** %bp, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr16, i32** %bp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %36 = load i32, i32* %left, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %36, 0
  br i1 %tobool17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %if.end
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %37 = load i32, i32* %m, align 4, !tbaa !5
  %38 = load i32, i32* %left, align 4, !tbaa !5
  %shl22 = shl i32 %37, %38
  %39 = load i32, i32* %m, align 4, !tbaa !5
  %sub23 = sub i32 %39, %shl22
  store i32 %sub23, i32* %m, align 4, !tbaa !5
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.21
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %40 = load i32*, i32** %bp, align 8, !tbaa !1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %neg27 = xor i32 %41, -1
  %42 = load i32, i32* %m, align 4, !tbaa !5
  %and28 = and i32 %neg27, %42
  %43 = load i32, i32* %marks, align 4, !tbaa !5
  %or29 = or i32 %43, %and28
  store i32 %or29, i32* %marks, align 4, !tbaa !5
  %44 = load i32, i32* %m, align 4, !tbaa !5
  %45 = load i32*, i32** %bp, align 8, !tbaa !1
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %or30 = or i32 %46, %44
  store i32 %or30, i32* %45, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.26, %if.end
  br label %if.end.74

if.else:                                          ; preds = %do.end
  %47 = load i32, i32* %left, align 4, !tbaa !5
  %48 = load i32, i32* %bn, align 4, !tbaa !5
  %add32 = add i32 %47, %48
  %cmp33 = icmp uge i32 %add32, 32
  br i1 %cmp33, label %if.then.35, label %if.end.60

if.then.35:                                       ; preds = %if.else
  %49 = load i32, i32* %m, align 4, !tbaa !5
  %neg36 = xor i32 %49, -1
  %50 = load i32*, i32** %bp, align 8, !tbaa !1
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %and37 = and i32 %51, %neg36
  store i32 %and37, i32* %50, align 4, !tbaa !5
  store i32 -1, i32* %m, align 4, !tbaa !5
  %52 = load i32, i32* %bn, align 4, !tbaa !5
  %sub38 = sub i32 32, %52
  %53 = load i32, i32* %left, align 4, !tbaa !5
  %sub39 = sub i32 %53, %sub38
  store i32 %sub39, i32* %left, align 4, !tbaa !5
  %54 = load i32*, i32** %bp, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %incdec.ptr40, i32** %bp, align 8, !tbaa !1
  %55 = load i32, i32* %left, align 4, !tbaa !5
  %cmp41 = icmp uge i32 %55, 160
  br i1 %cmp41, label %if.then.43, label %if.else.51

if.then.43:                                       ; preds = %if.then.35
  %56 = load i32*, i32** %bp, align 8, !tbaa !1
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* %left, align 4, !tbaa !5
  %and44 = and i32 %58, -32
  %shr45 = lshr i32 %and44, 3
  %conv46 = zext i32 %shr45 to i64
  %call = call i8* @memset(i8* %57, i32 0, i64 %conv46) #4
  %59 = load i32, i32* %left, align 4, !tbaa !5
  %shr47 = lshr i32 %59, 5
  %60 = load i32*, i32** %bp, align 8, !tbaa !1
  %idx.ext48 = zext i32 %shr47 to i64
  %add.ptr49 = getelementptr inbounds i32, i32* %60, i64 %idx.ext48
  store i32* %add.ptr49, i32** %bp, align 8, !tbaa !1
  %61 = load i32, i32* %left, align 4, !tbaa !5
  %and50 = and i32 %61, 31
  store i32 %and50, i32* %left, align 4, !tbaa !5
  br label %if.end.59

if.else.51:                                       ; preds = %if.then.35
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %if.else.51
  %62 = load i32, i32* %left, align 4, !tbaa !5
  %cmp53 = icmp uge i32 %62, 32
  br i1 %cmp53, label %while.body.55, label %while.end.58

while.body.55:                                    ; preds = %while.cond.52
  %63 = load i32*, i32** %bp, align 8, !tbaa !1
  store i32 0, i32* %63, align 4, !tbaa !5
  %64 = load i32, i32* %left, align 4, !tbaa !5
  %sub56 = sub i32 %64, 32
  store i32 %sub56, i32* %left, align 4, !tbaa !5
  %65 = load i32*, i32** %bp, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %incdec.ptr57, i32** %bp, align 8, !tbaa !1
  br label %while.cond.52

while.end.58:                                     ; preds = %while.cond.52
  br label %if.end.59

if.end.59:                                        ; preds = %while.end.58, %if.then.43
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.else
  %66 = load i32, i32* %left, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %66, 0
  br i1 %tobool61, label %if.then.62, label %if.end.73

if.then.62:                                       ; preds = %if.end.60
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %67 = load i32, i32* %m, align 4, !tbaa !5
  %68 = load i32, i32* %left, align 4, !tbaa !5
  %shl66 = shl i32 %67, %68
  %69 = load i32, i32* %m, align 4, !tbaa !5
  %sub67 = sub i32 %69, %shl66
  store i32 %sub67, i32* %m, align 4, !tbaa !5
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.65
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  %70 = load i32, i32* %m, align 4, !tbaa !5
  %neg71 = xor i32 %70, -1
  %71 = load i32*, i32** %bp, align 8, !tbaa !1
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %and72 = and i32 %72, %neg71
  store i32 %and72, i32* %71, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.70, %if.end.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.31
  %73 = load i32, i32* %marks, align 4, !tbaa !5
  %cmp75 = icmp ne i32 %73, 0
  %conv76 = zext i1 %cmp75 to i32
  %74 = bitcast i32* %marks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %bn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  ret i32 %conv76
}

; Function Attrs: nounwind uwtable
define i32 @gc_string_mark(i8* %ptr, i32 %size, i32 %set, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %marks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %set, i32* %set.addr, align 4, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %marks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 sub (i64 0, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64)))
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.chunk_s* @gc_locate(i8* %add.ptr, %struct.gc_state_s* %4) #5
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.chunk_s* %call, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 17
  %6 = load i8*, i8** %smark, align 8, !tbaa !7
  %cmp3 = icmp eq i8* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.2
  %7 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %9 = load i32, i32* %set.addr, align 4, !tbaa !5
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %call6 = call i32 @gc_mark_string(i8* %7, i32 %8, i32 %9, %struct.chunk_s* %10) #5
  store i32 %call6, i32* %marks, align 4, !tbaa !5
  %11 = load i32, i32* %marks, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then.1, %if.then
  %12 = bitcast i32* %marks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.chunk_s* @gc_locate(i8*, %struct.gc_state_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gc_strings_clear_reloc(%struct.chunk_s* %cp) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 20
  %1 = load i32*, i32** %sreloc, align 8, !tbaa !12
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_strings_set_marks(%struct.chunk_s* %2, i32 1) #5
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @gc_strings_set_reloc(%struct.chunk_s* %3) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_strings_set_reloc(%struct.chunk_s* %cp) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %bot = alloca i8*, align 8
  %top = alloca i8*, align 8
  %count = alloca i32, align 4
  %relp = alloca i32*, align 8
  %bitp = alloca i8*, align 8
  %reloc = alloca i32, align 4
  %wp = alloca i32*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 20
  %1 = load i32*, i32** %sreloc, align 8, !tbaa !12
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 17
  %3 = load i8*, i8** %smark, align 8, !tbaa !7
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast i8** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 6
  %6 = load i8*, i8** %ctop, align 8, !tbaa !13
  store i8* %6, i8** %bot, align 8, !tbaa !1
  %7 = bitcast i8** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %8, i32 0, i32 7
  %9 = load i8*, i8** %climit, align 8, !tbaa !11
  store i8* %9, i8** %top, align 8, !tbaa !1
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i8*, i8** %top, align 8, !tbaa !1
  %12 = load i8*, i8** %bot, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 63
  %shr = ashr i64 %add, 6
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %13 = bitcast i32** %relp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc2 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 20
  %15 = load i32*, i32** %sreloc2, align 8, !tbaa !12
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 18
  %17 = load i32, i32* %smark_size, align 4, !tbaa !9
  %shr3 = lshr i32 %17, 3
  %idx.ext = zext i32 %shr3 to i64
  %add.ptr = getelementptr inbounds i32, i32* %15, i64 %idx.ext
  store i32* %add.ptr, i32** %relp, align 8, !tbaa !1
  %18 = bitcast i8** %bitp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 17
  %20 = load i8*, i8** %smark4, align 8, !tbaa !7
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size5 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 18
  %22 = load i32, i32* %smark_size5, align 4, !tbaa !9
  %idx.ext6 = zext i32 %22 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %idx.ext6
  store i8* %add.ptr7, i8** %bitp, align 8, !tbaa !1
  %23 = bitcast i32* %reloc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store i32 0, i32* %reloc, align 4, !tbaa !5
  %24 = bitcast i32** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i8*, i8** %bitp, align 8, !tbaa !1
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %wp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %27 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load i32*, i32** %wp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 -1
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %30 = load i32*, i32** %wp, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %30, i64 -2
  %31 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %and = and i32 %29, %31
  %cmp9 = icmp eq i32 %and, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i32*, i32** %wp, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i32, i32* %33, i64 -2
  store i32* %add.ptr11, i32** %wp, align 8, !tbaa !1
  %34 = load i32, i32* %reloc, align 4, !tbaa !5
  %add12 = add i32 %34, 64
  store i32 %add12, i32* %reloc, align 4, !tbaa !5
  %35 = load i32*, i32** %relp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %incdec.ptr, i32** %relp, align 8, !tbaa !1
  store i32 %add12, i32* %incdec.ptr, align 4, !tbaa !5
  %36 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %36, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load i32*, i32** %wp, align 8, !tbaa !1
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %bitp, align 8, !tbaa !1
  %39 = bitcast i32** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.16, %while.end
  %40 = load i32, i32* %count, align 4, !tbaa !5
  %dec14 = add i32 %40, -1
  store i32 %dec14, i32* %count, align 4, !tbaa !5
  %tobool15 = icmp ne i32 %40, 0
  br i1 %tobool15, label %while.body.16, label %while.end.58

while.body.16:                                    ; preds = %while.cond.13
  %41 = load i8*, i8** %bitp, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %41, i64 -8
  store i8* %add.ptr17, i8** %bitp, align 8, !tbaa !1
  %42 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx18, align 1, !tbaa !14
  %idxprom = zext i8 %43 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom
  %44 = load i8, i8* %arrayidx19, align 1, !tbaa !14
  %conv20 = zext i8 %44 to i32
  %sub = sub i32 64, %conv20
  %45 = load i32, i32* %reloc, align 4, !tbaa !5
  %add21 = add i32 %45, %sub
  store i32 %add21, i32* %reloc, align 4, !tbaa !5
  %46 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx22, align 1, !tbaa !14
  %idxprom23 = zext i8 %47 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom23
  %48 = load i8, i8* %arrayidx24, align 1, !tbaa !14
  %conv25 = zext i8 %48 to i32
  %49 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub26 = sub i32 %49, %conv25
  store i32 %sub26, i32* %reloc, align 4, !tbaa !5
  %50 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx27, align 1, !tbaa !14
  %idxprom28 = zext i8 %51 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom28
  %52 = load i8, i8* %arrayidx29, align 1, !tbaa !14
  %conv30 = zext i8 %52 to i32
  %53 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub31 = sub i32 %53, %conv30
  store i32 %sub31, i32* %reloc, align 4, !tbaa !5
  %54 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %54, i64 3
  %55 = load i8, i8* %arrayidx32, align 1, !tbaa !14
  %idxprom33 = zext i8 %55 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom33
  %56 = load i8, i8* %arrayidx34, align 1, !tbaa !14
  %conv35 = zext i8 %56 to i32
  %57 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub36 = sub i32 %57, %conv35
  store i32 %sub36, i32* %reloc, align 4, !tbaa !5
  %58 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %58, i64 4
  %59 = load i8, i8* %arrayidx37, align 1, !tbaa !14
  %idxprom38 = zext i8 %59 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom38
  %60 = load i8, i8* %arrayidx39, align 1, !tbaa !14
  %conv40 = zext i8 %60 to i32
  %61 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub41 = sub i32 %61, %conv40
  store i32 %sub41, i32* %reloc, align 4, !tbaa !5
  %62 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %62, i64 5
  %63 = load i8, i8* %arrayidx42, align 1, !tbaa !14
  %idxprom43 = zext i8 %63 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom43
  %64 = load i8, i8* %arrayidx44, align 1, !tbaa !14
  %conv45 = zext i8 %64 to i32
  %65 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub46 = sub i32 %65, %conv45
  store i32 %sub46, i32* %reloc, align 4, !tbaa !5
  %66 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %66, i64 6
  %67 = load i8, i8* %arrayidx47, align 1, !tbaa !14
  %idxprom48 = zext i8 %67 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom48
  %68 = load i8, i8* %arrayidx49, align 1, !tbaa !14
  %conv50 = zext i8 %68 to i32
  %69 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub51 = sub i32 %69, %conv50
  store i32 %sub51, i32* %reloc, align 4, !tbaa !5
  %70 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %70, i64 7
  %71 = load i8, i8* %arrayidx52, align 1, !tbaa !14
  %idxprom53 = zext i8 %71 to i64
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom53
  %72 = load i8, i8* %arrayidx54, align 1, !tbaa !14
  %conv55 = zext i8 %72 to i32
  %73 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub56 = sub i32 %73, %conv55
  store i32 %sub56, i32* %reloc, align 4, !tbaa !5
  %74 = load i32, i32* %reloc, align 4, !tbaa !5
  %75 = load i32*, i32** %relp, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i32, i32* %75, i32 -1
  store i32* %incdec.ptr57, i32** %relp, align 8, !tbaa !1
  store i32 %74, i32* %incdec.ptr57, align 4, !tbaa !5
  br label %while.cond.13

while.end.58:                                     ; preds = %while.cond.13
  %76 = bitcast i32* %reloc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i8** %bitp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i32** %relp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i8** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i8** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  br label %if.end

if.end:                                           ; preds = %while.end.58, %land.lhs.true, %entry
  %82 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit59 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %82, i32 0, i32 7
  %83 = load i8*, i8** %climit59, align 8, !tbaa !11
  %84 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sdest = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %84, i32 0, i32 21
  store i8* %83, i8** %sdest, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @igc_reloc_string(%struct.gs_string_s* %sptr, %struct.gc_state_s* %gcst) #0 {
entry:
  %sptr.addr = alloca %struct.gs_string_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptr = alloca i8*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %offset = alloca i32, align 4
  %reloc = alloca i32, align 4
  %bitp = alloca i8*, align 8
  %byt = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gs_string_s* %sptr, %struct.gs_string_s** %sptr.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %reloc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %bitp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  call void @llvm.lifetime.start(i64 1, i8* %byt) #2
  %5 = load %struct.gs_string_s*, %struct.gs_string_s** %sptr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !16
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_string_s*, %struct.gs_string_s** %sptr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %7, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !18
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_string_s*, %struct.gs_string_s** %sptr.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8, !tbaa !18
  store i8* %9, i8** %ptr, align 8, !tbaa !1
  %10 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 sub (i64 0, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64)))
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  %11 = load i8*, i8** %ptr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.chunk_s* @gc_locate(i8* %11, %struct.gc_state_s* %12) #5
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.chunk_s* %call, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %sreloc = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 20
  %14 = load i32*, i32** %sreloc, align 8, !tbaa !12
  %cmp4 = icmp eq i32* %14, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 17
  %16 = load i8*, i8** %smark, align 8, !tbaa !7
  %cmp5 = icmp eq i8* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %17 = load i8*, i8** %ptr, align 8, !tbaa !1
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %sbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 19
  %19 = load i8*, i8** %sbase, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %offset, align 4, !tbaa !5
  %20 = load i32, i32* %offset, align 4, !tbaa !5
  %shr = lshr i32 %20, 6
  %idxprom = zext i32 %shr to i64
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %sreloc8 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 20
  %22 = load i32*, i32** %sreloc8, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %23, i32* %reloc, align 4, !tbaa !5
  %24 = load i32, i32* %offset, align 4, !tbaa !5
  %shr9 = lshr i32 %24, 3
  %idxprom10 = zext i32 %shr9 to i64
  %25 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %smark11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %25, i32 0, i32 17
  %26 = load i8*, i8** %smark11, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds i8, i8* %26, i64 %idxprom10
  store i8* %arrayidx12, i8** %bitp, align 8, !tbaa !1
  %27 = load i32, i32* %offset, align 4, !tbaa !5
  %and = and i32 %27, 56
  switch i32 %and, label %sw.epilog [
    i32 56, label %sw.bb
    i32 48, label %sw.bb.18
    i32 40, label %sw.bb.25
    i32 32, label %sw.bb.32
    i32 24, label %sw.bb.39
    i32 16, label %sw.bb.46
    i32 8, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %if.end.7
  %28 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %28, i64 -7
  %29 = load i8, i8* %arrayidx13, align 1, !tbaa !14
  %idxprom14 = zext i8 %29 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom14
  %30 = load i8, i8* %arrayidx15, align 1, !tbaa !14
  %conv16 = zext i8 %30 to i32
  %sub = sub nsw i32 8, %conv16
  %31 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub17 = sub i32 %31, %sub
  store i32 %sub17, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.end.7, %sw.bb
  %32 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 -6
  %33 = load i8, i8* %arrayidx19, align 1, !tbaa !14
  %idxprom20 = zext i8 %33 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom20
  %34 = load i8, i8* %arrayidx21, align 1, !tbaa !14
  %conv22 = zext i8 %34 to i32
  %sub23 = sub nsw i32 8, %conv22
  %35 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub24 = sub i32 %35, %sub23
  store i32 %sub24, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end.7, %sw.bb.18
  %36 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %36, i64 -5
  %37 = load i8, i8* %arrayidx26, align 1, !tbaa !14
  %idxprom27 = zext i8 %37 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom27
  %38 = load i8, i8* %arrayidx28, align 1, !tbaa !14
  %conv29 = zext i8 %38 to i32
  %sub30 = sub nsw i32 8, %conv29
  %39 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub31 = sub i32 %39, %sub30
  store i32 %sub31, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %if.end.7, %sw.bb.25
  %40 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 -4
  %41 = load i8, i8* %arrayidx33, align 1, !tbaa !14
  %idxprom34 = zext i8 %41 to i64
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom34
  %42 = load i8, i8* %arrayidx35, align 1, !tbaa !14
  %conv36 = zext i8 %42 to i32
  %sub37 = sub nsw i32 8, %conv36
  %43 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub38 = sub i32 %43, %sub37
  store i32 %sub38, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.39

sw.bb.39:                                         ; preds = %if.end.7, %sw.bb.32
  %44 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %44, i64 -3
  %45 = load i8, i8* %arrayidx40, align 1, !tbaa !14
  %idxprom41 = zext i8 %45 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom41
  %46 = load i8, i8* %arrayidx42, align 1, !tbaa !14
  %conv43 = zext i8 %46 to i32
  %sub44 = sub nsw i32 8, %conv43
  %47 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub45 = sub i32 %47, %sub44
  store i32 %sub45, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %if.end.7, %sw.bb.39
  %48 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %48, i64 -2
  %49 = load i8, i8* %arrayidx47, align 1, !tbaa !14
  %idxprom48 = zext i8 %49 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom48
  %50 = load i8, i8* %arrayidx49, align 1, !tbaa !14
  %conv50 = zext i8 %50 to i32
  %sub51 = sub nsw i32 8, %conv50
  %51 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub52 = sub i32 %51, %sub51
  store i32 %sub52, i32* %reloc, align 4, !tbaa !5
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %if.end.7, %sw.bb.46
  %52 = load i8*, i8** %bitp, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %52, i64 -1
  %53 = load i8, i8* %arrayidx54, align 1, !tbaa !14
  %idxprom55 = zext i8 %53 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom55
  %54 = load i8, i8* %arrayidx56, align 1, !tbaa !14
  %conv57 = zext i8 %54 to i32
  %sub58 = sub nsw i32 8, %conv57
  %55 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub59 = sub i32 %55, %sub58
  store i32 %sub59, i32* %reloc, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.53, %if.end.7
  %56 = load i8*, i8** %bitp, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !14
  %conv60 = zext i8 %57 to i32
  %58 = load i32, i32* %offset, align 4, !tbaa !5
  %and61 = and i32 %58, 7
  %sub62 = sub i32 8, %and61
  %shr63 = ashr i32 255, %sub62
  %and64 = and i32 %conv60, %shr63
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, i8* %byt, align 1, !tbaa !14
  %59 = load i8, i8* %byt, align 1, !tbaa !14
  %idxprom66 = zext i8 %59 to i64
  %arrayidx67 = getelementptr inbounds [256 x i8], [256 x i8]* @count_zero_bits_table, i32 0, i64 %idxprom66
  %60 = load i8, i8* %arrayidx67, align 1, !tbaa !14
  %conv68 = zext i8 %60 to i32
  %sub69 = sub nsw i32 8, %conv68
  %61 = load i32, i32* %reloc, align 4, !tbaa !5
  %sub70 = sub i32 %61, %sub69
  store i32 %sub70, i32* %reloc, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %62 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %sdest = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %62, i32 0, i32 21
  %63 = load i8*, i8** %sdest, align 8, !tbaa !15
  %64 = load i32, i32* %reloc, align 4, !tbaa !5
  %idx.ext = zext i32 %64 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr71 = getelementptr inbounds i8, i8* %63, i64 %idx.neg
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr71, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %65 = load %struct.gs_string_s*, %struct.gs_string_s** %sptr.addr, align 8, !tbaa !1
  %data73 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %65, i32 0, i32 0
  store i8* %add.ptr72, i8** %data73, align 8, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %if.then.2, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %byt) #2
  %66 = bitcast i8** %bitp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %reloc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
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
define void @igc_reloc_const_string(%struct.gs_const_string_s* %sptr, %struct.gc_state_s* %gcst) #0 {
entry:
  %sptr.addr = alloca %struct.gs_const_string_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_const_string_s* %sptr, %struct.gs_const_string_s** %sptr.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %sptr.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_const_string_s* %0 to %struct.gs_string_s*
  %2 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @igc_reloc_string(%struct.gs_string_s* %1, %struct.gc_state_s* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @igc_reloc_param_string(%struct.gs_param_string_s* %sptr, %struct.gc_state_s* %gcst) #0 {
entry:
  %sptr.addr = alloca %struct.gs_param_string_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_param_string_s* %sptr, %struct.gs_param_string_s** %sptr.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sptr.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %0, i32 0, i32 2
  %1 = load i32, i32* %persistent, align 4, !tbaa !19
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %sptr.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_string_s* %2 to %struct.gs_string_s*
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @igc_reloc_string(%struct.gs_string_s* %3, %struct.gc_state_s* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gc_strings_compact(%struct.chunk_s* %cp, %struct.gs_memory_s* %mem) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %hi = alloca i8*, align 8
  %lo = alloca i8*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %wp = alloca i32*, align 8
  %b = alloca i8, align 1
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 17
  %1 = load i8*, i8** %smark, align 8, !tbaa !7
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.99

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %3, i32 0, i32 7
  %4 = load i8*, i8** %climit, align 8, !tbaa !11
  store i8* %4, i8** %hi, align 8, !tbaa !1
  %5 = bitcast i8** %lo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %6, i32 0, i32 6
  %7 = load i8*, i8** %ctop, align 8, !tbaa !13
  store i8* %7, i8** %lo, align 8, !tbaa !1
  %8 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i8*, i8** %hi, align 8, !tbaa !1
  store i8* %9, i8** %from, align 8, !tbaa !1
  %10 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i8*, i8** %hi, align 8, !tbaa !1
  store i8* %11, i8** %to, align 8, !tbaa !1
  %12 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %13, i32 0, i32 17
  %14 = load i8*, i8** %smark1, align 8, !tbaa !7
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 18
  %16 = load i32, i32* %smark_size, align 4, !tbaa !9
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %17 = bitcast i32** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load i8*, i8** %bp, align 8, !tbaa !1
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %wp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %20 = load i8*, i8** %to, align 8, !tbaa !1
  %21 = load i8*, i8** %lo, align 8, !tbaa !1
  %cmp2 = icmp ugt i8* %20, %21
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load i32*, i32** %wp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 -1
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %23, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load i8*, i8** %to, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %25, i64 -32
  store i8* %add.ptr4, i8** %to, align 8, !tbaa !1
  %26 = load i32*, i32** %wp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %26, i32 -1
  store i32* %incdec.ptr, i32** %wp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i32*, i32** %wp, align 8, !tbaa !1
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %bp, align 8, !tbaa !1
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.12, %while.end
  %29 = load i8*, i8** %to, align 8, !tbaa !1
  %30 = load i8*, i8** %lo, align 8, !tbaa !1
  %cmp6 = icmp ugt i8* %29, %30
  br i1 %cmp6, label %land.rhs.7, label %land.end.11

land.rhs.7:                                       ; preds = %while.cond.5
  %31 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %31, i64 -1
  %32 = load i8, i8* %arrayidx8, align 1, !tbaa !14
  %conv = zext i8 %32 to i32
  %cmp9 = icmp eq i32 %conv, 255
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.7, %while.cond.5
  %33 = phi i1 [ false, %while.cond.5 ], [ %cmp9, %land.rhs.7 ]
  br i1 %33, label %while.body.12, label %while.end.15

while.body.12:                                    ; preds = %land.end.11
  %34 = load i8*, i8** %to, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %34, i64 -8
  store i8* %add.ptr13, i8** %to, align 8, !tbaa !1
  %35 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr14, i8** %bp, align 8, !tbaa !1
  br label %while.cond.5

while.end.15:                                     ; preds = %land.end.11
  %36 = bitcast i32** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i8*, i8** %to, align 8, !tbaa !1
  store i8* %37, i8** %from, align 8, !tbaa !1
  br label %while.cond.16

while.cond.16:                                    ; preds = %sw.epilog, %while.end.15
  %38 = load i8*, i8** %from, align 8, !tbaa !1
  %39 = load i8*, i8** %lo, align 8, !tbaa !1
  %cmp17 = icmp ugt i8* %38, %39
  br i1 %cmp17, label %while.body.19, label %while.end.94

while.body.19:                                    ; preds = %while.cond.16
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr20, i8** %bp, align 8, !tbaa !1
  %41 = load i8, i8* %incdec.ptr20, align 1, !tbaa !14
  store i8 %41, i8* %b, align 1, !tbaa !14
  %42 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %42, i64 -8
  store i8* %add.ptr21, i8** %from, align 8, !tbaa !1
  %43 = load i8, i8* %b, align 1, !tbaa !14
  %conv22 = zext i8 %43 to i32
  switch i32 %conv22, label %sw.default [
    i32 255, label %sw.bb
    i32 0, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %while.body.19
  %44 = load i8*, i8** %to, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %44, i64 -8
  store i8* %add.ptr23, i8** %to, align 8, !tbaa !1
  %45 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %45, i64 7
  %46 = load i8, i8* %arrayidx24, align 1, !tbaa !14
  %47 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %47, i64 7
  store i8 %46, i8* %arrayidx25, align 1, !tbaa !14
  %48 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx26, align 1, !tbaa !14
  %50 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %50, i64 6
  store i8 %49, i8* %arrayidx27, align 1, !tbaa !14
  %51 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %51, i64 5
  %52 = load i8, i8* %arrayidx28, align 1, !tbaa !14
  %53 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %53, i64 5
  store i8 %52, i8* %arrayidx29, align 1, !tbaa !14
  %54 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %54, i64 4
  %55 = load i8, i8* %arrayidx30, align 1, !tbaa !14
  %56 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %56, i64 4
  store i8 %55, i8* %arrayidx31, align 1, !tbaa !14
  %57 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %57, i64 3
  %58 = load i8, i8* %arrayidx32, align 1, !tbaa !14
  %59 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %59, i64 3
  store i8 %58, i8* %arrayidx33, align 1, !tbaa !14
  %60 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %60, i64 2
  %61 = load i8, i8* %arrayidx34, align 1, !tbaa !14
  %62 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %62, i64 2
  store i8 %61, i8* %arrayidx35, align 1, !tbaa !14
  %63 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx36, align 1, !tbaa !14
  %65 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %arrayidx37, align 1, !tbaa !14
  %66 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx38, align 1, !tbaa !14
  %68 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %arrayidx39, align 1, !tbaa !14
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.19
  %69 = load i8, i8* %b, align 1, !tbaa !14
  %conv40 = zext i8 %69 to i32
  %and = and i32 %conv40, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %sw.default
  %70 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %70, i64 7
  %71 = load i8, i8* %arrayidx42, align 1, !tbaa !14
  %72 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr43, i8** %to, align 8, !tbaa !1
  store i8 %71, i8* %incdec.ptr43, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then.41, %sw.default
  %73 = load i8, i8* %b, align 1, !tbaa !14
  %conv44 = zext i8 %73 to i32
  %and45 = and i32 %conv44, 64
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end
  %74 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %74, i64 6
  %75 = load i8, i8* %arrayidx48, align 1, !tbaa !14
  %76 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr49, i8** %to, align 8, !tbaa !1
  store i8 %75, i8* %incdec.ptr49, align 1, !tbaa !14
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end
  %77 = load i8, i8* %b, align 1, !tbaa !14
  %conv51 = zext i8 %77 to i32
  %and52 = and i32 %conv51, 32
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.50
  %78 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %78, i64 5
  %79 = load i8, i8* %arrayidx55, align 1, !tbaa !14
  %80 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %incdec.ptr56, i8** %to, align 8, !tbaa !1
  store i8 %79, i8* %incdec.ptr56, align 1, !tbaa !14
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.50
  %81 = load i8, i8* %b, align 1, !tbaa !14
  %conv58 = zext i8 %81 to i32
  %and59 = and i32 %conv58, 16
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.57
  %82 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %82, i64 4
  %83 = load i8, i8* %arrayidx62, align 1, !tbaa !14
  %84 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %incdec.ptr63, i8** %to, align 8, !tbaa !1
  store i8 %83, i8* %incdec.ptr63, align 1, !tbaa !14
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.end.57
  %85 = load i8, i8* %b, align 1, !tbaa !14
  %conv65 = zext i8 %85 to i32
  %and66 = and i32 %conv65, 8
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.64
  %86 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx69, align 1, !tbaa !14
  %88 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr70, i8** %to, align 8, !tbaa !1
  store i8 %87, i8* %incdec.ptr70, align 1, !tbaa !14
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.64
  %89 = load i8, i8* %b, align 1, !tbaa !14
  %conv72 = zext i8 %89 to i32
  %and73 = and i32 %conv72, 4
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.71
  %90 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx76, align 1, !tbaa !14
  %92 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %incdec.ptr77, i8** %to, align 8, !tbaa !1
  store i8 %91, i8* %incdec.ptr77, align 1, !tbaa !14
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.71
  %93 = load i8, i8* %b, align 1, !tbaa !14
  %conv79 = zext i8 %93 to i32
  %and80 = and i32 %conv79, 2
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.end.78
  %94 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx83, align 1, !tbaa !14
  %96 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %incdec.ptr84, i8** %to, align 8, !tbaa !1
  store i8 %95, i8* %incdec.ptr84, align 1, !tbaa !14
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.end.78
  %97 = load i8, i8* %b, align 1, !tbaa !14
  %conv86 = zext i8 %97 to i32
  %and87 = and i32 %conv86, 1
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.85
  %98 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx90, align 1, !tbaa !14
  %100 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr91 = getelementptr inbounds i8, i8* %100, i32 -1
  store i8* %incdec.ptr91, i8** %to, align 8, !tbaa !1
  store i8 %99, i8* %incdec.ptr91, align 1, !tbaa !14
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.85
  br label %sw.bb.93

sw.bb.93:                                         ; preds = %while.body.19, %if.end.92
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.93, %sw.bb
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  br label %while.cond.16

while.end.94:                                     ; preds = %while.cond.16
  br label %do.body

do.body:                                          ; preds = %while.end.94
  br label %do.body.95

do.body.95:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.95
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.96

do.cond.96:                                       ; preds = %do.end
  br label %do.end.97

do.end.97:                                        ; preds = %do.cond.96
  %101 = load i8*, i8** %to, align 8, !tbaa !1
  %102 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %ctop98 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %102, i32 0, i32 6
  store i8* %101, i8** %ctop98, align 8, !tbaa !13
  %103 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i8** %lo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i8** %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.97, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 128}
!8 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!9 = !{!8, !6, i64 136}
!10 = !{!8, !2, i64 144}
!11 = !{!8, !2, i64 56}
!12 = !{!8, !2, i64 152}
!13 = !{!8, !2, i64 48}
!14 = !{!3, !3, i64 0}
!15 = !{!8, !2, i64 160}
!16 = !{!17, !6, i64 8}
!17 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!18 = !{!17, !2, i64 0}
!19 = !{!20, !6, i64 12}
!20 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
