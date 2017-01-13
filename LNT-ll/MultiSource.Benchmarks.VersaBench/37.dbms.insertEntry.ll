; ModuleID = './MultiSource.Benchmarks.VersaBench/37.dbms.insertEntry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@insertEntry.name = internal global [12 x i8] c"insertEntry\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"can't choose entry on node\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't split LEAF node\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't split non-LEAF node\00", align 1

; Function Attrs: nounwind uwtable
define i64 @insertEntry(%struct.IndexNode* %node, %struct.IndexEntry* %entry1, i64 %level, i64 %fan, %struct.IndexEntry** %splitEntry) #0 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca %struct.IndexNode*, align 8
  %entry.addr = alloca %struct.IndexEntry*, align 8
  %level.addr = alloca i64, align 8
  %fan.addr = alloca i64, align 8
  %splitEntry.addr = alloca %struct.IndexEntry**, align 8
  %returnCode = alloca i64, align 8
  %chosen = alloca %struct.IndexEntry*, align 8
  %lastEntry = alloca %struct.IndexEntry*, align 8
  %tempEntry = alloca %struct.IndexEntry*, align 8
  %numberOfEntries = alloca i64, align 8
  %lastEntry37 = alloca %struct.IndexEntry*, align 8
  %tempEntry38 = alloca %struct.IndexEntry*, align 8
  %numberOfEntries39 = alloca i64, align 8
  store %struct.IndexNode* %node, %struct.IndexNode** %node.addr, align 8
  store %struct.IndexEntry* %entry1, %struct.IndexEntry** %entry.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  store i64 %fan, i64* %fan.addr, align 8
  store %struct.IndexEntry** %splitEntry, %struct.IndexEntry*** %splitEntry.addr, align 8
  %0 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level2 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i32 0, i32 0
  %1 = load i64, i64* %level2, align 8
  %2 = load i64, i64* %level.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.else.36

if.then:                                          ; preds = %entry
  %3 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %call = call %struct.IndexEntry* @chooseEntry(%struct.IndexNode* %3, %struct.IndexEntry* %4)
  store %struct.IndexEntry* %call, %struct.IndexEntry** %chosen, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %chosen, align 8
  %cmp3 = icmp eq %struct.IndexEntry* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %chosen, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %6, i32 0, i32 0
  %node5 = bitcast %union.anon* %child to %struct.IndexNode**
  %7 = load %struct.IndexNode*, %struct.IndexNode** %node5, align 8
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %9 = load i64, i64* %level.addr, align 8
  %10 = load i64, i64* %fan.addr, align 8
  %11 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %call6 = call i64 @insertEntry(%struct.IndexNode* %7, %struct.IndexEntry* %8, i64 %9, i64 %10, %struct.IndexEntry** %11)
  store i64 %call6, i64* %returnCode, align 8
  %12 = load i64, i64* %returnCode, align 8
  %cmp7 = icmp eq i64 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.else.28

if.then.8:                                        ; preds = %if.end
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %chosen, align 8
  %child9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %13, i32 0, i32 0
  %node10 = bitcast %union.anon* %child9 to %struct.IndexNode**
  %14 = load %struct.IndexNode*, %struct.IndexNode** %node10, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %14, i32 0, i32 1
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %chosen, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %16, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %15, %struct.IndexKey* %key)
  %17 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %cmp11 = icmp ne %struct.IndexEntry* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %if.then.8
  store %struct.IndexEntry* null, %struct.IndexEntry** %lastEntry, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %tempEntry, align 8
  store i64 0, i64* %numberOfEntries, align 8
  %19 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries13 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %19, i32 0, i32 1
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %entries13, align 8
  store %struct.IndexEntry* %20, %struct.IndexEntry** %tempEntry, align 8
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry, align 8
  store %struct.IndexEntry* %21, %struct.IndexEntry** %lastEntry, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry, align 8
  %cmp14 = icmp ne %struct.IndexEntry* %22, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i64, i64* %numberOfEntries, align 8
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %numberOfEntries, align 8
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry, align 8
  store %struct.IndexEntry* %24, %struct.IndexEntry** %lastEntry, align 8
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %25, i32 0, i32 2
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %26, %struct.IndexEntry** %tempEntry, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load i64, i64* %numberOfEntries, align 8
  %28 = load i64, i64* %fan.addr, align 8
  %cmp15 = icmp slt i64 %27, %28
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.end
  %29 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %29, align 8
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %lastEntry, align 8
  %next17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %31, i32 0, i32 2
  store %struct.IndexEntry* %30, %struct.IndexEntry** %next17, align 8
  %32 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %32, align 8
  br label %if.end.26

