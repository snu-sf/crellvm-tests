; ModuleID = './gsutil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_match_params_s = type { i32, i32, i32, i32, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }

@string_match_params_default = constant %struct.string_match_params_s { i32 42, i32 63, i32 92, i32 0, i32 0 }, align 4

; Function Attrs: nounwind uwtable
define i64 @gs_next_ids(%struct.gs_memory_s* %mem, i32 %count) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %count.addr = alloca i32, align 4
  %id = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 2
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %gs_next_id = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 14
  %3 = load i64, i64* %gs_next_id, align 8, !tbaa !10
  store i64 %3, i64* %id, align 8, !tbaa !13
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !7
  %gs_next_id2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 14
  %7 = load i64, i64* %gs_next_id2, align 8, !tbaa !10
  %add = add i64 %7, %conv
  store i64 %add, i64* %gs_next_id2, align 8, !tbaa !10
  %8 = load i64, i64* %id, align 8, !tbaa !13
  %9 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i64 %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @memflip8x8(i8* %inp, i32 %line_size, i8* %outp, i32 %dist) #0 {
entry:
  %inp.addr = alloca i8*, align 8
  %line_size.addr = alloca i32, align 4
  %outp.addr = alloca i8*, align 8
  %dist.addr = alloca i32, align 4
  %aceg = alloca i32, align 4
  %bdfh = alloca i32, align 4
  %ptr4 = alloca i8*, align 8
  %ls2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %temp = alloca i32, align 4
  store i8* %inp, i8** %inp.addr, align 8, !tbaa !1
  store i32 %line_size, i32* %line_size.addr, align 4, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !1
  store i32 %dist, i32* %dist.addr, align 4, !tbaa !5
  %0 = bitcast i32* %aceg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %bdfh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %ptr4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %4 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %shl = shl i32 %4, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr4, align 8, !tbaa !1
  %5 = bitcast i32* %ls2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %shl1 = shl i32 %6, 1
  store i32 %shl1, i32* %ls2, align 4, !tbaa !5
  %7 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !14
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %ls2, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv2 = zext i8 %11 to i32
  %shl3 = shl i32 %conv2, 8
  %or = or i32 %conv, %shl3
  %12 = load i8*, i8** %ptr4, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !14
  %conv4 = zext i8 %13 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %14 = load i32, i32* %ls2, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8*, i8** %ptr4, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1, !tbaa !14
  %conv9 = zext i8 %16 to i32
  %shl10 = shl i32 %conv9, 24
  %or11 = or i32 %or6, %shl10
  store i32 %or11, i32* %aceg, align 4, !tbaa !5
  %17 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %18 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %idx.ext12 = sext i32 %17 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %18, i64 %idx.ext12
  store i8* %add.ptr13, i8** %inp.addr, align 8, !tbaa !1
  %19 = load i32, i32* %line_size.addr, align 4, !tbaa !5
  %20 = load i8*, i8** %ptr4, align 8, !tbaa !1
  %idx.ext14 = sext i32 %19 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %20, i64 %idx.ext14
  store i8* %add.ptr15, i8** %ptr4, align 8, !tbaa !1
  %21 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !14
  %conv16 = zext i8 %22 to i32
  %23 = load i32, i32* %ls2, align 4, !tbaa !5
  %idxprom17 = sext i32 %23 to i64
  %24 = load i8*, i8** %inp.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  %25 = load i8, i8* %arrayidx18, align 1, !tbaa !14
  %conv19 = zext i8 %25 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %conv16, %shl20
  %26 = load i8*, i8** %ptr4, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !14
  %conv22 = zext i8 %27 to i32
  %shl23 = shl i32 %conv22, 16
  %or24 = or i32 %or21, %shl23
  %28 = load i32, i32* %ls2, align 4, !tbaa !5
  %idxprom25 = sext i32 %28 to i64
  %29 = load i8*, i8** %ptr4, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %idxprom25
  %30 = load i8, i8* %arrayidx26, align 1, !tbaa !14
  %conv27 = zext i8 %30 to i32
  %shl28 = shl i32 %conv27, 24
  %or29 = or i32 %or24, %shl28
  store i32 %or29, i32* %bdfh, align 4, !tbaa !5
  %31 = bitcast i32* %ls2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %ptr4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %aceg, align 4, !tbaa !5
  %34 = load i32, i32* %bdfh, align 4, !tbaa !5
  %cmp = icmp eq i32 %33, %34
  br i1 %cmp, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %entry
  %35 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr = lshr i32 %35, 8
  %36 = load i32, i32* %aceg, align 4, !tbaa !5
  %and = and i32 %36, 16777215
  %cmp31 = icmp eq i32 %shr, %and
  br i1 %cmp31, label %if.then, label %if.end.85

if.then:                                          ; preds = %land.lhs.true
  %37 = load i32, i32* %aceg, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %37, 0
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %38 = load i32, i32* %aceg, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %38, -1
  br i1 %cmp35, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %lor.lhs.false, %if.then
  br label %store

