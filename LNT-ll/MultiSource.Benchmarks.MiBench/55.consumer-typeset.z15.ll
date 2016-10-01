; ModuleID = './MultiSource.Benchmarks.MiBench/55.consumer-typeset.z15.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"InvScaleConstraint: sf <= 0!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RotateConstraint: theta!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Constrained: x has no parent!\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Constrained: COL_THR!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Constrained:\00", align 1

; Function Attrs: nounwind uwtable
define void @MinConstraint(%struct.CONSTRAINT* %xc, %struct.CONSTRAINT* %yc) #0 {
entry:
  %xc.addr = alloca %struct.CONSTRAINT*, align 8
  %yc.addr = alloca %struct.CONSTRAINT*, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %xc.addr, align 8
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %yc.addr, align 8
  %0 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %0, i32 0, i32 0
  %1 = load i32, i32* %obc, align 4
  %2 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obc1 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2, i32 0, i32 0
  %3 = load i32, i32* %obc1, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc2 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 0
  %5 = load i32, i32* %obc2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obc3 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 0
  %7 = load i32, i32* %obc3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %8 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc4 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %8, i32 0, i32 0
  store i32 %cond, i32* %obc4, align 4
  %9 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %9, i32 0, i32 1
  %10 = load i32, i32* %obfc, align 4
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obfc5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 1
  %12 = load i32, i32* %obfc5, align 4
  %cmp6 = icmp slt i32 %10, %12
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %13 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc8 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %13, i32 0, i32 1
  %14 = load i32, i32* %obfc8, align 4
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %15 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obfc10 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %15, i32 0, i32 1
  %16 = load i32, i32* %obfc10, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.7
  %cond12 = phi i32 [ %14, %cond.true.7 ], [ %16, %cond.false.9 ]
  %17 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc13 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %17, i32 0, i32 1
  store i32 %cond12, i32* %obfc13, align 4
  %18 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %18, i32 0, i32 2
  %19 = load i32, i32* %ofc, align 4
  %20 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %ofc14 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %20, i32 0, i32 2
  %21 = load i32, i32* %ofc14, align 4
  %cmp15 = icmp slt i32 %19, %21
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.end.11
  %22 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc17 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %22, i32 0, i32 2
  %23 = load i32, i32* %ofc17, align 4
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end.11
  %24 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %ofc19 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %24, i32 0, i32 2
  %25 = load i32, i32* %ofc19, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.16
  %cond21 = phi i32 [ %23, %cond.true.16 ], [ %25, %cond.false.18 ]
  %26 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc22 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %26, i32 0, i32 2
  store i32 %cond21, i32* %ofc22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetSizeToMaxForwardConstraint(i32* %b, i32* %f, %struct.CONSTRAINT* %c) #0 {
entry:
  %b.addr = alloca i32*, align 8
  %f.addr = alloca i32*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %f, i32** %f.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  %0 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %0, i32 0, i32 1
  %1 = load i32, i32* %obfc, align 4
  %2 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2, i32 0, i32 2
  %3 = load i32, i32* %ofc, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 1
  %5 = load i32, i32* %obfc1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc2 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 2
  %7 = load i32, i32* %ofc2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %8 = load i32*, i32** %f.addr, align 8
  store i32 %cond, i32* %8, align 4
  %9 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %9, i32 0, i32 0
  %10 = load i32, i32* %obc, align 4
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc3 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 1
  %12 = load i32, i32* %obfc3, align 4
  %13 = load i32*, i32** %f.addr, align 8
  %14 = load i32, i32* %13, align 4
  %sub = sub nsw i32 %12, %14
  %cmp4 = icmp slt i32 %10, %sub
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %15 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc6 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %15, i32 0, i32 0
  %16 = load i32, i32* %obc6, align 4
  br label %cond.end.10

cond.false.7:                                     ; preds = %cond.end
  %17 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc8 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %17, i32 0, i32 1
  %18 = load i32, i32* %obfc8, align 4
  %19 = load i32*, i32** %f.addr, align 8
  %20 = load i32, i32* %19, align 4
  %sub9 = sub nsw i32 %18, %20
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.5
  %cond11 = phi i32 [ %16, %cond.true.5 ], [ %sub9, %cond.false.7 ]
  %21 = load i32*, i32** %b.addr, align 8
  store i32 %cond11, i32* %21, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EnlargeToConstraint(i32* %b, i32* %f, %struct.CONSTRAINT* %c) #0 {
entry:
  %b.addr = alloca i32*, align 8
  %f.addr = alloca i32*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %f, i32** %f.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  %0 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %0, i32 0, i32 1
  %1 = load i32, i32* %obfc, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %sub = sub nsw i32 %1, %3
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 2
  %5 = load i32, i32* %ofc, align 4
  %cmp = icmp slt i32 %sub, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 1
  %7 = load i32, i32* %obfc1, align 4
  %8 = load i32*, i32** %b.addr, align 8
  %9 = load i32, i32* %8, align 4
  %sub2 = sub nsw i32 %7, %9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc3 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 2
  %11 = load i32, i32* %ofc3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %11, %cond.false ]
  %12 = load i32*, i32** %f.addr, align 8
  store i32 %cond, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ScaleToConstraint(i32 %b, i32 %f, %struct.CONSTRAINT* %c) #0 {
entry:
  %b.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %scale_factor = alloca float, align 4
  %res = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store float 1.000000e+00, float* %scale_factor, align 4
  %0 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %scale_factor, align 4
  %2 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2, i32 0, i32 0
  %3 = load i32, i32* %obc, align 4
  %conv = sitofp i32 %3 to float
  %4 = load i32, i32* %b.addr, align 4
  %conv1 = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv1
  %cmp2 = fcmp olt float %1, %div
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load float, float* %scale_factor, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc4 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 0
  %7 = load i32, i32* %obc4, align 4
  %conv5 = sitofp i32 %7 to float
  %8 = load i32, i32* %b.addr, align 4
  %conv6 = sitofp i32 %8 to float
  %div7 = fdiv float %conv5, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %5, %cond.true ], [ %div7, %cond.false ]
  store float %cond, float* %scale_factor, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %9 = load i32, i32* %b.addr, align 4
  %10 = load i32, i32* %f.addr, align 4
  %add = add nsw i32 %9, %10
  %cmp8 = icmp sgt i32 %add, 0
  br i1 %cmp8, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %if.end
  %11 = load float, float* %scale_factor, align 4
  %12 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %12, i32 0, i32 1
  %13 = load i32, i32* %obfc, align 4
  %conv11 = sitofp i32 %13 to float
  %14 = load i32, i32* %b.addr, align 4
  %15 = load i32, i32* %f.addr, align 4
  %add12 = add nsw i32 %14, %15
  %conv13 = sitofp i32 %add12 to float
  %div14 = fdiv float %conv11, %conv13
  %cmp15 = fcmp olt float %11, %div14
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.then.10
  %16 = load float, float* %scale_factor, align 4
  br label %cond.end.24

cond.false.18:                                    ; preds = %if.then.10
  %17 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc19 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %17, i32 0, i32 1
  %18 = load i32, i32* %obfc19, align 4
  %conv20 = sitofp i32 %18 to float
  %19 = load i32, i32* %b.addr, align 4
  %20 = load i32, i32* %f.addr, align 4
  %add21 = add nsw i32 %19, %20
  %conv22 = sitofp i32 %add21 to float
  %div23 = fdiv float %conv20, %conv22
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.18, %cond.true.17
  %cond25 = phi float [ %16, %cond.true.17 ], [ %div23, %cond.false.18 ]
  store float %cond25, float* %scale_factor, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.24, %if.end
  %21 = load i32, i32* %f.addr, align 4
  %cmp27 = icmp sgt i32 %21, 0
  br i1 %cmp27, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.end.26
  %22 = load float, float* %scale_factor, align 4
  %23 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %23, i32 0, i32 2
  %24 = load i32, i32* %ofc, align 4
  %conv30 = sitofp i32 %24 to float
  %25 = load i32, i32* %f.addr, align 4
  %conv31 = sitofp i32 %25 to float
  %div32 = fdiv float %conv30, %conv31
  %cmp33 = fcmp olt float %22, %div32
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %if.then.29
  %26 = load float, float* %scale_factor, align 4
  br label %cond.end.41

cond.false.36:                                    ; preds = %if.then.29
  %27 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc37 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %27, i32 0, i32 2
  %28 = load i32, i32* %ofc37, align 4
  %conv38 = sitofp i32 %28 to float
  %29 = load i32, i32* %f.addr, align 4
  %conv39 = sitofp i32 %29 to float
  %div40 = fdiv float %conv38, %conv39
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.36, %cond.true.35
  %cond42 = phi float [ %26, %cond.true.35 ], [ %div40, %cond.false.36 ]
  store float %cond42, float* %scale_factor, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.41, %if.end.26
  %30 = load float, float* %scale_factor, align 4
  %mul = fmul float %30, 1.280000e+02
  %conv44 = fptosi float %mul to i32
  store i32 %conv44, i32* %res, align 4
  %31 = load i32, i32* %res, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define void @InvScaleConstraint(%struct.CONSTRAINT* %yc, i32 %sf, %struct.CONSTRAINT* %xc) #0 {
entry:
  %yc.addr = alloca %struct.CONSTRAINT*, align 8
  %sf.addr = alloca i32, align 4
  %xc.addr = alloca %struct.CONSTRAINT*, align 8
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %yc.addr, align 8
  store i32 %sf, i32* %sf.addr, align 4
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %xc.addr, align 8
  %0 = load i32, i32* %sf.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2, i32 0, i32 0
  %3 = load i32, i32* %obc, align 4
  %cmp1 = icmp eq i32 %3, 8388607
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.9

cond.false:                                       ; preds = %if.end
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc2 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 0
  %5 = load i32, i32* %obc2, align 4
  %mul = mul nsw i32 %5, 128
  %6 = load i32, i32* %sf.addr, align 4
  %div = sdiv i32 %mul, %6
  %cmp3 = icmp slt i32 8388607, %div
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %7 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc6 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %7, i32 0, i32 0
  %8 = load i32, i32* %obc6, align 4
  %mul7 = mul nsw i32 %8, 128
  %9 = load i32, i32* %sf.addr, align 4
  %div8 = sdiv i32 %mul7, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 8388607, %cond.true.4 ], [ %div8, %cond.false.5 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 8388607, %cond.true ], [ %cond, %cond.end ]
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obc11 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 0
  store i32 %cond10, i32* %obc11, align 4
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 1
  %12 = load i32, i32* %obfc, align 4
  %cmp12 = icmp eq i32 %12, 8388607
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  br label %cond.end.26

cond.false.14:                                    ; preds = %cond.end.9
  %13 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc15 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %13, i32 0, i32 1
  %14 = load i32, i32* %obfc15, align 4
  %mul16 = mul nsw i32 %14, 128
  %15 = load i32, i32* %sf.addr, align 4
  %div17 = sdiv i32 %mul16, %15
  %cmp18 = icmp slt i32 8388607, %div17
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false.14
  br label %cond.end.24

cond.false.20:                                    ; preds = %cond.false.14
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc21 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 1
  %17 = load i32, i32* %obfc21, align 4
  %mul22 = mul nsw i32 %17, 128
  %18 = load i32, i32* %sf.addr, align 4
  %div23 = sdiv i32 %mul22, %18
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.20, %cond.true.19
  %cond25 = phi i32 [ 8388607, %cond.true.19 ], [ %div23, %cond.false.20 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.13
  %cond27 = phi i32 [ 8388607, %cond.true.13 ], [ %cond25, %cond.end.24 ]
  %19 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obfc28 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %19, i32 0, i32 1
  store i32 %cond27, i32* %obfc28, align 4
  %20 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %20, i32 0, i32 2
  %21 = load i32, i32* %ofc, align 4
  %cmp29 = icmp eq i32 %21, 8388607
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.26
  br label %cond.end.43

cond.false.31:                                    ; preds = %cond.end.26
  %22 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc32 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %22, i32 0, i32 2
  %23 = load i32, i32* %ofc32, align 4
  %mul33 = mul nsw i32 %23, 128
  %24 = load i32, i32* %sf.addr, align 4
  %div34 = sdiv i32 %mul33, %24
  %cmp35 = icmp slt i32 8388607, %div34
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.31
  br label %cond.end.41

cond.false.37:                                    ; preds = %cond.false.31
  %25 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc38 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %25, i32 0, i32 2
  %26 = load i32, i32* %ofc38, align 4
  %mul39 = mul nsw i32 %26, 128
  %27 = load i32, i32* %sf.addr, align 4
  %div40 = sdiv i32 %mul39, %27
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.36
  %cond42 = phi i32 [ 8388607, %cond.true.36 ], [ %div40, %cond.false.37 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.30
  %cond44 = phi i32 [ 8388607, %cond.true.30 ], [ %cond42, %cond.end.41 ]
  %28 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %ofc45 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %28, i32 0, i32 2
  store i32 %cond44, i32* %ofc45, align 4
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @RotateConstraint(%struct.CONSTRAINT* %c, %union.rec* %y, i32 %angle, %struct.CONSTRAINT* %hc, %struct.CONSTRAINT* %vc, i32 %dim) #0 {
entry:
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %y.addr = alloca %union.rec*, align 8
  %angle.addr = alloca i32, align 4
  %hc.addr = alloca %struct.CONSTRAINT*, align 8
  %vc.addr = alloca %struct.CONSTRAINT*, align 8
  %dim.addr = alloca i32, align 4
  %c1 = alloca %struct.CONSTRAINT, align 4
  %c2 = alloca %struct.CONSTRAINT, align 4
  %c3 = alloca %struct.CONSTRAINT, align 4
  %dc = alloca %struct.CONSTRAINT, align 4
  %theta = alloca float, align 4
  %psi = alloca float, align 4
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %angle, i32* %angle.addr, align 4
  store %struct.CONSTRAINT* %hc, %struct.CONSTRAINT** %hc.addr, align 8
  store %struct.CONSTRAINT* %vc, %struct.CONSTRAINT** %vc.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load i32, i32* %angle.addr, align 4
  %conv = sitofp i32 %0 to float
  %mul = fmul float %conv, 2.000000e+00
  %conv1 = fpext float %mul to double
  %mul2 = fmul double %conv1, 0x400921FB54442D18
  %div = fdiv double %mul2, 4.608000e+04
  %conv3 = fptrunc double %div to float
  store float %conv3, float* %theta, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %theta, align 4
  %cmp = fcmp olt float %1, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load float, float* %theta, align 4
  %conv5 = fpext float %2 to double
  %add = fadd double %conv5, 0x401921FB54442D18
  %conv6 = fptrunc double %add to float
  store float %conv6, float* %theta, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.11, %while.end
  %3 = load float, float* %theta, align 4
  %conv8 = fpext float %3 to double
  %cmp9 = fcmp oge double %conv8, 0x401921FB54442D18
  br i1 %cmp9, label %while.body.11, label %while.end.14

while.body.11:                                    ; preds = %while.cond.7
  %4 = load float, float* %theta, align 4
  %conv12 = fpext float %4 to double
  %sub = fsub double %conv12, 0x401921FB54442D18
  %conv13 = fptrunc double %sub to float
  store float %conv13, float* %theta, align 4
  br label %while.cond.7

while.end.14:                                     ; preds = %while.cond.7
  %5 = load float, float* %theta, align 4
  %cmp15 = fcmp ole float 0.000000e+00, %5
  br i1 %cmp15, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.end.14
  %6 = load float, float* %theta, align 4
  %conv17 = fpext float %6 to double
  %cmp18 = fcmp ole double %conv17, 0x401921FB54442D18
  br i1 %cmp18, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.end.14
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %8 = load float, float* %theta, align 4
  %conv20 = fpext float %8 to double
  %cmp21 = fcmp ole double %conv20, 0x3FF921FB54442D18
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %9 = load float, float* %theta, align 4
  store float %9, float* %theta, align 4
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 0
  %11 = load i32, i32* %obc, align 4
  %obc24 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %11, i32* %obc24, align 4
  %12 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %12, i32 0, i32 1
  %13 = load i32, i32* %obfc, align 4
  %obfc25 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %13, i32* %obfc25, align 4
  %14 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %14, i32 0, i32 2
  %15 = load i32, i32* %ofc, align 4
  %ofc26 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %15, i32* %ofc26, align 4
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obc27 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 0
  %17 = load i32, i32* %obc27, align 4
  %obc28 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %17, i32* %obc28, align 4
  %18 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obfc29 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %18, i32 0, i32 1
  %19 = load i32, i32* %obfc29, align 4
  %obfc30 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %19, i32* %obfc30, align 4
  %20 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %ofc31 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %20, i32 0, i32 2
  %21 = load i32, i32* %ofc31, align 4
  %ofc32 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %21, i32* %ofc32, align 4
  br label %if.end.90

if.else:                                          ; preds = %if.end
  %22 = load float, float* %theta, align 4
  %conv33 = fpext float %22 to double
  %cmp34 = fcmp ole double %conv33, 0x400921FB54442D18
  br i1 %cmp34, label %if.then.36, label %if.else.52

if.then.36:                                       ; preds = %if.else
  %23 = load float, float* %theta, align 4
  %conv37 = fpext float %23 to double
  %sub38 = fsub double %conv37, 0x3FF921FB54442D18
  %conv39 = fptrunc double %sub38 to float
  store float %conv39, float* %theta, align 4
  %24 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %ofc40 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %24, i32 0, i32 2
  %25 = load i32, i32* %ofc40, align 4
  %obc41 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %25, i32* %obc41, align 4
  %26 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obfc42 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %26, i32 0, i32 1
  %27 = load i32, i32* %obfc42, align 4
  %obfc43 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %27, i32* %obfc43, align 4
  %28 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obc44 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %28, i32 0, i32 0
  %29 = load i32, i32* %obc44, align 4
  %ofc45 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %29, i32* %ofc45, align 4
  %30 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obc46 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %30, i32 0, i32 0
  %31 = load i32, i32* %obc46, align 4
  %obc47 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %31, i32* %obc47, align 4
  %32 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obfc48 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %32, i32 0, i32 1
  %33 = load i32, i32* %obfc48, align 4
  %obfc49 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %33, i32* %obfc49, align 4
  %34 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %ofc50 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %34, i32 0, i32 2
  %35 = load i32, i32* %ofc50, align 4
  %ofc51 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %35, i32* %ofc51, align 4
  br label %if.end.89

if.else.52:                                       ; preds = %if.else
  %36 = load float, float* %theta, align 4
  %conv53 = fpext float %36 to double
  %cmp54 = fcmp ole double %conv53, 0x4012D97C7F3321D2
  br i1 %cmp54, label %if.then.56, label %if.else.72

if.then.56:                                       ; preds = %if.else.52
  %37 = load float, float* %theta, align 4
  %conv57 = fpext float %37 to double
  %sub58 = fsub double %conv57, 0x400921FB54442D18
  %conv59 = fptrunc double %sub58 to float
  store float %conv59, float* %theta, align 4
  %38 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %ofc60 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %38, i32 0, i32 2
  %39 = load i32, i32* %ofc60, align 4
  %obc61 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %39, i32* %obc61, align 4
  %40 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obfc62 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %40, i32 0, i32 1
  %41 = load i32, i32* %obfc62, align 4
  %obfc63 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %41, i32* %obfc63, align 4
  %42 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obc64 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %42, i32 0, i32 0
  %43 = load i32, i32* %obc64, align 4
  %ofc65 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %43, i32* %ofc65, align 4
  %44 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %ofc66 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %44, i32 0, i32 2
  %45 = load i32, i32* %ofc66, align 4
  %obc67 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %45, i32* %obc67, align 4
  %46 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obfc68 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %46, i32 0, i32 1
  %47 = load i32, i32* %obfc68, align 4
  %obfc69 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %47, i32* %obfc69, align 4
  %48 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obc70 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %48, i32 0, i32 0
  %49 = load i32, i32* %obc70, align 4
  %ofc71 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %49, i32* %ofc71, align 4
  br label %if.end.88

if.else.72:                                       ; preds = %if.else.52
  %50 = load float, float* %theta, align 4
  %conv73 = fpext float %50 to double
  %sub74 = fsub double %conv73, 0x4012D97C7F3321D2
  %conv75 = fptrunc double %sub74 to float
  store float %conv75, float* %theta, align 4
  %51 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obc76 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %51, i32 0, i32 0
  %52 = load i32, i32* %obc76, align 4
  %obc77 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %52, i32* %obc77, align 4
  %53 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %obfc78 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %53, i32 0, i32 1
  %54 = load i32, i32* %obfc78, align 4
  %obfc79 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %54, i32* %obfc79, align 4
  %55 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %vc.addr, align 8
  %ofc80 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %55, i32 0, i32 2
  %56 = load i32, i32* %ofc80, align 4
  %ofc81 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %56, i32* %ofc81, align 4
  %57 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %ofc82 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %57, i32 0, i32 2
  %58 = load i32, i32* %ofc82, align 4
  %obc83 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %58, i32* %obc83, align 4
  %59 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obfc84 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %59, i32 0, i32 1
  %60 = load i32, i32* %obfc84, align 4
  %obfc85 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %60, i32* %obfc85, align 4
  %61 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %hc.addr, align 8
  %obc86 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %61, i32 0, i32 0
  %62 = load i32, i32* %obc86, align 4
  %ofc87 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %62, i32* %ofc87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.72, %if.then.56
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.36
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.23
  %63 = load float, float* %theta, align 4
  %conv91 = fpext float %63 to double
  %sub92 = fsub double 0x3FF921FB54442D18, %conv91
  %conv93 = fptrunc double %sub92 to float
  store float %conv93, float* %psi, align 4
  %64 = load i32, i32* %dim.addr, align 4
  %cmp94 = icmp eq i32 %64, 0
  br i1 %cmp94, label %if.then.96, label %if.else.117

if.then.96:                                       ; preds = %if.end.90
  %65 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %66 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1 = bitcast %union.rec* %66 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  %67 = load i32, i32* %arrayidx, align 4
  %68 = load %union.rec*, %union.rec** %y.addr, align 8
  %os197 = bitcast %union.rec* %68 to %struct.word_type*
  %ou398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 3
  %os3199 = bitcast %union.THIRD_UNION* %ou398 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3199, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 1
  %69 = load i32, i32* %arrayidx100, align 4
  %70 = load float, float* %theta, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %65, i32 %67, i32 %69, float %70, %struct.CONSTRAINT* %c1)
  %ofc101 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  %71 = load i32, i32* %ofc101, align 4
  %obc102 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 0
  store i32 %71, i32* %obc102, align 4
  %obfc103 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  %72 = load i32, i32* %obfc103, align 4
  %obfc104 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 1
  store i32 %72, i32* %obfc104, align 4
  %obc105 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  %73 = load i32, i32* %obc105, align 4
  %ofc106 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 2
  store i32 %73, i32* %ofc106, align 4
  %74 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1107 = bitcast %union.rec* %74 to %struct.word_type*
  %ou3108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 3
  %os31109 = bitcast %union.THIRD_UNION* %ou3108 to %struct.anon.6*
  %ofwd110 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31109, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd110, i32 0, i64 1
  %75 = load i32, i32* %arrayidx111, align 4
  %76 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1112 = bitcast %union.rec* %76 to %struct.word_type*
  %ou3113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 3
  %os31114 = bitcast %union.THIRD_UNION* %ou3113 to %struct.anon.6*
  %oback115 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %oback115, i32 0, i64 1
  %77 = load i32, i32* %arrayidx116, align 4
  %78 = load float, float* %psi, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %dc, i32 %75, i32 %77, float %78, %struct.CONSTRAINT* %c3)
  %79 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %79, %struct.CONSTRAINT* %dc)
  br label %if.end.138

