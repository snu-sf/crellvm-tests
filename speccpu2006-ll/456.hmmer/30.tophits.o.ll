; ModuleID = 'tophits.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"tophits.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tophits_s report:\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"     Total hits:           %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"     Satisfying E cutoff:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"     Total memory:         %dK\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.tophit_s* @AllocTophits(i32 %lumpsize) #0 {
entry:
  %lumpsize.addr = alloca i32, align 4
  %hitlist = alloca %struct.tophit_s*, align 8
  store i32 %lumpsize, i32* %lumpsize.addr, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 82, i64 32)
  %0 = bitcast i8* %call to %struct.tophit_s*
  store %struct.tophit_s* %0, %struct.tophit_s** %hitlist, align 8
  %1 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  %hit = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %1, i32 0, i32 0
  store %struct.hit_s** null, %struct.hit_s*** %hit, align 8
  %2 = load i32, i32* %lumpsize.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 104
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 84, i64 %mul)
  %3 = bitcast i8* %call1 to %struct.hit_s*
  %4 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %4, i32 0, i32 1
  store %struct.hit_s* %3, %struct.hit_s** %unsrt, align 8
  %5 = load i32, i32* %lumpsize.addr, align 4
  %6 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  %alloc = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %6, i32 0, i32 2
  store i32 %5, i32* %alloc, align 4
  %7 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %7, i32 0, i32 3
  store i32 0, i32* %num, align 4
  %8 = load i32, i32* %lumpsize.addr, align 4
  %9 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  %lump = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %9, i32 0, i32 4
  store i32 %8, i32* %lump, align 4
  %10 = load %struct.tophit_s*, %struct.tophit_s** %hitlist, align 8
  ret %struct.tophit_s* %10
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @GrowTophits(%struct.tophit_s* %h) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  %0 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %0, i32 0, i32 1
  %1 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %2 = bitcast %struct.hit_s* %1 to i8*
  %3 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %alloc = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %3, i32 0, i32 2
  %4 = load i32, i32* %alloc, align 4
  %5 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %lump = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %5, i32 0, i32 4
  %6 = load i32, i32* %lump, align 4
  %add = add nsw i32 %4, %6
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 104
  %call = call i8* @sre_realloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 93, i8* %2, i64 %mul)
  %7 = bitcast i8* %call to %struct.hit_s*
  %8 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt1 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %8, i32 0, i32 1
  store %struct.hit_s* %7, %struct.hit_s** %unsrt1, align 8
  %9 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %lump2 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %9, i32 0, i32 4
  %10 = load i32, i32* %lump2, align 4
  %11 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %alloc3 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %11, i32 0, i32 2
  %12 = load i32, i32* %alloc3, align 4
  %add4 = add nsw i32 %12, %10
  store i32 %add4, i32* %alloc3, align 4
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @FreeTophits(%struct.tophit_s* %h) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %pos = alloca i32, align 4
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %1 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %1, i32 0, i32 3
  %2 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %4, i32 0, i32 1
  %5 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %5, i64 %idxprom
  %ali = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx, i32 0, i32 16
  %6 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %cmp1 = icmp ne %struct.fancyali_s* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt3 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %8, i32 0, i32 1
  %9 = load %struct.hit_s*, %struct.hit_s** %unsrt3, align 8
  %arrayidx4 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %9, i64 %idxprom2
  %ali5 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx4, i32 0, i32 16
  %10 = load %struct.fancyali_s*, %struct.fancyali_s** %ali5, align 8
  call void @FreeFancyAli(%struct.fancyali_s* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt7 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %12, i32 0, i32 1
  %13 = load %struct.hit_s*, %struct.hit_s** %unsrt7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %13, i64 %idxprom6
  %name = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx8, i32 0, i32 5
  %14 = load i8*, i8** %name, align 8
  %cmp9 = icmp ne i8* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %15 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt12 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %16, i32 0, i32 1
  %17 = load %struct.hit_s*, %struct.hit_s** %unsrt12, align 8
  %arrayidx13 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %17, i64 %idxprom11
  %name14 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx13, i32 0, i32 5
  %18 = load i8*, i8** %name14, align 8
  call void @free(i8* %18) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %19 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt17 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %20, i32 0, i32 1
  %21 = load %struct.hit_s*, %struct.hit_s** %unsrt17, align 8
  %arrayidx18 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %21, i64 %idxprom16
  %acc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx18, i32 0, i32 6
  %22 = load i8*, i8** %acc, align 8
  %cmp19 = icmp ne i8* %22, null
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.15
  %23 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt22 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %24, i32 0, i32 1
  %25 = load %struct.hit_s*, %struct.hit_s** %unsrt22, align 8
  %arrayidx23 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %25, i64 %idxprom21
  %acc24 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx23, i32 0, i32 6
  %26 = load i8*, i8** %acc24, align 8
  call void @free(i8* %26) #4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end.15
  %27 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt27 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %28, i32 0, i32 1
  %29 = load %struct.hit_s*, %struct.hit_s** %unsrt27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %29, i64 %idxprom26
  %desc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx28, i32 0, i32 7
  %30 = load i8*, i8** %desc, align 8
  %cmp29 = icmp ne i8* %30, null
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.25
  %31 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt32 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %32, i32 0, i32 1
  %33 = load %struct.hit_s*, %struct.hit_s** %unsrt32, align 8
  %arrayidx33 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %33, i64 %idxprom31
  %desc34 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx33, i32 0, i32 7
  %34 = load i8*, i8** %desc34, align 8
  call void @free(i8* %34) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %35 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt36 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %36, i32 0, i32 1
  %37 = load %struct.hit_s*, %struct.hit_s** %unsrt36, align 8
  %38 = bitcast %struct.hit_s* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %39, i32 0, i32 0
  %40 = load %struct.hit_s**, %struct.hit_s*** %hit, align 8
  %cmp37 = icmp ne %struct.hit_s** %40, null
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %for.end
  %41 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit39 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %41, i32 0, i32 0
  %42 = load %struct.hit_s**, %struct.hit_s*** %hit39, align 8
  %43 = bitcast %struct.hit_s** %42 to i8*
  call void @free(i8* %43) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %for.end
  %44 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %45 = bitcast %struct.tophit_s* %44 to i8*
  call void @free(i8* %45) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeFancyAli(%struct.fancyali_s* %ali) #0 {
entry:
  %ali.addr = alloca %struct.fancyali_s*, align 8
  store %struct.fancyali_s* %ali, %struct.fancyali_s** %ali.addr, align 8
  %0 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %cmp = icmp ne %struct.fancyali_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %rfline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %rfline, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %rfline3 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %rfline3, align 8
  call void @free(i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %csline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %csline, align 8
  %cmp4 = icmp ne i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %csline6 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %csline6, align 8
  call void @free(i8* %8) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %model = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %model, align 8
  %cmp8 = icmp ne i8* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %11 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %model10 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %model10, align 8
  call void @free(i8* %12) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %13 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %mline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %13, i32 0, i32 3
  %14 = load i8*, i8** %mline, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %mline14 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %15, i32 0, i32 3
  %16 = load i8*, i8** %mline14, align 8
  call void @free(i8* %16) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %17 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %17, i32 0, i32 4
  %18 = load i8*, i8** %aseq, align 8
  %cmp16 = icmp ne i8* %18, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %19 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq18 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %19, i32 0, i32 4
  %20 = load i8*, i8** %aseq18, align 8
  call void @free(i8* %20) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %21 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %query = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %21, i32 0, i32 6
  %22 = load i8*, i8** %query, align 8
  %cmp20 = icmp ne i8* %22, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %23 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %query22 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %23, i32 0, i32 6
  %24 = load i8*, i8** %query22, align 8
  call void @free(i8* %24) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  %25 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %target = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %25, i32 0, i32 7
  %26 = load i8*, i8** %target, align 8
  %cmp24 = icmp ne i8* %26, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %27 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %target26 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %27, i32 0, i32 7
  %28 = load i8*, i8** %target26, align 8
  call void @free(i8* %28) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %29 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %30 = bitcast %struct.fancyali_s* %29 to i8*
  call void @free(i8* %30) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.fancyali_s* @AllocFancyAli() #0 {
entry:
  %ali = alloca %struct.fancyali_s*, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 117, i64 72)
  %0 = bitcast i8* %call to %struct.fancyali_s*
  store %struct.fancyali_s* %0, %struct.fancyali_s** %ali, align 8
  %1 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %1, i32 0, i32 4
  store i8* null, i8** %aseq, align 8
  %2 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %2, i32 0, i32 3
  store i8* null, i8** %mline, align 8
  %3 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %3, i32 0, i32 2
  store i8* null, i8** %model, align 8
  %4 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %4, i32 0, i32 1
  store i8* null, i8** %csline, align 8
  %5 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %5, i32 0, i32 0
  store i8* null, i8** %rfline, align 8
  %6 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %target = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %6, i32 0, i32 7
  store i8* null, i8** %target, align 8
  %7 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %query = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %7, i32 0, i32 6
  store i8* null, i8** %query, align 8
  %8 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %sqto = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %8, i32 0, i32 9
  store i32 0, i32* %sqto, align 4
  %9 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %sqfrom = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %9, i32 0, i32 8
  store i32 0, i32* %sqfrom, align 4
  %10 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  ret %struct.fancyali_s* %10
}

