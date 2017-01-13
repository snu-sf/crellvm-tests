; ModuleID = './MultiSource.Benchmarks.Prolangs-C/180.TimberWolfMC.bellman.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bellbox = type { i32, i32 }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numXnodes = external global i32, align 4
@xBellArray = external global %struct.bellbox*, align 8
@numYnodes = external global i32, align 4
@yBellArray = external global %struct.bellbox*, align 8
@xNodeArray = external global %struct.wcbox**, align 8
@yNodeArray = external global %struct.wcbox**, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Longest Hori. Path in Circuit Graph has span: <%d>\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Longest Vert. Path in Circuit Graph has span: <%d>\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @bellman() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %D = alloca i32, align 4
  %distance = alloca i32, align 4
  %ptr = alloca %struct.wcbox*, align 8
  %0 = load i32, i32* @numXnodes, align 4
  %add = add nsw i32 1, %0
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct.bellbox*
  store %struct.bellbox* %1, %struct.bellbox** @xBellArray, align 8
  %2 = load i32, i32* @numYnodes, align 4
  %add1 = add nsw i32 1, %2
  %conv2 = sext i32 %add1 to i64
  %mul3 = mul i64 %conv2, 8
  %call4 = call noalias i8* @malloc(i64 %mul3) #3
  %3 = bitcast i8* %call4 to %struct.bellbox*
  store %struct.bellbox* %3, %struct.bellbox** @yBellArray, align 8
  %4 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx = getelementptr inbounds %struct.bellbox, %struct.bellbox* %4, i64 1
  %from = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx, i32 0, i32 1
  store i32 0, i32* %from, align 4
  %5 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx5 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %5, i64 1
  %distance6 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx5, i32 0, i32 0
  store i32 0, i32* %distance6, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @numXnodes, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx8 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %9, i64 %idxprom
  %distance9 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx8, i32 0, i32 0
  store i32 10000000, i32* %distance9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.38, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @numXnodes, align 4
  %cmp11 = icmp sle i32 %11, %12
  br i1 %cmp11, label %for.body.13, label %for.end.40

for.body.13:                                      ; preds = %for.cond.10
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx15 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %14, i64 %idxprom14
  %distance16 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx15, i32 0, i32 0
  %15 = load i32, i32* %distance16, align 4
  store i32 %15, i32* %D, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %arrayidx18 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %17, i64 %idxprom17
  %18 = load %struct.wcbox*, %struct.wcbox** %arrayidx18, align 8
  store %struct.wcbox* %18, %struct.wcbox** %ptr, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.36, %for.body.13
  %19 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp20 = icmp ne %struct.wcbox* %19, null
  br i1 %cmp20, label %for.body.22, label %for.end.37

for.body.22:                                      ; preds = %for.cond.19
  %20 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %node = getelementptr inbounds %struct.wcbox, %struct.wcbox* %20, i32 0, i32 1
  %21 = load i32, i32* %node, align 4
  store i32 %21, i32* %j, align 4
  %22 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length = getelementptr inbounds %struct.wcbox, %struct.wcbox* %22, i32 0, i32 3
  %23 = load i32, i32* %length, align 4
  %sub = sub nsw i32 0, %23
  store i32 %sub, i32* %distance, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx24 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %25, i64 %idxprom23
  %distance25 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx24, i32 0, i32 0
  %26 = load i32, i32* %distance25, align 4
  %27 = load i32, i32* %D, align 4
  %28 = load i32, i32* %distance, align 4
  %add26 = add nsw i32 %27, %28
  %cmp27 = icmp sgt i32 %26, %add26
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  %29 = load i32, i32* %D, align 4
  %30 = load i32, i32* %distance, align 4
  %add29 = add nsw i32 %29, %30
  %31 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx31 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %32, i64 %idxprom30
  %distance32 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx31, i32 0, i32 0
  store i32 %add29, i32* %distance32, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %35, i64 %idxprom33
  %from35 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx34, i32 0, i32 1
  store i32 %33, i32* %from35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.22
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end
  %36 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next = getelementptr inbounds %struct.wcbox, %struct.wcbox* %36, i32 0, i32 4
  %37 = load %struct.wcbox*, %struct.wcbox** %next, align 8
  store %struct.wcbox* %37, %struct.wcbox** %ptr, align 8
  br label %for.cond.19

