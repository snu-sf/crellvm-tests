; ModuleID = 'weight.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [17 x i8] c"Cluster() failed\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"weight.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"simple_diffmx() failed\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"removing %12s -- fractional identity %.2f to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chose %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: nounwind uwtable
define void @GSCWeights(i8** %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %wgt.addr = alloca float*, align 8
  %dmx = alloca float**, align 8
  %tree = alloca %struct.phylo_s*, align 8
  %lwt = alloca float*, align 8
  %rwt = alloca float*, align 8
  %fwt = alloca float*, align 8
  %i = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float* %wgt, float** %wgt.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float*, float** %wgt.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %aseq.addr, align 8
  %3 = load i32, i32* %nseq.addr, align 4
  call void @MakeDiffMx(i8** %2, i32 %3, float*** %dmx)
  %4 = load float**, float*** %dmx, align 8
  %5 = load i32, i32* %nseq.addr, align 4
  %call = call i32 @Cluster(float** %4, i32 %5, i32 2, %struct.phylo_s** %tree)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i32, i32* %nseq.addr, align 4
  %mul = mul nsw i32 2, %6
  %sub = sub nsw i32 %mul, 1
  %conv = sext i32 %sub to i64
  %mul3 = mul i64 4, %conv
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 67, i64 %mul3)
  %7 = bitcast i8* %call4 to float*
  store float* %7, float** %lwt, align 8
  %8 = load i32, i32* %nseq.addr, align 4
  %mul5 = mul nsw i32 2, %8
  %sub6 = sub nsw i32 %mul5, 1
  %conv7 = sext i32 %sub6 to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 68, i64 %mul8)
  %9 = bitcast i8* %call9 to float*
  store float* %9, float** %rwt, align 8
  %10 = load i32, i32* %nseq.addr, align 4
  %mul10 = mul nsw i32 2, %10
  %sub11 = sub nsw i32 %mul10, 1
  %conv12 = sext i32 %sub11 to i64
  %mul13 = mul i64 4, %conv12
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 69, i64 %mul13)
  %11 = bitcast i8* %call14 to float*
  store float* %11, float** %fwt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load float*, float** %rwt, align 8
  %arrayidx17 = getelementptr inbounds float, float* %15, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx17, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load float*, float** %lwt, align 8
  %arrayidx19 = getelementptr inbounds float, float* %17, i64 %idxprom18
  store float 0.000000e+00, float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %20 = load i32, i32* %nseq.addr, align 4
  %21 = load float*, float** %lwt, align 8
  %22 = load float*, float** %rwt, align 8
  %23 = load i32, i32* %nseq.addr, align 4
  call void @upweight(%struct.phylo_s* %19, i32 %20, float* %21, float* %22, i32 %23)
  %24 = load i32, i32* %nseq.addr, align 4
  %conv20 = sitofp i32 %24 to float
  %25 = load i32, i32* %nseq.addr, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load float*, float** %fwt, align 8
  %arrayidx22 = getelementptr inbounds float, float* %26, i64 %idxprom21
  store float %conv20, float* %arrayidx22, align 4
  %27 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %28 = load i32, i32* %nseq.addr, align 4
  %29 = load float*, float** %lwt, align 8
  %30 = load float*, float** %rwt, align 8
  %31 = load float*, float** %fwt, align 8
  %32 = load i32, i32* %nseq.addr, align 4
  call void @downweight(%struct.phylo_s* %27, i32 %28, float* %29, float* %30, float* %31, i32 %32)
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %nseq.addr, align 4
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.33

for.body.26:                                      ; preds = %for.cond.23
  %35 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load float*, float** %fwt, align 8
  %arrayidx28 = getelementptr inbounds float, float* %36, i64 %idxprom27
  %37 = load float, float* %arrayidx28, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load float*, float** %wgt.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %39, i64 %idxprom29
  store float %37, float* %arrayidx30, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %40 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %40, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.23

for.end.33:                                       ; preds = %for.cond.23
  %41 = load float**, float*** %dmx, align 8
  call void @FMX2Free(float** %41)
  %42 = load %struct.phylo_s*, %struct.phylo_s** %tree, align 8
  %43 = load i32, i32* %nseq.addr, align 4
  call void @FreePhylo(%struct.phylo_s* %42, i32 %43)
  %44 = load float*, float** %lwt, align 8
  %45 = bitcast float* %44 to i8*
  call void @free(i8* %45) #3
  %46 = load float*, float** %rwt, align 8
  %47 = bitcast float* %46 to i8*
  call void @free(i8* %47) #3
  %48 = load float*, float** %fwt, align 8
  %49 = bitcast float* %48 to i8*
  call void @free(i8* %49) #3
  br label %return

return:                                           ; preds = %for.end.33, %if.then
  ret void
}

declare void @MakeDiffMx(i8**, i32, float***) #1

declare i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #1

declare void @Die(i8*, ...) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %node) #0 {
entry:
  %tree.addr = alloca %struct.phylo_s*, align 8
  %nseq.addr = alloca i32, align 4
  %lwt.addr = alloca float*, align 8
  %rwt.addr = alloca float*, align 8
  %node.addr = alloca i32, align 4
  %ld = alloca i32, align 4
  %rd = alloca i32, align 4
  store %struct.phylo_s* %tree, %struct.phylo_s** %tree.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store float* %lwt, float** %lwt.addr, align 8
  store float* %rwt, float** %rwt.addr, align 8
  store i32 %node, i32* %node.addr, align 4
  %0 = load i32, i32* %node.addr, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %0, %1
  %idxprom = sext i32 %sub to i64
  %2 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %2, i64 %idxprom
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %left, align 4
  store i32 %3, i32* %ld, align 4
  %4 = load i32, i32* %ld, align 4
  %5 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %7 = load i32, i32* %nseq.addr, align 4
  %8 = load float*, float** %lwt.addr, align 8
  %9 = load float*, float** %rwt.addr, align 8
  %10 = load i32, i32* %ld, align 4
  call void @upweight(%struct.phylo_s* %6, i32 %7, float* %8, float* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %node.addr, align 4
  %12 = load i32, i32* %nseq.addr, align 4
  %sub1 = sub nsw i32 %11, %12
  %idxprom2 = sext i32 %sub1 to i64
  %13 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %13, i64 %idxprom2
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx3, i32 0, i32 2
  %14 = load i32, i32* %right, align 4
  store i32 %14, i32* %rd, align 4
  %15 = load i32, i32* %rd, align 4
  %16 = load i32, i32* %nseq.addr, align 4
  %cmp4 = icmp sge i32 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %17 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %18 = load i32, i32* %nseq.addr, align 4
  %19 = load float*, float** %lwt.addr, align 8
  %20 = load float*, float** %rwt.addr, align 8
  %21 = load i32, i32* %rd, align 4
  call void @upweight(%struct.phylo_s* %17, i32 %18, float* %19, float* %20, i32 %21)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %22 = load i32, i32* %ld, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load float*, float** %lwt.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %23, i64 %idxprom7
  %24 = load float, float* %arrayidx8, align 4
  %25 = load i32, i32* %ld, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load float*, float** %rwt.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %26, i64 %idxprom9
  %27 = load float, float* %arrayidx10, align 4
  %add = fadd float %24, %27
  %28 = load i32, i32* %node.addr, align 4
  %29 = load i32, i32* %nseq.addr, align 4
  %sub11 = sub nsw i32 %28, %29
  %idxprom12 = sext i32 %sub11 to i64
  %30 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %30, i64 %idxprom12
  %lblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx13, i32 0, i32 4
  %31 = load float, float* %lblen, align 4
  %add14 = fadd float %add, %31
  %32 = load i32, i32* %node.addr, align 4
  %idxprom15 = sext i32 %32 to i64
  %33 = load float*, float** %lwt.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %33, i64 %idxprom15
  store float %add14, float* %arrayidx16, align 4
  %34 = load i32, i32* %rd, align 4
  %idxprom17 = sext i32 %34 to i64
  %35 = load float*, float** %lwt.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %35, i64 %idxprom17
  %36 = load float, float* %arrayidx18, align 4
  %37 = load i32, i32* %rd, align 4
  %idxprom19 = sext i32 %37 to i64
  %38 = load float*, float** %rwt.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %38, i64 %idxprom19
  %39 = load float, float* %arrayidx20, align 4
  %add21 = fadd float %36, %39
  %40 = load i32, i32* %node.addr, align 4
  %41 = load i32, i32* %nseq.addr, align 4
  %sub22 = sub nsw i32 %40, %41
  %idxprom23 = sext i32 %sub22 to i64
  %42 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %42, i64 %idxprom23
  %rblen = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx24, i32 0, i32 5
  %43 = load float, float* %rblen, align 4
  %add25 = fadd float %add21, %43
  %44 = load i32, i32* %node.addr, align 4
  %idxprom26 = sext i32 %44 to i64
  %45 = load float*, float** %rwt.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %45, i64 %idxprom26
  store float %add25, float* %arrayidx27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %node) #0 {
