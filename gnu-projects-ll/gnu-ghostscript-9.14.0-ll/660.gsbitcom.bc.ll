; ModuleID = './gsbitcom.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_log2_scale_point_s = type { i32, i32 }

@compress_tables = internal constant [4 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @compress_1_1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @compress_2_1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @compress_3_1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @compress_4_1, i32 0, i32 0)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @compress_2_2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @compress_3_2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @compress_4_2, i32 0, i32 0)], [4 x i8*] [i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @compress_4_4, i32 0, i32 0)], [4 x i8*] zeroinitializer], align 16
@half_byte_1s = internal constant [16 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04", align 16
@bits5_trailing_1s = internal constant [32 x i8] c"\00\00\00\01\00\00\00\02\00\00\00\01\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00\01\00\00\00\04", align 16
@bits5_leading_1s = internal constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\04", align 16
@compress_1_1 = internal constant [3 x i8] c"\00\01\01", align 1
@compress_2_1 = internal constant [5 x i8] c"\00\00\01\01\01", align 1
@compress_3_1 = internal constant [9 x i8] c"\00\00\00\00\01\01\01\01\01", align 1
@compress_4_1 = internal constant [17 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01", align 16
@compress_2_2 = internal constant [5 x i8] c"\00\01\02\02\03", align 1
@compress_3_2 = internal constant [9 x i8] c"\00\00\01\01\02\02\02\03\03", align 1
@compress_4_2 = internal constant [17 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\03\03\03\03", align 16
@compress_4_4 = internal constant [17 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\0A\0B\0C\0D\0E\0F", align 16

; Function Attrs: nounwind uwtable
define void @bits_compress_scaled(i8* %src, i32 %srcx, i32 %width, i32 %height, i32 %sraster, i8* %dest, i32 %draster, %struct.gs_log2_scale_point_s* %plog2_scale, i32 %log2_out_bits) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %srcx.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %draster.addr = alloca i32, align 4
  %plog2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %log2_out_bits.addr = alloca i32, align 4
  %log2_x = alloca i32, align 4
  %log2_y = alloca i32, align 4
  %xscale = alloca i32, align 4
  %yscale = alloca i32, align 4
  %out_bits = alloca i32, align 4
  %input_byte_out_bits = alloca i32, align 4
  %input_byte_out_mask = alloca i8, align 1
  %table = alloca i8*, align 8
  %sskip = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dskip = alloca i32, align 4
  %mask = alloca i32, align 4
  %count_max = alloca i32, align 4
  %srow = alloca i8*, align 8
  %in_shift_initial = alloca i32, align 4
  %in_shift_check = alloca i32, align 4
  %d = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %out_shift = alloca i32, align 4
  %out = alloca i8, align 1
  %in_shift = alloca i32, align 4
  %dw = alloca i32, align 4
  %w = alloca i32, align 4
  %index = alloca i32, align 4
  %in_shift_final = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %shift = alloca i32, align 4
  %count = alloca i32, align 4
  %orig_count = alloca i32, align 4
  %shifted_mask = alloca i32, align 4
  %in = alloca i8, align 1
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %lshift = alloca i32, align 4
  %left = alloca i32, align 4
  %bits = alloca i32, align 4
  %rshift = alloca i32, align 4
  %right = alloca i32, align 4
  %bits269 = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %srcx, i32* %srcx.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %draster, i32* %draster.addr, align 4, !tbaa !5
  store %struct.gs_log2_scale_point_s* %plog2_scale, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  store i32 %log2_out_bits, i32* %log2_out_bits.addr, align 4, !tbaa !5
  %0 = bitcast i32* %log2_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %2, i32* %log2_x, align 4, !tbaa !5
  %3 = bitcast i32* %log2_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !9
  store i32 %5, i32* %log2_y, align 4, !tbaa !5
  %6 = bitcast i32* %xscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %log2_x, align 4, !tbaa !5
  %shl = shl i32 1, %7
  store i32 %shl, i32* %xscale, align 4, !tbaa !5
  %8 = bitcast i32* %yscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %log2_y, align 4, !tbaa !5
  %shl1 = shl i32 1, %9
  store i32 %shl1, i32* %yscale, align 4, !tbaa !5
  %10 = bitcast i32* %out_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %log2_out_bits.addr, align 4, !tbaa !5
  %shl2 = shl i32 1, %11
  store i32 %shl2, i32* %out_bits, align 4, !tbaa !5
  %12 = bitcast i32* %input_byte_out_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %out_bits, align 4, !tbaa !5
  %14 = load i32, i32* %log2_x, align 4, !tbaa !5
  %sub = sub nsw i32 3, %14
  %shl3 = shl i32 %13, %sub
  store i32 %shl3, i32* %input_byte_out_bits, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %input_byte_out_mask) #1
  %15 = load i32, i32* %input_byte_out_bits, align 4, !tbaa !5
  %shl4 = shl i32 1, %15
  %sub5 = sub nsw i32 %shl4, 1
  %conv = trunc i32 %sub5 to i8
  store i8 %conv, i8* %input_byte_out_mask, align 1, !tbaa !10
  %16 = bitcast i8** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %log2_x, align 4, !tbaa !5
  %18 = load i32, i32* %log2_y, align 4, !tbaa !5
  %add = add nsw i32 %17, %18
  %sub6 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub6 to i64
  %19 = load i32, i32* %log2_out_bits.addr, align 4, !tbaa !5
  %idxprom7 = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8*]], [4 x [4 x i8*]]* @compress_tables, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [4 x i8*], [4 x i8*]* %arrayidx, i32 0, i64 %idxprom
  %20 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %20, i8** %table, align 8, !tbaa !1
  %21 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %23 = load i32, i32* %log2_y, align 4, !tbaa !5
  %shl9 = shl i32 %22, %23
  store i32 %shl9, i32* %sskip, align 4, !tbaa !5
  %24 = bitcast i32* %dwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  %26 = load i32, i32* %log2_x, align 4, !tbaa !5
  %shr = lshr i32 %25, %26
  %27 = load i32, i32* %log2_out_bits.addr, align 4, !tbaa !5
  %shl10 = shl i32 %shr, %27
  store i32 %shl10, i32* %dwidth, align 4, !tbaa !5
  %28 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %30 = load i32, i32* %dwidth, align 4, !tbaa !5
  %add11 = add i32 %30, 7
  %shr12 = lshr i32 %add11, 3
  %sub13 = sub i32 %29, %shr12
  store i32 %sub13, i32* %dskip, align 4, !tbaa !5
  %31 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %xscale, align 4, !tbaa !5
  %shl14 = shl i32 1, %32
  %sub15 = sub nsw i32 %shl14, 1
  store i32 %sub15, i32* %mask, align 4, !tbaa !5
  %33 = bitcast i32* %count_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %log2_x, align 4, !tbaa !5
  %35 = load i32, i32* %log2_y, align 4, !tbaa !5
  %add16 = add nsw i32 %34, %35
  %shl17 = shl i32 1, %add16
  store i32 %shl17, i32* %count_max, align 4, !tbaa !5
  %36 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %38 = load i32, i32* %srcx.addr, align 4, !tbaa !5
  %shr18 = ashr i32 %38, 3
  %idx.ext = sext i32 %shr18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %srow, align 8, !tbaa !1
  %39 = bitcast i32* %in_shift_initial to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %xscale, align 4, !tbaa !5
  %sub19 = sub nsw i32 8, %40
  %41 = load i32, i32* %srcx.addr, align 4, !tbaa !5
  %and = and i32 %41, 7
  %sub20 = sub nsw i32 %sub19, %and
  store i32 %sub20, i32* %in_shift_initial, align 4, !tbaa !5
  %42 = bitcast i32* %in_shift_check to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %out_bits, align 4, !tbaa !5
  %44 = load i32, i32* %xscale, align 4, !tbaa !5
  %cmp = icmp sle i32 %43, %44
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %45 = load i32, i32* %xscale, align 4, !tbaa !5
  %sub22 = sub nsw i32 8, %45
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub22, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %in_shift_check, align 4, !tbaa !5
  %46 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %47, i8** %d, align 8, !tbaa !1
  %48 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %49, i32* %h, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.343, %cond.end
  %50 = load i32, i32* %h, align 4, !tbaa !5
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %for.body, label %for.end.347

for.body:                                         ; preds = %for.cond
  %51 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %srow, align 8, !tbaa !1
  store i8* %52, i8** %s, align 8, !tbaa !1
  %53 = bitcast i32* %out_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %out_bits, align 4, !tbaa !5
  %sub23 = sub nsw i32 8, %54
  store i32 %sub23, i32* %out_shift, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %out) #1
  store i8 0, i8* %out, align 1, !tbaa !10
  %55 = bitcast i32* %in_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i32, i32* %in_shift_initial, align 4, !tbaa !5
  store i32 %56, i32* %in_shift, align 4, !tbaa !5
  %57 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %srcx.addr, align 4, !tbaa !5
  %and24 = and i32 %58, 7
  %sub25 = sub nsw i32 8, %and24
  store i32 %sub25, i32* %dw, align 4, !tbaa !5
  %59 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %60, i32* %w, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.327, %for.body
  %61 = load i32, i32* %w, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %61, 0
  br i1 %cmp27, label %for.body.29, label %for.end.329

