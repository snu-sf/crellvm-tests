; ModuleID = 'alignio.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"alignio.c\00", align 1
@squid_errno = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%*s%-10.10s %5d %s %5d\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%*s                 %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @AllocAlignment(i32 %nseq, i32 %alen, i8*** %ret_aseq, %struct.aliinfo_s* %ainfo) #0 {
entry:
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %ret_aseq.addr = alloca i8***, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %aseq = alloca i8**, align 8
  %idx = alloca i32, align 4
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store i8*** %ret_aseq, i8**** %ret_aseq.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  %0 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  call void @InitAinfo(%struct.aliinfo_s* %0)
  %1 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 50, i64 %mul)
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %aseq, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %idx, align 4
  %4 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %5, 1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 1, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 52, i64 %mul3)
  %6 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %aseq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* %call4, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %alen.addr, align 4
  %10 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %alen5 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %10, i32 0, i32 1
  store i32 %9, i32* %alen5, align 4
  %11 = load i32, i32* %nseq.addr, align 4
  %12 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq6 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %12, i32 0, i32 2
  store i32 %11, i32* %nseq6, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %conv7 = sext i32 %13 to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 57, i64 %mul8)
  %14 = bitcast i8* %call9 to float*
  %15 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %wgt = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %15, i32 0, i32 3
  store float* %14, float** %wgt, align 8
  %16 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %wgt10 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %16, i32 0, i32 3
  %17 = load float*, float** %wgt10, align 8
  %18 = load i32, i32* %nseq.addr, align 4
  call void @FSet(float* %17, i32 %18, float 1.000000e+00)
  %19 = load i32, i32* %nseq.addr, align 4
  %conv11 = sext i32 %19 to i64
  %mul12 = mul i64 360, %conv11
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 60, i64 %mul12)
  %20 = bitcast i8* %call13 to %struct.seqinfo_s*
  %21 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %21, i32 0, i32 6
  store %struct.seqinfo_s* %20, %struct.seqinfo_s** %sqinfo, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %for.end
  %22 = load i32, i32* %idx, align 4
  %23 = load i32, i32* %nseq.addr, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body.17, label %for.end.23

for.body.17:                                      ; preds = %for.cond.14
  %24 = load i32, i32* %idx, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo19 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %25, i32 0, i32 6
  %26 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo19, align 8
  %arrayidx20 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %26, i64 %idxprom18
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx20, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.17
  %27 = load i32, i32* %idx, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %idx, align 4
  br label %for.cond.14

for.end.23:                                       ; preds = %for.cond.14
  %28 = load i8**, i8*** %aseq, align 8
  %29 = load i8***, i8**** %ret_aseq.addr, align 8
  store i8** %28, i8*** %29, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @InitAinfo(%struct.aliinfo_s* %ainfo) #0 {
