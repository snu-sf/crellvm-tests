; ModuleID = './MultiSource.Benchmarks.McCat/8.18-imp.textloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ImgT = type { i8, i8*, i8*, %struct._IO_FILE*, i32, i32, i32, i32, i8*, double*, float*, float*, float*, i32*, double, double, i32*, double*, i32*, i32* }
%struct._CompT = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i8, %struct._PixT*, %struct._CompT*, i8, %struct._CompT* }
%struct._PixT = type { i32, i32, %struct._PixT* }

@HVAR_WINDOW = external global i32, align 4
@KILL_SMALL_COMP = external global i32, align 4
@VSPREAD_THRESHOLD = external global double, align 8
@SMALL_THRESHOLD = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"component:\09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"# points:\09 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"average row:\09 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"x max:\09\09 %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"y max:\09\09 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"x min:\09\09 %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"y min:\09\09 %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"type:\09\09 %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"falling\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rising\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"------------------------\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Total points: %d\0A\00", align 1
@WriteConnectedComponentsToPGM.index = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"%s.comp%d.pgm\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@SAME_ROW_V = external global i32, align 4
@SAME_ROW_H = external global i32, align 4
@.str.17 = private unnamed_addr constant [46 x i8] c"Unexpected error in MergeToLeft(), aborting.\0A\00", align 1
@MAX_CHAR_SIZE = external global i32, align 4
@MIN_CHAR_SIZE = external global i32, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"Unexpected error in PairComponents(). \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Exiting.\0A\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"Unexpected case or mathematical absurdity reached in Overlap(). \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Twink!\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s.out.pgm\00", align 1

; Function Attrs: nounwind uwtable
define void @ConvertToFloat(%struct.ImgT* %img) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  %i = alloca i64, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 5
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 4
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul1) #6
  %4 = bitcast i8* %call to float*
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %f = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 10
  store float* %4, float** %f, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 5
  %8 = load i32, i32* %width2, align 4
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height3 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 4
  %10 = load i32, i32* %height3, align 4
  %mul4 = mul nsw i32 %8, %10
  %conv5 = sext i32 %mul4 to i64
  %cmp = icmp slt i64 %6, %conv5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 8
  %13 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %11
  %14 = load i8, i8* %arrayidx, align 1
  %conv7 = uitofp i8 %14 to float
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %f8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %16, i32 0, i32 10
  %17 = load float*, float** %f8, align 8
  %arrayidx9 = getelementptr inbounds float, float* %17, i64 %15
  store float %conv7, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @HorzVariance(%struct.ImgT* %img, i32 %threshold) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  %threshold.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %mean = alloca float, align 4
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 5
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 4
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %4 = bitcast i8* %call to float*
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 11
  store float* %4, float** %var, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height1 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 4
  %8 = load i32, i32* %height1, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 10, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.72, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %10, i32 0, i32 5
  %11 = load i32, i32* %width4, align 4
  %sub = sub nsw i32 %11, 10
  %cmp5 = icmp slt i32 %9, %sub
  br i1 %cmp5, label %for.body.7, label %for.end.74

for.body.7:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %y, align 4
  %13 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %13, i32 0, i32 5
  %14 = load i32, i32* %width8, align 4
  %mul9 = mul nsw i32 %12, %14
  %15 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul9, %15
  store i32 %add, i32* %idx, align 4
  %16 = load i32, i32* @HVAR_WINDOW, align 4
  %sub10 = sub nsw i32 0, %16
  store i32 %sub10, i32* %i, align 4
  store float 0.000000e+00, float* %mean, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.7
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* @HVAR_WINDOW, align 4
  %cmp12 = icmp sle i32 %17, %18
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %19 = load i32, i32* %idx, align 4
  %20 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %19, %20
  %idxprom = sext i32 %add15 to i64
  %21 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %21, i32 0, i32 8
  %22 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %23 to i32
  %conv17 = sitofp i32 %conv16 to float
  %24 = load float, float* %mean, align 4
  %add18 = fadd float %24, %conv17
  store float %add18, float* %mean, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %26 = load i32, i32* @HVAR_WINDOW, align 4
  %mul19 = mul nsw i32 %26, 2
  %add20 = add nsw i32 %mul19, 1
  %conv21 = sitofp i32 %add20 to float
  %27 = load float, float* %mean, align 4
  %div = fdiv float %27, %conv21
  store float %div, float* %mean, align 4
  %28 = load i32, i32* @HVAR_WINDOW, align 4
  %sub22 = sub nsw i32 0, %28
  store i32 %sub22, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.46, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @HVAR_WINDOW, align 4
  %cmp24 = icmp sle i32 %29, %30
  br i1 %cmp24, label %for.body.26, label %for.end.48

for.body.26:                                      ; preds = %for.cond.23
  %31 = load i32, i32* %idx, align 4
  %32 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %31, %32
  %idxprom28 = sext i32 %add27 to i64
  %33 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data29 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %33, i32 0, i32 8
  %34 = load i8*, i8** %data29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 %idxprom28
  %35 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %35 to i32
  %conv32 = sitofp i32 %conv31 to float
  %36 = load float, float* %mean, align 4
  %sub33 = fsub float %conv32, %36
  %37 = load i32, i32* %idx, align 4
  %38 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %37, %38
  %idxprom35 = sext i32 %add34 to i64
  %39 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data36 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %39, i32 0, i32 8
  %40 = load i8*, i8** %data36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %40, i64 %idxprom35
  %41 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %41 to i32
  %conv39 = sitofp i32 %conv38 to float
  %42 = load float, float* %mean, align 4
  %sub40 = fsub float %conv39, %42
  %mul41 = fmul float %sub33, %sub40
  %43 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var43 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %44, i32 0, i32 11
  %45 = load float*, float** %var43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %45, i64 %idxprom42
  %46 = load float, float* %arrayidx44, align 4
  %add45 = fadd float %46, %mul41
  store float %add45, float* %arrayidx44, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.26
  %47 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %47, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.23

for.end.48:                                       ; preds = %for.cond.23
  %48 = load i32, i32* @HVAR_WINDOW, align 4
  %mul49 = mul nsw i32 %48, 2
  %add50 = add nsw i32 %mul49, 1
  %conv51 = sitofp i32 %add50 to float
  %49 = load i32, i32* %idx, align 4
  %idxprom52 = sext i32 %49 to i64
  %50 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var53 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %50, i32 0, i32 11
  %51 = load float*, float** %var53, align 8
  %arrayidx54 = getelementptr inbounds float, float* %51, i64 %idxprom52
  %52 = load float, float* %arrayidx54, align 4
  %div55 = fdiv float %52, %conv51
  store float %div55, float* %arrayidx54, align 4
  %53 = load i32, i32* %threshold.addr, align 4
  %cmp56 = icmp ne i32 %53, -1
  br i1 %cmp56, label %if.then, label %if.end.71

if.then:                                          ; preds = %for.end.48
  %54 = load i32, i32* %idx, align 4
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var59 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %55, i32 0, i32 11
  %56 = load float*, float** %var59, align 8
  %arrayidx60 = getelementptr inbounds float, float* %56, i64 %idxprom58
  %57 = load float, float* %arrayidx60, align 4
  %58 = load i32, i32* %threshold.addr, align 4
  %conv61 = sitofp i32 %58 to float
  %cmp62 = fcmp ole float %57, %conv61
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.then
  %59 = load i32, i32* %idx, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var66 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %60, i32 0, i32 11
  %61 = load float*, float** %var66, align 8
  %arrayidx67 = getelementptr inbounds float, float* %61, i64 %idxprom65
  store float 0.000000e+00, float* %arrayidx67, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %62 = load i32, i32* %idx, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var69 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %63, i32 0, i32 11
  %64 = load float*, float** %var69, align 8
  %arrayidx70 = getelementptr inbounds float, float* %64, i64 %idxprom68
  store float 2.550000e+02, float* %arrayidx70, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.64
  br label %if.end.71

if.end.71:                                        ; preds = %if.end, %for.end.48
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %65 = load i32, i32* %x, align 4
  %inc73 = add nsw i32 %65, 1
  store i32 %inc73, i32* %x, align 4
  br label %for.cond.3

for.end.74:                                       ; preds = %for.cond.3
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %66 = load i32, i32* %y, align 4
  %inc76 = add nsw i32 %66, 1
  store i32 %inc76, i32* %y, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._CompT* @BuildConnectedComponents(%struct.ImgT* %img, i32 %bg) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  %bg.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xm = alloca i32, align 4
  %ym = alloca i32, align 4
  %idx = alloca i32, align 4
  %midx = alloca i32, align 4
  %comp = alloca %struct._CompT*, align 8
  %cur_comp = alloca %struct._CompT*, align 8
  %last_comp = alloca %struct._CompT*, align 8
  %merge_comp = alloca %struct._CompT*, align 8
  %mprev_comp = alloca %struct._CompT*, align 8
  %pix = alloca %struct._PixT*, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i32 %bg, i32* %bg.addr, align 4
  store %struct._CompT* null, %struct._CompT** %last_comp, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 5
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 4
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #6
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 13
  store i32* %4, i32** %lmap, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.193, %entry
  %6 = load i32, i32* %y, align 4
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height1 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 4
  %8 = load i32, i32* %height1, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.195

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.190, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %10, i32 0, i32 5
  %11 = load i32, i32* %width4, align 4
  %sub = sub nsw i32 %11, 1
  %cmp5 = icmp slt i32 %9, %sub
  br i1 %cmp5, label %for.body.7, label %for.end.192

for.body.7:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %y, align 4
  %13 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %13, i32 0, i32 5
  %14 = load i32, i32* %width8, align 4
  %mul9 = mul nsw i32 %12, %14
  %15 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul9, %15
  store i32 %add, i32* %idx, align 4
  %16 = load i32, i32* %bg.addr, align 4
  %cmp10 = icmp sge i32 %16, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %17 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %cedge = getelementptr inbounds %struct.ImgT, %struct.ImgT* %18, i32 0, i32 12
  %19 = load float*, float** %cedge, align 8
  %arrayidx = getelementptr inbounds float, float* %19, i64 %idxprom
  %20 = load float, float* %arrayidx, align 4
  %21 = load i32, i32* %bg.addr, align 4
  %conv12 = sitofp i32 %21 to float
  %cmp13 = fcmp oeq float %20, %conv12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.190

if.end:                                           ; preds = %land.lhs.true, %for.body.7
  store i32 -1, i32* %ym, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.39, %if.end
  %22 = load i32, i32* %ym, align 4
  %cmp16 = icmp sle i32 %22, 0
  br i1 %cmp16, label %for.body.18, label %for.end.41

for.body.18:                                      ; preds = %for.cond.15
  store i32 -1, i32* %xm, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %23 = load i32, i32* %xm, align 4
  %cmp20 = icmp sle i32 %23, 1
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %ym, align 4
  %add23 = add nsw i32 %24, %25
  %26 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width24 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %26, i32 0, i32 5
  %27 = load i32, i32* %width24, align 4
  %mul25 = mul nsw i32 %add23, %27
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %xm, align 4
  %add26 = add nsw i32 %28, %29
  %add27 = add nsw i32 %mul25, %add26
  store i32 %add27, i32* %midx, align 4
  %30 = load i32, i32* %midx, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap29 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %31, i32 0, i32 13
  %32 = load i32*, i32** %lmap29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %32, i64 %idxprom28
  %33 = load i32, i32* %arrayidx30, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.22
  br label %for.end

if.end.32:                                        ; preds = %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %34 = load i32, i32* %xm, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %xm, align 4
  br label %for.cond.19

for.end:                                          ; preds = %if.then.31, %for.cond.19
  %35 = load i32, i32* %midx, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap34 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %36, i32 0, i32 13
  %37 = load i32*, i32** %lmap34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %37, i64 %idxprom33
  %38 = load i32, i32* %arrayidx35, align 4
  %tobool36 = icmp ne i32 %38, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  br label %for.end.41

if.end.38:                                        ; preds = %for.end
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %39 = load i32, i32* %ym, align 4
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* %ym, align 4
  br label %for.cond.15

for.end.41:                                       ; preds = %if.then.37, %for.cond.15
  %40 = load i32, i32* %midx, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap43 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %41, i32 0, i32 13
  %42 = load i32*, i32** %lmap43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %42, i64 %idxprom42
  %43 = load i32, i32* %arrayidx44, align 4
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %for.end.41
  %call47 = call noalias i8* @malloc(i64 80) #6
  %44 = bitcast i8* %call47 to %struct._CompT*
  store %struct._CompT* %44, %struct._CompT** %comp, align 8
  %45 = load %struct._CompT*, %struct._CompT** %last_comp, align 8
  %cmp48 = icmp eq %struct._CompT* %45, null
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.46
  br label %cond.end