if.end:                                           ; preds = %lor.lhs.false
  %39 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr38 = lshr i32 %39, 7
  %and39 = and i32 %shr38, 1
  %sub = sub nsw i32 0, %and39
  %conv40 = trunc i32 %sub to i8
  %40 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv40, i8* %40, align 1, !tbaa !14
  %41 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr41 = lshr i32 %41, 6
  %and42 = and i32 %shr41, 1
  %sub43 = sub nsw i32 0, %and42
  %conv44 = trunc i32 %sub43 to i8
  %42 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom45 = sext i32 %42 to i64
  %43 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %43, i64 %idxprom45
  store i8 %conv44, i8* %arrayidx46, align 1, !tbaa !14
  %44 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl47 = shl i32 %44, 1
  %45 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext48 = sext i32 %shl47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %45, i64 %idx.ext48
  store i8* %add.ptr49, i8** %outp.addr, align 8, !tbaa !1
  %46 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr50 = lshr i32 %46, 5
  %and51 = and i32 %shr50, 1
  %sub52 = sub nsw i32 0, %and51
  %conv53 = trunc i32 %sub52 to i8
  %47 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv53, i8* %47, align 1, !tbaa !14
  %48 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr54 = lshr i32 %48, 4
  %and55 = and i32 %shr54, 1
  %sub56 = sub nsw i32 0, %and55
  %conv57 = trunc i32 %sub56 to i8
  %49 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom58 = sext i32 %49 to i64
  %50 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %50, i64 %idxprom58
  store i8 %conv57, i8* %arrayidx59, align 1, !tbaa !14
  %51 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl60 = shl i32 %51, 1
  %52 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext61 = sext i32 %shl60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %52, i64 %idx.ext61
  store i8* %add.ptr62, i8** %outp.addr, align 8, !tbaa !1
  %53 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr63 = lshr i32 %53, 3
  %and64 = and i32 %shr63, 1
  %sub65 = sub nsw i32 0, %and64
  %conv66 = trunc i32 %sub65 to i8
  %54 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv66, i8* %54, align 1, !tbaa !14
  %55 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr67 = lshr i32 %55, 2
  %and68 = and i32 %shr67, 1
  %sub69 = sub nsw i32 0, %and68
  %conv70 = trunc i32 %sub69 to i8
  %56 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom71 = sext i32 %56 to i64
  %57 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %57, i64 %idxprom71
  store i8 %conv70, i8* %arrayidx72, align 1, !tbaa !14
  %58 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl73 = shl i32 %58, 1
  %59 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext74 = sext i32 %shl73 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %59, i64 %idx.ext74
  store i8* %add.ptr75, i8** %outp.addr, align 8, !tbaa !1
  %60 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr76 = lshr i32 %60, 1
  %and77 = and i32 %shr76, 1
  %sub78 = sub nsw i32 0, %and77
  %conv79 = trunc i32 %sub78 to i8
  %61 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv79, i8* %61, align 1, !tbaa !14
  %62 = load i32, i32* %aceg, align 4, !tbaa !5
  %and80 = and i32 %62, 1
  %sub81 = sub nsw i32 0, %and80
  %conv82 = trunc i32 %sub81 to i8
  %63 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom83 = sext i32 %63 to i64
  %64 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %64, i64 %idxprom83
  store i8 %conv82, i8* %arrayidx84, align 1, !tbaa !14
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %land.lhs.true, %entry
  %65 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr86 = lshr i32 %66, 20
  %67 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor = xor i32 %shr86, %67
  %and87 = and i32 %xor, 3855
  store i32 %and87, i32* %temp, align 4, !tbaa !5
  %68 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor88 = xor i32 %68, %and87
  store i32 %xor88, i32* %aceg, align 4, !tbaa !5
  %69 = load i32, i32* %temp, align 4, !tbaa !5
  %shl89 = shl i32 %69, 20
  %70 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor90 = xor i32 %70, %shl89
  store i32 %xor90, i32* %aceg, align 4, !tbaa !5
  %71 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr91 = lshr i32 %71, 20
  %72 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor92 = xor i32 %shr91, %72
  %and93 = and i32 %xor92, 3855
  store i32 %and93, i32* %temp, align 4, !tbaa !5
  %73 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor94 = xor i32 %73, %and93
  store i32 %xor94, i32* %bdfh, align 4, !tbaa !5
  %74 = load i32, i32* %temp, align 4, !tbaa !5
  %shl95 = shl i32 %74, 20
  %75 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor96 = xor i32 %75, %shl95
  store i32 %xor96, i32* %bdfh, align 4, !tbaa !5
  %76 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr97 = lshr i32 %76, 10
  %77 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor98 = xor i32 %shr97, %77
  %and99 = and i32 %xor98, 3342387
  store i32 %and99, i32* %temp, align 4, !tbaa !5
  %78 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor100 = xor i32 %78, %and99
  store i32 %xor100, i32* %aceg, align 4, !tbaa !5
  %79 = load i32, i32* %temp, align 4, !tbaa !5
  %shl101 = shl i32 %79, 10
  %80 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor102 = xor i32 %80, %shl101
  store i32 %xor102, i32* %aceg, align 4, !tbaa !5
  %81 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr103 = lshr i32 %81, 10
  %82 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor104 = xor i32 %shr103, %82
  %and105 = and i32 %xor104, 3342387
  store i32 %and105, i32* %temp, align 4, !tbaa !5
  %83 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor106 = xor i32 %83, %and105
  store i32 %xor106, i32* %bdfh, align 4, !tbaa !5
  %84 = load i32, i32* %temp, align 4, !tbaa !5
  %shl107 = shl i32 %84, 10
  %85 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor108 = xor i32 %85, %shl107
  store i32 %xor108, i32* %bdfh, align 4, !tbaa !5
  %86 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr109 = lshr i32 %86, 1
  %87 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor110 = xor i32 %shr109, %87
  %and111 = and i32 %xor110, 1431655765
  store i32 %and111, i32* %temp, align 4, !tbaa !5
  %88 = load i32, i32* %aceg, align 4, !tbaa !5
  %xor112 = xor i32 %88, %and111
  store i32 %xor112, i32* %aceg, align 4, !tbaa !5
  %89 = load i32, i32* %temp, align 4, !tbaa !5
  %shl113 = shl i32 %89, 1
  %90 = load i32, i32* %bdfh, align 4, !tbaa !5
  %xor114 = xor i32 %90, %shl113
  store i32 %xor114, i32* %bdfh, align 4, !tbaa !5
  %91 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  br label %store