if.else.117:                                      ; preds = %if.end.90
  %80 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %81 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1118 = bitcast %union.rec* %81 to %struct.word_type*
  %ou3119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 3
  %os31120 = bitcast %union.THIRD_UNION* %ou3119 to %struct.anon.6*
  %oback121 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %oback121, i32 0, i64 0
  %82 = load i32, i32* %arrayidx122, align 4
  %83 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1123 = bitcast %union.rec* %83 to %struct.word_type*
  %ou3124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 3
  %os31125 = bitcast %union.THIRD_UNION* %ou3124 to %struct.anon.6*
  %ofwd126 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31125, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd126, i32 0, i64 0
  %84 = load i32, i32* %arrayidx127, align 4
  %85 = load float, float* %psi, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %80, i32 %82, i32 %84, float %85, %struct.CONSTRAINT* %c1)
  %86 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1128 = bitcast %union.rec* %86 to %struct.word_type*
  %ou3129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 3
  %os31130 = bitcast %union.THIRD_UNION* %ou3129 to %struct.anon.6*
  %ofwd131 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31130, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd131, i32 0, i64 0
  %87 = load i32, i32* %arrayidx132, align 4
  %88 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1133 = bitcast %union.rec* %88 to %struct.word_type*
  %ou3134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 3
  %os31135 = bitcast %union.THIRD_UNION* %ou3134 to %struct.anon.6*
  %oback136 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x i32], [2 x i32]* %oback136, i32 0, i64 0
  %89 = load i32, i32* %arrayidx137, align 4
  %90 = load float, float* %theta, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %dc, i32 %87, i32 %89, float %90, %struct.CONSTRAINT* %c2)
  %91 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %91, %struct.CONSTRAINT* %dc)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.117, %if.then.96
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SemiRotateConstraint(%struct.CONSTRAINT* %xc, i32 %u, i32 %v, float %angle, %struct.CONSTRAINT* %yc) #0 {
entry:
  %xc.addr = alloca %struct.CONSTRAINT*, align 8
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %angle.addr = alloca float, align 4
  %yc.addr = alloca %struct.CONSTRAINT*, align 8
  %cs = alloca float, align 4
  %sn = alloca float, align 4
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %xc.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store float %angle, float* %angle.addr, align 4
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %yc.addr, align 8
  %0 = load float, float* %angle.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @cos(double %conv) #4
  %conv1 = fptrunc double %call to float
  store float %conv1, float* %cs, align 4
  %1 = load float, float* %angle.addr, align 4
  %conv2 = fpext float %1 to double
  %call3 = call double @sin(double %conv2) #4
  %conv4 = fptrunc double %call3 to float
  store float %conv4, float* %sn, align 4
  %2 = load float, float* %cs, align 4
  %conv5 = fpext float %2 to double
  %call6 = call double @fabs(double %conv5) #5
  %cmp = fcmp olt double %call6, 1.000000e-06
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 1
  store i32 8388607, i32* %obfc, align 4
  %5 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5, i32 0, i32 2
  store i32 8388607, i32* %ofc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obc8 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 0
  %7 = load i32, i32* %obc8, align 4
  %conv9 = sitofp i32 %7 to float
  %8 = load i32, i32* %u.addr, align 4
  %conv10 = sitofp i32 %8 to float
  %9 = load float, float* %sn, align 4
  %mul = fmul float %conv10, %9
  %sub = fsub float %conv9, %mul
  %10 = load float, float* %cs, align 4
  %div = fdiv float %sub, %10
  %cmp11 = fcmp olt float 8.388607e+06, %div
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obc13 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 0
  %12 = load i32, i32* %obc13, align 4
  %conv14 = sitofp i32 %12 to float
  %13 = load i32, i32* %u.addr, align 4
  %conv15 = sitofp i32 %13 to float
  %14 = load float, float* %sn, align 4
  %mul16 = fmul float %conv15, %14
  %sub17 = fsub float %conv14, %mul16
  %15 = load float, float* %cs, align 4
  %div18 = fdiv float %sub17, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 8.388607e+06, %cond.true ], [ %div18, %cond.false ]
  %conv19 = fptosi float %cond to i32
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc20 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 0
  store i32 %conv19, i32* %obc20, align 4
  %17 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obfc21 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %17, i32 0, i32 1
  %18 = load i32, i32* %obfc21, align 4
  %conv22 = sitofp i32 %18 to float
  %19 = load i32, i32* %u.addr, align 4
  %conv23 = sitofp i32 %19 to float
  %20 = load float, float* %sn, align 4
  %mul24 = fmul float %conv23, %20
  %sub25 = fsub float %conv22, %mul24
  %21 = load i32, i32* %v.addr, align 4
  %conv26 = sitofp i32 %21 to float
  %22 = load float, float* %sn, align 4
  %mul27 = fmul float %conv26, %22
  %sub28 = fsub float %sub25, %mul27
  %23 = load float, float* %cs, align 4
  %div29 = fdiv float %sub28, %23
  %cmp30 = fcmp olt float 8.388607e+06, %div29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end
  br label %cond.end.43

cond.false.33:                                    ; preds = %cond.end
  %24 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %obfc34 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %24, i32 0, i32 1
  %25 = load i32, i32* %obfc34, align 4
  %conv35 = sitofp i32 %25 to float
  %26 = load i32, i32* %u.addr, align 4
  %conv36 = sitofp i32 %26 to float
  %27 = load float, float* %sn, align 4
  %mul37 = fmul float %conv36, %27
  %sub38 = fsub float %conv35, %mul37
  %28 = load i32, i32* %v.addr, align 4
  %conv39 = sitofp i32 %28 to float
  %29 = load float, float* %sn, align 4
  %mul40 = fmul float %conv39, %29
  %sub41 = fsub float %sub38, %mul40
  %30 = load float, float* %cs, align 4
  %div42 = fdiv float %sub41, %30
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.33, %cond.true.32
  %cond44 = phi float [ 8.388607e+06, %cond.true.32 ], [ %div42, %cond.false.33 ]
  %conv45 = fptosi float %cond44 to i32
  %31 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc46 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %31, i32 0, i32 1
  store i32 %conv45, i32* %obfc46, align 4
  %32 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %ofc47 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %32, i32 0, i32 2
  %33 = load i32, i32* %ofc47, align 4
  %conv48 = sitofp i32 %33 to float
  %34 = load i32, i32* %v.addr, align 4
  %conv49 = sitofp i32 %34 to float
  %35 = load float, float* %sn, align 4
  %mul50 = fmul float %conv49, %35
  %sub51 = fsub float %conv48, %mul50
  %36 = load float, float* %cs, align 4
  %div52 = fdiv float %sub51, %36
  %cmp53 = fcmp olt float 8.388607e+06, %div52
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.43
  br label %cond.end.63

cond.false.56:                                    ; preds = %cond.end.43
  %37 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %yc.addr, align 8
  %ofc57 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %37, i32 0, i32 2
  %38 = load i32, i32* %ofc57, align 4
  %conv58 = sitofp i32 %38 to float
  %39 = load i32, i32* %v.addr, align 4
  %conv59 = sitofp i32 %39 to float
  %40 = load float, float* %sn, align 4
  %mul60 = fmul float %conv59, %40
  %sub61 = fsub float %conv58, %mul60
  %41 = load float, float* %cs, align 4
  %div62 = fdiv float %sub61, %41
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.56, %cond.true.55
  %cond64 = phi float [ 8.388607e+06, %cond.true.55 ], [ %div62, %cond.false.56 ]
  %conv65 = fptosi float %cond64 to i32
  %42 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc66 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %42, i32 0, i32 2
  store i32 %conv65, i32* %ofc66, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.63, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @InsertScale(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %scale_factor = alloca i32, align 4
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %ou32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 3
  %os313 = bitcast %union.THIRD_UNION* %ou32 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call = call i32 @ScaleToConstraint(i32 %1, i32 %3, %struct.CONSTRAINT* %4)
  store i32 %call, i32* %scale_factor, align 4
  %5 = load i32, i32* %scale_factor, align 4
  %conv = sitofp i32 %5 to double
  %cmp = fcmp oge double %conv, 2.560000e+01
  br i1 %cmp, label %if.then, label %if.else.337

if.then:                                          ; preds = %entry
  %6 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 34), align 1
  %conv6 = zext i8 %6 to i32
  store i32 %conv6, i32* @zz_size, align 4
  %conv7 = sext i32 %conv6 to i64
  %cmp8 = icmp uge i64 %conv7, 265
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %9 = load %union.rec*, %union.rec** %arrayidx12, align 8
  %cmp13 = icmp eq %union.rec* %9, null
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call16 = call %union.rec* @GetMemory(i32 %10, %struct.FILE_POS* %11)
  store %union.rec* %call16, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %12 = load i32, i32* @zz_size, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom18
  %13 = load %union.rec*, %union.rec** %arrayidx19, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  %16 = load i32, i32* @zz_size, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom22
  store %union.rec* %15, %union.rec** %arrayidx23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.10
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %17 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 0
  store i8 34, i8* %otype, align 1
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %19 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %20 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred33, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %21 to %struct.word_type*
  %olist35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist35, i32 0, i64 0
  %osucc37 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc37, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %22 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 0
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred41, align 8
  store %union.rec* %18, %union.rec** %prnt, align 8
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os142 = bitcast %union.rec* %23 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %24 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %24, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 3
  %25 = load %union.rec*, %union.rec** %prnt, align 8
  %os143 = bitcast %union.rec* %25 to %struct.word_type*
  %ou244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 2
  %os2245 = bitcast %union.SECOND_UNION* %ou244 to %struct.anon.1*
  %26 = bitcast %struct.anon.1* %os2245 to i32*
  %bf.load46 = load i32, i32* %26, align 4
  %bf.value = and i32 %bf.clear, 3
  %bf.shl = shl i32 %bf.value, 29
  %bf.clear47 = and i32 %bf.load46, -1610612737
  %bf.set = or i32 %bf.clear47, %bf.shl
  store i32 %bf.set, i32* %26, align 4
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os148 = bitcast %union.rec* %27 to %struct.word_type*
  %ou149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou149 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %28 = load i16, i16* %ofile_num, align 2
  %29 = load %union.rec*, %union.rec** %prnt, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %ofpos52 = bitcast %union.FIRST_UNION* %ou151 to %struct.FILE_POS*
  %ofile_num53 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos52, i32 0, i32 2
  store i16 %28, i16* %ofile_num53, align 2
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os154 = bitcast %union.rec* %30 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %ofpos56 = bitcast %union.FIRST_UNION* %ou155 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos56, i32 0, i32 3
  %bf.load57 = load i32, i32* %oline_num, align 4
  %bf.clear58 = and i32 %bf.load57, 1048575
  %31 = load %union.rec*, %union.rec** %prnt, align 8
  %os159 = bitcast %union.rec* %31 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %ofpos61 = bitcast %union.FIRST_UNION* %ou160 to %struct.FILE_POS*
  %oline_num62 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos61, i32 0, i32 3
  %bf.load63 = load i32, i32* %oline_num62, align 4
  %bf.value64 = and i32 %bf.clear58, 1048575
  %bf.clear65 = and i32 %bf.load63, -1048576
  %bf.set66 = or i32 %bf.clear65, %bf.value64
  store i32 %bf.set66, i32* %oline_num62, align 4
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os167 = bitcast %union.rec* %32 to %struct.word_type*
  %ou168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 1
  %ofpos69 = bitcast %union.FIRST_UNION* %ou168 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos69, i32 0, i32 3
  %bf.load70 = load i32, i32* %ocol_num, align 4
  %bf.lshr71 = lshr i32 %bf.load70, 20
  %33 = load %union.rec*, %union.rec** %prnt, align 8
  %os172 = bitcast %union.rec* %33 to %struct.word_type*
  %ou173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 1
  %ofpos74 = bitcast %union.FIRST_UNION* %ou173 to %struct.FILE_POS*
  %ocol_num75 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos74, i32 0, i32 3
  %bf.load76 = load i32, i32* %ocol_num75, align 4
  %bf.value77 = and i32 %bf.lshr71, 4095
  %bf.shl78 = shl i32 %bf.value77, 20
  %bf.clear79 = and i32 %bf.load76, 1048575
  %bf.set80 = or i32 %bf.clear79, %bf.shl78
  store i32 %bf.set80, i32* %ocol_num75, align 4
  %34 = load i32, i32* %scale_factor, align 4
  %35 = load %union.rec*, %union.rec** %prnt, align 8
  %os2 = bitcast %union.rec* %35 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 %34, i32* %obc, align 4
  %36 = load %union.rec*, %union.rec** %x.addr, align 8
  %os181 = bitcast %union.rec* %36 to %struct.word_type*
  %ou382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 3
  %os3183 = bitcast %union.THIRD_UNION* %ou382 to %struct.anon.6*
  %oback84 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3183, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %oback84, i32 0, i64 0
  %37 = load i32, i32* %arrayidx85, align 4
  %38 = load i32, i32* %scale_factor, align 4
  %mul = mul nsw i32 %37, %38
  %div = sdiv i32 %mul, 128
  %39 = load %union.rec*, %union.rec** %prnt, align 8
  %os186 = bitcast %union.rec* %39 to %struct.word_type*
  %ou387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 3
  %os3188 = bitcast %union.THIRD_UNION* %ou387 to %struct.anon.6*
  %oback89 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %oback89, i32 0, i64 0
  store i32 %div, i32* %arrayidx90, align 4
  %40 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %40, i32 0, i32 1
  %41 = load i32, i32* %obfc, align 4
  %42 = load %union.rec*, %union.rec** %prnt, align 8
  %os191 = bitcast %union.rec* %42 to %struct.word_type*
  %ou392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 3
  %os3193 = bitcast %union.THIRD_UNION* %ou392 to %struct.anon.6*
  %oback94 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %oback94, i32 0, i64 0
  %43 = load i32, i32* %arrayidx95, align 4
  %sub = sub nsw i32 %41, %43
  %44 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %44, i32 0, i32 2
  %45 = load i32, i32* %ofc, align 4
  %cmp96 = icmp slt i32 %sub, %45
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %46 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc98 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %46, i32 0, i32 1
  %47 = load i32, i32* %obfc98, align 4
  %48 = load %union.rec*, %union.rec** %prnt, align 8
  %os199 = bitcast %union.rec* %48 to %struct.word_type*
  %ou3100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 3
  %os31101 = bitcast %union.THIRD_UNION* %ou3100 to %struct.anon.6*
  %oback102 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %oback102, i32 0, i64 0
  %49 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %47, %49
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %50 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc105 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %50, i32 0, i32 2
  %51 = load i32, i32* %ofc105, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub104, %cond.true ], [ %51, %cond.false ]
  %52 = load %union.rec*, %union.rec** %prnt, align 8
  %os1106 = bitcast %union.rec* %52 to %struct.word_type*
  %ou3107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 3
  %os31108 = bitcast %union.THIRD_UNION* %ou3107 to %struct.anon.6*
  %ofwd109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31108, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd109, i32 0, i64 0
  store i32 %cond, i32* %arrayidx110, align 4
  %53 = load %union.rec*, %union.rec** %prnt, align 8
  %os2111 = bitcast %union.rec* %53 to %struct.closure_type*
  %ou4112 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2111, i32 0, i32 4
  %oconstraint113 = bitcast %union.FOURTH_UNION* %ou4112 to %struct.CONSTRAINT*
  %ofc114 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint113, i32 0, i32 2
  store i32 128, i32* %ofc114, align 4
  %54 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1115 = bitcast %union.rec* %54 to %struct.word_type*
  %ou3116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 3
  %os31117 = bitcast %union.THIRD_UNION* %ou3116 to %struct.anon.6*
  %oback118 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %oback118, i32 0, i64 1
  %55 = load i32, i32* %arrayidx119, align 4
  %56 = load %union.rec*, %union.rec** %prnt, align 8
  %os1120 = bitcast %union.rec* %56 to %struct.word_type*
  %ou3121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 3
  %os31122 = bitcast %union.THIRD_UNION* %ou3121 to %struct.anon.6*
  %oback123 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x i32], [2 x i32]* %oback123, i32 0, i64 1
  store i32 %55, i32* %arrayidx124, align 4
  %57 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1125 = bitcast %union.rec* %57 to %struct.word_type*
  %ou3126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 3
  %os31127 = bitcast %union.THIRD_UNION* %ou3126 to %struct.anon.6*
  %ofwd128 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd128, i32 0, i64 1
  %58 = load i32, i32* %arrayidx129, align 4
  %59 = load %union.rec*, %union.rec** %prnt, align 8
  %os1130 = bitcast %union.rec* %59 to %struct.word_type*
  %ou3131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 3
  %os31132 = bitcast %union.THIRD_UNION* %ou3131 to %struct.anon.6*
  %ofwd133 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31132, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd133, i32 0, i64 1
  store i32 %58, i32* %arrayidx134, align 4
  %60 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %61 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 1
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  %62 = load %union.rec*, %union.rec** %osucc138, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp139 = icmp eq %union.rec* %62, %63
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end
  br label %cond.end.171

