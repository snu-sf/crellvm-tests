; ModuleID = './MultiSource.Applications.treecc/12.stream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c".java\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: read-only file has different contents\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"/* %s.  Generated automatically by treecc */\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"#ifndef __%s_\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"#define __%s_\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"#line %ld \22%s\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @TreeCCDupString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %newstr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #4
  store i8* %call1, i8** %newstr, align 8
  %1 = load i8*, i8** %newstr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %newstr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %call2 = call i8* @strcpy(i8* %2, i8* %3) #4
  %4 = load i8*, i8** %newstr, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @TreeCCResolvePathname(i8* %absolute, i8* %relative) #0 {
entry:
  %retval = alloca i8*, align 8
  %absolute.addr = alloca i8*, align 8
  %relative.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %path = alloca i8*, align 8
  store i8* %absolute, i8** %absolute.addr, align 8
  store i8* %relative, i8** %relative.addr, align 8
  %0 = load i8*, i8** %absolute.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %relative.addr, align 8
  %call = call i8* @TreeCCDupString(i8* %1)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %absolute.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load i8*, i8** %absolute.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 47
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %len, align 4
  %sub6 = sub nsw i32 %7, 1
  %idxprom7 = sext i32 %sub6 to i64
  %8 = load i8*, i8** %absolute.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %len, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %len, align 4
  %cmp12 = icmp sle i32 %12, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %while.end
  %13 = load i8*, i8** %relative.addr, align 8
  %call15 = call i8* @TreeCCDupString(i8* %13)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %while.end
  %14 = load i32, i32* %len, align 4
  %conv17 = sext i32 %14 to i64
  %15 = load i8*, i8** %relative.addr, align 8
  %call18 = call i64 @strlen(i8* %15) #5
  %add = add i64 %conv17, %call18
  %add19 = add i64 %add, 1
  %call20 = call noalias i8* @malloc(i64 %add19) #4
  store i8* %call20, i8** %path, align 8
  %16 = load i8*, i8** %path, align 8
  %tobool21 = icmp ne i8* %16, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.16
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.16
  %17 = load i8*, i8** %path, align 8
  %18 = load i8*, i8** %absolute.addr, align 8
  %19 = load i32, i32* %len, align 4
  %conv24 = sext i32 %19 to i64
  %call25 = call i8* @strncpy(i8* %17, i8* %18, i64 %conv24) #4
  %20 = load i8*, i8** %path, align 8
  %21 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  %22 = load i8*, i8** %relative.addr, align 8
  %call26 = call i8* @strcpy(i8* %add.ptr, i8* %22) #4
  %23 = load i8*, i8** %path, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.14, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %context, i8* %filename, i8* %embedName, i32 %isHeader) #0 {