cond.false:                                       ; preds = %if.then.46
  %46 = load %struct._CompT*, %struct._CompT** %last_comp, align 8
  %id = getelementptr inbounds %struct._CompT, %struct._CompT* %46, i32 0, i32 0
  %47 = load i32, i32* %id, align 4
  %add50 = add nsw i32 %47, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add50, %cond.false ]
  %48 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %id51 = getelementptr inbounds %struct._CompT, %struct._CompT* %48, i32 0, i32 0
  store i32 %cond, i32* %id51, align 4
  %49 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %n = getelementptr inbounds %struct._CompT, %struct._CompT* %49, i32 0, i32 1
  store i32 0, i32* %n, align 4
  %50 = load i32, i32* %y, align 4
  %51 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %avg_row = getelementptr inbounds %struct._CompT, %struct._CompT* %51, i32 0, i32 2
  store i32 %50, i32* %avg_row, align 4
  %52 = load i32, i32* %x, align 4
  %53 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %53, i32 0, i32 3
  store i32 %52, i32* %x_max, align 4
  %54 = load i32, i32* %y, align 4
  %55 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %y_max = getelementptr inbounds %struct._CompT, %struct._CompT* %55, i32 0, i32 4
  store i32 %54, i32* %y_max, align 4
  %56 = load i32, i32* %x, align 4
  %57 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %57, i32 0, i32 5
  store i32 %56, i32* %x_min, align 4
  %58 = load i32, i32* %y, align 4
  %59 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %y_min = getelementptr inbounds %struct._CompT, %struct._CompT* %59, i32 0, i32 6
  store i32 %58, i32* %y_min, align 4
  %60 = load i32, i32* %y, align 4
  %61 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %y_left = getelementptr inbounds %struct._CompT, %struct._CompT* %61, i32 0, i32 7
  store i32 %60, i32* %y_left, align 4
  %62 = load i32, i32* %y, align 4
  %63 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %y_right = getelementptr inbounds %struct._CompT, %struct._CompT* %63, i32 0, i32 8
  store i32 %62, i32* %y_right, align 4
  %64 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %sv_above = getelementptr inbounds %struct._CompT, %struct._CompT* %64, i32 0, i32 9
  store float 0.000000e+00, float* %sv_above, align 4
  %65 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %sv_below = getelementptr inbounds %struct._CompT, %struct._CompT* %65, i32 0, i32 10
  store float 0.000000e+00, float* %sv_below, align 4
  %66 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %66, i32 0, i32 12
  store %struct._PixT* null, %struct._PixT** %pixels, align 8
  %67 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %paired = getelementptr inbounds %struct._CompT, %struct._CompT* %67, i32 0, i32 13
  store %struct._CompT* null, %struct._CompT** %paired, align 8
  %68 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %extended = getelementptr inbounds %struct._CompT, %struct._CompT* %68, i32 0, i32 14
  store i8 0, i8* %extended, align 1
  %69 = load %struct._CompT*, %struct._CompT** %last_comp, align 8
  %70 = load %struct._CompT*, %struct._CompT** %comp, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %70, i32 0, i32 15
  store %struct._CompT* %69, %struct._CompT** %prev, align 8
  %71 = load %struct._CompT*, %struct._CompT** %comp, align 8
  store %struct._CompT* %71, %struct._CompT** %last_comp, align 8
  %72 = load %struct._CompT*, %struct._CompT** %comp, align 8
  store %struct._CompT* %72, %struct._CompT** %cur_comp, align 8
  br label %if.end.59

if.else:                                          ; preds = %for.end.41
  %73 = load %struct._CompT*, %struct._CompT** %comp, align 8
  store %struct._CompT* %73, %struct._CompT** %cur_comp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %74 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %id52 = getelementptr inbounds %struct._CompT, %struct._CompT* %74, i32 0, i32 0
  %75 = load i32, i32* %id52, align 4
  %76 = load i32, i32* %midx, align 4
  %idxprom53 = sext i32 %76 to i64
  %77 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap54 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %77, i32 0, i32 13
  %78 = load i32*, i32** %lmap54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %78, i64 %idxprom53
  %79 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp ne i32 %75, %79
  br i1 %cmp56, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %80 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %prev58 = getelementptr inbounds %struct._CompT, %struct._CompT* %80, i32 0, i32 15
  %81 = load %struct._CompT*, %struct._CompT** %prev58, align 8
  store %struct._CompT* %81, %struct._CompT** %cur_comp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.59

if.end.59:                                        ; preds = %while.end, %cond.end
  %82 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %id60 = getelementptr inbounds %struct._CompT, %struct._CompT* %82, i32 0, i32 0
  %83 = load i32, i32* %id60, align 4
  %84 = load i32, i32* %idx, align 4
  %idxprom61 = sext i32 %84 to i64
  %85 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap62 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %85, i32 0, i32 13
  %86 = load i32*, i32** %lmap62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %86, i64 %idxprom61
  store i32 %83, i32* %arrayidx63, align 4
  %call64 = call noalias i8* @malloc(i64 16) #6
  %87 = bitcast i8* %call64 to %struct._PixT*
  store %struct._PixT* %87, %struct._PixT** %pix, align 8
  %88 = load i32, i32* %x, align 4
  %89 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %x65 = getelementptr inbounds %struct._PixT, %struct._PixT* %89, i32 0, i32 0
  store i32 %88, i32* %x65, align 4
  %90 = load i32, i32* %y, align 4
  %91 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %y66 = getelementptr inbounds %struct._PixT, %struct._PixT* %91, i32 0, i32 1
  store i32 %90, i32* %y66, align 4
  %92 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %pixels67 = getelementptr inbounds %struct._CompT, %struct._CompT* %92, i32 0, i32 12
  %93 = load %struct._PixT*, %struct._PixT** %pixels67, align 8
  %94 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %prev68 = getelementptr inbounds %struct._PixT, %struct._PixT* %94, i32 0, i32 2
  store %struct._PixT* %93, %struct._PixT** %prev68, align 8
  %95 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %96 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %pixels69 = getelementptr inbounds %struct._CompT, %struct._CompT* %96, i32 0, i32 12
  store %struct._PixT* %95, %struct._PixT** %pixels69, align 8
  %97 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %n70 = getelementptr inbounds %struct._CompT, %struct._CompT* %97, i32 0, i32 1
  %98 = load i32, i32* %n70, align 4
  %inc71 = add nsw i32 %98, 1
  store i32 %inc71, i32* %n70, align 4
  %99 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %avg_row72 = getelementptr inbounds %struct._CompT, %struct._CompT* %99, i32 0, i32 2
  %100 = load i32, i32* %avg_row72, align 4
  %101 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %n73 = getelementptr inbounds %struct._CompT, %struct._CompT* %101, i32 0, i32 1
  %102 = load i32, i32* %n73, align 4
  %sub74 = sub nsw i32 %102, 1
  %mul75 = mul nsw i32 %100, %sub74
  %103 = load i32, i32* %y, align 4
  %add76 = add nsw i32 %mul75, %103
  %104 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %n77 = getelementptr inbounds %struct._CompT, %struct._CompT* %104, i32 0, i32 1
  %105 = load i32, i32* %n77, align 4
  %div = sdiv i32 %add76, %105
  %106 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %avg_row78 = getelementptr inbounds %struct._CompT, %struct._CompT* %106, i32 0, i32 2
  store i32 %div, i32* %avg_row78, align 4
  %107 = load i32, i32* %x, align 4
  %108 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_max79 = getelementptr inbounds %struct._CompT, %struct._CompT* %108, i32 0, i32 3
  %109 = load i32, i32* %x_max79, align 4
  %cmp80 = icmp sgt i32 %107, %109
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.end.59
  %110 = load i32, i32* %x, align 4
  br label %cond.end.85

cond.false.83:                                    ; preds = %if.end.59
  %111 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_max84 = getelementptr inbounds %struct._CompT, %struct._CompT* %111, i32 0, i32 3
  %112 = load i32, i32* %x_max84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.82
  %cond86 = phi i32 [ %110, %cond.true.82 ], [ %112, %cond.false.83 ]
  %113 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_max87 = getelementptr inbounds %struct._CompT, %struct._CompT* %113, i32 0, i32 3
  store i32 %cond86, i32* %x_max87, align 4
  %114 = load i32, i32* %y, align 4
  %115 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_max88 = getelementptr inbounds %struct._CompT, %struct._CompT* %115, i32 0, i32 4
  %116 = load i32, i32* %y_max88, align 4
  %cmp89 = icmp sgt i32 %114, %116
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end.85
  %117 = load i32, i32* %y, align 4
  br label %cond.end.94

cond.false.92:                                    ; preds = %cond.end.85
  %118 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_max93 = getelementptr inbounds %struct._CompT, %struct._CompT* %118, i32 0, i32 4
  %119 = load i32, i32* %y_max93, align 4
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.92, %cond.true.91
  %cond95 = phi i32 [ %117, %cond.true.91 ], [ %119, %cond.false.92 ]
  %120 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_max96 = getelementptr inbounds %struct._CompT, %struct._CompT* %120, i32 0, i32 4
  store i32 %cond95, i32* %y_max96, align 4
  %121 = load i32, i32* %x, align 4
  %122 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_min97 = getelementptr inbounds %struct._CompT, %struct._CompT* %122, i32 0, i32 5
  %123 = load i32, i32* %x_min97, align 4
  %cmp98 = icmp slt i32 %121, %123
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.end.94
  %124 = load i32, i32* %x, align 4
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.end.94
  %125 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_min102 = getelementptr inbounds %struct._CompT, %struct._CompT* %125, i32 0, i32 5
  %126 = load i32, i32* %x_min102, align 4
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.100
  %cond104 = phi i32 [ %124, %cond.true.100 ], [ %126, %cond.false.101 ]
  %127 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_min105 = getelementptr inbounds %struct._CompT, %struct._CompT* %127, i32 0, i32 5
  store i32 %cond104, i32* %x_min105, align 4
  %128 = load i32, i32* %y, align 4
  %129 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_min106 = getelementptr inbounds %struct._CompT, %struct._CompT* %129, i32 0, i32 6
  %130 = load i32, i32* %y_min106, align 4
  %cmp107 = icmp slt i32 %128, %130
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.end.103
  %131 = load i32, i32* %y, align 4
  br label %cond.end.112

cond.false.110:                                   ; preds = %cond.end.103
  %132 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_min111 = getelementptr inbounds %struct._CompT, %struct._CompT* %132, i32 0, i32 6
  %133 = load i32, i32* %y_min111, align 4
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.109
  %cond113 = phi i32 [ %131, %cond.true.109 ], [ %133, %cond.false.110 ]
  %134 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_min114 = getelementptr inbounds %struct._CompT, %struct._CompT* %134, i32 0, i32 6
  store i32 %cond113, i32* %y_min114, align 4
  %135 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_min115 = getelementptr inbounds %struct._CompT, %struct._CompT* %135, i32 0, i32 5
  %136 = load i32, i32* %x_min115, align 4
  %137 = load i32, i32* %x, align 4
  %cmp116 = icmp eq i32 %136, %137
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %cond.end.112
  %138 = load i32, i32* %y, align 4
  %139 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_left119 = getelementptr inbounds %struct._CompT, %struct._CompT* %139, i32 0, i32 7
  store i32 %138, i32* %y_left119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %cond.end.112
  %140 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %x_max121 = getelementptr inbounds %struct._CompT, %struct._CompT* %140, i32 0, i32 3
  %141 = load i32, i32* %x_max121, align 4
  %142 = load i32, i32* %x, align 4
  %cmp122 = icmp eq i32 %141, %142
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.120
  %143 = load i32, i32* %y, align 4
  %144 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %y_right125 = getelementptr inbounds %struct._CompT, %struct._CompT* %144, i32 0, i32 8
  store i32 %143, i32* %y_right125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.120
  %145 = load i32, i32* %y, align 4
  %sub127 = sub nsw i32 %145, 1
  %146 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width128 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %146, i32 0, i32 5
  %147 = load i32, i32* %width128, align 4
  %mul129 = mul nsw i32 %sub127, %147
  %148 = load i32, i32* %x, align 4
  %add130 = add nsw i32 %mul129, %148
  %idxprom131 = sext i32 %add130 to i64
  %149 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %149, i32 0, i32 11
  %150 = load float*, float** %var, align 8
  %arrayidx132 = getelementptr inbounds float, float* %150, i64 %idxprom131
  %151 = load float, float* %arrayidx132, align 4
  %152 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %sv_above133 = getelementptr inbounds %struct._CompT, %struct._CompT* %152, i32 0, i32 9
  %153 = load float, float* %sv_above133, align 4
  %add134 = fadd float %153, %151
  store float %add134, float* %sv_above133, align 4
  %154 = load i32, i32* %y, align 4
  %add135 = add nsw i32 %154, 1
  %155 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width136 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %155, i32 0, i32 5
  %156 = load i32, i32* %width136, align 4
  %mul137 = mul nsw i32 %add135, %156
  %157 = load i32, i32* %x, align 4
  %add138 = add nsw i32 %mul137, %157
  %idxprom139 = sext i32 %add138 to i64
  %158 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var140 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %158, i32 0, i32 11
  %159 = load float*, float** %var140, align 8
  %arrayidx141 = getelementptr inbounds float, float* %159, i64 %idxprom139
  %160 = load float, float* %arrayidx141, align 4
  %161 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %sv_below142 = getelementptr inbounds %struct._CompT, %struct._CompT* %161, i32 0, i32 10
  %162 = load float, float* %sv_below142, align 4
  %add143 = fadd float %162, %160
  store float %add143, float* %sv_below142, align 4
  store i32 -1, i32* %ym, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.187, %if.end.126
  %163 = load i32, i32* %ym, align 4
  %cmp145 = icmp sle i32 %163, 1
  br i1 %cmp145, label %for.body.147, label %for.end.189

for.body.147:                                     ; preds = %for.cond.144
  store i32 -1, i32* %xm, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.184, %for.body.147
  %164 = load i32, i32* %xm, align 4
  %cmp149 = icmp sle i32 %164, 1
  br i1 %cmp149, label %for.body.151, label %for.end.186

for.body.151:                                     ; preds = %for.cond.148
  %165 = load i32, i32* %y, align 4
  %166 = load i32, i32* %ym, align 4
  %add152 = add nsw i32 %165, %166
  %167 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width153 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %167, i32 0, i32 5
  %168 = load i32, i32* %width153, align 4
  %mul154 = mul nsw i32 %add152, %168
  %169 = load i32, i32* %x, align 4
  %170 = load i32, i32* %xm, align 4
  %add155 = add nsw i32 %169, %170
  %add156 = add nsw i32 %mul154, %add155
  store i32 %add156, i32* %midx, align 4
  %171 = load i32, i32* %midx, align 4
  %idxprom157 = sext i32 %171 to i64
  %172 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap158 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %172, i32 0, i32 13
  %173 = load i32*, i32** %lmap158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %173, i64 %idxprom157
  %174 = load i32, i32* %arrayidx159, align 4
  %tobool160 = icmp ne i32 %174, 0
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.183

