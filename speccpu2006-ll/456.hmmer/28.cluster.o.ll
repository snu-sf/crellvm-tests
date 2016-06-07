; ModuleID = 'cluster.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [10 x i8] c"cluster.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"AllocPhylo() failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s:%.5f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"):%.5f\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Interior node %d (code %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09Parent: %d (code %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\09Left:   %d (%s) %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09Right:   %d (%s) %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\09Height:  %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\09Includes:%d seqs\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Cluster(float** %dmx, i32 %N, i32 %mode, %struct.phylo_s** %ret_tree) #0 {
entry:
  %dmx.addr = alloca float**, align 8
  %N.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %ret_tree.addr = alloca %struct.phylo_s**, align 8
  %tree = alloca %struct.phylo_s*, align 8
  %mx = alloca float**, align 8
  %coord = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx = alloca i32, align 4
  %Np = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %min = alloca float, align 4
  %trow = alloca float*, align 8
  %tcol = alloca float, align 4
  %diff = alloca float*, align 8
  %swapfoo = alloca i32, align 4
  store float** %dmx, float*** %dmx.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.phylo_s** %ret_tree, %struct.phylo_s*** %ret_tree.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 168, i64 %mul)
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %mx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %N.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 171, i64 %mul3)
  %5 = bitcast i8* %call4 to float*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float**, float*** %mx, align 8
  %arrayidx = getelementptr inbounds float*, float** %7, i64 %idxprom
  store float* %5, float** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %N.addr, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load float**, float*** %dmx.addr, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %12, i64 %idxprom10
  %13 = load float*, float** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds float, float* %13, i64 %idxprom9
  %14 = load float, float* %arrayidx12, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load float**, float*** %mx, align 8
  %arrayidx15 = getelementptr inbounds float*, float** %17, i64 %idxprom14
  %18 = load float*, float** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds float, float* %18, i64 %idxprom13
  store float %14, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %21 = load i32, i32* %N.addr, align 4
  %conv20 = sext i32 %21 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 176, i64 %mul21)
  %22 = bitcast i8* %call22 to i32*
  store i32* %22, i32** %coord, align 8
  %23 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %23, 1
  %conv23 = sext i32 %sub to i64
  %mul24 = mul i64 %conv23, 4
  %call25 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 177, i64 %mul24)
  %24 = bitcast i8* %call25 to float*
  store float* %24, float** %diff, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.32, %for.end.19
  %25 = load i32, i32* %col, align 4
  %26 = load i32, i32* %N.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body.29, label %for.end.34

for.body.29:                                      ; preds = %for.cond.26
  %27 = load i32, i32* %col, align 4
  %28 = load i32, i32* %col, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load i32*, i32** %coord, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %29, i64 %idxprom30
  store i32 %27, i32* %arrayidx31, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.29
  %30 = load i32, i32* %col, align 4
  %inc33 = add nsw i32 %30, 1
  store i32 %inc33, i32* %col, align 4
  br label %for.cond.26

for.end.34:                                       ; preds = %for.cond.26
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.42, %for.end.34
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %N.addr, align 4
  %sub36 = sub nsw i32 %32, 1
  %cmp37 = icmp slt i32 %31, %sub36
  br i1 %cmp37, label %for.body.39, label %for.end.44

for.body.39:                                      ; preds = %for.cond.35
  %33 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load float*, float** %diff, align 8
  %arrayidx41 = getelementptr inbounds float, float* %34, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.39
  %35 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.35

for.end.44:                                       ; preds = %for.cond.35
  %36 = load i32, i32* %N.addr, align 4
  %call45 = call %struct.phylo_s* @AllocPhylo(i32 %36)
  store %struct.phylo_s* %call45, %struct.phylo_s** %tree, align 8
  %cmp46 = icmp eq %struct.phylo_s* %call45, null
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.44
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.44
  store i32 0, i32* %j, align 4
  %37 = load i32, i32* %N.addr, align 4
  store i32 %37, i32* %Np, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.486, %if.end
  %38 = load i32, i32* %Np, align 4
  %cmp49 = icmp sge i32 %38, 2
  br i1 %cmp49, label %for.body.51, label %for.end.487

for.body.51:                                      ; preds = %for.cond.48
  store float 9.999990e+05, float* %min, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.75, %for.body.51
  %39 = load i32, i32* %row, align 4
  %40 = load i32, i32* %Np, align 4
  %cmp53 = icmp slt i32 %39, %40
  br i1 %cmp53, label %for.body.55, label %for.end.77

for.body.55:                                      ; preds = %for.cond.52
  %41 = load i32, i32* %row, align 4
  %add = add nsw i32 %41, 1
  store i32 %add, i32* %col, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.72, %for.body.55
  %42 = load i32, i32* %col, align 4
  %43 = load i32, i32* %Np, align 4
  %cmp57 = icmp slt i32 %42, %43
  br i1 %cmp57, label %for.body.59, label %for.end.74

for.body.59:                                      ; preds = %for.cond.56
  %44 = load i32, i32* %col, align 4
  %idxprom60 = sext i32 %44 to i64
  %45 = load i32, i32* %row, align 4
  %idxprom61 = sext i32 %45 to i64
  %46 = load float**, float*** %mx, align 8
  %arrayidx62 = getelementptr inbounds float*, float** %46, i64 %idxprom61
  %47 = load float*, float** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds float, float* %47, i64 %idxprom60
  %48 = load float, float* %arrayidx63, align 4
  %49 = load float, float* %min, align 4
  %cmp64 = fcmp olt float %48, %49
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %for.body.59
  %50 = load i32, i32* %col, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i32, i32* %row, align 4
  %idxprom68 = sext i32 %51 to i64
  %52 = load float**, float*** %mx, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %52, i64 %idxprom68
  %53 = load float*, float** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds float, float* %53, i64 %idxprom67
  %54 = load float, float* %arrayidx70, align 4
  store float %54, float* %min, align 4
  %55 = load i32, i32* %row, align 4
  store i32 %55, i32* %i, align 4
  %56 = load i32, i32* %col, align 4
  store i32 %56, i32* %j, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %for.body.59
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %57 = load i32, i32* %col, align 4
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, i32* %col, align 4
  br label %for.cond.56

for.end.74:                                       ; preds = %for.cond.56
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %58 = load i32, i32* %row, align 4
  %inc76 = add nsw i32 %58, 1
  store i32 %inc76, i32* %row, align 4
  br label %for.cond.52

for.end.77:                                       ; preds = %for.cond.52
  %59 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %59 to i64
  %60 = load i32*, i32** %coord, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %60, i64 %idxprom78
  %61 = load i32, i32* %arrayidx79, align 4
  %62 = load i32, i32* %Np, align 4
  %sub80 = sub nsw i32 %62, 2
  %idxprom81 = sext i32 %sub80 to i64
  %63 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx82 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %63, i64 %idxprom81
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx82, i32 0, i32 1
  store i32 %61, i32* %left, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %64 to i64
  %65 = load i32*, i32** %coord, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %65, i64 %idxprom83
  %66 = load i32, i32* %arrayidx84, align 4
  %67 = load i32, i32* %Np, align 4
  %sub85 = sub nsw i32 %67, 2
  %idxprom86 = sext i32 %sub85 to i64
  %68 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx87 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %68, i64 %idxprom86
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx87, i32 0, i32 2
  store i32 %66, i32* %right, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i32*, i32** %coord, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %70, i64 %idxprom88
  %71 = load i32, i32* %arrayidx89, align 4
  %72 = load i32, i32* %N.addr, align 4
  %cmp90 = icmp sge i32 %71, %72
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %for.end.77
  %73 = load i32, i32* %N.addr, align 4
  %74 = load i32, i32* %Np, align 4
  %add93 = add nsw i32 %73, %74
  %sub94 = sub nsw i32 %add93, 2
  %75 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %75 to i64
  %76 = load i32*, i32** %coord, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %76, i64 %idxprom95
  %77 = load i32, i32* %arrayidx96, align 4
  %78 = load i32, i32* %N.addr, align 4
  %sub97 = sub nsw i32 %77, %78
  %idxprom98 = sext i32 %sub97 to i64
  %79 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx99 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %79, i64 %idxprom98
  %parent = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx99, i32 0, i32 0
  store i32 %sub94, i32* %parent, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.92, %for.end.77
  %80 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %80 to i64
  %81 = load i32*, i32** %coord, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %81, i64 %idxprom101
  %82 = load i32, i32* %arrayidx102, align 4
  %83 = load i32, i32* %N.addr, align 4
  %cmp103 = icmp sge i32 %82, %83
  br i1 %cmp103, label %if.then.105, label %if.end.114