entry:
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  %0 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %name = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %0, i32 0, i32 7
  store i8* null, i8** %name, align 8
  %1 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %desc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1, i32 0, i32 8
  store i8* null, i8** %desc, align 8
  %2 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %2, i32 0, i32 4
  store i8* null, i8** %cs, align 8
  %3 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %3, i32 0, i32 5
  store i8* null, i8** %rf, align 8
  %4 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %acc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %4, i32 0, i32 9
  store i8* null, i8** %acc, align 8
  %5 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %au = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %5, i32 0, i32 10
  store i8* null, i8** %au, align 8
  %6 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %flags = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %6, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %7 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %tc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %7, i32 0, i32 12
  store float 0.000000e+00, float* %tc2, align 4
  %8 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %tc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %8, i32 0, i32 11
  store float 0.000000e+00, float* %tc1, align 4
  %9 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nc2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %9, i32 0, i32 14
  store float 0.000000e+00, float* %nc2, align 4
  %10 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nc1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %10, i32 0, i32 13
  store float 0.000000e+00, float* %nc1, align 4
  %11 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %ga2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %11, i32 0, i32 16
  store float 0.000000e+00, float* %ga2, align 4
  %12 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %ga1 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %12, i32 0, i32 15
  store float 0.000000e+00, float* %ga1, align 4
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @FreeAlignment(i8** %aseqs, %struct.aliinfo_s* %ainfo) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %i = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %1, i32 0, i32 2
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %4, i32 0, i32 6
  %5 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo, align 8
  %arrayidx = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %5, i64 %idxprom
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo2 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %8, i32 0, i32 6
  %9 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo2, align 8
  %arrayidx3 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %9, i64 %idxprom1
  %ss = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx3, i32 0, i32 10
  %10 = load i8*, i8** %ss, align 8
  call void @free(i8* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo5 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %12, i32 0, i32 6
  %13 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo5, align 8
  %arrayidx6 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %13, i64 %idxprom4
  %flags7 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %flags7, align 4
  %and8 = and i32 %14, 1024
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo12 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %16, i32 0, i32 6
  %17 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo12, align 8
  %arrayidx13 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %17, i64 %idxprom11
  %sa = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx13, i32 0, i32 11
  %18 = load i8*, i8** %sa, align 8
  call void @free(i8* %18) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %20, i32 0, i32 4
  %21 = load i8*, i8** %cs, align 8
  %cmp15 = icmp ne i8* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %22 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs17 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %22, i32 0, i32 4
  %23 = load i8*, i8** %cs17, align 8
  call void @free(i8* %23) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %24 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %24, i32 0, i32 5
  %25 = load i8*, i8** %rf, align 8
  %cmp19 = icmp ne i8* %25, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %26 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf21 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %26, i32 0, i32 5
  %27 = load i8*, i8** %rf21, align 8
  call void @free(i8* %27) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %28 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %name = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %28, i32 0, i32 7
  %29 = load i8*, i8** %name, align 8
  %cmp23 = icmp ne i8* %29, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %30 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %name25 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %30, i32 0, i32 7
  %31 = load i8*, i8** %name25, align 8
  call void @free(i8* %31) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  %32 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %desc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %32, i32 0, i32 8
  %33 = load i8*, i8** %desc, align 8
  %cmp27 = icmp ne i8* %33, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %34 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %desc29 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %34, i32 0, i32 8
  %35 = load i8*, i8** %desc29, align 8
  call void @free(i8* %35) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %36 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %acc = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %36, i32 0, i32 9
  %37 = load i8*, i8** %acc, align 8
  %cmp31 = icmp ne i8* %37, null
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %38 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %acc33 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %38, i32 0, i32 9
  %39 = load i8*, i8** %acc33, align 8
  call void @free(i8* %39) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %40 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %au = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %40, i32 0, i32 10
  %41 = load i8*, i8** %au, align 8
  %cmp35 = icmp ne i8* %41, null
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %42 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %au37 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %42, i32 0, i32 10
  %43 = load i8*, i8** %au37, align 8
  call void @free(i8* %43) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  %44 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo39 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %44, i32 0, i32 6
  %45 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo39, align 8
  %46 = bitcast %struct.seqinfo_s* %45 to i8*
  call void @free(i8* %46) #5
  %47 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %wgt = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %47, i32 0, i32 3
  %48 = load float*, float** %wgt, align 8
  %49 = bitcast float* %48 to i8*
  call void @free(i8* %49) #5
  %50 = load i8**, i8*** %aseqs.addr, align 8
  %51 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq40 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %51, i32 0, i32 2
  %52 = load i32, i32* %nseq40, align 4
  call void @Free2DArray(i8** %50, i32 %52)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind uwtable
define void @SAMizeAlignment(i8** %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %sawlower = alloca i32, align 4
  %sawupper = alloca i32, align 4
  %sawgap = alloca i32, align 4
  %gapchar = alloca i8, align 1
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.118, %entry
  %0 = load i32, i32* %col, align 4
  %1 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.120

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sawgap, align 4
  store i32 0, i32* %sawupper, align 4
  store i32 0, i32* %sawlower, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %col, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %9 = load i32, i32* %col, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %col, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %16, i64 %idxprom17
  %17 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 95
  br i1 %cmp21, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %col, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %21, i64 %idxprom25
  %22 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom24
  %23 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.23
  %24 = load i32, i32* %col, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 %idxprom33
  %27 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom32
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp eq i32 %conv36, 126
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.23, %lor.lhs.false.15, %lor.lhs.false, %for.body.3
  store i32 1, i32* %sawgap, align 4
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.31
  %29 = load i32, i32* %col, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %31, i64 %idxprom40
  %32 = load i8*, i8** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 %idxprom39
  %33 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %33 to i32
  %idxprom44 = sext i32 %conv43 to i64
  %call = call i16** @__ctype_b_loc() #6
  %34 = load i16*, i16** %call, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %34, i64 %idxprom44
  %35 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %35 to i32
  %and = and i32 %conv46, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end
  store i32 1, i32* %sawupper, align 4
  br label %for.inc

if.end.48:                                        ; preds = %if.end
  %36 = load i32, i32* %col, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %38, i64 %idxprom50
  %39 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %39, i64 %idxprom49
  %40 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %40 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %call55 = call i16** @__ctype_b_loc() #6
  %41 = load i16*, i16** %call55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %41, i64 %idxprom54
  %42 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %42 to i32
  %and58 = and i32 %conv57, 512
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.48
  store i32 1, i32* %sawlower, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.61, %if.then.47, %if.then
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i8 45, i8* %gapchar, align 1
  %44 = load i32, i32* %sawlower, align 4
  %tobool62 = icmp ne i32 %44, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %for.end
  %45 = load i32, i32* %sawupper, align 4
  %tobool63 = icmp ne i32 %45, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true
  store i8 46, i8* %gapchar, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.115, %if.end.65
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %nseq.addr, align 4
  %cmp67 = icmp slt i32 %46, %47
  br i1 %cmp67, label %for.body.69, label %for.end.117

for.body.69:                                      ; preds = %for.cond.66
  %48 = load i32, i32* %col, align 4
  %idxprom70 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %50, i64 %idxprom71
  %51 = load i8*, i8** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %51, i64 %idxprom70
  %52 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %52 to i32
  %cmp75 = icmp eq i32 %conv74, 32
  br i1 %cmp75, label %if.then.109, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %for.body.69
  %53 = load i32, i32* %col, align 4
  %idxprom78 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %54 to i64
  %55 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %55, i64 %idxprom79
  %56 = load i8*, i8** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %56, i64 %idxprom78
  %57 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %57 to i32
  %cmp83 = icmp eq i32 %conv82, 46
  br i1 %cmp83, label %if.then.109, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.77
  %58 = load i32, i32* %col, align 4
  %idxprom86 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %59 to i64
  %60 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %60, i64 %idxprom87
  %61 = load i8*, i8** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %61, i64 %idxprom86
  %62 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %62 to i32
  %cmp91 = icmp eq i32 %conv90, 95
  br i1 %cmp91, label %if.then.109, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.85
  %63 = load i32, i32* %col, align 4
  %idxprom94 = sext i32 %63 to i64
  %64 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %64 to i64
  %65 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %65, i64 %idxprom95
  %66 = load i8*, i8** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %66, i64 %idxprom94
  %67 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %67 to i32
  %cmp99 = icmp eq i32 %conv98, 45
  br i1 %cmp99, label %if.then.109, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.93
  %68 = load i32, i32* %col, align 4
  %idxprom102 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %69 to i64
  %70 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %70, i64 %idxprom103
  %71 = load i8*, i8** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %71, i64 %idxprom102
  %72 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %72 to i32
  %cmp107 = icmp eq i32 %conv106, 126
  br i1 %cmp107, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %lor.lhs.false.101, %lor.lhs.false.93, %lor.lhs.false.85, %lor.lhs.false.77, %for.body.69
  %73 = load i8, i8* %gapchar, align 1
  %74 = load i32, i32* %col, align 4
  %idxprom110 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %75 to i64
  %76 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %76, i64 %idxprom111
  %77 = load i8*, i8** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %77, i64 %idxprom110
  store i8 %73, i8* %arrayidx113, align 1
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %lor.lhs.false.101
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %78 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %78, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.66

for.end.117:                                      ; preds = %for.cond.66
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117
  %79 = load i32, i32* %col, align 4
  %inc119 = add nsw i32 %79, 1
  store i32 %inc119, i32* %col, align 4
  br label %for.cond

for.end.120:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define void @SAMizeAlignmentByGapFrac(i8** %aseq, i32 %nseq, i32 %alen, float %maxgap) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %maxgap.addr = alloca float, align 4
  %apos = alloca i32, align 4
  %idx = alloca i32, align 4
  %ngap = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store float %maxgap, float* %maxgap.addr, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.173, %entry
  %0 = load i32, i32* %apos, align 4
  %1 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ngap, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %9 = load i32, i32* %apos, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %idx, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %apos, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32, i32* %idx, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %16, i64 %idxprom17
  %17 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 95
  br i1 %cmp21, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %apos, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32, i32* %idx, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %21, i64 %idxprom25
  %22 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom24
  %23 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.23
  %24 = load i32, i32* %apos, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %idx, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 %idxprom33
  %27 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom32
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp eq i32 %conv36, 126
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.23, %lor.lhs.false.15, %lor.lhs.false, %for.body.3
  %29 = load i32, i32* %ngap, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %ngap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %idx, align 4
  %inc39 = add nsw i32 %30, 1
  store i32 %inc39, i32* %idx, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %31 = load i32, i32* %ngap, align 4
  %conv40 = sitofp i32 %31 to float
  %32 = load i32, i32* %nseq.addr, align 4
  %conv41 = sitofp i32 %32 to float
  %div = fdiv float %conv40, %conv41
  %33 = load float, float* %maxgap.addr, align 4
  %cmp42 = fcmp ogt float %div, %33
  br i1 %cmp42, label %if.then.44, label %if.else.107

if.then.44:                                       ; preds = %for.end
  store i32 0, i32* %idx, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.104, %if.then.44
  %34 = load i32, i32* %idx, align 4
  %35 = load i32, i32* %nseq.addr, align 4
  %cmp46 = icmp slt i32 %34, %35
  br i1 %cmp46, label %for.body.48, label %for.end.106

for.body.48:                                      ; preds = %for.cond.45
  %36 = load i32, i32* %apos, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %38, i64 %idxprom50
  %39 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %39, i64 %idxprom49
  %40 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %40 to i32
  %cmp54 = icmp eq i32 %conv53, 32
  br i1 %cmp54, label %if.then.88, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %for.body.48
  %41 = load i32, i32* %apos, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load i32, i32* %idx, align 4
  %idxprom58 = sext i32 %42 to i64
  %43 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %43, i64 %idxprom58
  %44 = load i8*, i8** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %44, i64 %idxprom57
  %45 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %45 to i32
  %cmp62 = icmp eq i32 %conv61, 46
  br i1 %cmp62, label %if.then.88, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.56
  %46 = load i32, i32* %apos, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load i32, i32* %idx, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %48, i64 %idxprom66
  %49 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  %50 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %50 to i32
  %cmp70 = icmp eq i32 %conv69, 95
  br i1 %cmp70, label %if.then.88, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.64
  %51 = load i32, i32* %apos, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load i32, i32* %idx, align 4
  %idxprom74 = sext i32 %52 to i64
  %53 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %53, i64 %idxprom74
  %54 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %54, i64 %idxprom73
  %55 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %55 to i32
  %cmp78 = icmp eq i32 %conv77, 45
  br i1 %cmp78, label %if.then.88, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.72
  %56 = load i32, i32* %apos, align 4
  %idxprom81 = sext i32 %56 to i64
  %57 = load i32, i32* %idx, align 4
  %idxprom82 = sext i32 %57 to i64
  %58 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %58, i64 %idxprom82
  %59 = load i8*, i8** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %59, i64 %idxprom81
  %60 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %60 to i32
  %cmp86 = icmp eq i32 %conv85, 126
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.72, %lor.lhs.false.64, %lor.lhs.false.56, %for.body.48
  %61 = load i32, i32* %apos, align 4
  %idxprom89 = sext i32 %61 to i64
  %62 = load i32, i32* %idx, align 4
  %idxprom90 = sext i32 %62 to i64
  %63 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %63, i64 %idxprom90
  %64 = load i8*, i8** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %64, i64 %idxprom89
  store i8 46, i8* %arrayidx92, align 1
  br label %if.end.103

if.else:                                          ; preds = %lor.lhs.false.80
  %65 = load i32, i32* %apos, align 4
  %idxprom93 = sext i32 %65 to i64
  %66 = load i32, i32* %idx, align 4
  %idxprom94 = sext i32 %66 to i64
  %67 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %67, i64 %idxprom94
  %68 = load i8*, i8** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %68, i64 %idxprom93
  %69 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %69 to i32
  %call = call i32 @tolower(i32 %conv97) #5
  %conv98 = trunc i32 %call to i8
  %70 = load i32, i32* %apos, align 4
  %idxprom99 = sext i32 %70 to i64
  %71 = load i32, i32* %idx, align 4
  %idxprom100 = sext i32 %71 to i64
  %72 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %72, i64 %idxprom100
  %73 = load i8*, i8** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %73, i64 %idxprom99
  store i8 %conv98, i8* %arrayidx102, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.then.88
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %74 = load i32, i32* %idx, align 4
  %inc105 = add nsw i32 %74, 1
  store i32 %inc105, i32* %idx, align 4
  br label %for.cond.45

for.end.106:                                      ; preds = %for.cond.45
  br label %if.end.172

if.else.107:                                      ; preds = %for.end
  store i32 0, i32* %idx, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.169, %if.else.107
  %75 = load i32, i32* %idx, align 4
  %76 = load i32, i32* %nseq.addr, align 4
  %cmp109 = icmp slt i32 %75, %76
  br i1 %cmp109, label %for.body.111, label %for.end.171

for.body.111:                                     ; preds = %for.cond.108
  %77 = load i32, i32* %apos, align 4
  %idxprom112 = sext i32 %77 to i64
  %78 = load i32, i32* %idx, align 4
  %idxprom113 = sext i32 %78 to i64
  %79 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %79, i64 %idxprom113
  %80 = load i8*, i8** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %80, i64 %idxprom112
  %81 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %81 to i32
  %cmp117 = icmp eq i32 %conv116, 32
  br i1 %cmp117, label %if.then.151, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %for.body.111
  %82 = load i32, i32* %apos, align 4
  %idxprom120 = sext i32 %82 to i64
  %83 = load i32, i32* %idx, align 4
  %idxprom121 = sext i32 %83 to i64
  %84 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %84, i64 %idxprom121
  %85 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %85, i64 %idxprom120
  %86 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %86 to i32
  %cmp125 = icmp eq i32 %conv124, 46
  br i1 %cmp125, label %if.then.151, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.119
  %87 = load i32, i32* %apos, align 4
  %idxprom128 = sext i32 %87 to i64
  %88 = load i32, i32* %idx, align 4
  %idxprom129 = sext i32 %88 to i64
  %89 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %89, i64 %idxprom129
  %90 = load i8*, i8** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %90, i64 %idxprom128
  %91 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %91 to i32
  %cmp133 = icmp eq i32 %conv132, 95
  br i1 %cmp133, label %if.then.151, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.127
  %92 = load i32, i32* %apos, align 4
  %idxprom136 = sext i32 %92 to i64
  %93 = load i32, i32* %idx, align 4
  %idxprom137 = sext i32 %93 to i64
  %94 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %94, i64 %idxprom137
  %95 = load i8*, i8** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %95, i64 %idxprom136
  %96 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %96 to i32
  %cmp141 = icmp eq i32 %conv140, 45
  br i1 %cmp141, label %if.then.151, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.135
  %97 = load i32, i32* %apos, align 4
  %idxprom144 = sext i32 %97 to i64
  %98 = load i32, i32* %idx, align 4
  %idxprom145 = sext i32 %98 to i64
  %99 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %99, i64 %idxprom145
  %100 = load i8*, i8** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %100, i64 %idxprom144
  %101 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %101 to i32
  %cmp149 = icmp eq i32 %conv148, 126
  br i1 %cmp149, label %if.then.151, label %if.else.156

if.then.151:                                      ; preds = %lor.lhs.false.143, %lor.lhs.false.135, %lor.lhs.false.127, %lor.lhs.false.119, %for.body.111
  %102 = load i32, i32* %apos, align 4
  %idxprom152 = sext i32 %102 to i64
  %103 = load i32, i32* %idx, align 4
  %idxprom153 = sext i32 %103 to i64
  %104 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %104, i64 %idxprom153
  %105 = load i8*, i8** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %105, i64 %idxprom152
  store i8 45, i8* %arrayidx155, align 1
  br label %if.end.168

if.else.156:                                      ; preds = %lor.lhs.false.143
  %106 = load i32, i32* %apos, align 4
  %idxprom157 = sext i32 %106 to i64
  %107 = load i32, i32* %idx, align 4
  %idxprom158 = sext i32 %107 to i64
  %108 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %108, i64 %idxprom158
  %109 = load i8*, i8** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %109, i64 %idxprom157
  %110 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %110 to i32
  %call162 = call i32 @toupper(i32 %conv161) #5
  %conv163 = trunc i32 %call162 to i8
  %111 = load i32, i32* %apos, align 4
  %idxprom164 = sext i32 %111 to i64
  %112 = load i32, i32* %idx, align 4
  %idxprom165 = sext i32 %112 to i64
  %113 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %113, i64 %idxprom165
  %114 = load i8*, i8** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %114, i64 %idxprom164
  store i8 %conv163, i8* %arrayidx167, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.156, %if.then.151
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %115 = load i32, i32* %idx, align 4
  %inc170 = add nsw i32 %115, 1
  store i32 %inc170, i32* %idx, align 4
  br label %for.cond.108

for.end.171:                                      ; preds = %for.cond.108
  br label %if.end.172

if.end.172:                                       ; preds = %for.end.171, %for.end.106
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.172
  %116 = load i32, i32* %apos, align 4
  %inc174 = add nsw i32 %116, 1
  store i32 %inc174, i32* %apos, align 4
  br label %for.cond

for.end.175:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i32 @MakeAlignedString(i8* %aseq, i32 %alen, i8* %ss, i8** %ret_s) #0 {
entry:
  %retval = alloca i32, align 4
  %aseq.addr = alloca i8*, align 8
  %alen.addr = alloca i32, align 4
  %ss.addr = alloca i8*, align 8
  %ret_s.addr = alloca i8**, align 8
  %new = alloca i8*, align 8
  %apos = alloca i32, align 4
  %rpos = alloca i32, align 4
  store i8* %aseq, i8** %aseq.addr, align 8
  store i32 %alen, i32* %alen.addr, align 4
  store i8* %ss, i8** %ss.addr, align 8
  store i8** %ret_s, i8*** %ret_s.addr, align 8
  %0 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 242, i64 %mul)
  store i8* %call, i8** %new, align 8
  store i32 0, i32* %rpos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %apos, align 4
  %2 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %apos, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8*, i8** %aseq.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.else, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %9 = load i32, i32* %apos, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i8*, i8** %aseq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br i1 %cmp14, label %if.else, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %apos, align 4
  %idxprom17 = sext i32 %12 to i64
  %13 = load i8*, i8** %aseq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 45
  br i1 %cmp20, label %if.else, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.16
  %15 = load i32, i32* %apos, align 4
  %idxprom23 = sext i32 %15 to i64
  %16 = load i8*, i8** %aseq.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 126
  br i1 %cmp26, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.22
  %18 = load i32, i32* %rpos, align 4
  %idxprom28 = sext i32 %18 to i64
  %19 = load i8*, i8** %ss.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i64 %idxprom28
  %20 = load i8, i8* %arrayidx29, align 1
  %21 = load i32, i32* %apos, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i8*, i8** %new, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 %idxprom30
  store i8 %20, i8* %arrayidx31, align 1
  %23 = load i32, i32* %rpos, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %rpos, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.22, %lor.lhs.false.16, %lor.lhs.false.10, %lor.lhs.false, %for.body
  %24 = load i32, i32* %apos, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i8*, i8** %new, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 %idxprom32
  store i8 46, i8* %arrayidx33, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %apos, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %apos, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i8*, i8** %new, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  %29 = load i32, i32* %rpos, align 4
  %conv37 = sext i32 %29 to i64
  %30 = load i8*, i8** %ss.addr, align 8
  %call38 = call i64 @strlen(i8* %30) #7
  %cmp39 = icmp ne i64 %conv37, %call38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4
  %31 = load i8*, i8** %new, align 8
  call void @free(i8* %31) #5
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.end
  %32 = load i8*, i8** %new, align 8
  %33 = load i8**, i8*** %ret_s.addr, align 8
  store i8* %32, i8** %33, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.41
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @MakeDealignedString(i8* %aseq, i32 %alen, i8* %ss, i8** %ret_s) #0 {
entry:
  %retval = alloca i32, align 4
  %aseq.addr = alloca i8*, align 8
  %alen.addr = alloca i32, align 4
  %ss.addr = alloca i8*, align 8
  %ret_s.addr = alloca i8**, align 8
  %new = alloca i8*, align 8
  %apos = alloca i32, align 4
  %rpos = alloca i32, align 4
  store i8* %aseq, i8** %aseq.addr, align 8
  store i32 %alen, i32* %alen.addr, align 4
  store i8* %ss, i8** %ss.addr, align 8
  store i8** %ret_s, i8*** %ret_s.addr, align 8
  %0 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 280, i64 %mul)
  store i8* %call, i8** %new, align 8
  store i32 0, i32* %rpos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %apos, align 4
  %2 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %apos, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8*, i8** %aseq.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %9 = load i32, i32* %apos, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i8*, i8** %aseq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br i1 %cmp14, label %if.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %apos, align 4
  %idxprom17 = sext i32 %12 to i64
  %13 = load i8*, i8** %aseq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 45
  br i1 %cmp20, label %if.end, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.16
  %15 = load i32, i32* %apos, align 4
  %idxprom23 = sext i32 %15 to i64
  %16 = load i8*, i8** %aseq.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 126
  br i1 %cmp26, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.22
  %18 = load i32, i32* %apos, align 4
  %idxprom28 = sext i32 %18 to i64
  %19 = load i8*, i8** %ss.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i64 %idxprom28
  %20 = load i8, i8* %arrayidx29, align 1
  %21 = load i32, i32* %rpos, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i8*, i8** %new, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 %idxprom30
  store i8 %20, i8* %arrayidx31, align 1
  %23 = load i32, i32* %rpos, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %rpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.22, %lor.lhs.false.16, %lor.lhs.false.10, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %apos, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %rpos, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8*, i8** %new, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  %27 = load i32, i32* %alen.addr, align 4
  %conv35 = sext i32 %27 to i64
  %28 = load i8*, i8** %ss.addr, align 8
  %call36 = call i64 @strlen(i8* %28) #7
  %cmp37 = icmp ne i64 %conv35, %call36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  store i32 6, i32* @squid_errno, align 4
  %29 = load i8*, i8** %new, align 8
  call void @free(i8* %29) #5
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  %30 = load i8*, i8** %new, align 8
  %31 = load i8**, i8*** %ret_s.addr, align 8
  store i8* %30, i8** %31, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @DealignedLength(i8* %aseq) #0 {