if.else:                                          ; preds = %while.end
  %33 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %34 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %35 = load %struct.IndexEntry*, %struct.IndexEntry** %34, align 8
  %36 = load i64, i64* %fan.addr, align 8
  %call18 = call i64 @splitNode(%struct.IndexNode* %33, %struct.IndexEntry* %35, i64 %36, %struct.IndexEntry** %tempEntry)
  store i64 %call18, i64* %returnCode, align 8
  %37 = load i64, i64* %returnCode, align 8
  %cmp19 = icmp eq i64 %37, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry, align 8
  %39 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  store %struct.IndexEntry* %38, %struct.IndexEntry** %39, align 8
  br label %if.end.25

if.else.21:                                       ; preds = %if.else
  %40 = load i64, i64* %returnCode, align 8
  %cmp22 = icmp eq i64 %40, 1
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else.21
  store i64 2, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.else.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.8
  br label %if.end.35

if.else.28:                                       ; preds = %if.end
  %41 = load i64, i64* %returnCode, align 8
  %cmp29 = icmp eq i64 %41, 1
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.28
  %42 = load i64, i64* %returnCode, align 8
  %cmp30 = icmp eq i64 %42, 2
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false
  %43 = load i64, i64* %returnCode, align 8
  %cmp32 = icmp eq i64 %43, 3
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false, %if.else.28
  %44 = load i64, i64* %returnCode, align 8
  store i64 %44, i64* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.27
  br label %if.end.65

if.else.36:                                       ; preds = %entry
  store %struct.IndexEntry* null, %struct.IndexEntry** %lastEntry37, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %tempEntry38, align 8
  store i64 0, i64* %numberOfEntries39, align 8
  %45 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries40 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %45, i32 0, i32 1
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %entries40, align 8
  store %struct.IndexEntry* %46, %struct.IndexEntry** %tempEntry38, align 8
  %47 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry38, align 8
  store %struct.IndexEntry* %47, %struct.IndexEntry** %lastEntry37, align 8
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.43, %if.else.36
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry38, align 8
  %cmp42 = icmp ne %struct.IndexEntry* %48, null
  br i1 %cmp42, label %while.body.43, label %while.end.46

while.body.43:                                    ; preds = %while.cond.41
  %49 = load i64, i64* %numberOfEntries39, align 8
  %inc44 = add nsw i64 %49, 1
  store i64 %inc44, i64* %numberOfEntries39, align 8
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry38, align 8
  store %struct.IndexEntry* %50, %struct.IndexEntry** %lastEntry37, align 8
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %tempEntry38, align 8
  %next45 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %51, i32 0, i32 2
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %next45, align 8
  store %struct.IndexEntry* %52, %struct.IndexEntry** %tempEntry38, align 8
  br label %while.cond.41

while.end.46:                                     ; preds = %while.cond.41
  %53 = load i64, i64* %numberOfEntries39, align 8
  %54 = load i64, i64* %fan.addr, align 8
  %cmp47 = icmp slt i64 %53, %54
  br i1 %cmp47, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %while.end.46
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %lastEntry37, align 8
  %cmp49 = icmp eq %struct.IndexEntry* %55, null
  br i1 %cmp49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.then.48
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %57 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries51 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %57, i32 0, i32 1
  store %struct.IndexEntry* %56, %struct.IndexEntry** %entries51, align 8
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.48
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %59 = load %struct.IndexEntry*, %struct.IndexEntry** %lastEntry37, align 8
  %next53 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %59, i32 0, i32 2
  store %struct.IndexEntry* %58, %struct.IndexEntry** %next53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  %60 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %60, align 8
  br label %if.end.64

if.else.55:                                       ; preds = %while.end.46
  %61 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %62 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %63 = load i64, i64* %fan.addr, align 8
  %64 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %call56 = call i64 @splitNode(%struct.IndexNode* %61, %struct.IndexEntry* %62, i64 %63, %struct.IndexEntry** %64)
  store i64 %call56, i64* %returnCode, align 8
  %65 = load i64, i64* %returnCode, align 8
  %cmp57 = icmp eq i64 %65, 1
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.else.55
  %66 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level59 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %66, i32 0, i32 0
  %67 = load i64, i64* %level59, align 8
  %cmp60 = icmp eq i64 %67, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.58
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.else.62:                                       ; preds = %if.then.58
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.end.63:                                        ; preds = %if.else.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.54
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.35
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.else.62, %if.then.61, %if.then.33, %if.then.23, %if.then.4
  %68 = load i64, i64* %retval
  ret i64 %68
}

declare %struct.IndexEntry* @chooseEntry(%struct.IndexNode*, %struct.IndexEntry*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #1

declare i64 @splitNode(%struct.IndexNode*, %struct.IndexEntry*, i64, %struct.IndexEntry**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
