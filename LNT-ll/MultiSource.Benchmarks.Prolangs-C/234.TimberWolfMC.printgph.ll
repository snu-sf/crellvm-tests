; ModuleID = './MultiSource.Benchmarks.Prolangs-C/234.TimberWolfMC.printgph.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.rte\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.gph\00", align 1
@eNum = external global i32, align 4
@eArray = external global %struct.ebox*, align 8
@edgeTransition = external global i32, align 4
@rectArray = external global %struct.rect*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"edge %5d %5d   length %8d  capacity %8d\0A\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"edge  node: %5d  xloc: %d  yloc: %d    node: %5d  xloc: %d  yloc: %d   length: %d   capacity: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printgph() #0 {
entry:
  %filename = alloca [1024 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %fpr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %length = alloca i32, align 4
  %width = alloca i32, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #3
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fpr, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %1 = load i8*, i8** @cktName, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %1) #3
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call6 = call %struct._IO_FILE* @fopen(i8* %arraydecay5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @eNum, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx = getelementptr inbounds %struct.ebox, %struct.ebox* %5, i64 %idxprom
  %notActive = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx, i32 0, i32 11
  %6 = load i32, i32* %notActive, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then, label %if.end.47

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx9 = getelementptr inbounds %struct.ebox, %struct.ebox* %8, i64 %idxprom8
  %index110 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx9, i32 0, i32 0
  %9 = load i32, i32* %index110, align 4
  store i32 %9, i32* %index1, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx12 = getelementptr inbounds %struct.ebox, %struct.ebox* %11, i64 %idxprom11
  %index213 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx12, i32 0, i32 1
  %12 = load i32, i32* %index213, align 4
  store i32 %12, i32* %index2, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @edgeTransition, align 4
  %cmp14 = icmp sle i32 %13, %14
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %15 = load i32, i32* %index2, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx17 = getelementptr inbounds %struct.rect, %struct.rect* %16, i64 %idxprom16
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx17, i32 0, i32 1
  %17 = load i32, i32* %yc, align 4
  %18 = load i32, i32* %index1, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx19 = getelementptr inbounds %struct.rect, %struct.rect* %19, i64 %idxprom18
  %yc20 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx19, i32 0, i32 1
  %20 = load i32, i32* %yc20, align 4
  %sub = sub nsw i32 %17, %20
  store i32 %sub, i32* %length, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i32, i32* %index2, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx22 = getelementptr inbounds %struct.rect, %struct.rect* %22, i64 %idxprom21
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx22, i32 0, i32 0
  %23 = load i32, i32* %xc, align 4
  %24 = load i32, i32* %index1, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.rect, %struct.rect* %25, i64 %idxprom23
  %xc25 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx24, i32 0, i32 0
  %26 = load i32, i32* %xc25, align 4
  %sub26 = sub nsw i32 %23, %26
  store i32 %sub26, i32* %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %27 = load i32, i32* %length, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx28 = getelementptr inbounds %struct.ebox, %struct.ebox* %29, i64 %idxprom27
  %length29 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx28, i32 0, i32 5
  store i32 %27, i32* %length29, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %arrayidx31 = getelementptr inbounds %struct.ebox, %struct.ebox* %31, i64 %idxprom30
  %width32 = getelementptr inbounds %struct.ebox, %struct.ebox* %arrayidx31, i32 0, i32 2
  %32 = load i32, i32* %width32, align 4
  store i32 %32, i32* %width, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %34 = load i32, i32* %index1, align 4
  %35 = load i32, i32* %index2, align 4
  %36 = load i32, i32* %length, align 4
  %37 = load i32, i32* %width, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %34, i32 %35, i32 %36, i32 %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fpr, align 8
  %39 = load i32, i32* %index1, align 4
  %40 = load i32, i32* %index1, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx35 = getelementptr inbounds %struct.rect, %struct.rect* %41, i64 %idxprom34
  %xc36 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx35, i32 0, i32 0
  %42 = load i32, i32* %xc36, align 4
  %43 = load i32, i32* %index1, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx38 = getelementptr inbounds %struct.rect, %struct.rect* %44, i64 %idxprom37
  %yc39 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx38, i32 0, i32 1
  %45 = load i32, i32* %yc39, align 4
  %46 = load i32, i32* %index2, align 4
  %47 = load i32, i32* %index2, align 4
  %idxprom40 = sext i32 %47 to i64
  %48 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.rect, %struct.rect* %48, i64 %idxprom40
  %xc42 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx41, i32 0, i32 0
  %49 = load i32, i32* %xc42, align 4
  %50 = load i32, i32* %index2, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx44 = getelementptr inbounds %struct.rect, %struct.rect* %51, i64 %idxprom43
  %yc45 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx44, i32 0, i32 1
  %52 = load i32, i32* %yc45, align 4
  %53 = load i32, i32* %length, align 4
  %54 = load i32, i32* %width, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i32 0, i32 0), i32 %39, i32 %42, i32 %45, i32 %46, i32 %49, i32 %52, i32 %53, i32 %54)
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call48 = call i32 @fclose(%struct._IO_FILE* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fpr, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %57)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