entry:
  %tree.addr = alloca %struct.phylo_s*, align 8
  %nseq.addr = alloca i32, align 4
  %lwt.addr = alloca float*, align 8
  %rwt.addr = alloca float*, align 8
  %fwt.addr = alloca float*, align 8
  %node.addr = alloca i32, align 4
  %ld = alloca i32, align 4
  %rd = alloca i32, align 4
  %lnum = alloca float, align 4
  %rnum = alloca float, align 4
  store %struct.phylo_s* %tree, %struct.phylo_s** %tree.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store float* %lwt, float** %lwt.addr, align 8
  store float* %rwt, float** %rwt.addr, align 8
  store float* %fwt, float** %fwt.addr, align 8
  store i32 %node, i32* %node.addr, align 4
  %0 = load i32, i32* %node.addr, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %sub = sub nsw i32 %0, %1
  %idxprom = sext i32 %sub to i64
  %2 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %2, i64 %idxprom
  %left = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %left, align 4
  store i32 %3, i32* %ld, align 4
  %4 = load i32, i32* %node.addr, align 4
  %5 = load i32, i32* %nseq.addr, align 4
  %sub1 = sub nsw i32 %4, %5
  %idxprom2 = sext i32 %sub1 to i64
  %6 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %6, i64 %idxprom2
  %right = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx3, i32 0, i32 2
  %7 = load i32, i32* %right, align 4
  store i32 %7, i32* %rd, align 4
  %8 = load i32, i32* %node.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load float*, float** %lwt.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  %10 = load float, float* %arrayidx5, align 4
  %11 = load i32, i32* %node.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load float*, float** %rwt.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 %idxprom6
  %13 = load float, float* %arrayidx7, align 4
  %add = fadd float %10, %13
  %conv = fpext float %add to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %node.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load float*, float** %fwt.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 %idxprom9
  %16 = load float, float* %arrayidx10, align 4
  %17 = load i32, i32* %node.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load float*, float** %lwt.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %18, i64 %idxprom11
  %19 = load float, float* %arrayidx12, align 4
  %20 = load i32, i32* %node.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load float*, float** %lwt.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %21, i64 %idxprom13
  %22 = load float, float* %arrayidx14, align 4
  %23 = load i32, i32* %node.addr, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load float*, float** %rwt.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %24, i64 %idxprom15
  %25 = load float, float* %arrayidx16, align 4
  %add17 = fadd float %22, %25
  %div = fdiv float %19, %add17
  %mul = fmul float %16, %div
  %26 = load i32, i32* %ld, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load float*, float** %fwt.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %27, i64 %idxprom18
  store float %mul, float* %arrayidx19, align 4
  %28 = load i32, i32* %node.addr, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load float*, float** %fwt.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  %30 = load float, float* %arrayidx21, align 4
  %31 = load i32, i32* %node.addr, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load float*, float** %rwt.addr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %32, i64 %idxprom22
  %33 = load float, float* %arrayidx23, align 4
  %34 = load i32, i32* %node.addr, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load float*, float** %lwt.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %35, i64 %idxprom24
  %36 = load float, float* %arrayidx25, align 4
  %37 = load i32, i32* %node.addr, align 4
  %idxprom26 = sext i32 %37 to i64
  %38 = load float*, float** %rwt.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %38, i64 %idxprom26
  %39 = load float, float* %arrayidx27, align 4
  %add28 = fadd float %36, %39
  %div29 = fdiv float %33, %add28
  %mul30 = fmul float %30, %div29
  %40 = load i32, i32* %rd, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load float*, float** %fwt.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %41, i64 %idxprom31
  store float %mul30, float* %arrayidx32, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %42 = load i32, i32* %ld, align 4
  %43 = load i32, i32* %nseq.addr, align 4
  %cmp33 = icmp sge i32 %42, %43
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %44 = load i32, i32* %ld, align 4
  %45 = load i32, i32* %nseq.addr, align 4
  %sub35 = sub nsw i32 %44, %45
  %idxprom36 = sext i32 %sub35 to i64
  %46 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %46, i64 %idxprom36
  %incnum = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx37, i32 0, i32 7
  %47 = load i32, i32* %incnum, align 4
  %conv38 = sitofp i32 %47 to double
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv38, %cond.true ], [ 1.000000e+00, %cond.false ]
  %conv39 = fptrunc double %cond to float
  store float %conv39, float* %lnum, align 4
  %48 = load i32, i32* %rd, align 4
  %49 = load i32, i32* %nseq.addr, align 4
  %cmp40 = icmp sge i32 %48, %49
  br i1 %cmp40, label %cond.true.42, label %cond.false.48

cond.true.42:                                     ; preds = %cond.end
  %50 = load i32, i32* %rd, align 4
  %51 = load i32, i32* %nseq.addr, align 4
  %sub43 = sub nsw i32 %50, %51
  %idxprom44 = sext i32 %sub43 to i64
  %52 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %52, i64 %idxprom44
  %incnum46 = getelementptr inbounds %struct.phylo_s, %struct.phylo_s* %arrayidx45, i32 0, i32 7
  %53 = load i32, i32* %incnum46, align 4
  %conv47 = sitofp i32 %53 to double
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.42
  %cond50 = phi double [ %conv47, %cond.true.42 ], [ 1.000000e+00, %cond.false.48 ]
  %conv51 = fptrunc double %cond50 to float
  store float %conv51, float* %rnum, align 4
  %54 = load i32, i32* %node.addr, align 4
  %idxprom52 = sext i32 %54 to i64
  %55 = load float*, float** %fwt.addr, align 8
  %arrayidx53 = getelementptr inbounds float, float* %55, i64 %idxprom52
  %56 = load float, float* %arrayidx53, align 4
  %57 = load float, float* %lnum, align 4
  %mul54 = fmul float %56, %57
  %58 = load float, float* %lnum, align 4
  %59 = load float, float* %rnum, align 4
  %add55 = fadd float %58, %59
  %div56 = fdiv float %mul54, %add55
  %60 = load i32, i32* %ld, align 4
  %idxprom57 = sext i32 %60 to i64
  %61 = load float*, float** %fwt.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %61, i64 %idxprom57
  store float %div56, float* %arrayidx58, align 4
  %62 = load i32, i32* %node.addr, align 4
  %idxprom59 = sext i32 %62 to i64
  %63 = load float*, float** %fwt.addr, align 8
  %arrayidx60 = getelementptr inbounds float, float* %63, i64 %idxprom59
  %64 = load float, float* %arrayidx60, align 4
  %65 = load float, float* %rnum, align 4
  %mul61 = fmul float %64, %65
  %66 = load float, float* %lnum, align 4
  %67 = load float, float* %rnum, align 4
  %add62 = fadd float %66, %67
  %div63 = fdiv float %mul61, %add62
  %68 = load i32, i32* %rd, align 4
  %idxprom64 = sext i32 %68 to i64
  %69 = load float*, float** %fwt.addr, align 8
  %arrayidx65 = getelementptr inbounds float, float* %69, i64 %idxprom64
  store float %div63, float* %arrayidx65, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.49, %if.then
  %70 = load i32, i32* %ld, align 4
  %71 = load i32, i32* %nseq.addr, align 4
  %cmp66 = icmp sge i32 %70, %71
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end
  %72 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %73 = load i32, i32* %nseq.addr, align 4
  %74 = load float*, float** %lwt.addr, align 8
  %75 = load float*, float** %rwt.addr, align 8
  %76 = load float*, float** %fwt.addr, align 8
  %77 = load i32, i32* %ld, align 4
  call void @downweight(%struct.phylo_s* %72, i32 %73, float* %74, float* %75, float* %76, i32 %77)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end
  %78 = load i32, i32* %rd, align 4
  %79 = load i32, i32* %nseq.addr, align 4
  %cmp70 = icmp sge i32 %78, %79
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %80 = load %struct.phylo_s*, %struct.phylo_s** %tree.addr, align 8
  %81 = load i32, i32* %nseq.addr, align 4
  %82 = load float*, float** %lwt.addr, align 8
  %83 = load float*, float** %rwt.addr, align 8
  %84 = load float*, float** %fwt.addr, align 8
  %85 = load i32, i32* %rd, align 4
  call void @downweight(%struct.phylo_s* %80, i32 %81, float* %82, float* %83, float* %84, i32 %85)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  ret void
}