cond.false.142:                                   ; preds = %cond.end
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1143 = bitcast %union.rec* %64 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %osucc146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %osucc146, align 8
  store %union.rec* %65, %union.rec** @zz_res, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1147 = bitcast %union.rec* %66 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 1
  %opred150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred150, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1151 = bitcast %union.rec* %68 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 1
  %opred154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred154, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %70 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 1
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred158, align 8
  %os1159 = bitcast %union.rec* %71 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 1
  %osucc162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc162, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %73 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 1
  %osucc166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc166, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %74 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 1
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred170, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.142, %cond.true.141
  %cond172 = phi %union.rec* [ null, %cond.true.141 ], [ %75, %cond.false.142 ]
  store %union.rec* %cond172, %union.rec** @xx_tmp, align 8
  %76 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %76, %union.rec** @zz_res, align 8
  %77 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp173 = icmp eq %union.rec* %78, null
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %cond.end.171
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.211

cond.false.176:                                   ; preds = %cond.end.171
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp177 = icmp eq %union.rec* %80, null
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %cond.false.176
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.209

cond.false.180:                                   ; preds = %cond.false.176
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1181 = bitcast %union.rec* %82 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 1
  %opred184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred184, align 8
  store %union.rec* %83, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1185 = bitcast %union.rec* %84 to %struct.word_type*
  %olist186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist186, i32 0, i64 1
  %opred188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx187, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred188, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1189 = bitcast %union.rec* %86 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 1
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred192, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1193 = bitcast %union.rec* %88 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 1
  %opred196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %opred196, align 8
  %os1197 = bitcast %union.rec* %89 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 1
  %osucc200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc200, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1201 = bitcast %union.rec* %91 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred204, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %93 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1205 = bitcast %union.rec* %93 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %osucc208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc208, align 8
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.180, %cond.true.179
  %cond210 = phi %union.rec* [ %81, %cond.true.179 ], [ %92, %cond.false.180 ]
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.end.209, %cond.true.175
  %cond212 = phi %union.rec* [ %79, %cond.true.175 ], [ %cond210, %cond.end.209 ]
  %94 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv213 = zext i8 %94 to i32
  store i32 %conv213, i32* @zz_size, align 4
  %conv214 = sext i32 %conv213 to i64
  %cmp215 = icmp uge i64 %conv214, 265
  br i1 %cmp215, label %if.then.217, label %if.else.219

if.then.217:                                      ; preds = %cond.end.211
  %95 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call218 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %95)
  br label %if.end.236

if.else.219:                                      ; preds = %cond.end.211
  %96 = load i32, i32* @zz_size, align 4
  %idxprom220 = sext i32 %96 to i64
  %arrayidx221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom220
  %97 = load %union.rec*, %union.rec** %arrayidx221, align 8
  %cmp222 = icmp eq %union.rec* %97, null
  br i1 %cmp222, label %if.then.224, label %if.else.226

if.then.224:                                      ; preds = %if.else.219
  %98 = load i32, i32* @zz_size, align 4
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call225 = call %union.rec* @GetMemory(i32 %98, %struct.FILE_POS* %99)
  store %union.rec* %call225, %union.rec** @zz_hold, align 8
  br label %if.end.235

if.else.226:                                      ; preds = %if.else.219
  %100 = load i32, i32* @zz_size, align 4
  %idxprom227 = sext i32 %100 to i64
  %arrayidx228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom227
  %101 = load %union.rec*, %union.rec** %arrayidx228, align 8
  store %union.rec* %101, %union.rec** @zz_hold, align 8
  store %union.rec* %101, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %102 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 0
  %opred232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred232, align 8
  %104 = load i32, i32* @zz_size, align 4
  %idxprom233 = sext i32 %104 to i64
  %arrayidx234 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom233
  store %union.rec* %103, %union.rec** %arrayidx234, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.226, %if.then.224
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.217
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1237 = bitcast %union.rec* %105 to %struct.word_type*
  %ou1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 1
  %os11239 = bitcast %union.FIRST_UNION* %ou1238 to %struct.anon*
  %otype240 = getelementptr inbounds %struct.anon, %struct.anon* %os11239, i32 0, i32 0
  store i8 0, i8* %otype240, align 1
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1241 = bitcast %union.rec* %107 to %struct.word_type*
  %olist242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist242, i32 0, i64 1
  %osucc244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx243, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc244, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1245 = bitcast %union.rec* %108 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 1
  %opred248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 0
  store %union.rec* %106, %union.rec** %opred248, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1249 = bitcast %union.rec* %109 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 0
  %osucc252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc252, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %110 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  store %union.rec* %106, %union.rec** %opred256, align 8
  store %union.rec* %106, %union.rec** @xx_link, align 8
  %111 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %111, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %112, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp257 = icmp eq %union.rec* %113, null
  br i1 %cmp257, label %cond.true.259, label %cond.false.260

cond.true.259:                                    ; preds = %if.end.236
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.295

cond.false.260:                                   ; preds = %if.end.236
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp261 = icmp eq %union.rec* %115, null
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %cond.false.260
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.293

cond.false.264:                                   ; preds = %cond.false.260
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1265 = bitcast %union.rec* %117 to %struct.word_type*
  %olist266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist266, i32 0, i64 0
  %opred268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx267, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred268, align 8
  store %union.rec* %118, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1269 = bitcast %union.rec* %119 to %struct.word_type*
  %olist270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist270, i32 0, i64 0
  %opred272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx271, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred272, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1273 = bitcast %union.rec* %121 to %struct.word_type*
  %olist274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist274, i32 0, i64 0
  %opred276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx275, i32 0, i32 0
  store %union.rec* %120, %union.rec** %opred276, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1277 = bitcast %union.rec* %123 to %struct.word_type*
  %olist278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist278, i32 0, i64 0
  %opred280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx279, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %opred280, align 8
  %os1281 = bitcast %union.rec* %124 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 0
  %osucc284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 1
  store %union.rec* %122, %union.rec** %osucc284, align 8
  %125 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1285 = bitcast %union.rec* %126 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 0
  %opred288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 0
  store %union.rec* %125, %union.rec** %opred288, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %128 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1289 = bitcast %union.rec* %128 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 0
  %osucc292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 1
  store %union.rec* %127, %union.rec** %osucc292, align 8
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.264, %cond.true.263
  %cond294 = phi %union.rec* [ %116, %cond.true.263 ], [ %127, %cond.false.264 ]
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.end.293, %cond.true.259
  %cond296 = phi %union.rec* [ %114, %cond.true.259 ], [ %cond294, %cond.end.293 ]
  %129 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %129, %union.rec** @zz_res, align 8
  %130 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %130, %union.rec** @zz_hold, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp297 = icmp eq %union.rec* %131, null
  br i1 %cmp297, label %cond.true.299, label %cond.false.300

cond.true.299:                                    ; preds = %cond.end.295
  %132 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.335

cond.false.300:                                   ; preds = %cond.end.295
  %133 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp301 = icmp eq %union.rec* %133, null
  br i1 %cmp301, label %cond.true.303, label %cond.false.304

cond.true.303:                                    ; preds = %cond.false.300
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.333

cond.false.304:                                   ; preds = %cond.false.300
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1305 = bitcast %union.rec* %135 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 1
  %opred308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred308, align 8
  store %union.rec* %136, %union.rec** @zz_tmp, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1309 = bitcast %union.rec* %137 to %struct.word_type*
  %olist310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist310, i32 0, i64 1
  %opred312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx311, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %opred312, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %139 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %opred316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 0
  store %union.rec* %138, %union.rec** %opred316, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1317 = bitcast %union.rec* %141 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 1
  %opred320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 0
  %142 = load %union.rec*, %union.rec** %opred320, align 8
  %os1321 = bitcast %union.rec* %142 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 1
  %osucc324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 1
  store %union.rec* %140, %union.rec** %osucc324, align 8
  %143 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1325 = bitcast %union.rec* %144 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 1
  %opred328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 0
  store %union.rec* %143, %union.rec** %opred328, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  %146 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1329 = bitcast %union.rec* %146 to %struct.word_type*
  %olist330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist330, i32 0, i64 1
  %osucc332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx331, i32 0, i32 1
  store %union.rec* %145, %union.rec** %osucc332, align 8
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.304, %cond.true.303
  %cond334 = phi %union.rec* [ %134, %cond.true.303 ], [ %145, %cond.false.304 ]
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.end.333, %cond.true.299
  %cond336 = phi %union.rec* [ %132, %cond.true.299 ], [ %cond334, %cond.end.333 ]
  store i32 1, i32* %retval
  br label %return

if.else.337:                                      ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.337, %cond.end.335
  %147 = load i32, i32* %retval
  ret i32 %147
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @Constrained(%union.rec* %x, %struct.CONSTRAINT* %xc, i32 %dim, %union.rec** %why) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xc.addr = alloca %struct.CONSTRAINT*, align 8
  %dim.addr = alloca i32, align 4
  %why.addr = alloca %union.rec**, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %lp = alloca %union.rec*, align 8
  %rp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %yc = alloca %struct.CONSTRAINT, align 4
  %hc = alloca %struct.CONSTRAINT, align 4
  %vc = alloca %struct.CONSTRAINT, align 4
  %ratm = alloca i32, align 4
  %xback = alloca i32, align 4
  %xfwd = alloca i32, align 4
  %tb = alloca i32, align 4
  %tf = alloca i32, align 4
  %tbf = alloca i32, align 4
  %tbc = alloca i32, align 4
  %tfc = alloca i32, align 4
  %still_searching = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %xc.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  store %union.rec** %why, %union.rec*** %why.addr, align 8
  %0 = load i32, i32* %dim.addr, align 4
  call void @SetLengthDim(i32 %0)
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 1
  %os112 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os112, i32 0, i32 0
  %6 = load i8, i8* %otype, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %dim.addr, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %land.lhs.true.7, label %lor.lhs.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %8 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %oexternal_ver, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7, %land.lhs.true
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %ou210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os2311 = bitcast %union.SECOND_UNION* %ou210 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2311, i32 0, i32 2
  %bf.load12 = load i16, i16* %oexternal_hor, align 2
  %bf.lshr13 = lshr i16 %bf.load12, 3
  %bf.clear14 = and i16 %bf.lshr13, 1
  %bf.cast15 = zext i16 %bf.clear14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %land.lhs.true.7
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 1
  store i32 8388607, i32* %obfc, align 4
  %12 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %12, i32 0, i32 2
  store i32 8388607, i32* %ofc, align 4
  br label %sw.epilog.773

if.end.18:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load i32, i32* %dim.addr, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os121 = bitcast %union.rec* %14 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %osucc24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %15, %cond.true ], [ %17, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  store i32 0, i32* %ratm, align 4
  %18 = load %union.rec*, %union.rec** %link, align 8
  %os128 = bitcast %union.rec* %18 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %osucc31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %osucc31, align 8
  store %union.rec* %19, %union.rec** %tlink, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %cond.end
  %20 = load %union.rec*, %union.rec** %tlink, align 8
  %os132 = bitcast %union.rec* %20 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %os1134 = bitcast %union.FIRST_UNION* %ou133 to %struct.anon*
  %otype35 = getelementptr inbounds %struct.anon, %struct.anon* %os1134, i32 0, i32 0
  %21 = load i8, i8* %otype35, align 1
  %conv36 = zext i8 %21 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %22 = load %union.rec*, %union.rec** %tlink, align 8
  %os139 = bitcast %union.rec* %22 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %opred42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred42, align 8
  store %union.rec* %23, %union.rec** %g, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body
  %24 = load %union.rec*, %union.rec** %g, align 8
  %os144 = bitcast %union.rec* %24 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %os1146 = bitcast %union.FIRST_UNION* %ou145 to %struct.anon*
  %otype47 = getelementptr inbounds %struct.anon, %struct.anon* %os1146, i32 0, i32 0
  %25 = load i8, i8* %otype47, align 1
  %conv48 = zext i8 %25 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.43
  br label %for.inc

for.inc:                                          ; preds = %for.body.51
  %26 = load %union.rec*, %union.rec** %g, align 8
  %os152 = bitcast %union.rec* %26 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %opred55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred55, align 8
  store %union.rec* %27, %union.rec** %g, align 8
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  %28 = load %union.rec*, %union.rec** %g, align 8
  %os156 = bitcast %union.rec* %28 to %struct.word_type*
  %ou157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 1
  %os1158 = bitcast %union.FIRST_UNION* %ou157 to %struct.anon*
  %otype59 = getelementptr inbounds %struct.anon, %struct.anon* %os1158, i32 0, i32 0
  %29 = load i8, i8* %otype59, align 1
  %conv60 = zext i8 %29 to i32
  %cmp61 = icmp eq i32 %conv60, 1
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.70

land.lhs.true.63:                                 ; preds = %for.end
  %30 = load %union.rec*, %union.rec** %g, align 8
  %os5 = bitcast %union.rec* %30 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %31 = bitcast %struct.GAP* %ogap to i16*
  %bf.load64 = load i16, i16* %31, align 4
  %bf.lshr65 = lshr i16 %bf.load64, 8
  %bf.clear66 = and i16 %bf.lshr65, 1
  %bf.cast67 = zext i16 %bf.clear66 to i32
  %tobool68 = icmp ne i32 %bf.cast67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.63
  store i32 1, i32* %ratm, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.63, %for.end
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %32 = load %union.rec*, %union.rec** %tlink, align 8
  %os172 = bitcast %union.rec* %32 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %osucc75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc75, align 8
  store %union.rec* %33, %union.rec** %tlink, align 8
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %34 = load %union.rec*, %union.rec** %tlink, align 8
  store %union.rec* %34, %union.rec** %y, align 8
  %35 = load %union.rec*, %union.rec** %y, align 8
  %os177 = bitcast %union.rec* %35 to %struct.word_type*
  %ou178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 1
  %os1179 = bitcast %union.FIRST_UNION* %ou178 to %struct.anon*
  %otype80 = getelementptr inbounds %struct.anon, %struct.anon* %os1179, i32 0, i32 0
  %36 = load i8, i8* %otype80, align 1
  %conv81 = zext i8 %36 to i32
  switch i32 %conv81, label %sw.default.765 [
    i32 96, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 35, label %sw.bb
    i32 20, label %sw.bb
    i32 22, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 44, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 9, label %sw.bb
    i32 51, label %sw.bb
    i32 30, label %sw.bb.82
    i32 31, label %sw.bb.82
    i32 32, label %sw.bb.99
    i32 33, label %sw.bb.99
    i32 34, label %sw.bb.117
    i32 50, label %sw.bb.144
    i32 26, label %sw.bb.148
    i32 27, label %sw.bb.148
    i32 38, label %sw.bb.165
    i32 39, label %sw.bb.165
    i32 14, label %sw.bb.292
    i32 13, label %sw.bb.292
    i32 28, label %sw.bb.308
    i32 29, label %sw.bb.308
    i32 8, label %sw.bb.349
    i32 16, label %sw.bb.373
    i32 15, label %sw.bb.373
    i32 19, label %sw.bb.438
    i32 18, label %sw.bb.438
    i32 17, label %sw.bb.438
  ]

sw.bb:                                            ; preds = %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76, %for.end.76
  %37 = load %union.rec*, %union.rec** %y, align 8
  %38 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %39 = load i32, i32* %dim.addr, align 4
  %40 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %37, %struct.CONSTRAINT* %38, i32 %39, %union.rec** %40)
  br label %sw.epilog.773

sw.bb.82:                                         ; preds = %for.end.76, %for.end.76
  %41 = load i32, i32* %dim.addr, align 4
  %cmp83 = icmp eq i32 %41, 0
  %conv84 = zext i1 %cmp83 to i32
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os185 = bitcast %union.rec* %42 to %struct.word_type*
  %ou186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 1
  %os1187 = bitcast %union.FIRST_UNION* %ou186 to %struct.anon*
  %otype88 = getelementptr inbounds %struct.anon, %struct.anon* %os1187, i32 0, i32 0
  %43 = load i8, i8* %otype88, align 1
  %conv89 = zext i8 %43 to i32
  %cmp90 = icmp eq i32 %conv89, 30
  %conv91 = zext i1 %cmp90 to i32
  %cmp92 = icmp ne i32 %conv84, %conv91
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %sw.bb.82
  %44 = load %union.rec*, %union.rec** %y, align 8
  %45 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %46 = load i32, i32* %dim.addr, align 4
  %47 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %44, %struct.CONSTRAINT* %45, i32 %46, %union.rec** %47)
  br label %if.end.98

if.else:                                          ; preds = %sw.bb.82
  %48 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc95 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %48, i32 0, i32 0
  store i32 8388607, i32* %obc95, align 4
  %49 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc96 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %49, i32 0, i32 1
  store i32 8388607, i32* %obfc96, align 4
  %50 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc97 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %50, i32 0, i32 2
  store i32 8388607, i32* %ofc97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.94
  br label %sw.epilog.773

sw.bb.99:                                         ; preds = %for.end.76, %for.end.76
  %51 = load i32, i32* %dim.addr, align 4
  %cmp100 = icmp eq i32 %51, 0
  %conv101 = zext i1 %cmp100 to i32
  %52 = load %union.rec*, %union.rec** %y, align 8
  %os1102 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 1
  %os11104 = bitcast %union.FIRST_UNION* %ou1103 to %struct.anon*
  %otype105 = getelementptr inbounds %struct.anon, %struct.anon* %os11104, i32 0, i32 0
  %53 = load i8, i8* %otype105, align 1
  %conv106 = zext i8 %53 to i32
  %cmp107 = icmp eq i32 %conv106, 32
  %conv108 = zext i1 %cmp107 to i32
  %cmp109 = icmp ne i32 %conv101, %conv108
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %sw.bb.99
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %56 = load i32, i32* %dim.addr, align 4
  %57 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %54, %struct.CONSTRAINT* %55, i32 %56, %union.rec** %57)
  br label %if.end.116

if.else.112:                                      ; preds = %sw.bb.99
  %58 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc113 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %58, i32 0, i32 0
  store i32 8388607, i32* %obc113, align 4
  %59 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc114 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %59, i32 0, i32 1
  store i32 8388607, i32* %obfc114, align 4
  %60 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc115 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %60, i32 0, i32 2
  store i32 8388607, i32* %ofc115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.112, %if.then.111
  br label %sw.epilog.773

sw.bb.117:                                        ; preds = %for.end.76
  %61 = load %union.rec*, %union.rec** %y, align 8
  %62 = load i32, i32* %dim.addr, align 4
  %63 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %61, %struct.CONSTRAINT* %yc, i32 %62, %union.rec** %63)
  %64 = load i32, i32* %dim.addr, align 4
  %cmp118 = icmp eq i32 %64, 0
  br i1 %cmp118, label %land.lhs.true.120, label %if.else.128

land.lhs.true.120:                                ; preds = %sw.bb.117
  %65 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %65 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc121 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  %66 = load i32, i32* %obc121, align 4
  %cmp122 = icmp eq i32 %66, 0
  br i1 %cmp122, label %if.then.124, label %if.else.128

if.then.124:                                      ; preds = %land.lhs.true.120
  %67 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc125 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %67, i32 0, i32 0
  store i32 8388607, i32* %obc125, align 4
  %68 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc126 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %68, i32 0, i32 1
  store i32 8388607, i32* %obfc126, align 4
  %69 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %69, i32 0, i32 2
  store i32 8388607, i32* %ofc127, align 4
  br label %if.end.143

if.else.128:                                      ; preds = %land.lhs.true.120, %sw.bb.117
  %70 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %71 = load i32, i32* %dim.addr, align 4
  %cmp129 = icmp eq i32 %71, 0
  br i1 %cmp129, label %cond.true.131, label %cond.false.136

cond.true.131:                                    ; preds = %if.else.128
  %72 = load %union.rec*, %union.rec** %y, align 8
  %os2132 = bitcast %union.rec* %72 to %struct.closure_type*
  %ou4133 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2132, i32 0, i32 4
  %oconstraint134 = bitcast %union.FOURTH_UNION* %ou4133 to %struct.CONSTRAINT*
  %obc135 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint134, i32 0, i32 0
  %73 = load i32, i32* %obc135, align 4
  br label %cond.end.141

cond.false.136:                                   ; preds = %if.else.128
  %74 = load %union.rec*, %union.rec** %y, align 8
  %os2137 = bitcast %union.rec* %74 to %struct.closure_type*
  %ou4138 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2137, i32 0, i32 4
  %oconstraint139 = bitcast %union.FOURTH_UNION* %ou4138 to %struct.CONSTRAINT*
  %ofc140 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint139, i32 0, i32 2
  %75 = load i32, i32* %ofc140, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.136, %cond.true.131
  %cond142 = phi i32 [ %73, %cond.true.131 ], [ %75, %cond.false.136 ]
  call void @InvScaleConstraint(%struct.CONSTRAINT* %70, i32 %cond142, %struct.CONSTRAINT* %yc)
  br label %if.end.143

if.end.143:                                       ; preds = %cond.end.141, %if.then.124
  br label %sw.epilog.773