entry:
  %aseq.addr = alloca i8*, align 8
  %rlen = alloca i32, align 4
  store i8* %aseq, i8** %aseq.addr, align 8
  store i32 0, i32* %rlen, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %aseq.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %aseq.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %aseq.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 46
  br i1 %cmp3, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %aseq.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 95
  br i1 %cmp7, label %if.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %8 = load i8*, i8** %aseq.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 45
  br i1 %cmp11, label %if.end, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %10 = load i8*, i8** %aseq.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 126
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %rlen, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %rlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i8*, i8** %aseq.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %aseq.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %rlen, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @WritePairwiseAlignment(%struct._IO_FILE* %ofp, i8* %aseq1, i8* %name1, i32 %spos1, i8* %aseq2, i8* %name2, i32 %spos2, i32** %pam, i32 %indent) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %aseq1.addr = alloca i8*, align 8
  %name1.addr = alloca i8*, align 8
  %spos1.addr = alloca i32, align 4
  %aseq2.addr = alloca i8*, align 8
  %name2.addr = alloca i8*, align 8
  %spos2.addr = alloca i32, align 4
  %pam.addr = alloca i32**, align 8
  %indent.addr = alloca i32, align 4
  %sname1 = alloca [11 x i8], align 1
  %sname2 = alloca [11 x i8], align 1
  %still_going = alloca i32, align 4
  %buf1 = alloca [61 x i8], align 16
  %bufmid = alloca [61 x i8], align 16
  %buf2 = alloca [61 x i8], align 16
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %rpos1 = alloca i32, align 4
  %rpos2 = alloca i32, align 4
  %rawcount1 = alloca i32, align 4
  %rawcount2 = alloca i32, align 4
  %apos = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i8* %aseq1, i8** %aseq1.addr, align 8
  store i8* %name1, i8** %name1.addr, align 8
  store i32 %spos1, i32* %spos1.addr, align 4
  store i8* %aseq2, i8** %aseq2.addr, align 8
  store i8* %name2, i8** %name2.addr, align 8
  store i32 %spos2, i32* %spos2.addr, align 4
  store i32** %pam, i32*** %pam.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %sname1, i32 0, i32 0
  %0 = load i8*, i8** %name1.addr, align 8
  %call = call i8* @strncpy(i8* %arraydecay, i8* %0, i64 10) #5
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* %sname1, i32 0, i64 10
  store i8 0, i8* %arrayidx, align 1
  %arraydecay1 = getelementptr inbounds [11 x i8], [11 x i8]* %sname1, i32 0, i32 0
  %call2 = call i8* @strtok(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %arraydecay3 = getelementptr inbounds [11 x i8], [11 x i8]* %sname2, i32 0, i32 0
  %1 = load i8*, i8** %name2.addr, align 8
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %1, i64 10) #5
  %arrayidx5 = getelementptr inbounds [11 x i8], [11 x i8]* %sname2, i32 0, i64 10
  store i8 0, i8* %arrayidx5, align 1
  %arraydecay6 = getelementptr inbounds [11 x i8], [11 x i8]* %sname2, i32 0, i32 0
  %call7 = call i8* @strtok(i8* %arraydecay6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #5
  %2 = load i8*, i8** %aseq1.addr, align 8
  store i8* %2, i8** %s1, align 8
  %3 = load i8*, i8** %aseq2.addr, align 8
  store i8* %3, i8** %s2, align 8
  %4 = load i32, i32* %spos1.addr, align 4
  store i32 %4, i32* %rpos1, align 4
  %5 = load i32, i32* %spos2.addr, align 4
  store i32 %5, i32* %rpos2, align 4
  store i32 1, i32* %still_going, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.213, %entry
  %6 = load i32, i32* %still_going, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %still_going, align 4
  %arraydecay8 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i32 0
  %7 = load i8*, i8** %s1, align 8
  %call9 = call i8* @strncpy(i8* %arraydecay8, i8* %7, i64 60) #5
  %arrayidx10 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 60
  store i8 0, i8* %arrayidx10, align 1
  %arraydecay11 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i32 0
  %8 = load i8*, i8** %s2, align 8
  %call12 = call i8* @strncpy(i8* %arraydecay11, i8* %8, i64 60) #5
  %arrayidx13 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 60
  store i8 0, i8* %arrayidx13, align 1
  %arraydecay14 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i32 0
  %call15 = call i64 @strlen(i8* %arraydecay14) #7
  %conv = trunc i64 %call15 to i32
  store i32 %conv, i32* %count1, align 4
  %arraydecay16 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i32 0
  %call17 = call i64 @strlen(i8* %arraydecay16) #7
  %conv18 = trunc i64 %call17 to i32
  store i32 %conv18, i32* %count2, align 4
  %9 = load i32, i32* %count1, align 4
  %cmp = icmp eq i32 %9, 60
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %10 = load i8*, i8** %s1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %10, i64 60
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %11 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %12 = load i32, i32* %count2, align 4
  %cmp24 = icmp eq i32 %12, 60
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %lor.lhs.false
  %13 = load i8*, i8** %s2, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %13, i64 60
  %14 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %14 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.26, %land.lhs.true
  store i32 1, i32* %still_going, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.26, %lor.lhs.false
  %15 = load i32, i32* %count1, align 4
  %16 = load i8*, i8** %s1, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %s1, align 8
  %17 = load i32, i32* %count2, align 4
  %18 = load i8*, i8** %s2, align 8
  %idx.ext31 = sext i32 %17 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %18, i64 %idx.ext31
  store i8* %add.ptr32, i8** %s2, align 8
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %apos, align 4
  %20 = load i32, i32* %count1, align 4
  %cmp33 = icmp slt i32 %19, %20
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load i32, i32* %apos, align 4
  %22 = load i32, i32* %count2, align 4
  %cmp35 = icmp slt i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp35, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %25 to i32
  %cmp39 = icmp eq i32 %conv38, 32
  br i1 %cmp39, label %if.else.130, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %for.body
  %26 = load i32, i32* %apos, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom42
  %27 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp eq i32 %conv44, 46
  br i1 %cmp45, label %if.else.130, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.41
  %28 = load i32, i32* %apos, align 4
  %idxprom48 = sext i32 %28 to i64
  %arrayidx49 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom48
  %29 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %29 to i32
  %cmp51 = icmp eq i32 %conv50, 95
  br i1 %cmp51, label %if.else.130, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.47
  %30 = load i32, i32* %apos, align 4
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom54
  %31 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %31 to i32
  %cmp57 = icmp eq i32 %conv56, 45
  br i1 %cmp57, label %if.else.130, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53
  %32 = load i32, i32* %apos, align 4
  %idxprom60 = sext i32 %32 to i64
  %arrayidx61 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom60
  %33 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %33 to i32
  %cmp63 = icmp eq i32 %conv62, 126
  br i1 %cmp63, label %if.else.130, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %lor.lhs.false.59
  %34 = load i32, i32* %apos, align 4
  %idxprom66 = sext i32 %34 to i64
  %arrayidx67 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom66
  %35 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %35 to i32
  %cmp69 = icmp eq i32 %conv68, 32
  br i1 %cmp69, label %if.else.130, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.65
  %36 = load i32, i32* %apos, align 4
  %idxprom72 = sext i32 %36 to i64
  %arrayidx73 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom72
  %37 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %37 to i32
  %cmp75 = icmp eq i32 %conv74, 46
  br i1 %cmp75, label %if.else.130, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.71
  %38 = load i32, i32* %apos, align 4
  %idxprom78 = sext i32 %38 to i64
  %arrayidx79 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom78
  %39 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %39 to i32
  %cmp81 = icmp eq i32 %conv80, 95
  br i1 %cmp81, label %if.else.130, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.77
  %40 = load i32, i32* %apos, align 4
  %idxprom84 = sext i32 %40 to i64
  %arrayidx85 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom84
  %41 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %41 to i32
  %cmp87 = icmp eq i32 %conv86, 45
  br i1 %cmp87, label %if.else.130, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.83
  %42 = load i32, i32* %apos, align 4
  %idxprom90 = sext i32 %42 to i64
  %arrayidx91 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom90
  %43 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %43 to i32
  %cmp93 = icmp eq i32 %conv92, 126
  br i1 %cmp93, label %if.else.130, label %if.then.95

if.then.95:                                       ; preds = %lor.lhs.false.89
  %44 = load i32, i32* %apos, align 4
  %idxprom96 = sext i32 %44 to i64
  %arrayidx97 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom96
  %45 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %45 to i32
  %46 = load i32, i32* %apos, align 4
  %idxprom99 = sext i32 %46 to i64
  %arrayidx100 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom99
  %47 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %47 to i32
  %cmp102 = icmp eq i32 %conv98, %conv101
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %if.then.95
  %48 = load i32, i32* %apos, align 4
  %idxprom105 = sext i32 %48 to i64
  %arrayidx106 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom105
  %49 = load i8, i8* %arrayidx106, align 1
  %50 = load i32, i32* %apos, align 4
  %idxprom107 = sext i32 %50 to i64
  %arrayidx108 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i64 %idxprom107
  store i8 %49, i8* %arrayidx108, align 1
  br label %if.end.129

if.else:                                          ; preds = %if.then.95
  %51 = load i32, i32* %apos, align 4
  %idxprom109 = sext i32 %51 to i64
  %arrayidx110 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom109
  %52 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %52 to i32
  %sub = sub nsw i32 %conv111, 65
  %idxprom112 = sext i32 %sub to i64
  %53 = load i32, i32* %apos, align 4
  %idxprom113 = sext i32 %53 to i64
  %arrayidx114 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom113
  %54 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %54 to i32
  %sub116 = sub nsw i32 %conv115, 65
  %idxprom117 = sext i32 %sub116 to i64
  %55 = load i32**, i32*** %pam.addr, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %55, i64 %idxprom117
  %56 = load i32*, i32** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %56, i64 %idxprom112
  %57 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp sgt i32 %57, 0
  br i1 %cmp120, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %if.else
  %58 = load i32, i32* %apos, align 4
  %idxprom123 = sext i32 %58 to i64
  %arrayidx124 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i64 %idxprom123
  store i8 43, i8* %arrayidx124, align 1
  br label %if.end.128

if.else.125:                                      ; preds = %if.else
  %59 = load i32, i32* %apos, align 4
  %idxprom126 = sext i32 %59 to i64
  %arrayidx127 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i64 %idxprom126
  store i8 32, i8* %arrayidx127, align 1
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.122
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.104
  br label %if.end.133

if.else.130:                                      ; preds = %lor.lhs.false.89, %lor.lhs.false.83, %lor.lhs.false.77, %lor.lhs.false.71, %land.lhs.true.65, %lor.lhs.false.59, %lor.lhs.false.53, %lor.lhs.false.47, %lor.lhs.false.41, %for.body
  %60 = load i32, i32* %apos, align 4
  %idxprom131 = sext i32 %60 to i64
  %arrayidx132 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i64 %idxprom131
  store i8 32, i8* %arrayidx132, align 1
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.end.129
  br label %for.inc

for.inc:                                          ; preds = %if.end.133
  %61 = load i32, i32* %apos, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %62 = load i32, i32* %apos, align 4
  %idxprom134 = sext i32 %62 to i64
  %arrayidx135 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i64 %idxprom134
  store i8 0, i8* %arrayidx135, align 1
  store i32 0, i32* %rawcount1, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.172, %for.end
  %63 = load i32, i32* %apos, align 4
  %64 = load i32, i32* %count1, align 4
  %cmp137 = icmp slt i32 %63, %64
  br i1 %cmp137, label %for.body.139, label %for.end.174

for.body.139:                                     ; preds = %for.cond.136
  %65 = load i32, i32* %apos, align 4
  %idxprom140 = sext i32 %65 to i64
  %arrayidx141 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom140
  %66 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %66 to i32
  %cmp143 = icmp eq i32 %conv142, 32
  br i1 %cmp143, label %if.end.171, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %for.body.139
  %67 = load i32, i32* %apos, align 4
  %idxprom146 = sext i32 %67 to i64
  %arrayidx147 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom146
  %68 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %68 to i32
  %cmp149 = icmp eq i32 %conv148, 46
  br i1 %cmp149, label %if.end.171, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.145
  %69 = load i32, i32* %apos, align 4
  %idxprom152 = sext i32 %69 to i64
  %arrayidx153 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom152
  %70 = load i8, i8* %arrayidx153, align 1
  %conv154 = sext i8 %70 to i32
  %cmp155 = icmp eq i32 %conv154, 95
  br i1 %cmp155, label %if.end.171, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.151
  %71 = load i32, i32* %apos, align 4
  %idxprom158 = sext i32 %71 to i64
  %arrayidx159 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom158
  %72 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %72 to i32
  %cmp161 = icmp eq i32 %conv160, 45
  br i1 %cmp161, label %if.end.171, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.157
  %73 = load i32, i32* %apos, align 4
  %idxprom164 = sext i32 %73 to i64
  %arrayidx165 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i64 %idxprom164
  %74 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %74 to i32
  %cmp167 = icmp eq i32 %conv166, 126
  br i1 %cmp167, label %if.end.171, label %if.then.169

if.then.169:                                      ; preds = %lor.lhs.false.163
  %75 = load i32, i32* %rawcount1, align 4
  %inc170 = add nsw i32 %75, 1
  store i32 %inc170, i32* %rawcount1, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %lor.lhs.false.163, %lor.lhs.false.157, %lor.lhs.false.151, %lor.lhs.false.145, %for.body.139
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %76 = load i32, i32* %apos, align 4
  %inc173 = add nsw i32 %76, 1
  store i32 %inc173, i32* %apos, align 4
  br label %for.cond.136

for.end.174:                                      ; preds = %for.cond.136
  store i32 0, i32* %rawcount2, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.211, %for.end.174
  %77 = load i32, i32* %apos, align 4
  %78 = load i32, i32* %count2, align 4
  %cmp176 = icmp slt i32 %77, %78
  br i1 %cmp176, label %for.body.178, label %for.end.213

for.body.178:                                     ; preds = %for.cond.175
  %79 = load i32, i32* %apos, align 4
  %idxprom179 = sext i32 %79 to i64
  %arrayidx180 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom179
  %80 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %80 to i32
  %cmp182 = icmp eq i32 %conv181, 32
  br i1 %cmp182, label %if.end.210, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %for.body.178
  %81 = load i32, i32* %apos, align 4
  %idxprom185 = sext i32 %81 to i64
  %arrayidx186 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom185
  %82 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %82 to i32
  %cmp188 = icmp eq i32 %conv187, 46
  br i1 %cmp188, label %if.end.210, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %lor.lhs.false.184
  %83 = load i32, i32* %apos, align 4
  %idxprom191 = sext i32 %83 to i64
  %arrayidx192 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom191
  %84 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %84 to i32
  %cmp194 = icmp eq i32 %conv193, 95
  br i1 %cmp194, label %if.end.210, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %lor.lhs.false.190
  %85 = load i32, i32* %apos, align 4
  %idxprom197 = sext i32 %85 to i64
  %arrayidx198 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom197
  %86 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %86 to i32
  %cmp200 = icmp eq i32 %conv199, 45
  br i1 %cmp200, label %if.end.210, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.196
  %87 = load i32, i32* %apos, align 4
  %idxprom203 = sext i32 %87 to i64
  %arrayidx204 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i64 %idxprom203
  %88 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %88 to i32
  %cmp206 = icmp eq i32 %conv205, 126
  br i1 %cmp206, label %if.end.210, label %if.then.208

if.then.208:                                      ; preds = %lor.lhs.false.202
  %89 = load i32, i32* %rawcount2, align 4
  %inc209 = add nsw i32 %89, 1
  store i32 %inc209, i32* %rawcount2, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %lor.lhs.false.202, %lor.lhs.false.196, %lor.lhs.false.190, %lor.lhs.false.184, %for.body.178
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %90 = load i32, i32* %apos, align 4
  %inc212 = add nsw i32 %90, 1
  store i32 %inc212, i32* %apos, align 4
  br label %for.cond.175

for.end.213:                                      ; preds = %for.cond.175
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %92 = load i32, i32* %indent.addr, align 4
  %arraydecay214 = getelementptr inbounds [11 x i8], [11 x i8]* %sname1, i32 0, i32 0
  %93 = load i32, i32* %rpos1, align 4
  %arraydecay215 = getelementptr inbounds [61 x i8], [61 x i8]* %buf1, i32 0, i32 0
  %94 = load i32, i32* %rpos1, align 4
  %95 = load i32, i32* %rawcount1, align 4
  %add = add nsw i32 %94, %95
  %sub216 = sub nsw i32 %add, 1
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay214, i32 %93, i8* %arraydecay215, i32 %sub216)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %97 = load i32, i32* %indent.addr, align 4
  %arraydecay218 = getelementptr inbounds [61 x i8], [61 x i8]* %bufmid, i32 0, i32 0
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay218)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %99 = load i32, i32* %indent.addr, align 4
  %arraydecay220 = getelementptr inbounds [11 x i8], [11 x i8]* %sname2, i32 0, i32 0
  %100 = load i32, i32* %rpos2, align 4
  %arraydecay221 = getelementptr inbounds [61 x i8], [61 x i8]* %buf2, i32 0, i32 0
  %101 = load i32, i32* %rpos2, align 4
  %102 = load i32, i32* %rawcount2, align 4
  %add222 = add nsw i32 %101, %102
  %sub223 = sub nsw i32 %add222, 1
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay220, i32 %100, i8* %arraydecay221, i32 %sub223)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %104 = load i32, i32* %rawcount1, align 4
  %105 = load i32, i32* %rpos1, align 4
  %add226 = add nsw i32 %105, %104
  store i32 %add226, i32* %rpos1, align 4
  %106 = load i32, i32* %rawcount2, align 4
  %107 = load i32, i32* %rpos2, align 4
  %add227 = add nsw i32 %107, %106
  store i32 %add227, i32* %rpos2, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @MingapAlignment(i8** %aseqs, %struct.aliinfo_s* %ainfo) #0 {