declare void @FMX2Free(float**) #1

declare void @FreePhylo(%struct.phylo_s*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @VoronoiWeights(i8** %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %wgt.addr = alloca float*, align 8
  %dmx = alloca float**, align 8
  %halfmin = alloca float*, align 8
  %psym = alloca i8**, align 8
  %nsym = alloca i32*, align 8
  %symseen = alloca [27 x i32], align 16
  %randseq = alloca i8*, align 8
  %acol = alloca i32, align 4
  %idx = alloca i32, align 4
  %symidx = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca float, align 4
  %dist = alloca float, align 4
  %challenge = alloca float, align 4
  %champion = alloca float, align 4
  %itscale = alloca i32, align 4
  %iteration = alloca i32, align 4
  %best = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float* %wgt, float** %wgt.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float*, float** %wgt.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %1, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 50, i32* %itscale, align 4
  %2 = load i8**, i8*** %aseq.addr, align 8
  %3 = load i32, i32* %nseq.addr, align 4
  %call = call i32 @simple_diffmx(i8** %2, i32 %3, float*** %dmx)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %4 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 184, i64 %mul)
  %5 = bitcast i8* %call3 to float*
  store float* %5, float** %halfmin, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %if.end.2
  %6 = load i32, i32* %idx, align 4
  %7 = load i32, i32* %nseq.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store float 1.000000e+00, float* %min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %idx, align 4
  %cmp10 = icmp eq i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.9
  br label %for.inc

if.end.13:                                        ; preds = %for.body.9
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %idx, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load float**, float*** %dmx, align 8
  %arrayidx15 = getelementptr inbounds float*, float** %14, i64 %idxprom14
  %15 = load float*, float** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom
  %16 = load float, float* %arrayidx16, align 4
  %17 = load float, float* %min, align 4
  %cmp17 = fcmp olt float %16, %17
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.13
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32, i32* %idx, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load float**, float*** %dmx, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %20, i64 %idxprom21
  %21 = load float*, float** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds float, float* %21, i64 %idxprom20
  %22 = load float, float* %arrayidx23, align 4
  store float %22, float* %min, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.24, %if.then.12
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %24 = load float, float* %min, align 4
  %conv25 = fpext float %24 to double
  %div = fdiv double %conv25, 2.000000e+00
  %conv26 = fptrunc double %div to float
  %25 = load i32, i32* %idx, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load float*, float** %halfmin, align 8
  %arrayidx28 = getelementptr inbounds float, float* %26, i64 %idxprom27
  store float %conv26, float* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %27 = load i32, i32* %idx, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %idx, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %28 = load float**, float*** %dmx, align 8
  %29 = bitcast float** %28 to i8**
  %30 = load i32, i32* %nseq.addr, align 4
  call void @Free2DArray(i8** %29, i32 %30)
  %31 = load i32, i32* %alen.addr, align 4
  %conv32 = sext i32 %31 to i64
  %mul33 = mul i64 %conv32, 8
  %call34 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 198, i64 %mul33)
  %32 = bitcast i8* %call34 to i8**
  store i8** %32, i8*** %psym, align 8
  %33 = load i32, i32* %alen.addr, align 4
  %conv35 = sext i32 %33 to i64
  %mul36 = mul i64 %conv35, 4
  %call37 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 199, i64 %mul36)
  %34 = bitcast i8* %call37 to i32*
  store i32* %34, i32** %nsym, align 8
  store i32 0, i32* %acol, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %for.end.31
  %35 = load i32, i32* %acol, align 4
  %36 = load i32, i32* %alen.addr, align 4
  %cmp39 = icmp slt i32 %35, %36
  br i1 %cmp39, label %for.body.41, label %for.end.47

for.body.41:                                      ; preds = %for.cond.38
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 201, i64 27)
  %37 = load i32, i32* %acol, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load i8**, i8*** %psym, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %38, i64 %idxprom43
  store i8* %call42, i8** %arrayidx44, align 8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.41
  %39 = load i32, i32* %acol, align 4
  %inc46 = add nsw i32 %39, 1
  store i32 %inc46, i32* %acol, align 4
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  store i32 0, i32* %acol, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.169, %for.end.47
  %40 = load i32, i32* %acol, align 4
  %41 = load i32, i32* %alen.addr, align 4
  %cmp49 = icmp slt i32 %40, %41
  br i1 %cmp49, label %for.body.51, label %for.end.171

for.body.51:                                      ; preds = %for.cond.48
  %42 = bitcast [27 x i32]* %symseen to i8*
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 108, i32 16, i1 false)
  store i32 0, i32* %idx, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.129, %for.body.51
  %43 = load i32, i32* %idx, align 4
  %44 = load i32, i32* %nseq.addr, align 4
  %cmp53 = icmp slt i32 %43, %44
  br i1 %cmp53, label %for.body.55, label %for.end.131

for.body.55:                                      ; preds = %for.cond.52
  %45 = load i32, i32* %acol, align 4
  %idxprom56 = sext i32 %45 to i64
  %46 = load i32, i32* %idx, align 4
  %idxprom57 = sext i32 %46 to i64
  %47 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %47, i64 %idxprom57
  %48 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %48, i64 %idxprom56
  %49 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %49 to i32
  %cmp61 = icmp eq i32 %conv60, 32
  br i1 %cmp61, label %if.else.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.55
  %50 = load i32, i32* %acol, align 4
  %idxprom63 = sext i32 %50 to i64
  %51 = load i32, i32* %idx, align 4
  %idxprom64 = sext i32 %51 to i64
  %52 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %52, i64 %idxprom64
  %53 = load i8*, i8** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %53, i64 %idxprom63
  %54 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %54 to i32
  %cmp68 = icmp eq i32 %conv67, 46
  br i1 %cmp68, label %if.else.126, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false
  %55 = load i32, i32* %acol, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load i32, i32* %idx, align 4
  %idxprom72 = sext i32 %56 to i64
  %57 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %57, i64 %idxprom72
  %58 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %58, i64 %idxprom71
  %59 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %59 to i32
  %cmp76 = icmp eq i32 %conv75, 95
  br i1 %cmp76, label %if.else.126, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.70
  %60 = load i32, i32* %acol, align 4
  %idxprom79 = sext i32 %60 to i64
  %61 = load i32, i32* %idx, align 4
  %idxprom80 = sext i32 %61 to i64
  %62 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %62, i64 %idxprom80
  %63 = load i8*, i8** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %63, i64 %idxprom79
  %64 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %64 to i32
  %cmp84 = icmp eq i32 %conv83, 45
  br i1 %cmp84, label %if.else.126, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.78
  %65 = load i32, i32* %acol, align 4
  %idxprom87 = sext i32 %65 to i64
  %66 = load i32, i32* %idx, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %67, i64 %idxprom88
  %68 = load i8*, i8** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %68, i64 %idxprom87
  %69 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %69 to i32
  %cmp92 = icmp eq i32 %conv91, 126
  br i1 %cmp92, label %if.else.126, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.86
  %70 = load i32, i32* %acol, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load i32, i32* %idx, align 4
  %idxprom96 = sext i32 %71 to i64
  %72 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %72, i64 %idxprom96
  %73 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %73, i64 %idxprom95
  %74 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %74 to i32
  %idxprom100 = sext i32 %conv99 to i64
  %call101 = call i16** @__ctype_b_loc() #5
  %75 = load i16*, i16** %call101, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %75, i64 %idxprom100
  %76 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %76 to i32
  %and = and i32 %conv103, 256
  %tobool104 = icmp ne i32 %and, 0
  br i1 %tobool104, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %if.then.94
  %77 = load i32, i32* %acol, align 4
  %idxprom106 = sext i32 %77 to i64
  %78 = load i32, i32* %idx, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %79, i64 %idxprom107
  %80 = load i8*, i8** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %80, i64 %idxprom106
  %81 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %81 to i32
  %sub = sub nsw i32 %conv110, 65
  store i32 %sub, i32* %symidx, align 4
  br label %if.end.117