sw.bb.144:                                        ; preds = %for.end.76
  %76 = load %union.rec*, %union.rec** %y, align 8
  %77 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %76, %struct.CONSTRAINT* %hc, i32 0, %union.rec** %77)
  %78 = load %union.rec*, %union.rec** %y, align 8
  %79 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %78, %struct.CONSTRAINT* %vc, i32 1, %union.rec** %79)
  %80 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %81 = load %union.rec*, %union.rec** %x.addr, align 8
  %82 = load %union.rec*, %union.rec** %y, align 8
  %os2145 = bitcast %union.rec* %82 to %struct.closure_type*
  %ou4146 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2145, i32 0, i32 4
  %oconstraint147 = bitcast %union.FOURTH_UNION* %ou4146 to %struct.CONSTRAINT*
  %osparec = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint147, i32 0, i32 3
  %83 = load i32, i32* %osparec, align 4
  %84 = load i32, i32* %dim.addr, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %80, %union.rec* %81, i32 %83, %struct.CONSTRAINT* %hc, %struct.CONSTRAINT* %vc, i32 %84)
  br label %sw.epilog.773

sw.bb.148:                                        ; preds = %for.end.76, %for.end.76
  %85 = load %union.rec*, %union.rec** %y, align 8
  %86 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %87 = load i32, i32* %dim.addr, align 4
  %88 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %85, %struct.CONSTRAINT* %86, i32 %87, %union.rec** %88)
  %89 = load %union.rec*, %union.rec** %y, align 8
  %os1149 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %os11151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.anon*
  %otype152 = getelementptr inbounds %struct.anon, %struct.anon* %os11151, i32 0, i32 0
  %90 = load i8, i8* %otype152, align 1
  %conv153 = zext i8 %90 to i32
  %cmp154 = icmp eq i32 %conv153, 26
  %conv155 = zext i1 %cmp154 to i32
  %91 = load i32, i32* %dim.addr, align 4
  %cmp156 = icmp eq i32 %91, 0
  %conv157 = zext i1 %cmp156 to i32
  %cmp158 = icmp eq i32 %conv155, %conv157
  br i1 %cmp158, label %if.then.160, label %if.end.164

if.then.160:                                      ; preds = %sw.bb.148
  %92 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %93 = load %union.rec*, %union.rec** %y, align 8
  %os2161 = bitcast %union.rec* %93 to %struct.closure_type*
  %ou4162 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2161, i32 0, i32 4
  %oconstraint163 = bitcast %union.FOURTH_UNION* %ou4162 to %struct.CONSTRAINT*
  call void @MinConstraint(%struct.CONSTRAINT* %92, %struct.CONSTRAINT* %oconstraint163)
  %94 = load %union.rec*, %union.rec** %y, align 8
  %95 = load %union.rec**, %union.rec*** %why.addr, align 8
  store %union.rec* %94, %union.rec** %95, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.160, %sw.bb.148
  br label %sw.epilog.773

sw.bb.165:                                        ; preds = %for.end.76, %for.end.76
  %96 = load %union.rec*, %union.rec** %y, align 8
  %os1166 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 1
  %os11168 = bitcast %union.FIRST_UNION* %ou1167 to %struct.anon*
  %otype169 = getelementptr inbounds %struct.anon, %struct.anon* %os11168, i32 0, i32 0
  %97 = load i8, i8* %otype169, align 1
  %conv170 = zext i8 %97 to i32
  %cmp171 = icmp eq i32 %conv170, 38
  %conv172 = zext i1 %cmp171 to i32
  %98 = load i32, i32* %dim.addr, align 4
  %cmp173 = icmp eq i32 %98, 0
  %conv174 = zext i1 %cmp173 to i32
  %cmp175 = icmp eq i32 %conv172, %conv174
  br i1 %cmp175, label %if.then.177, label %if.else.290

if.then.177:                                      ; preds = %sw.bb.165
  store i32 1, i32* %still_searching, align 4
  %99 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %99, %union.rec** %z, align 8
  %100 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %100 to i64
  %101 = load %union.rec*, %union.rec** %z, align 8
  %os1178 = bitcast %union.rec* %101 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  %102 = load i32, i32* %arrayidx179, align 4
  %103 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc180 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %103, i32 0, i32 0
  store i32 %102, i32* %obc180, align 4
  %104 = load i32, i32* %dim.addr, align 4
  %idxprom181 = sext i32 %104 to i64
  %105 = load %union.rec*, %union.rec** %z, align 8
  %os1182 = bitcast %union.rec* %105 to %struct.word_type*
  %ou3183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 3
  %os31184 = bitcast %union.THIRD_UNION* %ou3183 to %struct.anon.6*
  %oback185 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x i32], [2 x i32]* %oback185, i32 0, i64 %idxprom181
  %106 = load i32, i32* %arrayidx186, align 4
  %107 = load i32, i32* %dim.addr, align 4
  %idxprom187 = sext i32 %107 to i64
  %108 = load %union.rec*, %union.rec** %z, align 8
  %os1188 = bitcast %union.rec* %108 to %struct.word_type*
  %ou3189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 3
  %os31190 = bitcast %union.THIRD_UNION* %ou3189 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31190, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom187
  %109 = load i32, i32* %arrayidx191, align 4
  %add = add nsw i32 %106, %109
  %110 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc192 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %110, i32 0, i32 1
  store i32 %add, i32* %obfc192, align 4
  %111 = load i32, i32* %dim.addr, align 4
  %idxprom193 = sext i32 %111 to i64
  %112 = load %union.rec*, %union.rec** %z, align 8
  %os1194 = bitcast %union.rec* %112 to %struct.word_type*
  %ou3195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 3
  %os31196 = bitcast %union.THIRD_UNION* %ou3195 to %struct.anon.6*
  %ofwd197 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31196, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd197, i32 0, i64 %idxprom193
  %113 = load i32, i32* %arrayidx198, align 4
  %114 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc199 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %114, i32 0, i32 2
  store i32 %113, i32* %ofc199, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.177
  %115 = load i32, i32* %still_searching, align 4
  %tobool200 = icmp ne i32 %115, 0
  br i1 %tobool200, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %116 = load %union.rec*, %union.rec** %z, align 8
  %os1201 = bitcast %union.rec* %116 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %osucc204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 1
  %117 = load %union.rec*, %union.rec** %osucc204, align 8
  %118 = load %union.rec*, %union.rec** %z, align 8
  %cmp205 = icmp ne %union.rec* %117, %118
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %119 = phi i1 [ false, %while.cond ], [ %cmp205, %land.rhs ]
  br i1 %119, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %120 = load i32, i32* %dim.addr, align 4
  %cmp207 = icmp eq i32 %120, 0
  br i1 %cmp207, label %cond.true.209, label %cond.false.214

cond.true.209:                                    ; preds = %while.body
  %121 = load %union.rec*, %union.rec** %z, align 8
  %os1210 = bitcast %union.rec* %121 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %osucc213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 1
  %122 = load %union.rec*, %union.rec** %osucc213, align 8
  br label %cond.end.219

cond.false.214:                                   ; preds = %while.body
  %123 = load %union.rec*, %union.rec** %z, align 8
  %os1215 = bitcast %union.rec* %123 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 1
  %opred218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %opred218, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.214, %cond.true.209
  %cond220 = phi %union.rec* [ %122, %cond.true.209 ], [ %124, %cond.false.214 ]
  %os1221 = bitcast %union.rec* %cond220 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 0
  %opred224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %opred224, align 8
  store %union.rec* %125, %union.rec** %z, align 8
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.234, %cond.end.219
  %126 = load %union.rec*, %union.rec** %z, align 8
  %os1226 = bitcast %union.rec* %126 to %struct.word_type*
  %ou1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 1
  %os11228 = bitcast %union.FIRST_UNION* %ou1227 to %struct.anon*
  %otype229 = getelementptr inbounds %struct.anon, %struct.anon* %os11228, i32 0, i32 0
  %127 = load i8, i8* %otype229, align 1
  %conv230 = zext i8 %127 to i32
  %cmp231 = icmp eq i32 %conv230, 0
  br i1 %cmp231, label %for.body.233, label %for.end.239

for.body.233:                                     ; preds = %for.cond.225
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.body.233
  %128 = load %union.rec*, %union.rec** %z, align 8
  %os1235 = bitcast %union.rec* %128 to %struct.word_type*
  %olist236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist236, i32 0, i64 0
  %opred238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx237, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %opred238, align 8
  store %union.rec* %129, %union.rec** %z, align 8
  br label %for.cond.225

for.end.239:                                      ; preds = %for.cond.225
  %130 = load %union.rec*, %union.rec** %z, align 8
  %os1240 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 1
  %os11242 = bitcast %union.FIRST_UNION* %ou1241 to %struct.anon*
  %otype243 = getelementptr inbounds %struct.anon, %struct.anon* %os11242, i32 0, i32 0
  %131 = load i8, i8* %otype243, align 1
  %conv244 = zext i8 %131 to i32
  switch i32 %conv244, label %sw.default [
    i32 39, label %sw.bb.245
    i32 38, label %sw.bb.245
    i32 16, label %sw.bb.245
    i32 15, label %sw.bb.245
    i32 24, label %sw.bb.245
    i32 25, label %sw.bb.245
    i32 36, label %sw.bb.245
    i32 37, label %sw.bb.245
    i32 9, label %sw.bb.245
    i32 43, label %sw.bb.245
    i32 42, label %sw.bb.245
    i32 13, label %sw.bb.274
    i32 14, label %sw.bb.274
  ]

sw.bb.245:                                        ; preds = %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239, %for.end.239
  %132 = load i32, i32* %dim.addr, align 4
  %idxprom246 = sext i32 %132 to i64
  %133 = load %union.rec*, %union.rec** %z, align 8
  %os1247 = bitcast %union.rec* %133 to %struct.word_type*
  %ou3248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 3
  %os31249 = bitcast %union.THIRD_UNION* %ou3248 to %struct.anon.6*
  %oback250 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x i32], [2 x i32]* %oback250, i32 0, i64 %idxprom246
  %134 = load i32, i32* %arrayidx251, align 4
  %135 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc252 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %135, i32 0, i32 0
  store i32 %134, i32* %obc252, align 4
  %136 = load i32, i32* %dim.addr, align 4
  %idxprom253 = sext i32 %136 to i64
  %137 = load %union.rec*, %union.rec** %z, align 8
  %os1254 = bitcast %union.rec* %137 to %struct.word_type*
  %ou3255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 3
  %os31256 = bitcast %union.THIRD_UNION* %ou3255 to %struct.anon.6*
  %oback257 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x i32], [2 x i32]* %oback257, i32 0, i64 %idxprom253
  %138 = load i32, i32* %arrayidx258, align 4
  %139 = load i32, i32* %dim.addr, align 4
  %idxprom259 = sext i32 %139 to i64
  %140 = load %union.rec*, %union.rec** %z, align 8
  %os1260 = bitcast %union.rec* %140 to %struct.word_type*
  %ou3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 3
  %os31262 = bitcast %union.THIRD_UNION* %ou3261 to %struct.anon.6*
  %ofwd263 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31262, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd263, i32 0, i64 %idxprom259
  %141 = load i32, i32* %arrayidx264, align 4
  %add265 = add nsw i32 %138, %141
  %142 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc266 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %142, i32 0, i32 1
  store i32 %add265, i32* %obfc266, align 4
  %143 = load i32, i32* %dim.addr, align 4
  %idxprom267 = sext i32 %143 to i64
  %144 = load %union.rec*, %union.rec** %z, align 8
  %os1268 = bitcast %union.rec* %144 to %struct.word_type*
  %ou3269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 3
  %os31270 = bitcast %union.THIRD_UNION* %ou3269 to %struct.anon.6*
  %ofwd271 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31270, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd271, i32 0, i64 %idxprom267
  %145 = load i32, i32* %arrayidx272, align 4
  %146 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc273 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %146, i32 0, i32 2
  store i32 %145, i32* %ofc273, align 4
  br label %sw.epilog

sw.bb.274:                                        ; preds = %for.end.239, %for.end.239
  %147 = load %union.rec*, %union.rec** %z, align 8
  %os2275 = bitcast %union.rec* %147 to %struct.closure_type*
  %ou4276 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2275, i32 0, i32 4
  %oconstraint277 = bitcast %union.FOURTH_UNION* %ou4276 to %struct.CONSTRAINT*
  %obc278 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint277, i32 0, i32 0
  %148 = load i32, i32* %obc278, align 4
  %149 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc279 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %149, i32 0, i32 0
  store i32 %148, i32* %obc279, align 4
  %150 = load %union.rec*, %union.rec** %z, align 8
  %os2280 = bitcast %union.rec* %150 to %struct.closure_type*
  %ou4281 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2280, i32 0, i32 4
  %oconstraint282 = bitcast %union.FOURTH_UNION* %ou4281 to %struct.CONSTRAINT*
  %obfc283 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint282, i32 0, i32 1
  %151 = load i32, i32* %obfc283, align 4
  %152 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc284 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %152, i32 0, i32 1
  store i32 %151, i32* %obfc284, align 4
  %153 = load %union.rec*, %union.rec** %z, align 8
  %os2285 = bitcast %union.rec* %153 to %struct.closure_type*
  %ou4286 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2285, i32 0, i32 4
  %oconstraint287 = bitcast %union.FOURTH_UNION* %ou4286 to %struct.CONSTRAINT*
  %ofc288 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint287, i32 0, i32 2
  %154 = load i32, i32* %ofc288, align 4
  %155 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc289 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %155, i32 0, i32 2
  store i32 %154, i32* %ofc289, align 4
  store i32 0, i32* %still_searching, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.239
  store i32 0, i32* %still_searching, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.274, %sw.bb.245
  br label %while.cond

while.end:                                        ; preds = %land.end
  %156 = load %union.rec*, %union.rec** %y, align 8
  %157 = load %union.rec**, %union.rec*** %why.addr, align 8
  store %union.rec* %156, %union.rec** %157, align 8
  br label %if.end.291

if.else.290:                                      ; preds = %sw.bb.165
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %160 = load i32, i32* %dim.addr, align 4
  %161 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %158, %struct.CONSTRAINT* %159, i32 %160, %union.rec** %161)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.290, %while.end
  br label %sw.epilog.773

sw.bb.292:                                        ; preds = %for.end.76, %for.end.76
  %162 = load %union.rec*, %union.rec** %y, align 8
  %os2293 = bitcast %union.rec* %162 to %struct.closure_type*
  %ou4294 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2293, i32 0, i32 4
  %oconstraint295 = bitcast %union.FOURTH_UNION* %ou4294 to %struct.CONSTRAINT*
  %obc296 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint295, i32 0, i32 0
  %163 = load i32, i32* %obc296, align 4
  %164 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc297 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %164, i32 0, i32 0
  store i32 %163, i32* %obc297, align 4
  %165 = load %union.rec*, %union.rec** %y, align 8
  %os2298 = bitcast %union.rec* %165 to %struct.closure_type*
  %ou4299 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2298, i32 0, i32 4
  %oconstraint300 = bitcast %union.FOURTH_UNION* %ou4299 to %struct.CONSTRAINT*
  %obfc301 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint300, i32 0, i32 1
  %166 = load i32, i32* %obfc301, align 4
  %167 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc302 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %167, i32 0, i32 1
  store i32 %166, i32* %obfc302, align 4
  %168 = load %union.rec*, %union.rec** %y, align 8
  %os2303 = bitcast %union.rec* %168 to %struct.closure_type*
  %ou4304 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2303, i32 0, i32 4
  %oconstraint305 = bitcast %union.FOURTH_UNION* %ou4304 to %struct.CONSTRAINT*
  %ofc306 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint305, i32 0, i32 2
  %169 = load i32, i32* %ofc306, align 4
  %170 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc307 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %170, i32 0, i32 2
  store i32 %169, i32* %ofc307, align 4
  br label %sw.epilog.773

sw.bb.308:                                        ; preds = %for.end.76, %for.end.76
  %171 = load %union.rec*, %union.rec** %y, align 8
  %os1309 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 1
  %os11311 = bitcast %union.FIRST_UNION* %ou1310 to %struct.anon*
  %otype312 = getelementptr inbounds %struct.anon, %struct.anon* %os11311, i32 0, i32 0
  %172 = load i8, i8* %otype312, align 1
  %conv313 = zext i8 %172 to i32
  %cmp314 = icmp eq i32 %conv313, 28
  %conv315 = zext i1 %cmp314 to i32
  %173 = load i32, i32* %dim.addr, align 4
  %cmp316 = icmp eq i32 %173, 0
  %conv317 = zext i1 %cmp316 to i32
  %cmp318 = icmp eq i32 %conv315, %conv317
  br i1 %cmp318, label %if.then.320, label %if.else.347

if.then.320:                                      ; preds = %sw.bb.308
  %174 = load %union.rec*, %union.rec** %y, align 8
  %175 = load i32, i32* %dim.addr, align 4
  %176 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %174, %struct.CONSTRAINT* %yc, i32 %175, %union.rec** %176)
  %177 = load %union.rec*, %union.rec** %y, align 8
  %178 = load %union.rec*, %union.rec** %x.addr, align 8
  %179 = load i32, i32* %dim.addr, align 4
  %call321 = call i32 @FindShift(%union.rec* %177, %union.rec* %178, i32 %179)
  store i32 %call321, i32* %tf, align 4
  %obc322 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %180 = load i32, i32* %obc322, align 4
  %obfc323 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %181 = load i32, i32* %obfc323, align 4
  %cmp324 = icmp slt i32 %180, %181
  br i1 %cmp324, label %cond.true.326, label %cond.false.328

cond.true.326:                                    ; preds = %if.then.320
  %obc327 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %182 = load i32, i32* %obc327, align 4
  br label %cond.end.330

cond.false.328:                                   ; preds = %if.then.320
  %obfc329 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %183 = load i32, i32* %obfc329, align 4
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.328, %cond.true.326
  %cond331 = phi i32 [ %182, %cond.true.326 ], [ %183, %cond.false.328 ]
  %184 = load i32, i32* %tf, align 4
  %sub = sub nsw i32 %cond331, %184
  %185 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc332 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %185, i32 0, i32 0
  store i32 %sub, i32* %obc332, align 4
  %obfc333 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %186 = load i32, i32* %obfc333, align 4
  %187 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc334 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %187, i32 0, i32 1
  store i32 %186, i32* %obfc334, align 4
  %ofc335 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %188 = load i32, i32* %ofc335, align 4
  %obfc336 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %189 = load i32, i32* %obfc336, align 4
  %cmp337 = icmp slt i32 %188, %189
  br i1 %cmp337, label %cond.true.339, label %cond.false.341

cond.true.339:                                    ; preds = %cond.end.330
  %ofc340 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %190 = load i32, i32* %ofc340, align 4
  br label %cond.end.343

cond.false.341:                                   ; preds = %cond.end.330
  %obfc342 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %191 = load i32, i32* %obfc342, align 4
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.341, %cond.true.339
  %cond344 = phi i32 [ %190, %cond.true.339 ], [ %191, %cond.false.341 ]
  %192 = load i32, i32* %tf, align 4
  %add345 = add nsw i32 %cond344, %192
  %193 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc346 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %193, i32 0, i32 2
  store i32 %add345, i32* %ofc346, align 4
  br label %if.end.348

if.else.347:                                      ; preds = %sw.bb.308
  %194 = load %union.rec*, %union.rec** %y, align 8
  %195 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %196 = load i32, i32* %dim.addr, align 4
  %197 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %194, %struct.CONSTRAINT* %195, i32 %196, %union.rec** %197)
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.347, %cond.end.343
  br label %sw.epilog.773

sw.bb.349:                                        ; preds = %for.end.76
  %198 = load i32, i32* %dim.addr, align 4
  %cmp350 = icmp eq i32 %198, 1
  br i1 %cmp350, label %if.then.352, label %if.else.356

if.then.352:                                      ; preds = %sw.bb.349
  %199 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc353 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %199, i32 0, i32 0
  store i32 8388607, i32* %obc353, align 4
  %200 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc354 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %200, i32 0, i32 1
  store i32 8388607, i32* %obfc354, align 4
  %201 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc355 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %201, i32 0, i32 2
  store i32 8388607, i32* %ofc355, align 4
  br label %if.end.372