for.end.37:                                       ; preds = %for.cond.19
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %38 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %38, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.10

for.end.40:                                       ; preds = %for.cond.10
  %39 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %39, i64 1
  %from42 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx41, i32 0, i32 1
  store i32 0, i32* %from42, align 4
  %40 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx43 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %40, i64 1
  %distance44 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx43, i32 0, i32 0
  store i32 0, i32* %distance44, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.52, %for.end.40
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @numYnodes, align 4
  %cmp46 = icmp sle i32 %41, %42
  br i1 %cmp46, label %for.body.48, label %for.end.54

for.body.48:                                      ; preds = %for.cond.45
  %43 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx50 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %44, i64 %idxprom49
  %distance51 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx50, i32 0, i32 0
  store i32 10000000, i32* %distance51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.48
  %45 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %45, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.45

for.end.54:                                       ; preds = %for.cond.45
  store i32 1, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.89, %for.end.54
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* @numYnodes, align 4
  %cmp56 = icmp sle i32 %46, %47
  br i1 %cmp56, label %for.body.58, label %for.end.91

for.body.58:                                      ; preds = %for.cond.55
  %48 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %48 to i64
  %49 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx60 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %49, i64 %idxprom59
  %distance61 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx60, i32 0, i32 0
  %50 = load i32, i32* %distance61, align 4
  store i32 %50, i32* %D, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %arrayidx63 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %52, i64 %idxprom62
  %53 = load %struct.wcbox*, %struct.wcbox** %arrayidx63, align 8
  store %struct.wcbox* %53, %struct.wcbox** %ptr, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.86, %for.body.58
  %54 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %cmp65 = icmp ne %struct.wcbox* %54, null
  br i1 %cmp65, label %for.body.67, label %for.end.88

for.body.67:                                      ; preds = %for.cond.64
  %55 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %node68 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %55, i32 0, i32 1
  %56 = load i32, i32* %node68, align 4
  store i32 %56, i32* %j, align 4
  %57 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %length69 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %57, i32 0, i32 3
  %58 = load i32, i32* %length69, align 4
  %sub70 = sub nsw i32 0, %58
  store i32 %sub70, i32* %distance, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx72 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %60, i64 %idxprom71
  %distance73 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx72, i32 0, i32 0
  %61 = load i32, i32* %distance73, align 4
  %62 = load i32, i32* %D, align 4
  %63 = load i32, i32* %distance, align 4
  %add74 = add nsw i32 %62, %63
  %cmp75 = icmp sgt i32 %61, %add74
  br i1 %cmp75, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %for.body.67
  %64 = load i32, i32* %D, align 4
  %65 = load i32, i32* %distance, align 4
  %add78 = add nsw i32 %64, %65
  %66 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %66 to i64
  %67 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx80 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %67, i64 %idxprom79
  %distance81 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx80, i32 0, i32 0
  store i32 %add78, i32* %distance81, align 4
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %69 to i64
  %70 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx83 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %70, i64 %idxprom82
  %from84 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx83, i32 0, i32 1
  store i32 %68, i32* %from84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.77, %for.body.67
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %71 = load %struct.wcbox*, %struct.wcbox** %ptr, align 8
  %next87 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %71, i32 0, i32 4
  %72 = load %struct.wcbox*, %struct.wcbox** %next87, align 8
  store %struct.wcbox* %72, %struct.wcbox** %ptr, align 8
  br label %for.cond.64

for.end.88:                                       ; preds = %for.cond.64
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.88
  %73 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %73, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.55

for.end.91:                                       ; preds = %for.cond.55
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = load i32, i32* @numXnodes, align 4
  %idxprom92 = sext i32 %75 to i64
  %76 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %arrayidx93 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %76, i64 %idxprom92
  %distance94 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx93, i32 0, i32 0
  %77 = load i32, i32* %distance94, align 4
  %sub95 = sub nsw i32 0, %77
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), i32 %sub95)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %79 = load i32, i32* @numYnodes, align 4
  %idxprom97 = sext i32 %79 to i64
  %80 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %arrayidx98 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %80, i64 %idxprom97
  %distance99 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %arrayidx98, i32 0, i32 0
  %81 = load i32, i32* %distance99, align 4
  %sub100 = sub nsw i32 0, %81
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i32 %sub100)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