if.else:                                          ; preds = %if.then.94
  %82 = load i32, i32* %acol, align 4
  %idxprom111 = sext i32 %82 to i64
  %83 = load i32, i32* %idx, align 4
  %idxprom112 = sext i32 %83 to i64
  %84 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %84, i64 %idxprom112
  %85 = load i8*, i8** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %85, i64 %idxprom111
  %86 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %86 to i32
  %sub116 = sub nsw i32 %conv115, 97
  store i32 %sub116, i32* %symidx, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else, %if.then.105
  %87 = load i32, i32* %symidx, align 4
  %cmp118 = icmp sge i32 %87, 0
  br i1 %cmp118, label %land.lhs.true, label %if.end.125

land.lhs.true:                                    ; preds = %if.end.117
  %88 = load i32, i32* %symidx, align 4
  %cmp120 = icmp slt i32 %88, 26
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %land.lhs.true
  %89 = load i32, i32* %symidx, align 4
  %idxprom123 = sext i32 %89 to i64
  %arrayidx124 = getelementptr inbounds [27 x i32], [27 x i32]* %symseen, i32 0, i64 %idxprom123
  store i32 1, i32* %arrayidx124, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %land.lhs.true, %if.end.117
  br label %if.end.128

if.else.126:                                      ; preds = %lor.lhs.false.86, %lor.lhs.false.78, %lor.lhs.false.70, %lor.lhs.false, %for.body.55
  %arrayidx127 = getelementptr inbounds [27 x i32], [27 x i32]* %symseen, i32 0, i64 26
  store i32 1, i32* %arrayidx127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.end.125
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %90 = load i32, i32* %idx, align 4
  %inc130 = add nsw i32 %90, 1
  store i32 %inc130, i32* %idx, align 4
  br label %for.cond.52

for.end.131:                                      ; preds = %for.cond.52
  %91 = load i32, i32* %acol, align 4
  %idxprom132 = sext i32 %91 to i64
  %92 = load i32*, i32** %nsym, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %92, i64 %idxprom132
  store i32 0, i32* %arrayidx133, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.153, %for.end.131
  %93 = load i32, i32* %i, align 4
  %cmp135 = icmp slt i32 %93, 26
  br i1 %cmp135, label %for.body.137, label %for.end.155

for.body.137:                                     ; preds = %for.cond.134
  %94 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %94 to i64
  %arrayidx139 = getelementptr inbounds [27 x i32], [27 x i32]* %symseen, i32 0, i64 %idxprom138
  %95 = load i32, i32* %arrayidx139, align 4
  %tobool140 = icmp ne i32 %95, 0
  br i1 %tobool140, label %if.then.141, label %if.end.152

if.then.141:                                      ; preds = %for.body.137
  %96 = load i32, i32* %i, align 4
  %add = add nsw i32 65, %96
  %conv142 = trunc i32 %add to i8
  %97 = load i32, i32* %acol, align 4
  %idxprom143 = sext i32 %97 to i64
  %98 = load i32*, i32** %nsym, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %98, i64 %idxprom143
  %99 = load i32, i32* %arrayidx144, align 4
  %idxprom145 = sext i32 %99 to i64
  %100 = load i32, i32* %acol, align 4
  %idxprom146 = sext i32 %100 to i64
  %101 = load i8**, i8*** %psym, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %101, i64 %idxprom146
  %102 = load i8*, i8** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %102, i64 %idxprom145
  store i8 %conv142, i8* %arrayidx148, align 1
  %103 = load i32, i32* %acol, align 4
  %idxprom149 = sext i32 %103 to i64
  %104 = load i32*, i32** %nsym, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %104, i64 %idxprom149
  %105 = load i32, i32* %arrayidx150, align 4
  %inc151 = add nsw i32 %105, 1
  store i32 %inc151, i32* %arrayidx150, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.141, %for.body.137
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %106 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %106, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.134

for.end.155:                                      ; preds = %for.cond.134
  %arrayidx156 = getelementptr inbounds [27 x i32], [27 x i32]* %symseen, i32 0, i64 26
  %107 = load i32, i32* %arrayidx156, align 4
  %tobool157 = icmp ne i32 %107, 0
  br i1 %tobool157, label %if.then.158, label %if.end.168

if.then.158:                                      ; preds = %for.end.155
  %108 = load i32, i32* %acol, align 4
  %idxprom159 = sext i32 %108 to i64
  %109 = load i32*, i32** %nsym, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %109, i64 %idxprom159
  %110 = load i32, i32* %arrayidx160, align 4
  %idxprom161 = sext i32 %110 to i64
  %111 = load i32, i32* %acol, align 4
  %idxprom162 = sext i32 %111 to i64
  %112 = load i8**, i8*** %psym, align 8
  %arrayidx163 = getelementptr inbounds i8*, i8** %112, i64 %idxprom162
  %113 = load i8*, i8** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %113, i64 %idxprom161
  store i8 32, i8* %arrayidx164, align 1
  %114 = load i32, i32* %acol, align 4
  %idxprom165 = sext i32 %114 to i64
  %115 = load i32*, i32** %nsym, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %115, i64 %idxprom165
  %116 = load i32, i32* %arrayidx166, align 4
  %inc167 = add nsw i32 %116, 1
  store i32 %inc167, i32* %arrayidx166, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.158, %for.end.155
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %117 = load i32, i32* %acol, align 4
  %inc170 = add nsw i32 %117, 1
  store i32 %inc170, i32* %acol, align 4
  br label %for.cond.48

for.end.171:                                      ; preds = %for.cond.48
  %118 = load i32, i32* %alen.addr, align 4
  %add172 = add nsw i32 %118, 1
  %conv173 = sext i32 %add172 to i64
  %mul174 = mul i64 %conv173, 1
  %call175 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 268, i64 %mul174)
  store i8* %call175, i8** %randseq, align 8
  store i32 42, i32* %best, align 4
  %119 = load float*, float** %wgt.addr, align 8
  %120 = load i32, i32* %nseq.addr, align 4
  call void @FSet(float* %119, i32 %120, float 0.000000e+00)
  store i32 0, i32* %iteration, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.248, %for.end.171
  %121 = load i32, i32* %iteration, align 4
  %122 = load i32, i32* %itscale, align 4
  %123 = load i32, i32* %nseq.addr, align 4
  %mul177 = mul nsw i32 %122, %123
  %cmp178 = icmp slt i32 %121, %mul177
  br i1 %cmp178, label %for.body.180, label %for.end.250

for.body.180:                                     ; preds = %for.cond.176
  store i32 0, i32* %acol, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.203, %for.body.180
  %124 = load i32, i32* %acol, align 4
  %125 = load i32, i32* %alen.addr, align 4
  %cmp182 = icmp slt i32 %124, %125
  br i1 %cmp182, label %for.body.184, label %for.end.205

for.body.184:                                     ; preds = %for.cond.181
  %126 = load i32, i32* %acol, align 4
  %idxprom185 = sext i32 %126 to i64
  %127 = load i32*, i32** %nsym, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %127, i64 %idxprom185
  %128 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp eq i32 %128, 0
  br i1 %cmp187, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.184
  br label %cond.end