for.body.29:                                      ; preds = %for.cond.26
  %62 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %in_shift_final to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %w, align 4, !tbaa !5
  %65 = load i32, i32* %dw, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %64, %65
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %for.body.29
  br label %cond.end.35

cond.false.33:                                    ; preds = %for.body.29
  %66 = load i32, i32* %dw, align 4, !tbaa !5
  %67 = load i32, i32* %w, align 4, !tbaa !5
  %sub34 = sub nsw i32 %66, %67
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i32 [ 0, %cond.true.32 ], [ %sub34, %cond.false.33 ]
  store i32 %cond36, i32* %in_shift_final, align 4, !tbaa !5
  %68 = load i32, i32* %in_shift, align 4, !tbaa !5
  %69 = load i32, i32* %in_shift_check, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %68, %69
  br i1 %cmp37, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %cond.end.35
  %70 = load i32, i32* %in_shift_final, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %70, 0
  br i1 %cmp39, label %if.then, label %if.end.98

if.then:                                          ; preds = %land.lhs.true
  %71 = load i8*, i8** %s, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !10
  %conv41 = zext i8 %72 to i32
  switch i32 %conv41, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %if.then
  %73 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  store i32 %73, i32* %index, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %sw.bb
  %74 = load i32, i32* %index, align 4, !tbaa !5
  %75 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp43 = icmp ne i32 %74, %75
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.42
  %76 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom46 = sext i32 %76 to i64
  %77 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %77, i64 %idxprom46
  %78 = load i8, i8* %arrayidx47, align 1, !tbaa !10
  %conv48 = zext i8 %78 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.end

