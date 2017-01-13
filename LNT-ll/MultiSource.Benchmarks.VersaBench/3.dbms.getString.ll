; ModuleID = './MultiSource.Benchmarks.VersaBench/3.dbms.getString.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getString.buffer = internal global [1025 x i8] zeroinitializer, align 16
@getString.name = internal global [10 x i8] c"getString\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"maximum buffer length exceeded\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error pushing character back onto stream\00", align 1

; Function Attrs: nounwind uwtable
define i8* @getString(%struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %nextChar = alloca i64, align 8
  %bufferLength = alloca i64, align 8
  %check = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %nextChar, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %nextChar, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i64, i64* %nextChar, align 8
  %cmp2 = icmp ne i64 %2, 10
  br i1 %cmp2, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load i64, i64* %nextChar, align 8
  %cmp5 = icmp ne i64 %3, 13
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %4 = load i64, i64* %nextChar, align 8
  %conv7 = trunc i64 %4 to i32
  %idxprom = sext i32 %conv7 to i64
  %call8 = call i16** @__ctype_b_loc() #3
  %5 = load i16*, i16** %call8, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv9 = zext i16 %6 to i32
  %and = and i32 %conv9, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 @fgetc(%struct._IO_FILE* %8)
  %conv11 = sext i32 %call10 to i64
  store i64 %conv11, i64* %nextChar, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %nextChar, align 8
  %cmp12 = icmp eq i64 %9, -1
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %10 = load i64, i64* %nextChar, align 8
  %cmp14 = icmp eq i64 %10, 10
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load i64, i64* %nextChar, align 8
  %cmp16 = icmp eq i64 %11, 13
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %lor.lhs.false, %if.else
  %12 = load i64, i64* %nextChar, align 8
  %conv19 = trunc i64 %12 to i32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call20 = call i32 @ungetc(i32 %conv19, %struct._IO_FILE* %13)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.21

if.end.21:                                        ; preds = %if.end
  %14 = load i64, i64* %nextChar, align 8
  %conv22 = trunc i64 %14 to i8
  store i8 %conv22, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i64 0), align 1
  store i64 1, i64* %bufferLength, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call23 = call i32 @fgetc(%struct._IO_FILE* %15)
  %conv24 = sext i32 %call23 to i64
  store i64 %conv24, i64* %nextChar, align 8
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.42, %if.end.21
  %16 = load i64, i64* %nextChar, align 8
  %cmp26 = icmp ne i64 %16, -1
  br i1 %cmp26, label %land.rhs.28, label %land.end.36

land.rhs.28:                                      ; preds = %while.cond.25
  %17 = load i64, i64* %nextChar, align 8
  %conv29 = trunc i64 %17 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %call31 = call i16** @__ctype_b_loc() #3
  %18 = load i16*, i16** %call31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %18, i64 %idxprom30
  %19 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %19 to i32
  %and34 = and i32 %conv33, 8192
  %tobool35 = icmp ne i32 %and34, 0
  %lnot = xor i1 %tobool35, true
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.28, %while.cond.25
  %20 = phi i1 [ false, %while.cond.25 ], [ %lnot, %land.rhs.28 ]
  br i1 %20, label %while.body.37, label %while.end.47

while.body.37:                                    ; preds = %land.end.36
  %21 = load i64, i64* %bufferLength, align 8
  %cmp38 = icmp sge i64 %21, 1024
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %while.body.37
  call void @errorMessage(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i32 0, i32 0), i8 signext 1)
  call void @flushErrorMessage()
  %22 = load i64, i64* %bufferLength, align 8
  %add = add nsw i64 %22, 1
  %arrayidx41 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i64 %add
  store i8 0, i8* %arrayidx41, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i32 0), i8** %retval
  br label %return

if.end.42:                                        ; preds = %while.body.37
  %23 = load i64, i64* %nextChar, align 8
  %conv43 = trunc i64 %23 to i8
  %24 = load i64, i64* %bufferLength, align 8
  %arrayidx44 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i64 %24
  store i8 %conv43, i8* %arrayidx44, align 1
  %25 = load i64, i64* %bufferLength, align 8
  %inc = add nsw i64 %25, 1
  store i64 %inc, i64* %bufferLength, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call45 = call i32 @fgetc(%struct._IO_FILE* %26)
  %conv46 = sext i32 %call45 to i64
  store i64 %conv46, i64* %nextChar, align 8
  br label %while.cond.25

while.end.47:                                     ; preds = %land.end.36
  %27 = load i64, i64* %bufferLength, align 8
  %arrayidx48 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i64 %27
  store i8 0, i8* %arrayidx48, align 1
  %28 = load i64, i64* %nextChar, align 8
  %cmp49 = icmp ne i64 %28, -1
  br i1 %cmp49, label %if.then.51, label %if.end.62

if.then.51:                                       ; preds = %while.end.47
  %29 = load i64, i64* %nextChar, align 8
  %conv52 = trunc i64 %29 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call53 = call i32 @ungetc(i32 %conv52, %struct._IO_FILE* %30)
  %conv54 = sext i32 %call53 to i64
  store i64 %conv54, i64* %check, align 8
  %31 = load i64, i64* %check, align 8
  %32 = load i64, i64* %nextChar, align 8
  %cmp55 = icmp ne i64 %31, %32
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.51
  %33 = load i64, i64* %check, align 8
  %cmp58 = icmp eq i64 %33, -1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.57, %if.then.51
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i32 0, i32 0), i8 signext 1)
  call void @flushErrorMessage()
  store i8* null, i8** %retval
  br label %return

if.end.61:                                        ; preds = %lor.lhs.false.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %while.end.47
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.60, %if.then.40, %if.then.18, %if.then
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare void @flushErrorMessage() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