land.lhs.true.161:                                ; preds = %for.body.151
  %175 = load i32, i32* %midx, align 4
  %idxprom162 = sext i32 %175 to i64
  %176 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap163 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %176, i32 0, i32 13
  %177 = load i32*, i32** %lmap163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %177, i64 %idxprom162
  %178 = load i32, i32* %arrayidx164, align 4
  %179 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %id165 = getelementptr inbounds %struct._CompT, %struct._CompT* %179, i32 0, i32 0
  %180 = load i32, i32* %id165, align 4
  %cmp166 = icmp ne i32 %178, %180
  br i1 %cmp166, label %if.then.168, label %if.end.183

if.then.168:                                      ; preds = %land.lhs.true.161
  %181 = load %struct._CompT*, %struct._CompT** %comp, align 8
  store %struct._CompT* %181, %struct._CompT** %merge_comp, align 8
  store %struct._CompT* null, %struct._CompT** %mprev_comp, align 8
  br label %while.cond.169

while.cond.169:                                   ; preds = %while.body.176, %if.then.168
  %182 = load %struct._CompT*, %struct._CompT** %merge_comp, align 8
  %id170 = getelementptr inbounds %struct._CompT, %struct._CompT* %182, i32 0, i32 0
  %183 = load i32, i32* %id170, align 4
  %184 = load i32, i32* %midx, align 4
  %idxprom171 = sext i32 %184 to i64
  %185 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap172 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %185, i32 0, i32 13
  %186 = load i32*, i32** %lmap172, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %186, i64 %idxprom171
  %187 = load i32, i32* %arrayidx173, align 4
  %cmp174 = icmp ne i32 %183, %187
  br i1 %cmp174, label %while.body.176, label %while.end.178

while.body.176:                                   ; preds = %while.cond.169
  %188 = load %struct._CompT*, %struct._CompT** %merge_comp, align 8
  store %struct._CompT* %188, %struct._CompT** %mprev_comp, align 8
  %189 = load %struct._CompT*, %struct._CompT** %merge_comp, align 8
  %prev177 = getelementptr inbounds %struct._CompT, %struct._CompT* %189, i32 0, i32 15
  %190 = load %struct._CompT*, %struct._CompT** %prev177, align 8
  store %struct._CompT* %190, %struct._CompT** %merge_comp, align 8
  br label %while.cond.169

while.end.178:                                    ; preds = %while.cond.169
  %191 = load %struct._CompT*, %struct._CompT** %cur_comp, align 8
  %192 = load %struct._CompT*, %struct._CompT** %merge_comp, align 8
  %193 = load %struct._CompT*, %struct._CompT** %mprev_comp, align 8
  %194 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @MergeComponents(%struct._CompT* %191, %struct._CompT* %192, %struct._CompT* %193, %struct._CompT** %comp, %struct.ImgT* %194)
  %195 = load %struct._CompT*, %struct._CompT** %mprev_comp, align 8
  %cmp179 = icmp eq %struct._CompT* %195, null
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %while.end.178
  %196 = load %struct._CompT*, %struct._CompT** %comp, align 8
  store %struct._CompT* %196, %struct._CompT** %last_comp, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %while.end.178
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.161, %for.body.151
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %197 = load i32, i32* %xm, align 4
  %inc185 = add nsw i32 %197, 1
  store i32 %inc185, i32* %xm, align 4
  br label %for.cond.148

for.end.186:                                      ; preds = %for.cond.148
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.end.186
  %198 = load i32, i32* %ym, align 4
  %inc188 = add nsw i32 %198, 1
  store i32 %inc188, i32* %ym, align 4
  br label %for.cond.144

for.end.189:                                      ; preds = %for.cond.144
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189, %if.then
  %199 = load i32, i32* %x, align 4
  %inc191 = add nsw i32 %199, 1
  store i32 %inc191, i32* %x, align 4
  br label %for.cond.3

for.end.192:                                      ; preds = %for.cond.3
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %200 = load i32, i32* %y, align 4
  %inc194 = add nsw i32 %200, 1
  store i32 %inc194, i32* %y, align 4
  br label %for.cond

for.end.195:                                      ; preds = %for.cond
  %201 = load %struct._CompT*, %struct._CompT** %comp, align 8
  ret %struct._CompT* %201
}

; Function Attrs: nounwind uwtable
define void @MergeComponents(%struct._CompT* %c, %struct._CompT* %m, %struct._CompT* %p, %struct._CompT** %h, %struct.ImgT* %img) #0 {
entry:
  %c.addr = alloca %struct._CompT*, align 8
  %m.addr = alloca %struct._CompT*, align 8
  %p.addr = alloca %struct._CompT*, align 8
  %h.addr = alloca %struct._CompT**, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %pix = alloca %struct._PixT*, align 8
  %mpix = alloca %struct._PixT*, align 8
  %pidx = alloca i32, align 4
  store %struct._CompT* %c, %struct._CompT** %c.addr, align 8
  store %struct._CompT* %m, %struct._CompT** %m.addr, align 8
  store %struct._CompT* %p, %struct._CompT** %p.addr, align 8
  store %struct._CompT** %h, %struct._CompT*** %h.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %0, i32 0, i32 12
  %1 = load %struct._PixT*, %struct._PixT** %pixels, align 8
  store %struct._PixT* %1, %struct._PixT** %pix, align 8
  store %struct._PixT* %1, %struct._PixT** %mpix, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %cmp = icmp ne %struct._PixT* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %y = getelementptr inbounds %struct._PixT, %struct._PixT* %3, i32 0, i32 1
  %4 = load i32, i32* %y, align 4
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 5
  %6 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %4, %6
  %7 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %x = getelementptr inbounds %struct._PixT, %struct._PixT* %7, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul, %8
  store i32 %add, i32* %pidx, align 4
  %9 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %id = getelementptr inbounds %struct._CompT, %struct._CompT* %9, i32 0, i32 0
  %10 = load i32, i32* %id, align 4
  %11 = load i32, i32* %pidx, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 13
  %13 = load i32*, i32** %lmap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %10, i32* %arrayidx, align 4
  %14 = load %struct._PixT*, %struct._PixT** %pix, align 8
  store %struct._PixT* %14, %struct._PixT** %mpix, align 8
  %15 = load %struct._PixT*, %struct._PixT** %pix, align 8
  %prev = getelementptr inbounds %struct._PixT, %struct._PixT* %15, i32 0, i32 2
  %16 = load %struct._PixT*, %struct._PixT** %prev, align 8
  store %struct._PixT* %16, %struct._PixT** %pix, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._PixT*, %struct._PixT** %mpix, align 8
  %cmp1 = icmp ne %struct._PixT* %17, null
  br i1 %cmp1, label %if.then, label %if.end.60

if.then:                                          ; preds = %while.end
  %18 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %pixels2 = getelementptr inbounds %struct._CompT, %struct._CompT* %18, i32 0, i32 12
  %19 = load %struct._PixT*, %struct._PixT** %pixels2, align 8
  %20 = load %struct._PixT*, %struct._PixT** %mpix, align 8
  %prev3 = getelementptr inbounds %struct._PixT, %struct._PixT* %20, i32 0, i32 2
  store %struct._PixT* %19, %struct._PixT** %prev3, align 8
  %21 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %pixels4 = getelementptr inbounds %struct._CompT, %struct._CompT* %21, i32 0, i32 12
  %22 = load %struct._PixT*, %struct._PixT** %pixels4, align 8
  %23 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %pixels5 = getelementptr inbounds %struct._CompT, %struct._CompT* %23, i32 0, i32 12
  store %struct._PixT* %22, %struct._PixT** %pixels5, align 8
  %24 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %n = getelementptr inbounds %struct._CompT, %struct._CompT* %24, i32 0, i32 1
  %25 = load i32, i32* %n, align 4
  %26 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %n6 = getelementptr inbounds %struct._CompT, %struct._CompT* %26, i32 0, i32 1
  %27 = load i32, i32* %n6, align 4
  %add7 = add nsw i32 %27, %25
  store i32 %add7, i32* %n6, align 4
  %28 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %avg_row = getelementptr inbounds %struct._CompT, %struct._CompT* %28, i32 0, i32 2
  %29 = load i32, i32* %avg_row, align 4
  %30 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %n8 = getelementptr inbounds %struct._CompT, %struct._CompT* %30, i32 0, i32 1
  %31 = load i32, i32* %n8, align 4
  %32 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %n9 = getelementptr inbounds %struct._CompT, %struct._CompT* %32, i32 0, i32 1
  %33 = load i32, i32* %n9, align 4
  %sub = sub nsw i32 %31, %33
  %mul10 = mul nsw i32 %29, %sub
  %34 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %avg_row11 = getelementptr inbounds %struct._CompT, %struct._CompT* %34, i32 0, i32 2
  %35 = load i32, i32* %avg_row11, align 4
  %36 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %n12 = getelementptr inbounds %struct._CompT, %struct._CompT* %36, i32 0, i32 1
  %37 = load i32, i32* %n12, align 4
  %mul13 = mul nsw i32 %35, %37
  %add14 = add nsw i32 %mul10, %mul13
  %38 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %n15 = getelementptr inbounds %struct._CompT, %struct._CompT* %38, i32 0, i32 1
  %39 = load i32, i32* %n15, align 4
  %div = sdiv i32 %add14, %39
  %40 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %avg_row16 = getelementptr inbounds %struct._CompT, %struct._CompT* %40, i32 0, i32 2
  store i32 %div, i32* %avg_row16, align 4
  %41 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %41, i32 0, i32 3
  %42 = load i32, i32* %x_max, align 4
  %43 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_max17 = getelementptr inbounds %struct._CompT, %struct._CompT* %43, i32 0, i32 3
  %44 = load i32, i32* %x_max17, align 4
  %cmp18 = icmp sgt i32 %42, %44
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %45 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_max19 = getelementptr inbounds %struct._CompT, %struct._CompT* %45, i32 0, i32 3
  %46 = load i32, i32* %x_max19, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %47 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_max20 = getelementptr inbounds %struct._CompT, %struct._CompT* %47, i32 0, i32 3
  %48 = load i32, i32* %x_max20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %48, %cond.false ]
  %49 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_max21 = getelementptr inbounds %struct._CompT, %struct._CompT* %49, i32 0, i32 3
  store i32 %cond, i32* %x_max21, align 4
  %50 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_max = getelementptr inbounds %struct._CompT, %struct._CompT* %50, i32 0, i32 4
  %51 = load i32, i32* %y_max, align 4
  %52 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_max22 = getelementptr inbounds %struct._CompT, %struct._CompT* %52, i32 0, i32 4
  %53 = load i32, i32* %y_max22, align 4
  %cmp23 = icmp sgt i32 %51, %53
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end
  %54 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_max25 = getelementptr inbounds %struct._CompT, %struct._CompT* %54, i32 0, i32 4
  %55 = load i32, i32* %y_max25, align 4
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end
  %56 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_max27 = getelementptr inbounds %struct._CompT, %struct._CompT* %56, i32 0, i32 4
  %57 = load i32, i32* %y_max27, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %55, %cond.true.24 ], [ %57, %cond.false.26 ]
  %58 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_max30 = getelementptr inbounds %struct._CompT, %struct._CompT* %58, i32 0, i32 4
  store i32 %cond29, i32* %y_max30, align 4
  %59 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %59, i32 0, i32 5
  %60 = load i32, i32* %x_min, align 4
  %61 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_min31 = getelementptr inbounds %struct._CompT, %struct._CompT* %61, i32 0, i32 5
  %62 = load i32, i32* %x_min31, align 4
  %cmp32 = icmp slt i32 %60, %62
  br i1 %cmp32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %cond.end.28
  %63 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_min34 = getelementptr inbounds %struct._CompT, %struct._CompT* %63, i32 0, i32 5
  %64 = load i32, i32* %x_min34, align 4
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.end.28
  %65 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_min36 = getelementptr inbounds %struct._CompT, %struct._CompT* %65, i32 0, i32 5
  %66 = load i32, i32* %x_min36, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.33
  %cond38 = phi i32 [ %64, %cond.true.33 ], [ %66, %cond.false.35 ]
  %67 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_min39 = getelementptr inbounds %struct._CompT, %struct._CompT* %67, i32 0, i32 5
  store i32 %cond38, i32* %x_min39, align 4
  %68 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_min = getelementptr inbounds %struct._CompT, %struct._CompT* %68, i32 0, i32 6
  %69 = load i32, i32* %y_min, align 4
  %70 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_min40 = getelementptr inbounds %struct._CompT, %struct._CompT* %70, i32 0, i32 6
  %71 = load i32, i32* %y_min40, align 4
  %cmp41 = icmp slt i32 %69, %71
  br i1 %cmp41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %cond.end.37
  %72 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_min43 = getelementptr inbounds %struct._CompT, %struct._CompT* %72, i32 0, i32 6
  %73 = load i32, i32* %y_min43, align 4
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.end.37
  %74 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_min45 = getelementptr inbounds %struct._CompT, %struct._CompT* %74, i32 0, i32 6
  %75 = load i32, i32* %y_min45, align 4
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.42
  %cond47 = phi i32 [ %73, %cond.true.42 ], [ %75, %cond.false.44 ]
  %76 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_min48 = getelementptr inbounds %struct._CompT, %struct._CompT* %76, i32 0, i32 6
  store i32 %cond47, i32* %y_min48, align 4
  %77 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_min49 = getelementptr inbounds %struct._CompT, %struct._CompT* %77, i32 0, i32 5
  %78 = load i32, i32* %x_min49, align 4
  %79 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_min50 = getelementptr inbounds %struct._CompT, %struct._CompT* %79, i32 0, i32 5
  %80 = load i32, i32* %x_min50, align 4
  %cmp51 = icmp eq i32 %78, %80
  br i1 %cmp51, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %cond.end.46
  %81 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_left = getelementptr inbounds %struct._CompT, %struct._CompT* %81, i32 0, i32 7
  %82 = load i32, i32* %y_left, align 4
  %83 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_left53 = getelementptr inbounds %struct._CompT, %struct._CompT* %83, i32 0, i32 7
  store i32 %82, i32* %y_left53, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.52, %cond.end.46
  %84 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %x_max54 = getelementptr inbounds %struct._CompT, %struct._CompT* %84, i32 0, i32 3
  %85 = load i32, i32* %x_max54, align 4
  %86 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %x_max55 = getelementptr inbounds %struct._CompT, %struct._CompT* %86, i32 0, i32 3
  %87 = load i32, i32* %x_max55, align 4
  %cmp56 = icmp eq i32 %85, %87
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end
  %88 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %y_right = getelementptr inbounds %struct._CompT, %struct._CompT* %88, i32 0, i32 8
  %89 = load i32, i32* %y_right, align 4
  %90 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %y_right58 = getelementptr inbounds %struct._CompT, %struct._CompT* %90, i32 0, i32 8
  store i32 %89, i32* %y_right58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %while.end
  %91 = load %struct._CompT*, %struct._CompT** %p.addr, align 8
  %cmp61 = icmp ne %struct._CompT* %91, null
  br i1 %cmp61, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.60
  %92 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %prev63 = getelementptr inbounds %struct._CompT, %struct._CompT* %92, i32 0, i32 15
  %93 = load %struct._CompT*, %struct._CompT** %prev63, align 8
  %94 = load %struct._CompT*, %struct._CompT** %p.addr, align 8
  %prev64 = getelementptr inbounds %struct._CompT, %struct._CompT* %94, i32 0, i32 15
  store %struct._CompT* %93, %struct._CompT** %prev64, align 8
  br label %if.end.66