entry:
  %aseqs.addr = alloca i8**, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %apos = alloca i32, align 4
  %mpos = alloca i32, align 4
  %idx = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %mpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %0 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %idx, align 4
  %5 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %5, i32 0, i32 2
  %6 = load i32, i32* %nseq, align 4
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %9, i64 %idxprom8
  %10 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 32
  br i1 %cmp12, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.6
  %12 = load i32, i32* %apos, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i32, i32* %idx, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %14, i64 %idxprom15
  %15 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 46
  br i1 %cmp19, label %if.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %apos, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %19, i64 %idxprom23
  %20 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom22
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 95
  br i1 %cmp27, label %if.end, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.21
  %22 = load i32, i32* %apos, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load i32, i32* %idx, align 4
  %idxprom31 = sext i32 %23 to i64
  %24 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %24, i64 %idxprom31
  %25 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 %idxprom30
  %26 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %26 to i32
  %cmp35 = icmp eq i32 %conv34, 45
  br i1 %cmp35, label %if.end, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.29
  %27 = load i32, i32* %apos, align 4
  %idxprom38 = sext i32 %27 to i64
  %28 = load i32, i32* %idx, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %29, i64 %idxprom39
  %30 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  %31 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, 126
  br i1 %cmp43, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.37
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.37, %lor.lhs.false.29, %lor.lhs.false.21, %lor.lhs.false, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then, %for.cond.3
  %33 = load i32, i32* %idx, align 4
  %34 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq45 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %34, i32 0, i32 2
  %35 = load i32, i32* %nseq45, align 4
  %cmp46 = icmp eq i32 %33, %35
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  br label %for.inc.91