entry:
  %retval = alloca %struct._tagTreeCCStream*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %filename.addr = alloca i8*, align 8
  %embedName.addr = alloca i8*, align 8
  %isHeader.addr = alloca i32, align 4
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %path = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %embedName, i8** %embedName.addr, align 8
  store i32 %isHeader, i32* %isHeader.addr, align 4
  %0 = load i32, i32* %isHeader.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %isHeader.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @TreeCCDupString(i8* %1)
  store i8* %call, i8** %path, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 2
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 4
  %4 = load i8*, i8** %filename1, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @TreeCCResolvePathname(i8* %4, i8* %5)
  store i8* %call2, i8** %path, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 3
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %7, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %cmp3 = icmp ne %struct._tagTreeCCStream* %8, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %filename4 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %9, i32 0, i32 1
  %10 = load i8*, i8** %filename4, align 8
  %11 = load i8*, i8** %path, align 8
  %call5 = call i32 @strcmp(i8* %10, i8* %11) #5
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %while.body
  %12 = load i8*, i8** %path, align 8
  call void @free(i8* %12) #4
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  store %struct._tagTreeCCStream* %13, %struct._tagTreeCCStream** %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 10
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %15, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call8 = call noalias i8* @malloc(i64 80) #4
  %16 = bitcast i8* %call8 to %struct._tagTreeCCStream*
  store %struct._tagTreeCCStream* %16, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %tobool9 = icmp ne %struct._tagTreeCCStream* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %while.end
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %while.end
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %context12 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %19, i32 0, i32 0
  store %struct._tagTreeCCContext* %18, %struct._tagTreeCCContext** %context12, align 8
  %20 = load i8*, i8** %path, align 8
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %filename13 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %21, i32 0, i32 1
  store i8* %20, i8** %filename13, align 8
  %22 = load i8*, i8** %embedName.addr, align 8
  %tobool14 = icmp ne i8* %22, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %23 = load i8*, i8** %embedName.addr, align 8
  %call15 = call i8* @TreeCCDupString(i8* %23)
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %24 = load i8*, i8** %filename.addr, align 8
  %call16 = call i8* @TreeCCDupString(i8* %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call15, %cond.true ], [ %call16, %cond.false ]
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %embedName17 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %25, i32 0, i32 2
  store i8* %cond, i8** %embedName17, align 8
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %26, i32 0, i32 3
  store i64 1, i64* %linenum, align 8
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %firstBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %27, i32 0, i32 4
  store %struct._tagTreeCCStreamBuf* null, %struct._tagTreeCCStreamBuf** %firstBuf, align 8
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %28, i32 0, i32 5
  store %struct._tagTreeCCStreamBuf* null, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %29, i32 0, i32 6
  store i32 2048, i32* %posn, align 4
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %force = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %30, i32 0, i32 8
  %bf.load = load i16, i16* %force, align 8
  %bf.shl = shl i16 %bf.load, 11
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %forceCreate = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %31, i32 0, i32 7
  %32 = trunc i32 %bf.cast to i8
  %bf.load18 = load i8, i8* %forceCreate, align 4
  %bf.value = and i8 %32, 1
  %bf.clear = and i8 %bf.load18, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %forceCreate, align 4
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %readOnly = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %33, i32 0, i32 7
  %bf.load19 = load i8, i8* %readOnly, align 4
  %bf.clear20 = and i8 %bf.load19, -3
  store i8 %bf.clear20, i8* %readOnly, align 4
  %34 = load i32, i32* %isHeader.addr, align 4
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader21 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %35, i32 0, i32 7
  %36 = trunc i32 %34 to i8
  %bf.load22 = load i8, i8* %isHeader21, align 4
  %bf.value23 = and i8 %36, 1
  %bf.shl24 = shl i8 %bf.value23, 2
  %bf.clear25 = and i8 %bf.load22, -5
  %bf.set26 = or i8 %bf.clear25, %bf.shl24
  store i8 %bf.set26, i8* %isHeader21, align 4
  %bf.result.shl27 = shl i8 %bf.value23, 7
  %bf.result.ashr28 = ashr i8 %bf.result.shl27, 7
  %bf.result.cast29 = sext i8 %bf.result.ashr28 to i32
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %37, i32 0, i32 7
  %bf.load30 = load i8, i8* %defaultFile, align 4
  %bf.clear31 = and i8 %bf.load30, -9
  store i8 %bf.clear31, i8* %defaultFile, align 4
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %38, i32 0, i32 7
  %bf.load32 = load i8, i8* %dirty, align 4
  %bf.clear33 = and i8 %bf.load32, -17
  store i8 %bf.clear33, i8* %dirty, align 4
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %firstDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %39, i32 0, i32 8
  store %struct._tagTreeCCStreamDefn* null, %struct._tagTreeCCStreamDefn** %firstDefn, align 8
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %lastDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %40, i32 0, i32 9
  store %struct._tagTreeCCStreamDefn* null, %struct._tagTreeCCStreamDefn** %lastDefn, align 8
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList34 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %41, i32 0, i32 3
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList34, align 8
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream35 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %43, i32 0, i32 10
  store %struct._tagTreeCCStream* %42, %struct._tagTreeCCStream** %nextStream35, align 8
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList36 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %45, i32 0, i32 3
  store %struct._tagTreeCCStream* %44, %struct._tagTreeCCStream** %streamList36, align 8
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  store %struct._tagTreeCCStream* %46, %struct._tagTreeCCStream** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.6
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %retval
  ret %struct._tagTreeCCStream* %47
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %context, i8* %className) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %className.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %len = alloca i32, align 4
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %className, i8** %className.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %outputDirectory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 15
  %1 = load i8*, i8** %outputDirectory, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %outputDirectory1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 15
  %3 = load i8*, i8** %outputDirectory1, align 8
  %call = call i64 @strlen(i8* %3) #5
  %4 = load i8*, i8** %className.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #5
  %add = add i64 %call, %call2
  %add3 = add i64 %add, 7
  %conv = trunc i64 %add3 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv4 = sext i32 %5 to i64
  %call5 = call noalias i8* @malloc(i64 %conv4) #4
  store i8* %call5, i8** %filename, align 8
  %cmp = icmp eq i8* %call5, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 2
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %8 = load i8*, i8** %filename, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %outputDirectory8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 15
  %10 = load i8*, i8** %outputDirectory8, align 8
  %call9 = call i8* @strcpy(i8* %8, i8* %10) #4
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %outputDirectory10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 15
  %12 = load i8*, i8** %outputDirectory10, align 8
  %call11 = call i64 @strlen(i8* %12) #5
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %filename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 47, i8* %arrayidx, align 1
  %15 = load i8*, i8** %filename, align 8
  %16 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %17 = load i8*, i8** %className.addr, align 8
  %call14 = call i8* @strcpy(i8* %add.ptr13, i8* %17) #4
  %18 = load i8*, i8** %filename, align 8
  %call15 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #4
  %19 = load i32, i32* %len, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end.28

