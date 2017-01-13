; ModuleID = './MultiSource.Benchmarks.Prolangs-C/146.assembler.scan_line.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"eERROR[1]: Label '%s' is too long (MAX %d characters).\00", align 1
@ERROR_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"eERROR[3]: OpCode field '%s' is too long. Truncating to %d charaters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"p%d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"eERROR[2]: Illegal LABEL/OPCODE seperater('%c') expected <tab> or <blank>.\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"eERROR[5]: Expected an OPCODE after the '+'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"eERROR[4]: Illegal OPCODE/OPERANDS seperater('%c') expected TAB or BLANK.\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @UPPER(i32) #0 {
entry:
  %retval = alloca i8, align 1
  %CH.addr = alloca i8, align 1
  %CH = trunc i32 %0 to i8
  store i8 %CH, i8* %CH.addr, align 1
  %1 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %CH.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8, i8* %CH.addr, align 1
  %conv5 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv5, 97
  %add = add nsw i32 %sub, 65
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8, i8* %CH.addr, align 1
  store i8 %4, i8* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %retval
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define i32 @IS_ALPHA_NUM(i32) #0 {
entry:
  %CH.addr = alloca i8, align 1
  %CH = trunc i32 %0 to i8
  store i8 %CH, i8* %CH.addr, align 1
  %1 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %1 to i32
  %call = call signext i8 @UPPER(i32 %conv)
  store i8 %call, i8* %CH.addr, align 1
  %2 = load i8, i8* %CH.addr, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp sge i32 %conv1, 65
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %3 = load i8, i8* %CH.addr, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp sle i32 %conv3, 90
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8, i8* %CH.addr, align 1
  %conv6 = sext i8 %4 to i32
  %cmp7 = icmp sge i32 %conv6, 48
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i8, i8* %CH.addr, align 1
  %conv9 = sext i8 %5 to i32
  %cmp10 = icmp sle i32 %conv9, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp10, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @IS_BLANK_OR_TAB(i32) #0 {
entry:
  %CH.addr = alloca i8, align 1
  %CH = trunc i32 %0 to i8
  store i8 %CH, i8* %CH.addr, align 1
  %1 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i8, i8* %CH.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @eoln(i32) #0 {
entry:
  %CH.addr = alloca i8, align 1
  %CH = trunc i32 %0 to i8
  store i8 %CH, i8* %CH.addr, align 1
  %1 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @GET_LABEL(i8* %LABEL, i8* %INPUT, i8** %NEXT_CHAR, i32 %PASS) #0 {