if.then.51:                                       ; preds = %for.body.45
  br label %p

if.end:                                           ; preds = %for.body.45
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %79 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %80 = load i32, i32* %index, align 4, !tbaa !5
  %add52 = add i32 %80, %79
  store i32 %add52, i32* %index, align 4, !tbaa !5
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  %81 = load i32, i32* %input_byte_out_bits, align 4, !tbaa !5
  %82 = load i32, i32* %out_shift, align 4, !tbaa !5
  %sub53 = sub nsw i32 %82, %81
  store i32 %sub53, i32* %out_shift, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %sub53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.end
  %83 = load i8, i8* %out, align 1, !tbaa !10
  %84 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr, i8** %d, align 8, !tbaa !1
  store i8 %83, i8* %84, align 1, !tbaa !10
  %85 = load i32, i32* %out_shift, align 4, !tbaa !5
  %and57 = and i32 %85, 7
  store i32 %and57, i32* %out_shift, align 4, !tbaa !5
  store i8 0, i8* %out, align 1, !tbaa !10
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %for.end
  %86 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr59, i8** %s, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.60:                                         ; preds = %if.then
  %87 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  store i32 %87, i32* %index, align 4, !tbaa !5
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.72, %sw.bb.60
  %88 = load i32, i32* %index, align 4, !tbaa !5
  %89 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp62 = icmp ne i32 %88, %89
  br i1 %cmp62, label %for.body.64, label %for.end.74

for.body.64:                                      ; preds = %for.cond.61
  %90 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom65 = sext i32 %90 to i64
  %91 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %91, i64 %idxprom65
  %92 = load i8, i8* %arrayidx66, align 1, !tbaa !10
  %conv67 = zext i8 %92 to i32
  %cmp68 = icmp ne i32 %conv67, 255
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.64
  br label %p

if.end.71:                                        ; preds = %for.body.64
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %93 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %94 = load i32, i32* %index, align 4, !tbaa !5
  %add73 = add i32 %94, %93
  store i32 %add73, i32* %index, align 4, !tbaa !5
  br label %for.cond.61

for.end.74:                                       ; preds = %for.cond.61
  %95 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load i32, i32* %input_byte_out_bits, align 4, !tbaa !5
  %97 = load i32, i32* %out_shift, align 4, !tbaa !5
  %sub75 = sub nsw i32 %97, %96
  store i32 %sub75, i32* %out_shift, align 4, !tbaa !5
  %98 = load i32, i32* %out_bits, align 4, !tbaa !5
  %add76 = add nsw i32 %sub75, %98
  store i32 %add76, i32* %shift, align 4, !tbaa !5
  %99 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp77 = icmp sgt i32 %99, 0
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.end.74
  %100 = load i8, i8* %input_byte_out_mask, align 1, !tbaa !10
  %conv80 = zext i8 %100 to i32
  %101 = load i32, i32* %shift, align 4, !tbaa !5
  %shl81 = shl i32 %conv80, %101
  %102 = load i8, i8* %out, align 1, !tbaa !10
  %conv82 = zext i8 %102 to i32
  %or = or i32 %conv82, %shl81
  %conv83 = trunc i32 %or to i8
  store i8 %conv83, i8* %out, align 1, !tbaa !10
  br label %if.end.96

if.else:                                          ; preds = %for.end.74
  %103 = load i8, i8* %input_byte_out_mask, align 1, !tbaa !10
  %conv84 = zext i8 %103 to i32
  %104 = load i32, i32* %shift, align 4, !tbaa !5
  %sub85 = sub nsw i32 0, %104
  %shr86 = ashr i32 %conv84, %sub85
  %105 = load i8, i8* %out, align 1, !tbaa !10
  %conv87 = zext i8 %105 to i32
  %or88 = or i32 %conv87, %shr86
  %conv89 = trunc i32 %or88 to i8
  store i8 %conv89, i8* %out, align 1, !tbaa !10
  %106 = load i8, i8* %out, align 1, !tbaa !10
  %107 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr90, i8** %d, align 8, !tbaa !1
  store i8 %106, i8* %107, align 1, !tbaa !10
  %108 = load i32, i32* %out_shift, align 4, !tbaa !5
  %add91 = add nsw i32 %108, 8
  store i32 %add91, i32* %out_shift, align 4, !tbaa !5
  %109 = load i8, i8* %input_byte_out_mask, align 1, !tbaa !10
  %conv92 = zext i8 %109 to i32
  %110 = load i32, i32* %shift, align 4, !tbaa !5
  %add93 = add nsw i32 8, %110
  %shl94 = shl i32 %conv92, %add93
  %conv95 = trunc i32 %shl94 to i8
  store i8 %conv95, i8* %out, align 1, !tbaa !10
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.then.79
  %111 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr97, i8** %s, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.98

