; ModuleID = 'nalucommon.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"AllocNALU: n\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AllocNALU: n->buf\00", align 1

; Function Attrs: nounwind uwtable
define %struct.NALU_t* @AllocNALU(i32 %buffersize) #0 {
entry:
  %buffersize.addr = alloca i32, align 4
  %n = alloca %struct.NALU_t*, align 8
  store i32 %buffersize, i32* %buffersize.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 32) #3
  %0 = bitcast i8* %call to %struct.NALU_t*
  store %struct.NALU_t* %0, %struct.NALU_t** %n, align 8
  %cmp = icmp eq %struct.NALU_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %buffersize.addr, align 4
  %2 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %max_size = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 2
  store i32 %1, i32* %max_size, align 4
  %3 = load i32, i32* %buffersize.addr, align 4
  %conv = sext i32 %3 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 1) #3
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 6
  store i8* %call1, i8** %buf, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %5 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  ret %struct.NALU_t* %5
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @FreeNALU(%struct.NALU_t* %n) #0 {
entry:
  %n.addr = alloca %struct.NALU_t*, align 8
  store %struct.NALU_t* %n, %struct.NALU_t** %n.addr, align 8
  %0 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %tobool = icmp ne %struct.NALU_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %1, i32 0, i32 6
  %2 = load i8*, i8** %buf, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf3 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %3, i32 0, i32 6
  %4 = load i8*, i8** %buf3, align 8
  call void @free(i8* %4) #3
  %5 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %buf4 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %5, i32 0, i32 6
  store i8* null, i8** %buf4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.NALU_t*, %struct.NALU_t** %n.addr, align 8
  %7 = bitcast %struct.NALU_t* %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