if.else.356:                                      ; preds = %sw.bb.349
  %202 = load %union.rec*, %union.rec** %y, align 8
  %os2357 = bitcast %union.rec* %202 to %struct.closure_type*
  %ou4358 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2357, i32 0, i32 4
  %oconstraint359 = bitcast %union.FOURTH_UNION* %ou4358 to %struct.CONSTRAINT*
  %obc360 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint359, i32 0, i32 0
  %203 = load i32, i32* %obc360, align 4
  %obc361 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %203, i32* %obc361, align 4
  %204 = load %union.rec*, %union.rec** %y, align 8
  %os2362 = bitcast %union.rec* %204 to %struct.closure_type*
  %ou4363 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2362, i32 0, i32 4
  %oconstraint364 = bitcast %union.FOURTH_UNION* %ou4363 to %struct.CONSTRAINT*
  %obfc365 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint364, i32 0, i32 1
  %205 = load i32, i32* %obfc365, align 4
  %obfc366 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %205, i32* %obfc366, align 4
  %206 = load %union.rec*, %union.rec** %y, align 8
  %os2367 = bitcast %union.rec* %206 to %struct.closure_type*
  %ou4368 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2367, i32 0, i32 4
  %oconstraint369 = bitcast %union.FOURTH_UNION* %ou4368 to %struct.CONSTRAINT*
  %ofc370 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint369, i32 0, i32 2
  %207 = load i32, i32* %ofc370, align 4
  %ofc371 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %207, i32* %ofc371, align 4
  br label %REST_OF_HEAD

if.end.372:                                       ; preds = %if.then.352
  br label %sw.epilog.773

sw.bb.373:                                        ; preds = %for.end.76, %for.end.76
  %208 = load %union.rec*, %union.rec** %y, align 8
  %os1374 = bitcast %union.rec* %208 to %struct.word_type*
  %ou1375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 1
  %os11376 = bitcast %union.FIRST_UNION* %ou1375 to %struct.anon*
  %otype377 = getelementptr inbounds %struct.anon, %struct.anon* %os11376, i32 0, i32 0
  %209 = load i8, i8* %otype377, align 1
  %conv378 = zext i8 %209 to i32
  %cmp379 = icmp eq i32 %conv378, 16
  %conv380 = zext i1 %cmp379 to i32
  %210 = load i32, i32* %dim.addr, align 4
  %cmp381 = icmp eq i32 %210, 0
  %conv382 = zext i1 %cmp381 to i32
  %cmp383 = icmp eq i32 %conv380, %conv382
  br i1 %cmp383, label %if.end.387, label %if.then.385

if.then.385:                                      ; preds = %sw.bb.373
  %211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call386 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.385, %sw.bb.373
  %212 = load %union.rec*, %union.rec** %y, align 8
  %213 = load i32, i32* %dim.addr, align 4
  %214 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %212, %struct.CONSTRAINT* %yc, i32 %213, %union.rec** %214)
  %obfc388 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %215 = load i32, i32* %obfc388, align 4
  %cmp389 = icmp eq i32 %215, 8388607
  br i1 %cmp389, label %cond.true.391, label %cond.false.392

cond.true.391:                                    ; preds = %if.end.387
  br label %cond.end.401

cond.false.392:                                   ; preds = %if.end.387
  %obfc393 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %216 = load i32, i32* %obfc393, align 4
  %217 = load i32, i32* %dim.addr, align 4
  %idxprom394 = sext i32 %217 to i64
  %218 = load %union.rec*, %union.rec** %y, align 8
  %os1395 = bitcast %union.rec* %218 to %struct.word_type*
  %ou3396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 3
  %os31397 = bitcast %union.THIRD_UNION* %ou3396 to %struct.anon.6*
  %ofwd398 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31397, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd398, i32 0, i64 %idxprom394
  %219 = load i32, i32* %arrayidx399, align 4
  %sub400 = sub nsw i32 %216, %219
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.392, %cond.true.391
  %cond402 = phi i32 [ 8388607, %cond.true.391 ], [ %sub400, %cond.false.392 ]
  store i32 %cond402, i32* %tb, align 4
  %obc403 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %220 = load i32, i32* %obc403, align 4
  %221 = load i32, i32* %tb, align 4
  %cmp404 = icmp slt i32 %220, %221
  br i1 %cmp404, label %cond.true.406, label %cond.false.408

cond.true.406:                                    ; preds = %cond.end.401
  %obc407 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %222 = load i32, i32* %obc407, align 4
  br label %cond.end.409

cond.false.408:                                   ; preds = %cond.end.401
  %223 = load i32, i32* %tb, align 4
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.408, %cond.true.406
  %cond410 = phi i32 [ %222, %cond.true.406 ], [ %223, %cond.false.408 ]
  store i32 %cond410, i32* %tb, align 4
  %obfc411 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %224 = load i32, i32* %obfc411, align 4
  %cmp412 = icmp eq i32 %224, 8388607
  br i1 %cmp412, label %cond.true.414, label %cond.false.415

cond.true.414:                                    ; preds = %cond.end.409
  br label %cond.end.424

cond.false.415:                                   ; preds = %cond.end.409
  %obfc416 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %225 = load i32, i32* %obfc416, align 4
  %226 = load i32, i32* %dim.addr, align 4
  %idxprom417 = sext i32 %226 to i64
  %227 = load %union.rec*, %union.rec** %y, align 8
  %os1418 = bitcast %union.rec* %227 to %struct.word_type*
  %ou3419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1418, i32 0, i32 3
  %os31420 = bitcast %union.THIRD_UNION* %ou3419 to %struct.anon.6*
  %oback421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x i32], [2 x i32]* %oback421, i32 0, i64 %idxprom417
  %228 = load i32, i32* %arrayidx422, align 4
  %sub423 = sub nsw i32 %225, %228
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.415, %cond.true.414
  %cond425 = phi i32 [ 8388607, %cond.true.414 ], [ %sub423, %cond.false.415 ]
  store i32 %cond425, i32* %tf, align 4
  %ofc426 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %229 = load i32, i32* %ofc426, align 4
  %230 = load i32, i32* %tf, align 4
  %cmp427 = icmp slt i32 %229, %230
  br i1 %cmp427, label %cond.true.429, label %cond.false.431

cond.true.429:                                    ; preds = %cond.end.424
  %ofc430 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %231 = load i32, i32* %ofc430, align 4
  br label %cond.end.432

cond.false.431:                                   ; preds = %cond.end.424
  %232 = load i32, i32* %tf, align 4
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.431, %cond.true.429
  %cond433 = phi i32 [ %231, %cond.true.429 ], [ %232, %cond.false.431 ]
  store i32 %cond433, i32* %tf, align 4
  %233 = load i32, i32* %tb, align 4
  %234 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc434 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %234, i32 0, i32 0
  store i32 %233, i32* %obc434, align 4
  %obfc435 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %235 = load i32, i32* %obfc435, align 4
  %236 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc436 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %236, i32 0, i32 1
  store i32 %235, i32* %obfc436, align 4
  %237 = load i32, i32* %tf, align 4
  %238 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc437 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %238, i32 0, i32 2
  store i32 %237, i32* %ofc437, align 4
  br label %sw.epilog.773

sw.bb.438:                                        ; preds = %for.end.76, %for.end.76, %for.end.76
  %239 = load %union.rec*, %union.rec** %y, align 8
  %os1439 = bitcast %union.rec* %239 to %struct.word_type*
  %ou1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 1
  %os11441 = bitcast %union.FIRST_UNION* %ou1440 to %struct.anon*
  %otype442 = getelementptr inbounds %struct.anon, %struct.anon* %os11441, i32 0, i32 0
  %240 = load i8, i8* %otype442, align 1
  %conv443 = zext i8 %240 to i32
  %cmp444 = icmp eq i32 %conv443, 19
  %conv445 = zext i1 %cmp444 to i32
  %241 = load i32, i32* %dim.addr, align 4
  %cmp446 = icmp eq i32 %241, 1
  %conv447 = zext i1 %cmp446 to i32
  %cmp448 = icmp eq i32 %conv445, %conv447
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %sw.bb.438
  %242 = load %union.rec*, %union.rec** %x.addr, align 8
  %243 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %244 = load i32, i32* %ratm, align 4
  %245 = load %union.rec*, %union.rec** %y, align 8
  %246 = load i32, i32* %dim.addr, align 4
  %247 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @CatConstrained(%union.rec* %242, %struct.CONSTRAINT* %243, i32 %244, %union.rec* %245, i32 %246, %union.rec** %247)
  br label %sw.epilog.773

if.end.451:                                       ; preds = %sw.bb.438
  %248 = load %union.rec*, %union.rec** %y, align 8
  %249 = load i32, i32* %dim.addr, align 4
  %250 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %248, %struct.CONSTRAINT* %yc, i32 %249, %union.rec** %250)
  %obc452 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %251 = load i32, i32* %obc452, align 4
  %cmp453 = icmp ne i32 %251, 8388607
  br i1 %cmp453, label %if.else.467, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %if.end.451
  %obfc456 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %252 = load i32, i32* %obfc456, align 4
  %cmp457 = icmp ne i32 %252, 8388607
  br i1 %cmp457, label %if.else.467, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %lor.lhs.false.455
  %ofc460 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %253 = load i32, i32* %ofc460, align 4
  %cmp461 = icmp ne i32 %253, 8388607
  br i1 %cmp461, label %if.else.467, label %if.then.463

if.then.463:                                      ; preds = %lor.lhs.false.459
  %254 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc464 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %254, i32 0, i32 0
  store i32 8388607, i32* %obc464, align 4
  %255 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc465 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %255, i32 0, i32 1
  store i32 8388607, i32* %obfc465, align 4
  %256 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc466 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %256, i32 0, i32 2
  store i32 8388607, i32* %ofc466, align 4
  br label %if.end.764

if.else.467:                                      ; preds = %lor.lhs.false.459, %lor.lhs.false.455, %if.end.451
  br label %REST_OF_HEAD

REST_OF_HEAD:                                     ; preds = %if.else.467, %if.else.356
  %257 = load %union.rec*, %union.rec** %link, align 8
  %os1468 = bitcast %union.rec* %257 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 0
  %opred471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 0
  %258 = load %union.rec*, %union.rec** %opred471, align 8
  store %union.rec* %258, %union.rec** %lp, align 8
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.512, %REST_OF_HEAD
  %259 = load %union.rec*, %union.rec** %lp, align 8
  %260 = load %union.rec*, %union.rec** %y, align 8
  %cmp473 = icmp ne %union.rec* %259, %260
  br i1 %cmp473, label %for.body.475, label %for.end.517

for.body.475:                                     ; preds = %for.cond.472
  %261 = load %union.rec*, %union.rec** %lp, align 8
  %os1476 = bitcast %union.rec* %261 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 1
  %opred479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %opred479, align 8
  store %union.rec* %262, %union.rec** %z, align 8
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.489, %for.body.475
  %263 = load %union.rec*, %union.rec** %z, align 8
  %os1481 = bitcast %union.rec* %263 to %struct.word_type*
  %ou1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 1
  %os11483 = bitcast %union.FIRST_UNION* %ou1482 to %struct.anon*
  %otype484 = getelementptr inbounds %struct.anon, %struct.anon* %os11483, i32 0, i32 0
  %264 = load i8, i8* %otype484, align 1
  %conv485 = zext i8 %264 to i32
  %cmp486 = icmp eq i32 %conv485, 0
  br i1 %cmp486, label %for.body.488, label %for.end.494

for.body.488:                                     ; preds = %for.cond.480
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.488
  %265 = load %union.rec*, %union.rec** %z, align 8
  %os1490 = bitcast %union.rec* %265 to %struct.word_type*
  %olist491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1490, i32 0, i32 0
  %arrayidx492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist491, i32 0, i64 1
  %opred493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx492, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %opred493, align 8
  store %union.rec* %266, %union.rec** %z, align 8
  br label %for.cond.480

for.end.494:                                      ; preds = %for.cond.480
  %267 = load %union.rec*, %union.rec** %z, align 8
  %os1495 = bitcast %union.rec* %267 to %struct.word_type*
  %ou1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 1
  %os11497 = bitcast %union.FIRST_UNION* %ou1496 to %struct.anon*
  %otype498 = getelementptr inbounds %struct.anon, %struct.anon* %os11497, i32 0, i32 0
  %268 = load i8, i8* %otype498, align 1
  %conv499 = zext i8 %268 to i32
  %cmp500 = icmp eq i32 %conv499, 1
  br i1 %cmp500, label %land.lhs.true.502, label %if.end.511

land.lhs.true.502:                                ; preds = %for.end.494
  %269 = load %union.rec*, %union.rec** %z, align 8
  %os5503 = bitcast %union.rec* %269 to %struct.gapobj_type*
  %ogap504 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5503, i32 0, i32 3
  %270 = bitcast %struct.GAP* %ogap504 to i16*
  %bf.load505 = load i16, i16* %270, align 4
  %bf.lshr506 = lshr i16 %bf.load505, 9
  %bf.clear507 = and i16 %bf.lshr506, 1
  %bf.cast508 = zext i16 %bf.clear507 to i32
  %tobool509 = icmp ne i32 %bf.cast508, 0
  br i1 %tobool509, label %if.end.511, label %if.then.510

if.then.510:                                      ; preds = %land.lhs.true.502
  br label %for.end.517

if.end.511:                                       ; preds = %land.lhs.true.502, %for.end.494
  br label %for.inc.512

for.inc.512:                                      ; preds = %if.end.511
  %271 = load %union.rec*, %union.rec** %lp, align 8
  %os1513 = bitcast %union.rec* %271 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 0
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred516, align 8
  store %union.rec* %272, %union.rec** %lp, align 8
  br label %for.cond.472

for.end.517:                                      ; preds = %if.then.510, %for.cond.472
  %273 = load %union.rec*, %union.rec** %link, align 8
  %os1518 = bitcast %union.rec* %273 to %struct.word_type*
  %olist519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist519, i32 0, i64 0
  %osucc521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx520, i32 0, i32 1
  %274 = load %union.rec*, %union.rec** %osucc521, align 8
  store %union.rec* %274, %union.rec** %rp, align 8
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.562, %for.end.517
  %275 = load %union.rec*, %union.rec** %rp, align 8
  %276 = load %union.rec*, %union.rec** %y, align 8
  %cmp523 = icmp ne %union.rec* %275, %276
  br i1 %cmp523, label %for.body.525, label %for.end.567

for.body.525:                                     ; preds = %for.cond.522
  %277 = load %union.rec*, %union.rec** %rp, align 8
  %os1526 = bitcast %union.rec* %277 to %struct.word_type*
  %olist527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1526, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist527, i32 0, i64 1
  %opred529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx528, i32 0, i32 0
  %278 = load %union.rec*, %union.rec** %opred529, align 8
  store %union.rec* %278, %union.rec** %z, align 8
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.539, %for.body.525
  %279 = load %union.rec*, %union.rec** %z, align 8
  %os1531 = bitcast %union.rec* %279 to %struct.word_type*
  %ou1532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1531, i32 0, i32 1
  %os11533 = bitcast %union.FIRST_UNION* %ou1532 to %struct.anon*
  %otype534 = getelementptr inbounds %struct.anon, %struct.anon* %os11533, i32 0, i32 0
  %280 = load i8, i8* %otype534, align 1
  %conv535 = zext i8 %280 to i32
  %cmp536 = icmp eq i32 %conv535, 0
  br i1 %cmp536, label %for.body.538, label %for.end.544

for.body.538:                                     ; preds = %for.cond.530
  br label %for.inc.539

for.inc.539:                                      ; preds = %for.body.538
  %281 = load %union.rec*, %union.rec** %z, align 8
  %os1540 = bitcast %union.rec* %281 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred543, align 8
  store %union.rec* %282, %union.rec** %z, align 8
  br label %for.cond.530

for.end.544:                                      ; preds = %for.cond.530
  %283 = load %union.rec*, %union.rec** %z, align 8
  %os1545 = bitcast %union.rec* %283 to %struct.word_type*
  %ou1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 1
  %os11547 = bitcast %union.FIRST_UNION* %ou1546 to %struct.anon*
  %otype548 = getelementptr inbounds %struct.anon, %struct.anon* %os11547, i32 0, i32 0
  %284 = load i8, i8* %otype548, align 1
  %conv549 = zext i8 %284 to i32
  %cmp550 = icmp eq i32 %conv549, 1
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.561

land.lhs.true.552:                                ; preds = %for.end.544
  %285 = load %union.rec*, %union.rec** %z, align 8
  %os5553 = bitcast %union.rec* %285 to %struct.gapobj_type*
  %ogap554 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5553, i32 0, i32 3
  %286 = bitcast %struct.GAP* %ogap554 to i16*
  %bf.load555 = load i16, i16* %286, align 4
  %bf.lshr556 = lshr i16 %bf.load555, 9
  %bf.clear557 = and i16 %bf.lshr556, 1
  %bf.cast558 = zext i16 %bf.clear557 to i32
  %tobool559 = icmp ne i32 %bf.cast558, 0
  br i1 %tobool559, label %if.end.561, label %if.then.560

if.then.560:                                      ; preds = %land.lhs.true.552
  br label %for.end.567

if.end.561:                                       ; preds = %land.lhs.true.552, %for.end.544
  br label %for.inc.562

for.inc.562:                                      ; preds = %if.end.561
  %287 = load %union.rec*, %union.rec** %rp, align 8
  %os1563 = bitcast %union.rec* %287 to %struct.word_type*
  %olist564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist564, i32 0, i64 0
  %osucc566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx565, i32 0, i32 1
  %288 = load %union.rec*, %union.rec** %osucc566, align 8
  store %union.rec* %288, %union.rec** %rp, align 8
  br label %for.cond.522

for.end.567:                                      ; preds = %if.then.560, %for.cond.522
  %289 = load %union.rec*, %union.rec** %lp, align 8
  %290 = load %union.rec*, %union.rec** %y, align 8
  %cmp568 = icmp eq %union.rec* %289, %290
  br i1 %cmp568, label %land.lhs.true.570, label %if.else.641

land.lhs.true.570:                                ; preds = %for.end.567
  %291 = load %union.rec*, %union.rec** %rp, align 8
  %292 = load %union.rec*, %union.rec** %y, align 8
  %cmp571 = icmp eq %union.rec* %291, %292
  br i1 %cmp571, label %land.lhs.true.573, label %if.else.641

land.lhs.true.573:                                ; preds = %land.lhs.true.570
  %293 = load %union.rec*, %union.rec** %y, align 8
  %os1574 = bitcast %union.rec* %293 to %struct.word_type*
  %ou1575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1574, i32 0, i32 1
  %os11576 = bitcast %union.FIRST_UNION* %ou1575 to %struct.anon*
  %otype577 = getelementptr inbounds %struct.anon, %struct.anon* %os11576, i32 0, i32 0
  %294 = load i8, i8* %otype577, align 1
  %conv578 = zext i8 %294 to i32
  %cmp579 = icmp eq i32 %conv578, 8
  br i1 %cmp579, label %land.lhs.true.581, label %if.then.590

land.lhs.true.581:                                ; preds = %land.lhs.true.573
  %295 = load %union.rec*, %union.rec** %y, align 8
  %os1582 = bitcast %union.rec* %295 to %struct.word_type*
  %ou2583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1582, i32 0, i32 2
  %os23584 = bitcast %union.SECOND_UNION* %ou2583 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23584, i32 0, i32 2
  %bf.load585 = load i16, i16* %oblocked, align 2
  %bf.lshr586 = lshr i16 %bf.load585, 5
  %bf.clear587 = and i16 %bf.lshr586, 1
  %bf.cast588 = zext i16 %bf.clear587 to i32
  %tobool589 = icmp ne i32 %bf.cast588, 0
  br i1 %tobool589, label %if.else.641, label %if.then.590

if.then.590:                                      ; preds = %land.lhs.true.581, %land.lhs.true.573
  %obfc591 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %296 = load i32, i32* %obfc591, align 4
  %cmp592 = icmp eq i32 %296, 8388607
  br i1 %cmp592, label %cond.true.594, label %cond.false.595

cond.true.594:                                    ; preds = %if.then.590
  br label %cond.end.604

cond.false.595:                                   ; preds = %if.then.590
  %obfc596 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %297 = load i32, i32* %obfc596, align 4
  %298 = load i32, i32* %dim.addr, align 4
  %idxprom597 = sext i32 %298 to i64
  %299 = load %union.rec*, %union.rec** %y, align 8
  %os1598 = bitcast %union.rec* %299 to %struct.word_type*
  %ou3599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 3
  %os31600 = bitcast %union.THIRD_UNION* %ou3599 to %struct.anon.6*
  %ofwd601 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31600, i32 0, i32 1
  %arrayidx602 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd601, i32 0, i64 %idxprom597
  %300 = load i32, i32* %arrayidx602, align 4
  %sub603 = sub nsw i32 %297, %300
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.false.595, %cond.true.594
  %cond605 = phi i32 [ 8388607, %cond.true.594 ], [ %sub603, %cond.false.595 ]
  store i32 %cond605, i32* %tb, align 4
  %obc606 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %301 = load i32, i32* %obc606, align 4
  %302 = load i32, i32* %tb, align 4
  %cmp607 = icmp slt i32 %301, %302
  br i1 %cmp607, label %cond.true.609, label %cond.false.611