if.then.105:                                      ; preds = %if.end.100
  %84 = load i32, i32* %N.addr, align 4
  %85 = load i32, i32* %Np, align 4
  %add106 = add nsw i32 %84, %85
  %sub107 = sub nsw i32 %add106, 2
  %86 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %86 to i64
  %87 = load i32*, i32** %coord, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %87, i64 %idxprom108
  %88 = load i32, i32* %arrayidx109, align 4
  %89 = load i32, i32* %N.addr, align 4
  %sub110 = sub nsw i32 %88, %89
  %idxprom111 = sext i32 %sub110 to i64
  %90 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx112 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %90, i64 %idxprom111
  %parent113 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx112, i32 0, i32 0
  store i32 %sub107, i32* %parent113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.105, %if.end.100
  %91 = load float, float* %min, align 4
  %92 = load i32, i32* %Np, align 4
  %sub115 = sub nsw i32 %92, 2
  %idxprom116 = sext i32 %sub115 to i64
  %93 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx117 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %93, i64 %idxprom116
  %diff118 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx117, i32 0, i32 3
  store float %91, float* %diff118, align 4
  %94 = load i32, i32* %Np, align 4
  %sub119 = sub nsw i32 %94, 2
  %idxprom120 = sext i32 %sub119 to i64
  %95 = load float*, float** %diff, align 8
  %arrayidx121 = getelementptr inbounds float, float* %95, i64 %idxprom120
  store float %91, float* %arrayidx121, align 4
  %96 = load float, float* %min, align 4
  %97 = load i32, i32* %Np, align 4
  %sub122 = sub nsw i32 %97, 2
  %idxprom123 = sext i32 %sub122 to i64
  %98 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx124 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %98, i64 %idxprom123
  %rblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx124, i32 0, i32 5
  store float %96, float* %rblen, align 4
  %99 = load i32, i32* %Np, align 4
  %sub125 = sub nsw i32 %99, 2
  %idxprom126 = sext i32 %sub125 to i64
  %100 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx127 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %100, i64 %idxprom126
  %lblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx127, i32 0, i32 4
  store float %96, float* %lblen, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %101 to i64
  %102 = load i32*, i32** %coord, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %102, i64 %idxprom128
  %103 = load i32, i32* %arrayidx129, align 4
  %104 = load i32, i32* %N.addr, align 4
  %cmp130 = icmp sge i32 %103, %104
  br i1 %cmp130, label %if.then.132, label %if.end.143

if.then.132:                                      ; preds = %if.end.114
  %105 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %105 to i64
  %106 = load i32*, i32** %coord, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %106, i64 %idxprom133
  %107 = load i32, i32* %arrayidx134, align 4
  %108 = load i32, i32* %N.addr, align 4
  %sub135 = sub nsw i32 %107, %108
  %idxprom136 = sext i32 %sub135 to i64
  %109 = load float*, float** %diff, align 8
  %arrayidx137 = getelementptr inbounds float, float* %109, i64 %idxprom136
  %110 = load float, float* %arrayidx137, align 4
  %111 = load i32, i32* %Np, align 4
  %sub138 = sub nsw i32 %111, 2
  %idxprom139 = sext i32 %sub138 to i64
  %112 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx140 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %112, i64 %idxprom139
  %lblen141 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx140, i32 0, i32 4
  %113 = load float, float* %lblen141, align 4
  %sub142 = fsub float %113, %110
  store float %sub142, float* %lblen141, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.132, %if.end.114
  %114 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %114 to i64
  %115 = load i32*, i32** %coord, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %115, i64 %idxprom144
  %116 = load i32, i32* %arrayidx145, align 4
  %117 = load i32, i32* %N.addr, align 4
  %cmp146 = icmp sge i32 %116, %117
  br i1 %cmp146, label %if.then.148, label %if.end.159

if.then.148:                                      ; preds = %if.end.143
  %118 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %118 to i64
  %119 = load i32*, i32** %coord, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %119, i64 %idxprom149
  %120 = load i32, i32* %arrayidx150, align 4
  %121 = load i32, i32* %N.addr, align 4
  %sub151 = sub nsw i32 %120, %121
  %idxprom152 = sext i32 %sub151 to i64
  %122 = load float*, float** %diff, align 8
  %arrayidx153 = getelementptr inbounds float, float* %122, i64 %idxprom152
  %123 = load float, float* %arrayidx153, align 4
  %124 = load i32, i32* %Np, align 4
  %sub154 = sub nsw i32 %124, 2
  %idxprom155 = sext i32 %sub154 to i64
  %125 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx156 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %125, i64 %idxprom155
  %rblen157 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx156, i32 0, i32 5
  %126 = load float, float* %rblen157, align 4
  %sub158 = fsub float %126, %123
  store float %sub158, float* %rblen157, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.148, %if.end.143
  %127 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %127 to i64
  %128 = load i32*, i32** %coord, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %128, i64 %idxprom160
  %129 = load i32, i32* %arrayidx161, align 4
  %130 = load i32, i32* %N.addr, align 4
  %cmp162 = icmp slt i32 %129, %130
  br i1 %cmp162, label %if.then.164, label %if.else

if.then.164:                                      ; preds = %if.end.159
  %131 = load i32, i32* %Np, align 4
  %sub165 = sub nsw i32 %131, 2
  %idxprom166 = sext i32 %sub165 to i64
  %132 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx167 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %132, i64 %idxprom166
  %incnum = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx167, i32 0, i32 7
  %133 = load i32, i32* %incnum, align 4
  %inc168 = add nsw i32 %133, 1
  store i32 %inc168, i32* %incnum, align 4
  %134 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %134 to i64
  %135 = load i32*, i32** %coord, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %135, i64 %idxprom169
  %136 = load i32, i32* %arrayidx170, align 4
  %idxprom171 = sext i32 %136 to i64
  %137 = load i32, i32* %Np, align 4
  %sub172 = sub nsw i32 %137, 2
  %idxprom173 = sext i32 %sub172 to i64
  %138 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx174 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %138, i64 %idxprom173
  %is_in = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx174, i32 0, i32 6
  %139 = load i8*, i8** %is_in, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %139, i64 %idxprom171
  store i8 1, i8* %arrayidx175, align 1
  br label %if.end.211

if.else:                                          ; preds = %if.end.159
  %140 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %140 to i64
  %141 = load i32*, i32** %coord, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %141, i64 %idxprom176
  %142 = load i32, i32* %arrayidx177, align 4
  %143 = load i32, i32* %N.addr, align 4
  %sub178 = sub nsw i32 %142, %143
  %idxprom179 = sext i32 %sub178 to i64
  %144 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx180 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %144, i64 %idxprom179
  %incnum181 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx180, i32 0, i32 7
  %145 = load i32, i32* %incnum181, align 4
  %146 = load i32, i32* %Np, align 4
  %sub182 = sub nsw i32 %146, 2
  %idxprom183 = sext i32 %sub182 to i64
  %147 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx184 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %147, i64 %idxprom183
  %incnum185 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx184, i32 0, i32 7
  %148 = load i32, i32* %incnum185, align 4
  %add186 = add nsw i32 %148, %145
  store i32 %add186, i32* %incnum185, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.208, %if.else
  %149 = load i32, i32* %idx, align 4
  %150 = load i32, i32* %N.addr, align 4
  %cmp188 = icmp slt i32 %149, %150
  br i1 %cmp188, label %for.body.190, label %for.end.210