if.else:                                          ; preds = %if.end.60
  %95 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %prev65 = getelementptr inbounds %struct._CompT, %struct._CompT* %95, i32 0, i32 15
  %96 = load %struct._CompT*, %struct._CompT** %prev65, align 8
  %97 = load %struct._CompT**, %struct._CompT*** %h.addr, align 8
  store %struct._CompT* %96, %struct._CompT** %97, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.62
  %98 = load %struct._CompT*, %struct._CompT** %m.addr, align 8
  %99 = bitcast %struct._CompT* %98 to i8*
  call void @free(i8* %99) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @EliminateLargeSpreadComponents(%struct._CompT** %c, %struct.ImgT* %img) #0 {
entry:
  %c.addr = alloca %struct._CompT**, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %ip = alloca %struct._CompT**, align 8
  %dp = alloca %struct._CompT*, align 8
  %p = alloca %struct._PixT*, align 8
  %idx = alloca i32, align 4
  %kill_it = alloca i8, align 1
  store %struct._CompT** %c, %struct._CompT*** %c.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT**, %struct._CompT*** %c.addr, align 8
  store %struct._CompT** %0, %struct._CompT*** %ip, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %1 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %2 = load %struct._CompT*, %struct._CompT** %1, align 8
  %cmp = icmp ne %struct._CompT* %2, null
  br i1 %cmp, label %while.body, label %while.end.34

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @KILL_SMALL_COMP, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %5 = load %struct._CompT*, %struct._CompT** %4, align 8
  %y_max = getelementptr inbounds %struct._CompT, %struct._CompT* %5, i32 0, i32 4
  %6 = load i32, i32* %y_max, align 4
  %7 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %8 = load %struct._CompT*, %struct._CompT** %7, align 8
  %y_min = getelementptr inbounds %struct._CompT, %struct._CompT* %8, i32 0, i32 6
  %9 = load i32, i32* %y_min, align 4
  %sub = sub nsw i32 %6, %9
  %conv = sitofp i32 %sub to double
  %10 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %10, i32 0, i32 4
  %11 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %11 to float
  %conv2 = fpext float %conv1 to double
  %12 = load double, double* @VSPREAD_THRESHOLD, align 8
  %mul = fmul double %conv2, %12
  %cmp3 = fcmp oge double %conv, %mul
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %13 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %14 = load %struct._CompT*, %struct._CompT** %13, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 3
  %15 = load i32, i32* %x_max, align 4
  %16 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %17 = load %struct._CompT*, %struct._CompT** %16, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %17, i32 0, i32 5
  %18 = load i32, i32* %x_min, align 4
  %sub5 = sub nsw i32 %15, %18
  %19 = load i32, i32* @SMALL_THRESHOLD, align 4
  %cmp6 = icmp slt i32 %sub5, %19
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %20 = phi i1 [ true, %if.then ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32
  %conv8 = trunc i32 %lor.ext to i8
  store i8 %conv8, i8* %kill_it, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %21 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %22 = load %struct._CompT*, %struct._CompT** %21, align 8
  %y_max9 = getelementptr inbounds %struct._CompT, %struct._CompT* %22, i32 0, i32 4
  %23 = load i32, i32* %y_max9, align 4
  %24 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %25 = load %struct._CompT*, %struct._CompT** %24, align 8
  %y_min10 = getelementptr inbounds %struct._CompT, %struct._CompT* %25, i32 0, i32 6
  %26 = load i32, i32* %y_min10, align 4
  %sub11 = sub nsw i32 %23, %26
  %conv12 = sitofp i32 %sub11 to double
  %27 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height13 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %27, i32 0, i32 4
  %28 = load i32, i32* %height13, align 4
  %conv14 = sitofp i32 %28 to float
  %conv15 = fpext float %conv14 to double
  %29 = load double, double* @VSPREAD_THRESHOLD, align 8
  %mul16 = fmul double %conv15, %29
  %cmp17 = fcmp oge double %conv12, %mul16
  %conv18 = zext i1 %cmp17 to i32
  %conv19 = trunc i32 %conv18 to i8
  store i8 %conv19, i8* %kill_it, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %30 = load i8, i8* %kill_it, align 1
  %tobool20 = icmp ne i8 %30, 0
  br i1 %tobool20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %if.end
  %31 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %32 = load %struct._CompT*, %struct._CompT** %31, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %32, i32 0, i32 12
  %33 = load %struct._PixT*, %struct._PixT** %pixels, align 8
  store %struct._PixT* %33, %struct._PixT** %p, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.then.21
  %34 = load %struct._PixT*, %struct._PixT** %p, align 8
  %cmp23 = icmp ne %struct._PixT* %34, null
  br i1 %cmp23, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %while.cond.22
  %35 = load %struct._PixT*, %struct._PixT** %p, align 8
  %y = getelementptr inbounds %struct._PixT, %struct._PixT* %35, i32 0, i32 1
  %36 = load i32, i32* %y, align 4
  %37 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %37, i32 0, i32 5
  %38 = load i32, i32* %width, align 4
  %mul26 = mul nsw i32 %36, %38
  %39 = load %struct._PixT*, %struct._PixT** %p, align 8
  %x = getelementptr inbounds %struct._PixT, %struct._PixT* %39, i32 0, i32 0
  %40 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul26, %40
  store i32 %add, i32* %idx, align 4
  %41 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap = getelementptr inbounds %struct.ImgT, %struct.ImgT* %42, i32 0, i32 13
  %43 = load i32*, i32** %lmap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %43, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %44 = load %struct._PixT*, %struct._PixT** %p, align 8
  %prev = getelementptr inbounds %struct._PixT, %struct._PixT* %44, i32 0, i32 2
  %45 = load %struct._PixT*, %struct._PixT** %prev, align 8
  store %struct._PixT* %45, %struct._PixT** %p, align 8
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  %46 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %47 = load %struct._CompT*, %struct._CompT** %46, align 8
  store %struct._CompT* %47, %struct._CompT** %dp, align 8
  %48 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %49 = load %struct._CompT*, %struct._CompT** %48, align 8
  %prev27 = getelementptr inbounds %struct._CompT, %struct._CompT* %49, i32 0, i32 15
  %50 = load %struct._CompT*, %struct._CompT** %prev27, align 8
  %51 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  store %struct._CompT* %50, %struct._CompT** %51, align 8
  %52 = load %struct._CompT*, %struct._CompT** %dp, align 8
  %53 = bitcast %struct._CompT* %52 to i8*
  call void @free(i8* %53) #6
  br label %if.end.33

if.else.28:                                       ; preds = %if.end
  %54 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %55 = load %struct._CompT*, %struct._CompT** %54, align 8
  %sv_above = getelementptr inbounds %struct._CompT, %struct._CompT* %55, i32 0, i32 9
  %56 = load float, float* %sv_above, align 4
  %57 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %58 = load %struct._CompT*, %struct._CompT** %57, align 8
  %sv_below = getelementptr inbounds %struct._CompT, %struct._CompT* %58, i32 0, i32 10
  %59 = load float, float* %sv_below, align 4
  %cmp29 = fcmp oge float %56, %59
  %cond = select i1 %cmp29, i32 0, i32 1
  %conv31 = trunc i32 %cond to i8
  %60 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %61 = load %struct._CompT*, %struct._CompT** %60, align 8
  %type = getelementptr inbounds %struct._CompT, %struct._CompT* %61, i32 0, i32 11
  store i8 %conv31, i8* %type, align 1
  %62 = load %struct._CompT**, %struct._CompT*** %ip, align 8
  %63 = load %struct._CompT*, %struct._CompT** %62, align 8
  %prev32 = getelementptr inbounds %struct._CompT, %struct._CompT* %63, i32 0, i32 15
  store %struct._CompT** %prev32, %struct._CompT*** %ip, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28, %while.end
  br label %while.cond

while.end.34:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @PrintConnectedComponents(%struct._CompT* %c) #0 {
entry:
  %c.addr = alloca %struct._CompT*, align 8
  %p = alloca %struct._CompT*, align 8
  %npoints = alloca i32, align 4
  store %struct._CompT* %c, %struct._CompT** %c.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  store %struct._CompT* %0, %struct._CompT** %p, align 8
  store i32 0, i32* %npoints, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._CompT*, %struct._CompT** %p, align 8
  %cmp = icmp ne %struct._CompT* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._CompT*, %struct._CompT** %p, align 8
  %id = getelementptr inbounds %struct._CompT, %struct._CompT* %2, i32 0, i32 0
  %3 = load i32, i32* %id, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %3)
  %4 = load %struct._CompT*, %struct._CompT** %p, align 8
  %n = getelementptr inbounds %struct._CompT, %struct._CompT* %4, i32 0, i32 1
  %5 = load i32, i32* %n, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  %6 = load %struct._CompT*, %struct._CompT** %p, align 8
  %avg_row = getelementptr inbounds %struct._CompT, %struct._CompT* %6, i32 0, i32 2
  %7 = load i32, i32* %avg_row, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %7)
  %8 = load %struct._CompT*, %struct._CompT** %p, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %8, i32 0, i32 3
  %9 = load i32, i32* %x_max, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %9)
  %10 = load %struct._CompT*, %struct._CompT** %p, align 8
  %y_max = getelementptr inbounds %struct._CompT, %struct._CompT* %10, i32 0, i32 4
  %11 = load i32, i32* %y_max, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %12 = load %struct._CompT*, %struct._CompT** %p, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %12, i32 0, i32 5
  %13 = load i32, i32* %x_min, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 %13)
  %14 = load %struct._CompT*, %struct._CompT** %p, align 8
  %y_min = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 6
  %15 = load i32, i32* %y_min, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %15)
  %16 = load %struct._CompT*, %struct._CompT** %p, align 8
  %type = getelementptr inbounds %struct._CompT, %struct._CompT* %16, i32 0, i32 11
  %17 = load i8, i8* %type, align 1
  %conv = sext i8 %17 to i32
  %cmp8 = icmp eq i32 %conv, 0
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %cond)
  %18 = load %struct._CompT*, %struct._CompT** %p, align 8
  %n11 = getelementptr inbounds %struct._CompT, %struct._CompT* %18, i32 0, i32 1
  %19 = load i32, i32* %n11, align 4
  %20 = load i32, i32* %npoints, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %npoints, align 4
  %21 = load %struct._CompT*, %struct._CompT** %p, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %21, i32 0, i32 15
  %22 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %22, %struct._CompT** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._CompT*, %struct._CompT** %c.addr, align 8
  %cmp12 = icmp ne %struct._CompT* %23, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  %24 = load i32, i32* %npoints, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @WriteConnectedComponentsToPGM(%struct._CompT* %comp, %struct.ImgT* %img) #0 {
entry:
  %comp.addr = alloca %struct._CompT*, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %c = alloca %struct._CompT*, align 8
  %p = alloca %struct._PixT*, align 8
  %idx = alloca i32, align 4
  %s = alloca i8*, align 8
  %data = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store %struct._CompT* %comp, %struct._CompT** %comp.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  store %struct._CompT* %0, %struct._CompT** %c, align 8
  %1 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp = icmp eq %struct._CompT* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 0
  %3 = load i8, i8* %valid, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %lor.lhs.false.1, label %if.then

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 5
  %5 = load i32, i32* %width, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.1
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false.1, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %8 = load i32, i32* @WriteConnectedComponentsToPGM.index, align 4
  %cmp5 = icmp sgt i32 %8, 99
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 5
  %10 = load i32, i32* %width8, align 4
  %11 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %11, i32 0, i32 4
  %12 = load i32, i32* %height9, align 4
  %mul = mul nsw i32 %10, %12
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #6
  store i8* %call, i8** %data, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.7
  %13 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp10 = icmp ne %struct._CompT* %13, null
  br i1 %cmp10, label %while.body, label %while.end.19

while.body:                                       ; preds = %while.cond
  %14 = load %struct._CompT*, %struct._CompT** %c, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 12
  %15 = load %struct._PixT*, %struct._PixT** %pixels, align 8
  store %struct._PixT* %15, %struct._PixT** %p, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.15, %while.body
  %16 = load %struct._PixT*, %struct._PixT** %p, align 8
  %cmp13 = icmp ne %struct._PixT* %16, null
  br i1 %cmp13, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.12
  %17 = load %struct._PixT*, %struct._PixT** %p, align 8
  %y = getelementptr inbounds %struct._PixT, %struct._PixT* %17, i32 0, i32 1
  %18 = load i32, i32* %y, align 4
  %19 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %19, i32 0, i32 5
  %20 = load i32, i32* %width16, align 4
  %mul17 = mul nsw i32 %18, %20
  %21 = load %struct._PixT*, %struct._PixT** %p, align 8
  %x = getelementptr inbounds %struct._PixT, %struct._PixT* %21, i32 0, i32 0
  %22 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul17, %22
  store i32 %add, i32* %idx, align 4
  %23 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %25 = load %struct._PixT*, %struct._PixT** %p, align 8
  %prev = getelementptr inbounds %struct._PixT, %struct._PixT* %25, i32 0, i32 2
  %26 = load %struct._PixT*, %struct._PixT** %prev, align 8
  store %struct._PixT* %26, %struct._PixT** %p, align 8
  br label %while.cond.12

