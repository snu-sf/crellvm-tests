; ModuleID = './MultiSource.Benchmarks.MallocBench/99.gs.zarith.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external global %struct.ref_s*, align 8
@zarith_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zadd }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zceiling }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zdiv }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zidiv }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zfloor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zmod }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zmul }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zneg }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zround }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsub }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztruncate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1ceiling\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2div\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"2idiv\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1floor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2mod\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2mul\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1neg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"1round\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1truncate\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zadd(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %int2 = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.22
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  switch i32 %shr4, label %sw.default.5 [
    i32 11, label %sw.bb.6
    i32 5, label %sw.bb.10
  ]

sw.default.5:                                     ; preds = %sw.bb
  store i32 -20, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %5 = load float, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 0
  %realval9 = bitcast %union.v* %value8 to float*
  %7 = load float, float* %realval9, align 4
  %add = fadd float %7, %5
  store float %add, float* %realval9, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 0
  %intval = bitcast %union.v* %value12 to i64*
  %9 = load i64, i64* %intval, align 8
  %conv13 = sitofp i64 %9 to float
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval15 = bitcast %union.v* %value14 to float*
  %11 = load float, float* %realval15, align 4
  %add16 = fadd float %conv13, %11
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %realval19 = bitcast %union.v* %value18 to float*
  store float %add16, float* %realval19, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  store i16 44, i16* %type_attrs21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.6
  br label %sw.epilog.63

sw.bb.22:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 1
  %15 = load i16, i16* %type_attrs24, align 2
  %conv25 = zext i16 %15 to i32
  %and26 = and i32 %conv25, 255
  %shr27 = ashr i32 %and26, 2
  switch i32 %shr27, label %sw.default.28 [
    i32 11, label %sw.bb.29
    i32 5, label %sw.bb.37
  ]

sw.default.28:                                    ; preds = %sw.bb.22
  store i32 -20, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %sw.bb.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval31 = bitcast %union.v* %value30 to i64*
  %17 = load i64, i64* %intval31, align 8
  %conv32 = sitofp i64 %17 to float
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %realval35 = bitcast %union.v* %value34 to float*
  %19 = load float, float* %realval35, align 4
  %add36 = fadd float %19, %conv32
  store float %add36, float* %realval35, align 4
  br label %sw.epilog.62

sw.bb.37:                                         ; preds = %sw.bb.22
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %intval39 = bitcast %union.v* %value38 to i64*
  %21 = load i64, i64* %intval39, align 8
  store i64 %21, i64* %int2, align 8
  %22 = load i64, i64* %int2, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %24 = load i64, i64* %intval42, align 8
  %add43 = add nsw i64 %24, %22
  store i64 %add43, i64* %intval42, align 8
  %25 = load i64, i64* %int2, align 8
  %xor = xor i64 %add43, %25
  %cmp = icmp slt i64 %xor, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.37
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %intval47 = bitcast %union.v* %value46 to i64*
  %27 = load i64, i64* %intval47, align 8
  %28 = load i64, i64* %int2, align 8
  %sub = sub nsw i64 %27, %28
  %29 = load i64, i64* %int2, align 8
  %xor48 = xor i64 %sub, %29
  %cmp49 = icmp sge i64 %xor48, 0
  br i1 %cmp49, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr51, i32 0, i32 0
  %intval53 = bitcast %union.v* %value52 to i64*
  %31 = load i64, i64* %intval53, align 8
  %conv54 = sitofp i64 %31 to float
  %32 = load i64, i64* %int2, align 8
  %conv55 = sitofp i64 %32 to float
  %sub56 = fsub float %conv54, %conv55
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr57, i32 0, i32 0
  %realval59 = bitcast %union.v* %value58 to float*
  store float %sub56, float* %realval59, align 4
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %type_attrs61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 1
  store i16 44, i16* %type_attrs61, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.37
  br label %sw.epilog.62

sw.epilog.62:                                     ; preds = %if.end, %sw.bb.29
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %sw.epilog.62, %sw.epilog
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %add.ptr64, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.63, %sw.default.28, %sw.default.5, %sw.default
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @zdiv(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.21
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %4 = load float, float* %realval, align 4
  %cmp = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -23, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %6 to i32
  %and4 = and i32 %conv3, 255
  %shr5 = ashr i32 %and4, 2
  switch i32 %shr5, label %sw.default.6 [
    i32 11, label %sw.bb.7
    i32 5, label %sw.bb.12
  ]

sw.default.6:                                     ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %realval9 = bitcast %union.v* %value8 to float*
  %8 = load float, float* %realval9, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %realval11 = bitcast %union.v* %value10 to float*
  %10 = load float, float* %realval11, align 4
  %div = fdiv float %10, %8
  store float %div, float* %realval11, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval = bitcast %union.v* %value13 to i64*
  %12 = load i64, i64* %intval, align 8
  %conv14 = sitofp i64 %12 to float
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %realval16 = bitcast %union.v* %value15 to float*
  %14 = load float, float* %realval16, align 4
  %div17 = fdiv float %conv14, %14
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %realval19 = bitcast %union.v* %value18 to float*
  store float %div17, float* %realval19, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 44, i16* %type_attrs20, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.12, %sw.bb.7
  br label %sw.epilog.52

sw.bb.21:                                         ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %intval23 = bitcast %union.v* %value22 to i64*
  %18 = load i64, i64* %intval23, align 8
  %cmp24 = icmp eq i64 %18, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.21
  store i32 -23, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.21
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %20 = load i16, i16* %type_attrs28, align 2
  %conv29 = zext i16 %20 to i32
  %and30 = and i32 %conv29, 255
  %shr31 = ashr i32 %and30, 2
  switch i32 %shr31, label %sw.default.32 [
    i32 11, label %sw.bb.33
    i32 5, label %sw.bb.40
  ]

sw.default.32:                                    ; preds = %if.end.27
  store i32 -20, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %if.end.27
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %intval35 = bitcast %union.v* %value34 to i64*
  %22 = load i64, i64* %intval35, align 8
  %conv36 = sitofp i64 %22 to float
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %realval38 = bitcast %union.v* %value37 to float*
  %24 = load float, float* %realval38, align 4
  %div39 = fdiv float %24, %conv36
  store float %div39, float* %realval38, align 4
  br label %sw.epilog.51

sw.bb.40:                                         ; preds = %if.end.27
  %25 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %26 = load i64, i64* %intval42, align 8
  %conv43 = sitofp i64 %26 to float
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %intval45 = bitcast %union.v* %value44 to i64*
  %28 = load i64, i64* %intval45, align 8
  %conv46 = sitofp i64 %28 to float
  %div47 = fdiv float %conv43, %conv46
  %29 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %realval49 = bitcast %union.v* %value48 to float*
  store float %div47, float* %realval49, align 4
  %30 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 44, i16* %type_attrs50, align 2
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.bb.40, %sw.bb.33
  br label %sw.epilog.52

sw.epilog.52:                                     ; preds = %sw.epilog.51, %sw.epilog
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %add.ptr53, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.52, %sw.default.32, %if.then.26, %sw.default.6, %if.then, %sw.default
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @zmul(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %int1 = alloca i64, align 8
  %int2 = alloca i64, align 8
  %abs1 = alloca i64, align 8
  %abs2 = alloca i64, align 8
  %fprod = alloca float, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.22
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  switch i32 %shr4, label %sw.default.5 [
    i32 11, label %sw.bb.6
    i32 5, label %sw.bb.10
  ]

sw.default.5:                                     ; preds = %sw.bb
  store i32 -20, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %5 = load float, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 0
  %realval9 = bitcast %union.v* %value8 to float*
  %7 = load float, float* %realval9, align 4
  %mul = fmul float %7, %5
  store float %mul, float* %realval9, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 0
  %intval = bitcast %union.v* %value12 to i64*
  %9 = load i64, i64* %intval, align 8
  %conv13 = sitofp i64 %9 to float
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval15 = bitcast %union.v* %value14 to float*
  %11 = load float, float* %realval15, align 4
  %mul16 = fmul float %conv13, %11
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %realval19 = bitcast %union.v* %value18 to float*
  store float %mul16, float* %realval19, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  store i16 44, i16* %type_attrs21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.6
  br label %sw.epilog.79

sw.bb.22:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 1
  %15 = load i16, i16* %type_attrs24, align 2
  %conv25 = zext i16 %15 to i32
  %and26 = and i32 %conv25, 255
  %shr27 = ashr i32 %and26, 2
  switch i32 %shr27, label %sw.default.28 [
    i32 11, label %sw.bb.29
    i32 5, label %sw.bb.37
  ]

sw.default.28:                                    ; preds = %sw.bb.22
  store i32 -20, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %sw.bb.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval31 = bitcast %union.v* %value30 to i64*
  %17 = load i64, i64* %intval31, align 8
  %conv32 = sitofp i64 %17 to float
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %realval35 = bitcast %union.v* %value34 to float*
  %19 = load float, float* %realval35, align 4
  %mul36 = fmul float %19, %conv32
  store float %mul36, float* %realval35, align 4
  br label %sw.epilog.78

sw.bb.37:                                         ; preds = %sw.bb.22
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %intval40 = bitcast %union.v* %value39 to i64*
  %21 = load i64, i64* %intval40, align 8
  store i64 %21, i64* %int1, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %23 = load i64, i64* %intval42, align 8
  store i64 %23, i64* %int2, align 8
  %24 = load i64, i64* %int1, align 8
  %cmp = icmp sge i64 %24, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.37
  %25 = load i64, i64* %int1, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.37
  %26 = load i64, i64* %int1, align 8
  %sub = sub nsw i64 0, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %abs1, align 8
  %27 = load i64, i64* %int2, align 8
  %cmp44 = icmp sge i64 %27, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end
  %28 = load i64, i64* %int2, align 8
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.end
  %29 = load i64, i64* %int2, align 8
  %sub48 = sub nsw i64 0, %29
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i64 [ %28, %cond.true.46 ], [ %sub48, %cond.false.47 ]
  store i64 %cond50, i64* %abs2, align 8
  %30 = load i64, i64* %abs1, align 8
  %cmp51 = icmp sgt i64 %30, 32767
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.49
  %31 = load i64, i64* %abs2, align 8
  %cmp53 = icmp sgt i64 %31, 32767
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.end.49
  %32 = load i64, i64* %abs1, align 8
  %cmp55 = icmp ne i64 %32, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.else

land.lhs.true.57:                                 ; preds = %land.lhs.true
  %33 = load i64, i64* %abs2, align 8
  %34 = load i64, i64* %abs1, align 8
  %div = sdiv i64 2147483647, %34
  %cmp58 = icmp sgt i64 %33, %div
  br i1 %cmp58, label %land.lhs.true.60, label %if.else

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %35 = load i64, i64* %int1, align 8
  %conv61 = sitofp i64 %35 to float
  %36 = load i64, i64* %int2, align 8
  %conv62 = sitofp i64 %36 to float
  %mul63 = fmul float %conv61, %conv62
  store float %mul63, float* %fprod, align 4
  %37 = load i64, i64* %int1, align 8
  %38 = load i64, i64* %int2, align 8
  %mul64 = mul nsw i64 %37, %38
  %cmp65 = icmp ne i64 %mul64, -2147483648
  br i1 %cmp65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.60
  %39 = load float, float* %fprod, align 4
  %cmp67 = fcmp une float %39, 0xC1E0000000000000
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.60
  %40 = phi i1 [ true, %land.lhs.true.60 ], [ %cmp67, %lor.rhs ]
  br i1 %40, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %41 = load float, float* %fprod, align 4
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %realval71 = bitcast %union.v* %value70 to float*
  store float %41, float* %realval71, align 4
  %43 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %type_attrs73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 1
  store i16 44, i16* %type_attrs73, align 2
  br label %if.end

if.else:                                          ; preds = %lor.end, %land.lhs.true.57, %land.lhs.true, %lor.lhs.false
  %44 = load i64, i64* %int1, align 8
  %45 = load i64, i64* %int2, align 8
  %mul74 = mul nsw i64 %44, %45
  %46 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %value76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr75, i32 0, i32 0
  %intval77 = bitcast %union.v* %value76 to i64*
  store i64 %mul74, i64* %intval77, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %if.end, %sw.bb.29
  br label %sw.epilog.79

sw.epilog.79:                                     ; preds = %sw.epilog.78, %sw.epilog
  %47 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  store %struct.ref_s* %add.ptr80, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.79, %sw.default.28, %sw.default.5, %sw.default
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @zsub(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %int1 = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.22
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  switch i32 %shr4, label %sw.default.5 [
    i32 11, label %sw.bb.6
    i32 5, label %sw.bb.10
  ]

sw.default.5:                                     ; preds = %sw.bb
  store i32 -20, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %5 = load float, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 0
  %realval9 = bitcast %union.v* %value8 to float*
  %7 = load float, float* %realval9, align 4
  %sub = fsub float %7, %5
  store float %sub, float* %realval9, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 0
  %intval = bitcast %union.v* %value12 to i64*
  %9 = load i64, i64* %intval, align 8
  %conv13 = sitofp i64 %9 to float
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval15 = bitcast %union.v* %value14 to float*
  %11 = load float, float* %realval15, align 4
  %sub16 = fsub float %conv13, %11
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %realval19 = bitcast %union.v* %value18 to float*
  store float %sub16, float* %realval19, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 1
  store i16 44, i16* %type_attrs21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.6
  br label %sw.epilog.64

sw.bb.22:                                         ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 1
  %15 = load i16, i16* %type_attrs24, align 2
  %conv25 = zext i16 %15 to i32
  %and26 = and i32 %conv25, 255
  %shr27 = ashr i32 %and26, 2
  switch i32 %shr27, label %sw.default.28 [
    i32 11, label %sw.bb.29
    i32 5, label %sw.bb.37
  ]

sw.default.28:                                    ; preds = %sw.bb.22
  store i32 -20, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %sw.bb.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval31 = bitcast %union.v* %value30 to i64*
  %17 = load i64, i64* %intval31, align 8
  %conv32 = sitofp i64 %17 to float
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 0
  %realval35 = bitcast %union.v* %value34 to float*
  %19 = load float, float* %realval35, align 4
  %sub36 = fsub float %19, %conv32
  store float %sub36, float* %realval35, align 4
  br label %sw.epilog.63

sw.bb.37:                                         ; preds = %sw.bb.22
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %intval40 = bitcast %union.v* %value39 to i64*
  %21 = load i64, i64* %intval40, align 8
  store i64 %21, i64* %int1, align 8
  %22 = load i64, i64* %int1, align 8
  %23 = load i64, i64* %int1, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %25 = load i64, i64* %intval42, align 8
  %sub43 = sub nsw i64 %23, %25
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 0
  %intval46 = bitcast %union.v* %value45 to i64*
  store i64 %sub43, i64* %intval46, align 8
  %xor = xor i64 %22, %sub43
  %cmp = icmp slt i64 %xor, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.37
  %27 = load i64, i64* %int1, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %intval49 = bitcast %union.v* %value48 to i64*
  %29 = load i64, i64* %intval49, align 8
  %xor50 = xor i64 %27, %29
  %cmp51 = icmp slt i64 %xor50, 0
  br i1 %cmp51, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load i64, i64* %int1, align 8
  %conv53 = sitofp i64 %30 to float
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %intval55 = bitcast %union.v* %value54 to i64*
  %32 = load i64, i64* %intval55, align 8
  %conv56 = sitofp i64 %32 to float
  %sub57 = fsub float %conv53, %conv56
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr58, i32 0, i32 0
  %realval60 = bitcast %union.v* %value59 to float*
  store float %sub57, float* %realval60, align 4
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %type_attrs62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr61, i32 0, i32 1
  store i16 44, i16* %type_attrs62, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.37
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.end, %sw.bb.29
  br label %sw.epilog.64

sw.epilog.64:                                     ; preds = %sw.epilog.63, %sw.epilog
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %add.ptr65, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.64, %sw.default.28, %sw.default.5, %sw.default
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @zidiv(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %save_num = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %1 = bitcast %struct.ref_s* %save_num to i8*
  %2 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @zdiv(%struct.ref_s* %3)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %call1 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcvi to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %add.ptr)
  store i32 %call1, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %9 = bitcast %struct.ref_s* %arrayidx4 to i8*
  %10 = bitcast %struct.ref_s* %save_num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @zcvi(...) #2

; Function Attrs: nounwind uwtable
define i32 @zmod(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 252
  %cmp5 = icmp eq i32 %and4, 20
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8
  %cmp9 = icmp eq i64 %5, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -23, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval14 = bitcast %union.v* %value13 to i64*
  %7 = load i64, i64* %intval14, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx15, i32 0, i32 0
  %intval17 = bitcast %union.v* %value16 to i64*
  %9 = load i64, i64* %intval17, align 8
  %rem = srem i64 %9, %7
  store i64 %rem, i64* %intval17, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @zneg(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.3
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %sub = fsub float -0.000000e+00, %3
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval2 = bitcast %union.v* %value1 to float*
  store float %sub, float* %realval2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value4 to i64*
  %6 = load i64, i64* %intval, align 8
  %cmp = icmp eq i64 %6, -2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.3
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %realval7 = bitcast %union.v* %value6 to float*
  store float 0x41E0000000000000, float* %realval7, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  store i16 44, i16* %type_attrs8, align 2
  br label %if.end

if.else:                                          ; preds = %sw.bb.3
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval10 = bitcast %union.v* %value9 to i64*
  %10 = load i64, i64* %intval10, align 8
  %sub11 = sub nsw i64 0, %10
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval13 = bitcast %union.v* %value12 to i64*
  store i64 %sub11, i64* %intval13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @zceiling(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %conv1 = fpext float %3 to double
  %call = call double @ceil(double %conv1) #4
  %conv2 = fptrunc double %call to float
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval4 = bitcast %union.v* %value3 to float*
  store float %conv2, float* %realval4, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define i32 @zfloor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %conv1 = fpext float %3 to double
  %call = call double @floor(double %conv1) #4
  %conv2 = fptrunc double %call to float
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval4 = bitcast %union.v* %value3 to float*
  store float %conv2, float* %realval4, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define i32 @zround(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %conv1 = fpext float %3 to double
  %add = fadd double %conv1, 5.000000e-01
  %call = call double @floor(double %add) #4
  %conv2 = fptrunc double %call to float
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval4 = bitcast %union.v* %value3 to float*
  store float %conv2, float* %realval4, align 4
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @ztruncate(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.13
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %conv1 = fpext float %3 to double
  %cmp = fcmp olt double %conv1, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval4 = bitcast %union.v* %value3 to float*
  %5 = load float, float* %realval4, align 4
  %conv5 = fpext float %5 to double
  %call = call double @ceil(double %conv5) #4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %realval7 = bitcast %union.v* %value6 to float*
  %7 = load float, float* %realval7, align 4
  %conv8 = fpext float %7 to double
  %call9 = call double @floor(double %conv8) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ %call9, %cond.false ]
  %conv10 = fptrunc double %cond to float
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %realval12 = bitcast %union.v* %value11 to float*
  store float %conv10, float* %realval12, align 4
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %entry, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @zarith_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zarith_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