cond.false:                                       ; preds = %for.body.184
  %call189 = call double @sre_random()
  %129 = load i32, i32* %acol, align 4
  %idxprom190 = sext i32 %129 to i64
  %130 = load i32*, i32** %nsym, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %130, i64 %idxprom190
  %131 = load i32, i32* %arrayidx191, align 4
  %conv192 = sitofp i32 %131 to double
  %mul193 = fmul double %call189, %conv192
  %conv194 = fptosi double %mul193 to i32
  %idxprom195 = sext i32 %conv194 to i64
  %132 = load i32, i32* %acol, align 4
  %idxprom196 = sext i32 %132 to i64
  %133 = load i8**, i8*** %psym, align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %133, i64 %idxprom196
  %134 = load i8*, i8** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %134, i64 %idxprom195
  %135 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %135 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %conv199, %cond.false ]
  %conv200 = trunc i32 %cond to i8
  %136 = load i32, i32* %acol, align 4
  %idxprom201 = sext i32 %136 to i64
  %137 = load i8*, i8** %randseq, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %137, i64 %idxprom201
  store i8 %conv200, i8* %arrayidx202, align 1
  br label %for.inc.203

for.inc.203:                                      ; preds = %cond.end
  %138 = load i32, i32* %acol, align 4
  %inc204 = add nsw i32 %138, 1
  store i32 %inc204, i32* %acol, align 4
  br label %for.cond.181

for.end.205:                                      ; preds = %for.cond.181
  %139 = load i32, i32* %acol, align 4
  %idxprom206 = sext i32 %139 to i64
  %140 = load i8*, i8** %randseq, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %140, i64 %idxprom206
  store i8 0, i8* %arrayidx207, align 1
  %call208 = call double @sre_random()
  %conv209 = fptrunc double %call208 to float
  store float %conv209, float* %champion, align 4
  store float 1.000000e+00, float* %min, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.240, %for.end.205
  %141 = load i32, i32* %idx, align 4
  %142 = load i32, i32* %nseq.addr, align 4
  %cmp211 = icmp slt i32 %141, %142
  br i1 %cmp211, label %for.body.213, label %for.end.242

for.body.213:                                     ; preds = %for.cond.210
  %143 = load i32, i32* %idx, align 4
  %idxprom214 = sext i32 %143 to i64
  %144 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %144, i64 %idxprom214
  %145 = load i8*, i8** %arrayidx215, align 8
  %146 = load i8*, i8** %randseq, align 8
  %call216 = call float @simple_distance(i8* %145, i8* %146)
  store float %call216, float* %dist, align 4
  %147 = load float, float* %dist, align 4
  %148 = load i32, i32* %idx, align 4
  %idxprom217 = sext i32 %148 to i64
  %149 = load float*, float** %halfmin, align 8
  %arrayidx218 = getelementptr inbounds float, float* %149, i64 %idxprom217
  %150 = load float, float* %arrayidx218, align 4
  %cmp219 = fcmp olt float %147, %150
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %for.body.213
  %151 = load i32, i32* %idx, align 4
  store i32 %151, i32* %best, align 4
  br label %for.end.242

if.end.222:                                       ; preds = %for.body.213
  %152 = load float, float* %dist, align 4
  %153 = load float, float* %min, align 4
  %cmp223 = fcmp olt float %152, %153
  br i1 %cmp223, label %if.then.225, label %if.else.228

if.then.225:                                      ; preds = %if.end.222
  %call226 = call double @sre_random()
  %conv227 = fptrunc double %call226 to float
  store float %conv227, float* %champion, align 4
  %154 = load i32, i32* %idx, align 4
  store i32 %154, i32* %best, align 4
  %155 = load float, float* %dist, align 4
  store float %155, float* %min, align 4
  br label %if.end.239

if.else.228:                                      ; preds = %if.end.222
  %156 = load float, float* %dist, align 4
  %157 = load float, float* %min, align 4
  %cmp229 = fcmp oeq float %156, %157
  br i1 %cmp229, label %if.then.231, label %if.end.238

if.then.231:                                      ; preds = %if.else.228
  %call232 = call double @sre_random()
  %conv233 = fptrunc double %call232 to float
  store float %conv233, float* %challenge, align 4
  %158 = load float, float* %challenge, align 4
  %159 = load float, float* %champion, align 4
  %cmp234 = fcmp ogt float %158, %159
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.then.231
  %160 = load float, float* %challenge, align 4
  store float %160, float* %champion, align 4
  %161 = load i32, i32* %idx, align 4
  store i32 %161, i32* %best, align 4
  %162 = load float, float* %dist, align 4
  store float %162, float* %min, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.then.231
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.else.228
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.225
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.239
  %163 = load i32, i32* %idx, align 4
  %inc241 = add nsw i32 %163, 1
  store i32 %inc241, i32* %idx, align 4
  br label %for.cond.210

for.end.242:                                      ; preds = %if.then.221, %for.cond.210
  %164 = load i32, i32* %best, align 4
  %idxprom243 = sext i32 %164 to i64
  %165 = load float*, float** %wgt.addr, align 8
  %arrayidx244 = getelementptr inbounds float, float* %165, i64 %idxprom243
  %166 = load float, float* %arrayidx244, align 4
  %conv245 = fpext float %166 to double
  %add246 = fadd double %conv245, 1.000000e+00
  %conv247 = fptrunc double %add246 to float
  store float %conv247, float* %arrayidx244, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.end.242
  %167 = load i32, i32* %iteration, align 4
  %inc249 = add nsw i32 %167, 1
  store i32 %inc249, i32* %iteration, align 4
  br label %for.cond.176

for.end.250:                                      ; preds = %for.cond.176
  store i32 0, i32* %idx, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.261, %for.end.250
  %168 = load i32, i32* %idx, align 4
  %169 = load i32, i32* %nseq.addr, align 4
  %cmp252 = icmp slt i32 %168, %169
  br i1 %cmp252, label %for.body.254, label %for.end.263

for.body.254:                                     ; preds = %for.cond.251
  %170 = load i32, i32* %idx, align 4
  %idxprom255 = sext i32 %170 to i64
  %171 = load float*, float** %wgt.addr, align 8
  %arrayidx256 = getelementptr inbounds float, float* %171, i64 %idxprom255
  %172 = load float, float* %arrayidx256, align 4
  %173 = load i32, i32* %itscale, align 4
  %conv257 = sitofp i32 %173 to float
  %div258 = fdiv float %172, %conv257
  %174 = load i32, i32* %idx, align 4
  %idxprom259 = sext i32 %174 to i64
  %175 = load float*, float** %wgt.addr, align 8
  %arrayidx260 = getelementptr inbounds float, float* %175, i64 %idxprom259
  store float %div258, float* %arrayidx260, align 4
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.254
  %176 = load i32, i32* %idx, align 4
  %inc262 = add nsw i32 %176, 1
  store i32 %inc262, i32* %idx, align 4
  br label %for.cond.251

for.end.263:                                      ; preds = %for.cond.251
  %177 = load i8*, i8** %randseq, align 8
  call void @free(i8* %177) #3
  %178 = load i32*, i32** %nsym, align 8
  %179 = bitcast i32* %178 to i8*
  call void @free(i8* %179) #3
  %180 = load float*, float** %halfmin, align 8
  %181 = bitcast float* %180 to i8*
  call void @free(i8* %181) #3
  %182 = load i8**, i8*** %psym, align 8
  %183 = load i32, i32* %alen.addr, align 4
  call void @Free2DArray(i8** %182, i32 %183)
  br label %return

return:                                           ; preds = %for.end.263, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_diffmx(i8** %aseqs, i32 %num, float*** %ret_dmx) #0 {
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
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to float**
  store float** %1, float*** %dmx, align 8
  %cmp = icmp eq float** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %num.addr, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #3
  %5 = bitcast i8* %call6 to float*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float**, float*** %dmx, align 8
  %arrayidx = getelementptr inbounds float*, float** %7, i64 %idxprom
  store float* %5, float** %arrayidx, align 8
  %cmp7 = icmp eq float* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.35, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num.addr, align 4
  %cmp12 = icmp slt i32 %9, %10
  br i1 %cmp12, label %for.body.14, label %for.end.37

