; ModuleID = './MultiSource.Applications.treecc/9.skeleton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [55 x i8] c"treecc: internal error - could not find skeleton \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1
@TreeCCSkelFiles = external constant [0 x i8*], align 8

; Function Attrs: nounwind uwtable
define void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i8* %skeleton) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %skeleton.addr = alloca i8*, align 8
  %skelstr = alloca i8*, align 8
  %buffer = alloca [8192 x i8], align 16
  %posn = alloca i32, align 4
  %start = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %skeleton, i8** %skeleton.addr, align 8
  %0 = load i8*, i8** %skeleton.addr, align 8
  %call = call i8* @FindSkeletonString(i8* %0)
  store i8* %call, i8** %skelstr, align 8
  %1 = load i8*, i8** %skelstr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %skeleton.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), i8* %3)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load i8*, i8** %skeleton.addr, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %4, i64 1, i8* %5)
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call2 = call i32 @ReadSkeletonLine(i8* %arraydecay, i32 8192, i8** %skelstr)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body, label %while.end.68

while.body:                                       ; preds = %while.cond
  %arraydecay4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call5 = call i8* @strchr(i8* %arraydecay4, i32 89) #5
  %cmp = icmp ne i8* %call5, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call7 = call i8* @strchr(i8* %arraydecay6, i32 121) #5
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.else.65

if.then.9:                                        ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %posn, align 4
  store i32 0, i32* %start, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.57, %if.then.9
  %6 = load i32, i32* %posn, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.10
  %8 = load i32, i32* %posn, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom14
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 89
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.13
  %arraydecay19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %10 = load i32, i32* %posn, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay19, i64 %idx.ext
  %call20 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 11) #5
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %posn, align 4
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1
  %12 = load i32, i32* %start, align 4
  %13 = load i32, i32* %posn, align 4
  %cmp25 = icmp slt i32 %12, %13
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.then.22
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %15 = load i32, i32* %start, align 4
  %idx.ext29 = sext i32 %15 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay28, i64 %idx.ext29
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %14, i8* %add.ptr30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.then.22
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 10
  %18 = load i8*, i8** %state_type, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %16, i8* %18)
  %19 = load i32, i32* %posn, align 4
  %add = add nsw i32 %19, 11
  store i32 %add, i32* %posn, align 4
  %20 = load i32, i32* %posn, align 4
  store i32 %20, i32* %start, align 4
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %while.body.13
  %21 = load i32, i32* %posn, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom32
  %22 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %22 to i32
  %cmp35 = icmp eq i32 %conv34, 121
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.55

land.lhs.true.37:                                 ; preds = %if.else
  %23 = load i32, i32* %posn, align 4
  %add38 = add nsw i32 %23, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom39
  %24 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %24 to i32
  %cmp42 = icmp eq i32 %conv41, 121
  br i1 %cmp42, label %if.then.44, label %if.else.55

if.then.44:                                       ; preds = %land.lhs.true.37
  %25 = load i32, i32* %posn, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 %idxprom45
  store i8 0, i8* %arrayidx46, align 1
  %26 = load i32, i32* %start, align 4
  %27 = load i32, i32* %posn, align 4
  %cmp47 = icmp slt i32 %26, %27
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.then.44
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay50 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %29 = load i32, i32* %start, align 4
  %idx.ext51 = sext i32 %29 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %arraydecay50, i64 %idx.ext51
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %28, i8* %add.ptr52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.then.44
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 9
  %32 = load i8*, i8** %yy_replacement, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %30, i8* %32)
  %33 = load i32, i32* %posn, align 4
  %add54 = add nsw i32 %33, 2
  store i32 %add54, i32* %posn, align 4
  %34 = load i32, i32* %posn, align 4
  store i32 %34, i32* %start, align 4
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true.37, %if.else
  %35 = load i32, i32* %posn, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %posn, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.end.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.31
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  %36 = load i32, i32* %start, align 4
  %37 = load i32, i32* %posn, align 4
  %cmp58 = icmp slt i32 %36, %37
  br i1 %cmp58, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %while.end
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay61 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %39 = load i32, i32* %start, align 4
  %idx.ext62 = sext i32 %39 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %arraydecay61, i64 %idx.ext62
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %38, i8* %add.ptr63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %while.end
  br label %if.end.67

if.else.65:                                       ; preds = %lor.lhs.false
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay66 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %40, i8* %arraydecay66)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.end.64
  br label %while.cond

while.end.68:                                     ; preds = %while.cond
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @FindSkeletonString(i8* %skeleton) #0 {
entry:
  %retval = alloca i8*, align 8
  %skeleton.addr = alloca i8*, align 8
  %search = alloca i8**, align 8
  store i8* %skeleton, i8** %skeleton.addr, align 8
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @TreeCCSkelFiles, i32 0, i32 0), i8*** %search, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8**, i8*** %search, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %search, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %skeleton.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load i8**, i8*** %search, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load i8**, i8*** %search, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %7, i64 2
  store i8** %add.ptr, i8*** %search, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ReadSkeletonLine(i8* %buffer, i32 %size, i8** %skel) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %skel.addr = alloca i8**, align 8
  %ptr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8** %skel, i8*** %skel.addr, align 8
  %0 = load i8**, i8*** %skel.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %4 = load i8*, i8** %ptr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %ptr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %size.addr, align 4
  %cmp8 = icmp sgt i32 %9, 2
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  %10 = load i8*, i8** %ptr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %while.body
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %ptr, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 10
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %while.end
  %17 = load i8*, i8** %ptr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %ptr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr18, i8** %buffer.addr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %while.end
  %20 = load i8*, i8** %buffer.addr, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %ptr, align 8
  %22 = load i8**, i8*** %skel.addr, align 8
  store i8* %21, i8** %22, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @TreeCCStreamCode(%struct._tagTreeCCStream*, i8*) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