if.end.98:                                        ; preds = %sw.epilog, %land.lhs.true, %cond.end.35
  br label %p

p:                                                ; preds = %if.end.98, %if.then.70, %if.then.51
  br label %do.body

do.body:                                          ; preds = %do.cond.319, %p
  %113 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %count, align 4, !tbaa !5
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.112, %do.body
  %114 = load i32, i32* %index, align 4, !tbaa !5
  %115 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp100 = icmp ne i32 %114, %115
  br i1 %cmp100, label %for.body.102, label %for.end.114

for.body.102:                                     ; preds = %for.cond.99
  %116 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom103 = sext i32 %116 to i64
  %117 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %117, i64 %idxprom103
  %118 = load i8, i8* %arrayidx104, align 1, !tbaa !10
  %conv105 = zext i8 %118 to i32
  %119 = load i32, i32* %in_shift, align 4, !tbaa !5
  %shr106 = ashr i32 %conv105, %119
  %120 = load i32, i32* %mask, align 4, !tbaa !5
  %and107 = and i32 %shr106, %120
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds [16 x i8], [16 x i8]* @half_byte_1s, i32 0, i64 %idxprom108
  %121 = load i8, i8* %arrayidx109, align 1, !tbaa !10
  %conv110 = zext i8 %121 to i32
  %122 = load i32, i32* %count, align 4, !tbaa !5
  %add111 = add i32 %122, %conv110
  store i32 %add111, i32* %count, align 4, !tbaa !5
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.102
  %123 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %124 = load i32, i32* %index, align 4, !tbaa !5
  %add113 = add i32 %124, %123
  store i32 %add113, i32* %index, align 4, !tbaa !5
  br label %for.cond.99

for.end.114:                                      ; preds = %for.cond.99
  %125 = load i32, i32* %count, align 4, !tbaa !5
  %cmp115 = icmp ne i32 %125, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.304

land.lhs.true.117:                                ; preds = %for.end.114
  %126 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom118 = zext i32 %126 to i64
  %127 = load i8*, i8** %table, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %127, i64 %idxprom118
  %128 = load i8, i8* %arrayidx119, align 1, !tbaa !10
  %conv120 = zext i8 %128 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.304

if.then.123:                                      ; preds = %land.lhs.true.117
  %129 = bitcast i32* %orig_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %130, i32* %orig_count, align 4, !tbaa !5
  %131 = bitcast i32* %shifted_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load i32, i32* %mask, align 4, !tbaa !5
  %133 = load i32, i32* %in_shift, align 4, !tbaa !5
  %shl124 = shl i32 %132, %133
  store i32 %shl124, i32* %shifted_mask, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %in) #1
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.123
  br label %do.cond

do.cond:                                          ; preds = %do.body.125
  br label %do.end

do.end:                                           ; preds = %do.cond
  %134 = load i32, i32* %yscale, align 4, !tbaa !5
  %cmp126 = icmp sgt i32 %134, 1
  br i1 %cmp126, label %if.then.128, label %if.end.218

if.then.128:                                      ; preds = %do.end
  %135 = load i32, i32* %h, align 4, !tbaa !5
  %136 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp129 = icmp ult i32 %135, %136
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.170

land.lhs.true.131:                                ; preds = %if.then.128
  %137 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx132, align 1, !tbaa !10
  %conv133 = zext i8 %138 to i32
  %139 = load i32, i32* %shifted_mask, align 4, !tbaa !5
  %and134 = and i32 %conv133, %139
  %conv135 = trunc i32 %and134 to i8
  store i8 %conv135, i8* %in, align 1, !tbaa !10
  %conv136 = zext i8 %conv135 to i32
  %cmp137 = icmp ne i32 %conv136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.170

if.then.139:                                      ; preds = %land.lhs.true.131
  %140 = bitcast i32* %lower to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %lower, align 4, !tbaa !5
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.body.154, %if.then.139
  %141 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %142 = load i32, i32* %index, align 4, !tbaa !5
  %sub141 = sub i32 %142, %141
  store i32 %sub141, i32* %index, align 4, !tbaa !5
  %sub142 = sub nsw i32 0, %sub141
  %143 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp143 = icmp ule i32 %sub142, %143
  br i1 %cmp143, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.140
  %144 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom145 = sext i32 %144 to i64
  %145 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i8, i8* %145, i64 %idxprom145
  %146 = load i8, i8* %arrayidx146, align 1, !tbaa !10
  %conv147 = zext i8 %146 to i32
  %147 = load i8, i8* %in, align 1, !tbaa !10
  %conv148 = zext i8 %147 to i32
  %and149 = and i32 %conv148, %conv147
  %conv150 = trunc i32 %and149 to i8
  store i8 %conv150, i8* %in, align 1, !tbaa !10
  %conv151 = zext i8 %conv150 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.140
  %148 = phi i1 [ false, %for.cond.140 ], [ %cmp152, %land.rhs ]
  br i1 %148, label %for.body.154, label %for.end.161