while.end:                                        ; preds = %while.cond.12
  %27 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev18 = getelementptr inbounds %struct._CompT, %struct._CompT* %27, i32 0, i32 15
  %28 = load %struct._CompT*, %struct._CompT** %prev18, align 8
  store %struct._CompT* %28, %struct._CompT** %c, align 8
  br label %while.cond

while.end.19:                                     ; preds = %while.cond
  %29 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %29, i32 0, i32 2
  %30 = load i8*, i8** %imgname, align 8
  %call20 = call i64 @strlen(i8* %30) #7
  %add21 = add i64 %call20, 11
  %add22 = add i64 %add21, 1
  %mul23 = mul i64 %add22, 1
  %call24 = call noalias i8* @malloc(i64 %mul23) #6
  store i8* %call24, i8** %s, align 8
  %31 = load i8*, i8** %s, align 8
  %32 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname25 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %32, i32 0, i32 2
  %33 = load i8*, i8** %imgname25, align 8
  %34 = load i32, i32* @WriteConnectedComponentsToPGM.index, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* @WriteConnectedComponentsToPGM.index, align 4
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* %33, i32 %34) #6
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %35, %struct._IO_FILE** %fp, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %38 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width28 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %38, i32 0, i32 5
  %39 = load i32, i32* %width28, align 4
  %40 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height29 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %40, i32 0, i32 4
  %41 = load i32, i32* %height29, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %39, i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.19
  %43 = load i32, i32* %idx, align 4
  %44 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width32 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %44, i32 0, i32 5
  %45 = load i32, i32* %width32, align 4
  %46 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height33 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %46, i32 0, i32 4
  %47 = load i32, i32* %height33, align 4
  %mul34 = mul nsw i32 %45, %47
  %cmp35 = icmp slt i32 %43, %mul34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %idx, align 4
  %idxprom37 = sext i32 %48 to i64
  %49 = load i8*, i8** %data, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %49, i64 %idxprom37
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call39 = call i64 @fwrite(i8* %arrayidx38, i64 1, i64 1, %struct._IO_FILE* %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %idx, align 4
  %inc40 = add nsw i32 %51, 1
  store i32 %inc40, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i8*, i8** %s, align 8
  call void @free(i8* %52) #6
  %53 = load i8*, i8** %data, align 8
  call void @free(i8* %53) #6
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @FreeConnectedComponents(%struct._CompT* %comp) #0 {
entry:
  %comp.addr = alloca %struct._CompT*, align 8
  %c1 = alloca %struct._CompT*, align 8
  %c2 = alloca %struct._CompT*, align 8
  %p1 = alloca %struct._PixT*, align 8
  %p2 = alloca %struct._PixT*, align 8
  store %struct._CompT* %comp, %struct._CompT** %comp.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  store %struct._CompT* %0, %struct._CompT** %c1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct._CompT*, %struct._CompT** %c1, align 8
  %cmp = icmp ne %struct._CompT* %1, null
  br i1 %cmp, label %while.body, label %while.end.5

while.body:                                       ; preds = %while.cond
  %2 = load %struct._CompT*, %struct._CompT** %c1, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %2, i32 0, i32 15
  %3 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %3, %struct._CompT** %c2, align 8
  %4 = load %struct._CompT*, %struct._CompT** %c1, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %4, i32 0, i32 12
  %5 = load %struct._PixT*, %struct._PixT** %pixels, align 8
  store %struct._PixT* %5, %struct._PixT** %p1, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.body
  %6 = load %struct._PixT*, %struct._PixT** %p1, align 8
  %cmp2 = icmp ne %struct._PixT* %6, null
  br i1 %cmp2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %7 = load %struct._PixT*, %struct._PixT** %p1, align 8
  %prev4 = getelementptr inbounds %struct._PixT, %struct._PixT* %7, i32 0, i32 2
  %8 = load %struct._PixT*, %struct._PixT** %prev4, align 8
  store %struct._PixT* %8, %struct._PixT** %p2, align 8
  %9 = load %struct._PixT*, %struct._PixT** %p1, align 8
  %10 = bitcast %struct._PixT* %9 to i8*
  call void @free(i8* %10) #6
  %11 = load %struct._PixT*, %struct._PixT** %p2, align 8
  store %struct._PixT* %11, %struct._PixT** %p1, align 8
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %12 = load %struct._CompT*, %struct._CompT** %c1, align 8
  %13 = bitcast %struct._CompT* %12 to i8*
  call void @free(i8* %13) #6
  %14 = load %struct._CompT*, %struct._CompT** %c2, align 8
  store %struct._CompT* %14, %struct._CompT** %c1, align 8
  br label %while.cond

while.end.5:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MergeRowComponents(%struct._CompT** %head, %struct.ImgT* %img) #0 {
entry:
  %head.addr = alloca %struct._CompT**, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %c = alloca %struct._CompT*, align 8
  store %struct._CompT** %head, %struct._CompT*** %head.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %1 = load %struct._CompT*, %struct._CompT** %0, align 8
  store %struct._CompT* %1, %struct._CompT** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp = icmp ne %struct._CompT* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CompT*, %struct._CompT** %c, align 8
  %4 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @MergeToLeft(%struct._CompT* %3, %struct._CompT** %4, %struct.ImgT* %5)
  %6 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %6, i32 0, i32 15
  %7 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %7, %struct._CompT** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MergeToLeft(%struct._CompT* %comp, %struct._CompT** %head, %struct.ImgT* %img) #0 {
entry:
  %comp.addr = alloca %struct._CompT*, align 8
  %head.addr = alloca %struct._CompT**, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %xl = alloca i32, align 4
  %yl = alloca i32, align 4
  %xm = alloca i32, align 4
  %ym = alloca i32, align 4
  %idx = alloca i32, align 4
  %last_comp = alloca i32, align 4
  %c = alloca %struct._CompT*, align 8
  %p = alloca %struct._CompT*, align 8
  %pp = alloca %struct._CompT*, align 8
  store %struct._CompT* %comp, %struct._CompT** %comp.addr, align 8
  store %struct._CompT** %head, %struct._CompT*** %head.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i32 0, i32* %last_comp, align 4
  %0 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %1 = load %struct._CompT*, %struct._CompT** %0, align 8
  store %struct._CompT* %1, %struct._CompT** %c, align 8
  %2 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %2, i32 0, i32 5
  %3 = load i32, i32* %x_min, align 4
  store i32 %3, i32* %xl, align 4
  %4 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %y_left = getelementptr inbounds %struct._CompT, %struct._CompT* %4, i32 0, i32 7
  %5 = load i32, i32* %y_left, align 4
  store i32 %5, i32* %yl, align 4
  %6 = load i32, i32* @SAME_ROW_V, align 4
  %sub = sub nsw i32 0, %6
  store i32 %sub, i32* %ym, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %7 = load i32, i32* %ym, align 4
  %8 = load i32, i32* @SAME_ROW_V, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @SAME_ROW_H, align 4
  %sub1 = sub nsw i32 0, %9
  store i32 %sub1, i32* %xm, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %xm, align 4
  %cmp3 = icmp sle i32 %10, 0
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %yl, align 4
  %12 = load i32, i32* %ym, align 4
  %add = add nsw i32 %11, %12
  %cmp5 = icmp slt i32 %add, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.4
  %13 = load i32, i32* %yl, align 4
  %14 = load i32, i32* %ym, align 4
  %add6 = add nsw i32 %13, %14
  %15 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %15, i32 0, i32 4
  %16 = load i32, i32* %height, align 4
  %sub7 = sub nsw i32 %16, 1
  %cmp8 = icmp sgt i32 %add6, %sub7
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* %xl, align 4
  %18 = load i32, i32* %xm, align 4
  %add10 = add nsw i32 %17, %18
  %cmp11 = icmp slt i32 %add10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %19 = load i32, i32* %xl, align 4
  %20 = load i32, i32* %xm, align 4
  %add13 = add nsw i32 %19, %20
  %21 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %21, i32 0, i32 5
  %22 = load i32, i32* %width, align 4
  %sub14 = sub nsw i32 %22, 1
  %cmp15 = icmp sgt i32 %add13, %sub14
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %23 = load i32, i32* %yl, align 4
  %24 = load i32, i32* %ym, align 4
  %add17 = add nsw i32 %23, %24
  %25 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width18 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %25, i32 0, i32 5
  %26 = load i32, i32* %width18, align 4
  %mul = mul nsw i32 %add17, %26
  %27 = load i32, i32* %xl, align 4
  %28 = load i32, i32* %xm, align 4
  %add19 = add nsw i32 %27, %28
  %add20 = add nsw i32 %mul, %add19
  store i32 %add20, i32* %idx, align 4
  %29 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %29, i32 0, i32 5
  %30 = load i32, i32* %width21, align 4
  %31 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %31, i32 0, i32 4
  %32 = load i32, i32* %height22, align 4
  %mul23 = mul nsw i32 %30, %32
  %cmp24 = icmp sgt i32 %add20, %mul23
  br i1 %cmp24, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.16
  %33 = load i32, i32* %idx, align 4
  %cmp26 = icmp slt i32 %33, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.25, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false, %for.body.4
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.25
  %34 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap = getelementptr inbounds %struct.ImgT, %struct.ImgT* %35, i32 0, i32 13
  %36 = load i32*, i32** %lmap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %36, i64 %idxprom
  %37 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end
  %38 = load i32, i32* %idx, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap28 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %39, i32 0, i32 13
  %40 = load i32*, i32** %lmap28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom27
  %41 = load i32, i32* %arrayidx29, align 4
  %42 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %id = getelementptr inbounds %struct._CompT, %struct._CompT* %42, i32 0, i32 0
  %43 = load i32, i32* %id, align 4
  %cmp30 = icmp ne i32 %41, %43
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.53

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %44 to i64
  %45 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap33 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %45, i32 0, i32 13
  %46 = load i32*, i32** %lmap33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %46, i64 %idxprom32
  %47 = load i32, i32* %arrayidx34, align 4
  %48 = load i32, i32* %last_comp, align 4
  %cmp35 = icmp ne i32 %47, %48
  br i1 %cmp35, label %if.then.36, label %if.end.53

if.then.36:                                       ; preds = %land.lhs.true.31
  store %struct._CompT* null, %struct._CompT** %pp, align 8
  store %struct._CompT* null, %struct._CompT** %p, align 8
  %49 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %50 = load %struct._CompT*, %struct._CompT** %49, align 8
  store %struct._CompT* %50, %struct._CompT** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.36
  %51 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp37 = icmp ne %struct._CompT* %51, null
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %52 = load %struct._CompT*, %struct._CompT** %c, align 8
  %id38 = getelementptr inbounds %struct._CompT, %struct._CompT* %52, i32 0, i32 0
  %53 = load i32, i32* %id38, align 4
  %54 = load i32, i32* %idx, align 4
  %idxprom39 = sext i32 %54 to i64
  %55 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap40 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %55, i32 0, i32 13
  %56 = load i32*, i32** %lmap40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %56, i64 %idxprom39
  %57 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %53, %57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %cmp42, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %59 = load %struct._CompT*, %struct._CompT** %p, align 8
  store %struct._CompT* %59, %struct._CompT** %pp, align 8
  %60 = load %struct._CompT*, %struct._CompT** %c, align 8
  store %struct._CompT* %60, %struct._CompT** %p, align 8
  %61 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %61, i32 0, i32 15
  %62 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %62, %struct._CompT** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %63 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp43 = icmp eq %struct._CompT* %63, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.45:                                        ; preds = %while.end
  %64 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %type = getelementptr inbounds %struct._CompT, %struct._CompT* %64, i32 0, i32 11
  %65 = load i8, i8* %type, align 1
  %conv = sext i8 %65 to i32
  %66 = load %struct._CompT*, %struct._CompT** %c, align 8
  %type46 = getelementptr inbounds %struct._CompT, %struct._CompT* %66, i32 0, i32 11
  %67 = load i8, i8* %type46, align 1
  %conv47 = sext i8 %67 to i32
  %cmp48 = icmp eq i32 %conv, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.45
  %68 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %69 = load %struct._CompT*, %struct._CompT** %c, align 8
  %70 = load %struct._CompT*, %struct._CompT** %p, align 8
  %71 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %72 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @MergeComponents(%struct._CompT* %68, %struct._CompT* %69, %struct._CompT* %70, %struct._CompT** %71, %struct.ImgT* %72)
  %73 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  %74 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %75 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @MergeToLeft(%struct._CompT* %73, %struct._CompT** %74, %struct.ImgT* %75)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.45
  %76 = load %struct._CompT*, %struct._CompT** %c, align 8
  %id52 = getelementptr inbounds %struct._CompT, %struct._CompT* %76, i32 0, i32 0
  %77 = load i32, i32* %id52, align 4
  store i32 %77, i32* %last_comp, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %land.lhs.true.31, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.53, %if.then
  %78 = load i32, i32* %xm, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %xm, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %79 = load i32, i32* %ym, align 4
  %inc55 = add nsw i32 %79, 1
  store i32 %inc55, i32* %ym, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @PairComponents(%struct._CompT** %head, %struct.ImgT* %img) #0 {
entry:
  %head.addr = alloca %struct._CompT**, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %c = alloca %struct._CompT*, align 8
  %p = alloca %struct._CompT*, align 8
  %o = alloca %struct._CompT*, align 8
  %xm = alloca i32, align 4
  %ym = alloca i32, align 4
  %y = alloca i32, align 4
  %idx = alloca i32, align 4
  %last_comp = alloca i32, align 4
  %discard = alloca i8, align 1
  %found = alloca i8, align 1
  %end_row = alloca i8, align 1
  %cpix = alloca %struct._PixT*, align 8
  %ppix = alloca %struct._PixT*, align 8
  store %struct._CompT** %head, %struct._CompT*** %head.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %1 = load %struct._CompT*, %struct._CompT** %0, align 8
  store %struct._CompT* %1, %struct._CompT** %c, align 8
  store %struct._CompT* null, %struct._CompT** %p, align 8
  store i32 0, i32* %last_comp, align 4
  store i8 0, i8* %discard, align 1
  store i8 0, i8* %found, align 1
  store i8 0, i8* %end_row, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.149, %entry
  %2 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp = icmp ne %struct._CompT* %2, null
  br i1 %cmp, label %while.body, label %while.end.150

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired = getelementptr inbounds %struct._CompT, %struct._CompT* %3, i32 0, i32 13
  %4 = load %struct._CompT*, %struct._CompT** %paired, align 8
  %cmp1 = icmp eq %struct._CompT* %4, null
  br i1 %cmp1, label %if.then, label %if.else.134

if.then:                                          ; preds = %while.body
  store i32 1, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %if.then
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* @MAX_CHAR_SIZE, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8, i8* %discard, align 1
  %conv = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i8, i8* %found, align 1
  %conv3 = sext i8 %8 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %tobool4, %lor.rhs ]
  %lnot = xor i1 %9, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %lor.end ]
  br i1 %10, label %for.body, label %for.end.106