store:                                            ; preds = %if.end.85, %if.then.37
  %92 = load i32, i32* %aceg, align 4, !tbaa !5
  %conv115 = trunc i32 %92 to i8
  %93 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv115, i8* %93, align 1, !tbaa !14
  %94 = load i32, i32* %bdfh, align 4, !tbaa !5
  %conv116 = trunc i32 %94 to i8
  %95 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom117 = sext i32 %95 to i64
  %96 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %96, i64 %idxprom117
  store i8 %conv116, i8* %arrayidx118, align 1, !tbaa !14
  %97 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl119 = shl i32 %97, 1
  %98 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext120 = sext i32 %shl119 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %98, i64 %idx.ext120
  store i8* %add.ptr121, i8** %outp.addr, align 8, !tbaa !1
  %99 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr122 = lshr i32 %99, 8
  store i32 %shr122, i32* %aceg, align 4, !tbaa !5
  %conv123 = trunc i32 %shr122 to i8
  %100 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv123, i8* %100, align 1, !tbaa !14
  %101 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr124 = lshr i32 %101, 8
  store i32 %shr124, i32* %bdfh, align 4, !tbaa !5
  %conv125 = trunc i32 %shr124 to i8
  %102 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom126 = sext i32 %102 to i64
  %103 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %103, i64 %idxprom126
  store i8 %conv125, i8* %arrayidx127, align 1, !tbaa !14
  %104 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl128 = shl i32 %104, 1
  %105 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext129 = sext i32 %shl128 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %105, i64 %idx.ext129
  store i8* %add.ptr130, i8** %outp.addr, align 8, !tbaa !1
  %106 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr131 = lshr i32 %106, 8
  store i32 %shr131, i32* %aceg, align 4, !tbaa !5
  %conv132 = trunc i32 %shr131 to i8
  %107 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv132, i8* %107, align 1, !tbaa !14
  %108 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr133 = lshr i32 %108, 8
  store i32 %shr133, i32* %bdfh, align 4, !tbaa !5
  %conv134 = trunc i32 %shr133 to i8
  %109 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom135 = sext i32 %109 to i64
  %110 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %110, i64 %idxprom135
  store i8 %conv134, i8* %arrayidx136, align 1, !tbaa !14
  %111 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %shl137 = shl i32 %111, 1
  %112 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %idx.ext138 = sext i32 %shl137 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %112, i64 %idx.ext138
  store i8* %add.ptr139, i8** %outp.addr, align 8, !tbaa !1
  %113 = load i32, i32* %aceg, align 4, !tbaa !5
  %shr140 = lshr i32 %113, 8
  %conv141 = trunc i32 %shr140 to i8
  %114 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  store i8 %conv141, i8* %114, align 1, !tbaa !14
  %115 = load i32, i32* %bdfh, align 4, !tbaa !5
  %shr142 = lshr i32 %115, 8
  %conv143 = trunc i32 %shr142 to i8
  %116 = load i32, i32* %dist.addr, align 4, !tbaa !5
  %idxprom144 = sext i32 %116 to i64
  %117 = load i8*, i8** %outp.addr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %117, i64 %idxprom144
  store i8 %conv143, i8* %arrayidx145, align 1, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %store, %if.end
  %118 = bitcast i32* %bdfh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %aceg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
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
define i64 @get_u32_msb(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !14
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %add = add i32 %shl, %shl3
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !14
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %add7 = add i32 %add, %shl6
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !14
  %conv9 = zext i8 %7 to i32
  %add10 = add i32 %add7, %conv9
  %conv11 = zext i32 %add10 to i64
  ret i64 %conv11
}