; Function Attrs: nounwind uwtable
define void @RegisterHit(%struct.tophit_s* %h, double %key, double %pvalue, float %score, double %motherp, float %mothersc, i8* %name, i8* %acc, i8* %desc, i32 %sqfrom, i32 %sqto, i32 %sqlen, i32 %hmmfrom, i32 %hmmto, i32 %hmmlen, i32 %domidx, i32 %ndom, %struct.fancyali_s* %ali) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %key.addr = alloca double, align 8
  %pvalue.addr = alloca double, align 8
  %score.addr = alloca float, align 4
  %motherp.addr = alloca double, align 8
  %mothersc.addr = alloca float, align 4
  %name.addr = alloca i8*, align 8
  %acc.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %sqfrom.addr = alloca i32, align 4
  %sqto.addr = alloca i32, align 4
  %sqlen.addr = alloca i32, align 4
  %hmmfrom.addr = alloca i32, align 4
  %hmmto.addr = alloca i32, align 4
  %hmmlen.addr = alloca i32, align 4
  %domidx.addr = alloca i32, align 4
  %ndom.addr = alloca i32, align 4
  %ali.addr = alloca %struct.fancyali_s*, align 8
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  store double %key, double* %key.addr, align 8
  store double %pvalue, double* %pvalue.addr, align 8
  store float %score, float* %score.addr, align 4
  store double %motherp, double* %motherp.addr, align 8
  store float %mothersc, float* %mothersc.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %acc, i8** %acc.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store i32 %sqfrom, i32* %sqfrom.addr, align 4
  store i32 %sqto, i32* %sqto.addr, align 4
  store i32 %sqlen, i32* %sqlen.addr, align 4
  store i32 %hmmfrom, i32* %hmmfrom.addr, align 4
  store i32 %hmmto, i32* %hmmto.addr, align 4
  store i32 %hmmlen, i32* %hmmlen.addr, align 4
  store i32 %domidx, i32* %domidx.addr, align 4
  store i32 %ndom, i32* %ndom.addr, align 4
  store %struct.fancyali_s* %ali, %struct.fancyali_s** %ali.addr, align 8
  %0 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %0, i32 0, i32 3
  %1 = load i32, i32* %num, align 4
  %2 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %alloc = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %2, i32 0, i32 2
  %3 = load i32, i32* %alloc, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  call void @GrowTophits(%struct.tophit_s* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i8* @Strdup(i8* %5)
  %6 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num1 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %6, i32 0, i32 3
  %7 = load i32, i32* %num1, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %8, i32 0, i32 1
  %9 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %9, i64 %idxprom
  %name2 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx, i32 0, i32 5
  store i8* %call, i8** %name2, align 8
  %10 = load i8*, i8** %acc.addr, align 8
  %call3 = call i8* @Strdup(i8* %10)
  %11 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num4 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %11, i32 0, i32 3
  %12 = load i32, i32* %num4, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt6 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %13, i32 0, i32 1
  %14 = load %struct.hit_s*, %struct.hit_s** %unsrt6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %14, i64 %idxprom5
  %acc8 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx7, i32 0, i32 6
  store i8* %call3, i8** %acc8, align 8
  %15 = load i8*, i8** %desc.addr, align 8
  %call9 = call i8* @Strdup(i8* %15)
  %16 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num10 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %16, i32 0, i32 3
  %17 = load i32, i32* %num10, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt12 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %18, i32 0, i32 1
  %19 = load %struct.hit_s*, %struct.hit_s** %unsrt12, align 8
  %arrayidx13 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %19, i64 %idxprom11
  %desc14 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx13, i32 0, i32 7
  store i8* %call9, i8** %desc14, align 8
  %20 = load double, double* %key.addr, align 8
  %21 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num15 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %21, i32 0, i32 3
  %22 = load i32, i32* %num15, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt17 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %23, i32 0, i32 1
  %24 = load %struct.hit_s*, %struct.hit_s** %unsrt17, align 8
  %arrayidx18 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %24, i64 %idxprom16
  %sortkey = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx18, i32 0, i32 0
  store double %20, double* %sortkey, align 8
  %25 = load double, double* %pvalue.addr, align 8
  %26 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num19 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %26, i32 0, i32 3
  %27 = load i32, i32* %num19, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt21 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %28, i32 0, i32 1
  %29 = load %struct.hit_s*, %struct.hit_s** %unsrt21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %29, i64 %idxprom20
  %pvalue23 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx22, i32 0, i32 2
  store double %25, double* %pvalue23, align 8
  %30 = load float, float* %score.addr, align 4
  %31 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num24 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %31, i32 0, i32 3
  %32 = load i32, i32* %num24, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt26 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %33, i32 0, i32 1
  %34 = load %struct.hit_s*, %struct.hit_s** %unsrt26, align 8
  %arrayidx27 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %34, i64 %idxprom25
  %score28 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx27, i32 0, i32 1
  store float %30, float* %score28, align 4
  %35 = load double, double* %motherp.addr, align 8
  %36 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num29 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %36, i32 0, i32 3
  %37 = load i32, i32* %num29, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt31 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %38, i32 0, i32 1
  %39 = load %struct.hit_s*, %struct.hit_s** %unsrt31, align 8
  %arrayidx32 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %39, i64 %idxprom30
  %motherp33 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx32, i32 0, i32 4
  store double %35, double* %motherp33, align 8
  %40 = load float, float* %mothersc.addr, align 4
  %41 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num34 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %41, i32 0, i32 3
  %42 = load i32, i32* %num34, align 4
  %idxprom35 = sext i32 %42 to i64
  %43 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt36 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %43, i32 0, i32 1
  %44 = load %struct.hit_s*, %struct.hit_s** %unsrt36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %44, i64 %idxprom35
  %mothersc38 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx37, i32 0, i32 3
  store float %40, float* %mothersc38, align 4
  %45 = load i32, i32* %sqfrom.addr, align 4
  %46 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num39 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %46, i32 0, i32 3
  %47 = load i32, i32* %num39, align 4
  %idxprom40 = sext i32 %47 to i64
  %48 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt41 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %48, i32 0, i32 1
  %49 = load %struct.hit_s*, %struct.hit_s** %unsrt41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %49, i64 %idxprom40
  %sqfrom43 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx42, i32 0, i32 8
  store i32 %45, i32* %sqfrom43, align 4
  %50 = load i32, i32* %sqto.addr, align 4
  %51 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num44 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %51, i32 0, i32 3
  %52 = load i32, i32* %num44, align 4
  %idxprom45 = sext i32 %52 to i64
  %53 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt46 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %53, i32 0, i32 1
  %54 = load %struct.hit_s*, %struct.hit_s** %unsrt46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %54, i64 %idxprom45
  %sqto48 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx47, i32 0, i32 9
  store i32 %50, i32* %sqto48, align 4
  %55 = load i32, i32* %sqlen.addr, align 4
  %56 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num49 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %56, i32 0, i32 3
  %57 = load i32, i32* %num49, align 4
  %idxprom50 = sext i32 %57 to i64
  %58 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt51 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %58, i32 0, i32 1
  %59 = load %struct.hit_s*, %struct.hit_s** %unsrt51, align 8
  %arrayidx52 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %59, i64 %idxprom50
  %sqlen53 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx52, i32 0, i32 10
  store i32 %55, i32* %sqlen53, align 4
  %60 = load i32, i32* %hmmfrom.addr, align 4
  %61 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num54 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %61, i32 0, i32 3
  %62 = load i32, i32* %num54, align 4
  %idxprom55 = sext i32 %62 to i64
  %63 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt56 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %63, i32 0, i32 1
  %64 = load %struct.hit_s*, %struct.hit_s** %unsrt56, align 8
  %arrayidx57 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %64, i64 %idxprom55
  %hmmfrom58 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx57, i32 0, i32 11
  store i32 %60, i32* %hmmfrom58, align 4
  %65 = load i32, i32* %hmmto.addr, align 4
  %66 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num59 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %66, i32 0, i32 3
  %67 = load i32, i32* %num59, align 4
  %idxprom60 = sext i32 %67 to i64
  %68 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt61 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %68, i32 0, i32 1
  %69 = load %struct.hit_s*, %struct.hit_s** %unsrt61, align 8
  %arrayidx62 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %69, i64 %idxprom60
  %hmmto63 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx62, i32 0, i32 12
  store i32 %65, i32* %hmmto63, align 4
  %70 = load i32, i32* %hmmlen.addr, align 4
  %71 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num64 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %71, i32 0, i32 3
  %72 = load i32, i32* %num64, align 4
  %idxprom65 = sext i32 %72 to i64
  %73 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt66 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %73, i32 0, i32 1
  %74 = load %struct.hit_s*, %struct.hit_s** %unsrt66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %74, i64 %idxprom65
  %hmmlen68 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx67, i32 0, i32 13
  store i32 %70, i32* %hmmlen68, align 4
  %75 = load i32, i32* %domidx.addr, align 4
  %76 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num69 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %76, i32 0, i32 3
  %77 = load i32, i32* %num69, align 4
  %idxprom70 = sext i32 %77 to i64
  %78 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt71 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %78, i32 0, i32 1
  %79 = load %struct.hit_s*, %struct.hit_s** %unsrt71, align 8
  %arrayidx72 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %79, i64 %idxprom70
  %domidx73 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx72, i32 0, i32 14
  store i32 %75, i32* %domidx73, align 4
  %80 = load i32, i32* %ndom.addr, align 4
  %81 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num74 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %81, i32 0, i32 3
  %82 = load i32, i32* %num74, align 4
  %idxprom75 = sext i32 %82 to i64
  %83 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt76 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %83, i32 0, i32 1
  %84 = load %struct.hit_s*, %struct.hit_s** %unsrt76, align 8
  %arrayidx77 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %84, i64 %idxprom75
  %ndom78 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx77, i32 0, i32 15
  store i32 %80, i32* %ndom78, align 4
  %85 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %86 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num79 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %86, i32 0, i32 3
  %87 = load i32, i32* %num79, align 4
  %idxprom80 = sext i32 %87 to i64
  %88 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt81 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %88, i32 0, i32 1
  %89 = load %struct.hit_s*, %struct.hit_s** %unsrt81, align 8
  %arrayidx82 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %89, i64 %idxprom80
  %ali83 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx82, i32 0, i32 16
  store %struct.fancyali_s* %85, %struct.fancyali_s** %ali83, align 8
  %90 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num84 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %90, i32 0, i32 3
  %91 = load i32, i32* %num84, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %num84, align 4
  ret void
}

declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @GetRankedHit(%struct.tophit_s* %h, i32 %rank, double* %r_pvalue, float* %r_score, double* %r_motherp, float* %r_mothersc, i8** %r_name, i8** %r_acc, i8** %r_desc, i32* %r_sqfrom, i32* %r_sqto, i32* %r_sqlen, i32* %r_hmmfrom, i32* %r_hmmto, i32* %r_hmmlen, i32* %r_domidx, i32* %r_ndom, %struct.fancyali_s** %r_ali) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %rank.addr = alloca i32, align 4
  %r_pvalue.addr = alloca double*, align 8
  %r_score.addr = alloca float*, align 8
  %r_motherp.addr = alloca double*, align 8
  %r_mothersc.addr = alloca float*, align 8
  %r_name.addr = alloca i8**, align 8
  %r_acc.addr = alloca i8**, align 8
  %r_desc.addr = alloca i8**, align 8
  %r_sqfrom.addr = alloca i32*, align 8
  %r_sqto.addr = alloca i32*, align 8
  %r_sqlen.addr = alloca i32*, align 8
  %r_hmmfrom.addr = alloca i32*, align 8
  %r_hmmto.addr = alloca i32*, align 8
  %r_hmmlen.addr = alloca i32*, align 8
  %r_domidx.addr = alloca i32*, align 8
  %r_ndom.addr = alloca i32*, align 8
  %r_ali.addr = alloca %struct.fancyali_s**, align 8
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  store i32 %rank, i32* %rank.addr, align 4
  store double* %r_pvalue, double** %r_pvalue.addr, align 8
  store float* %r_score, float** %r_score.addr, align 8
  store double* %r_motherp, double** %r_motherp.addr, align 8
  store float* %r_mothersc, float** %r_mothersc.addr, align 8
  store i8** %r_name, i8*** %r_name.addr, align 8
  store i8** %r_acc, i8*** %r_acc.addr, align 8
  store i8** %r_desc, i8*** %r_desc.addr, align 8
  store i32* %r_sqfrom, i32** %r_sqfrom.addr, align 8
  store i32* %r_sqto, i32** %r_sqto.addr, align 8
  store i32* %r_sqlen, i32** %r_sqlen.addr, align 8
  store i32* %r_hmmfrom, i32** %r_hmmfrom.addr, align 8
  store i32* %r_hmmto, i32** %r_hmmto.addr, align 8
  store i32* %r_hmmlen, i32** %r_hmmlen.addr, align 8
  store i32* %r_domidx, i32** %r_domidx.addr, align 8
  store i32* %r_ndom, i32** %r_ndom.addr, align 8
  store %struct.fancyali_s** %r_ali, %struct.fancyali_s*** %r_ali.addr, align 8
  %0 = load double*, double** %r_pvalue.addr, align 8
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %rank.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %2, i32 0, i32 0
  %3 = load %struct.hit_s**, %struct.hit_s*** %hit, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %3, i64 %idxprom
  %4 = load %struct.hit_s*, %struct.hit_s** %arrayidx, align 8
  %pvalue = getelementptr inbounds %struct.hit_s, %struct.hit_s* %4, i32 0, i32 2
  %5 = load double, double* %pvalue, align 8
  %6 = load double*, double** %r_pvalue.addr, align 8
  store double %5, double* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float*, float** %r_score.addr, align 8
  %cmp1 = icmp ne float* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %rank.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit4 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %9, i32 0, i32 0
  %10 = load %struct.hit_s**, %struct.hit_s*** %hit4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %10, i64 %idxprom3
  %11 = load %struct.hit_s*, %struct.hit_s** %arrayidx5, align 8
  %score = getelementptr inbounds %struct.hit_s, %struct.hit_s* %11, i32 0, i32 1
  %12 = load float, float* %score, align 4
  %13 = load float*, float** %r_score.addr, align 8
  store float %12, float* %13, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %14 = load double*, double** %r_motherp.addr, align 8
  %cmp7 = icmp ne double* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  %15 = load i32, i32* %rank.addr, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit10 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %16, i32 0, i32 0
  %17 = load %struct.hit_s**, %struct.hit_s*** %hit10, align 8
  %arrayidx11 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %17, i64 %idxprom9
  %18 = load %struct.hit_s*, %struct.hit_s** %arrayidx11, align 8
  %motherp = getelementptr inbounds %struct.hit_s, %struct.hit_s* %18, i32 0, i32 4
  %19 = load double, double* %motherp, align 8
  %20 = load double*, double** %r_motherp.addr, align 8
  store double %19, double* %20, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.6
  %21 = load float*, float** %r_mothersc.addr, align 8
  %cmp13 = icmp ne float* %21, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.12
  %22 = load i32, i32* %rank.addr, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit16 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %23, i32 0, i32 0
  %24 = load %struct.hit_s**, %struct.hit_s*** %hit16, align 8
  %arrayidx17 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %24, i64 %idxprom15
  %25 = load %struct.hit_s*, %struct.hit_s** %arrayidx17, align 8
  %mothersc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %25, i32 0, i32 3
  %26 = load float, float* %mothersc, align 4
  %27 = load float*, float** %r_mothersc.addr, align 8
  store float %26, float* %27, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end.12
  %28 = load i8**, i8*** %r_name.addr, align 8
  %cmp19 = icmp ne i8** %28, null
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %29 = load i32, i32* %rank.addr, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit22 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %30, i32 0, i32 0
  %31 = load %struct.hit_s**, %struct.hit_s*** %hit22, align 8
  %arrayidx23 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %31, i64 %idxprom21
  %32 = load %struct.hit_s*, %struct.hit_s** %arrayidx23, align 8
  %name = getelementptr inbounds %struct.hit_s, %struct.hit_s* %32, i32 0, i32 5
  %33 = load i8*, i8** %name, align 8
  %34 = load i8**, i8*** %r_name.addr, align 8
  store i8* %33, i8** %34, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %35 = load i8**, i8*** %r_acc.addr, align 8
  %cmp25 = icmp ne i8** %35, null
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.24
  %36 = load i32, i32* %rank.addr, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit28 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %37, i32 0, i32 0
  %38 = load %struct.hit_s**, %struct.hit_s*** %hit28, align 8
  %arrayidx29 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %38, i64 %idxprom27
  %39 = load %struct.hit_s*, %struct.hit_s** %arrayidx29, align 8
  %acc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %39, i32 0, i32 6
  %40 = load i8*, i8** %acc, align 8
  %41 = load i8**, i8*** %r_acc.addr, align 8
  store i8* %40, i8** %41, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.24
  %42 = load i8**, i8*** %r_desc.addr, align 8
  %cmp31 = icmp ne i8** %42, null
  br i1 %cmp31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.30
  %43 = load i32, i32* %rank.addr, align 4
  %idxprom33 = sext i32 %43 to i64
  %44 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit34 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %44, i32 0, i32 0
  %45 = load %struct.hit_s**, %struct.hit_s*** %hit34, align 8
  %arrayidx35 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %45, i64 %idxprom33
  %46 = load %struct.hit_s*, %struct.hit_s** %arrayidx35, align 8
  %desc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %46, i32 0, i32 7
  %47 = load i8*, i8** %desc, align 8
  %48 = load i8**, i8*** %r_desc.addr, align 8
  store i8* %47, i8** %48, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.30
  %49 = load i32*, i32** %r_sqfrom.addr, align 8
  %cmp37 = icmp ne i32* %49, null
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.36
  %50 = load i32, i32* %rank.addr, align 4
  %idxprom39 = sext i32 %50 to i64
  %51 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit40 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %51, i32 0, i32 0
  %52 = load %struct.hit_s**, %struct.hit_s*** %hit40, align 8
  %arrayidx41 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %52, i64 %idxprom39
  %53 = load %struct.hit_s*, %struct.hit_s** %arrayidx41, align 8
  %sqfrom = getelementptr inbounds %struct.hit_s, %struct.hit_s* %53, i32 0, i32 8
  %54 = load i32, i32* %sqfrom, align 4
  %55 = load i32*, i32** %r_sqfrom.addr, align 8
  store i32 %54, i32* %55, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.36
  %56 = load i32*, i32** %r_sqto.addr, align 8
  %cmp43 = icmp ne i32* %56, null
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.42
  %57 = load i32, i32* %rank.addr, align 4
  %idxprom45 = sext i32 %57 to i64
  %58 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit46 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %58, i32 0, i32 0
  %59 = load %struct.hit_s**, %struct.hit_s*** %hit46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %59, i64 %idxprom45
  %60 = load %struct.hit_s*, %struct.hit_s** %arrayidx47, align 8
  %sqto = getelementptr inbounds %struct.hit_s, %struct.hit_s* %60, i32 0, i32 9
  %61 = load i32, i32* %sqto, align 4
  %62 = load i32*, i32** %r_sqto.addr, align 8
  store i32 %61, i32* %62, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  %63 = load i32*, i32** %r_sqlen.addr, align 8
  %cmp49 = icmp ne i32* %63, null
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %64 = load i32, i32* %rank.addr, align 4
  %idxprom51 = sext i32 %64 to i64
  %65 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit52 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %65, i32 0, i32 0
  %66 = load %struct.hit_s**, %struct.hit_s*** %hit52, align 8
  %arrayidx53 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %66, i64 %idxprom51
  %67 = load %struct.hit_s*, %struct.hit_s** %arrayidx53, align 8
  %sqlen = getelementptr inbounds %struct.hit_s, %struct.hit_s* %67, i32 0, i32 10
  %68 = load i32, i32* %sqlen, align 4
  %69 = load i32*, i32** %r_sqlen.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.48
  %70 = load i32*, i32** %r_hmmfrom.addr, align 8
  %cmp55 = icmp ne i32* %70, null
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.end.54
  %71 = load i32, i32* %rank.addr, align 4
  %idxprom57 = sext i32 %71 to i64
  %72 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit58 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %72, i32 0, i32 0
  %73 = load %struct.hit_s**, %struct.hit_s*** %hit58, align 8
  %arrayidx59 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %73, i64 %idxprom57
  %74 = load %struct.hit_s*, %struct.hit_s** %arrayidx59, align 8
  %hmmfrom = getelementptr inbounds %struct.hit_s, %struct.hit_s* %74, i32 0, i32 11
  %75 = load i32, i32* %hmmfrom, align 4
  %76 = load i32*, i32** %r_hmmfrom.addr, align 8
  store i32 %75, i32* %76, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.end.54
  %77 = load i32*, i32** %r_hmmto.addr, align 8
  %cmp61 = icmp ne i32* %77, null
  br i1 %cmp61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.60
  %78 = load i32, i32* %rank.addr, align 4
  %idxprom63 = sext i32 %78 to i64
  %79 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit64 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %79, i32 0, i32 0
  %80 = load %struct.hit_s**, %struct.hit_s*** %hit64, align 8
  %arrayidx65 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %80, i64 %idxprom63
  %81 = load %struct.hit_s*, %struct.hit_s** %arrayidx65, align 8
  %hmmto = getelementptr inbounds %struct.hit_s, %struct.hit_s* %81, i32 0, i32 12
  %82 = load i32, i32* %hmmto, align 4
  %83 = load i32*, i32** %r_hmmto.addr, align 8
  store i32 %82, i32* %83, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.60
  %84 = load i32*, i32** %r_hmmlen.addr, align 8
  %cmp67 = icmp ne i32* %84, null
  br i1 %cmp67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.end.66
  %85 = load i32, i32* %rank.addr, align 4
  %idxprom69 = sext i32 %85 to i64
  %86 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit70 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %86, i32 0, i32 0
  %87 = load %struct.hit_s**, %struct.hit_s*** %hit70, align 8
  %arrayidx71 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %87, i64 %idxprom69
  %88 = load %struct.hit_s*, %struct.hit_s** %arrayidx71, align 8
  %hmmlen = getelementptr inbounds %struct.hit_s, %struct.hit_s* %88, i32 0, i32 13
  %89 = load i32, i32* %hmmlen, align 4
  %90 = load i32*, i32** %r_hmmlen.addr, align 8
  store i32 %89, i32* %90, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.end.66
  %91 = load i32*, i32** %r_domidx.addr, align 8
  %cmp73 = icmp ne i32* %91, null
  br i1 %cmp73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.72
  %92 = load i32, i32* %rank.addr, align 4
  %idxprom75 = sext i32 %92 to i64
  %93 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit76 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %93, i32 0, i32 0
  %94 = load %struct.hit_s**, %struct.hit_s*** %hit76, align 8
  %arrayidx77 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %94, i64 %idxprom75
  %95 = load %struct.hit_s*, %struct.hit_s** %arrayidx77, align 8
  %domidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %95, i32 0, i32 14
  %96 = load i32, i32* %domidx, align 4
  %97 = load i32*, i32** %r_domidx.addr, align 8
  store i32 %96, i32* %97, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.72
  %98 = load i32*, i32** %r_ndom.addr, align 8
  %cmp79 = icmp ne i32* %98, null
  br i1 %cmp79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.78
  %99 = load i32, i32* %rank.addr, align 4
  %idxprom81 = sext i32 %99 to i64
  %100 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit82 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %100, i32 0, i32 0
  %101 = load %struct.hit_s**, %struct.hit_s*** %hit82, align 8
  %arrayidx83 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %101, i64 %idxprom81
  %102 = load %struct.hit_s*, %struct.hit_s** %arrayidx83, align 8
  %ndom = getelementptr inbounds %struct.hit_s, %struct.hit_s* %102, i32 0, i32 15
  %103 = load i32, i32* %ndom, align 4
  %104 = load i32*, i32** %r_ndom.addr, align 8
  store i32 %103, i32* %104, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.end.78
  %105 = load %struct.fancyali_s**, %struct.fancyali_s*** %r_ali.addr, align 8
  %cmp85 = icmp ne %struct.fancyali_s** %105, null
  br i1 %cmp85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.84
  %106 = load i32, i32* %rank.addr, align 4
  %idxprom87 = sext i32 %106 to i64
  %107 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit88 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %107, i32 0, i32 0
  %108 = load %struct.hit_s**, %struct.hit_s*** %hit88, align 8
  %arrayidx89 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %108, i64 %idxprom87
  %109 = load %struct.hit_s*, %struct.hit_s** %arrayidx89, align 8
  %ali = getelementptr inbounds %struct.hit_s, %struct.hit_s* %109, i32 0, i32 16
  %110 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %111 = load %struct.fancyali_s**, %struct.fancyali_s*** %r_ali.addr, align 8
  store %struct.fancyali_s* %110, %struct.fancyali_s** %111, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %if.end.84
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TophitsMaxName(%struct.tophit_s* %h) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %maxlen = alloca i32, align 4
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  store i32 0, i32* %maxlen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %1, i32 0, i32 3
  %2 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %4, i32 0, i32 1
  %5 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %5, i64 %idxprom
  %name = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx, i32 0, i32 5
  %6 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  %8 = load i32, i32* %maxlen, align 4
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  store i32 %9, i32* %maxlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %maxlen, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @hit_comparison(i8* %vh1, i8* %vh2) #0 {
entry:
  %retval = alloca i32, align 4
  %vh1.addr = alloca i8*, align 8
  %vh2.addr = alloca i8*, align 8
  %h1 = alloca %struct.hit_s*, align 8
  %h2 = alloca %struct.hit_s*, align 8
  store i8* %vh1, i8** %vh1.addr, align 8
  store i8* %vh2, i8** %vh2.addr, align 8
  %0 = load i8*, i8** %vh1.addr, align 8
  %1 = bitcast i8* %0 to %struct.hit_s**
  %2 = load %struct.hit_s*, %struct.hit_s** %1, align 8
  store %struct.hit_s* %2, %struct.hit_s** %h1, align 8
  %3 = load i8*, i8** %vh2.addr, align 8
  %4 = bitcast i8* %3 to %struct.hit_s**
  %5 = load %struct.hit_s*, %struct.hit_s** %4, align 8
  store %struct.hit_s* %5, %struct.hit_s** %h2, align 8
  %6 = load %struct.hit_s*, %struct.hit_s** %h1, align 8
  %sortkey = getelementptr inbounds %struct.hit_s, %struct.hit_s* %6, i32 0, i32 0
  %7 = load double, double* %sortkey, align 8
  %8 = load %struct.hit_s*, %struct.hit_s** %h2, align 8
  %sortkey1 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %8, i32 0, i32 0
  %9 = load double, double* %sortkey1, align 8
  %cmp = fcmp olt double %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct.hit_s*, %struct.hit_s** %h1, align 8
  %sortkey2 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %10, i32 0, i32 0
  %11 = load double, double* %sortkey2, align 8
  %12 = load %struct.hit_s*, %struct.hit_s** %h2, align 8
  %sortkey3 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %12, i32 0, i32 0
  %13 = load double, double* %sortkey3, align 8
  %cmp4 = fcmp ogt double %11, %13
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %14 = load %struct.hit_s*, %struct.hit_s** %h1, align 8
  %sortkey7 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %14, i32 0, i32 0
  %15 = load double, double* %sortkey7, align 8
  %16 = load %struct.hit_s*, %struct.hit_s** %h2, align 8
  %sortkey8 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %16, i32 0, i32 0
  %17 = load double, double* %sortkey8, align 8
  %cmp9 = fcmp oeq double %15, %17
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @FullSortTophits(%struct.tophit_s* %h) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %i = alloca i32, align 4
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  %0 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %0, i32 0, i32 3
  %1 = load i32, i32* %num, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.15