if.else:                                          ; preds = %entry
  %20 = load i8*, i8** %className.addr, align 8
  %call16 = call i64 @strlen(i8* %20) #5
  %add17 = add i64 %call16, 6
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, i32* %len, align 4
  %21 = load i32, i32* %len, align 4
  %conv19 = sext i32 %21 to i64
  %call20 = call noalias i8* @malloc(i64 %conv19) #4
  store i8* %call20, i8** %filename, align 8
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input24 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 2
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input24, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else
  %24 = load i8*, i8** %filename, align 8
  %25 = load i8*, i8** %className.addr, align 8
  %call26 = call i8* @strcpy(i8* %24, i8* %25) #4
  %26 = load i8*, i8** %filename, align 8
  %call27 = call i8* @strcat(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #4
  store i32 0, i32* %len, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.25, %if.end
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %28 = load i8*, i8** %filename, align 8
  %29 = load i8*, i8** %filename, align 8
  %30 = load i32, i32* %len, align 4
  %idx.ext29 = sext i32 %30 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %29, i64 %idx.ext29
  %call31 = call %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %27, i8* %28, i8* %add.ptr30, i32 -1)
  store %struct._tagTreeCCStream* %call31, %struct._tagTreeCCStream** %stream, align 8
  %31 = load i8*, i8** %filename, align 8
  call void @free(i8* %31) #4
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  ret %struct._tagTreeCCStream* %32
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @TreeCCStreamDestroy(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %defn = alloca %struct._tagTreeCCStreamDefn*, align 8
  %nextDefn = alloca %struct._tagTreeCCStreamDefn*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamClear(%struct._tagTreeCCStream* %0)
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %1, i32 0, i32 8
  %2 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %firstDefn, align 8
  store %struct._tagTreeCCStreamDefn* %2, %struct._tagTreeCCStreamDefn** %defn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %cmp = icmp ne %struct._tagTreeCCStreamDefn* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %4, i32 0, i32 5
  %5 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %next, align 8
  store %struct._tagTreeCCStreamDefn* %5, %struct._tagTreeCCStreamDefn** %nextDefn, align 8
  %6 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %refOnly = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %6, i32 0, i32 4
  %7 = load i32, i32* %refOnly, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %8, i32 0, i32 0
  %9 = load i8*, i8** %code, align 8
  call void @free(i8* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %11 = bitcast %struct._tagTreeCCStreamDefn* %10 to i8*
  call void @free(i8* %11) #4
  %12 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %nextDefn, align 8
  store %struct._tagTreeCCStreamDefn* %12, %struct._tagTreeCCStreamDefn** %defn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %13, i32 0, i32 1
  %14 = load i8*, i8** %filename, align 8
  call void @free(i8* %14) #4
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %15, i32 0, i32 2
  %16 = load i8*, i8** %embedName, align 8
  call void @free(i8* %16) #4
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = bitcast %struct._tagTreeCCStream* %17 to i8*
  call void @free(i8* %18) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamClear(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %buffer = alloca %struct._tagTreeCCStreamBuf*, align 8
  %nextBuffer = alloca %struct._tagTreeCCStreamBuf*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 4
  %1 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %firstBuf, align 8
  store %struct._tagTreeCCStreamBuf* %1, %struct._tagTreeCCStreamBuf** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %cmp = icmp ne %struct._tagTreeCCStreamBuf* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %3, i32 0, i32 1
  %4 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %next, align 8
  store %struct._tagTreeCCStreamBuf* %4, %struct._tagTreeCCStreamBuf** %nextBuffer, align 8
  %5 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %6 = bitcast %struct._tagTreeCCStreamBuf* %5 to i8*
  call void @free(i8* %6) #4
  %7 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %nextBuffer, align 8
  store %struct._tagTreeCCStreamBuf* %7, %struct._tagTreeCCStreamBuf** %buffer, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf1 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 4
  store %struct._tagTreeCCStreamBuf* null, %struct._tagTreeCCStreamBuf** %firstBuf1, align 8
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %9, i32 0, i32 5
  store %struct._tagTreeCCStreamBuf* null, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %10, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, i8* %dirty, align 4
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %11, i32 0, i32 6
  store i32 2048, i32* %posn, align 4
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %12, i32 0, i32 3
  store i64 1, i64* %linenum, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TreeCCStreamFlush(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %result = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %buffer = alloca %struct._tagTreeCCStreamBuf*, align 8
  %tempbuf = alloca [2048 x i8], align 16
  %size = alloca i32, align 4
  %changed = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 7
  %bf.load = load i8, i8* %defaultFile, align 4
  %bf.shl = shl i8 %bf.load, 4
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %1, i32 0, i32 4
  %2 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %firstBuf, align 8
  %tobool1 = icmp ne %struct._tagTreeCCStreamBuf* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %forceCreate = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 7
  %bf.load2 = load i8, i8* %forceCreate, align 4
  %bf.shl3 = shl i8 %bf.load2, 7
  %bf.ashr4 = ashr i8 %bf.shl3, 7
  %bf.cast5 = sext i8 %bf.ashr4 to i32
  %tobool6 = icmp ne i32 %bf.cast5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %readOnly = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %4, i32 0, i32 7
  %bf.load7 = load i8, i8* %readOnly, align 4
  %bf.shl8 = shl i8 %bf.load7, 6
  %bf.ashr9 = ashr i8 %bf.shl8, 7
  %bf.cast10 = sext i8 %bf.ashr9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.75

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %5, i32 0, i32 1
  %6 = load i8*, i8** %filename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %cmp = icmp ne %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then.13, label %if.end.64

if.then.13:                                       ; preds = %if.then.12
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf14 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %7, i32 0, i32 4
  %8 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %firstBuf14, align 8
  store %struct._tagTreeCCStreamBuf* %8, %struct._tagTreeCCStreamBuf** %buffer, align 8
  store i32 0, i32* %changed, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %if.then.13
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %tempbuf, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i64 @fread(i8* %arraydecay, i64 1, i64 2048, %struct._IO_FILE* %9)
  %conv = trunc i64 %call15 to i32
  store i32 %conv, i32* %size, align 4
  %cmp16 = icmp ne i32 %conv, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %tobool18 = icmp ne %struct._tagTreeCCStreamBuf* %10, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %while.body
  store i32 1, i32* %changed, align 4
  br label %while.end

if.end.20:                                        ; preds = %while.body
  %11 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %12, i32 0, i32 5
  %13 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %cmp21 = icmp eq %struct._tagTreeCCStreamBuf* %11, %13
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 6
  %15 = load i32, i32* %posn, align 4
  %16 = load i32, i32* %size, align 4
  %cmp24 = icmp ne i32 %15, %16
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  store i32 1, i32* %changed, align 4
  br label %while.end

if.end.27:                                        ; preds = %if.then.23
  %17 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %17, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tempbuf, i32 0, i32 0
  %18 = load i32, i32* %size, align 4
  %conv30 = sext i32 %18 to i64
  %call31 = call i32 @memcmp(i8* %arraydecay28, i8* %arraydecay29, i64 %conv30) #5
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.27
  store i32 1, i32* %changed, align 4
  br label %while.end

if.end.35:                                        ; preds = %if.end.27
  br label %if.end.48

if.else:                                          ; preds = %if.end.20
  %19 = load i32, i32* %size, align 4
  %cmp36 = icmp ne i32 %19, 2048
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  store i32 1, i32* %changed, align 4
  br label %while.end

if.end.39:                                        ; preds = %if.else
  %20 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %data40 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %20, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data40, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tempbuf, i32 0, i32 0
  %call43 = call i32 @memcmp(i8* %arraydecay41, i8* %arraydecay42, i64 2048) #5
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  store i32 1, i32* %changed, align 4
  br label %while.end

if.end.47:                                        ; preds = %if.end.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.35
  %21 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %21, i32 0, i32 1
  %22 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %next, align 8
  store %struct._tagTreeCCStreamBuf* %22, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %23 = load i32, i32* %size, align 4
  %cmp49 = icmp slt i32 %23, 2048
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 0, i32* %size, align 4
  br label %while.end

if.end.52:                                        ; preds = %if.end.48
  br label %while.cond

while.end:                                        ; preds = %if.then.51, %if.then.46, %if.then.38, %if.then.34, %if.then.26, %if.then.19, %while.cond
  %24 = load i32, i32* %size, align 4
  %cmp53 = icmp eq i32 %24, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %while.end
  %25 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %cmp56 = icmp ne %struct._tagTreeCCStreamBuf* %25, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %changed, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.55, %while.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %26)
  %27 = load i32, i32* %changed, align 4
  %tobool61 = icmp ne i32 %27, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.59
  store i32 1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.12
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %readOnly65 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %28, i32 0, i32 7
  %bf.load66 = load i8, i8* %readOnly65, align 4
  %bf.shl67 = shl i8 %bf.load66, 6
  %bf.ashr68 = ashr i8 %bf.shl67, 7
  %bf.cast69 = sext i8 %bf.ashr68 to i32
  %tobool70 = icmp ne i32 %bf.cast69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %filename72 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %30, i32 0, i32 1
  %31 = load i8*, i8** %filename72, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %31)
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %lor.lhs.false
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %filename76 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %32, i32 0, i32 1
  %33 = load i8*, i8** %filename76, align 8
  %call77 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call77, %struct._IO_FILE** %file, align 8
  %cmp78 = icmp eq %struct._IO_FILE* %call77, null
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.75
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %filename81 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %34, i32 0, i32 1
  %35 = load i8*, i8** %filename81, align 8
  call void @perror(i8* %35)
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.end.75
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call83 = call i32 @TreeCCStreamFlushStdio(%struct._tagTreeCCStream* %36, %struct._IO_FILE* %37)
  store i32 %call83, i32* %result, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* %38)
  %39 = load i32, i32* %result, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.80, %if.then.71, %if.then.62, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @perror(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @TreeCCStreamFlushStdio(%struct._tagTreeCCStream* %stream, %struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buffer = alloca %struct._tagTreeCCStreamBuf*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 4
  %1 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %firstBuf, align 8
  store %struct._tagTreeCCStreamBuf* %1, %struct._tagTreeCCStreamBuf** %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %2 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %cmp = icmp ne %struct._tagTreeCCStreamBuf* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %4, i32 0, i32 5
  %5 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %cmp1 = icmp eq %struct._tagTreeCCStreamBuf* %3, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i32 0
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %7, i32 0, i32 6
  %8 = load i32, i32* %posn, align 4
  %conv = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fwrite(i8* %arraydecay, i64 1, i64 %conv, %struct._IO_FILE* %9)
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn2 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %10, i32 0, i32 6
  %11 = load i32, i32* %posn2, align 4
  %conv3 = sext i32 %11 to i64
  %cmp4 = icmp ne i64 %call, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %12 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %data7 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %12, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data7, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i64 @fwrite(i8* %arraydecay8, i64 1, i64 2048, %struct._IO_FILE* %13)
  %cmp10 = icmp ne i64 %call9, 2048
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %14 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %14, i32 0, i32 1
  %15 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %next, align 8
  store %struct._tagTreeCCStreamBuf* %15, %struct._tagTreeCCStreamBuf** %buffer, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %16)
  %cmp16 = icmp eq i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12, %if.then.6
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @TreeCCStreamPrint(%struct._tagTreeCCStream* %stream, i8* %format, ...) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %format.addr = alloca i8*, align 8
  %tempbuf = alloca [4096 x i8], align 16
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tempbuf, i32 0, i32 0
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 4096, i8* %0, %struct.__va_list_tag* %arraydecay3) #4
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tempbuf, i32 0, i32 0
  call void @WriteBuffer(%struct._tagTreeCCStream* %1, i8* %arraydecay6)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tempbuf, i32 0, i32 0
  call void @UpdateLineNum(%struct._tagTreeCCStream* %2, i8* %arraydecay7)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @WriteBuffer(%struct._tagTreeCCStream* %stream, i8* %buf) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %buf.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %templen = alloca i32, align 4
  %buffer = alloca %struct._tagTreeCCStreamBuf*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %1, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %dirty, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %2 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 6
  %4 = load i32, i32* %posn, align 4
  %cmp2 = icmp sge i32 %4, 2048
  br i1 %cmp2, label %if.then, label %if.else.13

if.then:                                          ; preds = %while.body
  %call4 = call noalias i8* @malloc(i64 2056) #4
  %5 = bitcast i8* %call4 to %struct._tagTreeCCStreamBuf*
  store %struct._tagTreeCCStreamBuf* %5, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %6 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %tobool = icmp ne %struct._tagTreeCCStreamBuf* %6, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %7 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %7, i32 0, i32 1
  store %struct._tagTreeCCStreamBuf* null, %struct._tagTreeCCStreamBuf** %next, align 8
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 5
  %9 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %tobool6 = icmp ne %struct._tagTreeCCStreamBuf* %9, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %10 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf8 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %11, i32 0, i32 5
  %12 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf8, align 8
  %next9 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %12, i32 0, i32 1
  store %struct._tagTreeCCStreamBuf* %10, %struct._tagTreeCCStreamBuf** %next9, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %13 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 4
  store %struct._tagTreeCCStreamBuf* %13, %struct._tagTreeCCStreamBuf** %firstBuf, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %15 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf11 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %16, i32 0, i32 5
  store %struct._tagTreeCCStreamBuf* %15, %struct._tagTreeCCStreamBuf** %lastBuf11, align 8
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn12 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %17, i32 0, i32 6
  store i32 0, i32* %posn12, align 4
  store i32 2048, i32* %templen, align 4
  br label %if.end.16

if.else.13:                                       ; preds = %while.body
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf14 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %18, i32 0, i32 5
  %19 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf14, align 8
  store %struct._tagTreeCCStreamBuf* %19, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn15 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %20, i32 0, i32 6
  %21 = load i32, i32* %posn15, align 4
  %sub = sub nsw i32 2048, %21
  store i32 %sub, i32* %templen, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.end.10
  %22 = load i32, i32* %templen, align 4
  %23 = load i32, i32* %len, align 4
  %cmp17 = icmp sgt i32 %22, %23
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %24 = load i32, i32* %len, align 4
  store i32 %24, i32* %templen, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %25 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %buffer, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %25, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i32 0
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn21 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %26, i32 0, i32 6
  %27 = load i32, i32* %posn21, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %28 = load i8*, i8** %buf.addr, align 8
  %29 = load i32, i32* %templen, align 4
  %conv22 = sext i32 %29 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %28, i64 %conv22, i32 1, i1 false)
  %30 = load i32, i32* %templen, align 4
  %31 = load i8*, i8** %buf.addr, align 8
  %idx.ext23 = sext i32 %30 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %31, i64 %idx.ext23
  store i8* %add.ptr24, i8** %buf.addr, align 8
  %32 = load i32, i32* %templen, align 4
  %33 = load i32, i32* %len, align 4
  %sub25 = sub nsw i32 %33, %32
  store i32 %sub25, i32* %len, align 4
  %34 = load i32, i32* %templen, align 4
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn26 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %35, i32 0, i32 6
  %36 = load i32, i32* %posn26, align 4
  %add = add nsw i32 %36, %34
  store i32 %add, i32* %posn26, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpdateLineNum(%struct._tagTreeCCStream* %stream, i8* %buf) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 10) #5
  store i8* %call, i8** %buf.addr, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %2, i32 0, i32 3
  %3 = load i64, i64* %linenum, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %linenum, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamCode(%struct._tagTreeCCStream* %stream, i8* %code) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %code.addr = alloca i8*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i8*, i8** %code.addr, align 8
  call void @WriteBuffer(%struct._tagTreeCCStream* %0, i8* %1)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load i8*, i8** %code.addr, align 8
  call void @UpdateLineNum(%struct._tagTreeCCStream* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %stream, i8* %code, i32 %indent) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %code.addr = alloca i8*, align 8
  %indent.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %0 = load i8*, i8** %code.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %2, i32 0, i32 6
  %3 = load i32, i32* %posn, align 4
  %cmp2 = icmp slt i32 %3, 2048
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %code.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn4 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %6, i32 0, i32 6
  %7 = load i32, i32* %posn4, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %posn4, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 5
  %9 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i64 %idxprom
  store i8 %5, i8* %arrayidx, align 1
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %10, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load i8*, i8** %code.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv5 = sext i8 %12 to i32
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 %conv5, %struct._tagTreeCCStream* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %14 = load i8*, i8** %code.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %if.then.9, label %if.end.32