for.body.154:                                     ; preds = %land.end
  %149 = load i8, i8* %in, align 1, !tbaa !10
  %conv155 = zext i8 %149 to i32
  %150 = load i32, i32* %in_shift, align 4, !tbaa !5
  %shr156 = ashr i32 %conv155, %150
  %idxprom157 = sext i32 %shr156 to i64
  %arrayidx158 = getelementptr inbounds [16 x i8], [16 x i8]* @half_byte_1s, i32 0, i64 %idxprom157
  %151 = load i8, i8* %arrayidx158, align 1, !tbaa !10
  %conv159 = zext i8 %151 to i32
  %152 = load i32, i32* %lower, align 4, !tbaa !5
  %add160 = add i32 %152, %conv159
  store i32 %add160, i32* %lower, align 4, !tbaa !5
  br label %for.cond.140

for.end.161:                                      ; preds = %land.end
  br label %do.body.162

do.body.162:                                      ; preds = %for.end.161
  br label %do.cond.163

do.cond.163:                                      ; preds = %do.body.162
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  %153 = load i32, i32* %lower, align 4, !tbaa !5
  %154 = load i32, i32* %orig_count, align 4, !tbaa !5
  %cmp165 = icmp ule i32 %153, %154
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %do.end.164
  %155 = load i32, i32* %lower, align 4, !tbaa !5
  %156 = load i32, i32* %count, align 4, !tbaa !5
  %add168 = add i32 %156, %155
  store i32 %add168, i32* %count, align 4, !tbaa !5
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %do.end.164
  %157 = bitcast i32* %lower to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %land.lhs.true.131, %if.then.128
  %158 = load i32, i32* %h, align 4, !tbaa !5
  %159 = load i32, i32* %yscale, align 4, !tbaa !5
  %cmp171 = icmp ugt i32 %158, %159
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.217

land.lhs.true.173:                                ; preds = %if.end.170
  %160 = load i32, i32* %sskip, align 4, !tbaa !5
  %161 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %sub174 = sub i32 %160, %161
  %idxprom175 = zext i32 %sub174 to i64
  %162 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %162, i64 %idxprom175
  %163 = load i8, i8* %arrayidx176, align 1, !tbaa !10
  %conv177 = zext i8 %163 to i32
  %164 = load i32, i32* %shifted_mask, align 4, !tbaa !5
  %and178 = and i32 %conv177, %164
  %conv179 = trunc i32 %and178 to i8
  store i8 %conv179, i8* %in, align 1, !tbaa !10
  %conv180 = zext i8 %conv179 to i32
  %cmp181 = icmp ne i32 %conv180, 0
  br i1 %cmp181, label %if.then.183, label %if.end.217

if.then.183:                                      ; preds = %land.lhs.true.173
  %165 = bitcast i32* %upper to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  %166 = load i32, i32* %sskip, align 4, !tbaa !5
  store i32 %166, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %upper, align 4, !tbaa !5
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.206, %if.then.183
  %167 = load i32, i32* %index, align 4, !tbaa !5
  %168 = load i32, i32* %sskip, align 4, !tbaa !5
  %shl185 = shl i32 %168, 1
  %cmp186 = icmp ult i32 %167, %shl185
  br i1 %cmp186, label %land.rhs.188, label %land.end.198

land.rhs.188:                                     ; preds = %for.cond.184
  %169 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom189 = sext i32 %169 to i64
  %170 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %170, i64 %idxprom189
  %171 = load i8, i8* %arrayidx190, align 1, !tbaa !10
  %conv191 = zext i8 %171 to i32
  %172 = load i8, i8* %in, align 1, !tbaa !10
  %conv192 = zext i8 %172 to i32
  %and193 = and i32 %conv192, %conv191
  %conv194 = trunc i32 %and193 to i8
  store i8 %conv194, i8* %in, align 1, !tbaa !10
  %conv195 = zext i8 %conv194 to i32
  %cmp196 = icmp ne i32 %conv195, 0
  br label %land.end.198

land.end.198:                                     ; preds = %land.rhs.188, %for.cond.184
  %173 = phi i1 [ false, %for.cond.184 ], [ %cmp196, %land.rhs.188 ]
  br i1 %173, label %for.body.199, label %for.end.208

for.body.199:                                     ; preds = %land.end.198
  %174 = load i8, i8* %in, align 1, !tbaa !10
  %conv200 = zext i8 %174 to i32
  %175 = load i32, i32* %in_shift, align 4, !tbaa !5
  %shr201 = ashr i32 %conv200, %175
  %idxprom202 = sext i32 %shr201 to i64
  %arrayidx203 = getelementptr inbounds [16 x i8], [16 x i8]* @half_byte_1s, i32 0, i64 %idxprom202
  %176 = load i8, i8* %arrayidx203, align 1, !tbaa !10
  %conv204 = zext i8 %176 to i32
  %177 = load i32, i32* %upper, align 4, !tbaa !5
  %add205 = add i32 %177, %conv204
  store i32 %add205, i32* %upper, align 4, !tbaa !5
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.199
  %178 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %179 = load i32, i32* %index, align 4, !tbaa !5
  %add207 = add i32 %179, %178
  store i32 %add207, i32* %index, align 4, !tbaa !5
  br label %for.cond.184