if.end.49:                                        ; preds = %for.end
  %36 = load i32, i32* %mpos, align 4
  %37 = load i32, i32* %apos, align 4
  %cmp50 = icmp ne i32 %36, %37
  br i1 %cmp50, label %if.then.52, label %if.end.89

if.then.52:                                       ; preds = %if.end.49
  store i32 0, i32* %idx, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %if.then.52
  %38 = load i32, i32* %idx, align 4
  %39 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq54 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %39, i32 0, i32 2
  %40 = load i32, i32* %nseq54, align 4
  %cmp55 = icmp slt i32 %38, %40
  br i1 %cmp55, label %for.body.57, label %for.end.68

for.body.57:                                      ; preds = %for.cond.53
  %41 = load i32, i32* %apos, align 4
  %idxprom58 = sext i32 %41 to i64
  %42 = load i32, i32* %idx, align 4
  %idxprom59 = sext i32 %42 to i64
  %43 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %43, i64 %idxprom59
  %44 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %44, i64 %idxprom58
  %45 = load i8, i8* %arrayidx61, align 1
  %46 = load i32, i32* %mpos, align 4
  %idxprom62 = sext i32 %46 to i64
  %47 = load i32, i32* %idx, align 4
  %idxprom63 = sext i32 %47 to i64
  %48 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %48, i64 %idxprom63
  %49 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %49, i64 %idxprom62
  store i8 %45, i8* %arrayidx65, align 1
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.57
  %50 = load i32, i32* %idx, align 4
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, i32* %idx, align 4
  br label %for.cond.53

