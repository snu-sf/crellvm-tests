; ModuleID = './MultiSource.Benchmarks.VersaBench/23.dbms.createIndexNode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@createIndexNode.name = internal global [16 x i8] c"createIndexNode\00", align 16
@.str = private unnamed_addr constant [24 x i8] c"invalid level specified\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: nounwind uwtable
define %struct.IndexNode* @createIndexNode(i64 %level) #0 {
entry:
  %level.addr = alloca i64, align 8
  %node = alloca %struct.IndexNode*, align 8
  store i64 %level, i64* %level.addr, align 8
  store %struct.IndexNode* null, %struct.IndexNode** %node, align 8
  %0 = load i64, i64* %level.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i32 0, i32 0), i8 signext 1)
  store %struct.IndexNode* null, %struct.IndexNode** %node, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #3
  %1 = bitcast i8* %call to %struct.IndexNode*
  store %struct.IndexNode* %1, %struct.IndexNode** %node, align 8
  %2 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  %cmp1 = icmp eq %struct.IndexNode* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i32 0, i32 0), i8 signext 1)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %3 = load i64, i64* %level.addr, align 8
  %4 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  %level4 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %4, i32 0, i32 0
  store i64 %3, i64* %level4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %5 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %5, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %entries, align 8
  %6 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  ret %struct.IndexNode* %6
}

declare void @errorMessage(i8*, i8 signext) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