if.end:                                           ; preds = %entry
  %2 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num1 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %2, i32 0, i32 3
  %3 = load i32, i32* %num1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 300, i64 %mul)
  %4 = bitcast i8* %call to %struct.hit_s**
  %5 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %5, i32 0, i32 0
  store %struct.hit_s** %4, %struct.hit_s*** %hit, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num2 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %7, i32 0, i32 3
  %8 = load i32, i32* %num2, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %10, i32 0, i32 1
  %11 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %11, i64 %idxprom
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit6 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %13, i32 0, i32 0
  %14 = load %struct.hit_s**, %struct.hit_s*** %hit6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %14, i64 %idxprom5
  store %struct.hit_s* %arrayidx, %struct.hit_s** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num8 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %16, i32 0, i32 3
  %17 = load i32, i32* %num8, align 4
  %cmp9 = icmp sgt i32 %17, 1
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.end
  %18 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit12 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %18, i32 0, i32 0
  %19 = load %struct.hit_s**, %struct.hit_s*** %hit12, align 8
  %20 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num13 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %20, i32 0, i32 3
  %21 = load i32, i32* %num13, align 4
  %call14 = call i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...) bitcast (i32 (...)* @specqsort to i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)*)(%struct.hit_s** %19, i32 %21, i64 8, i32 (i8*, i8*)* @hit_comparison)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.11, %for.end
  ret void
}

