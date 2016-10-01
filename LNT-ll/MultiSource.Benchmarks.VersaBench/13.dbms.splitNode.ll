; ModuleID = './MultiSource.Benchmarks.VersaBench/13.dbms.splitNode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@splitNode.name = internal global [10 x i8] c"splitNode\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"allocation failure - split entry\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"allocation failure - sibling node\00", align 1

; Function Attrs: nounwind uwtable
define i64 @splitNode(%struct.IndexNode* %nodeToSplit, %struct.IndexEntry* %entry1, i64 %fan, %struct.IndexEntry** %splitEntry) #0 {
entry:
  %retval = alloca i64, align 8
  %nodeToSplit.addr = alloca %struct.IndexNode*, align 8
  %entry.addr = alloca %struct.IndexEntry*, align 8
  %fan.addr = alloca i64, align 8
  %splitEntry.addr = alloca %struct.IndexEntry**, align 8
  %listOfEntries = alloca %struct.IndexEntry*, align 8
  %splitNode = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode* %nodeToSplit, %struct.IndexNode** %nodeToSplit.addr, align 8
  store %struct.IndexEntry* %entry1, %struct.IndexEntry** %entry.addr, align 8
  store i64 %fan, i64* %fan.addr, align 8
  store %struct.IndexEntry** %splitEntry, %struct.IndexEntry*** %splitEntry.addr, align 8
  %call = call %struct.IndexEntry* @createIndexEntry()
  %0 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  store %struct.IndexEntry* %call, %struct.IndexEntry** %0, align 8
  %1 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %cmp = icmp eq %struct.IndexEntry* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.IndexNode*, %struct.IndexNode** %nodeToSplit.addr, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %3, i32 0, i32 0
  %4 = load i64, i64* %level, align 8
  %call2 = call %struct.IndexNode* @createIndexNode(i64 %4)
  store %struct.IndexNode* %call2, %struct.IndexNode** %splitNode, align 8
  %5 = load %struct.IndexNode*, %struct.IndexNode** %splitNode, align 8
  %cmp3 = icmp eq %struct.IndexNode* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %8 = load %struct.IndexNode*, %struct.IndexNode** %nodeToSplit.addr, align 8
  %level5 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %8, i32 0, i32 0
  %9 = load i64, i64* %level5, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %7, i64 %9)
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  store %struct.IndexEntry* %10, %struct.IndexEntry** %listOfEntries, align 8
  %11 = load %struct.IndexNode*, %struct.IndexNode** %nodeToSplit.addr, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %11, i32 0, i32 1
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %listOfEntries, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %13, i32 0, i32 2
  store %struct.IndexEntry* %12, %struct.IndexEntry** %next, align 8
  %14 = load %struct.IndexNode*, %struct.IndexNode** %nodeToSplit.addr, align 8
  %entries7 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %14, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %entries7, align 8
  %15 = load %struct.IndexNode*, %struct.IndexNode** %splitNode, align 8
  %entries8 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %15, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %entries8, align 8
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %listOfEntries, align 8
  %17 = load i64, i64* %fan.addr, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %nodeToSplit.addr, align 8
  %entries9 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %18, i32 0, i32 1
  %19 = load %struct.IndexNode*, %struct.IndexNode** %splitNode, align 8
  %entries10 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %19, i32 0, i32 1
  call void @partitionEntries(%struct.IndexEntry* %16, i64 %17, %struct.IndexEntry** %entries9, %struct.IndexEntry** %entries10)
  %20 = load %struct.IndexNode*, %struct.IndexNode** %splitNode, align 8
  %entries11 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %20, i32 0, i32 1
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %entries11, align 8
  %22 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %23 = load %struct.IndexEntry*, %struct.IndexEntry** %22, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %23, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %21, %struct.IndexKey* %key)
  %24 = load %struct.IndexNode*, %struct.IndexNode** %splitNode, align 8
  %25 = load %struct.IndexEntry**, %struct.IndexEntry*** %splitEntry.addr, align 8
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %25, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 0
  %node = bitcast %union.anon* %child to %struct.IndexNode**
  store %struct.IndexNode* %24, %struct.IndexNode** %node, align 8
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %27 = load i64, i64* %retval
  ret i64 %27
}

declare %struct.IndexEntry* @createIndexEntry() #1

declare void @errorMessage(i8*, i8 signext) #1

declare %struct.IndexNode* @createIndexNode(i64) #1

declare void @deleteIndexEntry(%struct.IndexEntry*, i64) #1

declare void @partitionEntries(%struct.IndexEntry*, i64, %struct.IndexEntry**, %struct.IndexEntry**) #1

declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