for.end.208:                                      ; preds = %land.end.198
  br label %do.body.209

do.body.209:                                      ; preds = %for.end.208
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.body.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %180 = load i32, i32* %upper, align 4, !tbaa !5
  %181 = load i32, i32* %orig_count, align 4, !tbaa !5
  %cmp212 = icmp ult i32 %180, %181
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %do.end.211
  %182 = load i32, i32* %upper, align 4, !tbaa !5
  %183 = load i32, i32* %count, align 4, !tbaa !5
  %add215 = add i32 %183, %182
  store i32 %add215, i32* %count, align 4, !tbaa !5
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %do.end.211
  %184 = bitcast i32* %upper to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %land.lhs.true.173, %if.end.170
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %do.end
  %185 = load i32, i32* %xscale, align 4, !tbaa !5
  %cmp219 = icmp sgt i32 %185, 1
  br i1 %cmp219, label %if.then.221, label %if.end.299

if.then.221:                                      ; preds = %if.end.218
  %186 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load i32, i32* %mask, align 4, !tbaa !5
  %shl222 = shl i32 %187, 1
  %add223 = add i32 %shl222, 1
  store i32 %add223, i32* %mask1, align 4, !tbaa !5
  %188 = load i32, i32* %w, align 4, !tbaa !5
  %189 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp224 = icmp ult i32 %188, %189
  br i1 %cmp224, label %if.then.226, label %if.end.259

if.then.226:                                      ; preds = %if.then.221
  %190 = bitcast i32* %lshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %in_shift, align 4, !tbaa !5
  %192 = load i32, i32* %xscale, align 4, !tbaa !5
  %add227 = add nsw i32 %191, %192
  %sub228 = sub nsw i32 %add227, 1
  store i32 %sub228, i32* %lshift, align 4, !tbaa !5
  %193 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %left, align 4, !tbaa !5
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.248, %if.then.226
  %194 = load i32, i32* %index, align 4, !tbaa !5
  %195 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp230 = icmp ult i32 %194, %195
  br i1 %cmp230, label %for.body.232, label %for.end.250

for.body.232:                                     ; preds = %for.cond.229
  %196 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  %197 = load i32, i32* %index, align 4, !tbaa !5
  %sub233 = sub nsw i32 %197, 1
  %idxprom234 = sext i32 %sub233 to i64
  %198 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %198, i64 %idxprom234
  %199 = load i8, i8* %arrayidx235, align 1, !tbaa !10
  %conv236 = zext i8 %199 to i32
  %shl237 = shl i32 %conv236, 8
  %200 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom238 = sext i32 %200 to i64
  %201 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i8, i8* %201, i64 %idxprom238
  %202 = load i8, i8* %arrayidx239, align 1, !tbaa !10
  %conv240 = zext i8 %202 to i32
  %add241 = add nsw i32 %shl237, %conv240
  %203 = load i32, i32* %lshift, align 4, !tbaa !5
  %shr242 = ashr i32 %add241, %203
  store i32 %shr242, i32* %bits, align 4, !tbaa !5
  %204 = load i32, i32* %bits, align 4, !tbaa !5
  %205 = load i32, i32* %mask1, align 4, !tbaa !5
  %and243 = and i32 %204, %205
  %idxprom244 = zext i32 %and243 to i64
  %arrayidx245 = getelementptr inbounds [32 x i8], [32 x i8]* @bits5_trailing_1s, i32 0, i64 %idxprom244
  %206 = load i8, i8* %arrayidx245, align 1, !tbaa !10
  %conv246 = zext i8 %206 to i32
  %207 = load i32, i32* %left, align 4, !tbaa !5
  %add247 = add i32 %207, %conv246
  store i32 %add247, i32* %left, align 4, !tbaa !5
  %208 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.232
  %209 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %210 = load i32, i32* %index, align 4, !tbaa !5
  %add249 = add i32 %210, %209
  store i32 %add249, i32* %index, align 4, !tbaa !5
  br label %for.cond.229

for.end.250:                                      ; preds = %for.cond.229
  br label %do.body.251

do.body.251:                                      ; preds = %for.end.250
  br label %do.cond.252

do.cond.252:                                      ; preds = %do.body.251
  br label %do.end.253

do.end.253:                                       ; preds = %do.cond.252
  %211 = load i32, i32* %left, align 4, !tbaa !5
  %212 = load i32, i32* %orig_count, align 4, !tbaa !5
  %cmp254 = icmp ult i32 %211, %212
  br i1 %cmp254, label %if.then.256, label %if.end.258

if.then.256:                                      ; preds = %do.end.253
  %213 = load i32, i32* %left, align 4, !tbaa !5
  %214 = load i32, i32* %count, align 4, !tbaa !5
  %add257 = add i32 %214, %213
  store i32 %add257, i32* %count, align 4, !tbaa !5
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %do.end.253
  %215 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %lshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.221
  %217 = load i32, i32* %w, align 4, !tbaa !5
  %218 = load i32, i32* %xscale, align 4, !tbaa !5
  %cmp260 = icmp sgt i32 %217, %218
  br i1 %cmp260, label %if.then.262, label %if.end.298