declare i32 @specqsort(...) #1

; Function Attrs: nounwind uwtable
define void @TophitsReport(%struct.tophit_s* %h, double %E, i32 %nseq) #0 {
entry:
  %h.addr = alloca %struct.tophit_s*, align 8
  %E.addr = alloca double, align 8
  %nseq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %memused = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.tophit_s* %h, %struct.tophit_s** %h.addr, align 8
  store double %E, double* %E.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  %0 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %alloc = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %0, i32 0, i32 2
  %1 = load i32, i32* %alloc, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 104, %conv
  %add = add i64 %mul, 32
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %memused, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %3, i32 0, i32 3
  %4 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %6, i32 0, i32 1
  %7 = load %struct.hit_s*, %struct.hit_s** %unsrt, align 8
  %arrayidx = getelementptr inbounds %struct.hit_s, %struct.hit_s* %7, i64 %idxprom
  %name = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx, i32 0, i32 5
  %8 = load i8*, i8** %name, align 8
  %cmp3 = icmp ne i8* %8, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt6 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %10, i32 0, i32 1
  %11 = load %struct.hit_s*, %struct.hit_s** %unsrt6, align 8
  %arrayidx7 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %11, i64 %idxprom5
  %name8 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx7, i32 0, i32 5
  %12 = load i8*, i8** %name8, align 8
  %call = call i64 @strlen(i8* %12) #5
  %add9 = add i64 %call, 1
  %13 = load i32, i32* %memused, align 4
  %conv10 = sext i32 %13 to i64
  %add11 = add i64 %conv10, %add9
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* %memused, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt14 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %15, i32 0, i32 1
  %16 = load %struct.hit_s*, %struct.hit_s** %unsrt14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %16, i64 %idxprom13
  %acc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx15, i32 0, i32 6
  %17 = load i8*, i8** %acc, align 8
  %cmp16 = icmp ne i8* %17, null
  br i1 %cmp16, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt20 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %19, i32 0, i32 1
  %20 = load %struct.hit_s*, %struct.hit_s** %unsrt20, align 8
  %arrayidx21 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %20, i64 %idxprom19
  %acc22 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx21, i32 0, i32 6
  %21 = load i8*, i8** %acc22, align 8
  %call23 = call i64 @strlen(i8* %21) #5
  %add24 = add i64 %call23, 1
  %22 = load i32, i32* %memused, align 4
  %conv25 = sext i32 %22 to i64
  %add26 = add i64 %conv25, %add24
  %conv27 = trunc i64 %add26 to i32
  store i32 %conv27, i32* %memused, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.18, %if.end
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt30 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %24, i32 0, i32 1
  %25 = load %struct.hit_s*, %struct.hit_s** %unsrt30, align 8
  %arrayidx31 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %25, i64 %idxprom29
  %desc = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx31, i32 0, i32 7
  %26 = load i8*, i8** %desc, align 8
  %cmp32 = icmp ne i8* %26, null
  br i1 %cmp32, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.28
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt36 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %28, i32 0, i32 1
  %29 = load %struct.hit_s*, %struct.hit_s** %unsrt36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %29, i64 %idxprom35
  %desc38 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx37, i32 0, i32 7
  %30 = load i8*, i8** %desc38, align 8
  %call39 = call i64 @strlen(i8* %30) #5
  %add40 = add i64 %call39, 1
  %31 = load i32, i32* %memused, align 4
  %conv41 = sext i32 %31 to i64
  %add42 = add i64 %conv41, %add40
  %conv43 = trunc i64 %add42 to i32
  store i32 %conv43, i32* %memused, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.34, %if.end.28
  %32 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt46 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %33, i32 0, i32 1
  %34 = load %struct.hit_s*, %struct.hit_s** %unsrt46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %34, i64 %idxprom45
  %ali = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx47, i32 0, i32 16
  %35 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %cmp48 = icmp ne %struct.fancyali_s* %35, null
  br i1 %cmp48, label %if.then.50, label %if.end.141