entry:
  %LABEL.addr = alloca i8*, align 8
  %INPUT.addr = alloca i8*, align 8
  %NEXT_CHAR.addr = alloca i8**, align 8
  %PASS.addr = alloca i32, align 4
  %LABEL_LEN = alloca i32, align 4
  %TEMP = alloca i8, align 1
  %ERROR_MSG = alloca i8*, align 8
  store i8* %LABEL, i8** %LABEL.addr, align 8
  store i8* %INPUT, i8** %INPUT.addr, align 8
  store i8** %NEXT_CHAR, i8*** %NEXT_CHAR.addr, align 8
  store i32 %PASS, i32* %PASS.addr, align 4
  %0 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %call = call signext i8 @UPPER(i32 %conv)
  %conv1 = sext i8 %call to i32
  %cmp = icmp sge i32 %conv1, 65
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %call4 = call signext i8 @UPPER(i32 %conv3)
  %conv5 = sext i8 %call4 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %LABEL_LEN, align 4
  %6 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %call9 = call i32 @IS_ALPHA_NUM(i32 %conv8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = sext i8 %13 to i32
  %call11 = call i32 @eoln(i32 %conv10)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %LABEL_LEN, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %LABEL_LEN, align 4
  %16 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %16, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %LABEL_LEN, align 4
  %cmp14 = icmp sgt i32 %18, 8
  br i1 %cmp14, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %while.end
  %19 = load i32, i32* %PASS.addr, align 4
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.16
  %20 = load i32, i32* %LABEL_LEN, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i8*, i8** %INPUT.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1
  store i8 %22, i8* %TEMP, align 1
  %23 = load i32, i32* %LABEL_LEN, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load i8*, i8** %INPUT.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  store i8 0, i8* %arrayidx21, align 1
  %call22 = call double @log10(double 8.000000e+00) #4
  %conv23 = fptosi double %call22 to i32
  %add = add nsw i32 80, %conv23
  %conv24 = sext i32 %add to i64
  %25 = load i8*, i8** %INPUT.addr, align 8
  %call25 = call i64 @strlen(i8* %25) #5
  %add26 = add i64 %conv24, %call25
  %conv27 = trunc i64 %add26 to i32
  %conv28 = zext i32 %conv27 to i64
  %call29 = call noalias i8* @malloc(i64 %conv28) #4
  store i8* %call29, i8** %ERROR_MSG, align 8
  %26 = load i8*, i8** %ERROR_MSG, align 8
  %27 = load i8*, i8** %INPUT.addr, align 8
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), i8* %27, i32 8) #4
  %28 = load i8*, i8** %ERROR_MSG, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %28)
  %29 = load i8*, i8** %ERROR_MSG, align 8
  call void @free(i8* %29) #4
  %30 = load i8, i8* %TEMP, align 1
  %31 = load i32, i32* %LABEL_LEN, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i8*, i8** %INPUT.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  store i8 %30, i8* %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.16
  store i32 8, i32* %LABEL_LEN, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %while.end
  %33 = load i8*, i8** %LABEL.addr, align 8
  %34 = load i8*, i8** %INPUT.addr, align 8
  %35 = load i32, i32* %LABEL_LEN, align 4
  %conv34 = sext i32 %35 to i64
  %call35 = call i8* @strncpy(i8* %33, i8* %34, i64 %conv34) #4
  %36 = load i32, i32* %LABEL_LEN, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load i8*, i8** %LABEL.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %37, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %entry
  %38 = load i8*, i8** %LABEL.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end.33
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @ADD_TO_END_OF_BUFFER(...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @GET_OPCODE_STR(i8* %OPCODE, i8** %NEXT_CHAR, i32 %PASS, %struct._IO_FILE* %STREAM) #0 {
entry:
  %OPCODE.addr = alloca i8*, align 8
  %NEXT_CHAR.addr = alloca i8**, align 8
  %PASS.addr = alloca i32, align 4
  %STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START_OF_OPCODE = alloca i8*, align 8
  %OP_LEN = alloca i32, align 4
  %TEMP = alloca i8, align 1
  store i8* %OPCODE, i8** %OPCODE.addr, align 8
  store i8** %NEXT_CHAR, i8*** %NEXT_CHAR.addr, align 8
  store i32 %PASS, i32* %PASS.addr, align 4
  store %struct._IO_FILE* %STREAM, %struct._IO_FILE** %STREAM.addr, align 8
  %0 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %START_OF_OPCODE, align 8
  %2 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call signext i8 @UPPER(i32 %conv)
  %conv1 = sext i8 %call to i32
  %cmp = icmp sge i32 %conv1, 65
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %call4 = call signext i8 @UPPER(i32 %conv3)
  %conv5 = sext i8 %call4 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %OP_LEN, align 4
  %8 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %call9 = call signext i8 @UPPER(i32 %conv8)
  %conv10 = sext i8 %call9 to i32
  %cmp11 = icmp sge i32 %conv10, 65
  br i1 %cmp11, label %land.lhs.true.13, label %land.end

land.lhs.true.13:                                 ; preds = %while.cond
  %13 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %conv14 = sext i8 %15 to i32
  %call15 = call signext i8 @UPPER(i32 %conv14)
  %conv16 = sext i8 %call15 to i32
  %cmp17 = icmp sle i32 %conv16, 90
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.13
  %16 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = sext i8 %18 to i32
  %call20 = call i32 @eoln(i32 %conv19)
  %tobool = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.13, %while.cond
  %19 = phi i1 [ false, %land.lhs.true.13 ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i32, i32* %OP_LEN, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %OP_LEN, align 4
  %21 = load i8**, i8*** %NEXT_CHAR.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr21, i8** %21, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load i32, i32* %OP_LEN, align 4
  %cmp22 = icmp sgt i32 %23, 8
  br i1 %cmp22, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %while.end
  %24 = load i32, i32* %PASS.addr, align 4
  %cmp25 = icmp eq i32 %24, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then.24
  %25 = load i32, i32* %OP_LEN, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8*, i8** %START_OF_OPCODE, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  store i8 %27, i8* %TEMP, align 1
  %28 = load i32, i32* %OP_LEN, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load i8*, i8** %START_OF_OPCODE, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %29, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %31 = load i8*, i8** %START_OF_OPCODE, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i32 0, i32 0), i8* %31, i32 8)
  %32 = load i8, i8* %TEMP, align 1
  %33 = load i32, i32* %OP_LEN, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load i8*, i8** %START_OF_OPCODE, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 %idxprom31
  store i8 %32, i8* %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then.24
  store i32 8, i32* %OP_LEN, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %while.end
  %35 = load i8*, i8** %OPCODE.addr, align 8
  %36 = load i8*, i8** %START_OF_OPCODE, align 8
  %37 = load i32, i32* %OP_LEN, align 4
  %conv34 = sext i32 %37 to i64
  %call35 = call i8* @strncpy(i8* %35, i8* %36, i64 %conv34) #4
  %38 = load i32, i32* %OP_LEN, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load i8*, i8** %OPCODE.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %entry
  %40 = load i8*, i8** %OPCODE.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end.33
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @SCAN_LINE(i32 %LOCATION_COUNTER, i8** %INPUT_LINE, i8* %LABEL, i32* %EXTENDED, i8* %OPERATOR, i8** %REST, i32 %PASS, %struct._IO_FILE* %STREAM, %struct._IO_FILE* %INPUT_STREAM) #0 {
entry:
  %LOCATION_COUNTER.addr = alloca i32, align 4
  %INPUT_LINE.addr = alloca i8**, align 8
  %LABEL.addr = alloca i8*, align 8
  %EXTENDED.addr = alloca i32*, align 8
  %OPERATOR.addr = alloca i8*, align 8
  %REST.addr = alloca i8**, align 8
  %PASS.addr = alloca i32, align 4
  %STREAM.addr = alloca %struct._IO_FILE*, align 8
  %INPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %CH = alloca i8*, align 8
  store i32 %LOCATION_COUNTER, i32* %LOCATION_COUNTER.addr, align 4
  store i8** %INPUT_LINE, i8*** %INPUT_LINE.addr, align 8
  store i8* %LABEL, i8** %LABEL.addr, align 8
  store i32* %EXTENDED, i32** %EXTENDED.addr, align 8
  store i8* %OPERATOR, i8** %OPERATOR.addr, align 8
  store i8** %REST, i8*** %REST.addr, align 8
  store i32 %PASS, i32* %PASS.addr, align 4
  store %struct._IO_FILE* %STREAM, %struct._IO_FILE** %STREAM.addr, align 8
  store %struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %0 = load i8**, i8*** %INPUT_LINE.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %0, %struct._IO_FILE* %1)
  %2 = load i8**, i8*** %INPUT_LINE.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8**, i8*** %REST.addr, align 8
  store i8* %3, i8** %4, align 8
  %5 = load i32, i32* %PASS.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %7 = load i32, i32* %LOCATION_COUNTER.addr, align 4
  %8 = load i8**, i8*** %REST.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %7, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8**, i8*** %REST.addr, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %CH, align 8
  %12 = load i8*, i8** %CH, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp1 = icmp ne i32 %conv, 46
  br i1 %cmp1, label %if.then.3, label %if.else.70