for.body.190:                                     ; preds = %for.cond.187
  %151 = load i32, i32* %idx, align 4
  %idxprom191 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %152 to i64
  %153 = load i32*, i32** %coord, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %153, i64 %idxprom192
  %154 = load i32, i32* %arrayidx193, align 4
  %155 = load i32, i32* %N.addr, align 4
  %sub194 = sub nsw i32 %154, %155
  %idxprom195 = sext i32 %sub194 to i64
  %156 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx196 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %156, i64 %idxprom195
  %is_in197 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx196, i32 0, i32 6
  %157 = load i8*, i8** %is_in197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %157, i64 %idxprom191
  %158 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %158 to i32
  %159 = load i32, i32* %idx, align 4
  %idxprom200 = sext i32 %159 to i64
  %160 = load i32, i32* %Np, align 4
  %sub201 = sub nsw i32 %160, 2
  %idxprom202 = sext i32 %sub201 to i64
  %161 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx203 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %161, i64 %idxprom202
  %is_in204 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx203, i32 0, i32 6
  %162 = load i8*, i8** %is_in204, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %162, i64 %idxprom200
  %163 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %163 to i32
  %or = or i32 %conv206, %conv199
  %conv207 = trunc i32 %or to i8
  store i8 %conv207, i8* %arrayidx205, align 1
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.190
  %164 = load i32, i32* %idx, align 4
  %inc209 = add nsw i32 %164, 1
  store i32 %inc209, i32* %idx, align 4
  br label %for.cond.187

for.end.210:                                      ; preds = %for.cond.187
  br label %if.end.211

if.end.211:                                       ; preds = %for.end.210, %if.then.164
  %165 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %165 to i64
  %166 = load i32*, i32** %coord, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %166, i64 %idxprom212
  %167 = load i32, i32* %arrayidx213, align 4
  %168 = load i32, i32* %N.addr, align 4
  %cmp214 = icmp slt i32 %167, %168
  br i1 %cmp214, label %if.then.216, label %if.else.230

if.then.216:                                      ; preds = %if.end.211
  %169 = load i32, i32* %Np, align 4
  %sub217 = sub nsw i32 %169, 2
  %idxprom218 = sext i32 %sub217 to i64
  %170 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx219 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %170, i64 %idxprom218
  %incnum220 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx219, i32 0, i32 7
  %171 = load i32, i32* %incnum220, align 4
  %inc221 = add nsw i32 %171, 1
  store i32 %inc221, i32* %incnum220, align 4
  %172 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %172 to i64
  %173 = load i32*, i32** %coord, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %173, i64 %idxprom222
  %174 = load i32, i32* %arrayidx223, align 4
  %idxprom224 = sext i32 %174 to i64
  %175 = load i32, i32* %Np, align 4
  %sub225 = sub nsw i32 %175, 2
  %idxprom226 = sext i32 %sub225 to i64
  %176 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx227 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %176, i64 %idxprom226
  %is_in228 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx227, i32 0, i32 6
  %177 = load i8*, i8** %is_in228, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %177, i64 %idxprom224
  store i8 1, i8* %arrayidx229, align 1
  br label %if.end.267

if.else.230:                                      ; preds = %if.end.211
  %178 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %178 to i64
  %179 = load i32*, i32** %coord, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %179, i64 %idxprom231
  %180 = load i32, i32* %arrayidx232, align 4
  %181 = load i32, i32* %N.addr, align 4
  %sub233 = sub nsw i32 %180, %181
  %idxprom234 = sext i32 %sub233 to i64
  %182 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx235 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %182, i64 %idxprom234
  %incnum236 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx235, i32 0, i32 7
  %183 = load i32, i32* %incnum236, align 4
  %184 = load i32, i32* %Np, align 4
  %sub237 = sub nsw i32 %184, 2
  %idxprom238 = sext i32 %sub237 to i64
  %185 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx239 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %185, i64 %idxprom238
  %incnum240 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx239, i32 0, i32 7
  %186 = load i32, i32* %incnum240, align 4
  %add241 = add nsw i32 %186, %183
  store i32 %add241, i32* %incnum240, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.264, %if.else.230
  %187 = load i32, i32* %idx, align 4
  %188 = load i32, i32* %N.addr, align 4
  %cmp243 = icmp slt i32 %187, %188
  br i1 %cmp243, label %for.body.245, label %for.end.266

for.body.245:                                     ; preds = %for.cond.242
  %189 = load i32, i32* %idx, align 4
  %idxprom246 = sext i32 %189 to i64
  %190 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %190 to i64
  %191 = load i32*, i32** %coord, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %191, i64 %idxprom247
  %192 = load i32, i32* %arrayidx248, align 4
  %193 = load i32, i32* %N.addr, align 4
  %sub249 = sub nsw i32 %192, %193
  %idxprom250 = sext i32 %sub249 to i64
  %194 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx251 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %194, i64 %idxprom250
  %is_in252 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx251, i32 0, i32 6
  %195 = load i8*, i8** %is_in252, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %195, i64 %idxprom246
  %196 = load i8, i8* %arrayidx253, align 1
  %conv254 = sext i8 %196 to i32
  %197 = load i32, i32* %idx, align 4
  %idxprom255 = sext i32 %197 to i64
  %198 = load i32, i32* %Np, align 4
  %sub256 = sub nsw i32 %198, 2
  %idxprom257 = sext i32 %sub256 to i64
  %199 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx258 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %199, i64 %idxprom257
  %is_in259 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx258, i32 0, i32 6
  %200 = load i8*, i8** %is_in259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %200, i64 %idxprom255
  %201 = load i8, i8* %arrayidx260, align 1
  %conv261 = sext i8 %201 to i32
  %or262 = or i32 %conv261, %conv254
  %conv263 = trunc i32 %or262 to i8
  store i8 %conv263, i8* %arrayidx260, align 1
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.body.245
  %202 = load i32, i32* %idx, align 4
  %inc265 = add nsw i32 %202, 1
  store i32 %inc265, i32* %idx, align 4
  br label %for.cond.242

for.end.266:                                      ; preds = %for.cond.242
  br label %if.end.267

if.end.267:                                       ; preds = %for.end.266, %if.then.216
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* %Np, align 4
  %sub268 = sub nsw i32 %204, 1
  %cmp269 = icmp eq i32 %203, %sub268
  br i1 %cmp269, label %if.then.274, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.267
  %205 = load i32, i32* %j, align 4
  %206 = load i32, i32* %Np, align 4
  %sub271 = sub nsw i32 %206, 2
  %cmp272 = icmp eq i32 %205, %sub271
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %lor.lhs.false, %if.end.267
  %207 = load i32, i32* %j, align 4
  store i32 %207, i32* %swapfoo, align 4
  %208 = load i32, i32* %i, align 4
  store i32 %208, i32* %j, align 4
  %209 = load i32, i32* %swapfoo, align 4
  store i32 %209, i32* %i, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %lor.lhs.false
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %Np, align 4
  %sub276 = sub nsw i32 %211, 2
  %cmp277 = icmp ne i32 %210, %sub276
  br i1 %cmp277, label %if.then.279, label %if.end.325