if.then.50:                                       ; preds = %if.end.44
  %36 = load i32, i32* %memused, align 4
  %conv51 = sext i32 %36 to i64
  %add52 = add i64 %conv51, 72
  %conv53 = trunc i64 %add52 to i32
  store i32 %conv53, i32* %memused, align 4
  store i32 0, i32* %x, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %38 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt55 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %38, i32 0, i32 1
  %39 = load %struct.hit_s*, %struct.hit_s** %unsrt55, align 8
  %arrayidx56 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %39, i64 %idxprom54
  %ali57 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx56, i32 0, i32 16
  %40 = load %struct.fancyali_s*, %struct.fancyali_s** %ali57, align 8
  %rfline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %40, i32 0, i32 0
  %41 = load i8*, i8** %rfline, align 8
  %cmp58 = icmp ne i8* %41, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.50
  %42 = load i32, i32* %x, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %x, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.50
  %43 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %43 to i64
  %44 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt63 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %44, i32 0, i32 1
  %45 = load %struct.hit_s*, %struct.hit_s** %unsrt63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %45, i64 %idxprom62
  %ali65 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx64, i32 0, i32 16
  %46 = load %struct.fancyali_s*, %struct.fancyali_s** %ali65, align 8
  %csline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %46, i32 0, i32 1
  %47 = load i8*, i8** %csline, align 8
  %cmp66 = icmp ne i8* %47, null
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.61
  %48 = load i32, i32* %x, align 4
  %inc69 = add nsw i32 %48, 1
  store i32 %inc69, i32* %x, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.61
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt72 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %50, i32 0, i32 1
  %51 = load %struct.hit_s*, %struct.hit_s** %unsrt72, align 8
  %arrayidx73 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %51, i64 %idxprom71
  %ali74 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx73, i32 0, i32 16
  %52 = load %struct.fancyali_s*, %struct.fancyali_s** %ali74, align 8
  %model = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %52, i32 0, i32 2
  %53 = load i8*, i8** %model, align 8
  %cmp75 = icmp ne i8* %53, null
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.70
  %54 = load i32, i32* %x, align 4
  %inc78 = add nsw i32 %54, 1
  store i32 %inc78, i32* %x, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.70
  %55 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %55 to i64
  %56 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt81 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %56, i32 0, i32 1
  %57 = load %struct.hit_s*, %struct.hit_s** %unsrt81, align 8
  %arrayidx82 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %57, i64 %idxprom80
  %ali83 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx82, i32 0, i32 16
  %58 = load %struct.fancyali_s*, %struct.fancyali_s** %ali83, align 8
  %mline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %58, i32 0, i32 3
  %59 = load i8*, i8** %mline, align 8
  %cmp84 = icmp ne i8* %59, null
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.79
  %60 = load i32, i32* %x, align 4
  %inc87 = add nsw i32 %60, 1
  store i32 %inc87, i32* %x, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.79
  %61 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %61 to i64
  %62 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt90 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %62, i32 0, i32 1
  %63 = load %struct.hit_s*, %struct.hit_s** %unsrt90, align 8
  %arrayidx91 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %63, i64 %idxprom89
  %ali92 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx91, i32 0, i32 16
  %64 = load %struct.fancyali_s*, %struct.fancyali_s** %ali92, align 8
  %aseq = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %64, i32 0, i32 4
  %65 = load i8*, i8** %aseq, align 8
  %cmp93 = icmp ne i8* %65, null
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.88
  %66 = load i32, i32* %x, align 4
  %inc96 = add nsw i32 %66, 1
  store i32 %inc96, i32* %x, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.88
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %68 to i64
  %69 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt99 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %69, i32 0, i32 1
  %70 = load %struct.hit_s*, %struct.hit_s** %unsrt99, align 8
  %arrayidx100 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %70, i64 %idxprom98
  %ali101 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx100, i32 0, i32 16
  %71 = load %struct.fancyali_s*, %struct.fancyali_s** %ali101, align 8
  %len = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %71, i32 0, i32 5
  %72 = load i32, i32* %len, align 4
  %add102 = add nsw i32 %72, 1
  %mul103 = mul nsw i32 %67, %add102
  %73 = load i32, i32* %memused, align 4
  %add104 = add nsw i32 %73, %mul103
  store i32 %add104, i32* %memused, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %74 to i64
  %75 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt106 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %75, i32 0, i32 1
  %76 = load %struct.hit_s*, %struct.hit_s** %unsrt106, align 8
  %arrayidx107 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %76, i64 %idxprom105
  %ali108 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx107, i32 0, i32 16
  %77 = load %struct.fancyali_s*, %struct.fancyali_s** %ali108, align 8
  %query = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %77, i32 0, i32 6
  %78 = load i8*, i8** %query, align 8
  %cmp109 = icmp ne i8* %78, null
  br i1 %cmp109, label %if.then.111, label %if.end.122