if.then.9:                                        ; preds = %do.end
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %16, i32 0, i32 3
  %17 = load i64, i64* %linenum, align 8
  %inc10 = add nsw i64 %17, 1
  store i64 %inc10, i64* %linenum, align 8
  store i32 0, i32* %temp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %18 = load i32, i32* %temp, align 4
  %19 = load i32, i32* %indent.addr, align 4
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn14 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %20, i32 0, i32 6
  %21 = load i32, i32* %posn14, align 4
  %cmp15 = icmp slt i32 %21, 2048
  br i1 %cmp15, label %if.then.17, label %if.else.28

if.then.17:                                       ; preds = %do.body.13
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn18 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %22, i32 0, i32 6
  %23 = load i32, i32* %posn18, align 4
  %inc19 = add nsw i32 %23, 1
  store i32 %inc19, i32* %posn18, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf21 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %24, i32 0, i32 5
  %25 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf21, align 8
  %data22 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %25, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data22, i32 0, i64 %idxprom20
  store i8 9, i8* %arrayidx23, align 1
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty24 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %26, i32 0, i32 7
  %bf.load25 = load i8, i8* %dirty24, align 4
  %bf.clear26 = and i8 %bf.load25, -17
  %bf.set27 = or i8 %bf.clear26, 16
  store i8 %bf.set27, i8* %dirty24, align 4
  br label %if.end.29

