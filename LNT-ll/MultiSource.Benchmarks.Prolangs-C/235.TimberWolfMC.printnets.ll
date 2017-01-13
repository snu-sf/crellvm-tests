; ModuleID = './MultiSource.Benchmarks.Prolangs-C/235.TimberWolfMC.printnets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }

@.str = private unnamed_addr constant [7 x i8] c"%s.pyt\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@largestNet = external global i32, align 4
@netRoutes = external global %struct.nrbox*, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A\0Anet %s \00", align 1
@nnameArray = external global i8**, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"    length %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pins %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"        %s\0A\00", align 1
@pinOffset = external global i32*, align 8
@pnameArray = external global i8**, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"channels %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"        %d %d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printnets() #0 {
entry:
  %iptr = alloca i32*, align 8
  %m = alloca i32, align 4
  %net = alloca i32, align 4
  %i = alloca i32, align 4
  %distance = alloca i32, align 4
  %num = alloca i32, align 4
  %cptr = alloca %struct.chanbox*, align 8
  %filename = alloca [1024 x i8], align 16
  %fp2 = alloca %struct._IO_FILE*, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #4
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp2, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end
  %2 = load i32, i32* %net, align 4
  %3 = load i32, i32* @largestNet, align 4
  %cmp5 = icmp sle i32 %2, %3
  br i1 %cmp5, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %m, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.65, %for.body
  %4 = load i32, i32* %m, align 4
  %5 = load i32, i32* %net, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx = getelementptr inbounds %struct.nrbox, %struct.nrbox* %6, i64 %idxprom
  %numRoutes = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %numRoutes, align 4
  %cmp7 = icmp sle i32 %4, %7
  br i1 %cmp7, label %for.body.8, label %for.end.67

for.body.8:                                       ; preds = %for.cond.6
  %8 = load i32, i32* %m, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32, i32* %net, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx11 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %10, i64 %idxprom10
  %alternate = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx11, i32 0, i32 0
  %11 = load %struct.altbox**, %struct.altbox*** %alternate, align 8
  %arrayidx12 = getelementptr inbounds %struct.altbox*, %struct.altbox** %11, i64 %idxprom9
  %12 = load %struct.altbox*, %struct.altbox** %arrayidx12, align 8
  %pinList = getelementptr inbounds %struct.altbox, %struct.altbox* %12, i32 0, i32 0
  %13 = load i32*, i32** %pinList, align 8
  store i32* %13, i32** %iptr, align 8
  %14 = load i32, i32* %m, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load i32, i32* %net, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx15 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %16, i64 %idxprom14
  %alternate16 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx15, i32 0, i32 0
  %17 = load %struct.altbox**, %struct.altbox*** %alternate16, align 8
  %arrayidx17 = getelementptr inbounds %struct.altbox*, %struct.altbox** %17, i64 %idxprom13
  %18 = load %struct.altbox*, %struct.altbox** %arrayidx17, align 8
  %chanList = getelementptr inbounds %struct.altbox, %struct.altbox* %18, i32 0, i32 2
  %19 = load %struct.chanbox*, %struct.chanbox** %chanList, align 8
  store %struct.chanbox* %19, %struct.chanbox** %cptr, align 8
  %20 = load i32, i32* %m, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load i32, i32* %net, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx20 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %22, i64 %idxprom19
  %alternate21 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx20, i32 0, i32 0
  %23 = load %struct.altbox**, %struct.altbox*** %alternate21, align 8
  %arrayidx22 = getelementptr inbounds %struct.altbox*, %struct.altbox** %23, i64 %idxprom18
  %24 = load %struct.altbox*, %struct.altbox** %arrayidx22, align 8
  %distance23 = getelementptr inbounds %struct.altbox, %struct.altbox* %24, i32 0, i32 1
  %25 = load i32, i32* %distance23, align 4
  store i32 %25, i32* %distance, align 4
  %26 = load i32, i32* %m, align 4
  %cmp24 = icmp eq i32 %26, 1
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %for.body.8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %28 = load i32, i32* %net, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i8**, i8*** @nnameArray, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %29, i64 %idxprom26
  %30 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %32 = load i32, i32* %distance, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %34 = load i32*, i32** %iptr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx30, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.25, %for.body.8
  store i32 1, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %36 = load i32, i32* %i, align 4
  %37 = load i32*, i32** %iptr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp sle i32 %36, %38
  br i1 %cmp35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %39 = load i32, i32* %m, align 4
  %cmp37 = icmp eq i32 %39, 1
  br i1 %cmp37, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %for.body.36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %41 = load i32, i32* %net, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i32*, i32** @pinOffset, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %42, i64 %idxprom39
  %43 = load i32, i32* %arrayidx40, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load i32*, i32** %iptr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %45, i64 %idxprom41
  %46 = load i32, i32* %arrayidx42, align 4
  %add = add nsw i32 %43, %46
  %idxprom43 = sext i32 %add to i64
  %47 = load i8**, i8*** @pnameArray, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %47, i64 %idxprom43
  %48 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %48)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.38, %for.body.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %50 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %cmp47 = icmp ne %struct.chanbox* %50, null
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i32, i32* %num, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %num, align 4
  %52 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %next = getelementptr inbounds %struct.chanbox, %struct.chanbox* %52, i32 0, i32 4
  %53 = load %struct.chanbox*, %struct.chanbox** %next, align 8
  store %struct.chanbox* %53, %struct.chanbox** %cptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %m, align 4
  %cmp49 = icmp eq i32 %54, 1
  br i1 %cmp49, label %if.then.50, label %if.end.64

