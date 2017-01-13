; ModuleID = './lib/title.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define void @title(%struct._IO_FILE* %stream, i8 signext %c, i32 %center_p, i8* %format, ...) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i8, align 1
  %center_p.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %padding = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %center_p, i32* %center_p.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vprintflen(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i32 %call, i32* %len, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8*, i8** %format.addr, align 8
  %call5 = call i64 @strlen(i8* %1)
  %sub = sub i64 %call5, 1
  %2 = load i8*, i8** %format.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %center_p.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %padding, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %6 = load i32, i32* %padding, align 4
  %7 = load i32, i32* %len, align 4
  %sub8 = sub nsw i32 79, %7
  %cmp9 = icmp slt i32 %6, %sub8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call11 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %padding, align 4
  %add = add nsw i32 %9, 2
  store i32 %add, i32* %padding, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_start(i8* %arraydecay1314)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load i8*, i8** %format.addr, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call16 = call i32 @vfprintf(%struct._IO_FILE* %10, i8* %11, %struct.__va_list_tag* %arraydecay15)
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1718 = bitcast %struct.__va_list_tag* %arraydecay17 to i8*
  call void @llvm.va_end(i8* %arraydecay1718)
  %12 = load i8*, i8** %format.addr, align 8
  %call19 = call i64 @strlen(i8* %12)
  %sub20 = sub i64 %call19, 1
  %13 = load i8*, i8** %format.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %13, i64 %sub20
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %14 to i32
  %cmp23 = icmp ne i32 %conv22, 10
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %15)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.12
  %16 = load i32, i32* %center_p.addr, align 4
  %tobool28 = icmp ne i32 %16, 0
  br i1 %tobool28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.27
  store i32 0, i32* %padding, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %if.then.29
  %17 = load i32, i32* %padding, align 4
  %18 = load i32, i32* %len, align 4
  %sub31 = sub nsw i32 79, %18
  %cmp32 = icmp slt i32 %17, %sub31
  br i1 %cmp32, label %for.body.34, label %for.end.38

for.body.34:                                      ; preds = %for.cond.30
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call35 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %19)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.34
  %20 = load i32, i32* %padding, align 4
  %add37 = add nsw i32 %20, 2
  store i32 %add37, i32* %padding, align 4
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %if.end.27
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.45, %if.end.39
  %21 = load i32, i32* %len, align 4
  %tobool41 = icmp ne i32 %21, 0
  br i1 %tobool41, label %for.body.42, label %for.end.47

for.body.42:                                      ; preds = %for.cond.40
  %22 = load i8, i8* %c.addr, align 1
  %conv43 = sext i8 %22 to i32
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call44 = call i32 @_IO_putc(i32 %conv43, %struct._IO_FILE* %23)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.42
  %24 = load i32, i32* %len, align 4
  %dec46 = add nsw i32 %24, -1
  store i32 %dec46, i32* %len, align 4
  br label %for.cond.40

for.end.47:                                       ; preds = %for.cond.40
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call48 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call49 = call i32 @fflush(%struct._IO_FILE* %26)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @vprintflen(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare i64 @strlen(i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
