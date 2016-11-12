; ModuleID = './app/base/gimplut.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLut = type { i8**, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"gimplut: Error: nchannels = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpLut* @gimp_lut_new() #0 {
entry:
  %lut = alloca %struct._GimpLut*, align 8
  %call = call noalias i8* @g_slice_alloc(i64 16)
  %0 = bitcast i8* %call to %struct._GimpLut*
  store %struct._GimpLut* %0, %struct._GimpLut** %lut, align 8
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %luts = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %1, i32 0, i32 0
  store i8** null, i8*** %luts, align 8
  %2 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %nchannels = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %2, i32 0, i32 1
  store i32 0, i32* %nchannels, align 4
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  ret %struct._GimpLut* %3
}

declare noalias i8* @g_slice_alloc(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_lut_free(%struct._GimpLut* %lut) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %i = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %1, i32 0, i32 1
  %2 = load i32, i32* %nchannels, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %4, i32 0, i32 0
  %5 = load i8**, i8*** %luts, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts1 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %8, i32 0, i32 0
  %9 = load i8**, i8*** %luts1, align 8
  %10 = bitcast i8** %9 to i8*
  call void @g_free(i8* %10)
  br label %do.body

do.body:                                          ; preds = %for.end
  %11 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %12 = bitcast %struct._GimpLut* %11 to i8*
  call void @g_slice_free1(i64 16, i8* %12)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_lut_setup(%struct._GimpLut* %lut, float (i8*, i32, i32, float)* %func, i8* %user_data, i32 %nchannels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %func.addr = alloca float (i8*, i32, i32, float)*, align 8
  %user_data.addr = alloca i8*, align 8
  %nchannels.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %val = alloca double, align 8
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store float (i8*, i32, i32, float)* %func, float (i8*, i32, i32, float)** %func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %0, i32 0, i32 0
  %1 = load i8**, i8*** %luts, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels1 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %3, i32 0, i32 1
  %4 = load i32, i32* %nchannels1, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts2 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %6, i32 0, i32 0
  %7 = load i8**, i8*** %luts2, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts3 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %10, i32 0, i32 0
  %11 = load i8**, i8*** %luts3, align 8
  %12 = bitcast i8** %11 to i8*
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load i32, i32* %nchannels.addr, align 4
  %14 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels4 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %14, i32 0, i32 1
  store i32 %13, i32* %nchannels4, align 4
  %15 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels5 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %15, i32 0, i32 1
  %16 = load i32, i32* %nchannels5, align 4
  %conv = sext i32 %16 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %17 = bitcast i8* %call to i8**
  %18 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts6 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %18, i32 0, i32 0
  store i8** %17, i8*** %luts6, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.42, %if.end
  %19 = load i32, i32* %i, align 4
  %20 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels8 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %20, i32 0, i32 1
  %21 = load i32, i32* %nchannels8, align 4
  %cmp9 = icmp ult i32 %19, %21
  br i1 %cmp9, label %for.body.11, label %for.end.44

for.body.11:                                      ; preds = %for.cond.7
  %call12 = call noalias i8* @g_malloc_n(i64 256, i64 1)
  %22 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %22 to i64
  %23 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts14 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %23, i32 0, i32 0
  %24 = load i8**, i8*** %luts14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %24, i64 %idxprom13
  store i8* %call12, i8** %arrayidx15, align 8
  store i32 0, i32* %v, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.39, %for.body.11
  %25 = load i32, i32* %v, align 4
  %cmp17 = icmp ult i32 %25, 256
  br i1 %cmp17, label %for.body.19, label %for.end.41

for.body.19:                                      ; preds = %for.cond.16
  %26 = load float (i8*, i32, i32, float)*, float (i8*, i32, i32, float)** %func.addr, align 8
  %27 = load i8*, i8** %user_data.addr, align 8
  %28 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels20 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %28, i32 0, i32 1
  %29 = load i32, i32* %nchannels20, align 4
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %v, align 4
  %conv21 = uitofp i32 %31 to double
  %div = fdiv double %conv21, 2.550000e+02
  %conv22 = fptrunc double %div to float
  %call23 = call float %26(i8* %27, i32 %29, i32 %30, float %conv22)
  %conv24 = fpext float %call23 to double
  %mul = fmul double 2.550000e+02, %conv24
  %add = fadd double %mul, 5.000000e-01
  store double %add, double* %val, align 8
  %32 = load double, double* %val, align 8
  %cmp25 = fcmp ogt double %32, 2.550000e+02
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.19
  br label %cond.end.31

cond.false:                                       ; preds = %for.body.19
  %33 = load double, double* %val, align 8
  %cmp27 = fcmp olt double %33, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %34 = load double, double* %val, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi double [ 0.000000e+00, %cond.true.29 ], [ %34, %cond.false.30 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv33 = fptoui double %cond32 to i8
  %35 = load i32, i32* %v, align 4
  %idxprom34 = zext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %36 to i64
  %37 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts36 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %37, i32 0, i32 0
  %38 = load i8**, i8*** %luts36, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %38, i64 %idxprom35
  %39 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %39, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx38, align 1
  br label %for.inc.39

for.inc.39:                                       ; preds = %cond.end.31
  %40 = load i32, i32* %v, align 4
  %inc40 = add i32 %40, 1
  store i32 %inc40, i32* %v, align 4
  br label %for.cond.16

for.end.41:                                       ; preds = %for.cond.16
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %41 = load i32, i32* %i, align 4
  %inc43 = add i32 %41, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.7

for.end.44:                                       ; preds = %for.cond.7
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_lut_setup_exact(%struct._GimpLut* %lut, float (i8*, i32, i32, float)* %func, i8* %user_data, i32 %nchannels) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %func.addr = alloca float (i8*, i32, i32, float)*, align 8
  %user_data.addr = alloca i8*, align 8
  %nchannels.addr = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store float (i8*, i32, i32, float)* %func, float (i8*, i32, i32, float)** %func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %1 = load float (i8*, i32, i32, float)*, float (i8*, i32, i32, float)** %func.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = load i32, i32* %nchannels.addr, align 4
  call void @gimp_lut_setup(%struct._GimpLut* %0, float (i8*, i32, i32, float)* %1, i8* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_lut_process(%struct._GimpLut* %lut, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %lut0 = alloca i8*, align 8
  %lut1 = alloca i8*, align 8
  %lut2 = alloca i8*, align 8
  %lut3 = alloca i8*, align 8
  %h = alloca i32, align 4
  %width = alloca i32, align 4
  %src_r_i = alloca i32, align 4
  %dest_r_i = alloca i32, align 4
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i8* null, i8** %lut0, align 8
  store i8* null, i8** %lut1, align 8
  store i8* null, i8** %lut2, align 8
  store i8* null, i8** %lut3, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %0, i32 0, i32 1
  %1 = load i32, i32* %nchannels, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %2, i32 0, i32 0
  %3 = load i8**, i8*** %luts, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %lut0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels1 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %5, i32 0, i32 1
  %6 = load i32, i32* %nchannels1, align 4
  %cmp2 = icmp sgt i32 %6, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts4 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %7, i32 0, i32 0
  %8 = load i8**, i8*** %luts4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %lut1, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels7 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %10, i32 0, i32 1
  %11 = load i32, i32* %nchannels7, align 4
  %cmp8 = icmp sgt i32 %11, 2
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %12 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts10 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %12, i32 0, i32 0
  %13 = load i8**, i8*** %luts10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 2
  %14 = load i8*, i8** %arrayidx11, align 8
  store i8* %14, i8** %lut2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.6
  %15 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels13 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %15, i32 0, i32 1
  %16 = load i32, i32* %nchannels13, align 4
  %cmp14 = icmp sgt i32 %16, 3
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %17 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts16 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %17, i32 0, i32 0
  %18 = load i8**, i8*** %luts16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 3
  %19 = load i8*, i8** %arrayidx17, align 8
  store i8* %19, i8** %lut3, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 9
  %21 = load i32, i32* %h19, align 4
  store i32 %21, i32* %h, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  store i8* %23, i8** %src, align 8
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data20 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %24, i32 0, i32 0
  %25 = load i8*, i8** %data20, align 8
  store i8* %25, i8** %dest, align 8
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 8
  %27 = load i32, i32* %w, align 4
  store i32 %27, i32* %width, align 4
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 5
  %29 = load i32, i32* %rowstride, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 10
  %31 = load i32, i32* %bytes, align 4
  %32 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w21 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %32, i32 0, i32 8
  %33 = load i32, i32* %w21, align 4
  %mul = mul nsw i32 %31, %33
  %sub = sub nsw i32 %29, %mul
  store i32 %sub, i32* %src_r_i, align 4
  %34 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %34, i32 0, i32 5
  %35 = load i32, i32* %rowstride22, align 4
  %36 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %36, i32 0, i32 10
  %37 = load i32, i32* %bytes23, align 4
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 8
  %39 = load i32, i32* %w24, align 4
  %mul25 = mul nsw i32 %37, %39
  %sub26 = sub nsw i32 %35, %mul25
  store i32 %sub26, i32* %dest_r_i, align 4
  %40 = load i32, i32* %src_r_i, align 4
  %cmp27 = icmp eq i32 %40, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.18
  %41 = load i32, i32* %dest_r_i, align 4
  %cmp28 = icmp eq i32 %41, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true
  %42 = load i32, i32* %h, align 4
  %43 = load i32, i32* %width, align 4
  %mul30 = mul i32 %43, %42
  store i32 %mul30, i32* %width, align 4
  store i32 1, i32* %h, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true, %if.end.18
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.31
  %44 = load i32, i32* %h, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %while.body, label %while.end.103

while.body:                                       ; preds = %while.cond
  %45 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels32 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %45, i32 0, i32 1
  %46 = load i32, i32* %nchannels32, align 4
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.54
    i32 4, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %while.body
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.36, %sw.bb
  %47 = load i32, i32* %width, align 4
  %dec34 = add i32 %47, -1
  store i32 %dec34, i32* %width, align 4
  %tobool35 = icmp ne i32 %47, 0
  br i1 %tobool35, label %while.body.36, label %while.end

while.body.36:                                    ; preds = %while.cond.33
  %48 = load i8*, i8** %src, align 8
  %49 = load i8, i8* %48, align 1
  %idxprom = zext i8 %49 to i64
  %50 = load i8*, i8** %lut0, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx37, align 1
  %52 = load i8*, i8** %dest, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %54 = load i8*, i8** %dest, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr38, i8** %dest, align 8
  br label %while.cond.33

while.end:                                        ; preds = %while.cond.33
  br label %sw.epilog

sw.bb.39:                                         ; preds = %while.body
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %sw.bb.39
  %55 = load i32, i32* %width, align 4
  %dec41 = add i32 %55, -1
  store i32 %dec41, i32* %width, align 4
  %tobool42 = icmp ne i32 %55, 0
  br i1 %tobool42, label %while.body.43, label %while.end.53

while.body.43:                                    ; preds = %while.cond.40
  %56 = load i8*, i8** %src, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx44, align 1
  %idxprom45 = zext i8 %57 to i64
  %58 = load i8*, i8** %lut0, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %58, i64 %idxprom45
  %59 = load i8, i8* %arrayidx46, align 1
  %60 = load i8*, i8** %dest, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %59, i8* %arrayidx47, align 1
  %61 = load i8*, i8** %src, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx48, align 1
  %idxprom49 = zext i8 %62 to i64
  %63 = load i8*, i8** %lut1, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %63, i64 %idxprom49
  %64 = load i8, i8* %arrayidx50, align 1
  %65 = load i8*, i8** %dest, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %arrayidx51, align 1
  %66 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %add.ptr, i8** %src, align 8
  %67 = load i8*, i8** %dest, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %add.ptr52, i8** %dest, align 8
  br label %while.cond.40

while.end.53:                                     ; preds = %while.cond.40
  br label %sw.epilog

sw.bb.54:                                         ; preds = %while.body
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.58, %sw.bb.54
  %68 = load i32, i32* %width, align 4
  %dec56 = add i32 %68, -1
  store i32 %dec56, i32* %width, align 4
  %tobool57 = icmp ne i32 %68, 0
  br i1 %tobool57, label %while.body.58, label %while.end.73

while.body.58:                                    ; preds = %while.cond.55
  %69 = load i8*, i8** %src, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx59, align 1
  %idxprom60 = zext i8 %70 to i64
  %71 = load i8*, i8** %lut0, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %71, i64 %idxprom60
  %72 = load i8, i8* %arrayidx61, align 1
  %73 = load i8*, i8** %dest, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %72, i8* %arrayidx62, align 1
  %74 = load i8*, i8** %src, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx63, align 1
  %idxprom64 = zext i8 %75 to i64
  %76 = load i8*, i8** %lut1, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %76, i64 %idxprom64
  %77 = load i8, i8* %arrayidx65, align 1
  %78 = load i8*, i8** %dest, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 %77, i8* %arrayidx66, align 1
  %79 = load i8*, i8** %src, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx67, align 1
  %idxprom68 = zext i8 %80 to i64
  %81 = load i8*, i8** %lut2, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %81, i64 %idxprom68
  %82 = load i8, i8* %arrayidx69, align 1
  %83 = load i8*, i8** %dest, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %83, i64 2
  store i8 %82, i8* %arrayidx70, align 1
  %84 = load i8*, i8** %src, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %84, i64 3
  store i8* %add.ptr71, i8** %src, align 8
  %85 = load i8*, i8** %dest, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %85, i64 3
  store i8* %add.ptr72, i8** %dest, align 8
  br label %while.cond.55

while.end.73:                                     ; preds = %while.cond.55
  br label %sw.epilog

sw.bb.74:                                         ; preds = %while.body
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.78, %sw.bb.74
  %86 = load i32, i32* %width, align 4
  %dec76 = add i32 %86, -1
  store i32 %dec76, i32* %width, align 4
  %tobool77 = icmp ne i32 %86, 0
  br i1 %tobool77, label %while.body.78, label %while.end.97

while.body.78:                                    ; preds = %while.cond.75
  %87 = load i8*, i8** %src, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx79, align 1
  %idxprom80 = zext i8 %88 to i64
  %89 = load i8*, i8** %lut0, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %89, i64 %idxprom80
  %90 = load i8, i8* %arrayidx81, align 1
  %91 = load i8*, i8** %dest, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 %90, i8* %arrayidx82, align 1
  %92 = load i8*, i8** %src, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx83, align 1
  %idxprom84 = zext i8 %93 to i64
  %94 = load i8*, i8** %lut1, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %94, i64 %idxprom84
  %95 = load i8, i8* %arrayidx85, align 1
  %96 = load i8*, i8** %dest, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %arrayidx86, align 1
  %97 = load i8*, i8** %src, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx87, align 1
  %idxprom88 = zext i8 %98 to i64
  %99 = load i8*, i8** %lut2, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %99, i64 %idxprom88
  %100 = load i8, i8* %arrayidx89, align 1
  %101 = load i8*, i8** %dest, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 %100, i8* %arrayidx90, align 1
  %102 = load i8*, i8** %src, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %102, i64 3
  %103 = load i8, i8* %arrayidx91, align 1
  %idxprom92 = zext i8 %103 to i64
  %104 = load i8*, i8** %lut3, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %104, i64 %idxprom92
  %105 = load i8, i8* %arrayidx93, align 1
  %106 = load i8*, i8** %dest, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %106, i64 3
  store i8 %105, i8* %arrayidx94, align 1
  %107 = load i8*, i8** %src, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %add.ptr95, i8** %src, align 8
  %108 = load i8*, i8** %dest, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %108, i64 4
  store i8* %add.ptr96, i8** %dest, align 8
  br label %while.cond.75

while.end.97:                                     ; preds = %while.cond.75
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %109 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels98 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %109, i32 0, i32 1
  %110 = load i32, i32* %nchannels98, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %110)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end.97, %while.end.73, %while.end.53, %while.end
  %111 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w99 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %111, i32 0, i32 8
  %112 = load i32, i32* %w99, align 4
  store i32 %112, i32* %width, align 4
  %113 = load i32, i32* %src_r_i, align 4
  %114 = load i8*, i8** %src, align 8
  %idx.ext = zext i32 %113 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %114, i64 %idx.ext
  store i8* %add.ptr100, i8** %src, align 8
  %115 = load i32, i32* %dest_r_i, align 4
  %116 = load i8*, i8** %dest, align 8
  %idx.ext101 = zext i32 %115 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %116, i64 %idx.ext101
  store i8* %add.ptr102, i8** %dest, align 8
  br label %while.cond

while.end.103:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_lut_process_inline(%struct._GimpLut* %lut, %struct._PixelRegion* %srcPR) #0 {
entry:
  %lut.addr = alloca %struct._GimpLut*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %h = alloca i32, align 4
  %width = alloca i32, align 4
  %src_r_i = alloca i32, align 4
  %src = alloca i8*, align 8
  %lut0 = alloca i8*, align 8
  %lut1 = alloca i8*, align 8
  %lut2 = alloca i8*, align 8
  %lut3 = alloca i8*, align 8
  store %struct._GimpLut* %lut, %struct._GimpLut** %lut.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i8* null, i8** %lut0, align 8
  store i8* null, i8** %lut1, align 8
  store i8* null, i8** %lut2, align 8
  store i8* null, i8** %lut3, align 8
  %0 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %0, i32 0, i32 1
  %1 = load i32, i32* %nchannels, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %2, i32 0, i32 0
  %3 = load i8**, i8*** %luts, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %lut0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels1 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %5, i32 0, i32 1
  %6 = load i32, i32* %nchannels1, align 4
  %cmp2 = icmp sgt i32 %6, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts4 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %7, i32 0, i32 0
  %8 = load i8**, i8*** %luts4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx5, align 8
  store i8* %9, i8** %lut1, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels7 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %10, i32 0, i32 1
  %11 = load i32, i32* %nchannels7, align 4
  %cmp8 = icmp sgt i32 %11, 2
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %12 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts10 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %12, i32 0, i32 0
  %13 = load i8**, i8*** %luts10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 2
  %14 = load i8*, i8** %arrayidx11, align 8
  store i8* %14, i8** %lut2, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.6
  %15 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels13 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %15, i32 0, i32 1
  %16 = load i32, i32* %nchannels13, align 4
  %cmp14 = icmp sgt i32 %16, 3
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %17 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %luts16 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %17, i32 0, i32 0
  %18 = load i8**, i8*** %luts16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 3
  %19 = load i8*, i8** %arrayidx17, align 8
  store i8* %19, i8** %lut3, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h19 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 9
  %21 = load i32, i32* %h19, align 4
  store i32 %21, i32* %h, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  store i8* %23, i8** %src, align 8
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %24, i32 0, i32 8
  %25 = load i32, i32* %w, align 4
  store i32 %25, i32* %width, align 4
  %26 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %26, i32 0, i32 5
  %27 = load i32, i32* %rowstride, align 4
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 10
  %29 = load i32, i32* %bytes, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w20 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 8
  %31 = load i32, i32* %w20, align 4
  %mul = mul nsw i32 %29, %31
  %sub = sub nsw i32 %27, %mul
  store i32 %sub, i32* %src_r_i, align 4
  %32 = load i32, i32* %src_r_i, align 4
  %cmp21 = icmp eq i32 %32, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %33 = load i32, i32* %h, align 4
  %34 = load i32, i32* %width, align 4
  %mul23 = mul i32 %34, %33
  store i32 %mul23, i32* %width, align 4
  store i32 1, i32* %h, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.18
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.24
  %35 = load i32, i32* %h, align 4
  %dec = add i32 %35, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %while.body, label %while.end.90

while.body:                                       ; preds = %while.cond
  %36 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels25 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %36, i32 0, i32 1
  %37 = load i32, i32* %nchannels25, align 4
  switch i32 %37, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %while.body
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.29, %sw.bb
  %38 = load i32, i32* %width, align 4
  %dec27 = add i32 %38, -1
  store i32 %dec27, i32* %width, align 4
  %tobool28 = icmp ne i32 %38, 0
  br i1 %tobool28, label %while.body.29, label %while.end

while.body.29:                                    ; preds = %while.cond.26
  %39 = load i8*, i8** %src, align 8
  %40 = load i8, i8* %39, align 1
  %idxprom = zext i8 %40 to i64
  %41 = load i8*, i8** %lut0, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i8, i8* %arrayidx30, align 1
  %43 = load i8*, i8** %src, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  br label %while.cond.26

while.end:                                        ; preds = %while.cond.26
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.35, %sw.bb.31
  %45 = load i32, i32* %width, align 4
  %dec33 = add i32 %45, -1
  store i32 %dec33, i32* %width, align 4
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %while.body.35, label %while.end.44

while.body.35:                                    ; preds = %while.cond.32
  %46 = load i8*, i8** %src, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx36, align 1
  %idxprom37 = zext i8 %47 to i64
  %48 = load i8*, i8** %lut0, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %48, i64 %idxprom37
  %49 = load i8, i8* %arrayidx38, align 1
  %50 = load i8*, i8** %src, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %49, i8* %arrayidx39, align 1
  %51 = load i8*, i8** %src, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx40, align 1
  %idxprom41 = zext i8 %52 to i64
  %53 = load i8*, i8** %lut1, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %53, i64 %idxprom41
  %54 = load i8, i8* %arrayidx42, align 1
  %55 = load i8*, i8** %src, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %arrayidx43, align 1
  %56 = load i8*, i8** %src, align 8
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %add.ptr, i8** %src, align 8
  br label %while.cond.32

while.end.44:                                     ; preds = %while.cond.32
  br label %sw.epilog

sw.bb.45:                                         ; preds = %while.body
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.49, %sw.bb.45
  %57 = load i32, i32* %width, align 4
  %dec47 = add i32 %57, -1
  store i32 %dec47, i32* %width, align 4
  %tobool48 = icmp ne i32 %57, 0
  br i1 %tobool48, label %while.body.49, label %while.end.63

while.body.49:                                    ; preds = %while.cond.46
  %58 = load i8*, i8** %src, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx50, align 1
  %idxprom51 = zext i8 %59 to i64
  %60 = load i8*, i8** %lut0, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %60, i64 %idxprom51
  %61 = load i8, i8* %arrayidx52, align 1
  %62 = load i8*, i8** %src, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %arrayidx53, align 1
  %63 = load i8*, i8** %src, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx54, align 1
  %idxprom55 = zext i8 %64 to i64
  %65 = load i8*, i8** %lut1, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %65, i64 %idxprom55
  %66 = load i8, i8* %arrayidx56, align 1
  %67 = load i8*, i8** %src, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %arrayidx57, align 1
  %68 = load i8*, i8** %src, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx58, align 1
  %idxprom59 = zext i8 %69 to i64
  %70 = load i8*, i8** %lut2, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %70, i64 %idxprom59
  %71 = load i8, i8* %arrayidx60, align 1
  %72 = load i8*, i8** %src, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %72, i64 2
  store i8 %71, i8* %arrayidx61, align 1
  %73 = load i8*, i8** %src, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %73, i64 3
  store i8* %add.ptr62, i8** %src, align 8
  br label %while.cond.46

while.end.63:                                     ; preds = %while.cond.46
  br label %sw.epilog

sw.bb.64:                                         ; preds = %while.body
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.68, %sw.bb.64
  %74 = load i32, i32* %width, align 4
  %dec66 = add i32 %74, -1
  store i32 %dec66, i32* %width, align 4
  %tobool67 = icmp ne i32 %74, 0
  br i1 %tobool67, label %while.body.68, label %while.end.86

while.body.68:                                    ; preds = %while.cond.65
  %75 = load i8*, i8** %src, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx69, align 1
  %idxprom70 = zext i8 %76 to i64
  %77 = load i8*, i8** %lut0, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %77, i64 %idxprom70
  %78 = load i8, i8* %arrayidx71, align 1
  %79 = load i8*, i8** %src, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %78, i8* %arrayidx72, align 1
  %80 = load i8*, i8** %src, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx73, align 1
  %idxprom74 = zext i8 %81 to i64
  %82 = load i8*, i8** %lut1, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %82, i64 %idxprom74
  %83 = load i8, i8* %arrayidx75, align 1
  %84 = load i8*, i8** %src, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %83, i8* %arrayidx76, align 1
  %85 = load i8*, i8** %src, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %85, i64 2
  %86 = load i8, i8* %arrayidx77, align 1
  %idxprom78 = zext i8 %86 to i64
  %87 = load i8*, i8** %lut2, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %87, i64 %idxprom78
  %88 = load i8, i8* %arrayidx79, align 1
  %89 = load i8*, i8** %src, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %88, i8* %arrayidx80, align 1
  %90 = load i8*, i8** %src, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %90, i64 3
  %91 = load i8, i8* %arrayidx81, align 1
  %idxprom82 = zext i8 %91 to i64
  %92 = load i8*, i8** %lut3, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %92, i64 %idxprom82
  %93 = load i8, i8* %arrayidx83, align 1
  %94 = load i8*, i8** %src, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %94, i64 3
  store i8 %93, i8* %arrayidx84, align 1
  %95 = load i8*, i8** %src, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %add.ptr85, i8** %src, align 8
  br label %while.cond.65

while.end.86:                                     ; preds = %while.cond.65
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %96 = load %struct._GimpLut*, %struct._GimpLut** %lut.addr, align 8
  %nchannels87 = getelementptr inbounds %struct._GimpLut, %struct._GimpLut* %96, i32 0, i32 1
  %97 = load i32, i32* %nchannels87, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %97)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end.86, %while.end.63, %while.end.44, %while.end
  %98 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w88 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %98, i32 0, i32 8
  %99 = load i32, i32* %w88, align 4
  store i32 %99, i32* %width, align 4
  %100 = load i32, i32* %src_r_i, align 4
  %101 = load i8*, i8** %src, align 8
  %idx.ext = zext i32 %100 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %101, i64 %idx.ext
  store i8* %add.ptr89, i8** %src, align 8
  br label %while.cond

while.end.90:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
