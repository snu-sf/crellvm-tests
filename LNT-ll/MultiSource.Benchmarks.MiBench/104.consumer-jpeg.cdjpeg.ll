; ModuleID = './MultiSource.Benchmarks.MiBench/104.consumer-jpeg.cdjpeg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @keymatch(i8* %arg, i8* %keyword, i32 %minchars) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %keyword.addr = alloca i8*, align 8
  %minchars.addr = alloca i32, align 4
  %ca = alloca i32, align 4
  %ck = alloca i32, align 4
  %nmatched = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i8* %keyword, i8** %keyword.addr, align 8
  store i32 %minchars, i32* %minchars.addr, align 4
  store i32 0, i32* %nmatched, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load i8*, i8** %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %ca, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %keyword.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr2, i8** %keyword.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = sext i8 %3 to i32
  store i32 %conv3, i32* %ck, align 4
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* %ca, align 4
  %idxprom = sext i32 %4 to i64
  %call = call i16** @__ctype_b_loc() #3
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %ca, align 4
  %call8 = call i32 @tolower(i32 %7) #4
  store i32 %call8, i32* %ca, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %8 = load i32, i32* %ca, align 4
  %9 = load i32, i32* %ck, align 4
  %cmp10 = icmp ne i32 %8, %9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %10 = load i32, i32* %nmatched, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nmatched, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %nmatched, align 4
  %12 = load i32, i32* %minchars.addr, align 4
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @read_stdin() #0 {
entry:
  %input_file = alloca %struct._IO_FILE*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %input_file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  ret %struct._IO_FILE* %1
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @write_stdout() #0 {
entry:
  %output_file = alloca %struct._IO_FILE*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %output_file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  ret %struct._IO_FILE* %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