if.then.279:                                      ; preds = %if.end.275
  %212 = load i32, i32* %Np, align 4
  %sub280 = sub nsw i32 %212, 2
  %idxprom281 = sext i32 %sub280 to i64
  %213 = load float**, float*** %mx, align 8
  %arrayidx282 = getelementptr inbounds float*, float** %213, i64 %idxprom281
  %214 = load float*, float** %arrayidx282, align 8
  store float* %214, float** %trow, align 8
  %215 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %215 to i64
  %216 = load float**, float*** %mx, align 8
  %arrayidx284 = getelementptr inbounds float*, float** %216, i64 %idxprom283
  %217 = load float*, float** %arrayidx284, align 8
  %218 = load i32, i32* %Np, align 4
  %sub285 = sub nsw i32 %218, 2
  %idxprom286 = sext i32 %sub285 to i64
  %219 = load float**, float*** %mx, align 8
  %arrayidx287 = getelementptr inbounds float*, float** %219, i64 %idxprom286
  store float* %217, float** %arrayidx287, align 8
  %220 = load float*, float** %trow, align 8
  %221 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %221 to i64
  %222 = load float**, float*** %mx, align 8
  %arrayidx289 = getelementptr inbounds float*, float** %222, i64 %idxprom288
  store float* %220, float** %arrayidx289, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.312, %if.then.279
  %223 = load i32, i32* %row, align 4
  %224 = load i32, i32* %Np, align 4
  %cmp291 = icmp slt i32 %223, %224
  br i1 %cmp291, label %for.body.293, label %for.end.314

for.body.293:                                     ; preds = %for.cond.290
  %225 = load i32, i32* %Np, align 4
  %sub294 = sub nsw i32 %225, 2
  %idxprom295 = sext i32 %sub294 to i64
  %226 = load i32, i32* %row, align 4
  %idxprom296 = sext i32 %226 to i64
  %227 = load float**, float*** %mx, align 8
  %arrayidx297 = getelementptr inbounds float*, float** %227, i64 %idxprom296
  %228 = load float*, float** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds float, float* %228, i64 %idxprom295
  %229 = load float, float* %arrayidx298, align 4
  store float %229, float* %tcol, align 4
  %230 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %230 to i64
  %231 = load i32, i32* %row, align 4
  %idxprom300 = sext i32 %231 to i64
  %232 = load float**, float*** %mx, align 8
  %arrayidx301 = getelementptr inbounds float*, float** %232, i64 %idxprom300
  %233 = load float*, float** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds float, float* %233, i64 %idxprom299
  %234 = load float, float* %arrayidx302, align 4
  %235 = load i32, i32* %Np, align 4
  %sub303 = sub nsw i32 %235, 2
  %idxprom304 = sext i32 %sub303 to i64
  %236 = load i32, i32* %row, align 4
  %idxprom305 = sext i32 %236 to i64
  %237 = load float**, float*** %mx, align 8
  %arrayidx306 = getelementptr inbounds float*, float** %237, i64 %idxprom305
  %238 = load float*, float** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds float, float* %238, i64 %idxprom304
  store float %234, float* %arrayidx307, align 4
  %239 = load float, float* %tcol, align 4
  %240 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %240 to i64
  %241 = load i32, i32* %row, align 4
  %idxprom309 = sext i32 %241 to i64
  %242 = load float**, float*** %mx, align 8
  %arrayidx310 = getelementptr inbounds float*, float** %242, i64 %idxprom309
  %243 = load float*, float** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds float, float* %243, i64 %idxprom308
  store float %239, float* %arrayidx311, align 4
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.body.293
  %244 = load i32, i32* %row, align 4
  %inc313 = add nsw i32 %244, 1
  store i32 %inc313, i32* %row, align 4
  br label %for.cond.290

for.end.314:                                      ; preds = %for.cond.290
  %245 = load i32, i32* %Np, align 4
  %sub315 = sub nsw i32 %245, 2
  %idxprom316 = sext i32 %sub315 to i64
  %246 = load i32*, i32** %coord, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %246, i64 %idxprom316
  %247 = load i32, i32* %arrayidx317, align 4
  store i32 %247, i32* %swapfoo, align 4
  %248 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %248 to i64
  %249 = load i32*, i32** %coord, align 8
  %arrayidx319 = getelementptr inbounds i32, i32* %249, i64 %idxprom318
  %250 = load i32, i32* %arrayidx319, align 4
  %251 = load i32, i32* %Np, align 4
  %sub320 = sub nsw i32 %251, 2
  %idxprom321 = sext i32 %sub320 to i64
  %252 = load i32*, i32** %coord, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %252, i64 %idxprom321
  store i32 %250, i32* %arrayidx322, align 4
  %253 = load i32, i32* %swapfoo, align 4
  %254 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %254 to i64
  %255 = load i32*, i32** %coord, align 8
  %arrayidx324 = getelementptr inbounds i32, i32* %255, i64 %idxprom323
  store i32 %253, i32* %arrayidx324, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %for.end.314, %if.end.275
  %256 = load i32, i32* %j, align 4
  %257 = load i32, i32* %Np, align 4
  %sub326 = sub nsw i32 %257, 1
  %cmp327 = icmp ne i32 %256, %sub326
  br i1 %cmp327, label %if.then.329, label %if.end.375

if.then.329:                                      ; preds = %if.end.325
  %258 = load i32, i32* %Np, align 4
  %sub330 = sub nsw i32 %258, 1
  %idxprom331 = sext i32 %sub330 to i64
  %259 = load float**, float*** %mx, align 8
  %arrayidx332 = getelementptr inbounds float*, float** %259, i64 %idxprom331
  %260 = load float*, float** %arrayidx332, align 8
  store float* %260, float** %trow, align 8
  %261 = load i32, i32* %j, align 4
  %idxprom333 = sext i32 %261 to i64
  %262 = load float**, float*** %mx, align 8
  %arrayidx334 = getelementptr inbounds float*, float** %262, i64 %idxprom333
  %263 = load float*, float** %arrayidx334, align 8
  %264 = load i32, i32* %Np, align 4
  %sub335 = sub nsw i32 %264, 1
  %idxprom336 = sext i32 %sub335 to i64
  %265 = load float**, float*** %mx, align 8
  %arrayidx337 = getelementptr inbounds float*, float** %265, i64 %idxprom336
  store float* %263, float** %arrayidx337, align 8
  %266 = load float*, float** %trow, align 8
  %267 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %267 to i64
  %268 = load float**, float*** %mx, align 8
  %arrayidx339 = getelementptr inbounds float*, float** %268, i64 %idxprom338
  store float* %266, float** %arrayidx339, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.362, %if.then.329
  %269 = load i32, i32* %row, align 4
  %270 = load i32, i32* %Np, align 4
  %cmp341 = icmp slt i32 %269, %270
  br i1 %cmp341, label %for.body.343, label %for.end.364

for.body.343:                                     ; preds = %for.cond.340
  %271 = load i32, i32* %Np, align 4
  %sub344 = sub nsw i32 %271, 1
  %idxprom345 = sext i32 %sub344 to i64
  %272 = load i32, i32* %row, align 4
  %idxprom346 = sext i32 %272 to i64
  %273 = load float**, float*** %mx, align 8
  %arrayidx347 = getelementptr inbounds float*, float** %273, i64 %idxprom346
  %274 = load float*, float** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds float, float* %274, i64 %idxprom345
  %275 = load float, float* %arrayidx348, align 4
  store float %275, float* %tcol, align 4
  %276 = load i32, i32* %j, align 4
  %idxprom349 = sext i32 %276 to i64
  %277 = load i32, i32* %row, align 4
  %idxprom350 = sext i32 %277 to i64
  %278 = load float**, float*** %mx, align 8
  %arrayidx351 = getelementptr inbounds float*, float** %278, i64 %idxprom350
  %279 = load float*, float** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds float, float* %279, i64 %idxprom349
  %280 = load float, float* %arrayidx352, align 4
  %281 = load i32, i32* %Np, align 4
  %sub353 = sub nsw i32 %281, 1
  %idxprom354 = sext i32 %sub353 to i64
  %282 = load i32, i32* %row, align 4
  %idxprom355 = sext i32 %282 to i64
  %283 = load float**, float*** %mx, align 8
  %arrayidx356 = getelementptr inbounds float*, float** %283, i64 %idxprom355
  %284 = load float*, float** %arrayidx356, align 8
  %arrayidx357 = getelementptr inbounds float, float* %284, i64 %idxprom354
  store float %280, float* %arrayidx357, align 4
  %285 = load float, float* %tcol, align 4
  %286 = load i32, i32* %j, align 4
  %idxprom358 = sext i32 %286 to i64
  %287 = load i32, i32* %row, align 4
  %idxprom359 = sext i32 %287 to i64
  %288 = load float**, float*** %mx, align 8
  %arrayidx360 = getelementptr inbounds float*, float** %288, i64 %idxprom359
  %289 = load float*, float** %arrayidx360, align 8
  %arrayidx361 = getelementptr inbounds float, float* %289, i64 %idxprom358
  store float %285, float* %arrayidx361, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.343
  %290 = load i32, i32* %row, align 4
  %inc363 = add nsw i32 %290, 1
  store i32 %inc363, i32* %row, align 4
  br label %for.cond.340