if.else.28:                                       ; preds = %do.body.13
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 9, %struct._tagTreeCCStream* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.17
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %do.end.30
  %28 = load i32, i32* %temp, align 4
  %inc31 = add nsw i32 %28, 1
  store i32 %inc31, i32* %temp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %do.end
  %29 = load i8*, i8** %code.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %code.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_StreamPut(i32 %ch, %struct._tagTreeCCStream* %stream) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %buf = alloca [2 x i8], align 1
  store i32 %ch, i32* %ch.addr, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %0 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  call void @WriteBuffer(%struct._tagTreeCCStream* %1, i8* %arraydecay)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamCodeIndentCustom(%struct._tagTreeCCStream* %stream, i8* %code, i8 signext %indentchar, i32 %indent) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %code.addr = alloca i8*, align 8
  %indentchar.addr = alloca i8, align 1
  %indent.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i8 %indentchar, i8* %indentchar.addr, align 1
  store i32 %indent, i32* %indent.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %0 = load i8*, i8** %code.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %2, i32 0, i32 6
  %3 = load i32, i32* %posn, align 4
  %cmp2 = icmp slt i32 %3, 2048
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %code.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn4 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %6, i32 0, i32 6
  %7 = load i32, i32* %posn4, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %posn4, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 5
  %9 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i64 %idxprom
  store i8 %5, i8* %arrayidx, align 1
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %10, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load i8*, i8** %code.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv5 = sext i8 %12 to i32
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 %conv5, %struct._tagTreeCCStream* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %14 = load i8*, i8** %code.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %do.end
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %16, i32 0, i32 3
  %17 = load i64, i64* %linenum, align 8
  %inc10 = add nsw i64 %17, 1
  store i64 %inc10, i64* %linenum, align 8
  store i32 0, i32* %temp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %18 = load i32, i32* %temp, align 4
  %19 = load i32, i32* %indent.addr, align 4
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.13