for.body:                                         ; preds = %land.end
  %11 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %11, i32 0, i32 5
  %12 = load i32, i32* %x_min, align 4
  store i32 %12, i32* %xm, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %xm, align 4
  %14 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 3
  %15 = load i32, i32* %x_max, align 4
  %cmp6 = icmp sle i32 %13, %15
  br i1 %cmp6, label %land.rhs.8, label %land.end.16

land.rhs.8:                                       ; preds = %for.cond.5
  %16 = load i8, i8* %discard, align 1
  %conv9 = sext i8 %16 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %lor.end.14, label %lor.rhs.11

lor.rhs.11:                                       ; preds = %land.rhs.8
  %17 = load i8, i8* %found, align 1
  %conv12 = sext i8 %17 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br label %lor.end.14

lor.end.14:                                       ; preds = %lor.rhs.11, %land.rhs.8
  %18 = phi i1 [ true, %land.rhs.8 ], [ %tobool13, %lor.rhs.11 ]
  %lnot15 = xor i1 %18, true
  br label %land.end.16

land.end.16:                                      ; preds = %lor.end.14, %for.cond.5
  %19 = phi i1 [ false, %for.cond.5 ], [ %lnot15, %lor.end.14 ]
  br i1 %19, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %land.end.16
  %20 = load i8, i8* %end_row, align 1
  %conv18 = sext i8 %20 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.17
  %21 = load i32, i32* %xm, align 4
  %22 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_min20 = getelementptr inbounds %struct._CompT, %struct._CompT* %22, i32 0, i32 5
  %23 = load i32, i32* %x_min20, align 4
  %cmp21 = icmp eq i32 %21, %23
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true
  store i8 1, i8* %discard, align 1
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body.17
  %24 = load %struct._CompT*, %struct._CompT** %c, align 8
  %type = getelementptr inbounds %struct._CompT, %struct._CompT* %24, i32 0, i32 11
  %25 = load i8, i8* %type, align 1
  %conv24 = sext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %26 = load i32, i32* %y, align 4
  %sub = sub nsw i32 0, %26
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load i32, i32* %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %ym, align 4
  %28 = load %struct._CompT*, %struct._CompT** %c, align 8
  %avg_row = getelementptr inbounds %struct._CompT, %struct._CompT* %28, i32 0, i32 2
  %29 = load i32, i32* %avg_row, align 4
  %30 = load i32, i32* %ym, align 4
  %add = add nsw i32 %29, %30
  %31 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %31, i32 0, i32 5
  %32 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %add, %32
  %33 = load i32, i32* %xm, align 4
  %add27 = add nsw i32 %mul, %33
  store i32 %add27, i32* %idx, align 4
  %34 = load %struct._CompT*, %struct._CompT** %c, align 8
  %avg_row28 = getelementptr inbounds %struct._CompT, %struct._CompT* %34, i32 0, i32 2
  %35 = load i32, i32* %avg_row28, align 4
  %36 = load i32, i32* %ym, align 4
  %add29 = add nsw i32 %35, %36
  %cmp30 = icmp slt i32 %add29, 0
  br i1 %cmp30, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %37 = load %struct._CompT*, %struct._CompT** %c, align 8
  %avg_row32 = getelementptr inbounds %struct._CompT, %struct._CompT* %37, i32 0, i32 2
  %38 = load i32, i32* %avg_row32, align 4
  %39 = load i32, i32* %ym, align 4
  %add33 = add nsw i32 %38, %39
  %40 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %40, i32 0, i32 4
  %41 = load i32, i32* %height, align 4
  %sub34 = sub nsw i32 %41, 1
  %cmp35 = icmp sgt i32 %add33, %sub34
  br i1 %cmp35, label %if.then.46, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %idx, align 4
  %43 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width38 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %43, i32 0, i32 5
  %44 = load i32, i32* %width38, align 4
  %45 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %45, i32 0, i32 4
  %46 = load i32, i32* %height39, align 4
  %mul40 = mul nsw i32 %44, %46
  %cmp41 = icmp sgt i32 %42, %mul40
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.37
  %47 = load i32, i32* %idx, align 4
  %cmp44 = icmp slt i32 %47, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.37, %lor.lhs.false, %cond.end
  br label %for.inc

if.end.47:                                        ; preds = %lor.lhs.false.43
  %48 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap = getelementptr inbounds %struct.ImgT, %struct.ImgT* %49, i32 0, i32 13
  %50 = load i32*, i32** %lmap, align 8
  %arrayidx = getelementptr inbounds i32, i32* %50, i64 %idxprom
  %51 = load i32, i32* %arrayidx, align 4
  %tobool48 = icmp ne i32 %51, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.100

land.lhs.true.49:                                 ; preds = %if.end.47
  %52 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %52 to i64
  %53 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap51 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %53, i32 0, i32 13
  %54 = load i32*, i32** %lmap51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %54, i64 %idxprom50
  %55 = load i32, i32* %arrayidx52, align 4
  %56 = load %struct._CompT*, %struct._CompT** %c, align 8
  %id = getelementptr inbounds %struct._CompT, %struct._CompT* %56, i32 0, i32 0
  %57 = load i32, i32* %id, align 4
  %cmp53 = icmp ne i32 %55, %57
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.100

land.lhs.true.55:                                 ; preds = %land.lhs.true.49
  %58 = load i32, i32* %idx, align 4
  %idxprom56 = sext i32 %58 to i64
  %59 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap57 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %59, i32 0, i32 13
  %60 = load i32*, i32** %lmap57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 %idxprom56
  %61 = load i32, i32* %arrayidx58, align 4
  %62 = load i32, i32* %last_comp, align 4
  %cmp59 = icmp ne i32 %61, %62
  br i1 %cmp59, label %if.then.61, label %if.end.100

if.then.61:                                       ; preds = %land.lhs.true.55
  %63 = load i32, i32* %ym, align 4
  %call = call i32 @abs(i32 %63) #9
  %64 = load i32, i32* @MIN_CHAR_SIZE, align 4
  %cmp62 = icmp slt i32 %call, %64
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.then.61
  store i8 1, i8* %discard, align 1
  br label %if.end.99

if.else:                                          ; preds = %if.then.61
  %65 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %66 = load %struct._CompT*, %struct._CompT** %65, align 8
  store %struct._CompT* %66, %struct._CompT** %o, align 8
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.76, %if.else
  %67 = load %struct._CompT*, %struct._CompT** %o, align 8
  %cmp66 = icmp ne %struct._CompT* %67, null
  br i1 %cmp66, label %land.rhs.68, label %land.end.75

land.rhs.68:                                      ; preds = %while.cond.65
  %68 = load %struct._CompT*, %struct._CompT** %o, align 8
  %id69 = getelementptr inbounds %struct._CompT, %struct._CompT* %68, i32 0, i32 0
  %69 = load i32, i32* %id69, align 4
  %70 = load i32, i32* %idx, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap71 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %71, i32 0, i32 13
  %72 = load i32*, i32** %lmap71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %72, i64 %idxprom70
  %73 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp ne i32 %69, %73
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.68, %while.cond.65
  %74 = phi i1 [ false, %while.cond.65 ], [ %cmp73, %land.rhs.68 ]
  br i1 %74, label %while.body.76, label %while.end

while.body.76:                                    ; preds = %land.end.75
  %75 = load %struct._CompT*, %struct._CompT** %o, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %75, i32 0, i32 15
  %76 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %76, %struct._CompT** %o, align 8
  br label %while.cond.65

while.end:                                        ; preds = %land.end.75
  %77 = load %struct._CompT*, %struct._CompT** %o, align 8
  %cmp77 = icmp eq %struct._CompT* %77, null
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %while.end
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0))
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.82:                                        ; preds = %while.end
  %78 = load %struct._CompT*, %struct._CompT** %c, align 8
  %type83 = getelementptr inbounds %struct._CompT, %struct._CompT* %78, i32 0, i32 11
  %79 = load i8, i8* %type83, align 1
  %conv84 = sext i8 %79 to i32
  %80 = load %struct._CompT*, %struct._CompT** %o, align 8
  %type85 = getelementptr inbounds %struct._CompT, %struct._CompT* %80, i32 0, i32 11
  %81 = load i8, i8* %type85, align 1
  %conv86 = sext i8 %81 to i32
  %cmp87 = icmp eq i32 %conv84, %conv86
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %if.end.82
  store i8 1, i8* %discard, align 1
  br label %if.end.98

if.else.90:                                       ; preds = %if.end.82
  %82 = load %struct._CompT*, %struct._CompT** %c, align 8
  %83 = load %struct._CompT*, %struct._CompT** %o, align 8
  %call91 = call signext i8 @Overlap(%struct._CompT* %82, %struct._CompT* %83)
  %tobool92 = icmp ne i8 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.else.90
  store i8 1, i8* %found, align 1
  %84 = load %struct._CompT*, %struct._CompT** %o, align 8
  %85 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired94 = getelementptr inbounds %struct._CompT, %struct._CompT* %85, i32 0, i32 13
  store %struct._CompT* %84, %struct._CompT** %paired94, align 8
  %86 = load %struct._CompT*, %struct._CompT** %c, align 8
  %87 = load %struct._CompT*, %struct._CompT** %o, align 8
  %paired95 = getelementptr inbounds %struct._CompT, %struct._CompT* %87, i32 0, i32 13
  store %struct._CompT* %86, %struct._CompT** %paired95, align 8
  br label %if.end.97

if.else.96:                                       ; preds = %if.else.90
  store i8 1, i8* %end_row, align 1
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.96, %if.then.93
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.89
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.64
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.55, %land.lhs.true.49, %if.end.47
  %88 = load i32, i32* %idx, align 4
  %idxprom101 = sext i32 %88 to i64
  %89 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap102 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %89, i32 0, i32 13
  %90 = load i32*, i32** %lmap102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %90, i64 %idxprom101
  %91 = load i32, i32* %arrayidx103, align 4
  store i32 %91, i32* %last_comp, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.100, %if.then.46
  %92 = load i32, i32* %xm, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %xm, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then.23, %land.end.16
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end
  %93 = load i32, i32* %y, align 4
  %inc105 = add nsw i32 %93, 1
  store i32 %inc105, i32* %y, align 4
  br label %for.cond

for.end.106:                                      ; preds = %land.end
  %94 = load i8, i8* %discard, align 1
  %conv107 = sext i8 %94 to i32
  %tobool108 = icmp ne i32 %conv107, 0
  br i1 %tobool108, label %if.then.111, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %for.end.106
  %95 = load i8, i8* %found, align 1
  %tobool110 = icmp ne i8 %95, 0
  br i1 %tobool110, label %if.end.133, label %if.then.111

if.then.111:                                      ; preds = %lor.lhs.false.109, %for.end.106
  %96 = load %struct._CompT*, %struct._CompT** %c, align 8
  %pixels = getelementptr inbounds %struct._CompT, %struct._CompT* %96, i32 0, i32 12
  %97 = load %struct._PixT*, %struct._PixT** %pixels, align 8
  store %struct._PixT* %97, %struct._PixT** %cpix, align 8
  br label %while.cond.112

while.cond.112:                                   ; preds = %while.body.115, %if.then.111
  %98 = load %struct._PixT*, %struct._PixT** %cpix, align 8
  %cmp113 = icmp ne %struct._PixT* %98, null
  br i1 %cmp113, label %while.body.115, label %while.end.124

while.body.115:                                   ; preds = %while.cond.112
  %99 = load %struct._PixT*, %struct._PixT** %cpix, align 8
  %y116 = getelementptr inbounds %struct._PixT, %struct._PixT* %99, i32 0, i32 1
  %100 = load i32, i32* %y116, align 4
  %101 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width117 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %101, i32 0, i32 5
  %102 = load i32, i32* %width117, align 4
  %mul118 = mul nsw i32 %100, %102
  %103 = load %struct._PixT*, %struct._PixT** %cpix, align 8
  %x = getelementptr inbounds %struct._PixT, %struct._PixT* %103, i32 0, i32 0
  %104 = load i32, i32* %x, align 4
  %add119 = add nsw i32 %mul118, %104
  %idxprom120 = sext i32 %add119 to i64
  %105 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %lmap121 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %105, i32 0, i32 13
  %106 = load i32*, i32** %lmap121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %106, i64 %idxprom120
  store i32 0, i32* %arrayidx122, align 4
  %107 = load %struct._PixT*, %struct._PixT** %cpix, align 8
  store %struct._PixT* %107, %struct._PixT** %ppix, align 8
  %108 = load %struct._PixT*, %struct._PixT** %cpix, align 8
  %prev123 = getelementptr inbounds %struct._PixT, %struct._PixT* %108, i32 0, i32 2
  %109 = load %struct._PixT*, %struct._PixT** %prev123, align 8
  store %struct._PixT* %109, %struct._PixT** %cpix, align 8
  %110 = load %struct._PixT*, %struct._PixT** %ppix, align 8
  %111 = bitcast %struct._PixT* %110 to i8*
  call void @free(i8* %111) #6
  br label %while.cond.112