for.end.364:                                      ; preds = %for.cond.340
  %291 = load i32, i32* %Np, align 4
  %sub365 = sub nsw i32 %291, 1
  %idxprom366 = sext i32 %sub365 to i64
  %292 = load i32*, i32** %coord, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %292, i64 %idxprom366
  %293 = load i32, i32* %arrayidx367, align 4
  store i32 %293, i32* %swapfoo, align 4
  %294 = load i32, i32* %j, align 4
  %idxprom368 = sext i32 %294 to i64
  %295 = load i32*, i32** %coord, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %295, i64 %idxprom368
  %296 = load i32, i32* %arrayidx369, align 4
  %297 = load i32, i32* %Np, align 4
  %sub370 = sub nsw i32 %297, 1
  %idxprom371 = sext i32 %sub370 to i64
  %298 = load i32*, i32** %coord, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %298, i64 %idxprom371
  store i32 %296, i32* %arrayidx372, align 4
  %299 = load i32, i32* %swapfoo, align 4
  %300 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %300 to i64
  %301 = load i32*, i32** %coord, align 8
  %arrayidx374 = getelementptr inbounds i32, i32* %301, i64 %idxprom373
  store i32 %299, i32* %arrayidx374, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %for.end.364, %if.end.325
  %302 = load i32, i32* %Np, align 4
  %sub376 = sub nsw i32 %302, 2
  store i32 %sub376, i32* %i, align 4
  %303 = load i32, i32* %Np, align 4
  %sub377 = sub nsw i32 %303, 1
  store i32 %sub377, i32* %j, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.463, %if.end.375
  %304 = load i32, i32* %col, align 4
  %305 = load i32, i32* %Np, align 4
  %cmp379 = icmp slt i32 %304, %305
  br i1 %cmp379, label %for.body.381, label %for.end.465

for.body.381:                                     ; preds = %for.cond.378
  %306 = load i32, i32* %mode.addr, align 4
  switch i32 %306, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.397
    i32 1, label %sw.bb.420
  ]

sw.bb:                                            ; preds = %for.body.381
  %307 = load i32, i32* %col, align 4
  %idxprom382 = sext i32 %307 to i64
  %308 = load i32, i32* %i, align 4
  %idxprom383 = sext i32 %308 to i64
  %309 = load float**, float*** %mx, align 8
  %arrayidx384 = getelementptr inbounds float*, float** %309, i64 %idxprom383
  %310 = load float*, float** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds float, float* %310, i64 %idxprom382
  %311 = load float, float* %arrayidx385, align 4
  %312 = load i32, i32* %col, align 4
  %idxprom386 = sext i32 %312 to i64
  %313 = load i32, i32* %j, align 4
  %idxprom387 = sext i32 %313 to i64
  %314 = load float**, float*** %mx, align 8
  %arrayidx388 = getelementptr inbounds float*, float** %314, i64 %idxprom387
  %315 = load float*, float** %arrayidx388, align 8
  %arrayidx389 = getelementptr inbounds float, float* %315, i64 %idxprom386
  %316 = load float, float* %arrayidx389, align 4
  %add390 = fadd float %311, %316
  %conv391 = fpext float %add390 to double
  %div = fdiv double %conv391, 2.000000e+00
  %conv392 = fptrunc double %div to float
  %317 = load i32, i32* %col, align 4
  %idxprom393 = sext i32 %317 to i64
  %318 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %318 to i64
  %319 = load float**, float*** %mx, align 8
  %arrayidx395 = getelementptr inbounds float*, float** %319, i64 %idxprom394
  %320 = load float*, float** %arrayidx395, align 8
  %arrayidx396 = getelementptr inbounds float, float* %320, i64 %idxprom393
  store float %conv392, float* %arrayidx396, align 4
  br label %sw.epilog

sw.bb.397:                                        ; preds = %for.body.381
  %321 = load i32, i32* %col, align 4
  %idxprom398 = sext i32 %321 to i64
  %322 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %322 to i64
  %323 = load float**, float*** %mx, align 8
  %arrayidx400 = getelementptr inbounds float*, float** %323, i64 %idxprom399
  %324 = load float*, float** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds float, float* %324, i64 %idxprom398
  %325 = load float, float* %arrayidx401, align 4
  %326 = load i32, i32* %col, align 4
  %idxprom402 = sext i32 %326 to i64
  %327 = load i32, i32* %j, align 4
  %idxprom403 = sext i32 %327 to i64
  %328 = load float**, float*** %mx, align 8
  %arrayidx404 = getelementptr inbounds float*, float** %328, i64 %idxprom403
  %329 = load float*, float** %arrayidx404, align 8
  %arrayidx405 = getelementptr inbounds float, float* %329, i64 %idxprom402
  %330 = load float, float* %arrayidx405, align 4
  %cmp406 = fcmp olt float %325, %330
  br i1 %cmp406, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.397
  %331 = load i32, i32* %col, align 4
  %idxprom408 = sext i32 %331 to i64
  %332 = load i32, i32* %i, align 4
  %idxprom409 = sext i32 %332 to i64
  %333 = load float**, float*** %mx, align 8
  %arrayidx410 = getelementptr inbounds float*, float** %333, i64 %idxprom409
  %334 = load float*, float** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds float, float* %334, i64 %idxprom408
  %335 = load float, float* %arrayidx411, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.397
  %336 = load i32, i32* %col, align 4
  %idxprom412 = sext i32 %336 to i64
  %337 = load i32, i32* %j, align 4
  %idxprom413 = sext i32 %337 to i64
  %338 = load float**, float*** %mx, align 8
  %arrayidx414 = getelementptr inbounds float*, float** %338, i64 %idxprom413
  %339 = load float*, float** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds float, float* %339, i64 %idxprom412
  %340 = load float, float* %arrayidx415, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %335, %cond.true ], [ %340, %cond.false ]
  %341 = load i32, i32* %col, align 4
  %idxprom416 = sext i32 %341 to i64
  %342 = load i32, i32* %i, align 4
  %idxprom417 = sext i32 %342 to i64
  %343 = load float**, float*** %mx, align 8
  %arrayidx418 = getelementptr inbounds float*, float** %343, i64 %idxprom417
  %344 = load float*, float** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds float, float* %344, i64 %idxprom416
  store float %cond, float* %arrayidx419, align 4
  br label %sw.epilog