; Function Attrs: nounwind uwtable
define i32 @bytes_compare(i8* %s1, i32 %len1, i8* %s2, i32 %len2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %len1.addr = alloca i32, align 4
  %s2.addr = alloca i8*, align 8
  %len2.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %s1, i8** %s1.addr, align 8, !tbaa !1
  store i32 %len1, i32* %len1.addr, align 4, !tbaa !5
  store i8* %s2, i8** %s2.addr, align 8, !tbaa !1
  store i32 %len2, i32* %len2.addr, align 4, !tbaa !5
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %len1.addr, align 4, !tbaa !5
  store i32 %1, i32* %len, align 4, !tbaa !5
  %2 = load i32, i32* %len2.addr, align 4, !tbaa !5
  %3 = load i32, i32* %len, align 4, !tbaa !5
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len2.addr, align 4, !tbaa !5
  store i32 %4, i32* %len, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %s1.addr, align 8, !tbaa !1
  store i8* %6, i8** %p1, align 8, !tbaa !1
  %7 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %s2.addr, align 8, !tbaa !1
  store i8* %8, i8** %p2, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %9 = load i32, i32* %len, align 4, !tbaa !5
  %dec = add i32 %9, -1
  store i32 %dec, i32* %len, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %p1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !14
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %p2, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr1, i8** %p2, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !14
  %conv2 = zext i8 %13 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %while.body
  %14 = load i8*, i8** %p1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv6 = zext i8 %15 to i32
  %16 = load i8*, i8** %p2, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 -1
  %17 = load i8, i8* %arrayidx7, align 1, !tbaa !14
  %conv8 = zext i8 %17 to i32
  %cmp9 = icmp slt i32 %conv6, %conv8
  %cond = select i1 %cmp9, i32 -1, i32 1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.5
  %18 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %20 = load i32, i32* %len1.addr, align 4, !tbaa !5
  %21 = load i32, i32* %len2.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %20, %21
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cleanup.cont
  br label %cond.end

cond.false:                                       ; preds = %cleanup.cont
  %22 = load i32, i32* %len1.addr, align 4, !tbaa !5
  %23 = load i32, i32* %len2.addr, align 4, !tbaa !5
  %cmp15 = icmp ult i32 %22, %23
  %cond17 = select i1 %cmp15, i32 -1, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ 0, %cond.true ], [ %cond17, %cond.false ]
  store i32 %cond18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %cond.end, %cleanup
  %24 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @string_match(i8* %str, i32 %len, i8* %pstr, i32 %plen, %struct.string_match_params_s* %psmp) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pstr.addr = alloca i8*, align 8
  %plen.addr = alloca i32, align 4
  %psmp.addr = alloca %struct.string_match_params_s*, align 8
  %pback = alloca i8*, align 8
  %spback = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %spend = alloca i8*, align 8
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %pstr, i8** %pstr.addr, align 8, !tbaa !1
  store i32 %plen, i32* %plen.addr, align 4, !tbaa !5
  store %struct.string_match_params_s* %psmp, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pback to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %pback, align 8, !tbaa !1
  %1 = bitcast i8** %spback to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %spback, align 8, !tbaa !1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %pstr.addr, align 8, !tbaa !1
  store i8* %3, i8** %p, align 8, !tbaa !1
  %4 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %pstr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %plen.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %pend, align 8, !tbaa !1
  %7 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %8, i8** %sp, align 8, !tbaa !1
  %9 = bitcast i8** %spend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %11 = load i32, i32* %len.addr, align 4, !tbaa !5
  %idx.ext1 = zext i32 %11 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 %idx.ext1
  store i8* %add.ptr2, i8** %spend, align 8, !tbaa !1
  %12 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.string_match_params_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.string_match_params_s* @string_match_params_default, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %again

again:                                            ; preds = %if.end.87, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %again
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp3 = icmp ult i8* %13, %14
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !14
  store i8 %16, i8* %ch, align 1, !tbaa !14
  %17 = load i8, i8* %ch, align 1, !tbaa !14
  %conv = zext i8 %17 to i32
  %18 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %any_substring = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %18, i32 0, i32 0
  %19 = load i32, i32* %any_substring, align 4, !tbaa !15
  %cmp4 = icmp eq i32 %conv, %19
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8* %incdec.ptr, i8** %pback, align 8, !tbaa !1
  %21 = load i8*, i8** %sp, align 8, !tbaa !1
  store i8* %21, i8** %spback, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %while.body
  %22 = load i8, i8* %ch, align 1, !tbaa !14
  %conv7 = zext i8 %22 to i32
  %23 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %any_char = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %23, i32 0, i32 1
  %24 = load i32, i32* %any_char, align 4, !tbaa !17
  %cmp8 = icmp eq i32 %conv7, %24
  br i1 %cmp8, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %if.else
  %25 = load i8*, i8** %sp, align 8, !tbaa !1
  %26 = load i8*, i8** %spend, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %25, %26
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.10
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8, !tbaa !1
  %28 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %sp, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else.17:                                       ; preds = %if.else
  %29 = load i8, i8* %ch, align 1, !tbaa !14
  %conv18 = zext i8 %29 to i32
  %30 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %quote_next = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %30, i32 0, i32 2
  %31 = load i32, i32* %quote_next, align 4, !tbaa !18
  %cmp19 = icmp eq i32 %conv18, %31
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.else.17
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8, !tbaa !1
  %33 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp23 = icmp eq i8* %incdec.ptr22, %33
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.21
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !14
  store i8 %35, i8* %ch, align 1, !tbaa !14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.else.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %36 = load i8*, i8** %sp, align 8, !tbaa !1
  %37 = load i8*, i8** %spend, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %36, %37
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  %38 = load i8*, i8** %sp, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !14
  %conv34 = zext i8 %39 to i32
  %40 = load i8, i8* %ch, align 1, !tbaa !14
  %conv35 = zext i8 %40 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %41 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %ignore_case = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %41, i32 0, i32 3
  %42 = load i32, i32* %ignore_case, align 4, !tbaa !19
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.52