while.end.124:                                    ; preds = %while.cond.112
  %112 = load %struct._CompT*, %struct._CompT** %p, align 8
  %cmp125 = icmp ne %struct._CompT* %112, null
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %while.end.124
  %113 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev128 = getelementptr inbounds %struct._CompT, %struct._CompT* %113, i32 0, i32 15
  %114 = load %struct._CompT*, %struct._CompT** %prev128, align 8
  %115 = load %struct._CompT*, %struct._CompT** %p, align 8
  %prev129 = getelementptr inbounds %struct._CompT, %struct._CompT* %115, i32 0, i32 15
  store %struct._CompT* %114, %struct._CompT** %prev129, align 8
  br label %if.end.132

if.else.130:                                      ; preds = %while.end.124
  %116 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev131 = getelementptr inbounds %struct._CompT, %struct._CompT* %116, i32 0, i32 15
  %117 = load %struct._CompT*, %struct._CompT** %prev131, align 8
  %118 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  store %struct._CompT* %117, %struct._CompT** %118, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.127
  %119 = load %struct._CompT*, %struct._CompT** %c, align 8
  %120 = bitcast %struct._CompT* %119 to i8*
  call void @free(i8* %120) #6
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %lor.lhs.false.109
  br label %if.end.135

if.else.134:                                      ; preds = %while.body
  store i8 1, i8* %found, align 1
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.end.133
  %121 = load i8, i8* %discard, align 1
  %conv136 = sext i8 %121 to i32
  %tobool137 = icmp ne i32 %conv136, 0
  br i1 %tobool137, label %if.then.140, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.135
  %122 = load i8, i8* %found, align 1
  %tobool139 = icmp ne i8 %122, 0
  br i1 %tobool139, label %if.else.147, label %if.then.140

if.then.140:                                      ; preds = %lor.lhs.false.138, %if.end.135
  %123 = load %struct._CompT*, %struct._CompT** %p, align 8
  %cmp141 = icmp ne %struct._CompT* %123, null
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.then.140
  %124 = load %struct._CompT*, %struct._CompT** %p, align 8
  %prev144 = getelementptr inbounds %struct._CompT, %struct._CompT* %124, i32 0, i32 15
  %125 = load %struct._CompT*, %struct._CompT** %prev144, align 8
  store %struct._CompT* %125, %struct._CompT** %c, align 8
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.140
  %126 = load %struct._CompT**, %struct._CompT*** %head.addr, align 8
  %127 = load %struct._CompT*, %struct._CompT** %126, align 8
  store %struct._CompT* %127, %struct._CompT** %c, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.143
  br label %if.end.149

if.else.147:                                      ; preds = %lor.lhs.false.138
  %128 = load %struct._CompT*, %struct._CompT** %c, align 8
  store %struct._CompT* %128, %struct._CompT** %p, align 8
  %129 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev148 = getelementptr inbounds %struct._CompT, %struct._CompT* %129, i32 0, i32 15
  %130 = load %struct._CompT*, %struct._CompT** %prev148, align 8
  store %struct._CompT* %130, %struct._CompT** %c, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.147, %if.end.146
  store i32 0, i32* %last_comp, align 4
  store i8 0, i8* %end_row, align 1
  store i8 0, i8* %found, align 1
  store i8 0, i8* %discard, align 1
  br label %while.cond

while.end.150:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define signext i8 @Overlap(%struct._CompT* %c1, %struct._CompT* %c2) #0 {
entry:
  %retval = alloca i8, align 1
  %c1.addr = alloca %struct._CompT*, align 8
  %c2.addr = alloca %struct._CompT*, align 8
  %r1l2 = alloca i32, align 4
  %l2l1 = alloca i32, align 4
  %r2r1 = alloca i32, align 4
  %r2l1 = alloca i32, align 4
  %r1l1 = alloca i32, align 4
  %r2l2 = alloca i32, align 4
  %overlap1 = alloca float, align 4
  %overlap2 = alloca float, align 4
  store %struct._CompT* %c1, %struct._CompT** %c1.addr, align 8
  store %struct._CompT* %c2, %struct._CompT** %c2.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_max = getelementptr inbounds %struct._CompT, %struct._CompT* %0, i32 0, i32 3
  %1 = load i32, i32* %x_max, align 4
  %2 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_min = getelementptr inbounds %struct._CompT, %struct._CompT* %2, i32 0, i32 5
  %3 = load i32, i32* %x_min, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %r1l2, align 4
  %4 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_min1 = getelementptr inbounds %struct._CompT, %struct._CompT* %4, i32 0, i32 5
  %5 = load i32, i32* %x_min1, align 4
  %6 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_min2 = getelementptr inbounds %struct._CompT, %struct._CompT* %6, i32 0, i32 5
  %7 = load i32, i32* %x_min2, align 4
  %sub3 = sub nsw i32 %5, %7
  store i32 %sub3, i32* %l2l1, align 4
  %8 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_max4 = getelementptr inbounds %struct._CompT, %struct._CompT* %8, i32 0, i32 3
  %9 = load i32, i32* %x_max4, align 4
  %10 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_max5 = getelementptr inbounds %struct._CompT, %struct._CompT* %10, i32 0, i32 3
  %11 = load i32, i32* %x_max5, align 4
  %sub6 = sub nsw i32 %9, %11
  store i32 %sub6, i32* %r2r1, align 4
  %12 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_max7 = getelementptr inbounds %struct._CompT, %struct._CompT* %12, i32 0, i32 3
  %13 = load i32, i32* %x_max7, align 4
  %14 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_min8 = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 5
  %15 = load i32, i32* %x_min8, align 4
  %sub9 = sub nsw i32 %13, %15
  store i32 %sub9, i32* %r2l1, align 4
  %16 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_max10 = getelementptr inbounds %struct._CompT, %struct._CompT* %16, i32 0, i32 3
  %17 = load i32, i32* %x_max10, align 4
  %18 = load %struct._CompT*, %struct._CompT** %c1.addr, align 8
  %x_min11 = getelementptr inbounds %struct._CompT, %struct._CompT* %18, i32 0, i32 5
  %19 = load i32, i32* %x_min11, align 4
  %sub12 = sub nsw i32 %17, %19
  store i32 %sub12, i32* %r1l1, align 4
  %20 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_max13 = getelementptr inbounds %struct._CompT, %struct._CompT* %20, i32 0, i32 3
  %21 = load i32, i32* %x_max13, align 4
  %22 = load %struct._CompT*, %struct._CompT** %c2.addr, align 8
  %x_min14 = getelementptr inbounds %struct._CompT, %struct._CompT* %22, i32 0, i32 5
  %23 = load i32, i32* %x_min14, align 4
  %sub15 = sub nsw i32 %21, %23
  store i32 %sub15, i32* %r2l2, align 4
  %24 = load i32, i32* %r1l2, align 4
  %cmp = icmp sge i32 %24, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load i32, i32* %l2l1, align 4
  %cmp16 = icmp sge i32 %25, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %26 = load i32, i32* %r2r1, align 4
  %cmp18 = icmp sge i32 %26, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %27 = load i32, i32* %r2l1, align 4
  %cmp20 = icmp sgt i32 %27, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.19
  %28 = load i32, i32* %r1l2, align 4
  %conv = sitofp i32 %28 to float
  %29 = load i32, i32* %r1l1, align 4
  %conv21 = sitofp i32 %29 to float
  %div = fdiv float %conv, %conv21
  store float %div, float* %overlap1, align 4
  %30 = load i32, i32* %r1l2, align 4
  %conv22 = sitofp i32 %30 to float
  %31 = load i32, i32* %r2l2, align 4
  %conv23 = sitofp i32 %31 to float
  %div24 = fdiv float %conv22, %conv23
  store float %div24, float* %overlap2, align 4
  %32 = load float, float* %overlap1, align 4
  %conv25 = fpext float %32 to double
  %cmp26 = fcmp oge double %conv25, 5.000000e-01
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %33 = load float, float* %overlap2, align 4
  %conv28 = fpext float %33 to double
  %cmp29 = fcmp oge double %conv28, 5.000000e-01
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %34 = phi i1 [ false, %if.then ], [ %cmp29, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  %conv31 = trunc i32 %land.ext to i8
  store i8 %conv31, i8* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true, %entry
  %35 = load i32, i32* %r1l2, align 4
  %cmp32 = icmp sgt i32 %35, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.60

land.lhs.true.34:                                 ; preds = %if.end
  %36 = load i32, i32* %l2l1, align 4
  %cmp35 = icmp sle i32 %36, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.60

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %37 = load i32, i32* %r2r1, align 4
  %cmp38 = icmp sle i32 %37, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.60

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %38 = load i32, i32* %r2l1, align 4
  %cmp41 = icmp sge i32 %38, 0
  br i1 %cmp41, label %if.then.43, label %if.end.60

if.then.43:                                       ; preds = %land.lhs.true.40
  %39 = load i32, i32* %r2l1, align 4
  %conv44 = sitofp i32 %39 to float
  %40 = load i32, i32* %r1l1, align 4
  %conv45 = sitofp i32 %40 to float
  %div46 = fdiv float %conv44, %conv45
  store float %div46, float* %overlap1, align 4
  %41 = load i32, i32* %r2l1, align 4
  %conv47 = sitofp i32 %41 to float
  %42 = load i32, i32* %r2l2, align 4
  %conv48 = sitofp i32 %42 to float
  %div49 = fdiv float %conv47, %conv48
  store float %div49, float* %overlap2, align 4
  %43 = load float, float* %overlap1, align 4
  %conv50 = fpext float %43 to double
  %cmp51 = fcmp oge double %conv50, 5.000000e-01
  br i1 %cmp51, label %land.rhs.53, label %land.end.57

land.rhs.53:                                      ; preds = %if.then.43
  %44 = load float, float* %overlap2, align 4
  %conv54 = fpext float %44 to double
  %cmp55 = fcmp oge double %conv54, 5.000000e-01
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.53, %if.then.43
  %45 = phi i1 [ false, %if.then.43 ], [ %cmp55, %land.rhs.53 ]
  %land.ext58 = zext i1 %45 to i32
  %conv59 = trunc i32 %land.ext58 to i8
  store i8 %conv59, i8* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.40, %land.lhs.true.37, %land.lhs.true.34, %if.end
  %46 = load i32, i32* %r1l2, align 4
  %cmp61 = icmp sgt i32 %46, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.80

land.lhs.true.63:                                 ; preds = %if.end.60
  %47 = load i32, i32* %l2l1, align 4
  %cmp64 = icmp sle i32 %47, 0
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.80

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %48 = load i32, i32* %r2r1, align 4
  %cmp67 = icmp sge i32 %48, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.80

land.lhs.true.69:                                 ; preds = %land.lhs.true.66
  %49 = load i32, i32* %r2l1, align 4
  %cmp70 = icmp sgt i32 %49, 0
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %land.lhs.true.69
  %50 = load i32, i32* %r1l1, align 4
  %conv73 = sitofp i32 %50 to float
  %51 = load i32, i32* %r2l2, align 4
  %conv74 = sitofp i32 %51 to float
  %div75 = fdiv float %conv73, %conv74
  store float %div75, float* %overlap2, align 4
  %52 = load float, float* %overlap2, align 4
  %conv76 = fpext float %52 to double
  %cmp77 = fcmp oge double %conv76, 5.000000e-01
  %conv78 = zext i1 %cmp77 to i32
  %conv79 = trunc i32 %conv78 to i8
  store i8 %conv79, i8* %retval
  br label %return

if.end.80:                                        ; preds = %land.lhs.true.69, %land.lhs.true.66, %land.lhs.true.63, %if.end.60
  %53 = load i32, i32* %r1l2, align 4
  %cmp81 = icmp sgt i32 %53, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.100

land.lhs.true.83:                                 ; preds = %if.end.80
  %54 = load i32, i32* %l2l1, align 4
  %cmp84 = icmp sge i32 %54, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.100

land.lhs.true.86:                                 ; preds = %land.lhs.true.83
  %55 = load i32, i32* %r2r1, align 4
  %cmp87 = icmp sle i32 %55, 0
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.100

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %56 = load i32, i32* %r2l1, align 4
  %cmp90 = icmp sgt i32 %56, 0
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %land.lhs.true.89
  %57 = load i32, i32* %r2l2, align 4
  %conv93 = sitofp i32 %57 to float
  %58 = load i32, i32* %r1l1, align 4
  %conv94 = sitofp i32 %58 to float
  %div95 = fdiv float %conv93, %conv94
  store float %div95, float* %overlap1, align 4
  %59 = load float, float* %overlap1, align 4
  %conv96 = fpext float %59 to double
  %cmp97 = fcmp oge double %conv96, 5.000000e-01
  %conv98 = zext i1 %cmp97 to i32
  %conv99 = trunc i32 %conv98 to i8
  store i8 %conv99, i8* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.89, %land.lhs.true.86, %land.lhs.true.83, %if.end.80
  %60 = load i32, i32* %r1l2, align 4
  %cmp101 = icmp slt i32 %60, 0
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.113

land.lhs.true.103:                                ; preds = %if.end.100
  %61 = load i32, i32* %l2l1, align 4
  %cmp104 = icmp sgt i32 %61, 0
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.113

land.lhs.true.106:                                ; preds = %land.lhs.true.103
  %62 = load i32, i32* %r2r1, align 4
  %cmp107 = icmp sgt i32 %62, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.113

land.lhs.true.109:                                ; preds = %land.lhs.true.106
  %63 = load i32, i32* %r2l1, align 4
  %cmp110 = icmp sgt i32 %63, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %land.lhs.true.109
  store i8 0, i8* %retval
  br label %return

if.end.113:                                       ; preds = %land.lhs.true.109, %land.lhs.true.106, %land.lhs.true.103, %if.end.100
  %64 = load i32, i32* %r1l2, align 4
  %cmp114 = icmp sgt i32 %64, 0
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.126

land.lhs.true.116:                                ; preds = %if.end.113
  %65 = load i32, i32* %l2l1, align 4
  %cmp117 = icmp slt i32 %65, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.126

land.lhs.true.119:                                ; preds = %land.lhs.true.116
  %66 = load i32, i32* %r2r1, align 4
  %cmp120 = icmp slt i32 %66, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.126

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %67 = load i32, i32* %r2l1, align 4
  %cmp123 = icmp slt i32 %67, 0
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.122
  store i8 0, i8* %retval
  br label %return

if.end.126:                                       ; preds = %land.lhs.true.122, %land.lhs.true.119, %land.lhs.true.116, %if.end.113
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0))
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