if.then.262:                                      ; preds = %if.end.259
  %219 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  %220 = load i32, i32* %in_shift, align 4, !tbaa !5
  %221 = load i32, i32* %xscale, align 4, !tbaa !5
  %sub263 = sub nsw i32 %220, %221
  %add264 = add nsw i32 %sub263, 8
  store i32 %add264, i32* %rshift, align 4, !tbaa !5
  %222 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  store i32 0, i32* %index, align 4, !tbaa !5
  store i32 0, i32* %right, align 4, !tbaa !5
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.287, %if.then.262
  %223 = load i32, i32* %index, align 4, !tbaa !5
  %224 = load i32, i32* %sskip, align 4, !tbaa !5
  %cmp266 = icmp ult i32 %223, %224
  br i1 %cmp266, label %for.body.268, label %for.end.289

for.body.268:                                     ; preds = %for.cond.265
  %225 = bitcast i32* %bits269 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  %226 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom270 = sext i32 %226 to i64
  %227 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %227, i64 %idxprom270
  %228 = load i8, i8* %arrayidx271, align 1, !tbaa !10
  %conv272 = zext i8 %228 to i32
  %shl273 = shl i32 %conv272, 8
  %229 = load i32, i32* %index, align 4, !tbaa !5
  %add274 = add nsw i32 %229, 1
  %idxprom275 = sext i32 %add274 to i64
  %230 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i8, i8* %230, i64 %idxprom275
  %231 = load i8, i8* %arrayidx276, align 1, !tbaa !10
  %conv277 = zext i8 %231 to i32
  %add278 = add nsw i32 %shl273, %conv277
  %232 = load i32, i32* %rshift, align 4, !tbaa !5
  %shr279 = ashr i32 %add278, %232
  store i32 %shr279, i32* %bits269, align 4, !tbaa !5
  %233 = load i32, i32* %bits269, align 4, !tbaa !5
  %234 = load i32, i32* %mask1, align 4, !tbaa !5
  %and280 = and i32 %233, %234
  %235 = load i32, i32* %xscale, align 4, !tbaa !5
  %sub281 = sub nsw i32 4, %235
  %shl282 = shl i32 %and280, %sub281
  %idxprom283 = zext i32 %shl282 to i64
  %arrayidx284 = getelementptr inbounds [32 x i8], [32 x i8]* @bits5_leading_1s, i32 0, i64 %idxprom283
  %236 = load i8, i8* %arrayidx284, align 1, !tbaa !10
  %conv285 = zext i8 %236 to i32
  %237 = load i32, i32* %right, align 4, !tbaa !5
  %add286 = add i32 %237, %conv285
  store i32 %add286, i32* %right, align 4, !tbaa !5
  %238 = bitcast i32* %bits269 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.body.268
  %239 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %240 = load i32, i32* %index, align 4, !tbaa !5
  %add288 = add i32 %240, %239
  store i32 %add288, i32* %index, align 4, !tbaa !5
  br label %for.cond.265

for.end.289:                                      ; preds = %for.cond.265
  br label %do.body.290

do.body.290:                                      ; preds = %for.end.289
  br label %do.cond.291

do.cond.291:                                      ; preds = %do.body.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  %241 = load i32, i32* %right, align 4, !tbaa !5
  %242 = load i32, i32* %orig_count, align 4, !tbaa !5
  %cmp293 = icmp ule i32 %241, %242
  br i1 %cmp293, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %do.end.292
  %243 = load i32, i32* %right, align 4, !tbaa !5
  %244 = load i32, i32* %count, align 4, !tbaa !5
  %add296 = add i32 %244, %243
  store i32 %add296, i32* %count, align 4, !tbaa !5
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %do.end.292
  %245 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %rshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end.259
  %247 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.218
  %248 = load i32, i32* %count, align 4, !tbaa !5
  %249 = load i32, i32* %count_max, align 4, !tbaa !5
  %cmp300 = icmp ugt i32 %248, %249
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.299
  %250 = load i32, i32* %count_max, align 4, !tbaa !5
  store i32 %250, i32* %count, align 4, !tbaa !5
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.end.299
  call void @llvm.lifetime.end(i64 1, i8* %in) #1
  %251 = bitcast i32* %shifted_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast i32* %orig_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %land.lhs.true.117, %for.end.114
  %253 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom305 = zext i32 %253 to i64
  %254 = load i8*, i8** %table, align 8, !tbaa !1
  %arrayidx306 = getelementptr inbounds i8, i8* %254, i64 %idxprom305
  %255 = load i8, i8* %arrayidx306, align 1, !tbaa !10
  %conv307 = zext i8 %255 to i32
  %256 = load i32, i32* %out_shift, align 4, !tbaa !5
  %shl308 = shl i32 %conv307, %256
  %257 = load i8, i8* %out, align 1, !tbaa !10
  %conv309 = zext i8 %257 to i32
  %add310 = add nsw i32 %conv309, %shl308
  %conv311 = trunc i32 %add310 to i8
  store i8 %conv311, i8* %out, align 1, !tbaa !10
  %258 = load i32, i32* %out_bits, align 4, !tbaa !5
  %259 = load i32, i32* %out_shift, align 4, !tbaa !5
  %sub312 = sub nsw i32 %259, %258
  store i32 %sub312, i32* %out_shift, align 4, !tbaa !5
  %cmp313 = icmp slt i32 %sub312, 0
  br i1 %cmp313, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %if.end.304
  %260 = load i8, i8* %out, align 1, !tbaa !10
  %261 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr316 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr316, i8** %d, align 8, !tbaa !1
  store i8 %260, i8* %261, align 1, !tbaa !10
  %262 = load i32, i32* %out_shift, align 4, !tbaa !5
  %and317 = and i32 %262, 7
  store i32 %and317, i32* %out_shift, align 4, !tbaa !5
  store i8 0, i8* %out, align 1, !tbaa !10
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.315, %if.end.304
  %263 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  br label %do.cond.319