land.lhs.true:                                    ; preds = %lor.lhs.false
  %43 = load i8*, i8** %sp, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !14
  %conv38 = zext i8 %44 to i32
  %45 = load i8, i8* %ch, align 1, !tbaa !14
  %conv39 = zext i8 %45 to i32
  %xor = xor i32 %conv38, %conv39
  %cmp40 = icmp eq i32 %xor, 32
  br i1 %cmp40, label %land.lhs.true.42, label %lor.lhs.false.52

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %46 = load i8, i8* %ch, align 1, !tbaa !14
  %conv43 = zext i8 %46 to i32
  %and = and i32 %conv43, -33
  %conv44 = trunc i32 %and to i8
  store i8 %conv44, i8* %ch, align 1, !tbaa !14
  %conv45 = zext i8 %conv44 to i32
  %cmp46 = icmp sge i32 %conv45, 65
  br i1 %cmp46, label %land.lhs.true.48, label %lor.lhs.false.52

land.lhs.true.48:                                 ; preds = %land.lhs.true.42
  %47 = load i8, i8* %ch, align 1, !tbaa !14
  %conv49 = zext i8 %47 to i32
  %cmp50 = icmp sle i32 %conv49, 90
  br i1 %cmp50, label %if.then.70, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.48, %land.lhs.true.42, %land.lhs.true, %lor.lhs.false
  %48 = load %struct.string_match_params_s*, %struct.string_match_params_s** %psmp.addr, align 8, !tbaa !1
  %slash_equiv = getelementptr inbounds %struct.string_match_params_s, %struct.string_match_params_s* %48, i32 0, i32 4
  %49 = load i32, i32* %slash_equiv, align 4, !tbaa !20
  %tobool53 = icmp ne i32 %49, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.73

land.lhs.true.54:                                 ; preds = %lor.lhs.false.52
  %50 = load i8, i8* %ch, align 1, !tbaa !14
  %conv55 = zext i8 %50 to i32
  %cmp56 = icmp eq i32 %conv55, 92
  br i1 %cmp56, label %land.lhs.true.58, label %lor.lhs.false.62

land.lhs.true.58:                                 ; preds = %land.lhs.true.54
  %51 = load i8*, i8** %sp, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !14
  %conv59 = zext i8 %52 to i32
  %cmp60 = icmp eq i32 %conv59, 47
  br i1 %cmp60, label %if.then.70, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.58, %land.lhs.true.54
  %53 = load i8, i8* %ch, align 1, !tbaa !14
  %conv63 = zext i8 %53 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.73

land.lhs.true.66:                                 ; preds = %lor.lhs.false.62
  %54 = load i8*, i8** %sp, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !14
  %conv67 = zext i8 %55 to i32
  %cmp68 = icmp eq i32 %conv67, 92
  br i1 %cmp68, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %land.lhs.true.66, %land.lhs.true.58, %land.lhs.true.48, %if.end.33
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr71, i8** %p, align 8, !tbaa !1
  %57 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr72, i8** %sp, align 8, !tbaa !1
  br label %if.end.80

if.else.73:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.62, %lor.lhs.false.52
  %58 = load i8*, i8** %pback, align 8, !tbaa !1
  %cmp74 = icmp eq i8* %58, null
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.77:                                       ; preds = %if.else.73
  %59 = load i8*, i8** %spback, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr78, i8** %spback, align 8, !tbaa !1
  store i8* %incdec.ptr78, i8** %sp, align 8, !tbaa !1
  %60 = load i8*, i8** %pback, align 8, !tbaa !1
  store i8* %60, i8** %p, align 8, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.76, %if.then.32, %if.then.25, %if.end.14, %if.then.13, %if.then.6
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
    i32 3, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i8*, i8** %sp, align 8, !tbaa !1
  %62 = load i8*, i8** %spend, align 8, !tbaa !1
  %cmp81 = icmp ult i8* %61, %62
  br i1 %cmp81, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %while.end
  %63 = load i8*, i8** %pback, align 8, !tbaa !1
  %cmp84 = icmp eq i8* %63, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.87:                                        ; preds = %if.then.83
  %64 = load i8*, i8** %pback, align 8, !tbaa !1
  store i8* %64, i8** %p, align 8, !tbaa !1
  store i8* null, i8** %pback, align 8, !tbaa !1
  %65 = load i8*, i8** %spend, align 8, !tbaa !1
  %66 = load i8*, i8** %pend, align 8, !tbaa !1
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %idx.neg = sub i64 0, %sub.ptr.sub
  %add.ptr88 = getelementptr inbounds i8, i8* %65, i64 %idx.neg
  store i8* %add.ptr88, i8** %sp, align 8, !tbaa !1
  br label %again

if.end.89:                                        ; preds = %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %if.then.86, %cleanup
  %68 = bitcast i8** %spend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %spback to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %pback to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @uid_equal(%struct.gs_uid_s* %puid1, %struct.gs_uid_s* %puid2) #0 {