do.body.13:                                       ; preds = %for.body
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn14 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %20, i32 0, i32 6
  %21 = load i32, i32* %posn14, align 4
  %cmp15 = icmp slt i32 %21, 2048
  br i1 %cmp15, label %if.then.17, label %if.else.28

if.then.17:                                       ; preds = %do.body.13
  %22 = load i8, i8* %indentchar.addr, align 1
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn18 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %23, i32 0, i32 6
  %24 = load i32, i32* %posn18, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %posn18, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf21 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %25, i32 0, i32 5
  %26 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf21, align 8
  %data22 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %26, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data22, i32 0, i64 %idxprom20
  store i8 %22, i8* %arrayidx23, align 1
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty24 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %27, i32 0, i32 7
  %bf.load25 = load i8, i8* %dirty24, align 4
  %bf.clear26 = and i8 %bf.load25, -17
  %bf.set27 = or i8 %bf.clear26, 16
  store i8 %bf.set27, i8* %dirty24, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %do.body.13
  %28 = load i8, i8* %indentchar.addr, align 1
  %conv29 = sext i8 %28 to i32
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 %conv29, %struct._tagTreeCCStream* %29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.17
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %do.end.31
  %30 = load i32, i32* %temp, align 4
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, i32* %temp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %do.end
  %31 = load i8*, i8** %code.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %code.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %1, i32 0, i32 3
  %2 = load i64, i64* %linenum, align 8
  %add = add nsw i64 %2, 1
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 2
  %4 = load i8*, i8** %embedName, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %0, i64 %add, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamLine(%struct._tagTreeCCStream* %stream, i64 %linenum, i8* %filename) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %linenum.addr = alloca i64, align 8
  %filename.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %context = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %print_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 8
  %bf.load = load i16, i16* %print_lines, align 8
  %bf.shl = shl i16 %bf.load, 6
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %context1 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %2, i32 0, i32 0
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context1, align 8
  %strip_filenames = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 8
  %bf.load2 = load i16, i16* %strip_filenames, align 8
  %bf.shl3 = shl i16 %bf.load2, 7
  %bf.ashr4 = ashr i16 %bf.shl3, 15
  %bf.cast5 = sext i16 %bf.ashr4 to i32
  %tobool6 = icmp ne i32 %bf.cast5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %5 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 47
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %len, align 4
  %sub12 = sub nsw i32 %9, 1
  %idxprom13 = sext i32 %sub12 to i64
  %10 = load i8*, i8** %filename.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 %idxprom13
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp ne i32 %conv15, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %len, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %len, align 4
  %15 = load i8*, i8** %filename.addr, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %filename.addr, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load i64, i64* %linenum.addr, align 8
  %18 = load i8*, i8** %filename.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i64 %17, i8* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* %stream, i8* %code, i8* %filename, i64 %linenum, i32 %atEnd, i32 %refOnly) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %code.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %atEnd.addr = alloca i32, align 4
  %refOnly.addr = alloca i32, align 4
  %defn = alloca %struct._tagTreeCCStreamDefn*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  store i32 %atEnd, i32* %atEnd.addr, align 4
  store i32 %refOnly, i32* %refOnly.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 40) #4
  %1 = bitcast i8* %call to %struct._tagTreeCCStreamDefn*
  store %struct._tagTreeCCStreamDefn* %1, %struct._tagTreeCCStreamDefn** %defn, align 8
  %2 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %tobool1 = icmp ne %struct._tagTreeCCStreamDefn* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* null)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i8*, i8** %code.addr, align 8
  %4 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code4 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %4, i32 0, i32 0
  store i8* %3, i8** %code4, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %filename5 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %6, i32 0, i32 1
  store i8* %5, i8** %filename5, align 8
  %7 = load i64, i64* %linenum.addr, align 8
  %8 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %linenum6 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %8, i32 0, i32 2
  store i64 %7, i64* %linenum6, align 8
  %9 = load i32, i32* %atEnd.addr, align 4
  %10 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %atEnd7 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %10, i32 0, i32 3
  store i32 %9, i32* %atEnd7, align 4
  %11 = load i32, i32* %refOnly.addr, align 4
  %12 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %refOnly8 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %12, i32 0, i32 4
  store i32 %11, i32* %refOnly8, align 4
  %13 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %13, i32 0, i32 5
  store %struct._tagTreeCCStreamDefn* null, %struct._tagTreeCCStreamDefn** %next, align 8
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 9
  %15 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %lastDefn, align 8
  %tobool9 = icmp ne %struct._tagTreeCCStreamDefn* %15, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.3
  %16 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastDefn11 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %17, i32 0, i32 9
  %18 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %lastDefn11, align 8
  %next12 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %18, i32 0, i32 5
  store %struct._tagTreeCCStreamDefn* %16, %struct._tagTreeCCStreamDefn** %next12, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.3
  %19 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %20, i32 0, i32 8
  store %struct._tagTreeCCStreamDefn* %19, %struct._tagTreeCCStreamDefn** %firstDefn, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %21 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastDefn14 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %22, i32 0, i32 9
  store %struct._tagTreeCCStreamDefn* %21, %struct._tagTreeCCStreamDefn** %lastDefn14, align 8
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamHeaderTop(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %filename = alloca i8*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 2
  %1 = load i8*, i8** %embedName, align 8
  store i8* %1, i8** %filename, align 8
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load i8*, i8** %filename, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* %3)
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %context = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %5, i32 0, i32 0
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 9
  %7 = load i8*, i8** %yy_replacement, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %7)
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %9 = load i8*, i8** %filename, align 8
  call void @OutputMacroName(%struct._tagTreeCCStream* %8, i8* %9)
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %context1 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %11, i32 0, i32 0
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context1, align 8
  %yy_replacement2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 9
  %13 = load i8*, i8** %yy_replacement2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %13)
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load i8*, i8** %filename, align 8
  call void @OutputMacroName(%struct._tagTreeCCStream* %14, i8* %15)
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @OutputDefns(%struct._tagTreeCCStream* %16, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OutputMacroName(%struct._tagTreeCCStream* %stream, i8* %filename) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sge i32 %conv2, 65
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp sge i32 %conv8, 97
  br i1 %cmp9, label %land.lhs.true.11, label %lor.lhs.false.15

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp sle i32 %conv12, 122
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.11, %lor.lhs.false
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv16 = sext i8 %11 to i32
  %cmp17 = icmp sge i32 %conv16, 48
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.28

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15
  %12 = load i8*, i8** %filename.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br i1 %cmp21, label %if.then, label %if.else.28

if.then:                                          ; preds = %land.lhs.true.19, %land.lhs.true.11, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 6
  %15 = load i32, i32* %posn, align 4
  %cmp23 = icmp slt i32 %15, 2048
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  %16 = load i8*, i8** %filename.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn26 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %18, i32 0, i32 6
  %19 = load i32, i32* %posn26, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %posn26, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %20, i32 0, i32 5
  %21 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %21, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i64 %idxprom
  store i8 %17, i8* %arrayidx, align 1
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %22, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %23 = load i8*, i8** %filename.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv27 = sext i8 %24 to i32
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 %conv27, %struct._tagTreeCCStream* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.47

if.else.28:                                       ; preds = %land.lhs.true.19, %lor.lhs.false.15
  br label %do.body.29

do.body.29:                                       ; preds = %if.else.28
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn30 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %26, i32 0, i32 6
  %27 = load i32, i32* %posn30, align 4
  %cmp31 = icmp slt i32 %27, 2048
  br i1 %cmp31, label %if.then.33, label %if.else.44

if.then.33:                                       ; preds = %do.body.29
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn34 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %28, i32 0, i32 6
  %29 = load i32, i32* %posn34, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %posn34, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf37 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %30, i32 0, i32 5
  %31 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf37, align 8
  %data38 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %31, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data38, i32 0, i64 %idxprom36
  store i8 95, i8* %arrayidx39, align 1
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty40 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %32, i32 0, i32 7
  %bf.load41 = load i8, i8* %dirty40, align 4
  %bf.clear42 = and i8 %bf.load41, -17
  %bf.set43 = or i8 %bf.clear42, 16
  store i8 %bf.set43, i8* %dirty40, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.29
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 95, %struct._tagTreeCCStream* %33)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.33
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end
  %34 = load i8*, i8** %filename.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %filename.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.48

