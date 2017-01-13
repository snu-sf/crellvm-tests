; ModuleID = './MultiSource.Benchmarks.MiBench/198.telecomm-gsm.toast_lin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@in = external global %struct._IO_FILE*, align 8
@out = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @linear_input(i16* %buf) #0 {
entry:
  %buf.addr = alloca i16*, align 8
  store i16* %buf, i16** %buf.addr, align 8
  %0 = load i16*, i16** %buf.addr, align 8
  %1 = bitcast i16* %0 to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call = call i64 @fread(i8* %1, i64 2, i64 160, %struct._IO_FILE* %2)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @linear_output(i16* %buf) #0 {
entry:
  %buf.addr = alloca i16*, align 8
  store i16* %buf, i16** %buf.addr, align 8
  %0 = load i16*, i16** %buf.addr, align 8
  %1 = bitcast i16* %0 to i8*
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call = call i64 @fwrite(i8* %1, i64 2, i64 160, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 160
  %conv = zext i1 %cmp to i32
  %sub = sub nsw i32 0, %conv
  ret i32 %sub
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
