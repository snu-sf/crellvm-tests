; ModuleID = './MultiSource.Benchmarks.Prolangs-C/143.assembler.stringI.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@CH = global i8 32, align 1
@LEX_LEN = global i32 128, align 4
@FRONT = common global i8* null, align 8
@BACK = common global i8* null, align 8
@LEXEME = common global [129 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @GETCHR(%struct._IO_FILE* %STREAM) #0 {
entry:
  %STREAM.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %STREAM, %struct._IO_FILE** %STREAM.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* @CH, align 1
  %1 = load i8*, i8** @FRONT, align 8
  %2 = load i8*, i8** @BACK, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i32, i32* @LEX_LEN, align 4
  %sub = sub nsw i32 %3, 3
  %conv1 = sext i32 %sub to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @FRONT, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** @FRONT, align 8
  %5 = load i8, i8* @CH, align 1
  %6 = load i8*, i8** @FRONT, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** @FRONT, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8 0, i8* %add.ptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @GET_LINE(i8** %LINE, %struct._IO_FILE* %STREAM) #0 {
entry:
  %LINE.addr = alloca i8**, align 8
  %STREAM.addr = alloca %struct._IO_FILE*, align 8
  store i8** %LINE, i8*** %LINE.addr, align 8
  store %struct._IO_FILE* %STREAM, %struct._IO_FILE** %STREAM.addr, align 8
  store i8 0, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i32 0, i64 0), align 1
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i32 0, i32 0), i8** @BACK, align 8
  %0 = load i8*, i8** @BACK, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -1
  store i8* %add.ptr, i8** @FRONT, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  call void @GETCHR(%struct._IO_FILE* %1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8, i8* @CH, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %3) #3
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  call void @GETCHR(%struct._IO_FILE* %5)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i8*, i8** @FRONT, align 8
  store i8 0, i8* %6, align 1
  %7 = load i8**, i8*** %LINE.addr, align 8
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @LEXEME, i32 0, i32 0), i8** %7, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