return:                                           ; preds = %if.then.125, %if.then.112, %if.then.92, %if.then.72, %land.end.57, %land.end
  %68 = load i8, i8* %retval
  ret i8 %68
}

; Function Attrs: nounwind uwtable
define void @ComputeBoundingBoxes(%struct._CompT* %comp, %struct.ImgT* %img) #0 {
entry:
  %comp.addr = alloca %struct._CompT*, align 8
  %img.addr = alloca %struct.ImgT*, align 8
  %c = alloca %struct._CompT*, align 8
  %x_min = alloca i32, align 4
  %x_max = alloca i32, align 4
  %y_min = alloca i32, align 4
  %y_max = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %idx = alloca i32, align 4
  %pixel = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %val = alloca i8, align 1
  store %struct._CompT* %comp, %struct._CompT** %comp.addr, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct._CompT*, %struct._CompT** %comp.addr, align 8
  store %struct._CompT* %0, %struct._CompT** %c, align 8
  %1 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp = icmp eq %struct._CompT* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end.78, %if.then.4, %if.end
  %2 = load %struct._CompT*, %struct._CompT** %c, align 8
  %cmp1 = icmp ne %struct._CompT* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CompT*, %struct._CompT** %c, align 8
  %type = getelementptr inbounds %struct._CompT, %struct._CompT* %3, i32 0, i32 11
  %4 = load i8, i8* %type, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %5 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev = getelementptr inbounds %struct._CompT, %struct._CompT* %5, i32 0, i32 15
  %6 = load %struct._CompT*, %struct._CompT** %prev, align 8
  store %struct._CompT* %6, %struct._CompT** %c, align 8
  br label %while.cond

if.end.5:                                         ; preds = %while.body
  %7 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_min6 = getelementptr inbounds %struct._CompT, %struct._CompT* %7, i32 0, i32 5
  %8 = load i32, i32* %x_min6, align 4
  %9 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired = getelementptr inbounds %struct._CompT, %struct._CompT* %9, i32 0, i32 13
  %10 = load %struct._CompT*, %struct._CompT** %paired, align 8
  %x_min7 = getelementptr inbounds %struct._CompT, %struct._CompT* %10, i32 0, i32 5
  %11 = load i32, i32* %x_min7, align 4
  %cmp8 = icmp slt i32 %8, %11
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %12 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_min10 = getelementptr inbounds %struct._CompT, %struct._CompT* %12, i32 0, i32 5
  %13 = load i32, i32* %x_min10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %14 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired11 = getelementptr inbounds %struct._CompT, %struct._CompT* %14, i32 0, i32 13
  %15 = load %struct._CompT*, %struct._CompT** %paired11, align 8
  %x_min12 = getelementptr inbounds %struct._CompT, %struct._CompT* %15, i32 0, i32 5
  %16 = load i32, i32* %x_min12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, i32* %x_min, align 4
  %17 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_max13 = getelementptr inbounds %struct._CompT, %struct._CompT* %17, i32 0, i32 3
  %18 = load i32, i32* %x_max13, align 4
  %19 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired14 = getelementptr inbounds %struct._CompT, %struct._CompT* %19, i32 0, i32 13
  %20 = load %struct._CompT*, %struct._CompT** %paired14, align 8
  %x_max15 = getelementptr inbounds %struct._CompT, %struct._CompT* %20, i32 0, i32 3
  %21 = load i32, i32* %x_max15, align 4
  %cmp16 = icmp sgt i32 %18, %21
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end
  %22 = load %struct._CompT*, %struct._CompT** %c, align 8
  %x_max19 = getelementptr inbounds %struct._CompT, %struct._CompT* %22, i32 0, i32 3
  %23 = load i32, i32* %x_max19, align 4
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end
  %24 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired21 = getelementptr inbounds %struct._CompT, %struct._CompT* %24, i32 0, i32 13
  %25 = load %struct._CompT*, %struct._CompT** %paired21, align 8
  %x_max22 = getelementptr inbounds %struct._CompT, %struct._CompT* %25, i32 0, i32 3
  %26 = load i32, i32* %x_max22, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.18
  %cond24 = phi i32 [ %23, %cond.true.18 ], [ %26, %cond.false.20 ]
  store i32 %cond24, i32* %x_max, align 4
  %27 = load %struct._CompT*, %struct._CompT** %c, align 8
  %y_min25 = getelementptr inbounds %struct._CompT, %struct._CompT* %27, i32 0, i32 6
  %28 = load i32, i32* %y_min25, align 4
  %29 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired26 = getelementptr inbounds %struct._CompT, %struct._CompT* %29, i32 0, i32 13
  %30 = load %struct._CompT*, %struct._CompT** %paired26, align 8
  %y_min27 = getelementptr inbounds %struct._CompT, %struct._CompT* %30, i32 0, i32 6
  %31 = load i32, i32* %y_min27, align 4
  %cmp28 = icmp slt i32 %28, %31
  br i1 %cmp28, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %cond.end.23
  %32 = load %struct._CompT*, %struct._CompT** %c, align 8
  %y_min31 = getelementptr inbounds %struct._CompT, %struct._CompT* %32, i32 0, i32 6
  %33 = load i32, i32* %y_min31, align 4
  br label %cond.end.35

cond.false.32:                                    ; preds = %cond.end.23
  %34 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired33 = getelementptr inbounds %struct._CompT, %struct._CompT* %34, i32 0, i32 13
  %35 = load %struct._CompT*, %struct._CompT** %paired33, align 8
  %y_min34 = getelementptr inbounds %struct._CompT, %struct._CompT* %35, i32 0, i32 6
  %36 = load i32, i32* %y_min34, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.30
  %cond36 = phi i32 [ %33, %cond.true.30 ], [ %36, %cond.false.32 ]
  store i32 %cond36, i32* %y_min, align 4
  %37 = load %struct._CompT*, %struct._CompT** %c, align 8
  %y_max37 = getelementptr inbounds %struct._CompT, %struct._CompT* %37, i32 0, i32 4
  %38 = load i32, i32* %y_max37, align 4
  %39 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired38 = getelementptr inbounds %struct._CompT, %struct._CompT* %39, i32 0, i32 13
  %40 = load %struct._CompT*, %struct._CompT** %paired38, align 8
  %y_max39 = getelementptr inbounds %struct._CompT, %struct._CompT* %40, i32 0, i32 4
  %41 = load i32, i32* %y_max39, align 4
  %cmp40 = icmp sgt i32 %38, %41
  br i1 %cmp40, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %cond.end.35
  %42 = load %struct._CompT*, %struct._CompT** %c, align 8
  %y_max43 = getelementptr inbounds %struct._CompT, %struct._CompT* %42, i32 0, i32 4
  %43 = load i32, i32* %y_max43, align 4
  br label %cond.end.47

cond.false.44:                                    ; preds = %cond.end.35
  %44 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired45 = getelementptr inbounds %struct._CompT, %struct._CompT* %44, i32 0, i32 13
  %45 = load %struct._CompT*, %struct._CompT** %paired45, align 8
  %y_max46 = getelementptr inbounds %struct._CompT, %struct._CompT* %45, i32 0, i32 4
  %46 = load i32, i32* %y_max46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.42
  %cond48 = phi i32 [ %43, %cond.true.42 ], [ %46, %cond.false.44 ]
  store i32 %cond48, i32* %y_max, align 4
  %47 = load i32, i32* %x_min, align 4
  store i32 %47, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.47
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %x_max, align 4
  %cmp49 = icmp sle i32 %48, %49
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct._CompT*, %struct._CompT** %c, align 8
  %y_max51 = getelementptr inbounds %struct._CompT, %struct._CompT* %50, i32 0, i32 4
  %51 = load i32, i32* %y_max51, align 4
  %52 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %52, i32 0, i32 5
  %53 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %51, %53
  %54 = load i32, i32* %x, align 4
  %add = add nsw i32 %mul, %54
  store i32 %add, i32* %idx, align 4
  %55 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %55 to i64
  %56 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %56, i32 0, i32 8
  %57 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %57, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %58 = load %struct._CompT*, %struct._CompT** %c, align 8
  %paired52 = getelementptr inbounds %struct._CompT, %struct._CompT* %58, i32 0, i32 13
  %59 = load %struct._CompT*, %struct._CompT** %paired52, align 8
  %y_min53 = getelementptr inbounds %struct._CompT, %struct._CompT* %59, i32 0, i32 6
  %60 = load i32, i32* %y_min53, align 4
  %61 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width54 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %61, i32 0, i32 5
  %62 = load i32, i32* %width54, align 4
  %mul55 = mul nsw i32 %60, %62
  %63 = load i32, i32* %x, align 4
  %add56 = add nsw i32 %mul55, %63
  store i32 %add56, i32* %idx, align 4
  %64 = load i32, i32* %idx, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data58 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %65, i32 0, i32 8
  %66 = load i8*, i8** %data58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %66, i64 %idxprom57
  store i8 -1, i8* %arrayidx59, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %x, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %y_min, align 4
  store i32 %68, i32* %y, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %for.end
  %69 = load i32, i32* %y, align 4
  %70 = load i32, i32* %y_max, align 4
  %cmp61 = icmp sle i32 %69, %70
  br i1 %cmp61, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.60
  %71 = load i32, i32* %y, align 4
  %72 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width64 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %72, i32 0, i32 5
  %73 = load i32, i32* %width64, align 4
  %mul65 = mul nsw i32 %71, %73
  %74 = load i32, i32* %x_min, align 4
  %add66 = add nsw i32 %mul65, %74
  store i32 %add66, i32* %idx, align 4
  %75 = load i32, i32* %idx, align 4
  %idxprom67 = sext i32 %75 to i64
  %76 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data68 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %76, i32 0, i32 8
  %77 = load i8*, i8** %data68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %77, i64 %idxprom67
  store i8 -1, i8* %arrayidx69, align 1
  %78 = load i32, i32* %y, align 4
  %79 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width70 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %79, i32 0, i32 5
  %80 = load i32, i32* %width70, align 4
  %mul71 = mul nsw i32 %78, %80
  %81 = load i32, i32* %x_max, align 4
  %add72 = add nsw i32 %mul71, %81
  store i32 %add72, i32* %idx, align 4
  %82 = load i32, i32* %idx, align 4
  %idxprom73 = sext i32 %82 to i64
  %83 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data74 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %83, i32 0, i32 8
  %84 = load i8*, i8** %data74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %84, i64 %idxprom73
  store i8 -1, i8* %arrayidx75, align 1
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.63
  %85 = load i32, i32* %y, align 4
  %inc77 = add nsw i32 %85, 1
  store i32 %inc77, i32* %y, align 4
  br label %for.cond.60

for.end.78:                                       ; preds = %for.cond.60
  %86 = load %struct._CompT*, %struct._CompT** %c, align 8
  %prev79 = getelementptr inbounds %struct._CompT, %struct._CompT* %86, i32 0, i32 15
  %87 = load %struct._CompT*, %struct._CompT** %prev79, align 8
  store %struct._CompT* %87, %struct._CompT** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %88 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %88, i32 0, i32 2
  %89 = load i8*, i8** %imgname, align 8
  %call = call i64 @strlen(i8* %89) #7
  %add80 = add i64 %call, 8
  %add81 = add i64 %add80, 1
  %mul82 = mul i64 %add81, 1
  %call83 = call noalias i8* @malloc(i64 %mul82) #6
  store i8* %call83, i8** %s, align 8
  %90 = load i8*, i8** %s, align 8
  %91 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname84 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %91, i32 0, i32 2
  %92 = load i8*, i8** %imgname84, align 8
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %92) #6
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %93, %struct._IO_FILE** %fp, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %96 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width87 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %96, i32 0, i32 5
  %97 = load i32, i32* %width87, align 4
  %98 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %98, i32 0, i32 4
  %99 = load i32, i32* %height, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %97, i32 %99)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %pixel, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.101, %while.end
  %101 = load i32, i32* %pixel, align 4
  %102 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width91 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %102, i32 0, i32 5
  %103 = load i32, i32* %width91, align 4
  %104 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height92 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %104, i32 0, i32 4
  %105 = load i32, i32* %height92, align 4
  %mul93 = mul nsw i32 %103, %105
  %cmp94 = icmp slt i32 %101, %mul93
  br i1 %cmp94, label %for.body.96, label %for.end.103

for.body.96:                                      ; preds = %for.cond.90
  %106 = load i32, i32* %pixel, align 4
  %idxprom97 = sext i32 %106 to i64
  %107 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data98 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %107, i32 0, i32 8
  %108 = load i8*, i8** %data98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %108, i64 %idxprom97
  %109 = load i8, i8* %arrayidx99, align 1
  store i8 %109, i8* %val, align 1
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call100 = call i64 @fwrite(i8* %val, i64 1, i64 1, %struct._IO_FILE* %110)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.96
  %111 = load i32, i32* %pixel, align 4
  %inc102 = add nsw i32 %111, 1
  store i32 %inc102, i32* %pixel, align 4
  br label %for.cond.90

for.end.103:                                      ; preds = %for.cond.90
  %112 = load i8*, i8** %s, align 8
  call void @free(i8* %112) #6
  br label %return

return:                                           ; preds = %for.end.103, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