for.body.14:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.32, %for.body.14
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %num.addr, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body.18, label %for.end.34

for.body.18:                                      ; preds = %for.cond.15
  %14 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %14 to i64
  %15 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %15, i64 %idxprom19
  %16 = load i8*, i8** %arrayidx20, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %18, i64 %idxprom21
  %19 = load i8*, i8** %arrayidx22, align 8
  %call23 = call float @simple_distance(i8* %16, i8* %19)
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load float**, float*** %dmx, align 8
  %arrayidx26 = getelementptr inbounds float*, float** %22, i64 %idxprom25
  %23 = load float*, float** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds float, float* %23, i64 %idxprom24
  store float %call23, float* %arrayidx27, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load float**, float*** %dmx, align 8
  %arrayidx30 = getelementptr inbounds float*, float** %26, i64 %idxprom29
  %27 = load float*, float** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds float, float* %27, i64 %idxprom28
  store float %call23, float* %arrayidx31, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.18
  %28 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.15

for.end.34:                                       ; preds = %for.cond.15
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.11

for.end.37:                                       ; preds = %for.cond.11
  %30 = load float**, float*** %dmx, align 8
  %31 = load float***, float**** %ret_dmx.addr, align 8
  store float** %30, float*** %31, align 8
  ret i32 1
}

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare void @FSet(float*, i32, float) #1

declare double @sre_random() #1

; Function Attrs: nounwind uwtable
define internal float @simple_distance(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %diff = alloca i32, align 4
  %valid = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 0, i32* %diff, align 4
  store i32 0, i32* %valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %s1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 46
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %s1.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 95
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load i8*, i8** %s1.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load i8*, i8** %s1.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 126
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load i8*, i8** %s2.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 32
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load i8*, i8** %s2.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp eq i32 %conv25, 46
  br i1 %cmp26, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %16 = load i8*, i8** %s2.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv29 = sext i8 %17 to i32
  %cmp30 = icmp eq i32 %conv29, 95
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %18 = load i8*, i8** %s2.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv33 = sext i8 %19 to i32
  %cmp34 = icmp eq i32 %conv33, 45
  br i1 %cmp34, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %20 = load i8*, i8** %s2.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv37 = sext i8 %21 to i32
  %cmp38 = icmp eq i32 %conv37, 126
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.36
  %22 = load i8*, i8** %s1.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv40 = sext i8 %23 to i32
  %24 = load i8*, i8** %s2.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv41 = sext i8 %25 to i32
  %cmp42 = icmp ne i32 %conv40, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end
  %26 = load i32, i32* %diff, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %diff, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end
  %27 = load i32, i32* %valid, align 4
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, i32* %valid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.45, %if.then
  %28 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %29 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr47, i8** %s2.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %valid, align 4
  %cmp48 = icmp sgt i32 %30, 0
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %31 = load i32, i32* %diff, align 4
  %conv50 = sitofp i32 %31 to float
  %32 = load i32, i32* %valid, align 4
  %conv51 = sitofp i32 %32 to float
  %div = fdiv float %conv50, %conv51
  %conv52 = fpext float %div to double
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv52, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv53 = fptrunc double %cond to float
  ret float %conv53
}

; Function Attrs: nounwind uwtable
define void @BlosumWeights(i8** %aseqs, i32 %nseq, i32 %alen, float %maxid, float* %wgt) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %maxid.addr = alloca float, align 4
  %wgt.addr = alloca float*, align 8
  %c = alloca i32*, align 8
  %nc = alloca i32, align 4
  %nmem = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float %maxid, float* %maxid.addr, align 4
  store float* %wgt, float** %wgt.addr, align 8
  %0 = load i8**, i8*** %aseqs.addr, align 8
  %1 = load i32, i32* %nseq.addr, align 4
  %2 = load i32, i32* %alen.addr, align 4
  %3 = load float, float* %maxid.addr, align 4
  call void @SingleLinkCluster(i8** %0, i32 %1, i32 %2, float %3, i32** %c, i32* %nc)
  %4 = load float*, float** %wgt.addr, align 8
  %5 = load i32, i32* %nseq.addr, align 4
  call void @FSet(float* %4, i32 %5, float 1.000000e+00)
  %6 = load i32, i32* %nc, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 403, i64 %mul)
  %7 = bitcast i8* %call to i32*
  store i32* %7, i32** %nmem, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nc, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %nmem, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nseq.addr, align 4
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body.5, label %for.end.13

for.body.5:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i32*, i32** %c, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i32*, i32** %nmem, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %19 = load i32, i32* %arrayidx9, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %arrayidx9, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.5
  %20 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.2

for.end.13:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.end.13
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nseq.addr, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %23 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32*, i32** %c, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load i32*, i32** %nmem, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %27 = load i32, i32* %arrayidx21, align 4
  %conv22 = sitofp i32 %27 to float
  %conv23 = fpext float %conv22 to double
  %div = fdiv double 1.000000e+00, %conv23
  %conv24 = fptrunc double %div to float
  %28 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load float*, float** %wgt.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %29, i64 %idxprom25
  store float %conv24, float* %arrayidx26, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.17
  %30 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  %31 = load i32*, i32** %nmem, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32) #3
  %33 = load i32*, i32** %c, align 8
  %34 = bitcast i32* %33 to i8*
  call void @free(i8* %34) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @SingleLinkCluster(i8** %aseq, i32 %nseq, i32 %alen, float %maxid, i32** %ret_c, i32* %ret_nc) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %maxid.addr = alloca float, align 4
  %ret_c.addr = alloca i32**, align 8
  %ret_nc.addr = alloca i32*, align 8
  %a = alloca i32*, align 8
  %na = alloca i32, align 4
  %b = alloca i32*, align 8
  %nb = alloca i32, align 4
  %c = alloca i32*, align 8
  %nc = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float %maxid, float* %maxid.addr, align 4
  store i32** %ret_c, i32*** %ret_c.addr, align 8
  store i32* %ret_nc, i32** %ret_nc.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 716, i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %a, align 8
  %2 = load i32, i32* %nseq.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 4, %conv1
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 717, i64 %mul2)
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %b, align 8
  %4 = load i32, i32* %nseq.addr, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 718, i64 %mul5)
  %5 = bitcast i8* %call6 to i32*
  store i32* %5, i32** %c, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %a, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %8, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %nseq.addr, align 4
  store i32 %12, i32* %na, align 4
  store i32 0, i32* %nb, align 4
  store i32 0, i32* %nc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end
  %13 = load i32, i32* %na, align 4
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %while.body, label %while.end.57

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %na, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom10 = sext i32 %sub to i64
  %15 = load i32*, i32** %a, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4
  store i32 %16, i32* %v, align 4
  %17 = load i32, i32* %na, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %na, align 4
  %18 = load i32, i32* %v, align 4
  %19 = load i32, i32* %nb, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32*, i32** %b, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  store i32 %18, i32* %arrayidx13, align 4
  %21 = load i32, i32* %nb, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %nb, align 4
  br label %while.cond.15

while.cond.15:                                    ; preds = %for.end.55, %while.body
  %22 = load i32, i32* %nb, align 4
  %cmp16 = icmp sgt i32 %22, 0
  br i1 %cmp16, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %while.cond.15
  %23 = load i32, i32* %nb, align 4
  %sub19 = sub nsw i32 %23, 1
  %idxprom20 = sext i32 %sub19 to i64
  %24 = load i32*, i32** %b, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i64 %idxprom20
  %25 = load i32, i32* %arrayidx21, align 4
  store i32 %25, i32* %v, align 4
  %26 = load i32, i32* %nb, align 4
  %dec22 = add nsw i32 %26, -1
  store i32 %dec22, i32* %nb, align 4
  %27 = load i32, i32* %nc, align 4
  %28 = load i32, i32* %v, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i32*, i32** %c, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  store i32 %27, i32* %arrayidx24, align 4
  %30 = load i32, i32* %na, align 4
  %sub25 = sub nsw i32 %30, 1
  store i32 %sub25, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.53, %while.body.18
  %31 = load i32, i32* %i, align 4
  %cmp27 = icmp sge i32 %31, 0
  br i1 %cmp27, label %for.body.29, label %for.end.55

