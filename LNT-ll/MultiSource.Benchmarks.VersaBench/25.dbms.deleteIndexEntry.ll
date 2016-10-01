; ModuleID = './MultiSource.Benchmarks.VersaBench/25.dbms.deleteIndexEntry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }

@deleteIndexEntry.name = internal global [17 x i8] c"deleteIndexEntry\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1

; Function Attrs: nounwind uwtable
define void @deleteIndexEntry(%struct.IndexEntry* %entry1, i64 %level) #0 {
entry:
  %entry.addr = alloca %struct.IndexEntry*, align 8
  %level.addr = alloca i64, align 8
  store %struct.IndexEntry* %entry1, %struct.IndexEntry** %entry.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  %0 = load i64, i64* %level.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %1, i32 0, i32 0
  %node = bitcast %union.anon* %child to %struct.IndexNode**
  %2 = load %struct.IndexNode*, %struct.IndexNode** %node, align 8
  call void @deleteIndexNode(%struct.IndexNode* %2)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %level.addr, align 8
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %child4 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %4, i32 0, i32 0
  %dataObject = bitcast %union.anon* %child4 to %struct.DataObject**
  %5 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  call void @deleteDataObject(%struct.DataObject* %5)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @deleteIndexEntry.name, i32 0, i32 0), i8 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %7 = bitcast %struct.IndexEntry* %6 to i8*
  call void @free(i8* %7) #3
  store %struct.IndexEntry* null, %struct.IndexEntry** %entry.addr, align 8
  ret void
}

declare void @deleteIndexNode(%struct.IndexNode*) #1

declare void @deleteDataObject(%struct.DataObject*) #1

declare void @errorMessage(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