entry:
  %retval = alloca i32, align 4
  %puid1.addr = alloca %struct.gs_uid_s*, align 8
  %puid2.addr = alloca %struct.gs_uid_s*, align 8
  store %struct.gs_uid_s* %puid1, %struct.gs_uid_s** %puid1.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid2, %struct.gs_uid_s** %puid2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %0, i32 0, i32 0
  %1 = load i64, i64* %id, align 8, !tbaa !21
  %2 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid2.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %2, i32 0, i32 0
  %3 = load i64, i64* %id1, align 8, !tbaa !21
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1.addr, align 8, !tbaa !1
  %id2 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %4, i32 0, i32 0
  %5 = load i64, i64* %id2, align 8, !tbaa !21
  %cmp3 = icmp sge i64 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1.addr, align 8, !tbaa !1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %6, i32 0, i32 1
  %7 = load i64*, i64** %xvalues, align 8, !tbaa !23
  %8 = bitcast i64* %7 to i8*
  %9 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid2.addr, align 8, !tbaa !1
  %xvalues6 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %9, i32 0, i32 1
  %10 = load i64*, i64** %xvalues6, align 8, !tbaa !23
  %11 = bitcast i64* %10 to i8*
  %12 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid1.addr, align 8, !tbaa !1
  %id7 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %12, i32 0, i32 0
  %13 = load i64, i64* %id7, align 8, !tbaa !21
  %sub = sub nsw i64 0, %13
  %conv = trunc i64 %sub to i32
  %conv8 = zext i32 %conv to i64
  %mul = mul i64 %conv8, 8
  %call = call i32 @memcmp(i8* %8, i8* %11, i64 %mul) #4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @uid_copy(%struct.gs_uid_s* %puid, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %xsize = alloca i32, align 4
  %xvalues = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %0, i32 0, i32 0
  %1 = load i64, i64* %id, align 8, !tbaa !21
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %xsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %3, i32 0, i32 0
  %4 = load i64, i64* %id1, align 8, !tbaa !21
  %sub = sub nsw i64 0, %4
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %xsize, align 4, !tbaa !5
  %5 = bitcast i64** %xvalues to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %7 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !24
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i32, i32* %xsize, align 4, !tbaa !5
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, i32 %9, i32 8, i8* %10) #5
  %11 = bitcast i8* %call to i64*
  store i64* %11, i64** %xvalues, align 8, !tbaa !1
  %12 = load i64*, i64** %xvalues, align 8, !tbaa !1
  %cmp2 = icmp eq i64* %12, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load i64*, i64** %xvalues, align 8, !tbaa !1
  %14 = bitcast i64* %13 to i8*
  %15 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues5 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %15, i32 0, i32 1
  %16 = load i64*, i64** %xvalues5, align 8, !tbaa !23
  %17 = bitcast i64* %16 to i8*
  %18 = load i32, i32* %xsize, align 4, !tbaa !5
  %conv6 = zext i32 %18 to i64
  %mul = mul i64 %conv6, 8
  %call7 = call i8* @memcpy(i8* %14, i8* %17, i64 %mul) #6
  %19 = load i64*, i64** %xvalues, align 8, !tbaa !1
  %20 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues8 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %20, i32 0, i32 1
  store i64* %19, i64** %xvalues8, align 8, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %21 = bitcast i64** %xvalues to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i32* %xsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %cleanup
  %23 = load i32, i32* %retval
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @int_rect_difference(%struct.gs_int_rect_s* %outer, %struct.gs_int_rect_s* %inner, %struct.gs_int_rect_s* %diffs) #0 {
entry:
  %outer.addr = alloca %struct.gs_int_rect_s*, align 8
  %inner.addr = alloca %struct.gs_int_rect_s*, align 8
  %diffs.addr = alloca %struct.gs_int_rect_s*, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gs_int_rect_s* %outer, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %inner, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %diffs, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !25
  store i32 %2, i32* %x0, align 4, !tbaa !5
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !28
  store i32 %5, i32* %y0, align 4, !tbaa !5
  %6 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4, !tbaa !29
  store i32 %8, i32* %x1, align 4, !tbaa !5
  %9 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q3, i32 0, i32 1
  %11 = load i32, i32* %y4, align 4, !tbaa !30
  store i32 %11, i32* %y1, align 4, !tbaa !5
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %count, align 4, !tbaa !5
  %13 = load i32, i32* %y0, align 4, !tbaa !5
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 1
  %15 = load i32, i32* %y6, align 4, !tbaa !28
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %x0, align 4, !tbaa !5
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i64 0
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 0
  store i32 %16, i32* %x8, align 4, !tbaa !25
  %18 = load i32, i32* %y0, align 4, !tbaa !5
  %19 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %19, i64 0
  %p10 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx9, i32 0, i32 0
  %y11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p10, i32 0, i32 1
  store i32 %18, i32* %y11, align 4, !tbaa !28
  %20 = load i32, i32* %x1, align 4, !tbaa !5
  %21 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %21, i64 0
  %q13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx12, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q13, i32 0, i32 0
  store i32 %20, i32* %x14, align 4, !tbaa !29
  %22 = load i32, i32* %y1, align 4, !tbaa !5
  %23 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p15 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %23, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p15, i32 0, i32 1
  %24 = load i32, i32* %y16, align 4, !tbaa !28
  %cmp17 = icmp slt i32 %22, %24
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %25 = load i32, i32* %y1, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %26 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %26, i32 0, i32 0
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p18, i32 0, i32 1
  %27 = load i32, i32* %y19, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %27, %cond.false ]
  %28 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %28, i64 0
  %q21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx20, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q21, i32 0, i32 1
  store i32 %cond, i32* %y22, align 4, !tbaa !30
  %29 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %29, i64 0
  %q24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx23, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q24, i32 0, i32 1
  %30 = load i32, i32* %y25, align 4, !tbaa !30
  store i32 %30, i32* %y0, align 4, !tbaa !5
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %p26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %31, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p26, i32 0, i32 1
  store i32 %30, i32* %y27, align 4, !tbaa !28
  %32 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %33 = load i32, i32* %y1, align 4, !tbaa !5
  %34 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q28 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %34, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q28, i32 0, i32 1
  %35 = load i32, i32* %y29, align 4, !tbaa !30
  %cmp30 = icmp sgt i32 %33, %35
  br i1 %cmp30, label %if.then.31, label %if.end.63