sw.bb.420:                                        ; preds = %for.body.381
  %345 = load i32, i32* %col, align 4
  %idxprom421 = sext i32 %345 to i64
  %346 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %346 to i64
  %347 = load float**, float*** %mx, align 8
  %arrayidx423 = getelementptr inbounds float*, float** %347, i64 %idxprom422
  %348 = load float*, float** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds float, float* %348, i64 %idxprom421
  %349 = load float, float* %arrayidx424, align 4
  %350 = load i32, i32* %col, align 4
  %idxprom425 = sext i32 %350 to i64
  %351 = load i32, i32* %j, align 4
  %idxprom426 = sext i32 %351 to i64
  %352 = load float**, float*** %mx, align 8
  %arrayidx427 = getelementptr inbounds float*, float** %352, i64 %idxprom426
  %353 = load float*, float** %arrayidx427, align 8
  %arrayidx428 = getelementptr inbounds float, float* %353, i64 %idxprom425
  %354 = load float, float* %arrayidx428, align 4
  %cmp429 = fcmp ogt float %349, %354
  br i1 %cmp429, label %cond.true.431, label %cond.false.436

cond.true.431:                                    ; preds = %sw.bb.420
  %355 = load i32, i32* %col, align 4
  %idxprom432 = sext i32 %355 to i64
  %356 = load i32, i32* %i, align 4
  %idxprom433 = sext i32 %356 to i64
  %357 = load float**, float*** %mx, align 8
  %arrayidx434 = getelementptr inbounds float*, float** %357, i64 %idxprom433
  %358 = load float*, float** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds float, float* %358, i64 %idxprom432
  %359 = load float, float* %arrayidx435, align 4
  br label %cond.end.441

cond.false.436:                                   ; preds = %sw.bb.420
  %360 = load i32, i32* %col, align 4
  %idxprom437 = sext i32 %360 to i64
  %361 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %361 to i64
  %362 = load float**, float*** %mx, align 8
  %arrayidx439 = getelementptr inbounds float*, float** %362, i64 %idxprom438
  %363 = load float*, float** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds float, float* %363, i64 %idxprom437
  %364 = load float, float* %arrayidx440, align 4
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.436, %cond.true.431
  %cond442 = phi float [ %359, %cond.true.431 ], [ %364, %cond.false.436 ]
  %365 = load i32, i32* %col, align 4
  %idxprom443 = sext i32 %365 to i64
  %366 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %366 to i64
  %367 = load float**, float*** %mx, align 8
  %arrayidx445 = getelementptr inbounds float*, float** %367, i64 %idxprom444
  %368 = load float*, float** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds float, float* %368, i64 %idxprom443
  store float %cond442, float* %arrayidx446, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.381
  %369 = load i32, i32* %col, align 4
  %idxprom447 = sext i32 %369 to i64
  %370 = load i32, i32* %i, align 4
  %idxprom448 = sext i32 %370 to i64
  %371 = load float**, float*** %mx, align 8
  %arrayidx449 = getelementptr inbounds float*, float** %371, i64 %idxprom448
  %372 = load float*, float** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds float, float* %372, i64 %idxprom447
  %373 = load float, float* %arrayidx450, align 4
  %374 = load i32, i32* %col, align 4
  %idxprom451 = sext i32 %374 to i64
  %375 = load i32, i32* %j, align 4
  %idxprom452 = sext i32 %375 to i64
  %376 = load float**, float*** %mx, align 8
  %arrayidx453 = getelementptr inbounds float*, float** %376, i64 %idxprom452
  %377 = load float*, float** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds float, float* %377, i64 %idxprom451
  %378 = load float, float* %arrayidx454, align 4
  %add455 = fadd float %373, %378
  %conv456 = fpext float %add455 to double
  %div457 = fdiv double %conv456, 2.000000e+00
  %conv458 = fptrunc double %div457 to float
  %379 = load i32, i32* %col, align 4
  %idxprom459 = sext i32 %379 to i64
  %380 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %380 to i64
  %381 = load float**, float*** %mx, align 8
  %arrayidx461 = getelementptr inbounds float*, float** %381, i64 %idxprom460
  %382 = load float*, float** %arrayidx461, align 8
  %arrayidx462 = getelementptr inbounds float, float* %382, i64 %idxprom459
  store float %conv458, float* %arrayidx462, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.441, %cond.end, %sw.bb
  br label %for.inc.463

for.inc.463:                                      ; preds = %sw.epilog
  %383 = load i32, i32* %col, align 4
  %inc464 = add nsw i32 %383, 1
  store i32 %inc464, i32* %col, align 4
  br label %for.cond.378

for.end.465:                                      ; preds = %for.cond.378
  store i32 0, i32* %col, align 4
  br label %for.cond.466

for.cond.466:                                     ; preds = %for.inc.478, %for.end.465
  %384 = load i32, i32* %col, align 4
  %385 = load i32, i32* %Np, align 4
  %cmp467 = icmp slt i32 %384, %385
  br i1 %cmp467, label %for.body.469, label %for.end.480

for.body.469:                                     ; preds = %for.cond.466
  %386 = load i32, i32* %col, align 4
  %idxprom470 = sext i32 %386 to i64
  %387 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %387 to i64
  %388 = load float**, float*** %mx, align 8
  %arrayidx472 = getelementptr inbounds float*, float** %388, i64 %idxprom471
  %389 = load float*, float** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds float, float* %389, i64 %idxprom470
  %390 = load float, float* %arrayidx473, align 4
  %391 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %391 to i64
  %392 = load i32, i32* %col, align 4
  %idxprom475 = sext i32 %392 to i64
  %393 = load float**, float*** %mx, align 8
  %arrayidx476 = getelementptr inbounds float*, float** %393, i64 %idxprom475
  %394 = load float*, float** %arrayidx476, align 8
  %arrayidx477 = getelementptr inbounds float, float* %394, i64 %idxprom474
  store float %390, float* %arrayidx477, align 4
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.body.469
  %395 = load i32, i32* %col, align 4
  %inc479 = add nsw i32 %395, 1
  store i32 %inc479, i32* %col, align 4
  br label %for.cond.466

for.end.480:                                      ; preds = %for.cond.466
  %396 = load i32, i32* %Np, align 4
  %397 = load i32, i32* %N.addr, align 4
  %add481 = add nsw i32 %396, %397
  %sub482 = sub nsw i32 %add481, 2
  %398 = load i32, i32* %Np, align 4
  %sub483 = sub nsw i32 %398, 2
  %idxprom484 = sext i32 %sub483 to i64
  %399 = load i32*, i32** %coord, align 8
  %arrayidx485 = getelementptr inbounds i32, i32* %399, i64 %idxprom484
  store i32 %sub482, i32* %arrayidx485, align 4
  br label %for.inc.486

for.inc.486:                                      ; preds = %for.end.480
  %400 = load i32, i32* %Np, align 4
  %dec = add nsw i32 %400, -1
  store i32 %dec, i32* %Np, align 4
  br label %for.cond.48

for.end.487:                                      ; preds = %for.cond.48
  %401 = load float**, float*** %mx, align 8
  %402 = bitcast float** %401 to i8**
  %403 = load i32, i32* %N.addr, align 4
  call void @Free2DArray(i8** %402, i32 %403)
  %404 = load i32*, i32** %coord, align 8
  %405 = bitcast i32* %404 to i8*
  call void @free(i8* %405) #3
  %406 = load float*, float** %diff, align 8
  %407 = bitcast float* %406 to i8*
  call void @free(i8* %407) #3
  %408 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %409 = load %struct.phylo_s**, %struct.phylo_s*** %ret_tree.addr, align 8
  store %struct.phylo_s* %408, %struct.phylo_s** %409, align 8
  ret i32 1
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct.phylo_s* @AllocPhylo(i32 %N) #0 {
entry:
  %retval = alloca %struct.phylo_s*, align 8
  %N.addr = alloca i32, align 4
  %tree = alloca %struct.phylo_s*, align 8
  %i = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 40
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct.phylo_s*
  store %struct.phylo_s* %1, %struct.phylo_s** %tree, align 8
  %cmp = icmp eq %struct.phylo_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.phylo_s* null, %struct.phylo_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %sub2 = sub nsw i32 %3, 1
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %5, i64 %idxprom
  %diff = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx, i32 0, i32 3
  store float 0.000000e+00, float* %diff, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx6 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %7, i64 %idxprom5
  %rblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx6, i32 0, i32 5
  store float 0.000000e+00, float* %rblen, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx8 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %9, i64 %idxprom7
  %lblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx8, i32 0, i32 4
  store float 0.000000e+00, float* %lblen, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx10 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %11, i64 %idxprom9
  %parent = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx10, i32 0, i32 0
  store i32 -1, i32* %parent, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx12 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %13, i64 %idxprom11
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx12, i32 0, i32 2
  store i32 -1, i32* %right, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx14 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %15, i64 %idxprom13
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx14, i32 0, i32 1
  store i32 -1, i32* %left, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx16 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %17, i64 %idxprom15
  %incnum = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx16, i32 0, i32 7
  store i32 0, i32* %incnum, align 4
  %18 = load i32, i32* %N.addr, align 4
  %conv17 = sext i32 %18 to i64
  %call18 = call noalias i8* @calloc(i64 %conv17, i64 1) #3
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %arrayidx20 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %20, i64 %idxprom19
  %is_in = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx20, i32 0, i32 6
  store i8* %call18, i8** %is_in, align 8
  %cmp21 = icmp eq i8* %call18, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  store %struct.phylo_s* null, %struct.phylo_s** %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  store %struct.phylo_s* %22, %struct.phylo_s** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.then
  %23 = load %struct.phylo_s*, %struct.phylo_s** %retval
  ret %struct.phylo_s* %23
}