cond.true.609:                                    ; preds = %cond.end.604
  %obc610 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %303 = load i32, i32* %obc610, align 4
  br label %cond.end.612

cond.false.611:                                   ; preds = %cond.end.604
  %304 = load i32, i32* %tb, align 4
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.611, %cond.true.609
  %cond613 = phi i32 [ %303, %cond.true.609 ], [ %304, %cond.false.611 ]
  store i32 %cond613, i32* %tb, align 4
  %obfc614 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %305 = load i32, i32* %obfc614, align 4
  %cmp615 = icmp eq i32 %305, 8388607
  br i1 %cmp615, label %cond.true.617, label %cond.false.618

cond.true.617:                                    ; preds = %cond.end.612
  br label %cond.end.627

cond.false.618:                                   ; preds = %cond.end.612
  %obfc619 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %306 = load i32, i32* %obfc619, align 4
  %307 = load i32, i32* %dim.addr, align 4
  %idxprom620 = sext i32 %307 to i64
  %308 = load %union.rec*, %union.rec** %y, align 8
  %os1621 = bitcast %union.rec* %308 to %struct.word_type*
  %ou3622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1621, i32 0, i32 3
  %os31623 = bitcast %union.THIRD_UNION* %ou3622 to %struct.anon.6*
  %oback624 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31623, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [2 x i32], [2 x i32]* %oback624, i32 0, i64 %idxprom620
  %309 = load i32, i32* %arrayidx625, align 4
  %sub626 = sub nsw i32 %306, %309
  br label %cond.end.627

cond.end.627:                                     ; preds = %cond.false.618, %cond.true.617
  %cond628 = phi i32 [ 8388607, %cond.true.617 ], [ %sub626, %cond.false.618 ]
  store i32 %cond628, i32* %tf, align 4
  %ofc629 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %310 = load i32, i32* %ofc629, align 4
  %311 = load i32, i32* %tf, align 4
  %cmp630 = icmp slt i32 %310, %311
  br i1 %cmp630, label %cond.true.632, label %cond.false.634

cond.true.632:                                    ; preds = %cond.end.627
  %ofc633 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %312 = load i32, i32* %ofc633, align 4
  br label %cond.end.635

cond.false.634:                                   ; preds = %cond.end.627
  %313 = load i32, i32* %tf, align 4
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.634, %cond.true.632
  %cond636 = phi i32 [ %312, %cond.true.632 ], [ %313, %cond.false.634 ]
  store i32 %cond636, i32* %tf, align 4
  %314 = load i32, i32* %tb, align 4
  %315 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc637 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %315, i32 0, i32 0
  store i32 %314, i32* %obc637, align 4
  %obfc638 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %316 = load i32, i32* %obfc638, align 4
  %317 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc639 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %317, i32 0, i32 1
  store i32 %316, i32* %obfc639, align 4
  %318 = load i32, i32* %tf, align 4
  %319 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc640 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %319, i32 0, i32 2
  store i32 %318, i32* %ofc640, align 4
  br label %if.end.763

if.else.641:                                      ; preds = %land.lhs.true.581, %land.lhs.true.570, %for.end.567
  store i32 0, i32* %xfwd, align 4
  store i32 0, i32* %xback, align 4
  %320 = load %union.rec*, %union.rec** %lp, align 8
  %os1642 = bitcast %union.rec* %320 to %struct.word_type*
  %olist643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1642, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist643, i32 0, i64 0
  %osucc645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx644, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc645, align 8
  store %union.rec* %321, %union.rec** %link, align 8
  br label %for.cond.646

for.cond.646:                                     ; preds = %for.inc.730, %if.else.641
  %322 = load %union.rec*, %union.rec** %link, align 8
  %323 = load %union.rec*, %union.rec** %rp, align 8
  %cmp647 = icmp ne %union.rec* %322, %323
  br i1 %cmp647, label %for.body.649, label %for.end.735

for.body.649:                                     ; preds = %for.cond.646
  %324 = load %union.rec*, %union.rec** %link, align 8
  %os1650 = bitcast %union.rec* %324 to %struct.word_type*
  %olist651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist651, i32 0, i64 1
  %opred653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx652, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %opred653, align 8
  store %union.rec* %325, %union.rec** %z, align 8
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.663, %for.body.649
  %326 = load %union.rec*, %union.rec** %z, align 8
  %os1655 = bitcast %union.rec* %326 to %struct.word_type*
  %ou1656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 1
  %os11657 = bitcast %union.FIRST_UNION* %ou1656 to %struct.anon*
  %otype658 = getelementptr inbounds %struct.anon, %struct.anon* %os11657, i32 0, i32 0
  %327 = load i8, i8* %otype658, align 1
  %conv659 = zext i8 %327 to i32
  %cmp660 = icmp eq i32 %conv659, 0
  br i1 %cmp660, label %for.body.662, label %for.end.668

for.body.662:                                     ; preds = %for.cond.654
  br label %for.inc.663

for.inc.663:                                      ; preds = %for.body.662
  %328 = load %union.rec*, %union.rec** %z, align 8
  %os1664 = bitcast %union.rec* %328 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 1
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  %329 = load %union.rec*, %union.rec** %opred667, align 8
  store %union.rec* %329, %union.rec** %z, align 8
  br label %for.cond.654

for.end.668:                                      ; preds = %for.cond.654
  %330 = load %union.rec*, %union.rec** %z, align 8
  %os1669 = bitcast %union.rec* %330 to %struct.word_type*
  %ou1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 1
  %os11671 = bitcast %union.FIRST_UNION* %ou1670 to %struct.anon*
  %otype672 = getelementptr inbounds %struct.anon, %struct.anon* %os11671, i32 0, i32 0
  %331 = load i8, i8* %otype672, align 1
  %conv673 = zext i8 %331 to i32
  %cmp674 = icmp eq i32 %conv673, 1
  br i1 %cmp674, label %if.then.692, label %lor.lhs.false.676

lor.lhs.false.676:                                ; preds = %for.end.668
  %332 = load %union.rec*, %union.rec** %z, align 8
  %os1677 = bitcast %union.rec* %332 to %struct.word_type*
  %ou1678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 1
  %os11679 = bitcast %union.FIRST_UNION* %ou1678 to %struct.anon*
  %otype680 = getelementptr inbounds %struct.anon, %struct.anon* %os11679, i32 0, i32 0
  %333 = load i8, i8* %otype680, align 1
  %conv681 = zext i8 %333 to i32
  %cmp682 = icmp sge i32 %conv681, 119
  br i1 %cmp682, label %land.lhs.true.684, label %if.end.693

land.lhs.true.684:                                ; preds = %lor.lhs.false.676
  %334 = load %union.rec*, %union.rec** %z, align 8
  %os1685 = bitcast %union.rec* %334 to %struct.word_type*
  %ou1686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 1
  %os11687 = bitcast %union.FIRST_UNION* %ou1686 to %struct.anon*
  %otype688 = getelementptr inbounds %struct.anon, %struct.anon* %os11687, i32 0, i32 0
  %335 = load i8, i8* %otype688, align 1
  %conv689 = zext i8 %335 to i32
  %cmp690 = icmp sle i32 %conv689, 138
  br i1 %cmp690, label %if.then.692, label %if.end.693

if.then.692:                                      ; preds = %land.lhs.true.684, %for.end.668
  br label %for.inc.730

if.end.693:                                       ; preds = %land.lhs.true.684, %lor.lhs.false.676
  %336 = load i32, i32* %xback, align 4
  %337 = load i32, i32* %dim.addr, align 4
  %idxprom694 = sext i32 %337 to i64
  %338 = load %union.rec*, %union.rec** %z, align 8
  %os1695 = bitcast %union.rec* %338 to %struct.word_type*
  %ou3696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 3
  %os31697 = bitcast %union.THIRD_UNION* %ou3696 to %struct.anon.6*
  %oback698 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x i32], [2 x i32]* %oback698, i32 0, i64 %idxprom694
  %339 = load i32, i32* %arrayidx699, align 4
  %cmp700 = icmp slt i32 %336, %339
  br i1 %cmp700, label %cond.true.702, label %cond.false.709

cond.true.702:                                    ; preds = %if.end.693
  %340 = load i32, i32* %dim.addr, align 4
  %idxprom703 = sext i32 %340 to i64
  %341 = load %union.rec*, %union.rec** %z, align 8
  %os1704 = bitcast %union.rec* %341 to %struct.word_type*
  %ou3705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1704, i32 0, i32 3
  %os31706 = bitcast %union.THIRD_UNION* %ou3705 to %struct.anon.6*
  %oback707 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31706, i32 0, i32 0
  %arrayidx708 = getelementptr inbounds [2 x i32], [2 x i32]* %oback707, i32 0, i64 %idxprom703
  %342 = load i32, i32* %arrayidx708, align 4
  br label %cond.end.710

cond.false.709:                                   ; preds = %if.end.693
  %343 = load i32, i32* %xback, align 4
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.709, %cond.true.702
  %cond711 = phi i32 [ %342, %cond.true.702 ], [ %343, %cond.false.709 ]
  store i32 %cond711, i32* %xback, align 4
  %344 = load i32, i32* %xfwd, align 4
  %345 = load i32, i32* %dim.addr, align 4
  %idxprom712 = sext i32 %345 to i64
  %346 = load %union.rec*, %union.rec** %z, align 8
  %os1713 = bitcast %union.rec* %346 to %struct.word_type*
  %ou3714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 3
  %os31715 = bitcast %union.THIRD_UNION* %ou3714 to %struct.anon.6*
  %ofwd716 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31715, i32 0, i32 1
  %arrayidx717 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd716, i32 0, i64 %idxprom712
  %347 = load i32, i32* %arrayidx717, align 4
  %cmp718 = icmp slt i32 %344, %347
  br i1 %cmp718, label %cond.true.720, label %cond.false.727

cond.true.720:                                    ; preds = %cond.end.710
  %348 = load i32, i32* %dim.addr, align 4
  %idxprom721 = sext i32 %348 to i64
  %349 = load %union.rec*, %union.rec** %z, align 8
  %os1722 = bitcast %union.rec* %349 to %struct.word_type*
  %ou3723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1722, i32 0, i32 3
  %os31724 = bitcast %union.THIRD_UNION* %ou3723 to %struct.anon.6*
  %ofwd725 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31724, i32 0, i32 1
  %arrayidx726 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd725, i32 0, i64 %idxprom721
  %350 = load i32, i32* %arrayidx726, align 4
  br label %cond.end.728

cond.false.727:                                   ; preds = %cond.end.710
  %351 = load i32, i32* %xfwd, align 4
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.727, %cond.true.720
  %cond729 = phi i32 [ %350, %cond.true.720 ], [ %351, %cond.false.727 ]
  store i32 %cond729, i32* %xfwd, align 4
  br label %for.inc.730

for.inc.730:                                      ; preds = %cond.end.728, %if.then.692
  %352 = load %union.rec*, %union.rec** %link, align 8
  %os1731 = bitcast %union.rec* %352 to %struct.word_type*
  %olist732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1731, i32 0, i32 0
  %arrayidx733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist732, i32 0, i64 0
  %osucc734 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx733, i32 0, i32 1
  %353 = load %union.rec*, %union.rec** %osucc734, align 8
  store %union.rec* %353, %union.rec** %link, align 8
  br label %for.cond.646

for.end.735:                                      ; preds = %for.cond.646
  %obfc736 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %354 = load i32, i32* %obfc736, align 4
  %ofc737 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %355 = load i32, i32* %ofc737, align 4
  %cmp738 = icmp slt i32 %354, %355
  br i1 %cmp738, label %cond.true.740, label %cond.false.742

cond.true.740:                                    ; preds = %for.end.735
  %obfc741 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %356 = load i32, i32* %obfc741, align 4
  br label %cond.end.744

cond.false.742:                                   ; preds = %for.end.735
  %ofc743 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %357 = load i32, i32* %ofc743, align 4
  br label %cond.end.744

cond.end.744:                                     ; preds = %cond.false.742, %cond.true.740
  %cond745 = phi i32 [ %356, %cond.true.740 ], [ %357, %cond.false.742 ]
  store i32 %cond745, i32* %tbf, align 4
  %358 = load i32, i32* %tbf, align 4
  %cmp746 = icmp eq i32 %358, 8388607
  br i1 %cmp746, label %cond.true.748, label %cond.false.749

cond.true.748:                                    ; preds = %cond.end.744
  br label %cond.end.751

cond.false.749:                                   ; preds = %cond.end.744
  %359 = load i32, i32* %tbf, align 4
  %360 = load i32, i32* %xfwd, align 4
  %sub750 = sub nsw i32 %359, %360
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.749, %cond.true.748
  %cond752 = phi i32 [ 8388607, %cond.true.748 ], [ %sub750, %cond.false.749 ]
  store i32 %cond752, i32* %tbc, align 4
  %361 = load i32, i32* %tbf, align 4
  %cmp753 = icmp eq i32 %361, 8388607
  br i1 %cmp753, label %cond.true.755, label %cond.false.756

cond.true.755:                                    ; preds = %cond.end.751
  br label %cond.end.758

cond.false.756:                                   ; preds = %cond.end.751
  %362 = load i32, i32* %tbf, align 4
  %363 = load i32, i32* %xback, align 4
  %sub757 = sub nsw i32 %362, %363
  br label %cond.end.758

cond.end.758:                                     ; preds = %cond.false.756, %cond.true.755
  %cond759 = phi i32 [ 8388607, %cond.true.755 ], [ %sub757, %cond.false.756 ]
  store i32 %cond759, i32* %tfc, align 4
  %364 = load i32, i32* %tbc, align 4
  %365 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc760 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %365, i32 0, i32 0
  store i32 %364, i32* %obc760, align 4
  %366 = load i32, i32* %tbf, align 4
  %367 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc761 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %367, i32 0, i32 1
  store i32 %366, i32* %obfc761, align 4
  %368 = load i32, i32* %tfc, align 4
  %369 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc762 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %369, i32 0, i32 2
  store i32 %368, i32* %ofc762, align 4
  br label %if.end.763

if.end.763:                                       ; preds = %cond.end.758, %cond.end.635
  br label %if.end.764

if.end.764:                                       ; preds = %if.end.763, %if.then.463
  br label %sw.epilog.773

sw.default.765:                                   ; preds = %for.end.76
  %370 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %371 = load %union.rec*, %union.rec** %y, align 8
  %os1766 = bitcast %union.rec* %371 to %struct.word_type*
  %ou1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1766, i32 0, i32 1
  %os11768 = bitcast %union.FIRST_UNION* %ou1767 to %struct.anon*
  %otype769 = getelementptr inbounds %struct.anon, %struct.anon* %os11768, i32 0, i32 0
  %372 = load i8, i8* %otype769, align 1
  %conv770 = zext i8 %372 to i32
  %call771 = call i8* @Image(i32 %conv770)
  %call772 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %370, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %call771)
  br label %sw.epilog.773

sw.epilog.773:                                    ; preds = %if.then.17, %sw.default.765, %if.end.764, %if.then.450, %cond.end.432, %if.end.372, %if.end.348, %sw.bb.292, %if.end.291, %if.end.164, %sw.bb.144, %if.end.143, %if.end.116, %if.end.98, %sw.bb
  ret void
}

declare void @SetLengthDim(i32) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CatConstrained(%union.rec* %x, %struct.CONSTRAINT* %xc, i32 %ratm, %union.rec* %y, i32 %dim, %union.rec** %why) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xc.addr = alloca %struct.CONSTRAINT*, align 8
  %ratm.addr = alloca i32, align 4
  %y.addr = alloca %union.rec*, align 8
  %dim.addr = alloca i32, align 4
  %why.addr = alloca %union.rec**, align 8
  %side = alloca i32, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  %backy = alloca i32, align 4
  %fwdy = alloca i32, align 4
  %be = alloca i32, align 4
  %fe = alloca i32, align 4
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %seffect = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sd = alloca %union.rec*, align 8
  %tb = alloca i32, align 4
  %tbf = alloca i32, align 4
  %tf = alloca i32, align 4
  %tbc = alloca i32, align 4
  %tbfc = alloca i32, align 4
  %tfc = alloca i32, align 4
  %mxy = alloca i32, align 4
  %myz = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %xc.addr, align 8
  store i32 %ratm, i32* %ratm.addr, align 4
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  store %union.rec** %why, %union.rec*** %why.addr, align 8
  %0 = load %union.rec*, %union.rec** %y.addr, align 8
  %1 = load i32, i32* %dim.addr, align 4
  %2 = load %union.rec**, %union.rec*** %why.addr, align 8
  call void @Constrained(%union.rec* %0, %struct.CONSTRAINT* %yc, i32 %1, %union.rec** %2)
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %3 = load i32, i32* %obc, align 4
  %cmp = icmp ne i32 %3, 8388607
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %4 = load i32, i32* %obfc, align 4
  %cmp1 = icmp ne i32 %4, 8388607
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %5 = load i32, i32* %ofc, align 4
  %cmp3 = icmp ne i32 %5, 8388607
  br i1 %cmp3, label %if.then, label %if.else.500

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = load i32, i32* %dim.addr, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %9 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %8, %cond.true ], [ %10, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = load i32, i32* %ratm.addr, align 4
  call void @SetNeighbours(%union.rec* %11, i32 %12, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %sd, i32* %side)
  %13 = load %union.rec*, %union.rec** %pg, align 8
  %cmp8 = icmp eq %union.rec* %13, null
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.10:                                    ; preds = %cond.end
  %14 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %union.rec*, %union.rec** %prec_def, align 8
  %os111 = bitcast %union.rec* %15 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx12, align 4
  %17 = load %union.rec*, %union.rec** %pg, align 8
  %os5 = bitcast %union.rec* %17 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %call = call i32 @ExtraGap(i32 %16, i32 0, %struct.GAP* %ogap, i32 151)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %call, %cond.false.10 ]
  store i32 %cond14, i32* %be, align 4
  %18 = load %union.rec*, %union.rec** %sg, align 8
  %cmp15 = icmp eq %union.rec* %18, null
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.13
  br label %cond.end.26

cond.false.17:                                    ; preds = %cond.end.13
  %19 = load i32, i32* %dim.addr, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %union.rec*, %union.rec** %sd, align 8
  %os119 = bitcast %union.rec* %20 to %struct.word_type*
  %ou320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 3
  %os3121 = bitcast %union.THIRD_UNION* %ou320 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3121, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom18
  %21 = load i32, i32* %arrayidx22, align 4
  %22 = load %union.rec*, %union.rec** %sg, align 8
  %os523 = bitcast %union.rec* %22 to %struct.gapobj_type*
  %ogap24 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os523, i32 0, i32 3
  %call25 = call i32 @ExtraGap(i32 0, i32 %21, %struct.GAP* %ogap24, i32 153)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.17, %cond.true.16
  %cond27 = phi i32 [ 0, %cond.true.16 ], [ %call25, %cond.false.17 ]
  store i32 %cond27, i32* %fe, align 4
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os128 = bitcast %union.rec* %23 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %24 = load i8, i8* %otype, align 1
  %conv = zext i8 %24 to i32
  %cmp29 = icmp sge i32 %conv, 2
  br i1 %cmp29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.26
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %25 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %26 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %26 to i32
  %cmp36 = icmp sle i32 %conv35, 8
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true
  %27 = load %union.rec*, %union.rec** %pg, align 8
  %cmp39 = icmp eq %union.rec* %27, null
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.then.38
  br label %cond.end.52

cond.false.42:                                    ; preds = %if.then.38
  %28 = load i32, i32* %dim.addr, align 4
  %idxprom43 = sext i32 %28 to i64
  %29 = load %union.rec*, %union.rec** %prec_def, align 8
  %os144 = bitcast %union.rec* %29 to %struct.word_type*
  %ou345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %os3146 = bitcast %union.THIRD_UNION* %ou345 to %struct.anon.6*
  %ofwd47 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3146, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd47, i32 0, i64 %idxprom43
  %30 = load i32, i32* %arrayidx48, align 4
  %31 = load %union.rec*, %union.rec** %pg, align 8
  %os549 = bitcast %union.rec* %31 to %struct.gapobj_type*
  %ogap50 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os549, i32 0, i32 3
  %call51 = call i32 @MinGap(i32 %30, i32 0, i32 0, %struct.GAP* %ogap50)
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.42, %cond.true.41
  %cond53 = phi i32 [ 0, %cond.true.41 ], [ %call51, %cond.false.42 ]
  store i32 %cond53, i32* %beffect, align 4
  %32 = load %union.rec*, %union.rec** %sg, align 8
  %cmp54 = icmp eq %union.rec* %32, null
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.52
  br label %cond.end.73