for.body.29:                                      ; preds = %for.cond.26
  %32 = load i32, i32* %v, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %33, i64 %idxprom30
  %34 = load i8*, i8** %arrayidx31, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load i32*, i32** %a, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %36, i64 %idxprom32
  %37 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %37 to i64
  %38 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %38, i64 %idxprom34
  %39 = load i8*, i8** %arrayidx35, align 8
  %call36 = call float @simple_distance(i8* %34, i8* %39)
  %conv37 = fpext float %call36 to double
  %40 = load float, float* %maxid.addr, align 4
  %conv38 = fpext float %40 to double
  %sub39 = fsub double 1.000000e+00, %conv38
  %cmp40 = fcmp ole double %conv37, %sub39
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.29
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %42 = load i32*, i32** %a, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %42, i64 %idxprom42
  %43 = load i32, i32* %arrayidx43, align 4
  store i32 %43, i32* %w, align 4
  %44 = load i32, i32* %na, align 4
  %sub44 = sub nsw i32 %44, 1
  %idxprom45 = sext i32 %sub44 to i64
  %45 = load i32*, i32** %a, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %45, i64 %idxprom45
  %46 = load i32, i32* %arrayidx46, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load i32*, i32** %a, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %48, i64 %idxprom47
  store i32 %46, i32* %arrayidx48, align 4
  %49 = load i32, i32* %na, align 4
  %dec49 = add nsw i32 %49, -1
  store i32 %dec49, i32* %na, align 4
  %50 = load i32, i32* %w, align 4
  %51 = load i32, i32* %nb, align 4
  %idxprom50 = sext i32 %51 to i64
  %52 = load i32*, i32** %b, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %52, i64 %idxprom50
  store i32 %50, i32* %arrayidx51, align 4
  %53 = load i32, i32* %nb, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* %nb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.29
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end
  %54 = load i32, i32* %i, align 4
  %dec54 = add nsw i32 %54, -1
  store i32 %dec54, i32* %i, align 4
  br label %for.cond.26

for.end.55:                                       ; preds = %for.cond.26
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %55 = load i32, i32* %nc, align 4
  %inc56 = add nsw i32 %55, 1
  store i32 %inc56, i32* %nc, align 4
  br label %while.cond

while.end.57:                                     ; preds = %while.cond
  %56 = load i32*, i32** %a, align 8
  %57 = bitcast i32* %56 to i8*
  call void @free(i8* %57) #3
  %58 = load i32*, i32** %b, align 8
  %59 = bitcast i32* %58 to i8*
  call void @free(i8* %59) #3
  %60 = load i32*, i32** %c, align 8
  %61 = load i32**, i32*** %ret_c.addr, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* %nc, align 4
  %63 = load i32*, i32** %ret_nc.addr, align 8
  store i32 %62, i32* %63, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PositionBasedWeights(i8** %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %wgt.addr = alloca float*, align 8
  %rescount = alloca [26 x i32], align 16
  %nres = alloca i32, align 4
  %idx = alloca i32, align 4
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %norm = alloca float, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float* %wgt, float** %wgt.addr, align 8
  %0 = load float*, float** %wgt.addr, align 8
  %1 = load i32, i32* %nseq.addr, align 4
  call void @FSet(float* %0, i32 %1, float 0.000000e+00)
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %2 = load i32, i32* %pos, align 4
  %3 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %4, 26
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %x, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [26 x i32], [26 x i32]* %rescount, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %idx, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.23, %for.end
  %7 = load i32, i32* %idx, align 4
  %8 = load i32, i32* %nseq.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body.6, label %for.end.25

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %pos, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %11, i64 %idxprom8
  %12 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  %13 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %13 to i32
  %idxprom11 = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #5
  %14 = load i16*, i16** %call, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %14, i64 %idxprom11
  %15 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %15 to i32
  %and = and i32 %conv13, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %16 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i32, i32* %idx, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %18, i64 %idxprom15
  %19 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom14
  %20 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %20 to i32
  %call19 = call i32 @toupper(i32 %conv18) #3
  %sub = sub nsw i32 %call19, 65
  %idxprom20 = sext i32 %sub to i64
  %arrayidx21 = getelementptr inbounds [26 x i32], [26 x i32]* %rescount, i32 0, i64 %idxprom20
  %21 = load i32, i32* %arrayidx21, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, i32* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %22 = load i32, i32* %idx, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %idx, align 4
  br label %for.cond.4

for.end.25:                                       ; preds = %for.cond.4
  store i32 0, i32* %nres, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.37, %for.end.25
  %23 = load i32, i32* %x, align 4
  %cmp27 = icmp slt i32 %23, 26
  br i1 %cmp27, label %for.body.29, label %for.end.39

for.body.29:                                      ; preds = %for.cond.26
  %24 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [26 x i32], [26 x i32]* %rescount, i32 0, i64 %idxprom30
  %25 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp sgt i32 %25, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.body.29
  %26 = load i32, i32* %nres, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %nres, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.body.29
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %27 = load i32, i32* %x, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %x, align 4
  br label %for.cond.26

for.end.39:                                       ; preds = %for.cond.26
  store i32 0, i32* %idx, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.72, %for.end.39
  %28 = load i32, i32* %idx, align 4
  %29 = load i32, i32* %nseq.addr, align 4
  %cmp41 = icmp slt i32 %28, %29
  br i1 %cmp41, label %for.body.43, label %for.end.74

for.body.43:                                      ; preds = %for.cond.40
  %30 = load i32, i32* %pos, align 4
  %idxprom44 = sext i32 %30 to i64
  %31 = load i32, i32* %idx, align 4
  %idxprom45 = sext i32 %31 to i64
  %32 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %32, i64 %idxprom45
  %33 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom44
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %34 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %call50 = call i16** @__ctype_b_loc() #5
  %35 = load i16*, i16** %call50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %35, i64 %idxprom49
  %36 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %36 to i32
  %and53 = and i32 %conv52, 1024
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.71

if.then.55:                                       ; preds = %for.body.43
  %37 = load i32, i32* %nres, align 4
  %38 = load i32, i32* %pos, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load i32, i32* %idx, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %40, i64 %idxprom57
  %41 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %41, i64 %idxprom56
  %42 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %42 to i32
  %call61 = call i32 @toupper(i32 %conv60) #3
  %sub62 = sub nsw i32 %call61, 65
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [26 x i32], [26 x i32]* %rescount, i32 0, i64 %idxprom63
  %43 = load i32, i32* %arrayidx64, align 4
  %mul = mul nsw i32 %37, %43
  %conv65 = sitofp i32 %mul to float
  %conv66 = fpext float %conv65 to double
  %div = fdiv double 1.000000e+00, %conv66
  %44 = load i32, i32* %idx, align 4
  %idxprom67 = sext i32 %44 to i64
  %45 = load float*, float** %wgt.addr, align 8
  %arrayidx68 = getelementptr inbounds float, float* %45, i64 %idxprom67
  %46 = load float, float* %arrayidx68, align 4
  %conv69 = fpext float %46 to double
  %add = fadd double %conv69, %div
  %conv70 = fptrunc double %add to float
  store float %conv70, float* %arrayidx68, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.55, %for.body.43
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %47 = load i32, i32* %idx, align 4
  %inc73 = add nsw i32 %47, 1
  store i32 %inc73, i32* %idx, align 4
  br label %for.cond.40

for.end.74:                                       ; preds = %for.cond.40
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %48 = load i32, i32* %pos, align 4
  %inc76 = add nsw i32 %48, 1
  store i32 %inc76, i32* %pos, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.89, %for.end.77
  %49 = load i32, i32* %idx, align 4
  %50 = load i32, i32* %nseq.addr, align 4
  %cmp79 = icmp slt i32 %49, %50
  br i1 %cmp79, label %for.body.81, label %for.end.91

for.body.81:                                      ; preds = %for.cond.78
  %51 = load i32, i32* %idx, align 4
  %idxprom82 = sext i32 %51 to i64
  %52 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %52, i64 %idxprom82
  %53 = load i8*, i8** %arrayidx83, align 8
  %call84 = call i32 @DealignedLength(i8* %53)
  %conv85 = sitofp i32 %call84 to float
  %54 = load i32, i32* %idx, align 4
  %idxprom86 = sext i32 %54 to i64
  %55 = load float*, float** %wgt.addr, align 8
  %arrayidx87 = getelementptr inbounds float, float* %55, i64 %idxprom86
  %56 = load float, float* %arrayidx87, align 4
  %div88 = fdiv float %56, %conv85
  store float %div88, float* %arrayidx87, align 4
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.81
  %57 = load i32, i32* %idx, align 4
  %inc90 = add nsw i32 %57, 1
  store i32 %inc90, i32* %idx, align 4
  br label %for.cond.78

for.end.91:                                       ; preds = %for.cond.78
  %58 = load i32, i32* %nseq.addr, align 4
  %conv92 = sitofp i32 %58 to float
  %59 = load float*, float** %wgt.addr, align 8
  %60 = load i32, i32* %nseq.addr, align 4
  %call93 = call float @FSum(float* %59, i32 %60)
  %div94 = fdiv float %conv92, %call93
  store float %div94, float* %norm, align 4
  %61 = load float*, float** %wgt.addr, align 8
  %62 = load i32, i32* %nseq.addr, align 4
  %63 = load float, float* %norm, align 4
  call void @FScale(float* %61, i32 %62, float %63)
  ret void
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

declare i32 @DealignedLength(i8*) #1

declare float @FSum(float*, i32) #1

declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @FilterAlignment(%struct.msa_struct* %msa, float %cutoff, %struct.msa_struct** %ret_new) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %cutoff.addr = alloca float, align 4
  %ret_new.addr = alloca %struct.msa_struct**, align 8
  %nnew = alloca i32, align 4
  %list = alloca i32*, align 8
  %useme = alloca i32*, align 8
  %ident = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %remove = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store float %cutoff, float* %cutoff.addr, align 4
  store %struct.msa_struct** %ret_new, %struct.msa_struct*** %ret_new.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 532, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %list, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %nseq1, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 533, i64 %mul3)
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %useme, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %nseq5, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %useme, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %nnew, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.47, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq8 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 4
  %14 = load i32, i32* %nseq8, align 4
  %cmp9 = icmp slt i32 %12, %14
  br i1 %cmp9, label %for.body.11, label %for.end.49