if.then.31:                                       ; preds = %if.end
  %36 = load i32, i32* %x0, align 4, !tbaa !5
  %37 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %38, i64 %idxprom
  %p33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx32, i32 0, i32 0
  %x34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p33, i32 0, i32 0
  store i32 %36, i32* %x34, align 4, !tbaa !25
  %39 = load i32, i32* %y0, align 4, !tbaa !5
  %40 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %40, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q35, i32 0, i32 1
  %41 = load i32, i32* %y36, align 4, !tbaa !30
  %cmp37 = icmp sgt i32 %39, %41
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.then.31
  %42 = load i32, i32* %y0, align 4, !tbaa !5
  br label %cond.end.42

cond.false.39:                                    ; preds = %if.then.31
  %43 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %43, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  %44 = load i32, i32* %y41, align 4, !tbaa !30
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.38
  %cond43 = phi i32 [ %42, %cond.true.38 ], [ %44, %cond.false.39 ]
  %45 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom44 = sext i32 %45 to i64
  %46 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %46, i64 %idxprom44
  %p46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx45, i32 0, i32 0
  %y47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p46, i32 0, i32 1
  store i32 %cond43, i32* %y47, align 4, !tbaa !28
  %47 = load i32, i32* %x1, align 4, !tbaa !5
  %48 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom48 = sext i32 %48 to i64
  %49 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %49, i64 %idxprom48
  %q50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx49, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q50, i32 0, i32 0
  store i32 %47, i32* %x51, align 4, !tbaa !29
  %50 = load i32, i32* %y1, align 4, !tbaa !5
  %51 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom52 = sext i32 %51 to i64
  %52 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %52, i64 %idxprom52
  %q54 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx53, i32 0, i32 1
  %y55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q54, i32 0, i32 1
  store i32 %50, i32* %y55, align 4, !tbaa !30
  %53 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom56 = sext i32 %53 to i64
  %54 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %54, i64 %idxprom56
  %p58 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx57, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p58, i32 0, i32 1
  %55 = load i32, i32* %y59, align 4, !tbaa !28
  store i32 %55, i32* %y1, align 4, !tbaa !5
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %q60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %56, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q60, i32 0, i32 1
  store i32 %55, i32* %y61, align 4, !tbaa !30
  %57 = load i32, i32* %count, align 4, !tbaa !5
  %inc62 = add nsw i32 %57, 1
  store i32 %inc62, i32* %count, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %cond.end.42, %if.end
  %58 = load i32, i32* %x0, align 4, !tbaa !5
  %59 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %59, i32 0, i32 0
  %x65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p64, i32 0, i32 0
  %60 = load i32, i32* %x65, align 4, !tbaa !25
  %cmp66 = icmp slt i32 %58, %60
  br i1 %cmp66, label %if.then.67, label %if.end.96

if.then.67:                                       ; preds = %if.end.63
  %61 = load i32, i32* %x0, align 4, !tbaa !5
  %62 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %62, i64 0
  %p69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx68, i32 0, i32 0
  %x70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p69, i32 0, i32 0
  store i32 %61, i32* %x70, align 4, !tbaa !25
  %63 = load i32, i32* %y0, align 4, !tbaa !5
  %64 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %64, i64 0
  %p72 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx71, i32 0, i32 0
  %y73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p72, i32 0, i32 1
  store i32 %63, i32* %y73, align 4, !tbaa !28
  %65 = load i32, i32* %x1, align 4, !tbaa !5
  %66 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p74 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %66, i32 0, i32 0
  %x75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p74, i32 0, i32 0
  %67 = load i32, i32* %x75, align 4, !tbaa !25
  %cmp76 = icmp slt i32 %65, %67
  br i1 %cmp76, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.then.67
  %68 = load i32, i32* %x1, align 4, !tbaa !5
  br label %cond.end.81