declare void @Die(i8*, ...) #1

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @FreePhylo(%struct.phylo_s* %tree, i32 %N) #0 {
entry:
  %tree.addr = alloca %struct.phylo_s*, align 8
  %N.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.phylo_s* %tree, %struct.phylo_s** %tree.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %3, i64 %idxprom
  %is_in = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx, i32 0, i32 6
  %4 = load i8*, i8** %is_in, align 8
  call void @free(i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %7 = bitcast %struct.phylo_s* %6 to i8*
  call void @free(i8* %7) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @MakeDiffMx(i8** %aseqs, i32 %num, float*** %ret_dmx) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %num.addr = alloca i32, align 4
  %ret_dmx.addr = alloca float***, align 8
  %dmx = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store float*** %ret_dmx, float**** %ret_dmx.addr, align 8
  %0 = load i32, i32* %num.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %call = call float** @FMX2Alloc(i32 %0, i32 %1)
  store float** %call, float*** %dmx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8
  %call6 = call float @PairwiseIdentity(i8* %9, i8* %12)
  %conv = fpext float %call6 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv7 = fptrunc double %sub to float
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load float**, float*** %dmx, align 8
  %arrayidx10 = getelementptr inbounds float*, float** %15, i64 %idxprom9
  %16 = load float*, float** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds float, float* %16, i64 %idxprom8
  store float %conv7, float* %arrayidx11, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load float**, float*** %dmx, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %19, i64 %idxprom13
  %20 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %20, i64 %idxprom12
  store float %conv7, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %23 = load float**, float*** %dmx, align 8
  %24 = load float***, float**** %ret_dmx.addr, align 8
  store float** %23, float*** %24, align 8
  ret void
}

declare float** @FMX2Alloc(i32, i32) #1

declare float @PairwiseIdentity(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @MakeIdentityMx(i8** %aseqs, i32 %num, float*** %ret_imx) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %num.addr = alloca i32, align 4
  %ret_imx.addr = alloca float***, align 8
  %imx = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store float*** %ret_imx, float**** %ret_imx.addr, align 8
  %0 = load i32, i32* %num.addr, align 4
  %1 = load i32, i32* %num.addr, align 4
  %call = call float** @FMX2Alloc(i32 %0, i32 %1)
  store float** %call, float*** %imx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8
  %call6 = call float @PairwiseIdentity(i8* %9, i8* %12)
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load float**, float*** %imx, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %15, i64 %idxprom8
  %16 = load float*, float** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %16, i64 %idxprom7
  store float %call6, float* %arrayidx10, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load float**, float*** %imx, align 8
  %arrayidx13 = getelementptr inbounds float*, float** %19, i64 %idxprom12
  %20 = load float*, float** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds float, float* %20, i64 %idxprom11
  store float %call6, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %23 = load float**, float*** %imx, align 8
  %24 = load float***, float**** %ret_imx.addr, align 8
  store float** %23, float*** %24, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintNewHampshireTree(%struct._IO_FILE* %fp, %struct.aliinfo_s* %ainfo, %struct.phylo_s* %tree, i32 %N) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %tree.addr = alloca %struct.phylo_s*, align 8
  %N.addr = alloca i32, align 4
  %stack = alloca %struct.intstack_s*, align 8
  %code = alloca i32, align 4
  %blen = alloca float*, align 8
  %docomma = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  store %struct.phylo_s* %tree, %struct.phylo_s** %tree.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %mul = mul nsw i32 2, %0
  %sub = sub nsw i32 %mul, 1
  %conv = sext i32 %sub to i64
  %mul1 = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 464, i64 %mul1)
  %1 = bitcast i8* %call to float*
  store float* %1, float** %blen, align 8
  %call2 = call %struct.intstack_s* @InitIntStack()
  store %struct.intstack_s* %call2, %struct.intstack_s** %stack, align 8
  %2 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %3 = load i32, i32* %N.addr, align 4
  call void @PushIntStack(%struct.intstack_s* %2, i32 %3)
  store i32 0, i32* %docomma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %entry
  %4 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %call3 = call i32 @PopIntStack(%struct.intstack_s* %4, i32* %code)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %code, align 4
  %6 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %docomma, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i32, i32* %code, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %11, i32 0, i32 6
  %12 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %12, i64 %idxprom
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %13 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load float*, float** %blen, align 8
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %15 to double
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay, double %conv10)
  store i32 1, i32* %docomma, align 4
  br label %if.end.59

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %code, align 4
  %17 = load i32, i32* %N.addr, align 4
  %mul12 = mul nsw i32 2, %17
  %cmp13 = icmp slt i32 %16, %mul12
  br i1 %cmp13, label %if.then.15, label %if.else.45

if.then.15:                                       ; preds = %if.else
  %18 = load i32, i32* %docomma, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %22 = load i32, i32* %code, align 4
  %23 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %22, %23
  call void @PushIntStack(%struct.intstack_s* %21, i32 %add)
  %24 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %25 = load i32, i32* %code, align 4
  %26 = load i32, i32* %N.addr, align 4
  %sub21 = sub nsw i32 %25, %26
  %idxprom22 = sext i32 %sub21 to i64
  %27 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %27, i64 %idxprom22
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx23, i32 0, i32 2
  %28 = load i32, i32* %right, align 4
  call void @PushIntStack(%struct.intstack_s* %24, i32 %28)
  %29 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %30 = load i32, i32* %code, align 4
  %31 = load i32, i32* %N.addr, align 4
  %sub24 = sub nsw i32 %30, %31
  %idxprom25 = sext i32 %sub24 to i64
  %32 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %32, i64 %idxprom25
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx26, i32 0, i32 1
  %33 = load i32, i32* %left, align 4
  call void @PushIntStack(%struct.intstack_s* %29, i32 %33)
  %34 = load i32, i32* %code, align 4
  %35 = load i32, i32* %N.addr, align 4
  %sub27 = sub nsw i32 %34, %35
  %idxprom28 = sext i32 %sub27 to i64
  %36 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %36, i64 %idxprom28
  %rblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx29, i32 0, i32 5
  %37 = load float, float* %rblen, align 4
  %38 = load i32, i32* %code, align 4
  %39 = load i32, i32* %N.addr, align 4
  %sub30 = sub nsw i32 %38, %39
  %idxprom31 = sext i32 %sub30 to i64
  %40 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %40, i64 %idxprom31
  %right33 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx32, i32 0, i32 2
  %41 = load i32, i32* %right33, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load float*, float** %blen, align 8
  %arrayidx35 = getelementptr inbounds float, float* %42, i64 %idxprom34
  store float %37, float* %arrayidx35, align 4
  %43 = load i32, i32* %code, align 4
  %44 = load i32, i32* %N.addr, align 4
  %sub36 = sub nsw i32 %43, %44
  %idxprom37 = sext i32 %sub36 to i64
  %45 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %45, i64 %idxprom37
  %lblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx38, i32 0, i32 4
  %46 = load float, float* %lblen, align 4
  %47 = load i32, i32* %code, align 4
  %48 = load i32, i32* %N.addr, align 4
  %sub39 = sub nsw i32 %47, %48
  %idxprom40 = sext i32 %sub39 to i64
  %49 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %49, i64 %idxprom40
  %left42 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx41, i32 0, i32 1
  %50 = load i32, i32* %left42, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load float*, float** %blen, align 8
  %arrayidx44 = getelementptr inbounds float, float* %51, i64 %idxprom43
  store float %46, float* %arrayidx44, align 4
  store i32 0, i32* %docomma, align 4
  br label %if.end.58