if.then.111:                                      ; preds = %if.end.97
  %79 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %79 to i64
  %80 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt113 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %80, i32 0, i32 1
  %81 = load %struct.hit_s*, %struct.hit_s** %unsrt113, align 8
  %arrayidx114 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %81, i64 %idxprom112
  %ali115 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx114, i32 0, i32 16
  %82 = load %struct.fancyali_s*, %struct.fancyali_s** %ali115, align 8
  %query116 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %82, i32 0, i32 6
  %83 = load i8*, i8** %query116, align 8
  %call117 = call i64 @strlen(i8* %83) #5
  %add118 = add i64 %call117, 1
  %84 = load i32, i32* %memused, align 4
  %conv119 = sext i32 %84 to i64
  %add120 = add i64 %conv119, %add118
  %conv121 = trunc i64 %add120 to i32
  store i32 %conv121, i32* %memused, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.111, %if.end.97
  %85 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %85 to i64
  %86 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt124 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %86, i32 0, i32 1
  %87 = load %struct.hit_s*, %struct.hit_s** %unsrt124, align 8
  %arrayidx125 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %87, i64 %idxprom123
  %ali126 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx125, i32 0, i32 16
  %88 = load %struct.fancyali_s*, %struct.fancyali_s** %ali126, align 8
  %target = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %88, i32 0, i32 7
  %89 = load i8*, i8** %target, align 8
  %cmp127 = icmp ne i8* %89, null
  br i1 %cmp127, label %if.then.129, label %if.end.140

