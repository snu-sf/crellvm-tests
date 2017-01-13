; ModuleID = './MultiSource.Benchmarks.MallocBench/56.gs.gsmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmisc.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: malloc failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gs_malloc(i32 %num_elts, i32 %elt_size, i8* %client_name) #0 {
entry:
  %num_elts.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store i32 %num_elts, i32* %num_elts.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  %0 = load i32, i32* %num_elts.addr, align 4
  %1 = load i32, i32* %elt_size.addr, align 4
  %mul = mul i32 %0, %1
  %conv = zext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #3
  store i8* %call, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 42)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %client_name.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %ptr, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gs_free(i8* %ptr, i32 %num_elts, i32 %elt_size, i8* %client_name) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %num_elts.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %client_name.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %num_elts, i32* %num_elts.addr, align 4
  store i32 %elt_size, i32* %elt_size.addr, align 4
  store i8* %client_name, i8** %client_name.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #3
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
