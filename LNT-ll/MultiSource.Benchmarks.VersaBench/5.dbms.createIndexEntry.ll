; ModuleID = './MultiSource.Benchmarks.VersaBench/5.dbms.createIndexEntry.bc'
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

@createIndexEntry.name = internal global [17 x i8] c"createIndexEntry\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: nounwind uwtable
define %struct.IndexEntry* @createIndexEntry() #0 {
entry:
  %entry1 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %entry1, align 8
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.IndexEntry*
  store %struct.IndexEntry* %0, %struct.IndexEntry** %entry1, align 8
  %1 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %cmp = icmp eq %struct.IndexEntry* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createIndexEntry.name, i32 0, i32 0), i8 signext 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i32 0, i32 0
  %node = bitcast %union.anon* %child to %struct.IndexNode**
  store %struct.IndexNode* null, %struct.IndexNode** %node, align 8
  %3 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %child2 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %3, i32 0, i32 0
  %dataObject = bitcast %union.anon* %child2 to %struct.DataObject**
  store %struct.DataObject* null, %struct.DataObject** %dataObject, align 8
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %4, i32 0, i32 1
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %T, align 4
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key3 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %5, i32 0, i32 1
  %lower4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key3, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower4, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %X, align 4
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key5 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %6, i32 0, i32 1
  %lower6 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key5, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower6, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %Y, align 4
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key7 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %7, i32 0, i32 1
  %lower8 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key7, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower8, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %Z, align 4
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 1
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key9, i32 0, i32 1
  %T10 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %T10, align 4
  %9 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key11 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %9, i32 0, i32 1
  %upper12 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key11, i32 0, i32 1
  %X13 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper12, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %X13, align 4
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key14 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %10, i32 0, i32 1
  %upper15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key14, i32 0, i32 1
  %Y16 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper15, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %Y16, align 4
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %key17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %11, i32 0, i32 1
  %upper18 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key17, i32 0, i32 1
  %Z19 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper18, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %Z19, align 4
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %12, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  ret %struct.IndexEntry* %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @errorMessage(i8*, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