for.end.68:                                       ; preds = %for.cond.53
  %51 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %51, i32 0, i32 4
  %52 = load i8*, i8** %cs, align 8
  %cmp69 = icmp ne i8* %52, null
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %for.end.68
  %53 = load i32, i32* %apos, align 4
  %idxprom72 = sext i32 %53 to i64
  %54 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs73 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %54, i32 0, i32 4
  %55 = load i8*, i8** %cs73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %55, i64 %idxprom72
  %56 = load i8, i8* %arrayidx74, align 1
  %57 = load i32, i32* %mpos, align 4
  %idxprom75 = sext i32 %57 to i64
  %58 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs76 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %58, i32 0, i32 4
  %59 = load i8*, i8** %cs76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %59, i64 %idxprom75
  store i8 %56, i8* %arrayidx77, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %for.end.68
  %60 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %60, i32 0, i32 5
  %61 = load i8*, i8** %rf, align 8
  %cmp79 = icmp ne i8* %61, null
  br i1 %cmp79, label %if.then.81, label %if.end.88

if.then.81:                                       ; preds = %if.end.78
  %62 = load i32, i32* %apos, align 4
  %idxprom82 = sext i32 %62 to i64
  %63 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf83 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %63, i32 0, i32 5
  %64 = load i8*, i8** %rf83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %64, i64 %idxprom82
  %65 = load i8, i8* %arrayidx84, align 1
  %66 = load i32, i32* %mpos, align 4
  %idxprom85 = sext i32 %66 to i64
  %67 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf86 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %67, i32 0, i32 5
  %68 = load i8*, i8** %rf86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %68, i64 %idxprom85
  store i8 %65, i8* %arrayidx87, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.49
  %69 = load i32, i32* %mpos, align 4
  %inc90 = add nsw i32 %69, 1
  store i32 %inc90, i32* %mpos, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.89, %if.then.48
  %70 = load i32, i32* %apos, align 4
  %inc92 = add nsw i32 %70, 1
  store i32 %inc92, i32* %apos, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.103, %for.end.93
  %71 = load i32, i32* %idx, align 4
  %72 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq95 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %72, i32 0, i32 2
  %73 = load i32, i32* %nseq95, align 4
  %cmp96 = icmp slt i32 %71, %73
  br i1 %cmp96, label %for.body.98, label %for.end.105

for.body.98:                                      ; preds = %for.cond.94
  %74 = load i32, i32* %mpos, align 4
  %idxprom99 = sext i32 %74 to i64
  %75 = load i32, i32* %idx, align 4
  %idxprom100 = sext i32 %75 to i64
  %76 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %76, i64 %idxprom100
  %77 = load i8*, i8** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %77, i64 %idxprom99
  store i8 0, i8* %arrayidx102, align 1
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.98
  %78 = load i32, i32* %idx, align 4
  %inc104 = add nsw i32 %78, 1
  store i32 %inc104, i32* %idx, align 4
  br label %for.cond.94

for.end.105:                                      ; preds = %for.cond.94
  %79 = load i32, i32* %mpos, align 4
  %80 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %alen = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %80, i32 0, i32 1
  store i32 %79, i32* %alen, align 4
  %81 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs106 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %81, i32 0, i32 4
  %82 = load i8*, i8** %cs106, align 8
  %cmp107 = icmp ne i8* %82, null
  br i1 %cmp107, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %for.end.105
  %83 = load i32, i32* %mpos, align 4
  %idxprom110 = sext i32 %83 to i64
  %84 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %cs111 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %84, i32 0, i32 4
  %85 = load i8*, i8** %cs111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %85, i64 %idxprom110
  store i8 0, i8* %arrayidx112, align 1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %for.end.105
  %86 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf114 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %86, i32 0, i32 5
  %87 = load i8*, i8** %rf114, align 8
  %cmp115 = icmp ne i8* %87, null
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.113
  %88 = load i32, i32* %mpos, align 4
  %idxprom118 = sext i32 %88 to i64
  %89 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %rf119 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %89, i32 0, i32 5
  %90 = load i8*, i8** %rf119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %90, i64 %idxprom118
  store i8 0, i8* %arrayidx120, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.end.113
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @RandomAlignment(i8** %rseqs, %struct.seqinfo_s* %sqinfo, i32 %nseq, float %pop, float %pex, i8*** %ret_aseqs, %struct.aliinfo_s* %ainfo) #0 {
entry:
  %rseqs.addr = alloca i8**, align 8
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  %nseq.addr = alloca i32, align 4
  %pop.addr = alloca float, align 4
  %pex.addr = alloca float, align 4
  %ret_aseqs.addr = alloca i8***, align 8
  %ainfo.addr = alloca %struct.aliinfo_s*, align 8
  %aseqs = alloca i8**, align 8
  %alen = alloca i32, align 4
  %rlen = alloca i32*, align 8
  %M = alloca i32, align 4
  %ins = alloca i32**, align 8
  %master_ins = alloca i32*, align 8
  %apos = alloca i32, align 4
  %rpos = alloca i32, align 4
  %idx = alloca i32, align 4
  %statepos = alloca i32, align 4
  %count = alloca i32, align 4
  %minlen = alloca i32, align 4
  store i8** %rseqs, i8*** %rseqs.addr, align 8
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store float %pop, float* %pop.addr, align 4
  store float %pex, float* %pex.addr, align 4
  store i8*** %ret_aseqs, i8**** %ret_aseqs.addr, align 8
  store %struct.aliinfo_s* %ainfo, %struct.aliinfo_s** %ainfo.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 530, i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %rlen, align 8
  store i32 0, i32* %M, align 4
  store i32 9999999, i32* %minlen, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %rseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %6) #7
  %conv3 = trunc i64 %call2 to i32
  %7 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %rlen, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  store i32 %conv3, i32* %arrayidx5, align 4
  %9 = load i32, i32* %idx, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %rlen, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* %M, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %M, align 4
  %13 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %rlen, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %minlen, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32*, i32** %rlen, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  %19 = load i32, i32* %arrayidx13, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %minlen, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %minlen, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %21 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %M, align 4
  %conv14 = sitofp i32 %22 to float
  %conv15 = fpext float %conv14 to double
  %23 = load float, float* %pop.addr, align 4
  %conv16 = fpext float %23 to double
  %24 = load float, float* %pex.addr, align 4
  %conv17 = fpext float %24 to double
  %sub = fsub double 1.000000e+00, %conv17
  %div = fdiv double 1.000000e+00, %sub
  %add18 = fadd double 1.000000e+00, %div
  %mul19 = fmul double %conv16, %add18
  %add20 = fadd double 1.000000e+00, %mul19
  %div21 = fdiv double %conv15, %add20
  %conv22 = fptosi double %div21 to i32
  store i32 %conv22, i32* %M, align 4
  %25 = load i32, i32* %nseq.addr, align 4
  %26 = load i32, i32* %M, align 4
  %div23 = sdiv i32 %26, %25
  store i32 %div23, i32* %M, align 4
  %27 = load i32, i32* %M, align 4
  %28 = load i32, i32* %minlen, align 4
  %cmp24 = icmp sgt i32 %27, %28
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %29 = load i32, i32* %minlen, align 4
  store i32 %29, i32* %M, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %30 = load i32, i32* %nseq.addr, align 4
  %conv26 = sext i32 %30 to i64
  %mul27 = mul i64 8, %conv26
  %call28 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 545, i64 %mul27)
  %31 = bitcast i8* %call28 to i32**
  store i32** %31, i32*** %ins, align 8
  %32 = load i32, i32* %M, align 4
  %add29 = add nsw i32 %32, 1
  %conv30 = sext i32 %add29 to i64
  %mul31 = mul i64 4, %conv30
  %call32 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 546, i64 %mul31)
  %33 = bitcast i8* %call32 to i32*
  store i32* %33, i32** %master_ins, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.54, %if.end
  %34 = load i32, i32* %idx, align 4
  %35 = load i32, i32* %nseq.addr, align 4
  %cmp34 = icmp slt i32 %34, %35
  br i1 %cmp34, label %for.body.36, label %for.end.56