if.then.50:                                       ; preds = %while.end
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %56 = load i32, i32* %num, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %56)
  %57 = load i32, i32* %m, align 4
  %idxprom52 = sext i32 %57 to i64
  %58 = load i32, i32* %net, align 4
  %idxprom53 = sext i32 %58 to i64
  %59 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx54 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %59, i64 %idxprom53
  %alternate55 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx54, i32 0, i32 0
  %60 = load %struct.altbox**, %struct.altbox*** %alternate55, align 8
  %arrayidx56 = getelementptr inbounds %struct.altbox*, %struct.altbox** %60, i64 %idxprom52
  %61 = load %struct.altbox*, %struct.altbox** %arrayidx56, align 8
  %chanList57 = getelementptr inbounds %struct.altbox, %struct.altbox* %61, i32 0, i32 2
  %62 = load %struct.chanbox*, %struct.chanbox** %chanList57, align 8
  store %struct.chanbox* %62, %struct.chanbox** %cptr, align 8
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.60, %if.then.50
  %63 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %cmp59 = icmp ne %struct.chanbox* %63, null
  br i1 %cmp59, label %while.body.60, label %while.end.63

while.body.60:                                    ; preds = %while.cond.58
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %65 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %from = getelementptr inbounds %struct.chanbox, %struct.chanbox* %65, i32 0, i32 0
  %66 = load i32, i32* %from, align 4
  %67 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %to = getelementptr inbounds %struct.chanbox, %struct.chanbox* %67, i32 0, i32 1
  %68 = load i32, i32* %to, align 4
  %69 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %foffset = getelementptr inbounds %struct.chanbox, %struct.chanbox* %69, i32 0, i32 2
  %70 = load i32, i32* %foffset, align 4
  %71 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %toffset = getelementptr inbounds %struct.chanbox, %struct.chanbox* %71, i32 0, i32 3
  %72 = load i32, i32* %toffset, align 4
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 %66, i32 %68, i32 %70, i32 %72)
  %73 = load %struct.chanbox*, %struct.chanbox** %cptr, align 8
  %next62 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %73, i32 0, i32 4
  %74 = load %struct.chanbox*, %struct.chanbox** %next62, align 8
  store %struct.chanbox* %74, %struct.chanbox** %cptr, align 8
  br label %while.cond.58

while.end.63:                                     ; preds = %while.cond.58
  br label %if.end.64

if.end.64:                                        ; preds = %while.end.63, %while.end
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %75 = load i32, i32* %m, align 4
  %inc66 = add nsw i32 %75, 1
  store i32 %inc66, i32* %m, align 4
  br label %for.cond.6

for.end.67:                                       ; preds = %for.cond.6
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %76 = load i32, i32* %net, align 4
  %inc69 = add nsw i32 %76, 1
  store i32 %inc69, i32* %net, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %77)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