if.then.129:                                      ; preds = %if.end.122
  %90 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %90 to i64
  %91 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %unsrt131 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %91, i32 0, i32 1
  %92 = load %struct.hit_s*, %struct.hit_s** %unsrt131, align 8
  %arrayidx132 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %92, i64 %idxprom130
  %ali133 = getelementptr inbounds %struct.hit_s, %struct.hit_s* %arrayidx132, i32 0, i32 16
  %93 = load %struct.fancyali_s*, %struct.fancyali_s** %ali133, align 8
  %target134 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %93, i32 0, i32 7
  %94 = load i8*, i8** %target134, align 8
  %call135 = call i64 @strlen(i8* %94) #5
  %add136 = add i64 %call135, 1
  %95 = load i32, i32* %memused, align 4
  %conv137 = sext i32 %95 to i64
  %add138 = add i64 %conv137, %add136
  %conv139 = trunc i64 %add138 to i32
  store i32 %conv139, i32* %memused, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.129, %if.end.122
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.141
  %96 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %96, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.157, %for.end
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num144 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %98, i32 0, i32 3
  %99 = load i32, i32* %num144, align 4
  %cmp145 = icmp slt i32 %97, %99
  br i1 %cmp145, label %for.body.147, label %for.end.159

for.body.147:                                     ; preds = %for.cond.143
  %100 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %100 to i64
  %101 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %hit = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %101, i32 0, i32 0
  %102 = load %struct.hit_s**, %struct.hit_s*** %hit, align 8
  %arrayidx149 = getelementptr inbounds %struct.hit_s*, %struct.hit_s** %102, i64 %idxprom148
  %103 = load %struct.hit_s*, %struct.hit_s** %arrayidx149, align 8
  %pvalue = getelementptr inbounds %struct.hit_s, %struct.hit_s* %103, i32 0, i32 2
  %104 = load double, double* %pvalue, align 8
  %105 = load i32, i32* %nseq.addr, align 4
  %conv150 = sitofp i32 %105 to double
  %mul151 = fmul double %104, %conv150
  %106 = load double, double* %E.addr, align 8
  %cmp152 = fcmp oge double %mul151, %106
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %for.body.147
  br label %for.end.159

if.end.155:                                       ; preds = %for.body.147
  %107 = load i32, i32* %n, align 4
  %inc156 = add nsw i32 %107, 1
  store i32 %inc156, i32* %n, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.155
  %108 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %108, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.143

for.end.159:                                      ; preds = %if.then.154, %for.cond.143
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  %109 = load %struct.tophit_s*, %struct.tophit_s** %h.addr, align 8
  %num161 = getelementptr inbounds %struct.tophit_s, %struct.tophit_s* %109, i32 0, i32 3
  %110 = load i32, i32* %num161, align 4
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* %n, align 4
  %call163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* %memused, align 4
  %div = sdiv i32 %112, 1000
  %call164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %div)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