for.body.11:                                      ; preds = %for.cond.7
  store i32 0, i32* %remove, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.35, %for.body.11
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %nnew, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body.15, label %for.end.37

for.body.15:                                      ; preds = %for.cond.12
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 0
  %19 = load i8**, i8*** %aseq, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %19, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx17, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32*, i32** %list, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 0
  %25 = load i8**, i8*** %aseq21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom20
  %26 = load i8*, i8** %arrayidx22, align 8
  %call23 = call float @PairwiseIdentity(i8* %20, i8* %26)
  store float %call23, float* %ident, align 4
  %27 = load float, float* %ident, align 4
  %28 = load float, float* %cutoff.addr, align 4
  %cmp24 = fcmp ogt float %27, %28
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.15
  store i32 1, i32* %remove, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %30, i32 0, i32 1
  %31 = load i8**, i8*** %sqname, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %31, i64 %idxprom26
  %32 = load i8*, i8** %arrayidx27, align 8
  %33 = load float, float* %ident, align 4
  %conv28 = fpext float %33 to double
  %34 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load i32*, i32** %list, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 %idxprom29
  %36 = load i32, i32* %arrayidx30, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname32 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 1
  %38 = load i8**, i8*** %sqname32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %38, i64 %idxprom31
  %39 = load i8*, i8** %arrayidx33, align 8
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i8* %32, double %conv28, i8* %39)
  br label %for.end.37

if.end:                                           ; preds = %for.body.15
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end
  %40 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %40, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.12

for.end.37:                                       ; preds = %if.then, %for.cond.12
  %41 = load i32, i32* %remove, align 4
  %cmp38 = icmp eq i32 %41, 0
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %for.end.37
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %nnew, align 4
  %inc41 = add nsw i32 %43, 1
  store i32 %inc41, i32* %nnew, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i32*, i32** %list, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %44, i64 %idxprom42
  store i32 %42, i32* %arrayidx43, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %45 to i64
  %46 = load i32*, i32** %useme, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %46, i64 %idxprom44
  store i32 1, i32* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %for.end.37
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %47 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %47, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.7

for.end.49:                                       ; preds = %for.cond.7
  %48 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %49 = load i32*, i32** %useme, align 8
  %50 = load %struct.msa_struct**, %struct.msa_struct*** %ret_new.addr, align 8
  call void @MSASmallerAlignment(%struct.msa_struct* %48, i32* %49, %struct.msa_struct** %50)
  %51 = load i32*, i32** %list, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52) #3
  %53 = load i32*, i32** %useme, align 8
  %54 = bitcast i32* %53 to i8*
  call void @free(i8* %54) #3
  ret void
}

declare float @PairwiseIdentity(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #1

; Function Attrs: nounwind uwtable
define void @SampleAlignment(%struct.msa_struct* %msa, i32 %sample, %struct.msa_struct** %ret_new) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %sample.addr = alloca i32, align 4
  %ret_new.addr = alloca %struct.msa_struct**, align 8
  %list = alloca i32*, align 8
  %useme = alloca i32*, align 8
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i32 %sample, i32* %sample.addr, align 4
  store %struct.msa_struct** %ret_new, %struct.msa_struct*** %ret_new.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 596, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %list, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %nseq1, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 597, i64 %mul3)
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %useme, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq5 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %nseq5, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %list, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %9, i32* %arrayidx, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %useme, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %sample.addr, align 4
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq9 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 4
  %17 = load i32, i32* %nseq9, align 4
  %cmp10 = icmp sge i32 %15, %17
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %18, i32 0, i32 4
  %19 = load i32, i32* %nseq12, align 4
  store i32 %19, i32* %sample.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 4
  %21 = load i32, i32* %nseq13, align 4
  store i32 %21, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.37, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %sample.addr, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body.17, label %for.end.39

for.body.17:                                      ; preds = %for.cond.14
  %call18 = call double @sre_random()
  %24 = load i32, i32* %len, align 4
  %conv19 = sitofp i32 %24 to double
  %mul20 = fmul double %call18, %conv19
  %conv21 = fptosi double %mul20 to i32
  store i32 %conv21, i32* %idx, align 4
  %25 = load i32, i32* %idx, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load i32*, i32** %list, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom22
  %27 = load i32, i32* %arrayidx23, align 4
  %28 = load i32, i32* %idx, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load i32*, i32** %list, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 %idxprom24
  %30 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 1
  %32 = load i8**, i8*** %sqname, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %32, i64 %idxprom26
  %33 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %27, i8* %33)
  %34 = load i32, i32* %idx, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load i32*, i32** %list, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 %idxprom29
  %36 = load i32, i32* %arrayidx30, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load i32*, i32** %useme, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %37, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4
  %38 = load i32, i32* %len, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %len, align 4
  %idxprom33 = sext i32 %dec to i64
  %39 = load i32*, i32** %list, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %41 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i32*, i32** %list, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %42, i64 %idxprom35
  store i32 %40, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.17
  %43 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.14

for.end.39:                                       ; preds = %for.cond.14
  %44 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %45 = load i32*, i32** %useme, align 8
  %46 = load %struct.msa_struct**, %struct.msa_struct*** %ret_new.addr, align 8
  call void @MSASmallerAlignment(%struct.msa_struct* %44, i32* %45, %struct.msa_struct** %46)
  %47 = load i32*, i32** %list, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #3
  %49 = load i32*, i32** %useme, align 8
  %50 = bitcast i32* %49 to i8*
  call void @free(i8* %50) #3
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