cond.false.57:                                    ; preds = %cond.end.52
  %33 = load i32, i32* %dim.addr, align 4
  %idxprom58 = sext i32 %33 to i64
  %34 = load %union.rec*, %union.rec** %sd, align 8
  %os159 = bitcast %union.rec* %34 to %struct.word_type*
  %ou360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 3
  %os3161 = bitcast %union.THIRD_UNION* %ou360 to %struct.anon.6*
  %oback62 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %oback62, i32 0, i64 %idxprom58
  %35 = load i32, i32* %arrayidx63, align 4
  %36 = load i32, i32* %dim.addr, align 4
  %idxprom64 = sext i32 %36 to i64
  %37 = load %union.rec*, %union.rec** %sd, align 8
  %os165 = bitcast %union.rec* %37 to %struct.word_type*
  %ou366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 3
  %os3167 = bitcast %union.THIRD_UNION* %ou366 to %struct.anon.6*
  %ofwd68 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3167, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd68, i32 0, i64 %idxprom64
  %38 = load i32, i32* %arrayidx69, align 4
  %39 = load %union.rec*, %union.rec** %sg, align 8
  %os570 = bitcast %union.rec* %39 to %struct.gapobj_type*
  %ogap71 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os570, i32 0, i32 3
  %call72 = call i32 @MinGap(i32 0, i32 %35, i32 %38, %struct.GAP* %ogap71)
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.57, %cond.true.56
  %cond74 = phi i32 [ 0, %cond.true.56 ], [ %call72, %cond.false.57 ]
  store i32 %cond74, i32* %feffect, align 4
  %40 = load %union.rec*, %union.rec** %pg, align 8
  %cmp75 = icmp eq %union.rec* %40, null
  br i1 %cmp75, label %cond.true.77, label %cond.false.90

cond.true.77:                                     ; preds = %cond.end.73
  %41 = load %union.rec*, %union.rec** %sg, align 8
  %cmp78 = icmp eq %union.rec* %41, null
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.true.77
  br label %cond.end.88

cond.false.81:                                    ; preds = %cond.true.77
  %42 = load i32, i32* %dim.addr, align 4
  %idxprom82 = sext i32 %42 to i64
  %43 = load %union.rec*, %union.rec** %sd, align 8
  %os183 = bitcast %union.rec* %43 to %struct.word_type*
  %ou384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 3
  %os3185 = bitcast %union.THIRD_UNION* %ou384 to %struct.anon.6*
  %oback86 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x i32], [2 x i32]* %oback86, i32 0, i64 %idxprom82
  %44 = load i32, i32* %arrayidx87, align 4
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.81, %cond.true.80
  %cond89 = phi i32 [ 0, %cond.true.80 ], [ %44, %cond.false.81 ]
  br label %cond.end.124

cond.false.90:                                    ; preds = %cond.end.73
  %45 = load %union.rec*, %union.rec** %sg, align 8
  %cmp91 = icmp eq %union.rec* %45, null
  br i1 %cmp91, label %cond.true.93, label %cond.false.100

cond.true.93:                                     ; preds = %cond.false.90
  %46 = load i32, i32* %dim.addr, align 4
  %idxprom94 = sext i32 %46 to i64
  %47 = load %union.rec*, %union.rec** %prec_def, align 8
  %os195 = bitcast %union.rec* %47 to %struct.word_type*
  %ou396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 3
  %os3197 = bitcast %union.THIRD_UNION* %ou396 to %struct.anon.6*
  %ofwd98 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3197, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd98, i32 0, i64 %idxprom94
  %48 = load i32, i32* %arrayidx99, align 4
  br label %cond.end.122

cond.false.100:                                   ; preds = %cond.false.90
  %49 = load i32, i32* %dim.addr, align 4
  %idxprom101 = sext i32 %49 to i64
  %50 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1102 = bitcast %union.rec* %50 to %struct.word_type*
  %ou3103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 3
  %os31104 = bitcast %union.THIRD_UNION* %ou3103 to %struct.anon.6*
  %ofwd105 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31104, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd105, i32 0, i64 %idxprom101
  %51 = load i32, i32* %arrayidx106, align 4
  %52 = load i32, i32* %dim.addr, align 4
  %idxprom107 = sext i32 %52 to i64
  %53 = load %union.rec*, %union.rec** %sd, align 8
  %os1108 = bitcast %union.rec* %53 to %struct.word_type*
  %ou3109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 3
  %os31110 = bitcast %union.THIRD_UNION* %ou3109 to %struct.anon.6*
  %oback111 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x i32], [2 x i32]* %oback111, i32 0, i64 %idxprom107
  %54 = load i32, i32* %arrayidx112, align 4
  %55 = load i32, i32* %dim.addr, align 4
  %idxprom113 = sext i32 %55 to i64
  %56 = load %union.rec*, %union.rec** %sd, align 8
  %os1114 = bitcast %union.rec* %56 to %struct.word_type*
  %ou3115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 3
  %os31116 = bitcast %union.THIRD_UNION* %ou3115 to %struct.anon.6*
  %ofwd117 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31116, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd117, i32 0, i64 %idxprom113
  %57 = load i32, i32* %arrayidx118, align 4
  %58 = load %union.rec*, %union.rec** %sg, align 8
  %os5119 = bitcast %union.rec* %58 to %struct.gapobj_type*
  %ogap120 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5119, i32 0, i32 3
  %call121 = call i32 @MinGap(i32 %51, i32 %54, i32 %57, %struct.GAP* %ogap120)
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.100, %cond.true.93
  %cond123 = phi i32 [ %48, %cond.true.93 ], [ %call121, %cond.false.100 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.end.88
  %cond125 = phi i32 [ %cond89, %cond.end.88 ], [ %cond123, %cond.end.122 ]
  store i32 %cond125, i32* %seffect, align 4
  %59 = load i32, i32* %side, align 4
  switch i32 %59, label %sw.epilog [
    i32 151, label %sw.bb
    i32 152, label %sw.bb.139
    i32 153, label %sw.bb.147
  ]

sw.bb:                                            ; preds = %cond.end.124
  %60 = load i32, i32* %dim.addr, align 4
  %idxprom126 = sext i32 %60 to i64
  %61 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1127 = bitcast %union.rec* %61 to %struct.word_type*
  %ou3128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 3
  %os31129 = bitcast %union.THIRD_UNION* %ou3128 to %struct.anon.6*
  %oback130 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %oback130, i32 0, i64 %idxprom126
  %62 = load i32, i32* %arrayidx131, align 4
  %63 = load i32, i32* %beffect, align 4
  %add = add nsw i32 %62, %63
  %64 = load i32, i32* %feffect, align 4
  %add132 = add nsw i32 %add, %64
  %65 = load i32, i32* %seffect, align 4
  %sub = sub nsw i32 %add132, %65
  store i32 %sub, i32* %backy, align 4
  %66 = load i32, i32* %dim.addr, align 4
  %idxprom133 = sext i32 %66 to i64
  %67 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1134 = bitcast %union.rec* %67 to %struct.word_type*
  %ou3135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 3
  %os31136 = bitcast %union.THIRD_UNION* %ou3135 to %struct.anon.6*
  %ofwd137 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31136, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd137, i32 0, i64 %idxprom133
  %68 = load i32, i32* %arrayidx138, align 4
  store i32 %68, i32* %fwdy, align 4
  br label %sw.epilog

sw.bb.139:                                        ; preds = %cond.end.124
  store i32 0, i32* %backy, align 4
  %69 = load i32, i32* %dim.addr, align 4
  %idxprom140 = sext i32 %69 to i64
  %70 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1141 = bitcast %union.rec* %70 to %struct.word_type*
  %ou3142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 3
  %os31143 = bitcast %union.THIRD_UNION* %ou3142 to %struct.anon.6*
  %ofwd144 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31143, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd144, i32 0, i64 %idxprom140
  %71 = load i32, i32* %arrayidx145, align 4
  %72 = load i32, i32* %feffect, align 4
  %add146 = add nsw i32 %71, %72
  store i32 %add146, i32* %fwdy, align 4
  br label %sw.epilog

sw.bb.147:                                        ; preds = %cond.end.124
  %73 = load i32, i32* %dim.addr, align 4
  %idxprom148 = sext i32 %73 to i64
  %74 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1149 = bitcast %union.rec* %74 to %struct.word_type*
  %ou3150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 3
  %os31151 = bitcast %union.THIRD_UNION* %ou3150 to %struct.anon.6*
  %oback152 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x i32], [2 x i32]* %oback152, i32 0, i64 %idxprom148
  %75 = load i32, i32* %arrayidx153, align 4
  store i32 %75, i32* %backy, align 4
  %76 = load i32, i32* %dim.addr, align 4
  %idxprom154 = sext i32 %76 to i64
  %77 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1155 = bitcast %union.rec* %77 to %struct.word_type*
  %ou3156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 3
  %os31157 = bitcast %union.THIRD_UNION* %ou3156 to %struct.anon.6*
  %ofwd158 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31157, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd158, i32 0, i64 %idxprom154
  %78 = load i32, i32* %arrayidx159, align 4
  %79 = load i32, i32* %beffect, align 4
  %add160 = add nsw i32 %78, %79
  %80 = load i32, i32* %feffect, align 4
  %add161 = add nsw i32 %add160, %80
  %81 = load i32, i32* %seffect, align 4
  %sub162 = sub nsw i32 %add161, %81
  store i32 %sub162, i32* %fwdy, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.124, %sw.bb.147, %sw.bb.139, %sw.bb
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end.26
  %82 = load %union.rec*, %union.rec** %pg, align 8
  %cmp163 = icmp eq %union.rec* %82, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.172

cond.true.165:                                    ; preds = %if.else
  %83 = load i32, i32* %dim.addr, align 4
  %idxprom166 = sext i32 %83 to i64
  %84 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1167 = bitcast %union.rec* %84 to %struct.word_type*
  %ou3168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 3
  %os31169 = bitcast %union.THIRD_UNION* %ou3168 to %struct.anon.6*
  %oback170 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x i32], [2 x i32]* %oback170, i32 0, i64 %idxprom166
  %85 = load i32, i32* %arrayidx171, align 4
  br label %cond.end.204

cond.false.172:                                   ; preds = %if.else
  %86 = load i32, i32* %dim.addr, align 4
  %idxprom173 = sext i32 %86 to i64
  %87 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1174 = bitcast %union.rec* %87 to %struct.word_type*
  %ou3175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 3
  %os31176 = bitcast %union.THIRD_UNION* %ou3175 to %struct.anon.6*
  %ofwd177 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31176, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd177, i32 0, i64 %idxprom173
  %88 = load i32, i32* %arrayidx178, align 4
  %89 = load i32, i32* %dim.addr, align 4
  %idxprom179 = sext i32 %89 to i64
  %90 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1180 = bitcast %union.rec* %90 to %struct.word_type*
  %ou3181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 3
  %os31182 = bitcast %union.THIRD_UNION* %ou3181 to %struct.anon.6*
  %oback183 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x i32], [2 x i32]* %oback183, i32 0, i64 %idxprom179
  %91 = load i32, i32* %arrayidx184, align 4
  %92 = load i32, i32* %dim.addr, align 4
  %idxprom185 = sext i32 %92 to i64
  %93 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1186 = bitcast %union.rec* %93 to %struct.word_type*
  %ou3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 3
  %os31188 = bitcast %union.THIRD_UNION* %ou3187 to %struct.anon.6*
  %ofwd189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31188, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd189, i32 0, i64 %idxprom185
  %94 = load i32, i32* %arrayidx190, align 4
  %95 = load %union.rec*, %union.rec** %pg, align 8
  %os5191 = bitcast %union.rec* %95 to %struct.gapobj_type*
  %ogap192 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5191, i32 0, i32 3
  %call193 = call i32 @MinGap(i32 %88, i32 %91, i32 %94, %struct.GAP* %ogap192)
  %96 = load i32, i32* %dim.addr, align 4
  %idxprom194 = sext i32 %96 to i64
  %97 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1195 = bitcast %union.rec* %97 to %struct.word_type*
  %ou3196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 3
  %os31197 = bitcast %union.THIRD_UNION* %ou3196 to %struct.anon.6*
  %ofwd198 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31197, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd198, i32 0, i64 %idxprom194
  %98 = load i32, i32* %arrayidx199, align 4
  %99 = load %union.rec*, %union.rec** %pg, align 8
  %os5200 = bitcast %union.rec* %99 to %struct.gapobj_type*
  %ogap201 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5200, i32 0, i32 3
  %call202 = call i32 @MinGap(i32 %98, i32 0, i32 0, %struct.GAP* %ogap201)
  %sub203 = sub nsw i32 %call193, %call202
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.172, %cond.true.165
  %cond205 = phi i32 [ %85, %cond.true.165 ], [ %sub203, %cond.false.172 ]
  store i32 %cond205, i32* %beffect, align 4
  %100 = load %union.rec*, %union.rec** %sg, align 8
  %cmp206 = icmp eq %union.rec* %100, null
  br i1 %cmp206, label %cond.true.208, label %cond.false.215

cond.true.208:                                    ; preds = %cond.end.204
  %101 = load i32, i32* %dim.addr, align 4
  %idxprom209 = sext i32 %101 to i64
  %102 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1210 = bitcast %union.rec* %102 to %struct.word_type*
  %ou3211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 3
  %os31212 = bitcast %union.THIRD_UNION* %ou3211 to %struct.anon.6*
  %ofwd213 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31212, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd213, i32 0, i64 %idxprom209
  %103 = load i32, i32* %arrayidx214, align 4
  br label %cond.end.253

cond.false.215:                                   ; preds = %cond.end.204
  %104 = load i32, i32* %dim.addr, align 4
  %idxprom216 = sext i32 %104 to i64
  %105 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1217 = bitcast %union.rec* %105 to %struct.word_type*
  %ou3218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 3
  %os31219 = bitcast %union.THIRD_UNION* %ou3218 to %struct.anon.6*
  %ofwd220 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31219, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd220, i32 0, i64 %idxprom216
  %106 = load i32, i32* %arrayidx221, align 4
  %107 = load i32, i32* %dim.addr, align 4
  %idxprom222 = sext i32 %107 to i64
  %108 = load %union.rec*, %union.rec** %sd, align 8
  %os1223 = bitcast %union.rec* %108 to %struct.word_type*
  %ou3224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 3
  %os31225 = bitcast %union.THIRD_UNION* %ou3224 to %struct.anon.6*
  %oback226 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x i32], [2 x i32]* %oback226, i32 0, i64 %idxprom222
  %109 = load i32, i32* %arrayidx227, align 4
  %110 = load i32, i32* %dim.addr, align 4
  %idxprom228 = sext i32 %110 to i64
  %111 = load %union.rec*, %union.rec** %sd, align 8
  %os1229 = bitcast %union.rec* %111 to %struct.word_type*
  %ou3230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 3
  %os31231 = bitcast %union.THIRD_UNION* %ou3230 to %struct.anon.6*
  %ofwd232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31231, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd232, i32 0, i64 %idxprom228
  %112 = load i32, i32* %arrayidx233, align 4
  %113 = load %union.rec*, %union.rec** %sg, align 8
  %os5234 = bitcast %union.rec* %113 to %struct.gapobj_type*
  %ogap235 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5234, i32 0, i32 3
  %call236 = call i32 @MinGap(i32 %106, i32 %109, i32 %112, %struct.GAP* %ogap235)
  %114 = load i32, i32* %dim.addr, align 4
  %idxprom237 = sext i32 %114 to i64
  %115 = load %union.rec*, %union.rec** %sd, align 8
  %os1238 = bitcast %union.rec* %115 to %struct.word_type*
  %ou3239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 3
  %os31240 = bitcast %union.THIRD_UNION* %ou3239 to %struct.anon.6*
  %oback241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x i32], [2 x i32]* %oback241, i32 0, i64 %idxprom237
  %116 = load i32, i32* %arrayidx242, align 4
  %117 = load i32, i32* %dim.addr, align 4
  %idxprom243 = sext i32 %117 to i64
  %118 = load %union.rec*, %union.rec** %sd, align 8
  %os1244 = bitcast %union.rec* %118 to %struct.word_type*
  %ou3245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 3
  %os31246 = bitcast %union.THIRD_UNION* %ou3245 to %struct.anon.6*
  %ofwd247 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31246, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd247, i32 0, i64 %idxprom243
  %119 = load i32, i32* %arrayidx248, align 4
  %120 = load %union.rec*, %union.rec** %sg, align 8
  %os5249 = bitcast %union.rec* %120 to %struct.gapobj_type*
  %ogap250 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5249, i32 0, i32 3
  %call251 = call i32 @MinGap(i32 0, i32 %116, i32 %119, %struct.GAP* %ogap250)
  %sub252 = sub nsw i32 %call236, %call251
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.215, %cond.true.208
  %cond254 = phi i32 [ %103, %cond.true.208 ], [ %sub252, %cond.false.215 ]
  store i32 %cond254, i32* %feffect, align 4
  %121 = load i32, i32* %side, align 4
  switch i32 %121, label %sw.epilog.300 [
    i32 151, label %sw.bb.255
    i32 152, label %sw.bb.270
    i32 153, label %sw.bb.285
  ]

sw.bb.255:                                        ; preds = %cond.end.253
  %122 = load i32, i32* %dim.addr, align 4
  %idxprom256 = sext i32 %122 to i64
  %123 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1257 = bitcast %union.rec* %123 to %struct.word_type*
  %ou3258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 3
  %os31259 = bitcast %union.THIRD_UNION* %ou3258 to %struct.anon.6*
  %oback260 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x i32], [2 x i32]* %oback260, i32 0, i64 %idxprom256
  %124 = load i32, i32* %arrayidx261, align 4
  %125 = load i32, i32* %beffect, align 4
  %sub262 = sub nsw i32 %124, %125
  %126 = load i32, i32* %feffect, align 4
  %sub263 = sub nsw i32 %sub262, %126
  store i32 %sub263, i32* %backy, align 4
  %127 = load i32, i32* %dim.addr, align 4
  %idxprom264 = sext i32 %127 to i64
  %128 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1265 = bitcast %union.rec* %128 to %struct.word_type*
  %ou3266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 3
  %os31267 = bitcast %union.THIRD_UNION* %ou3266 to %struct.anon.6*
  %ofwd268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31267, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd268, i32 0, i64 %idxprom264
  %129 = load i32, i32* %arrayidx269, align 4
  store i32 %129, i32* %fwdy, align 4
  br label %sw.epilog.300

sw.bb.270:                                        ; preds = %cond.end.253
  %130 = load i32, i32* %dim.addr, align 4
  %idxprom271 = sext i32 %130 to i64
  %131 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1272 = bitcast %union.rec* %131 to %struct.word_type*
  %ou3273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 3
  %os31274 = bitcast %union.THIRD_UNION* %ou3273 to %struct.anon.6*
  %oback275 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x i32], [2 x i32]* %oback275, i32 0, i64 %idxprom271
  %132 = load i32, i32* %arrayidx276, align 4
  %133 = load i32, i32* %beffect, align 4
  %sub277 = sub nsw i32 %132, %133
  store i32 %sub277, i32* %backy, align 4
  %134 = load i32, i32* %dim.addr, align 4
  %idxprom278 = sext i32 %134 to i64
  %135 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1279 = bitcast %union.rec* %135 to %struct.word_type*
  %ou3280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 3
  %os31281 = bitcast %union.THIRD_UNION* %ou3280 to %struct.anon.6*
  %ofwd282 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31281, i32 0, i32 1
  %arrayidx283 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd282, i32 0, i64 %idxprom278
  %136 = load i32, i32* %arrayidx283, align 4
  %137 = load i32, i32* %feffect, align 4
  %sub284 = sub nsw i32 %136, %137
  store i32 %sub284, i32* %fwdy, align 4
  br label %sw.epilog.300

