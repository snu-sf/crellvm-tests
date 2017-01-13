; ModuleID = './MultiSource.Benchmarks.Prolangs-C/1.fixoutput.stringI.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@LEX_LEN = global i32 0, align 4
@LEXEME = common global i8* null, align 8
@BACK = common global i8* null, align 8
@FRONT = common global i8* null, align 8
@stdin = external global %struct._IO_FILE*, align 8
@CH = common global i8 0, align 1
@.str = private unnamed_addr constant [61 x i8] c"%D SCANNER ERROR: Tried to BACKUP past beginning of a Token\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @FLUSH() #0 {
entry:
  %0 = load i32, i32* @LEX_LEN, align 4
  %cmp = icmp ugt i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @LEXEME, align 8
  call void @free(i8* %1) #3
  store i32 256, i32* @LEX_LEN, align 4
  %2 = load i32, i32* @LEX_LEN, align 4
  %conv = zext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #3
  store i8* %call, i8** @LEXEME, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @LEXEME, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** @LEXEME, align 8
  store i8* %4, i8** @BACK, align 8
  %5 = load i8*, i8** @BACK, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr, i8** @FRONT, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @GETCHR() #0 {
entry:
  %TEMP = alloca i8*, align 8
  %I = alloca i32, align 4
  %0 = load i8*, i8** @FRONT, align 8
  %1 = load i8*, i8** @BACK, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i32, i32* @LEX_LEN, align 4
  %sub = sub i32 %2, 3
  %conv = zext i32 %sub to i64
  %cmp = icmp sge i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @LEX_LEN, align 4
  %add = add i32 %3, 256
  store i32 %add, i32* @LEX_LEN, align 4
  %4 = load i32, i32* @LEX_LEN, align 4
  %conv2 = zext i32 %4 to i64
  %call = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  store i8* %call, i8** %TEMP, align 8
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %I, align 4
  %6 = load i32, i32* @LEX_LEN, align 4
  %sub3 = sub i32 %6, 256
  %cmp4 = icmp ult i32 %5, %sub3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %I, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** @LEXEME, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i32, i32* %I, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8*, i8** %TEMP, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  store i8 %9, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %I, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  %conv9 = trunc i32 %call8 to i8
  store i8 %conv9, i8* @CH, align 1
  %14 = load i8*, i8** @FRONT, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** @FRONT, align 8
  %15 = load i8, i8* @CH, align 1
  %16 = load i8*, i8** @FRONT, align 8
  store i8 %15, i8* %16, align 1
  %17 = load i8*, i8** @FRONT, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %add.ptr, align 1
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @BACKUP() #0 {
entry:
  %0 = load i8*, i8** @FRONT, align 8
  %1 = load i8*, i8** @BACK, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8, i8* @CH, align 1
  %conv = sext i8 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @ungetc(i32 %conv, %struct._IO_FILE* %3)
  %4 = load i8*, i8** @FRONT, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** @FRONT, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %incdec.ptr, i8** @FRONT, align 8
  %6 = load i8*, i8** @FRONT, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* @CH, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