for.body.36:                                      ; preds = %for.cond.33
  %36 = load i32, i32* %M, align 4
  %add37 = add nsw i32 %36, 1
  %conv38 = sext i32 %add37 to i64
  %mul39 = mul i64 4, %conv38
  %call40 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 549, i64 %mul39)
  %37 = bitcast i8* %call40 to i32*
  %38 = load i32, i32* %idx, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32**, i32*** %ins, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %39, i64 %idxprom41
  store i32* %37, i32** %arrayidx42, align 8
  store i32 0, i32* %rpos, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.51, %for.body.36
  %40 = load i32, i32* %rpos, align 4
  %41 = load i32, i32* %M, align 4
  %cmp44 = icmp sle i32 %40, %41
  br i1 %cmp44, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.43
  %42 = load i32, i32* %rpos, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load i32, i32* %idx, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load i32**, i32*** %ins, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %44, i64 %idxprom48
  %45 = load i32*, i32** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %45, i64 %idxprom47
  store i32 0, i32* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %46 = load i32, i32* %rpos, align 4
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, i32* %rpos, align 4
  br label %for.cond.43

for.end.53:                                       ; preds = %for.cond.43
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %47 = load i32, i32* %idx, align 4
  %inc55 = add nsw i32 %47, 1
  store i32 %inc55, i32* %idx, align 4
  br label %for.cond.33

for.end.56:                                       ; preds = %for.cond.33
  %48 = load float, float* %pop.addr, align 4
  %49 = load float, float* %pop.addr, align 4
  %50 = load float, float* %pex.addr, align 4
  %add57 = fadd float %49, %50
  %div58 = fdiv float %48, %add57
  store float %div58, float* %pop.addr, align 4
  %51 = load float, float* %pop.addr, align 4
  %conv59 = fpext float %51 to double
  %sub60 = fsub double 1.000000e+00, %conv59
  %conv61 = fptrunc double %sub60 to float
  store float %conv61, float* %pex.addr, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.94, %for.end.56
  %52 = load i32, i32* %idx, align 4
  %53 = load i32, i32* %nseq.addr, align 4
  %cmp63 = icmp slt i32 %52, %53
  br i1 %cmp63, label %for.body.65, label %for.end.96

for.body.65:                                      ; preds = %for.cond.62
  store i32 -1, i32* %apos, align 4
  store i32 0, i32* %rpos, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.91, %for.body.65
  %54 = load i32, i32* %rpos, align 4
  %55 = load i32, i32* %idx, align 4
  %idxprom67 = sext i32 %55 to i64
  %56 = load i32*, i32** %rlen, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %56, i64 %idxprom67
  %57 = load i32, i32* %arrayidx68, align 4
  %58 = load i32, i32* %M, align 4
  %sub69 = sub nsw i32 %57, %58
  %cmp70 = icmp slt i32 %54, %sub69
  br i1 %cmp70, label %for.body.72, label %for.end.93

for.body.72:                                      ; preds = %for.cond.66
  %call73 = call double @sre_random()
  %59 = load float, float* %pop.addr, align 4
  %conv74 = fpext float %59 to double
  %cmp75 = fcmp olt double %call73, %conv74
  br i1 %cmp75, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.72
  %60 = load i32, i32* %apos, align 4
  %cmp77 = icmp eq i32 %60, -1
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %lor.lhs.false, %for.body.72
  %call80 = call double @sre_random()
  %61 = load i32, i32* %M, align 4
  %add81 = add nsw i32 %61, 1
  %conv82 = sitofp i32 %add81 to double
  %mul83 = fmul double %call80, %conv82
  %conv84 = fptosi double %mul83 to i32
  store i32 %conv84, i32* %apos, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %lor.lhs.false
  %62 = load i32, i32* %apos, align 4
  %idxprom86 = sext i32 %62 to i64
  %63 = load i32, i32* %idx, align 4
  %idxprom87 = sext i32 %63 to i64
  %64 = load i32**, i32*** %ins, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %64, i64 %idxprom87
  %65 = load i32*, i32** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %65, i64 %idxprom86
  %66 = load i32, i32* %arrayidx89, align 4
  %inc90 = add nsw i32 %66, 1
  store i32 %inc90, i32* %arrayidx89, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.85
  %67 = load i32, i32* %rpos, align 4
  %inc92 = add nsw i32 %67, 1
  store i32 %inc92, i32* %rpos, align 4
  br label %for.cond.66

for.end.93:                                       ; preds = %for.cond.66
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %68 = load i32, i32* %idx, align 4
  %inc95 = add nsw i32 %68, 1
  store i32 %inc95, i32* %idx, align 4
  br label %for.cond.62

for.end.96:                                       ; preds = %for.cond.62
  %69 = load i32, i32* %M, align 4
  store i32 %69, i32* %alen, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.129, %for.end.96
  %70 = load i32, i32* %apos, align 4
  %71 = load i32, i32* %M, align 4
  %cmp98 = icmp sle i32 %70, %71
  br i1 %cmp98, label %for.body.100, label %for.end.131

for.body.100:                                     ; preds = %for.cond.97
  %72 = load i32, i32* %apos, align 4
  %idxprom101 = sext i32 %72 to i64
  %73 = load i32*, i32** %master_ins, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %73, i64 %idxprom101
  store i32 0, i32* %arrayidx102, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.123, %for.body.100
  %74 = load i32, i32* %idx, align 4
  %75 = load i32, i32* %nseq.addr, align 4
  %cmp104 = icmp slt i32 %74, %75
  br i1 %cmp104, label %for.body.106, label %for.end.125

for.body.106:                                     ; preds = %for.cond.103
  %76 = load i32, i32* %apos, align 4
  %idxprom107 = sext i32 %76 to i64
  %77 = load i32, i32* %idx, align 4
  %idxprom108 = sext i32 %77 to i64
  %78 = load i32**, i32*** %ins, align 8
  %arrayidx109 = getelementptr inbounds i32*, i32** %78, i64 %idxprom108
  %79 = load i32*, i32** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %79, i64 %idxprom107
  %80 = load i32, i32* %arrayidx110, align 4
  %81 = load i32, i32* %apos, align 4
  %idxprom111 = sext i32 %81 to i64
  %82 = load i32*, i32** %master_ins, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %82, i64 %idxprom111
  %83 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp sgt i32 %80, %83
  br i1 %cmp113, label %if.then.115, label %if.end.122

if.then.115:                                      ; preds = %for.body.106
  %84 = load i32, i32* %apos, align 4
  %idxprom116 = sext i32 %84 to i64
  %85 = load i32, i32* %idx, align 4
  %idxprom117 = sext i32 %85 to i64
  %86 = load i32**, i32*** %ins, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %86, i64 %idxprom117
  %87 = load i32*, i32** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %87, i64 %idxprom116
  %88 = load i32, i32* %arrayidx119, align 4
  %89 = load i32, i32* %apos, align 4
  %idxprom120 = sext i32 %89 to i64
  %90 = load i32*, i32** %master_ins, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %90, i64 %idxprom120
  store i32 %88, i32* %arrayidx121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.115, %for.body.106
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %91 = load i32, i32* %idx, align 4
  %inc124 = add nsw i32 %91, 1
  store i32 %inc124, i32* %idx, align 4
  br label %for.cond.103

for.end.125:                                      ; preds = %for.cond.103
  %92 = load i32, i32* %apos, align 4
  %idxprom126 = sext i32 %92 to i64
  %93 = load i32*, i32** %master_ins, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %93, i64 %idxprom126
  %94 = load i32, i32* %arrayidx127, align 4
  %95 = load i32, i32* %alen, align 4
  %add128 = add nsw i32 %95, %94
  store i32 %add128, i32* %alen, align 4
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.125
  %96 = load i32, i32* %apos, align 4
  %inc130 = add nsw i32 %96, 1
  store i32 %inc130, i32* %apos, align 4
  br label %for.cond.97

for.end.131:                                      ; preds = %for.cond.97
  %97 = load i32, i32* %nseq.addr, align 4
  %conv132 = sext i32 %97 to i64
  %mul133 = mul i64 8, %conv132
  %call134 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 581, i64 %mul133)
  %98 = bitcast i8* %call134 to i8**
  store i8** %98, i8*** %aseqs, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.145, %for.end.131
  %99 = load i32, i32* %idx, align 4
  %100 = load i32, i32* %nseq.addr, align 4
  %cmp136 = icmp slt i32 %99, %100
  br i1 %cmp136, label %for.body.138, label %for.end.147

for.body.138:                                     ; preds = %for.cond.135
  %101 = load i32, i32* %alen, align 4
  %add139 = add nsw i32 %101, 1
  %conv140 = sext i32 %add139 to i64
  %mul141 = mul i64 1, %conv140
  %call142 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 583, i64 %mul141)
  %102 = load i32, i32* %idx, align 4
  %idxprom143 = sext i32 %102 to i64
  %103 = load i8**, i8*** %aseqs, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %103, i64 %idxprom143
  store i8* %call142, i8** %arrayidx144, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.138
  %104 = load i32, i32* %idx, align 4
  %inc146 = add nsw i32 %104, 1
  store i32 %inc146, i32* %idx, align 4
  br label %for.cond.135

for.end.147:                                      ; preds = %for.cond.135
  store i32 0, i32* %idx, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.212, %for.end.147
  %105 = load i32, i32* %idx, align 4
  %106 = load i32, i32* %nseq.addr, align 4
  %cmp149 = icmp slt i32 %105, %106
  br i1 %cmp149, label %for.body.151, label %for.end.214

for.body.151:                                     ; preds = %for.cond.148
  store i32 0, i32* %rpos, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %statepos, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.205, %for.body.151
  %107 = load i32, i32* %statepos, align 4
  %108 = load i32, i32* %M, align 4
  %cmp153 = icmp sle i32 %107, %108
  br i1 %cmp153, label %for.body.155, label %for.end.207