if.then.3:                                        ; preds = %if.end
  %14 = load i8*, i8** %LABEL.addr, align 8
  %15 = load i8**, i8*** %REST.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %PASS.addr, align 4
  call void @GET_LABEL(i8* %14, i8* %16, i8** %CH, i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %18, i32 1)
  %19 = load i8*, i8** %CH, align 8
  %20 = load i8, i8* %19, align 1
  %conv4 = sext i8 %20 to i32
  %call5 = call i32 @IS_BLANK_OR_TAB(i32 %conv4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.3
  %21 = load i8*, i8** %CH, align 8
  %22 = load i8, i8* %21, align 1
  %conv6 = sext i8 %22 to i32
  %call7 = call i32 @eoln(i32 %conv6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.16, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %PASS.addr, align 4
  %cmp10 = icmp eq i32 %23, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %25 = load i8*, i8** %CH, align 8
  %26 = load i8, i8* %25, align 1
  %conv13 = sext i8 %26 to i32
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i32 0, i32 0), i32 %conv13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.then.9
  %27 = load i8*, i8** %CH, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %CH, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %if.then.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %28 = load i8*, i8** %CH, align 8
  %29 = load i8, i8* %28, align 1
  %conv17 = sext i8 %29 to i32
  %call18 = call i32 @IS_BLANK_OR_TAB(i32 %conv17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i8*, i8** %CH, align 8
  %31 = load i8, i8* %30, align 1
  %conv20 = sext i8 %31 to i32
  %call21 = call i32 @eoln(i32 %conv20)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i8*, i8** %CH, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr23, i8** %CH, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i8*, i8** %CH, align 8
  %35 = load i8, i8* %34, align 1
  %conv24 = sext i8 %35 to i32
  %cmp25 = icmp eq i32 %conv24, 43
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %while.end
  %36 = load i8*, i8** %CH, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr28, i8** %CH, align 8
  %37 = load i32*, i32** %EXTENDED.addr, align 8
  store i32 1, i32* %37, align 4
  br label %if.end.29

if.else:                                          ; preds = %while.end
  %38 = load i32*, i32** %EXTENDED.addr, align 8
  store i32 0, i32* %38, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  %39 = load i8*, i8** %OPERATOR.addr, align 8
  %40 = load i32, i32* %PASS.addr, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  call void @GET_OPCODE_STR(i8* %39, i8** %CH, i32 %40, %struct._IO_FILE* %41)
  %42 = load i32*, i32** %EXTENDED.addr, align 8
  %43 = load i32, i32* %42, align 4
  %cmp30 = icmp eq i32 %43, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.40

land.lhs.true.32:                                 ; preds = %if.end.29
  %44 = load i8*, i8** %OPERATOR.addr, align 8
  %call33 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.40, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %45 = load i32, i32* %PASS.addr, align 4
  %cmp36 = icmp eq i32 %45, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %land.lhs.true.35
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %land.lhs.true.35, %land.lhs.true.32, %if.end.29
  %47 = load i8*, i8** %CH, align 8
  %48 = load i8, i8* %47, align 1
  %conv41 = sext i8 %48 to i32
  %call42 = call i32 @IS_BLANK_OR_TAB(i32 %conv41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.56, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %if.end.40
  %49 = load i8*, i8** %CH, align 8
  %50 = load i8, i8* %49, align 1
  %conv45 = sext i8 %50 to i32
  %call46 = call i32 @eoln(i32 %conv45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.56, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.44
  %51 = load i32, i32* %PASS.addr, align 4
  %cmp49 = icmp eq i32 %51, 0
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %53 = load i8*, i8** %CH, align 8
  %54 = load i8, i8* %53, align 1
  %conv52 = sext i8 %54 to i32
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0), i32 %conv52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.48
  %55 = load i8*, i8** %CH, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr55, i8** %CH, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %land.lhs.true.44, %if.end.40
  br label %while.cond.57

while.cond.57:                                    ; preds = %while.body.67, %if.end.56
  %56 = load i8*, i8** %CH, align 8
  %57 = load i8, i8* %56, align 1
  %conv58 = sext i8 %57 to i32
  %call59 = call i32 @IS_BLANK_OR_TAB(i32 %conv58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.rhs.61, label %land.end.66

land.rhs.61:                                      ; preds = %while.cond.57
  %58 = load i8*, i8** %CH, align 8
  %59 = load i8, i8* %58, align 1
  %conv62 = sext i8 %59 to i32
  %call63 = call i32 @eoln(i32 %conv62)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot65 = xor i1 %tobool64, true
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.61, %while.cond.57
  %60 = phi i1 [ false, %while.cond.57 ], [ %lnot65, %land.rhs.61 ]
  br i1 %60, label %while.body.67, label %while.end.69

while.body.67:                                    ; preds = %land.end.66
  %61 = load i8*, i8** %CH, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr68, i8** %CH, align 8
  br label %while.cond.57

while.end.69:                                     ; preds = %land.end.66
  %62 = load i8*, i8** %CH, align 8
  %63 = load i8**, i8*** %REST.addr, align 8
  store i8* %62, i8** %63, align 8
  br label %if.end.72

if.else.70:                                       ; preds = %if.end
  %64 = load i8*, i8** %LABEL.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %arrayidx, align 1
  %65 = load i32*, i32** %EXTENDED.addr, align 8
  store i32 0, i32* %65, align 4
  %66 = load i8*, i8** %OPERATOR.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %arrayidx71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %while.end.69
  ret void
}

declare void @GET_LINE(...) #3

declare void @OUTPUT_BUFFER(...) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