if.else.45:                                       ; preds = %if.else
  %52 = load i32, i32* %code, align 4
  %53 = load i32, i32* %N.addr, align 4
  %mul46 = mul nsw i32 2, %53
  %cmp47 = icmp eq i32 %52, %mul46
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.45
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.57

if.else.51:                                       ; preds = %if.else.45
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %56 = load i32, i32* %code, align 4
  %57 = load i32, i32* %N.addr, align 4
  %sub52 = sub nsw i32 %56, %57
  %idxprom53 = sext i32 %sub52 to i64
  %58 = load float*, float** %blen, align 8
  %arrayidx54 = getelementptr inbounds float, float* %58, i64 %idxprom53
  %59 = load float, float* %arrayidx54, align 4
  %conv55 = fpext float %59 to double
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), double %conv55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.51, %if.then.49
  store i32 1, i32* %docomma, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.19
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %call60 = call i32 @FreeIntStack(%struct.intstack_s* %60)
  %61 = load float*, float** %blen, align 8
  %62 = bitcast float* %61 to i8*
  call void @free(i8* %62) #3
  ret void
}

declare %struct.intstack_s* @InitIntStack() #1

declare void @PushIntStack(%struct.intstack_s*, i32) #1

declare i32 @PopIntStack(%struct.intstack_s*, i32*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @FreeIntStack(%struct.intstack_s*) #1

; Function Attrs: nounwind uwtable
define void @PrintPhylo(%struct._IO_FILE* %fp, %struct.aliinfo_s* %ainfo, %struct.phylo_s* %tree, i32 %N) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %tree.addr = alloca %struct.phylo_s*, align 8
  %N.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  store %struct.phylo_s* %tree, %struct.phylo_s** %tree.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* %idx, align 4
  %4 = load i32, i32* %idx, align 4
  %5 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %4, %5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i32 %3, i32 %add)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %8, i64 %idxprom
  %parent = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %parent, align 4
  %10 = load i32, i32* %N.addr, align 4
  %sub1 = sub nsw i32 %9, %10
  %11 = load i32, i32* %idx, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %12, i64 %idxprom2
  %parent4 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx3, i32 0, i32 0
  %13 = load i32, i32* %parent4, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 %sub1, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32, i32* %idx, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %16, i64 %idxprom6
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx7, i32 0, i32 1
  %17 = load i32, i32* %left, align 4
  %18 = load i32, i32* %N.addr, align 4
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i32, i32* %idx, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %20, i64 %idxprom9
  %left11 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx10, i32 0, i32 1
  %21 = load i32, i32* %left11, align 4
  %22 = load i32, i32* %N.addr, align 4
  %sub12 = sub nsw i32 %21, %22
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %23 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %24, i64 %idxprom13
  %left15 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx14, i32 0, i32 1
  %25 = load i32, i32* %left15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub12, %cond.true ], [ %25, %cond.false ]
  %26 = load i32, i32* %idx, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %27, i64 %idxprom16
  %left18 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx17, i32 0, i32 1
  %28 = load i32, i32* %left18, align 4
  %29 = load i32, i32* %N.addr, align 4
  %cmp19 = icmp slt i32 %28, %29
  br i1 %cmp19, label %cond.true.20, label %cond.false.26

cond.true.20:                                     ; preds = %cond.end
  %30 = load i32, i32* %idx, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %31, i64 %idxprom21
  %left23 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx22, i32 0, i32 1
  %32 = load i32, i32* %left23, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %33, i32 0, i32 6
  %34 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx25 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %34, i64 %idxprom24
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx25, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.20
  %cond28 = phi i8* [ %arraydecay, %cond.true.20 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %cond.false.26 ]
  %35 = load i32, i32* %idx, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %36, i64 %idxprom29
  %lblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx30, i32 0, i32 4
  %37 = load float, float* %lblen, align 4
  %conv = fpext float %37 to double
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 %cond, i8* %cond28, double %conv)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %40, i64 %idxprom32
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx33, i32 0, i32 2
  %41 = load i32, i32* %right, align 4
  %42 = load i32, i32* %N.addr, align 4
  %cmp34 = icmp slt i32 %41, %42
  br i1 %cmp34, label %cond.true.36, label %cond.false.41

cond.true.36:                                     ; preds = %cond.end.27
  %43 = load i32, i32* %idx, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %44, i64 %idxprom37
  %right39 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx38, i32 0, i32 2
  %45 = load i32, i32* %right39, align 4
  %46 = load i32, i32* %N.addr, align 4
  %sub40 = sub nsw i32 %45, %46
  br label %cond.end.45

cond.false.41:                                    ; preds = %cond.end.27
  %47 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %47 to i64
  %48 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %48, i64 %idxprom42
  %right44 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx43, i32 0, i32 2
  %49 = load i32, i32* %right44, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.41, %cond.true.36
  %cond46 = phi i32 [ %sub40, %cond.true.36 ], [ %49, %cond.false.41 ]
  %50 = load i32, i32* %idx, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %51, i64 %idxprom47
  %right49 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx48, i32 0, i32 2
  %52 = load i32, i32* %right49, align 4
  %53 = load i32, i32* %N.addr, align 4
  %cmp50 = icmp slt i32 %52, %53
  br i1 %cmp50, label %cond.true.52, label %cond.false.61

cond.true.52:                                     ; preds = %cond.end.45
  %54 = load i32, i32* %idx, align 4
  %idxprom53 = sext i32 %54 to i64
  %55 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %55, i64 %idxprom53
  %right55 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx54, i32 0, i32 2
  %56 = load i32, i32* %right55, align 4
  %idxprom56 = sext i32 %56 to i64
  %57 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo57 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %57, i32 0, i32 6
  %58 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo57, align 8
  %arrayidx58 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %58, i64 %idxprom56
  %name59 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx58, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [64 x i8], [64 x i8]* %name59, i32 0, i32 0
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.end.45
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.52
  %cond63 = phi i8* [ %arraydecay60, %cond.true.52 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %cond.false.61 ]
  %59 = load i32, i32* %idx, align 4
  %idxprom64 = sext i32 %59 to i64
  %60 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %60, i64 %idxprom64
  %rblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx65, i32 0, i32 5
  %61 = load float, float* %rblen, align 4
  %conv66 = fpext float %61 to double
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 %cond46, i8* %cond63, double %conv66)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %63 = load i32, i32* %idx, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %64, i64 %idxprom68
  %diff = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx69, i32 0, i32 3
  %65 = load float, float* %diff, align 4
  %conv70 = fpext float %65 to double
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), double %conv70)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %67 = load i32, i32* %idx, align 4
  %idxprom72 = sext i32 %67 to i64
  %68 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %68, i64 %idxprom72
  %incnum = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx73, i32 0, i32 7
  %69 = load i32, i32* %incnum, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %69)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.62
  %70 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