for.body.155:                                     ; preds = %for.cond.152
  store i32 0, i32* %count, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.174, %for.body.155
  %109 = load i32, i32* %count, align 4
  %110 = load i32, i32* %statepos, align 4
  %idxprom157 = sext i32 %110 to i64
  %111 = load i32, i32* %idx, align 4
  %idxprom158 = sext i32 %111 to i64
  %112 = load i32**, i32*** %ins, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %112, i64 %idxprom158
  %113 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %113, i64 %idxprom157
  %114 = load i32, i32* %arrayidx160, align 4
  %cmp161 = icmp slt i32 %109, %114
  br i1 %cmp161, label %for.body.163, label %for.end.176

for.body.163:                                     ; preds = %for.cond.156
  %115 = load i32, i32* %rpos, align 4
  %inc164 = add nsw i32 %115, 1
  store i32 %inc164, i32* %rpos, align 4
  %idxprom165 = sext i32 %115 to i64
  %116 = load i32, i32* %idx, align 4
  %idxprom166 = sext i32 %116 to i64
  %117 = load i8**, i8*** %rseqs.addr, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %117, i64 %idxprom166
  %118 = load i8*, i8** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %118, i64 %idxprom165
  %119 = load i8, i8* %arrayidx168, align 1
  %120 = load i32, i32* %apos, align 4
  %inc169 = add nsw i32 %120, 1
  store i32 %inc169, i32* %apos, align 4
  %idxprom170 = sext i32 %120 to i64
  %121 = load i32, i32* %idx, align 4
  %idxprom171 = sext i32 %121 to i64
  %122 = load i8**, i8*** %aseqs, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %122, i64 %idxprom171
  %123 = load i8*, i8** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %123, i64 %idxprom170
  store i8 %119, i8* %arrayidx173, align 1
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.163
  %124 = load i32, i32* %count, align 4
  %inc175 = add nsw i32 %124, 1
  store i32 %inc175, i32* %count, align 4
  br label %for.cond.156

for.end.176:                                      ; preds = %for.cond.156
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.188, %for.end.176
  %125 = load i32, i32* %count, align 4
  %126 = load i32, i32* %statepos, align 4
  %idxprom178 = sext i32 %126 to i64
  %127 = load i32*, i32** %master_ins, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %127, i64 %idxprom178
  %128 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp slt i32 %125, %128
  br i1 %cmp180, label %for.body.182, label %for.end.190

for.body.182:                                     ; preds = %for.cond.177
  %129 = load i32, i32* %apos, align 4
  %inc183 = add nsw i32 %129, 1
  store i32 %inc183, i32* %apos, align 4
  %idxprom184 = sext i32 %129 to i64
  %130 = load i32, i32* %idx, align 4
  %idxprom185 = sext i32 %130 to i64
  %131 = load i8**, i8*** %aseqs, align 8
  %arrayidx186 = getelementptr inbounds i8*, i8** %131, i64 %idxprom185
  %132 = load i8*, i8** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %132, i64 %idxprom184
  store i8 32, i8* %arrayidx187, align 1
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.182
  %133 = load i32, i32* %count, align 4
  %inc189 = add nsw i32 %133, 1
  store i32 %inc189, i32* %count, align 4
  br label %for.cond.177

for.end.190:                                      ; preds = %for.cond.177
  %134 = load i32, i32* %statepos, align 4
  %135 = load i32, i32* %M, align 4
  %cmp191 = icmp ne i32 %134, %135
  br i1 %cmp191, label %if.then.193, label %if.end.204

if.then.193:                                      ; preds = %for.end.190
  %136 = load i32, i32* %rpos, align 4
  %inc194 = add nsw i32 %136, 1
  store i32 %inc194, i32* %rpos, align 4
  %idxprom195 = sext i32 %136 to i64
  %137 = load i32, i32* %idx, align 4
  %idxprom196 = sext i32 %137 to i64
  %138 = load i8**, i8*** %rseqs.addr, align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %138, i64 %idxprom196
  %139 = load i8*, i8** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %139, i64 %idxprom195
  %140 = load i8, i8* %arrayidx198, align 1
  %141 = load i32, i32* %apos, align 4
  %inc199 = add nsw i32 %141, 1
  store i32 %inc199, i32* %apos, align 4
  %idxprom200 = sext i32 %141 to i64
  %142 = load i32, i32* %idx, align 4
  %idxprom201 = sext i32 %142 to i64
  %143 = load i8**, i8*** %aseqs, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %143, i64 %idxprom201
  %144 = load i8*, i8** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %144, i64 %idxprom200
  store i8 %140, i8* %arrayidx203, align 1
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.193, %for.end.190
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %145 = load i32, i32* %statepos, align 4
  %inc206 = add nsw i32 %145, 1
  store i32 %inc206, i32* %statepos, align 4
  br label %for.cond.152

for.end.207:                                      ; preds = %for.cond.152
  %146 = load i32, i32* %alen, align 4
  %idxprom208 = sext i32 %146 to i64
  %147 = load i32, i32* %idx, align 4
  %idxprom209 = sext i32 %147 to i64
  %148 = load i8**, i8*** %aseqs, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %148, i64 %idxprom209
  %149 = load i8*, i8** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %149, i64 %idxprom208
  store i8 0, i8* %arrayidx211, align 1
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.207
  %150 = load i32, i32* %idx, align 4
  %inc213 = add nsw i32 %150, 1
  store i32 %inc213, i32* %idx, align 4
  br label %for.cond.148

for.end.214:                                      ; preds = %for.cond.148
  %151 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %flags = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %151, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %152 = load i32, i32* %alen, align 4
  %153 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %alen215 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %153, i32 0, i32 1
  store i32 %152, i32* %alen215, align 4
  %154 = load i32, i32* %nseq.addr, align 4
  %155 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %nseq216 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %155, i32 0, i32 2
  store i32 %154, i32* %nseq216, align 4
  %156 = load i32, i32* %nseq.addr, align 4
  %conv217 = sext i32 %156 to i64
  %mul218 = mul i64 360, %conv217
  %call219 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 603, i64 %mul218)
  %157 = bitcast i8* %call219 to %struct.seqinfo_s*
  %158 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo220 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %158, i32 0, i32 6
  store %struct.seqinfo_s* %157, %struct.seqinfo_s** %sqinfo220, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.230, %for.end.214
  %159 = load i32, i32* %idx, align 4
  %160 = load i32, i32* %nseq.addr, align 4
  %cmp222 = icmp slt i32 %159, %160
  br i1 %cmp222, label %for.body.224, label %for.end.232

for.body.224:                                     ; preds = %for.cond.221
  %161 = load i32, i32* %idx, align 4
  %idxprom225 = sext i32 %161 to i64
  %162 = load %struct.aliinfo_s*, %struct.aliinfo_s** %ainfo.addr, align 8
  %sqinfo226 = getelementptr inbounds %struct.aliinfo_s, %struct.aliinfo_s* %162, i32 0, i32 6
  %163 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo226, align 8
  %arrayidx227 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %163, i64 %idxprom225
  %164 = load i32, i32* %idx, align 4
  %idxprom228 = sext i32 %164 to i64
  %165 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx229 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %165, i64 %idxprom228
  call void @SeqinfoCopy(%struct.seqinfo_s* %arrayidx227, %struct.seqinfo_s* %arrayidx229)
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.body.224
  %166 = load i32, i32* %idx, align 4
  %inc231 = add nsw i32 %166, 1
  store i32 %inc231, i32* %idx, align 4
  br label %for.cond.221

for.end.232:                                      ; preds = %for.cond.221
  %167 = load i32*, i32** %rlen, align 8
  %168 = bitcast i32* %167 to i8*
  call void @free(i8* %168) #5
  %169 = load i32*, i32** %master_ins, align 8
  %170 = bitcast i32* %169 to i8*
  call void @free(i8* %170) #5
  %171 = load i32**, i32*** %ins, align 8
  %172 = bitcast i32** %171 to i8**
  %173 = load i32, i32* %nseq.addr, align 4
  call void @Free2DArray(i8** %172, i32 %173)
  %174 = load i8**, i8*** %aseqs, align 8
  %175 = load i8***, i8**** %ret_aseqs.addr, align 8
  store i8** %174, i8*** %175, align 8
  ret i32 1
}

declare double @sre_random() #1

declare void @SeqinfoCopy(%struct.seqinfo_s*, %struct.seqinfo_s*) #1

; Function Attrs: nounwind uwtable
define void @AlignmentHomogenousGapsym(i8** %aseq, i32 %nseq, i32 %alen, i8 signext %gapsym) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %gapsym.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %apos = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store i8 %gapsym, i8* %gapsym.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %apos, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %apos, align 4
  %3 = load i32, i32* %alen.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom4
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %9 = load i32, i32* %apos, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %apos, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %16, i64 %idxprom17
  %17 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 95
  br i1 %cmp21, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %apos, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %21, i64 %idxprom25
  %22 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom24
  %23 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.23
  %24 = load i32, i32* %apos, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %26, i64 %idxprom33
  %27 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom32
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp eq i32 %conv36, 126
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.23, %lor.lhs.false.15, %lor.lhs.false, %for.body.3
  %29 = load i8, i8* %gapsym.addr, align 1
  %30 = load i32, i32* %apos, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %32, i64 %idxprom40
  %33 = load i8*, i8** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %33, i64 %idxprom39
  store i8 %29, i8* %arrayidx42, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %apos, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %apos, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
