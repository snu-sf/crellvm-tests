; ModuleID = './MultiSource.Benchmarks.McCat/18.04-bisect.allocvector.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error: couldn't allocate V in allocvector.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @allocvector(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %V = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #4
  store i8* %call, i8** %V, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %V, align 8
  %3 = load i64, i64* %size.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %3, i32 1, i1 false)
  %4 = load i8*, i8** %V, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @dallocvector(i32 %n, double** %V) #0 {
entry:
  %n.addr = alloca i32, align 4
  %V.addr = alloca double**, align 8
  store i32 %n, i32* %n.addr, align 4
  store double** %V, double*** %V.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @allocvector(i64 %mul)
  %1 = bitcast i8* %call to double*
  %2 = load double**, double*** %V.addr, align 8
  store double* %1, double** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @sallocvector(i32 %n, float** %V) #0 {
entry:
  %n.addr = alloca i32, align 4
  %V.addr = alloca float**, align 8
  store i32 %n, i32* %n.addr, align 4
  store float** %V, float*** %V.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @allocvector(i64 %mul)
  %1 = bitcast i8* %call to float*
  %2 = load float**, float*** %V.addr, align 8
  store float* %1, float** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @iallocvector(i32 %n, i32** %V) #0 {
entry:
  %n.addr = alloca i32, align 4
  %V.addr = alloca i32**, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32** %V, i32*** %V.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @allocvector(i64 %mul)
  %1 = bitcast i8* %call to i32*
  %2 = load i32**, i32*** %V.addr, align 8
  store i32* %1, i32** %2, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
