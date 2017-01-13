; ModuleID = './MultiSource.Benchmarks.Ptrdist/11.yacr2.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@channelTracks = external global i64, align 8
@channelTracksCopy = external global i64, align 8
@channelNets = external global i64, align 8
@netsAssign = external global i64*, align 8
@netsAssignCopy = external global i64*, align 8
@.str = private unnamed_addr constant [56 x i8] c"Assignment could not route %d columns, trying maze1...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Maze1 could not route %d columns, trying maze2...\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Maze2 could not route %d columns, trying maze3...\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Maze3 could not route %d columns, adding a track...\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %done = alloca i64, align 8
  %fail = alloca i64, align 8
  %net = alloca i64, align 8
  %insert = alloca i64, align 8
  %netsLeft = alloca i32, align 4
  %TIMELOOP = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %TIMELOOP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %0 = load i32, i32* %TIMELOOP, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  call void @Option(i32 %1, i8** %2)
  call void @BuildChannel()
  call void @BuildVCG()
  call void @AcyclicVCG()
  call void @BuildHCG()
  br label %do.body

do.body:                                          ; preds = %do.cond.56, %for.body
  call void @AllocAssign()
  call void @NetsAssign()
  call void @InitAllocMaps()
  %3 = load i64, i64* @channelTracks, align 8
  store i64 %3, i64* @channelTracksCopy, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %do.body
  %4 = load i64, i64* %net, align 8
  %5 = load i64, i64* @channelNets, align 8
  %cmp2 = icmp ule i64 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i64, i64* %net, align 8
  %7 = load i64*, i64** @netsAssign, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %net, align 8
  %10 = load i64*, i64** @netsAssignCopy, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %10, i64 %9
  store i64 %8, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %11 = load i64, i64* %net, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i64 0, i64* %fail, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %land.end, %for.end
  store i64 1, i64* %done, align 8
  %call = call i32 @DrawNets()
  store i32 %call, i32* %netsLeft, align 4
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end.34

if.then:                                          ; preds = %do.body.5
  %12 = load i32, i32* %netsLeft, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0), i32 %12)
  %call8 = call i32 @Maze1()
  store i32 %call8, i32* %netsLeft, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.33

if.then.10:                                       ; preds = %if.then
  %13 = load i32, i32* %netsLeft, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  %call12 = call i32 @Maze2()
  store i32 %call12, i32* %netsLeft, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.32

if.then.14:                                       ; preds = %if.then.10
  %14 = load i32, i32* %netsLeft, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i32 %14)
  %call16 = call i32 @Maze3()
  store i32 %call16, i32* %netsLeft, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %if.then.14
  %15 = load i32, i32* %netsLeft, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0), i32 %15)
  %16 = load i64, i64* %fail, align 8
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then.18
  %17 = load i64, i64* @channelTracks, align 8
  %inc21 = add i64 %17, 1
  store i64 %inc21, i64* @channelTracks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.18
  %18 = load i64, i64* %fail, align 8
  %inc22 = add i64 %18, 1
  store i64 %inc22, i64* %fail, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.28, %if.end
  %19 = load i64, i64* %net, align 8
  %20 = load i64, i64* @channelNets, align 8
  %cmp24 = icmp ule i64 %19, %20
  br i1 %cmp24, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.23
  %21 = load i64, i64* %net, align 8
  %22 = load i64*, i64** @netsAssignCopy, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx26, align 8
  %24 = load i64, i64* %net, align 8
  %25 = load i64*, i64** @netsAssign, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %25, i64 %24
  store i64 %23, i64* %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.25
  %26 = load i64, i64* %net, align 8
  %inc29 = add i64 %26, 1
  store i64 %inc29, i64* %net, align 8
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  store i64 0, i64* %done, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.then.14
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.10
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.body.5
  %27 = load i64, i64* %done, align 8
  %tobool35 = icmp ne i64 %27, 0
  br i1 %tobool35, label %if.end.50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.34
  %28 = load i64, i64* %fail, align 8
  %tobool36 = icmp ne i64 %28, 0
  br i1 %tobool36, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %land.lhs.true
  store i64 1, i64* %insert, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %if.then.37
  %29 = load i64, i64* %insert, align 8
  %30 = load i64, i64* @channelNets, align 8
  %cmp39 = icmp ule i64 %29, %30
  br i1 %cmp39, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.38
  %31 = load i64, i64* %insert, align 8
  %32 = load i64*, i64** @netsAssign, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx41, align 8
  %34 = load i64, i64* %fail, align 8
  %cmp42 = icmp uge i64 %33, %34
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %for.body.40
  %35 = load i64, i64* %insert, align 8
  %36 = load i64*, i64** @netsAssign, align 8
  %arrayidx44 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx44, align 8
  %inc45 = add i64 %37, 1
  store i64 %inc45, i64* %arrayidx44, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %for.body.40
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %38 = load i64, i64* %insert, align 8
  %inc48 = add i64 %38, 1
  store i64 %inc48, i64* %insert, align 8
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %land.lhs.true, %if.end.34
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  %39 = load i64, i64* %done, align 8
  %tobool51 = icmp ne i64 %39, 0
  br i1 %tobool51, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %40 = load i64, i64* %fail, align 8
  %41 = load i64, i64* @channelTracksCopy, align 8
  %add = add i64 %41, 1
  %cmp52 = icmp ule i64 %40, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %42 = phi i1 [ false, %do.cond ], [ %cmp52, %land.rhs ]
  br i1 %42, label %do.body.5, label %do.end

do.end:                                           ; preds = %land.end
  %43 = load i64, i64* %done, align 8
  %tobool53 = icmp ne i64 %43, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.end
  call void @FreeAllocMaps()
  call void @FreeAssign()
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %do.end
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  %44 = load i64, i64* %done, align 8
  %tobool57 = icmp ne i64 %44, 0
  %lnot = xor i1 %tobool57, true
  br i1 %lnot, label %do.body, label %do.end.58

do.end.58:                                        ; preds = %do.cond.56
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @PrintChannel()
  br label %for.inc.60

for.inc.60:                                       ; preds = %do.end.58
  %45 = load i32, i32* %TIMELOOP, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %TIMELOOP, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  call void @exit(i32 0) #3
  unreachable

return:                                           ; No predecessors!
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare void @Option(i32, i8**) #1

declare void @BuildChannel() #1

declare void @BuildVCG() #1

declare void @AcyclicVCG() #1

declare void @BuildHCG() #1

declare void @AllocAssign() #1

declare void @NetsAssign() #1

declare void @InitAllocMaps() #1

declare i32 @DrawNets() #1

declare i32 @printf(i8*, ...) #1

declare i32 @Maze1() #1

declare i32 @Maze2() #1

declare i32 @Maze3() #1

declare void @FreeAllocMaps() #1

declare void @FreeAssign() #1

declare void @PrintChannel() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