cond.false.78:                                    ; preds = %if.then.67
  %69 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %p79 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %69, i32 0, i32 0
  %x80 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p79, i32 0, i32 0
  %70 = load i32, i32* %x80, align 4, !tbaa !25
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.78, %cond.true.77
  %cond82 = phi i32 [ %68, %cond.true.77 ], [ %70, %cond.false.78 ]
  %71 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %71, i64 0
  %q84 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx83, i32 0, i32 1
  %x85 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q84, i32 0, i32 0
  store i32 %cond82, i32* %x85, align 4, !tbaa !29
  %72 = load i32, i32* %y1, align 4, !tbaa !5
  %73 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %73, i64 0
  %q87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx86, i32 0, i32 1
  %y88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q87, i32 0, i32 1
  store i32 %72, i32* %y88, align 4, !tbaa !30
  %74 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom89 = sext i32 %74 to i64
  %75 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %75, i64 %idxprom89
  %q91 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx90, i32 0, i32 1
  %x92 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q91, i32 0, i32 0
  %76 = load i32, i32* %x92, align 4, !tbaa !29
  store i32 %76, i32* %x0, align 4, !tbaa !5
  %77 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %p93 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %77, i32 0, i32 0
  %x94 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p93, i32 0, i32 0
  store i32 %76, i32* %x94, align 4, !tbaa !25
  %78 = load i32, i32* %count, align 4, !tbaa !5
  %inc95 = add nsw i32 %78, 1
  store i32 %inc95, i32* %count, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %cond.end.81, %if.end.63
  %79 = load i32, i32* %x1, align 4, !tbaa !5
  %80 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q97 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %80, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q97, i32 0, i32 0
  %81 = load i32, i32* %x98, align 4, !tbaa !29
  %cmp99 = icmp sgt i32 %79, %81
  br i1 %cmp99, label %if.then.100, label %if.end.133

if.then.100:                                      ; preds = %if.end.96
  %82 = load i32, i32* %x0, align 4, !tbaa !5
  %83 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q101 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %83, i32 0, i32 1
  %x102 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q101, i32 0, i32 0
  %84 = load i32, i32* %x102, align 4, !tbaa !29
  %cmp103 = icmp sgt i32 %82, %84
  br i1 %cmp103, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %if.then.100
  %85 = load i32, i32* %x0, align 4, !tbaa !5
  br label %cond.end.108

cond.false.105:                                   ; preds = %if.then.100
  %86 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %inner.addr, align 8, !tbaa !1
  %q106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %86, i32 0, i32 1
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q106, i32 0, i32 0
  %87 = load i32, i32* %x107, align 4, !tbaa !29
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.105, %cond.true.104
  %cond109 = phi i32 [ %85, %cond.true.104 ], [ %87, %cond.false.105 ]
  %88 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom110 = sext i32 %88 to i64
  %89 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %89, i64 %idxprom110
  %p112 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx111, i32 0, i32 0
  %x113 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p112, i32 0, i32 0
  store i32 %cond109, i32* %x113, align 4, !tbaa !25
  %90 = load i32, i32* %y0, align 4, !tbaa !5
  %91 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom114 = sext i32 %91 to i64
  %92 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %92, i64 %idxprom114
  %p116 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx115, i32 0, i32 0
  %y117 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p116, i32 0, i32 1
  store i32 %90, i32* %y117, align 4, !tbaa !28
  %93 = load i32, i32* %x1, align 4, !tbaa !5
  %94 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom118 = sext i32 %94 to i64
  %95 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %95, i64 %idxprom118
  %q120 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx119, i32 0, i32 1
  %x121 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q120, i32 0, i32 0
  store i32 %93, i32* %x121, align 4, !tbaa !29
  %96 = load i32, i32* %y1, align 4, !tbaa !5
  %97 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom122 = sext i32 %97 to i64
  %98 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %98, i64 %idxprom122
  %q124 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx123, i32 0, i32 1
  %y125 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q124, i32 0, i32 1
  store i32 %96, i32* %y125, align 4, !tbaa !30
  %99 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom126 = sext i32 %99 to i64
  %100 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %diffs.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %100, i64 %idxprom126
  %p128 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %arrayidx127, i32 0, i32 0
  %x129 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p128, i32 0, i32 0
  %101 = load i32, i32* %x129, align 4, !tbaa !25
  store i32 %101, i32* %x1, align 4, !tbaa !5
  %102 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %outer.addr, align 8, !tbaa !1
  %q130 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %102, i32 0, i32 1
  %x131 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q130, i32 0, i32 0
  store i32 %101, i32* %x131, align 4, !tbaa !29
  %103 = load i32, i32* %count, align 4, !tbaa !5
  %inc132 = add nsw i32 %103, 1
  store i32 %inc132, i32* %count, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %cond.end.108, %if.end.96
  %104 = load i32, i32* %count, align 4, !tbaa !5
  %105 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret i32 %104
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind readonly }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 192}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !12, i64 104}
!11 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !12, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!12 = !{!"long", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!3, !3, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"string_match_params_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!17 = !{!16, !6, i64 4}
!18 = !{!16, !6, i64 8}
!19 = !{!16, !6, i64 12}
!20 = !{!16, !6, i64 16}
!21 = !{!22, !12, i64 0}
!22 = !{!"gs_uid_s", !12, i64 0, !2, i64 8}
!23 = !{!22, !2, i64 8}
!24 = !{!8, !2, i64 88}
!25 = !{!26, !6, i64 0}
!26 = !{!"gs_int_rect_s", !27, i64 0, !27, i64 8}
!27 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!28 = !{!26, !6, i64 4}
!29 = !{!26, !6, i64 8}
!30 = !{!26, !6, i64 12}