sw.bb.285:                                        ; preds = %cond.end.253
  %138 = load i32, i32* %dim.addr, align 4
  %idxprom286 = sext i32 %138 to i64
  %139 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1287 = bitcast %union.rec* %139 to %struct.word_type*
  %ou3288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 3
  %os31289 = bitcast %union.THIRD_UNION* %ou3288 to %struct.anon.6*
  %oback290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x i32], [2 x i32]* %oback290, i32 0, i64 %idxprom286
  %140 = load i32, i32* %arrayidx291, align 4
  store i32 %140, i32* %backy, align 4
  %141 = load i32, i32* %dim.addr, align 4
  %idxprom292 = sext i32 %141 to i64
  %142 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1293 = bitcast %union.rec* %142 to %struct.word_type*
  %ou3294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 3
  %os31295 = bitcast %union.THIRD_UNION* %ou3294 to %struct.anon.6*
  %ofwd296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31295, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd296, i32 0, i64 %idxprom292
  %143 = load i32, i32* %arrayidx297, align 4
  %144 = load i32, i32* %beffect, align 4
  %sub298 = sub nsw i32 %143, %144
  %145 = load i32, i32* %feffect, align 4
  %sub299 = sub nsw i32 %sub298, %145
  store i32 %sub299, i32* %fwdy, align 4
  br label %sw.epilog.300

sw.epilog.300:                                    ; preds = %cond.end.253, %sw.bb.285, %sw.bb.270, %sw.bb.255
  br label %if.end

if.end:                                           ; preds = %sw.epilog.300, %sw.epilog
  %146 = load i32, i32* %backy, align 4
  %obc301 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %147 = load i32, i32* %obc301, align 4
  %cmp302 = icmp sle i32 %146, %147
  br i1 %cmp302, label %land.lhs.true.304, label %if.then.313

land.lhs.true.304:                                ; preds = %if.end
  %148 = load i32, i32* %backy, align 4
  %149 = load i32, i32* %fwdy, align 4
  %add305 = add nsw i32 %148, %149
  %obfc306 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %150 = load i32, i32* %obfc306, align 4
  %cmp307 = icmp sle i32 %add305, %150
  br i1 %cmp307, label %land.lhs.true.309, label %if.then.313

land.lhs.true.309:                                ; preds = %land.lhs.true.304
  %151 = load i32, i32* %fwdy, align 4
  %ofc310 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %152 = load i32, i32* %ofc310, align 4
  %cmp311 = icmp sle i32 %151, %152
  br i1 %cmp311, label %if.else.317, label %if.then.313

if.then.313:                                      ; preds = %land.lhs.true.309, %land.lhs.true.304, %if.end
  %153 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc314 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %153, i32 0, i32 0
  store i32 -1, i32* %obc314, align 4
  %154 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc315 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %154, i32 0, i32 1
  store i32 -1, i32* %obfc315, align 4
  %155 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc316 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %155, i32 0, i32 2
  store i32 -1, i32* %ofc316, align 4
  br label %if.end.499

if.else.317:                                      ; preds = %land.lhs.true.309
  %156 = load i32, i32* %side, align 4
  switch i32 %156, label %sw.epilog.498 [
    i32 151, label %sw.bb.318
    i32 152, label %sw.bb.373
    i32 153, label %sw.bb.443
  ]

sw.bb.318:                                        ; preds = %if.else.317
  %obc319 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %157 = load i32, i32* %obc319, align 4
  %cmp320 = icmp eq i32 %157, 8388607
  br i1 %cmp320, label %cond.true.322, label %cond.false.323

cond.true.322:                                    ; preds = %sw.bb.318
  br label %cond.end.326

cond.false.323:                                   ; preds = %sw.bb.318
  %obc324 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %158 = load i32, i32* %obc324, align 4
  %159 = load i32, i32* %backy, align 4
  %sub325 = sub nsw i32 %158, %159
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.323, %cond.true.322
  %cond327 = phi i32 [ 8388607, %cond.true.322 ], [ %sub325, %cond.false.323 ]
  store i32 %cond327, i32* %tbc, align 4
  %obfc328 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %160 = load i32, i32* %obfc328, align 4
  %cmp329 = icmp eq i32 %160, 8388607
  br i1 %cmp329, label %cond.true.331, label %cond.false.332

cond.true.331:                                    ; preds = %cond.end.326
  br label %cond.end.336

cond.false.332:                                   ; preds = %cond.end.326
  %obfc333 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %161 = load i32, i32* %obfc333, align 4
  %162 = load i32, i32* %backy, align 4
  %sub334 = sub nsw i32 %161, %162
  %163 = load i32, i32* %fwdy, align 4
  %sub335 = sub nsw i32 %sub334, %163
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.332, %cond.true.331
  %cond337 = phi i32 [ 8388607, %cond.true.331 ], [ %sub335, %cond.false.332 ]
  store i32 %cond337, i32* %tbfc, align 4
  %164 = load i32, i32* %tbc, align 4
  %165 = load i32, i32* %tbfc, align 4
  %cmp338 = icmp slt i32 %164, %165
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %cond.end.336
  %166 = load i32, i32* %tbc, align 4
  br label %cond.end.342

cond.false.341:                                   ; preds = %cond.end.336
  %167 = load i32, i32* %tbfc, align 4
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.340
  %cond343 = phi i32 [ %166, %cond.true.340 ], [ %167, %cond.false.341 ]
  store i32 %cond343, i32* %mxy, align 4
  %168 = load i32, i32* %be, align 4
  %169 = load i32, i32* %mxy, align 4
  %add344 = add nsw i32 %168, %169
  %cmp345 = icmp slt i32 8388607, %add344
  br i1 %cmp345, label %cond.true.347, label %cond.false.348

cond.true.347:                                    ; preds = %cond.end.342
  br label %cond.end.350

cond.false.348:                                   ; preds = %cond.end.342
  %170 = load i32, i32* %be, align 4
  %171 = load i32, i32* %mxy, align 4
  %add349 = add nsw i32 %170, %171
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.348, %cond.true.347
  %cond351 = phi i32 [ 8388607, %cond.true.347 ], [ %add349, %cond.false.348 ]
  store i32 %cond351, i32* %tb, align 4
  %172 = load i32, i32* %be, align 4
  %173 = load i32, i32* %fe, align 4
  %add352 = add nsw i32 %172, %173
  %174 = load i32, i32* %mxy, align 4
  %add353 = add nsw i32 %add352, %174
  %cmp354 = icmp slt i32 8388607, %add353
  br i1 %cmp354, label %cond.true.356, label %cond.false.357

cond.true.356:                                    ; preds = %cond.end.350
  br label %cond.end.360

cond.false.357:                                   ; preds = %cond.end.350
  %175 = load i32, i32* %be, align 4
  %176 = load i32, i32* %fe, align 4
  %add358 = add nsw i32 %175, %176
  %177 = load i32, i32* %mxy, align 4
  %add359 = add nsw i32 %add358, %177
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.357, %cond.true.356
  %cond361 = phi i32 [ 8388607, %cond.true.356 ], [ %add359, %cond.false.357 ]
  store i32 %cond361, i32* %tbf, align 4
  %178 = load i32, i32* %fe, align 4
  %179 = load i32, i32* %mxy, align 4
  %add362 = add nsw i32 %178, %179
  %cmp363 = icmp slt i32 8388607, %add362
  br i1 %cmp363, label %cond.true.365, label %cond.false.366

cond.true.365:                                    ; preds = %cond.end.360
  br label %cond.end.368

cond.false.366:                                   ; preds = %cond.end.360
  %180 = load i32, i32* %fe, align 4
  %181 = load i32, i32* %mxy, align 4
  %add367 = add nsw i32 %180, %181
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.366, %cond.true.365
  %cond369 = phi i32 [ 8388607, %cond.true.365 ], [ %add367, %cond.false.366 ]
  store i32 %cond369, i32* %tf, align 4
  %182 = load i32, i32* %tb, align 4
  %183 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc370 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %183, i32 0, i32 0
  store i32 %182, i32* %obc370, align 4
  %184 = load i32, i32* %tbf, align 4
  %185 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc371 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %185, i32 0, i32 1
  store i32 %184, i32* %obfc371, align 4
  %186 = load i32, i32* %tf, align 4
  %187 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc372 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %187, i32 0, i32 2
  store i32 %186, i32* %ofc372, align 4
  br label %sw.epilog.498

sw.bb.373:                                        ; preds = %if.else.317
  %obc374 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %188 = load i32, i32* %obc374, align 4
  %cmp375 = icmp eq i32 %188, 8388607
  br i1 %cmp375, label %cond.true.377, label %cond.false.378

cond.true.377:                                    ; preds = %sw.bb.373
  br label %cond.end.381

cond.false.378:                                   ; preds = %sw.bb.373
  %obc379 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %189 = load i32, i32* %obc379, align 4
  %190 = load i32, i32* %backy, align 4
  %sub380 = sub nsw i32 %189, %190
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.378, %cond.true.377
  %cond382 = phi i32 [ 8388607, %cond.true.377 ], [ %sub380, %cond.false.378 ]
  store i32 %cond382, i32* %tbc, align 4
  %obfc383 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %191 = load i32, i32* %obfc383, align 4
  %cmp384 = icmp eq i32 %191, 8388607
  br i1 %cmp384, label %cond.true.386, label %cond.false.387

cond.true.386:                                    ; preds = %cond.end.381
  br label %cond.end.391

cond.false.387:                                   ; preds = %cond.end.381
  %obfc388 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %192 = load i32, i32* %obfc388, align 4
  %193 = load i32, i32* %backy, align 4
  %sub389 = sub nsw i32 %192, %193
  %194 = load i32, i32* %fwdy, align 4
  %sub390 = sub nsw i32 %sub389, %194
  br label %cond.end.391

cond.end.391:                                     ; preds = %cond.false.387, %cond.true.386
  %cond392 = phi i32 [ 8388607, %cond.true.386 ], [ %sub390, %cond.false.387 ]
  store i32 %cond392, i32* %tbfc, align 4
  %ofc393 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %195 = load i32, i32* %ofc393, align 4
  %cmp394 = icmp eq i32 %195, 8388607
  br i1 %cmp394, label %cond.true.396, label %cond.false.397

cond.true.396:                                    ; preds = %cond.end.391
  br label %cond.end.400

cond.false.397:                                   ; preds = %cond.end.391
  %ofc398 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %196 = load i32, i32* %ofc398, align 4
  %197 = load i32, i32* %fwdy, align 4
  %sub399 = sub nsw i32 %196, %197
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.397, %cond.true.396
  %cond401 = phi i32 [ 8388607, %cond.true.396 ], [ %sub399, %cond.false.397 ]
  store i32 %cond401, i32* %tfc, align 4
  %198 = load i32, i32* %tbc, align 4
  %199 = load i32, i32* %tbfc, align 4
  %cmp402 = icmp slt i32 %198, %199
  br i1 %cmp402, label %cond.true.404, label %cond.false.405

cond.true.404:                                    ; preds = %cond.end.400
  %200 = load i32, i32* %tbc, align 4
  br label %cond.end.406

cond.false.405:                                   ; preds = %cond.end.400
  %201 = load i32, i32* %tbfc, align 4
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.405, %cond.true.404
  %cond407 = phi i32 [ %200, %cond.true.404 ], [ %201, %cond.false.405 ]
  store i32 %cond407, i32* %mxy, align 4
  %202 = load i32, i32* %tfc, align 4
  %203 = load i32, i32* %tbfc, align 4
  %cmp408 = icmp slt i32 %202, %203
  br i1 %cmp408, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %cond.end.406
  %204 = load i32, i32* %tfc, align 4
  br label %cond.end.412

cond.false.411:                                   ; preds = %cond.end.406
  %205 = load i32, i32* %tbfc, align 4
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.411, %cond.true.410
  %cond413 = phi i32 [ %204, %cond.true.410 ], [ %205, %cond.false.411 ]
  store i32 %cond413, i32* %myz, align 4
  %206 = load i32, i32* %be, align 4
  %207 = load i32, i32* %mxy, align 4
  %add414 = add nsw i32 %206, %207
  %cmp415 = icmp slt i32 8388607, %add414
  br i1 %cmp415, label %cond.true.417, label %cond.false.418

cond.true.417:                                    ; preds = %cond.end.412
  br label %cond.end.420

cond.false.418:                                   ; preds = %cond.end.412
  %208 = load i32, i32* %be, align 4
  %209 = load i32, i32* %mxy, align 4
  %add419 = add nsw i32 %208, %209
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.418, %cond.true.417
  %cond421 = phi i32 [ 8388607, %cond.true.417 ], [ %add419, %cond.false.418 ]
  store i32 %cond421, i32* %tb, align 4
  %210 = load i32, i32* %be, align 4
  %211 = load i32, i32* %fe, align 4
  %add422 = add nsw i32 %210, %211
  %212 = load i32, i32* %tbfc, align 4
  %add423 = add nsw i32 %add422, %212
  %cmp424 = icmp slt i32 8388607, %add423
  br i1 %cmp424, label %cond.true.426, label %cond.false.427

cond.true.426:                                    ; preds = %cond.end.420
  br label %cond.end.430

cond.false.427:                                   ; preds = %cond.end.420
  %213 = load i32, i32* %be, align 4
  %214 = load i32, i32* %fe, align 4
  %add428 = add nsw i32 %213, %214
  %215 = load i32, i32* %tbfc, align 4
  %add429 = add nsw i32 %add428, %215
  br label %cond.end.430

cond.end.430:                                     ; preds = %cond.false.427, %cond.true.426
  %cond431 = phi i32 [ 8388607, %cond.true.426 ], [ %add429, %cond.false.427 ]
  store i32 %cond431, i32* %tbf, align 4
  %216 = load i32, i32* %fe, align 4
  %217 = load i32, i32* %myz, align 4
  %add432 = add nsw i32 %216, %217
  %cmp433 = icmp slt i32 8388607, %add432
  br i1 %cmp433, label %cond.true.435, label %cond.false.436

cond.true.435:                                    ; preds = %cond.end.430
  br label %cond.end.438

cond.false.436:                                   ; preds = %cond.end.430
  %218 = load i32, i32* %fe, align 4
  %219 = load i32, i32* %myz, align 4
  %add437 = add nsw i32 %218, %219
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.436, %cond.true.435
  %cond439 = phi i32 [ 8388607, %cond.true.435 ], [ %add437, %cond.false.436 ]
  store i32 %cond439, i32* %tf, align 4
  %220 = load i32, i32* %tb, align 4
  %221 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc440 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %221, i32 0, i32 0
  store i32 %220, i32* %obc440, align 4
  %222 = load i32, i32* %tbf, align 4
  %223 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc441 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %223, i32 0, i32 1
  store i32 %222, i32* %obfc441, align 4
  %224 = load i32, i32* %tf, align 4
  %225 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc442 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %225, i32 0, i32 2
  store i32 %224, i32* %ofc442, align 4
  br label %sw.epilog.498

sw.bb.443:                                        ; preds = %if.else.317
  %ofc444 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %226 = load i32, i32* %ofc444, align 4
  %cmp445 = icmp eq i32 %226, 8388607
  br i1 %cmp445, label %cond.true.447, label %cond.false.448

cond.true.447:                                    ; preds = %sw.bb.443
  br label %cond.end.451

cond.false.448:                                   ; preds = %sw.bb.443
  %ofc449 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %227 = load i32, i32* %ofc449, align 4
  %228 = load i32, i32* %fwdy, align 4
  %sub450 = sub nsw i32 %227, %228
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.448, %cond.true.447
  %cond452 = phi i32 [ 8388607, %cond.true.447 ], [ %sub450, %cond.false.448 ]
  store i32 %cond452, i32* %tfc, align 4
  %obfc453 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %229 = load i32, i32* %obfc453, align 4
  %cmp454 = icmp eq i32 %229, 8388607
  br i1 %cmp454, label %cond.true.456, label %cond.false.457

cond.true.456:                                    ; preds = %cond.end.451
  br label %cond.end.461

cond.false.457:                                   ; preds = %cond.end.451
  %obfc458 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %230 = load i32, i32* %obfc458, align 4
  %231 = load i32, i32* %backy, align 4
  %sub459 = sub nsw i32 %230, %231
  %232 = load i32, i32* %fwdy, align 4
  %sub460 = sub nsw i32 %sub459, %232
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.457, %cond.true.456
  %cond462 = phi i32 [ 8388607, %cond.true.456 ], [ %sub460, %cond.false.457 ]
  store i32 %cond462, i32* %tbfc, align 4
  %233 = load i32, i32* %tfc, align 4
  %234 = load i32, i32* %tbfc, align 4
  %cmp463 = icmp slt i32 %233, %234
  br i1 %cmp463, label %cond.true.465, label %cond.false.466

cond.true.465:                                    ; preds = %cond.end.461
  %235 = load i32, i32* %tfc, align 4
  br label %cond.end.467

cond.false.466:                                   ; preds = %cond.end.461
  %236 = load i32, i32* %tbfc, align 4
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.false.466, %cond.true.465
  %cond468 = phi i32 [ %235, %cond.true.465 ], [ %236, %cond.false.466 ]
  store i32 %cond468, i32* %mxy, align 4
  %237 = load i32, i32* %be, align 4
  %238 = load i32, i32* %mxy, align 4
  %add469 = add nsw i32 %237, %238
  %cmp470 = icmp slt i32 8388607, %add469
  br i1 %cmp470, label %cond.true.472, label %cond.false.473

cond.true.472:                                    ; preds = %cond.end.467
  br label %cond.end.475

cond.false.473:                                   ; preds = %cond.end.467
  %239 = load i32, i32* %be, align 4
  %240 = load i32, i32* %mxy, align 4
  %add474 = add nsw i32 %239, %240
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.473, %cond.true.472
  %cond476 = phi i32 [ 8388607, %cond.true.472 ], [ %add474, %cond.false.473 ]
  store i32 %cond476, i32* %tb, align 4
  %241 = load i32, i32* %be, align 4
  %242 = load i32, i32* %fe, align 4
  %add477 = add nsw i32 %241, %242
  %243 = load i32, i32* %mxy, align 4
  %add478 = add nsw i32 %add477, %243
  %cmp479 = icmp slt i32 8388607, %add478
  br i1 %cmp479, label %cond.true.481, label %cond.false.482

cond.true.481:                                    ; preds = %cond.end.475
  br label %cond.end.485

cond.false.482:                                   ; preds = %cond.end.475
  %244 = load i32, i32* %be, align 4
  %245 = load i32, i32* %fe, align 4
  %add483 = add nsw i32 %244, %245
  %246 = load i32, i32* %mxy, align 4
  %add484 = add nsw i32 %add483, %246
  br label %cond.end.485

cond.end.485:                                     ; preds = %cond.false.482, %cond.true.481
  %cond486 = phi i32 [ 8388607, %cond.true.481 ], [ %add484, %cond.false.482 ]
  store i32 %cond486, i32* %tbf, align 4
  %247 = load i32, i32* %fe, align 4
  %248 = load i32, i32* %mxy, align 4
  %add487 = add nsw i32 %247, %248
  %cmp488 = icmp slt i32 8388607, %add487
  br i1 %cmp488, label %cond.true.490, label %cond.false.491

cond.true.490:                                    ; preds = %cond.end.485
  br label %cond.end.493

cond.false.491:                                   ; preds = %cond.end.485
  %249 = load i32, i32* %fe, align 4
  %250 = load i32, i32* %mxy, align 4
  %add492 = add nsw i32 %249, %250
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.491, %cond.true.490
  %cond494 = phi i32 [ 8388607, %cond.true.490 ], [ %add492, %cond.false.491 ]
  store i32 %cond494, i32* %tf, align 4
  %251 = load i32, i32* %tb, align 4
  %252 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc495 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %252, i32 0, i32 0
  store i32 %251, i32* %obc495, align 4
  %253 = load i32, i32* %tbf, align 4
  %254 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc496 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %254, i32 0, i32 1
  store i32 %253, i32* %obfc496, align 4
  %255 = load i32, i32* %tf, align 4
  %256 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc497 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %256, i32 0, i32 2
  store i32 %255, i32* %ofc497, align 4
  br label %sw.epilog.498

sw.epilog.498:                                    ; preds = %if.else.317, %cond.end.493, %cond.end.438, %cond.end.368
  br label %if.end.499

if.end.499:                                       ; preds = %sw.epilog.498, %if.then.313
  br label %if.end.504

if.else.500:                                      ; preds = %lor.lhs.false.2
  %257 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obc501 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %257, i32 0, i32 0
  store i32 8388607, i32* %obc501, align 4
  %258 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %obfc502 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %258, i32 0, i32 1
  store i32 8388607, i32* %obfc502, align 4
  %259 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %xc.addr, align 8
  %ofc503 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %259, i32 0, i32 2
  store i32 8388607, i32* %ofc503, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.else.500, %if.end.499
  ret void
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare i32 @ExtraGap(i32, i32, %struct.GAP*, i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