do.body.48:                                       ; preds = %while.end
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn49 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %35, i32 0, i32 6
  %36 = load i32, i32* %posn49, align 4
  %cmp50 = icmp slt i32 %36, 2048
  br i1 %cmp50, label %if.then.52, label %if.else.63

if.then.52:                                       ; preds = %do.body.48
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn53 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %37, i32 0, i32 6
  %38 = load i32, i32* %posn53, align 4
  %inc54 = add nsw i32 %38, 1
  store i32 %inc54, i32* %posn53, align 4
  %idxprom55 = sext i32 %38 to i64
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf56 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %39, i32 0, i32 5
  %40 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf56, align 8
  %data57 = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %40, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data57, i32 0, i64 %idxprom55
  store i8 10, i8* %arrayidx58, align 1
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty59 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %41, i32 0, i32 7
  %bf.load60 = load i8, i8* %dirty59, align 4
  %bf.clear61 = and i8 %bf.load60, -17
  %bf.set62 = or i8 %bf.clear61, 16
  store i8 %bf.set62, i8* %dirty59, align 4
  br label %if.end.64

if.else.63:                                       ; preds = %do.body.48
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 10, %struct._tagTreeCCStream* %42)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.52
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %43, i32 0, i32 3
  %44 = load i64, i64* %linenum, align 8
  %inc66 = add nsw i64 %44, 1
  store i64 %inc66, i64* %linenum, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OutputDefns(%struct._tagTreeCCStream* %stream, i32 %atEnd) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %atEnd.addr = alloca i32, align 4
  %defn = alloca %struct._tagTreeCCStreamDefn*, align 8
  %sawDefn = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %atEnd, i32* %atEnd.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %firstDefn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %0, i32 0, i32 8
  %1 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %firstDefn, align 8
  store %struct._tagTreeCCStreamDefn* %1, %struct._tagTreeCCStreamDefn** %defn, align 8
  store i32 0, i32* %sawDefn, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %entry
  %2 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %cmp = icmp ne %struct._tagTreeCCStreamDefn* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %atEnd1 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %3, i32 0, i32 3
  %4 = load i32, i32* %atEnd1, align 4
  %5 = load i32, i32* %atEnd.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end.21

