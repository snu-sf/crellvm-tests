; ModuleID = './iname.bc'
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
%struct.name_table_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_memory_s*, [4096 x i32], [2048 x %struct.sub_] }
%struct.sub_ = type { %struct.name_sub_table_s*, %struct.name_string_sub_table_s* }
%struct.name_sub_table_s = type { [512 x %struct.name_s], i32 }
%struct.name_s = type { %struct.ref_s* }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.name_string_sub_table_s = type { [512 x %struct.name_string_s] }
%struct.name_string_s = type { i32, i8* }
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_ref_memory_s = type opaque
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct._m = type { i32 }
%struct.alloc_save_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@name_max_string = constant i32 1023, align 4
@st_name_table = internal constant %struct.gs_memory_struct_type_s { i32 49184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @name_table_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @name_table_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_names_finalize, i8* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"name_init(nt)\00", align 1
@nt_1char_names = internal constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F", align 16
@hash_permutation = internal constant [256 x i8] c"\01W1\0C\B0\B2f\A6y\C1\06T\F9\E6,\A3\0E\C5\D5\B5\A1U\DAP@\EF\18\E2\EC\8E&\C8n\B1hg\8D\FD\FF2MeQ\12-`\1F\DE\19k\BEFV\ED\F0\22H\F2\14\D6\F4\E3\95\EBa\EA9\16<\FAR\AF\D0\05\7F\C7o>\87\F8\AE\A9\D3:B\9Aj\C3\F5\AB\11\BB\B6\B3\00\F3\848\94K\80\85\9Ed\82~[\0D\99\F6\D8\DBwD\DFNSX\C9cz\0B\5C \88r4\0A\8A\1E0\B7\9C#=\1A\8FJ\FB^\81\A2?\98\AA\07s\A7\F1\CE\03\967;\97\DCZ5\17\83}\AD\0F\EEO_Y\10i\89\E1\E0\D9\A0%{vI\02\9D.t\09\91\86\E4\CF\D4\CA\D7E\E5\1B\BCC|\A8\FC*\04\1Dl\15\F7\13\CD'\CB\E9(\BA\93\C6\C0\9B!\A4\BFb\CC\A5\B4uL\8C$\D2\AC)6\9F\08\B9\E8q\C4\E7/\92x3A\1C\90\FE\DD]\BD\C2\8Bp+Gm\B8\D1", align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"names_ref(string)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"name_table\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_name_sub_table = internal constant %struct.gs_memory_struct_type_s { i32 4104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"name_alloc_sub(sub-table)\00", align 1
@st_name_string_sub_table = internal constant %struct.gs_memory_struct_type_s { i32 8192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @name_string_sub_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @name_string_sub_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"name_alloc_sub(string sub-table)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"name_sub_table\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"name_string_sub_table_t\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"name_free_sub(string sub-table)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"name_free_sub(sub-table)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.name_table_s* @names_init(i64 %count, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca %struct.name_table_s*, align 8
  %count.addr = alloca i64, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %ncnt = alloca i32, align 4
  %nidx = alloca i32, align 4
  %pname = alloca %struct.name_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  store i64 %count, i64* %count.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !5
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %3 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64, i64* %count.addr, align 8, !tbaa !1
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1048576, i64* %count.addr, align 8, !tbaa !1
  br label %if.end.3

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %count.addr, align 8, !tbaa !1
  %sub = sub i64 %6, 1
  %cmp1 = icmp ugt i64 %sub, 1048575
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store %struct.name_table_s* null, %struct.name_table_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !7
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %call = call i8* %8(%struct.gs_memory_s* %9, %struct.gs_memory_struct_type_s* @st_name_table, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.name_table_s*
  store %struct.name_table_s* %10, %struct.name_table_s** %nt, align 8, !tbaa !5
  %11 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %cmp4 = icmp eq %struct.name_table_s* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store %struct.name_table_s* null, %struct.name_table_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.6:                                         ; preds = %if.end.3
  %12 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %13 = bitcast %struct.name_table_s* %12 to i8*
  %call7 = call i8* @memset(i8* %13, i32 0, i64 49184) #6
  %14 = load i64, i64* %count.addr, align 8, !tbaa !1
  %sub8 = sub i64 %14, 1
  %or = or i64 %sub8, 511
  %shr = lshr i64 %or, 9
  %conv = trunc i64 %shr to i32
  %15 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %max_sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %15, i32 0, i32 4
  store i32 %conv, i32* %max_sub_count, align 4, !tbaa !10
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !5
  %call9 = call i32 @imemory_space(%struct.gs_ref_memory_s* %16) #5
  %or10 = or i32 %call9, 96
  %17 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %name_string_attrs = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %17, i32 0, i32 5
  store i32 %or10, i32* %name_string_attrs, align 4, !tbaa !13
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %19 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %19, i32 0, i32 6
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %20 = load i32, i32* %i, align 4, !tbaa !15
  %cmp11 = icmp slt i32 %20, 130
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %call13 = call i32 @name_alloc_sub(%struct.name_table_s* %22) #5
  store i32 %call13, i32* %code, align 4, !tbaa !15
  %23 = load i32, i32* %code, align 4, !tbaa !15
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.16
  %24 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub_next = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %24, i32 0, i32 1
  %25 = load i32, i32* %sub_next, align 4, !tbaa !16
  %cmp17 = icmp ugt i32 %25, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %27 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub_next19 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %27, i32 0, i32 1
  %28 = load i32, i32* %sub_next19, align 4, !tbaa !16
  %dec = add i32 %28, -1
  store i32 %dec, i32* %sub_next19, align 4, !tbaa !16
  call void @name_free_sub(%struct.name_table_s* %26, i32 %dec, i32 0) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %32 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %33 = bitcast %struct.name_table_s* %32 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.name_table_s* null, %struct.name_table_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %while.end
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !15
  %add = add nsw i32 %35, 512
  store i32 %add, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %i, align 4, !tbaa !15
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.58, %for.end
  %36 = load i32, i32* %i, align 4, !tbaa !15
  %cmp23 = icmp slt i32 %36, 128
  br i1 %cmp23, label %for.body.25, label %for.end.59

for.body.25:                                      ; preds = %for.cond.22
  %37 = bitcast i32* %ncnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %i, align 4, !tbaa !15
  %add26 = add nsw i32 2, %38
  store i32 %add26, i32* %ncnt, align 4, !tbaa !15
  %39 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %ncnt, align 4, !tbaa !15
  %and = and i32 %40, -512
  %41 = load i32, i32* %ncnt, align 4, !tbaa !15
  %mul = mul i32 %41, 23
  %and27 = and i32 %mul, 511
  %add28 = add i32 %and, %and27
  store i32 %add28, i32* %nidx, align 4, !tbaa !15
  %42 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr29 = lshr i32 %43, 9
  %idxprom = zext i32 %shr29 to i64
  %44 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub30 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %44, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub30, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %45 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %names31 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %45, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names31, i32 0, i32 0
  %46 = load i32, i32* %nidx, align 4, !tbaa !15
  %and32 = and i32 %46, 511
  %idx.ext = zext i32 %and32 to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay, i64 %idx.ext
  store %struct.name_s* %add.ptr, %struct.name_s** %pname, align 8, !tbaa !5
  %47 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr33 = lshr i32 %48, 9
  %idxprom34 = zext i32 %shr33 to i64
  %49 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub35 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %49, i32 0, i32 8
  %arrayidx36 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub35, i32 0, i64 %idxprom34
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx36, i32 0, i32 1
  %50 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %strings37 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %50, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings37, i32 0, i32 0
  %51 = load i32, i32* %nidx, align 4, !tbaa !15
  %and39 = and i32 %51, 511
  %idx.ext40 = zext i32 %and39 to i64
  %add.ptr41 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay38, i64 %idx.ext40
  store %struct.name_string_s* %add.ptr41, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %52 = load i32, i32* %i, align 4, !tbaa !15
  %cmp42 = icmp slt i32 %52, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %for.body.25
  %53 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %53, i32 0, i32 1
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @nt_1char_names, i32 0, i32 0), i8** %string_bytes, align 8, !tbaa !21
  %54 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %55 = bitcast %struct.name_string_s* %54 to i32*
  %bf.load = load i32, i32* %55, align 8
  %bf.clear = and i32 %bf.load, 4194303
  store i32 %bf.clear, i32* %55, align 8
  br label %if.end.51

if.else.45:                                       ; preds = %for.body.25
  %56 = load i32, i32* %i, align 4, !tbaa !15
  %idx.ext46 = sext i32 %56 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @nt_1char_names, i32 0, i32 0), i64 %idx.ext46
  %57 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes48 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %57, i32 0, i32 1
  store i8* %add.ptr47, i8** %string_bytes48, align 8, !tbaa !21
  %58 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %59 = bitcast %struct.name_string_s* %58 to i32*
  %bf.load49 = load i32, i32* %59, align 8
  %bf.clear50 = and i32 %bf.load49, 4194303
  %bf.set = or i32 %bf.clear50, 4194304
  store i32 %bf.set, i32* %59, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.44
  %60 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %61 = bitcast %struct.name_string_s* %60 to i32*
  %bf.load52 = load i32, i32* %61, align 8
  %bf.clear53 = and i32 %bf.load52, -1048577
  %bf.set54 = or i32 %bf.clear53, 1048576
  store i32 %bf.set54, i32* %61, align 8
  %62 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %63 = bitcast %struct.name_string_s* %62 to i32*
  %bf.load55 = load i32, i32* %63, align 8
  %bf.clear56 = and i32 %bf.load55, -2097153
  %bf.set57 = or i32 %bf.clear56, 2097152
  store i32 %bf.set57, i32* %63, align 8
  %64 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue = getelementptr inbounds %struct.name_s, %struct.name_s* %64, i32 0, i32 0
  store %struct.ref_s* null, %struct.ref_s** %pvalue, align 8, !tbaa !23
  %65 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %ncnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.51
  %69 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond.22

for.end.59:                                       ; preds = %for.cond.22
  %70 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %perm_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %70, i32 0, i32 2
  store i32 130, i32* %perm_count, align 4, !tbaa !25
  %71 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %free = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %71, i32 0, i32 0
  store i32 0, i32* %free, align 4, !tbaa !26
  %72 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  call void @names_trace_finish(%struct.name_table_s* %72, %struct.gc_state_s* null) #5
  %73 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  store %struct.name_table_s* %73, %struct.name_table_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %for.end.59, %cleanup, %if.then.5, %if.then.2
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load %struct.name_table_s*, %struct.name_table_s** %retval
  ret %struct.name_table_s* %77
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @name_alloc_sub(%struct.name_table_s* %nt) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %sub_index = alloca i32, align 4
  %sub = alloca %struct.name_sub_table_s*, align 8
  %ssub = alloca %struct.name_string_sub_table_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 6
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %3 = bitcast i32* %sub_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %4, i32 0, i32 1
  %5 = load i32, i32* %sub_next, align 4, !tbaa !16
  store i32 %5, i32* %sub_index, align 4, !tbaa !15
  %6 = bitcast %struct.name_sub_table_s** %sub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %sub_index, align 4, !tbaa !15
  %9 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %max_sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %9, i32 0, i32 4
  %10 = load i32, i32* %max_sub_count, align 4, !tbaa !10
  %cmp = icmp ugt i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %11 = load i32, i32* %sub_index, align 4, !tbaa !15
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub1 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %12, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub1, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %13 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.name_sub_table_s* %13, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %for.end

if.end.4:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %14 = load i32, i32* %sub_index, align 4, !tbaa !15
  %inc = add i32 %14, 1
  store i32 %inc, i32* %sub_index, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %if.then.3
  %15 = load i32, i32* %sub_index, align 4, !tbaa !15
  %add = add i32 %15, 1
  %16 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next5 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %16, i32 0, i32 1
  store i32 %add, i32* %sub_next5, align 4, !tbaa !16
  %17 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next6 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %17, i32 0, i32 1
  %18 = load i32, i32* %sub_next6, align 4, !tbaa !16
  %19 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %19, i32 0, i32 3
  %20 = load i32, i32* %sub_count, align 4, !tbaa !27
  %cmp7 = icmp ugt i32 %18, %20
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.end
  %21 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next9 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %21, i32 0, i32 1
  %22 = load i32, i32* %sub_next9, align 4, !tbaa !16
  %23 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count10 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %23, i32 0, i32 3
  store i32 %22, i32* %sub_count10, align 4, !tbaa !27
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.end
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %25 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !7
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %call = call i8* %25(%struct.gs_memory_s* %26, %struct.gs_memory_struct_type_s* @st_name_sub_table, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5
  %27 = bitcast i8* %call to %struct.name_sub_table_s*
  store %struct.name_sub_table_s* %27, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_struct13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 8
  %29 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct13, align 8, !tbaa !7
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %call14 = call i8* %29(%struct.gs_memory_s* %30, %struct.gs_memory_struct_type_s* @st_name_string_sub_table, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #5
  %31 = bitcast i8* %call14 to %struct.name_string_sub_table_s*
  store %struct.name_string_sub_table_s* %31, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %32 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %cmp15 = icmp eq %struct.name_sub_table_s* %32, null
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %33 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %cmp16 = icmp eq %struct.name_string_sub_table_s* %33, null
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.11
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %37 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %38 = bitcast %struct.name_string_sub_table_s* %37 to i8*
  call void %35(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #5
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !17
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %42 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %43 = bitcast %struct.name_sub_table_s* %42 to i8*
  call void %40(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false
  %44 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %45 = bitcast %struct.name_sub_table_s* %44 to i8*
  %call22 = call i8* @memset(i8* %45, i32 0, i64 4104) #6
  %46 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %47 = bitcast %struct.name_string_sub_table_s* %46 to i8*
  %call23 = call i8* @memset(i8* %47, i32 0, i64 8192) #6
  %48 = load i32, i32* %sub_index, align 4, !tbaa !15
  %shr = lshr i32 %48, 7
  %shl = shl i32 %shr, 16
  %49 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %49, i32 0, i32 1
  store i32 %shl, i32* %high_index, align 4, !tbaa !28
  %50 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %51 = load i32, i32* %sub_index, align 4, !tbaa !15
  %idxprom24 = zext i32 %51 to i64
  %52 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub25 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %52, i32 0, i32 8
  %arrayidx26 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub25, i32 0, i64 %idxprom24
  %names27 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx26, i32 0, i32 0
  store %struct.name_sub_table_s* %50, %struct.name_sub_table_s** %names27, align 8, !tbaa !18
  %53 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %54 = load i32, i32* %sub_index, align 4, !tbaa !15
  %idxprom28 = zext i32 %54 to i64
  %55 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub29 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %55, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub29, i32 0, i64 %idxprom28
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx30, i32 0, i32 1
  store %struct.name_string_sub_table_s* %53, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %56 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %57 = load i32, i32* %sub_index, align 4, !tbaa !15
  call void @name_scan_sub(%struct.name_table_s* %56, i32 %57, i32 0, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.17, %if.then
  %58 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.name_sub_table_s** %sub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %sub_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal void @name_free_sub(%struct.name_table_s* %nt, i32 %sub_index, i32 %unmark) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %sub_index.addr = alloca i32, align 4
  %unmark.addr = alloca i32, align 4
  %sub = alloca %struct.name_sub_table_s*, align 8
  %ssub = alloca %struct.name_string_sub_table_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %sub_index, i32* %sub_index.addr, align 4, !tbaa !15
  store i32 %unmark, i32* %unmark.addr, align 4, !tbaa !15
  %0 = load i32, i32* %unmark.addr, align 4, !tbaa !15
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.name_sub_table_s** %sub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub1 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %3, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub1, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %4 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  store %struct.name_sub_table_s* %4, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %5 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom2 = zext i32 %6 to i64
  %7 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub3 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %7, i32 0, i32 8
  %arrayidx4 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub3, i32 0, i64 %idxprom2
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx4, i32 0, i32 1
  %8 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  store %struct.name_string_sub_table_s* %8, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %9 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub, align 8, !tbaa !5
  %10 = bitcast %struct.name_sub_table_s* %9 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %10, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %m = bitcast %union._f* %f to %struct._m*
  %11 = bitcast %struct._m* %m to i32*
  %bf.load = load i32, i32* %11, align 4
  %bf.clear = and i32 %bf.load, 1
  %bf.set = or i32 %bf.clear, -2
  store i32 %bf.set, i32* %11, align 4
  %12 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %13 = bitcast %struct.name_string_sub_table_s* %12 to %struct.obj_header_s*
  %add.ptr5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %13, i64 -1
  %d6 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr5, i32 0, i32 0
  %o7 = bitcast %union._d* %d6 to %struct.obj_header_data_s*
  %f8 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o7, i32 0, i32 0
  %m9 = bitcast %union._f* %f8 to %struct._m*
  %14 = bitcast %struct._m* %m9 to i32*
  %bf.load10 = load i32, i32* %14, align 4
  %bf.clear11 = and i32 %bf.load10, 1
  %bf.set12 = or i32 %bf.clear11, -2
  store i32 %bf.set12, i32* %14, align 4
  %15 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.name_sub_table_s** %sub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %17, i32 0, i32 6
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %20 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory13 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %20, i32 0, i32 6
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !14
  %22 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom14 = zext i32 %22 to i64
  %23 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub15 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %23, i32 0, i32 8
  %arrayidx16 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub15, i32 0, i64 %idxprom14
  %strings17 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx16, i32 0, i32 1
  %24 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings17, align 8, !tbaa !20
  %25 = bitcast %struct.name_string_sub_table_s* %24 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  %26 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory18 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %26, i32 0, i32 6
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !14
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !17
  %29 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory21 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %29, i32 0, i32 6
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !14
  %31 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom22 = zext i32 %31 to i64
  %32 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub23 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %32, i32 0, i32 8
  %arrayidx24 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub23, i32 0, i64 %idxprom22
  %names25 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx24, i32 0, i32 0
  %33 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names25, align 8, !tbaa !18
  %34 = bitcast %struct.name_sub_table_s* %33 to i8*
  call void %28(%struct.gs_memory_s* %30, i8* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #5
  %35 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom26 = zext i32 %35 to i64
  %36 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub27 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %36, i32 0, i32 8
  %arrayidx28 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub27, i32 0, i64 %idxprom26
  %names29 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx28, i32 0, i32 0
  store %struct.name_sub_table_s* null, %struct.name_sub_table_s** %names29, align 8, !tbaa !18
  %37 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom30 = zext i32 %37 to i64
  %38 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub31 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %38, i32 0, i32 8
  %arrayidx32 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub31, i32 0, i64 %idxprom30
  %strings33 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx32, i32 0, i32 1
  store %struct.name_string_sub_table_s* null, %struct.name_string_sub_table_s** %strings33, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @names_trace_finish(%struct.name_table_s* %nt, %struct.gc_state_s* %gcst) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %phash = alloca i32*, align 8
  %i = alloca i32, align 4
  %prev = alloca i32, align 4
  %pnprev = alloca %struct.name_string_s*, align 8
  %nidx = alloca i32, align 4
  %pnstr = alloca %struct.name_string_s*, align 8
  %next = alloca i32, align 4
  %sub17 = alloca %struct.name_sub_table_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast i32** %phash to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %hash = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4096 x i32], [4096 x i32]* %hash, i32 0, i64 0
  store i32* %arrayidx, i32** %phash, align 8, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !15
  %cmp = icmp slt i32 %3, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %prev, align 4, !tbaa !15
  %5 = bitcast %struct.name_string_s** %pnprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.name_string_s* null, %struct.name_string_s** %pnprev, align 8, !tbaa !5
  %6 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32*, i32** %phash, align 8, !tbaa !5
  %8 = load i32, i32* %7, align 4, !tbaa !15
  store i32 %8, i32* %nidx, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %for.body
  %9 = load i32, i32* %nidx, align 4, !tbaa !15
  %cmp1 = icmp ne i32 %9, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr = lshr i32 %11, 9
  %idxprom = zext i32 %shr to i64
  %12 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %12, i32 0, i32 8
  %arrayidx2 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx2, i32 0, i32 1
  %13 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %strings3 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings3, i32 0, i32 0
  %14 = load i32, i32* %nidx, align 4, !tbaa !15
  %and = and i32 %14, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext
  store %struct.name_string_s* %add.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %15 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %17 = bitcast %struct.name_string_s* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 1048575
  store i32 %bf.clear, i32* %next, align 4, !tbaa !15
  %18 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %19 = bitcast %struct.name_string_s* %18 to i32*
  %bf.load4 = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load4, 21
  %bf.clear5 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %nidx, align 4, !tbaa !15
  store i32 %20, i32* %prev, align 4, !tbaa !15
  %21 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  store %struct.name_string_s* %21, %struct.name_string_s** %pnprev, align 8, !tbaa !5
  br label %if.end.13

if.else:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %22, i32 0, i32 1
  store i8* null, i8** %string_bytes, align 8, !tbaa !21
  %23 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %24 = bitcast %struct.name_string_s* %23 to i32*
  %bf.load6 = load i32, i32* %24, align 8
  %bf.clear7 = and i32 %bf.load6, 4194303
  store i32 %bf.clear7, i32* %24, align 8
  %25 = load i32, i32* %prev, align 4, !tbaa !15
  %cmp8 = icmp eq i32 %25, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.end
  %26 = load i32, i32* %next, align 4, !tbaa !15
  %27 = load i32*, i32** %phash, align 8, !tbaa !5
  store i32 %26, i32* %27, align 4, !tbaa !15
  br label %if.end

if.else.10:                                       ; preds = %do.end
  %28 = load i32, i32* %next, align 4, !tbaa !15
  %29 = load %struct.name_string_s*, %struct.name_string_s** %pnprev, align 8, !tbaa !5
  %30 = bitcast %struct.name_string_s* %29 to i32*
  %bf.load11 = load i32, i32* %30, align 8
  %bf.value = and i32 %28, 1048575
  %bf.clear12 = and i32 %bf.load11, -1048576
  %bf.set = or i32 %bf.clear12, %bf.value
  store i32 %bf.set, i32* %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %31 = load i32, i32* %next, align 4, !tbaa !15
  store i32 %31, i32* %nidx, align 4, !tbaa !15
  %32 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.name_string_s** %pnprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %37 = load i32*, i32** %phash, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr, i32** %phash, align 8, !tbaa !5
  %38 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %39, i32 0, i32 0
  store i32 0, i32* %free, align 4, !tbaa !26
  %40 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %40, i32 0, i32 3
  %41 = load i32, i32* %sub_count, align 4, !tbaa !27
  store i32 %41, i32* %i, align 4, !tbaa !15
  br label %for.cond.14

for.cond.14:                                      ; preds = %if.end.24, %for.end
  %42 = load i32, i32* %i, align 4, !tbaa !15
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i, align 4, !tbaa !15
  %cmp15 = icmp sge i32 %dec, 0
  br i1 %cmp15, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.14
  %43 = bitcast %struct.name_sub_table_s** %sub17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom18 = sext i32 %44 to i64
  %45 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub19 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %45, i32 0, i32 8
  %arrayidx20 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub19, i32 0, i64 %idxprom18
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx20, i32 0, i32 0
  %46 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  store %struct.name_sub_table_s* %46, %struct.name_sub_table_s** %sub17, align 8, !tbaa !5
  %47 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %sub17, align 8, !tbaa !5
  %cmp21 = icmp ne %struct.name_sub_table_s* %47, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body.16
  %48 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %49 = load i32, i32* %i, align 4, !tbaa !15
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %cmp23 = icmp ne %struct.gc_state_s* %50, null
  %land.ext = zext i1 %cmp23 to i32
  call void @name_scan_sub(%struct.name_table_s* %48, i32 %49, i32 1, i32 %land.ext) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body.16
  %51 = bitcast %struct.name_sub_table_s** %sub17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  %52 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %52, i32 0, i32 1
  store i32 0, i32* %sub_next, align 4, !tbaa !16
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32** %phash to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @names_memory(%struct.name_table_s* %nt) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %0 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %0, i32 0, i32 6
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  ret %struct.gs_memory_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @names_ref(%struct.name_table_s* %nt, i8* %ptr, i32 %size, %struct.ref_s* %pref, i32 %enterflag) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %enterflag.addr = alloca i32, align 4
  %pname = alloca %struct.name_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  %nidx = alloca i32, align 4
  %phash = alloca i32*, align 8
  %hash = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %hash18 = alloca i32, align 4
  %p = alloca i8*, align 8
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  %cptr = alloca i8*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  store i32 %enterflag, i32* %enterflag.addr, align 4, !tbaa !15
  %0 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32** %phash to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !15
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 23, i32* %nidx, align 4, !tbaa !15
  %5 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr = lshr i32 %5, 9
  %idxprom = zext i32 %shr to i64
  %6 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %7 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %names1 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names1, i32 0, i32 0
  %8 = load i32, i32* %nidx, align 4, !tbaa !15
  %and = and i32 %8, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay, i64 %idx.ext
  store %struct.name_s* %add.ptr, %struct.name_s** %pname, align 8, !tbaa !5
  br label %mkn

sw.bb.2:                                          ; preds = %entry
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %10 = load i8, i8* %9, align 1, !tbaa !30
  %conv = zext i8 %10 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %11 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !30
  %conv4 = zext i8 %13 to i32
  %add = add nsw i32 %conv4, 2
  store i32 %add, i32* %hash, align 4, !tbaa !15
  %14 = load i32, i32* %hash, align 4, !tbaa !15
  %and5 = and i32 %14, -512
  %15 = load i32, i32* %hash, align 4, !tbaa !15
  %mul = mul i32 %15, 23
  %and6 = and i32 %mul, 511
  %add7 = add i32 %and5, %and6
  store i32 %add7, i32* %nidx, align 4, !tbaa !15
  %16 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr8 = lshr i32 %16, 9
  %idxprom9 = zext i32 %shr8 to i64
  %17 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub10 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %17, i32 0, i32 8
  %arrayidx11 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub10, i32 0, i64 %idxprom9
  %names12 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx11, i32 0, i32 0
  %18 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names12, align 8, !tbaa !18
  %names13 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %18, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names13, i32 0, i32 0
  %19 = load i32, i32* %nidx, align 4, !tbaa !15
  %and15 = and i32 %19, 511
  %idx.ext16 = zext i32 %and15 to i64
  %add.ptr17 = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay14, i64 %idx.ext16
  store %struct.name_s* %add.ptr17, %struct.name_s** %pname, align 8, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  %20 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest139 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest139, label %cleanup.144 [
    i32 3, label %mkn
  ]

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %21 = bitcast i32* %hash18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  store i8* %23, i8** %p, align 8, !tbaa !5
  %24 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %size.addr, align 4, !tbaa !15
  store i32 %25, i32* %n, align 4, !tbaa !15
  %26 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !30
  %idxprom19 = zext i8 %27 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @hash_permutation, i32 0, i64 %idxprom19
  %28 = load i8, i8* %arrayidx20, align 1, !tbaa !30
  %conv21 = zext i8 %28 to i32
  store i32 %conv21, i32* %hash18, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %29 = load i32, i32* %n, align 4, !tbaa !15
  %dec = add i32 %29, -1
  store i32 %dec, i32* %n, align 4, !tbaa !15
  %cmp22 = icmp ugt i32 %dec, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %hash18, align 4, !tbaa !15
  %shl = shl i32 %30, 8
  %31 = load i32, i32* %hash18, align 4, !tbaa !15
  %conv24 = trunc i32 %31 to i8
  %conv25 = zext i8 %conv24 to i32
  %32 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr26 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8, !tbaa !5
  %33 = load i8, i8* %32, align 1, !tbaa !30
  %conv27 = zext i8 %33 to i32
  %xor = xor i32 %conv25, %conv27
  %idxprom28 = sext i32 %xor to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* @hash_permutation, i32 0, i64 %idxprom28
  %34 = load i8, i8* %arrayidx29, align 1, !tbaa !30
  %conv30 = zext i8 %34 to i32
  %or = or i32 %shl, %conv30
  store i32 %or, i32* %hash18, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %do.cond

do.cond:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %hash31 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %37, i32 0, i32 7
  %arraydecay32 = getelementptr inbounds [4096 x i32], [4096 x i32]* %hash31, i32 0, i32 0
  %38 = load i32, i32* %hash18, align 4, !tbaa !15
  %and33 = and i32 %38, 4095
  %idx.ext34 = zext i32 %and33 to i64
  %add.ptr35 = getelementptr inbounds i32, i32* %arraydecay32, i64 %idx.ext34
  store i32* %add.ptr35, i32** %phash, align 8, !tbaa !5
  %39 = bitcast i32* %hash18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  %40 = load i32*, i32** %phash, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !15
  store i32 %41, i32* %nidx, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %42 = load i32, i32* %nidx, align 4, !tbaa !15
  %cmp36 = icmp ne i32 %42, 0
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr38 = lshr i32 %43, 9
  %idxprom39 = zext i32 %shr38 to i64
  %44 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub40 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %44, i32 0, i32 8
  %arrayidx41 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub40, i32 0, i64 %idxprom39
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx41, i32 0, i32 1
  %45 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %strings42 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %45, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings42, i32 0, i32 0
  %46 = load i32, i32* %nidx, align 4, !tbaa !15
  %and44 = and i32 %46, 511
  %idx.ext45 = zext i32 %and44 to i64
  %add.ptr46 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay43, i64 %idx.ext45
  store %struct.name_string_s* %add.ptr46, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %47 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %48 = bitcast %struct.name_string_s* %47 to i32*
  %bf.load = load i32, i32* %48, align 8
  %bf.lshr = lshr i32 %bf.load, 22
  %49 = load i32, i32* %size.addr, align 4, !tbaa !15
  %cmp47 = icmp eq i32 %bf.lshr, %49
  br i1 %cmp47, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %for.body
  %50 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %51 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %51, i32 0, i32 1
  %52 = load i8*, i8** %string_bytes, align 8, !tbaa !21
  %53 = load i32, i32* %size.addr, align 4, !tbaa !15
  %conv49 = zext i32 %53 to i64
  %call = call i32 @memcmp(i8* %50, i8* %52, i64 %conv49) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.61, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr51 = lshr i32 %54, 9
  %idxprom52 = zext i32 %shr51 to i64
  %55 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub53 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %55, i32 0, i32 8
  %arrayidx54 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub53, i32 0, i64 %idxprom52
  %names55 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx54, i32 0, i32 0
  %56 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names55, align 8, !tbaa !18
  %names56 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %56, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names56, i32 0, i32 0
  %57 = load i32, i32* %nidx, align 4, !tbaa !15
  %and58 = and i32 %57, 511
  %idx.ext59 = zext i32 %and58 to i64
  %add.ptr60 = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay57, i64 %idx.ext59
  store %struct.name_s* %add.ptr60, %struct.name_s** %pname, align 8, !tbaa !5
  br label %mkn

if.end.61:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %58 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %59 = bitcast %struct.name_string_s* %58 to i32*
  %bf.load62 = load i32, i32* %59, align 8
  %bf.clear = and i32 %bf.load62, 1048575
  store i32 %bf.clear, i32* %nidx, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %enterflag.addr, align 4, !tbaa !15
  %cmp63 = icmp slt i32 %60, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.66:                                        ; preds = %for.end
  %61 = load i32, i32* %size.addr, align 4, !tbaa !15
  %cmp67 = icmp ugt i32 %61, 1023
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.70:                                        ; preds = %if.end.66
  %62 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %62, i32 0, i32 0
  %63 = load i32, i32* %free, align 4, !tbaa !26
  store i32 %63, i32* %nidx, align 4, !tbaa !15
  %64 = load i32, i32* %nidx, align 4, !tbaa !15
  %cmp71 = icmp eq i32 %64, 0
  br i1 %cmp71, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %if.end.70
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %call74 = call i32 @name_alloc_sub(%struct.name_table_s* %66) #5
  store i32 %call74, i32* %code, align 4, !tbaa !15
  %67 = load i32, i32* %code, align 4, !tbaa !15
  %cmp75 = icmp slt i32 %67, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.73
  %68 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.then.73
  %69 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free79 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %69, i32 0, i32 0
  %70 = load i32, i32* %free79, align 4, !tbaa !26
  store i32 %70, i32* %nidx, align 4, !tbaa !15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.then.77
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.144 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.80

if.end.80:                                        ; preds = %cleanup.cont, %if.end.70
  %72 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr81 = lshr i32 %72, 9
  %idxprom82 = zext i32 %shr81 to i64
  %73 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub83 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %73, i32 0, i32 8
  %arrayidx84 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub83, i32 0, i64 %idxprom82
  %strings85 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx84, i32 0, i32 1
  %74 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings85, align 8, !tbaa !20
  %strings86 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %74, i32 0, i32 0
  %arraydecay87 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings86, i32 0, i32 0
  %75 = load i32, i32* %nidx, align 4, !tbaa !15
  %and88 = and i32 %75, 511
  %idx.ext89 = zext i32 %and88 to i64
  %add.ptr90 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay87, i64 %idx.ext89
  store %struct.name_string_s* %add.ptr90, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %76 = load i32, i32* %enterflag.addr, align 4, !tbaa !15
  %cmp91 = icmp eq i32 %76, 1
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.80
  %77 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %78, i32 0, i32 6
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !14
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %80 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !31
  %81 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %memory94 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %81, i32 0, i32 6
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory94, align 8, !tbaa !14
  %83 = load i32, i32* %size.addr, align 4, !tbaa !15
  %call95 = call i8* %80(%struct.gs_memory_s* %82, i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %call95, i8** %cptr, align 8, !tbaa !5
  %84 = load i8*, i8** %cptr, align 8, !tbaa !5
  %cmp96 = icmp eq i8* %84, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.93
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.105

if.end.99:                                        ; preds = %if.then.93
  %85 = load i8*, i8** %cptr, align 8, !tbaa !5
  %86 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %87 = load i32, i32* %size.addr, align 4, !tbaa !15
  %conv100 = zext i32 %87 to i64
  %call101 = call i8* @memcpy(i8* %85, i8* %86, i64 %conv100) #6
  %88 = load i8*, i8** %cptr, align 8, !tbaa !5
  %89 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes102 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %89, i32 0, i32 1
  store i8* %88, i8** %string_bytes102, align 8, !tbaa !21
  %90 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %91 = bitcast %struct.name_string_s* %90 to i32*
  %bf.load103 = load i32, i32* %91, align 8
  %bf.clear104 = and i32 %bf.load103, -1048577
  store i32 %bf.clear104, i32* %91, align 8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.105

cleanup.105:                                      ; preds = %if.end.99, %if.then.98
  %92 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest.106 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.106, label %cleanup.144 [
    i32 0, label %cleanup.cont.107
  ]

cleanup.cont.107:                                 ; preds = %cleanup.105
  br label %if.end.113

if.else:                                          ; preds = %if.end.80
  %93 = load i8*, i8** %ptr.addr, align 8, !tbaa !5
  %94 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes108 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %94, i32 0, i32 1
  store i8* %93, i8** %string_bytes108, align 8, !tbaa !21
  %95 = load i32, i32* %enterflag.addr, align 4, !tbaa !15
  %cmp109 = icmp eq i32 %95, 0
  %cond = select i1 %cmp109, i32 1, i32 0
  %96 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %97 = bitcast %struct.name_string_s* %96 to i32*
  %bf.load111 = load i32, i32* %97, align 8
  %bf.value = and i32 %cond, 1
  %bf.shl = shl i32 %bf.value, 20
  %bf.clear112 = and i32 %bf.load111, -1048577
  %bf.set = or i32 %bf.clear112, %bf.shl
  store i32 %bf.set, i32* %97, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else, %cleanup.cont.107
  %98 = load i32, i32* %size.addr, align 4, !tbaa !15
  %99 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %100 = bitcast %struct.name_string_s* %99 to i32*
  %bf.load114 = load i32, i32* %100, align 8
  %bf.value115 = and i32 %98, 1023
  %bf.shl116 = shl i32 %bf.value115, 22
  %bf.clear117 = and i32 %bf.load114, 4194303
  %bf.set118 = or i32 %bf.clear117, %bf.shl116
  store i32 %bf.set118, i32* %100, align 8
  %101 = load i32, i32* %nidx, align 4, !tbaa !15
  %shr119 = lshr i32 %101, 9
  %idxprom120 = zext i32 %shr119 to i64
  %102 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub121 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %102, i32 0, i32 8
  %arrayidx122 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub121, i32 0, i64 %idxprom120
  %names123 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx122, i32 0, i32 0
  %103 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names123, align 8, !tbaa !18
  %names124 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %103, i32 0, i32 0
  %arraydecay125 = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names124, i32 0, i32 0
  %104 = load i32, i32* %nidx, align 4, !tbaa !15
  %and126 = and i32 %104, 511
  %idx.ext127 = zext i32 %and126 to i64
  %add.ptr128 = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay125, i64 %idx.ext127
  store %struct.name_s* %add.ptr128, %struct.name_s** %pname, align 8, !tbaa !5
  %105 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue = getelementptr inbounds %struct.name_s, %struct.name_s* %105, i32 0, i32 0
  store %struct.ref_s* null, %struct.ref_s** %pvalue, align 8, !tbaa !23
  %106 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %107 = bitcast %struct.name_string_s* %106 to i32*
  %bf.load129 = load i32, i32* %107, align 8
  %bf.clear130 = and i32 %bf.load129, 1048575
  %108 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free131 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %108, i32 0, i32 0
  store i32 %bf.clear130, i32* %free131, align 4, !tbaa !26
  %109 = load i32*, i32** %phash, align 8, !tbaa !5
  %110 = load i32, i32* %109, align 4, !tbaa !15
  %111 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %112 = bitcast %struct.name_string_s* %111 to i32*
  %bf.load132 = load i32, i32* %112, align 8
  %bf.value133 = and i32 %110, 1048575
  %bf.clear134 = and i32 %bf.load132, -1048576
  %bf.set135 = or i32 %bf.clear134, %bf.value133
  store i32 %bf.set135, i32* %112, align 8
  %113 = load i32, i32* %nidx, align 4, !tbaa !15
  %114 = load i32*, i32** %phash, align 8, !tbaa !5
  store i32 %113, i32* %114, align 4, !tbaa !15
  br label %do.body.136

do.body.136:                                      ; preds = %if.end.113
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  br label %mkn

mkn:                                              ; preds = %do.end.138, %if.then, %if.then.50, %sw.bb
  %115 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %116 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 1
  %pname140 = bitcast %union.v* %value to %struct.name_s**
  store %struct.name_s* %115, %struct.name_s** %pname140, align 8, !tbaa !5
  %117 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3332, i16* %type_attrs, align 2, !tbaa !32
  %118 = load i32, i32* %nidx, align 4, !tbaa !15
  %conv141 = trunc i32 %118 to i16
  %conv142 = zext i16 %conv141 to i32
  %119 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  %tas143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas143, i32 0, i32 2
  store i32 %conv142, i32* %rsize, align 4, !tbaa !36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %mkn, %if.then, %cleanup.105, %cleanup, %if.then.69, %if.then.65
  %120 = bitcast i32** %phash to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.name_s** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @names_string_ref(%struct.name_table_s* %nt, %struct.ref_s* %pnref, %struct.ref_s* %psref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %0 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %2 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %3 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %4 = load i32, i32* %rsize, align 4, !tbaa !36
  %and = and i32 %4, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %2, i64 %idx.neg
  %5 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %5, i32 0, i32 1
  %6 = load i32, i32* %high_index, align 4, !tbaa !28
  %7 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %8 = load i32, i32* %rsize2, align 4, !tbaa !36
  %add = add i32 %6, %8
  %shr = lshr i32 %add, 9
  %idxprom = zext i32 %shr to i64
  %9 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %10 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %strings3 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %10, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings3, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pname5 = bitcast %union.v* %value4 to %struct.name_s**
  %12 = load %struct.name_s*, %struct.name_s** %pname5, align 8, !tbaa !5
  %13 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %14 = load i32, i32* %rsize7, align 4, !tbaa !36
  %and8 = and i32 %14, 511
  %idx.ext9 = zext i32 %and8 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.name_s, %struct.name_s* %12, i64 %idx.neg10
  %15 = bitcast %struct.name_s* %add.ptr11 to %struct.name_sub_table_s*
  %high_index12 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %15, i32 0, i32 1
  %16 = load i32, i32* %high_index12, align 4, !tbaa !28
  %17 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %18 = load i32, i32* %rsize14, align 4, !tbaa !36
  %add15 = add i32 %16, %18
  %and16 = and i32 %add15, 511
  %idx.ext17 = zext i32 %and16 to i64
  %add.ptr18 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext17
  store %struct.name_string_s* %add.ptr18, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %19 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %19, i32 0, i32 1
  %20 = load i8*, i8** %string_bytes, align 8, !tbaa !21
  %21 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value19 to i8**
  store i8* %20, i8** %const_bytes, align 8, !tbaa !5
  %22 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %23 = bitcast %struct.name_string_s* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %name_string_attrs = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %24, i32 0, i32 5
  %25 = load i32, i32* %name_string_attrs, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 96, %cond.true ], [ %25, %cond.false ]
  %add20 = add i32 4608, %cond
  %conv = trunc i32 %add20 to i16
  %26 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !32
  %27 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %28 = bitcast %struct.name_string_s* %27 to i32*
  %bf.load22 = load i32, i32* %28, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 22
  %29 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 2
  store i32 %bf.lshr23, i32* %rsize25, align 4, !tbaa !36
  %30 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @names_from_string(%struct.name_table_s* %nt, %struct.ref_s* %psref, %struct.ref_s* %pnref) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table_s*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  %exec = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %0 = bitcast i32* %exec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !32
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 128
  store i32 %and, i32* %exec, align 4, !tbaa !15
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %5 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %bytes, align 8, !tbaa !5
  %7 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !5
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !36
  %9 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %call = call i32 @names_ref(%struct.name_table_s* %4, i8* %6, i32 %8, %struct.ref_s* %9, i32 1) #5
  store i32 %call, i32* %code, align 4, !tbaa !15
  %10 = load i32, i32* %code, align 4, !tbaa !15
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %exec, align 4, !tbaa !15
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %14 = load i16, i16* %type_attrs5, align 2, !tbaa !32
  %conv6 = zext i16 %14 to i32
  %or = or i32 %conv6, 128
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %type_attrs5, align 2, !tbaa !32
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !15
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %exec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @names_enter_string(%struct.name_table_s* %nt, i8* %str, %struct.ref_s* %pref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %str.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  %0 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call to i32
  %3 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !5
  %call1 = call i32 @names_ref(%struct.name_table_s* %0, i8* %1, i32 %conv, %struct.ref_s* %3, i32 0) #5
  ret i32 %call1
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @names_invalidate_value_cache(%struct.name_table_s* %nt, %struct.ref_s* %pnref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %1 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %pvalue = getelementptr inbounds %struct.name_s, %struct.name_s* %1, i32 0, i32 0
  store %struct.ref_s* inttoptr (i64 1 to %struct.ref_s*), %struct.ref_s** %pvalue, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @names_index(%struct.name_table_s* %nt, %struct.ref_s* %pnref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %1 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %2 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %3 = load i32, i32* %rsize, align 4, !tbaa !36
  %and = and i32 %3, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %1, i64 %idx.neg
  %4 = bitcast %struct.name_s* %add.ptr to %struct.name_sub_table_s*
  %high_index = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %4, i32 0, i32 1
  %5 = load i32, i32* %high_index, align 4, !tbaa !28
  %6 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %rsize2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %7 = load i32, i32* %rsize2, align 4, !tbaa !36
  %add = add i32 %5, %7
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @names_index_ref(%struct.name_table_s* %nt, i32 %index, %struct.ref_s* %pnref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %index.addr = alloca i32, align 4
  %pnref.addr = alloca %struct.ref_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %0 = load i32, i32* %index.addr, align 4, !tbaa !15
  %shr = lshr i32 %0, 9
  %idxprom = zext i32 %shr to i64
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %2 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %names1 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names1, i32 0, i32 0
  %3 = load i32, i32* %index.addr, align 4, !tbaa !15
  %and = and i32 %3, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay, i64 %idx.ext
  %4 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  store %struct.name_s* %add.ptr, %struct.name_s** %pname, align 8, !tbaa !5
  %5 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3332, i16* %type_attrs, align 2, !tbaa !32
  %6 = load i32, i32* %index.addr, align 4, !tbaa !15
  %conv = trunc i32 %6 to i16
  %conv2 = zext i16 %conv to i32
  %7 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 %conv2, i32* %rsize, align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.name_s* @names_index_ptr(%struct.name_table_s* %nt, i32 %index) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %index.addr = alloca i32, align 4
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  %0 = load i32, i32* %index.addr, align 4, !tbaa !15
  %shr = lshr i32 %0, 9
  %idxprom = zext i32 %shr to i64
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %2 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %names1 = getelementptr inbounds %struct.name_sub_table_s, %struct.name_sub_table_s* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_s], [512 x %struct.name_s]* %names1, i32 0, i32 0
  %3 = load i32, i32* %index.addr, align 4, !tbaa !15
  %and = and i32 %3, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %arraydecay, i64 %idx.ext
  ret %struct.name_s* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @names_next_valid_index(%struct.name_table_s* %nt, i32 %nidx) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table_s*, align 8
  %nidx.addr = alloca i32, align 4
  %ssub = alloca %struct.name_string_sub_table_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %nidx, i32* %nidx.addr, align 4, !tbaa !15
  %0 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %shr = lshr i32 %1, 9
  %idxprom = zext i32 %shr to i64
  %2 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %3 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  store %struct.name_string_sub_table_s* %3, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %4 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %inc = add i32 %5, 1
  store i32 %inc, i32* %nidx.addr, align 4, !tbaa !15
  %6 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %and = and i32 %6, 511
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %shr1 = lshr i32 %7, 9
  %8 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %8, i32 0, i32 3
  %9 = load i32, i32* %sub_count, align 4, !tbaa !27
  %cmp2 = icmp uge i32 %shr1, %9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %10 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %shr4 = lshr i32 %10, 9
  %idxprom5 = zext i32 %shr4 to i64
  %11 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub6 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %11, i32 0, i32 8
  %arrayidx7 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub6, i32 0, i64 %idxprom5
  %strings8 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx7, i32 0, i32 1
  %12 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings8, align 8, !tbaa !20
  store %struct.name_string_sub_table_s* %12, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %13 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %cmp9 = icmp ne %struct.name_string_sub_table_s* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.end

if.end.11:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %14 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %add = add i32 %14, 512
  store i32 %add, i32* %nidx.addr, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %do.body
  %15 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %and13 = and i32 %15, 511
  %idxprom14 = zext i32 %and13 to i64
  %16 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %strings15 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %16, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings15, i32 0, i64 %idxprom14
  store %struct.name_string_s* %arrayidx16, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %17 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %string_bytes, align 8, !tbaa !21
  %cmp17 = icmp eq i8* %18, null
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.3
  %20 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @names_unmark_all(%struct.name_table_s* %nt) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %si = alloca i32, align 4
  %ssub = alloca %struct.name_string_sub_table_s*, align 8
  %i = alloca i32, align 4
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %0 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %si, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %2 = load i32, i32* %si, align 4, !tbaa !15
  %3 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %3, i32 0, i32 3
  %4 = load i32, i32* %sub_count, align 4, !tbaa !27
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %si, align 4, !tbaa !15
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %7 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  store %struct.name_string_sub_table_s* %7, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.name_string_sub_table_s* %7, null
  br i1 %cmp1, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !tbaa !15
  %cmp3 = icmp ult i32 %9, 512
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %si, align 4, !tbaa !15
  %shl = shl i32 %10, 9
  %11 = load i32, i32* %i, align 4, !tbaa !15
  %add = add i32 %shl, %11
  %and = and i32 %add, -512
  %12 = load i32, i32* %si, align 4, !tbaa !15
  %shl5 = shl i32 %12, 9
  %13 = load i32, i32* %i, align 4, !tbaa !15
  %add6 = add i32 %shl5, %13
  %mul = mul i32 %add6, 1959
  %and7 = and i32 %mul, 511
  %add8 = add i32 %and, %and7
  %14 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %perm_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %14, i32 0, i32 2
  %15 = load i32, i32* %perm_count, align 4, !tbaa !25
  %cmp9 = icmp uge i32 %add8, %15
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body.4
  %16 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom11 = zext i32 %16 to i64
  %17 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %strings12 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %17, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings12, i32 0, i64 %idxprom11
  %18 = bitcast %struct.name_string_s* %arrayidx13 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.clear = and i32 %bf.load, -2097153
  store i32 %bf.clear, i32* %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %for.body
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %21 = load i32, i32* %si, align 4, !tbaa !15
  %inc16 = add i32 %21, 1
  store i32 %inc16, i32* %si, align 4, !tbaa !15
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %22 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @names_mark_index(%struct.name_table_s* %nt, i32 %nidx) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table_s*, align 8
  %nidx.addr = alloca i32, align 4
  %pnstr = alloca %struct.name_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %nidx, i32* %nidx.addr, align 4, !tbaa !15
  %0 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %shr = lshr i32 %1, 9
  %idxprom = zext i32 %shr to i64
  %2 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %3 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %strings1 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings1, i32 0, i32 0
  %4 = load i32, i32* %nidx.addr, align 4, !tbaa !15
  %and = and i32 %4, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext
  store %struct.name_string_s* %add.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %5 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %6 = bitcast %struct.name_string_s* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 21
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %8 = bitcast %struct.name_string_s* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, -2097153
  %bf.set = or i32 %bf.clear3, 2097152
  store i32 %bf.set, i32* %8, align 8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i8* @names_ref_sub_table(%struct.name_table_s* %nt, %struct.ref_s* %pnref) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %pnref.addr = alloca %struct.ref_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %0 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %1 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !5
  %2 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8, !tbaa !5
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %3 = load i32, i32* %rsize, align 4, !tbaa !36
  %and = and i32 %3, 511
  %idx.ext = zext i32 %and to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %1, i64 %idx.neg
  %4 = bitcast %struct.name_s* %add.ptr to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @names_index_sub_table(%struct.name_table_s* %nt, i32 %index) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %index.addr = alloca i32, align 4
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  %0 = load i32, i32* %index.addr, align 4, !tbaa !15
  %shr = lshr i32 %0, 9
  %idxprom = zext i32 %shr to i64
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %2 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %3 = bitcast %struct.name_sub_table_s* %2 to i8*
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @names_index_string_sub_table(%struct.name_table_s* %nt, i32 %index) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %index.addr = alloca i32, align 4
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  %0 = load i32, i32* %index.addr, align 4, !tbaa !15
  %shr = lshr i32 %0, 9
  %idxprom = zext i32 %shr to i64
  %1 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %1, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %2 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %3 = bitcast %struct.name_string_sub_table_s* %2 to i8*
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal void @name_scan_sub(%struct.name_table_s* %nt, i32 %sub_index, i32 %free_empty, i32 %unmark) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %sub_index.addr = alloca i32, align 4
  %free_empty.addr = alloca i32, align 4
  %unmark.addr = alloca i32, align 4
  %ssub = alloca %struct.name_string_sub_table_s*, align 8
  %free = alloca i32, align 4
  %nbase = alloca i32, align 4
  %ncnt = alloca i32, align 4
  %keep = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nidx = alloca i32, align 4
  %pnstr = alloca %struct.name_string_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store i32 %sub_index, i32* %sub_index.addr, align 4, !tbaa !15
  store i32 %free_empty, i32* %free_empty.addr, align 4, !tbaa !15
  store i32 %unmark, i32* %unmark.addr, align 4, !tbaa !15
  %0 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %3 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  store %struct.name_string_sub_table_s* %3, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %4 = bitcast i32* %free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free1 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %5, i32 0, i32 0
  %6 = load i32, i32* %free1, align 4, !tbaa !26
  store i32 %6, i32* %free, align 4, !tbaa !15
  %7 = bitcast i32* %nbase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %shl = shl i32 %8, 9
  store i32 %shl, i32* %nbase, align 4, !tbaa !15
  %9 = bitcast i32* %ncnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %nbase, align 4, !tbaa !15
  %add = add i32 %10, 511
  store i32 %add, i32* %ncnt, align 4, !tbaa !15
  %11 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %free_empty.addr, align 4, !tbaa !15
  %tobool = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %keep, align 4, !tbaa !15
  %13 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %cmp = icmp eq %struct.name_string_sub_table_s* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %entry
  %14 = load i32, i32* %nbase, align 4, !tbaa !15
  %cmp2 = icmp eq i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %nbase, align 4, !tbaa !15
  store i32 1, i32* %keep, align 4, !tbaa !15
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %ncnt, align 4, !tbaa !15
  %and = and i32 %16, -512
  %17 = load i32, i32* %ncnt, align 4, !tbaa !15
  %mul = mul i32 %17, 23
  %and5 = and i32 %mul, 511
  %add6 = add i32 %and, %and5
  store i32 %add6, i32* %nidx, align 4, !tbaa !15
  %18 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %nidx, align 4, !tbaa !15
  %and7 = and i32 %19, 511
  %idxprom8 = zext i32 %and7 to i64
  %20 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %ssub, align 8, !tbaa !5
  %strings9 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %20, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings9, i32 0, i64 %idxprom8
  store %struct.name_string_s* %arrayidx10, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %21 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %22 = bitcast %struct.name_string_s* %21 to i32*
  %bf.load = load i32, i32* %22, align 8
  %bf.lshr = lshr i32 %bf.load, 21
  %bf.clear = and i32 %bf.lshr, 1
  %tobool11 = icmp ne i32 %bf.clear, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.cond
  store i32 1, i32* %keep, align 4, !tbaa !15
  br label %if.end.15

if.else:                                          ; preds = %for.cond
  %23 = load i32, i32* %free, align 4, !tbaa !15
  %24 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %25 = bitcast %struct.name_string_s* %24 to i32*
  %bf.load13 = load i32, i32* %25, align 8
  %bf.value = and i32 %23, 1048575
  %bf.clear14 = and i32 %bf.load13, -1048576
  %bf.set = or i32 %bf.clear14, %bf.value
  store i32 %bf.set, i32* %25, align 8
  %26 = load i32, i32* %nidx, align 4, !tbaa !15
  store i32 %26, i32* %free, align 4, !tbaa !15
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %27 = load i32, i32* %ncnt, align 4, !tbaa !15
  %28 = load i32, i32* %nbase, align 4, !tbaa !15
  %cmp16 = icmp eq i32 %27, %28
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %29 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %nidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, i32* %ncnt, align 4, !tbaa !15
  %dec = add i32 %31, -1
  store i32 %dec, i32* %ncnt, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %32 = load i32, i32* %keep, align 4, !tbaa !15
  %tobool20 = icmp ne i32 %32, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %for.end
  %33 = load i32, i32* %free, align 4, !tbaa !15
  %34 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %free22 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %34, i32 0, i32 0
  store i32 %33, i32* %free22, align 4, !tbaa !26
  br label %if.end.46

if.else.23:                                       ; preds = %for.end
  %35 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %36 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %37 = load i32, i32* %unmark.addr, align 4, !tbaa !15
  call void @name_free_sub(%struct.name_table_s* %35, i32 %36, i32 %37) #5
  %38 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %39 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %39, i32 0, i32 3
  %40 = load i32, i32* %sub_count, align 4, !tbaa !27
  %sub24 = sub i32 %40, 1
  %cmp25 = icmp eq i32 %38, %sub24
  br i1 %cmp25, label %if.then.26, label %if.else.38

if.then.26:                                       ; preds = %if.else.23
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.26
  %41 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %dec27 = add i32 %41, -1
  store i32 %dec27, i32* %sub_index.addr, align 4, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %42 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %idxprom28 = zext i32 %42 to i64
  %43 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub29 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %43, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub29, i32 0, i64 %idxprom28
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx30, i32 0, i32 0
  %44 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %cmp31 = icmp eq %struct.name_sub_table_s* %44, null
  br i1 %cmp31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %add32 = add i32 %45, 1
  %46 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count33 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %46, i32 0, i32 3
  store i32 %add32, i32* %sub_count33, align 4, !tbaa !27
  %47 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %47, i32 0, i32 1
  %48 = load i32, i32* %sub_next, align 4, !tbaa !16
  %49 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %cmp34 = icmp ugt i32 %48, %49
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %do.end
  %50 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %51 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next36 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %51, i32 0, i32 1
  store i32 %50, i32* %sub_next36, align 4, !tbaa !16
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %do.end
  br label %if.end.45

if.else.38:                                       ; preds = %if.else.23
  %52 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next39 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %52, i32 0, i32 1
  %53 = load i32, i32* %sub_next39, align 4, !tbaa !16
  %54 = load i32, i32* %sub_index.addr, align 4, !tbaa !15
  %cmp40 = icmp eq i32 %53, %54
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.else.38
  %55 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_next42 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %55, i32 0, i32 1
  %56 = load i32, i32* %sub_next42, align 4, !tbaa !16
  %dec43 = add i32 %56, -1
  store i32 %dec43, i32* %sub_next42, align 4, !tbaa !16
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.else.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %if.then
  %57 = bitcast i32* %keep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %ncnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %nbase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.name_string_sub_table_s** %ssub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %cleanup.dest.52 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.52, label %unreachable [
    i32 0, label %cleanup.cont.53
    i32 1, label %cleanup.cont.53
  ]

cleanup.cont.53:                                  ; preds = %cleanup.47, %cleanup.47
  ret void

unreachable:                                      ; preds = %cleanup.47, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @names_restore(%struct.name_table_s* %nt, %struct.alloc_save_s* %save) #0 {
entry:
  %nt.addr = alloca %struct.name_table_s*, align 8
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %si = alloca i32, align 4
  %i = alloca i32, align 4
  %pnstr = alloca %struct.name_string_s*, align 8
  store %struct.name_table_s* %nt, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !5
  %0 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %si, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %1 = load i32, i32* %si, align 4, !tbaa !15
  %2 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %2, i32 0, i32 3
  %3 = load i32, i32* %sub_count, align 4, !tbaa !27
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %si, align 4, !tbaa !15
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %6 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %cmp1 = icmp ne %struct.name_string_sub_table_s* %6, null
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %for.body
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %cmp3 = icmp ult i32 %8, 512
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %si, align 4, !tbaa !15
  %shl = shl i32 %10, 9
  %11 = load i32, i32* %i, align 4, !tbaa !15
  %add = add i32 %shl, %11
  %shr = lshr i32 %add, 9
  %idxprom5 = zext i32 %shr to i64
  %12 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  %sub6 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %12, i32 0, i32 8
  %arrayidx7 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub6, i32 0, i64 %idxprom5
  %strings8 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx7, i32 0, i32 1
  %13 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings8, align 8, !tbaa !20
  %strings9 = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings9, i32 0, i32 0
  %14 = load i32, i32* %si, align 4, !tbaa !15
  %shl10 = shl i32 %14, 9
  %15 = load i32, i32* %i, align 4, !tbaa !15
  %add11 = add i32 %shl10, %15
  %and = and i32 %add11, 511
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %arraydecay, i64 %idx.ext
  store %struct.name_string_s* %add.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %16 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %string_bytes, align 8, !tbaa !21
  %cmp12 = icmp eq i8* %17, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.4
  %18 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %19 = bitcast %struct.name_string_s* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, -2097153
  store i32 %bf.clear, i32* %19, align 8
  br label %if.end.31

if.else:                                          ; preds = %for.body.4
  %20 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %21 = bitcast %struct.name_string_s* %20 to i32*
  %bf.load14 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load14, 20
  %bf.clear15 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear15, 0
  br i1 %tobool, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else
  %22 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %23 = bitcast %struct.name_string_s* %22 to i32*
  %bf.load17 = load i32, i32* %23, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 21
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then.16
  %24 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %25 = bitcast %struct.name_string_s* %24 to i32*
  %bf.load22 = load i32, i32* %25, align 8
  %bf.clear23 = and i32 %bf.load22, -2097153
  %bf.set = or i32 %bf.clear23, 2097152
  store i32 %bf.set, i32* %25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.16
  br label %if.end.30

if.else.24:                                       ; preds = %if.else
  %26 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes25 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %string_bytes25, align 8, !tbaa !21
  %28 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !5
  %call = call i32 @alloc_is_since_save(i8* %27, %struct.alloc_save_s* %28) #5
  %tobool26 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool26, true
  %lnot.ext = zext i1 %lnot to i32
  %29 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %30 = bitcast %struct.name_string_s* %29 to i32*
  %bf.load27 = load i32, i32* %30, align 8
  %bf.value = and i32 %lnot.ext, 1
  %bf.shl = shl i32 %bf.value, 21
  %bf.clear28 = and i32 %bf.load27, -2097153
  %bf.set29 = or i32 %bf.clear28, %bf.shl
  store i32 %bf.set29, i32* %30, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.24, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.13
  %31 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %32 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %for.body
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %34 = load i32, i32* %si, align 4, !tbaa !15
  %inc34 = add i32 %34, 1
  store i32 %inc34, i32* %si, align 4, !tbaa !15
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %35 = load %struct.name_table_s*, %struct.name_table_s** %nt.addr, align 8, !tbaa !5
  call void @names_trace_finish(%struct.name_table_s* %35, %struct.gc_state_s* null) #5
  %36 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret void
}

declare i32 @alloc_is_since_save(i8*, %struct.alloc_save_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @name_table_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.name_table_s*
  store %struct.name_table_s* %2, %struct.name_table_s** %nt, align 8, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %index.addr, align 4, !tbaa !15
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %i, align 4, !tbaa !15
  %5 = load i32, i32* %i, align 4, !tbaa !15
  %6 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub_count = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %6, i32 0, i32 3
  %7 = load i32, i32* %sub_count, align 4, !tbaa !27
  %cmp = icmp uge i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %index.addr, align 4, !tbaa !15
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %10, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 1
  %11 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %12 = bitcast %struct.name_string_sub_table_s* %11 to i8*
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* %12, i8** %ptr, align 8, !tbaa !37
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom2 = zext i32 %14 to i64
  %15 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub3 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %15, i32 0, i32 8
  %arrayidx4 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub3, i32 0, i64 %idxprom2
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx4, i32 0, i32 0
  %16 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %17 = bitcast %struct.name_sub_table_s* %16 to i8*
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  %ptr5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 0
  store i8* %17, i8** %ptr5, align 8, !tbaa !37
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.1, %if.then
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %21
}

; Function Attrs: nounwind uwtable
define internal void @name_table_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %nt = alloca %struct.name_table_s*, align 8
  %sub_count = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.name_table_s*
  store %struct.name_table_s* %2, %struct.name_table_s** %nt, align 8, !tbaa !5
  %3 = bitcast i32* %sub_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub_count1 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %4, i32 0, i32 3
  %5 = load i32, i32* %sub_count1, align 4, !tbaa !27
  store i32 %5, i32* %sub_count, align 4, !tbaa !15
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !15
  %8 = load i32, i32* %sub_count, align 4, !tbaa !15
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %10 = bitcast %struct.gc_state_s* %9 to %struct.gc_procs_common_s**
  %11 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %10, align 8, !tbaa !5
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %11, i32 0, i32 0
  %12 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !39
  %13 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %14, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub, i32 0, i64 %idxprom
  %names = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx, i32 0, i32 0
  %15 = load %struct.name_sub_table_s*, %struct.name_sub_table_s** %names, align 8, !tbaa !18
  %16 = bitcast %struct.name_sub_table_s* %15 to i8*
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %call = call i8* %12(i8* %16, %struct.gc_state_s* %17) #5
  %18 = bitcast i8* %call to %struct.name_sub_table_s*
  %19 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom2 = zext i32 %19 to i64
  %20 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub3 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %20, i32 0, i32 8
  %arrayidx4 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub3, i32 0, i64 %idxprom2
  %names5 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx4, i32 0, i32 0
  store %struct.name_sub_table_s* %18, %struct.name_sub_table_s** %names5, align 8, !tbaa !18
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !5
  %reloc_struct_ptr6 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 0
  %24 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr6, align 8, !tbaa !39
  %25 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom7 = zext i32 %25 to i64
  %26 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub8 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %26, i32 0, i32 8
  %arrayidx9 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub8, i32 0, i64 %idxprom7
  %strings = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx9, i32 0, i32 1
  %27 = load %struct.name_string_sub_table_s*, %struct.name_string_sub_table_s** %strings, align 8, !tbaa !20
  %28 = bitcast %struct.name_string_sub_table_s* %27 to i8*
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %call10 = call i8* %24(i8* %28, %struct.gc_state_s* %29) #5
  %30 = bitcast i8* %call10 to %struct.name_string_sub_table_s*
  %31 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom11 = zext i32 %31 to i64
  %32 = load %struct.name_table_s*, %struct.name_table_s** %nt, align 8, !tbaa !5
  %sub12 = getelementptr inbounds %struct.name_table_s, %struct.name_table_s* %32, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [2048 x %struct.sub_], [2048 x %struct.sub_]* %sub12, i32 0, i64 %idxprom11
  %strings14 = getelementptr inbounds %struct.sub_, %struct.sub_* %arrayidx13, i32 0, i32 1
  store %struct.name_string_sub_table_s* %30, %struct.name_string_sub_table_s** %strings14, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %sub_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.name_table_s** %nt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_names_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !5
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !5
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !41
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 16
  store %struct.name_table_s* null, %struct.name_table_s** %gs_name_table, align 8, !tbaa !42
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @name_string_sub_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  store i32 %index, i32* %index.addr, align 4, !tbaa !15
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  ret %struct.gs_ptr_procs_s* null
}

; Function Attrs: nounwind uwtable
define internal void @name_string_sub_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pnstr = alloca %struct.name_string_s*, align 8
  %i = alloca i32, align 4
  %nstr = alloca %struct.gs_const_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.name_string_sub_table_s*
  %strings = getelementptr inbounds %struct.name_string_sub_table_s, %struct.name_string_sub_table_s* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [512 x %struct.name_string_s], [512 x %struct.name_string_s]* %strings, i32 0, i32 0
  store %struct.name_string_s* %arraydecay, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !15
  %cmp = icmp ult i32 %4, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %string_bytes, align 8, !tbaa !21
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %8 = bitcast %struct.name_string_s* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast %struct.gs_const_string_s* %nstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes2 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %string_bytes2, align 8, !tbaa !21
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %nstr, i32 0, i32 0
  store i8* %11, i8** %data, align 8, !tbaa !44
  %12 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %13 = bitcast %struct.name_string_s* %12 to i32*
  %bf.load3 = load i32, i32* %13, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 22
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %nstr, i32 0, i32 1
  store i32 %bf.lshr4, i32* %size5, align 4, !tbaa !46
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %15 = bitcast %struct.gc_state_s* %14 to %struct.gc_procs_common_s**
  %16 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %15, align 8, !tbaa !5
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %16, i32 0, i32 2
  %17 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !47
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  call void %17(%struct.gs_const_string_s* %nstr, %struct.gc_state_s* %18) #5
  %data6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %nstr, i32 0, i32 0
  %19 = load i8*, i8** %data6, align 8, !tbaa !44
  %20 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %string_bytes7 = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %20, i32 0, i32 1
  store i8* %19, i8** %string_bytes7, align 8, !tbaa !21
  %21 = bitcast %struct.gs_const_string_s* %nstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.name_string_s*, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.name_string_s, %struct.name_string_s* %22, i32 1
  store %struct.name_string_s* %incdec.ptr, %struct.name_string_s** %pnstr, align 8, !tbaa !5
  %23 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.name_string_s** %pnstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 72}
!8 = !{!"gs_memory_s", !6, i64 0, !9, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!9 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!10 = !{!11, !12, i64 16}
!11 = !{!"name_table_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !3, i64 32, !3, i64 16416}
!12 = !{!"int", !3, i64 0}
!13 = !{!11, !12, i64 20}
!14 = !{!11, !6, i64 24}
!15 = !{!12, !12, i64 0}
!16 = !{!11, !12, i64 4}
!17 = !{!8, !6, i64 24}
!18 = !{!19, !6, i64 0}
!19 = !{!"sub_", !6, i64 0, !6, i64 8}
!20 = !{!19, !6, i64 8}
!21 = !{!22, !6, i64 8}
!22 = !{!"name_string_s", !12, i64 0, !12, i64 2, !12, i64 2, !12, i64 2, !6, i64 8}
!23 = !{!24, !6, i64 0}
!24 = !{!"name_s", !6, i64 0}
!25 = !{!11, !12, i64 8}
!26 = !{!11, !12, i64 0}
!27 = !{!11, !12, i64 12}
!28 = !{!29, !12, i64 4096}
!29 = !{!"name_sub_table_s", !3, i64 0, !12, i64 4096}
!30 = !{!3, !3, i64 0}
!31 = !{!8, !6, i64 136}
!32 = !{!33, !35, i64 0}
!33 = !{!"ref_s", !34, i64 0, !3, i64 8}
!34 = !{!"tas_s", !35, i64 0, !35, i64 2, !12, i64 4}
!35 = !{!"short", !3, i64 0}
!36 = !{!33, !12, i64 4}
!37 = !{!38, !6, i64 0}
!38 = !{!"enum_ptr_s", !6, i64 0, !12, i64 8}
!39 = !{!40, !6, i64 0}
!40 = !{!"gc_procs_common_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!41 = !{!8, !6, i64 192}
!42 = !{!43, !6, i64 120}
!43 = !{!"gs_lib_ctx_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !2, i64 104, !6, i64 112, !6, i64 120, !12, i64 128, !6, i64 136, !12, i64 144, !12, i64 148, !3, i64 152, !6, i64 168, !12, i64 176, !6, i64 184, !12, i64 192, !6, i64 200, !6, i64 208}
!44 = !{!45, !6, i64 0}
!45 = !{!"gs_const_string_s", !6, i64 0, !12, i64 8}
!46 = !{!45, !12, i64 8}
!47 = !{!40, !6, i64 16}