do.cond.319:                                      ; preds = %if.end.318
  %264 = load i32, i32* %xscale, align 4, !tbaa !5
  %265 = load i32, i32* %in_shift, align 4, !tbaa !5
  %sub320 = sub nsw i32 %265, %264
  store i32 %sub320, i32* %in_shift, align 4, !tbaa !5
  %266 = load i32, i32* %in_shift_final, align 4, !tbaa !5
  %cmp321 = icmp sge i32 %sub320, %266
  br i1 %cmp321, label %do.body, label %do.end.323

do.end.323:                                       ; preds = %do.cond.319
  %267 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr324 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr324, i8** %s, align 8, !tbaa !1
  %268 = load i32, i32* %in_shift, align 4, !tbaa !5
  %add325 = add nsw i32 %268, 8
  store i32 %add325, i32* %in_shift, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.323, %if.end.96, %if.end.58
  %269 = bitcast i32* %in_shift_final to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.327
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.327

for.inc.327:                                      ; preds = %cleanup.cont, %cleanup
  %271 = load i32, i32* %dw, align 4, !tbaa !5
  %272 = load i32, i32* %w, align 4, !tbaa !5
  %sub328 = sub nsw i32 %272, %271
  store i32 %sub328, i32* %w, align 4, !tbaa !5
  store i32 8, i32* %dw, align 4, !tbaa !5
  br label %for.cond.26

for.end.329:                                      ; preds = %for.cond.26
  %273 = load i32, i32* %out_shift, align 4, !tbaa !5
  %274 = load i32, i32* %out_bits, align 4, !tbaa !5
  %sub330 = sub nsw i32 8, %274
  %cmp331 = icmp ne i32 %273, %sub330
  br i1 %cmp331, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %for.end.329
  %275 = load i8, i8* %out, align 1, !tbaa !10
  %276 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr334 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr334, i8** %d, align 8, !tbaa !1
  store i8 %275, i8* %276, align 1, !tbaa !10
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %for.end.329
  %277 = load i32, i32* %dskip, align 4, !tbaa !5
  store i32 %277, i32* %w, align 4, !tbaa !5
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.341, %if.end.335
  %278 = load i32, i32* %w, align 4, !tbaa !5
  %cmp337 = icmp ne i32 %278, 0
  br i1 %cmp337, label %for.body.339, label %for.end.342

for.body.339:                                     ; preds = %for.cond.336
  %279 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr340 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr340, i8** %d, align 8, !tbaa !1
  store i8 0, i8* %279, align 1, !tbaa !10
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.body.339
  %280 = load i32, i32* %w, align 4, !tbaa !5
  %dec = add nsw i32 %280, -1
  store i32 %dec, i32* %w, align 4, !tbaa !5
  br label %for.cond.336

for.end.342:                                      ; preds = %for.cond.336
  %281 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %dw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %in_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  call void @llvm.lifetime.end(i64 1, i8* %out) #1
  %284 = bitcast i32* %out_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  br label %for.inc.343

for.inc.343:                                      ; preds = %for.end.342
  %286 = load i32, i32* %sskip, align 4, !tbaa !5
  %287 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext344 = zext i32 %286 to i64
  %add.ptr345 = getelementptr inbounds i8, i8* %287, i64 %idx.ext344
  store i8* %add.ptr345, i8** %srow, align 8, !tbaa !1
  %288 = load i32, i32* %yscale, align 4, !tbaa !5
  %289 = load i32, i32* %h, align 4, !tbaa !5
  %sub346 = sub i32 %289, %288
  store i32 %sub346, i32* %h, align 4, !tbaa !5
  br label %for.cond

for.end.347:                                      ; preds = %for.cond
  %290 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32* %in_shift_check to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %in_shift_initial to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i32* %count_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %dwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i8** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  call void @llvm.lifetime.end(i64 1, i8* %input_byte_out_mask) #1
  %301 = bitcast i32* %input_byte_out_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %out_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %yscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %xscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %log2_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %log2_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!9 = !{!8, !6, i64 4}
!10 = !{!3, !3, i64 0}