if.then:                                          ; preds = %while.body
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %7, i32 0, i32 2
  %8 = load i64, i64* %linenum, align 8
  %9 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %9, i32 0, i32 1
  %10 = load i8*, i8** %filename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %6, i64 %8, i8* %10)
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %12, i32 0, i32 0
  %13 = load i8*, i8** %code, align 8
  call void @WriteBuffer(%struct._tagTreeCCStream* %11, i8* %13)
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code3 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %15, i32 0, i32 0
  %16 = load i8*, i8** %code3, align 8
  call void @UpdateLineNum(%struct._tagTreeCCStream* %14, i8* %16)
  %17 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code4 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %17, i32 0, i32 0
  %18 = load i8*, i8** %code4, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then
  %20 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code7 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %20, i32 0, i32 0
  %21 = load i8*, i8** %code7, align 8
  %call = call i64 @strlen(i8* %21) #5
  %sub = sub i64 %call, 1
  %22 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %code8 = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %22, i32 0, i32 0
  %23 = load i8*, i8** %code8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %sub
  %24 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %24 to i32
  %cmp10 = icmp ne i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %25, i32 0, i32 6
  %26 = load i32, i32* %posn, align 4
  %cmp13 = icmp slt i32 %26, 2048
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %posn16 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %27, i32 0, i32 6
  %28 = load i32, i32* %posn16, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %posn16, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %lastBuf = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %29, i32 0, i32 5
  %30 = load %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf** %lastBuf, align 8
  %data = getelementptr inbounds %struct._tagTreeCCStreamBuf, %struct._tagTreeCCStreamBuf* %30, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %data, i32 0, i64 %idxprom
  store i8 10, i8* %arrayidx17, align 1
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %31, i32 0, i32 7
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %dirty, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @_StreamPut(i32 10, %struct._tagTreeCCStream* %32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %linenum18 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %33, i32 0, i32 3
  %34 = load i64, i64* %linenum18, align 8
  %inc19 = add nsw i64 %34, 1
  store i64 %inc19, i64* %linenum18, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %land.lhs.true, %if.then
  store i32 1, i32* %sawDefn, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %35 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %defn, align 8
  %next = getelementptr inbounds %struct._tagTreeCCStreamDefn, %struct._tagTreeCCStreamDefn* %35, i32 0, i32 5
  %36 = load %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn** %next, align 8
  store %struct._tagTreeCCStreamDefn* %36, %struct._tagTreeCCStreamDefn** %defn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load i32, i32* %sawDefn, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %38)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamHeaderBottom(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @OutputDefns(%struct._tagTreeCCStream* %0, i32 1)
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamSourceTop(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %1, i32 0, i32 2
  %2 = load i8*, i8** %embedName, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* %2)
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @OutputDefns(%struct._tagTreeCCStream* %3, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamSourceTopCS(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @OutputDefns(%struct._tagTreeCCStream* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream* %stream) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @OutputDefns(%struct._tagTreeCCStream* %0, i32 1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
