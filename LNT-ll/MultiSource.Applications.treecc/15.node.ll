; ModuleID = './MultiSource.Applications.treecc/15.node.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@.str = private unnamed_addr constant [16 x i8] c"%%node %s %s %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no_parent\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"node type `%s' is already declared\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"previous declaration here\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"node type `%s' is not declared\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"base node type `%s' must be declared with %%typedef\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"field type does not end in `*'\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%%virtual %s %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%%field %s %s %s %d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"no_type\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"no_value\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"field `%s' is already declared\00", align 1

; Function Attrs: nounwind uwtable
define i32 @TreeCCHashString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %hash, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %hash, align 4
  %shl = shl i32 %2, 5
  %3 = load i32, i32* %hash, align 4
  %add = add i32 %shl, %3
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %add3 = add i32 %add, %conv2
  store i32 %add3, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %hash, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @TreeCCNodeFree(%struct._tagTreeCCNode* %node) #0 {
entry:
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  %nextField = alloca %struct._tagTreeCCField*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %nextVirt = alloca %struct._tagTreeCCVirtual*, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 10
  %1 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %1, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %3, i32 0, i32 6
  %4 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %4, %struct._tagTreeCCField** %nextField, align 8
  %5 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  call void @free(i8* %6) #4
  %7 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %7, i32 0, i32 1
  %8 = load i8*, i8** %type, align 8
  call void @free(i8* %8) #4
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %9, i32 0, i32 2
  %10 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value1 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %11, i32 0, i32 2
  %12 = load i8*, i8** %value1, align 8
  call void @free(i8* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %14 = bitcast %struct._tagTreeCCField* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %nextField, align 8
  store %struct._tagTreeCCField* %15, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 11
  %17 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %17, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.4, %while.end
  %18 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp3 = icmp ne %struct._tagTreeCCVirtual* %18, null
  br i1 %cmp3, label %while.body.4, label %while.end.6

while.body.4:                                     ; preds = %while.cond.2
  %19 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next5 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %19, i32 0, i32 4
  %20 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next5, align 8
  store %struct._tagTreeCCVirtual* %20, %struct._tagTreeCCVirtual** %nextVirt, align 8
  %21 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %22 = bitcast %struct._tagTreeCCVirtual* %21 to i8*
  call void @free(i8* %22) #4
  %23 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %nextVirt, align 8
  store %struct._tagTreeCCVirtual* %23, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond.2

while.end.6:                                      ; preds = %while.cond.2
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 4
  %25 = load i8*, i8** %name7, align 8
  call void @free(i8* %25) #4
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %27 = bitcast %struct._tagTreeCCNode* %26 to i8*
  call void @free(i8* %27) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCNode* @TreeCCNodeCreate(%struct._tagTreeCCContext* %context, i64 %linenum, i8* %name, i8* %parent, i32 %flags) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %linenum.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %parent.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %parentNode = alloca %struct._tagTreeCCNode*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %parent, i8** %parent.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %linenum.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %parent.addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i8*, i8** %parent.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %5 = load i32, i32* %flags.addr, align 4
  call void (i64, i8*, ...) @TreeCCDebug(i64 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %2, i8* %cond, i32 %5)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %6 = load i8*, i8** %parent.addr, align 8
  %tobool2 = icmp ne i8* %6, null
  br i1 %tobool2, label %if.then.3, label %if.else.17

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load i8*, i8** %parent.addr, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext* %7, i8* %8)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %parentNode, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %tobool4 = icmp ne %struct._tagTreeCCNode* %9, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  %call6 = call noalias i8* @malloc(i64 112) #4
  %10 = bitcast i8* %call6 to %struct._tagTreeCCNode*
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %parentNode, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %tobool7 = icmp ne %struct._tagTreeCCNode* %11, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 2
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %parent10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 0
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %parent10, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 1
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %firstChild, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 2
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %lastChild, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 3
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %nextSibling, align 8
  %18 = load i8*, i8** %parent.addr, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 4
  store i8* %18, i8** %name11, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 5
  store i32 1, i32* %flags12, align 4
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeNumber = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 12
  %22 = load i32, i32* %nodeNumber, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %nodeNumber, align 4
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 6
  store i32 %22, i32* %number, align 4
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input13 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 2
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input13, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %25, i32 0, i32 4
  %26 = load i8*, i8** %filename, align 8
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %filename14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %27, i32 0, i32 8
  store i8* %26, i8** %filename14, align 8
  %28 = load i64, i64* %linenum.addr, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %linenum15 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 9
  store i64 %28, i64* %linenum15, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 10
  store %struct._tagTreeCCField* null, %struct._tagTreeCCField** %fields, align 8
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %31, i32 0, i32 11
  store %struct._tagTreeCCVirtual* null, %struct._tagTreeCCVirtual** %virtuals, align 8
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 4
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %header = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %34, i32 0, i32 13
  store %struct._tagTreeCCStream* %33, %struct._tagTreeCCStream** %header, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 5
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  %37 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %37, i32 0, i32 14
  store %struct._tagTreeCCStream* %36, %struct._tagTreeCCStream** %source, align 8
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  call void @AddToHash(%struct._tagTreeCCContext* %38, %struct._tagTreeCCNode* %39)
  br label %if.end.16

if.else:                                          ; preds = %if.then.3
  %40 = load i8*, i8** %parent.addr, align 8
  call void @free(i8* %40) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.9
  br label %if.end.18

if.else.17:                                       ; preds = %if.end
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %parentNode, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %42 = load i8*, i8** %name.addr, align 8
  %call19 = call %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext* %41, i8* %42)
  store %struct._tagTreeCCNode* %call19, %struct._tagTreeCCNode** %node, align 8
  %43 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool20 = icmp ne %struct._tagTreeCCNode* %43, null
  br i1 %tobool20, label %if.then.21, label %if.else.55

if.then.21:                                       ; preds = %if.end.18
  %44 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags22 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %44, i32 0, i32 5
  %45 = load i32, i32* %flags22, align 4
  %and = and i32 %45, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %if.then.21
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input24 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %46, i32 0, i32 2
  %47 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input24, align 8
  %48 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %48, i32 0, i32 2
  %49 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input25, align 8
  %filename26 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %49, i32 0, i32 4
  %50 = load i8*, i8** %filename26, align 8
  %51 = load i64, i64* %linenum.addr, align 8
  %52 = load i8*, i8** %name.addr, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %47, i8* %50, i64 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* %52)
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %53, i32 0, i32 2
  %54 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input27, align 8
  %55 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %filename28 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %55, i32 0, i32 8
  %56 = load i8*, i8** %filename28, align 8
  %57 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %linenum29 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %57, i32 0, i32 9
  %58 = load i64, i64* %linenum29, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %54, i8* %56, i64 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  %59 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %59) #4
  br label %if.end.54

if.else.30:                                       ; preds = %if.then.21
  %60 = load i32, i32* %flags.addr, align 4
  %61 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags31 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %61, i32 0, i32 5
  store i32 %60, i32* %flags31, align 4
  %62 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %parent32 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %63, i32 0, i32 0
  store %struct._tagTreeCCNode* %62, %struct._tagTreeCCNode** %parent32, align 8
  %64 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input33 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %64, i32 0, i32 2
  %65 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input33, align 8
  %filename34 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %65, i32 0, i32 4
  %66 = load i8*, i8** %filename34, align 8
  %67 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %filename35 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %67, i32 0, i32 8
  store i8* %66, i8** %filename35, align 8
  %68 = load i64, i64* %linenum.addr, align 8
  %69 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %linenum36 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %69, i32 0, i32 9
  store i64 %68, i64* %linenum36, align 8
  %70 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream37 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %70, i32 0, i32 4
  %71 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream37, align 8
  %72 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %header38 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %72, i32 0, i32 13
  store %struct._tagTreeCCStream* %71, %struct._tagTreeCCStream** %header38, align 8
  %73 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream39 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %73, i32 0, i32 5
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream39, align 8
  %75 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %source40 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %75, i32 0, i32 14
  store %struct._tagTreeCCStream* %74, %struct._tagTreeCCStream** %source40, align 8
  %76 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextSibling41 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %76, i32 0, i32 3
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %nextSibling41, align 8
  %77 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %tobool42 = icmp ne %struct._tagTreeCCNode* %77, null
  br i1 %tobool42, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.else.30
  %78 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild44 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %78, i32 0, i32 2
  %79 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %lastChild44, align 8
  %tobool45 = icmp ne %struct._tagTreeCCNode* %79, null
  br i1 %tobool45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.then.43
  %80 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %81 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild47 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %81, i32 0, i32 2
  %82 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %lastChild47, align 8
  %nextSibling48 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %82, i32 0, i32 3
  store %struct._tagTreeCCNode* %80, %struct._tagTreeCCNode** %nextSibling48, align 8
  br label %if.end.51

if.else.49:                                       ; preds = %if.then.43
  %83 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %84 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %firstChild50 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %84, i32 0, i32 1
  store %struct._tagTreeCCNode* %83, %struct._tagTreeCCNode** %firstChild50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.46
  %85 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %86 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild52 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %86, i32 0, i32 2
  store %struct._tagTreeCCNode* %85, %struct._tagTreeCCNode** %lastChild52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %if.else.30
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.23
  br label %if.end.92

if.else.55:                                       ; preds = %if.end.18
  %call56 = call noalias i8* @malloc(i64 112) #4
  %87 = bitcast i8* %call56 to %struct._tagTreeCCNode*
  store %struct._tagTreeCCNode* %87, %struct._tagTreeCCNode** %node, align 8
  %88 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool57 = icmp ne %struct._tagTreeCCNode* %88, null
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.else.55
  %89 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input59 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %89, i32 0, i32 2
  %90 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input59, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %90)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else.55
  %91 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %92 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %parent61 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %92, i32 0, i32 0
  store %struct._tagTreeCCNode* %91, %struct._tagTreeCCNode** %parent61, align 8
  %93 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %firstChild62 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %93, i32 0, i32 1
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %firstChild62, align 8
  %94 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %lastChild63 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %94, i32 0, i32 2
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %lastChild63, align 8
  %95 = load i8*, i8** %name.addr, align 8
  %96 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name64 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %96, i32 0, i32 4
  store i8* %95, i8** %name64, align 8
  %97 = load i32, i32* %flags.addr, align 4
  %98 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags65 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %98, i32 0, i32 5
  store i32 %97, i32* %flags65, align 4
  %99 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeNumber66 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %99, i32 0, i32 12
  %100 = load i32, i32* %nodeNumber66, align 4
  %inc67 = add nsw i32 %100, 1
  store i32 %inc67, i32* %nodeNumber66, align 4
  %101 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %number68 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %101, i32 0, i32 6
  store i32 %100, i32* %number68, align 4
  %102 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input69 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %102, i32 0, i32 2
  %103 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input69, align 8
  %filename70 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %103, i32 0, i32 4
  %104 = load i8*, i8** %filename70, align 8
  %105 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %filename71 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %105, i32 0, i32 8
  store i8* %104, i8** %filename71, align 8
  %106 = load i64, i64* %linenum.addr, align 8
  %107 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %linenum72 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %107, i32 0, i32 9
  store i64 %106, i64* %linenum72, align 8
  %108 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %fields73 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %108, i32 0, i32 10
  store %struct._tagTreeCCField* null, %struct._tagTreeCCField** %fields73, align 8
  %109 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %virtuals74 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %109, i32 0, i32 11
  store %struct._tagTreeCCVirtual* null, %struct._tagTreeCCVirtual** %virtuals74, align 8
  %110 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream75 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %110, i32 0, i32 4
  %111 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream75, align 8
  %112 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %header76 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %112, i32 0, i32 13
  store %struct._tagTreeCCStream* %111, %struct._tagTreeCCStream** %header76, align 8
  %113 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream77 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %113, i32 0, i32 5
  %114 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream77, align 8
  %115 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %source78 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %115, i32 0, i32 14
  store %struct._tagTreeCCStream* %114, %struct._tagTreeCCStream** %source78, align 8
  %116 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextSibling79 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %116, i32 0, i32 3
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %nextSibling79, align 8
  %117 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %tobool80 = icmp ne %struct._tagTreeCCNode* %117, null
  br i1 %tobool80, label %if.then.81, label %if.end.91

if.then.81:                                       ; preds = %if.end.60
  %118 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild82 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %118, i32 0, i32 2
  %119 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %lastChild82, align 8
  %tobool83 = icmp ne %struct._tagTreeCCNode* %119, null
  br i1 %tobool83, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %if.then.81
  %120 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %121 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild85 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %121, i32 0, i32 2
  %122 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %lastChild85, align 8
  %nextSibling86 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %122, i32 0, i32 3
  store %struct._tagTreeCCNode* %120, %struct._tagTreeCCNode** %nextSibling86, align 8
  br label %if.end.89

if.else.87:                                       ; preds = %if.then.81
  %123 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %124 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %firstChild88 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %124, i32 0, i32 1
  store %struct._tagTreeCCNode* %123, %struct._tagTreeCCNode** %firstChild88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.84
  %125 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %126 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parentNode, align 8
  %lastChild90 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %126, i32 0, i32 2
  store %struct._tagTreeCCNode* %125, %struct._tagTreeCCNode** %lastChild90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.89, %if.end.60
  %127 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %128 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  call void @AddToHash(%struct._tagTreeCCContext* %127, %struct._tagTreeCCNode* %128)
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.54
  %129 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  ret %struct._tagTreeCCNode* %129
}

declare void @TreeCCDebug(i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext* %context, i8* %name) #0 {
entry:
  %retval = alloca %struct._tagTreeCCNode*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %name.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @TreeCCHashString(i8* %0)
  %and = and i32 %call, 511
  store i32 %and, i32* %hash, align 4
  %1 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  store %struct._tagTreeCCNode* %3, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name1, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* %7) #5
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  store %struct._tagTreeCCNode* %8, %struct._tagTreeCCNode** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 12
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %retval
  ret %struct._tagTreeCCNode* %11
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #2

; Function Attrs: nounwind uwtable
define internal void @AddToHash(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %hash = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 4
  %1 = load i8*, i8** %name, align 8
  %call = call i32 @TreeCCHashString(i8* %1)
  %and = and i32 %call, 511
  store i32 %and, i32* %hash, align 4
  %2 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 12
  store %struct._tagTreeCCNode* %4, %struct._tagTreeCCNode** %nextHash, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %7 = load i32, i32* %hash, align 4
  %idxprom1 = zext i32 %7 to i64
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash2, i32 0, i64 %idxprom1
  store %struct._tagTreeCCNode* %6, %struct._tagTreeCCNode** %arrayidx3, align 8
  ret void
}

declare void @TreeCCErrorOnLine(%struct.TreeCCInput*, i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %context, i8* %name) #0 {
entry:
  %retval = alloca %struct._tagTreeCCNode*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %name.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  %len = alloca i32, align 4
  %hasSuffix = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 42
  br i1 %cmp3, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %len, align 4
  %sub6 = sub nsw i32 %5, 2
  %idxprom7 = sext i32 %sub6 to i64
  %6 = load i8*, i8** %name.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.5
  %8 = load i32, i32* %len, align 4
  %sub12 = sub nsw i32 %8, 2
  store i32 %sub12, i32* %len, align 4
  store i32 1, i32* %hasSuffix, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  store i32 0, i32* %hasSuffix, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i32, i32* %len, align 4
  %call13 = call i32 @HashStringLen(i8* %9, i32 %10)
  %and = and i32 %call13, 511
  store i32 %and, i32* %hash, align 4
  %11 = load i32, i32* %hash, align 4
  %idxprom14 = zext i32 %11 to i64
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom14
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx15, align 8
  store %struct._tagTreeCCNode* %13, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %if.end
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp16 = icmp ne %struct._tagTreeCCNode* %14, null
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name18, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* %len, align 4
  %conv19 = sext i32 %18 to i64
  %call20 = call i32 @strncmp(i8* %16, i8* %17, i64 %conv19) #5
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end.43, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %while.body
  %19 = load i32, i32* %len, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %21, i64 %idxprom22
  %22 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %22 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.43

if.then.28:                                       ; preds = %land.lhs.true.21
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 5
  %24 = load i32, i32* %flags, align 4
  %and29 = and i32 %24, 8
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.then.28
  %25 = load i32, i32* %hasSuffix, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.then.32
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %retval
  br label %return

if.else.35:                                       ; preds = %if.then.32
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  store %struct._tagTreeCCNode* %26, %struct._tagTreeCCNode** %retval
  br label %return

if.else.36:                                       ; preds = %if.then.28
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags37 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %27, i32 0, i32 5
  %28 = load i32, i32* %flags37, align 4
  %and38 = and i32 %28, 16
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else.36
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %retval
  br label %return

if.else.42:                                       ; preds = %if.else.36
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  store %struct._tagTreeCCNode* %29, %struct._tagTreeCCNode** %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true.21, %while.body
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 12
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %31, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._tagTreeCCNode* null, %struct._tagTreeCCNode** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.42, %if.then.41, %if.else.35, %if.then.34
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %retval
  ret %struct._tagTreeCCNode* %32
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @HashStringLen(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %hash, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %hash, align 4
  %shl = shl i32 %1, 5
  %2 = load i32, i32* %hash, align 4
  %add = add i32 %shl, %2
  %3 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %add1 = add i32 %add, %conv
  store i32 %add1, i32* %hash, align 4
  %5 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %hash, align 4
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @TreeCCNodeValidate(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  %type = alloca %struct._tagTreeCCNode*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  %len = alloca i32, align 4
  %typeCheck = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 13
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 13
  %3 = load i32, i32* %language1, align 4
  %cmp2 = icmp eq i32 %3, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  store i32 %lor.ext, i32* %typeCheck, align 4
  store i32 0, i32* %hash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %5 = load i32, i32* %hash, align 4
  %cmp3 = icmp ult i32 %5, 512
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  store %struct._tagTreeCCNode* %8, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %for.body
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp4 = icmp ne %struct._tagTreeCCNode* %9, null
  br i1 %cmp4, label %while.body, label %while.end.56

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 5
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 2
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 8
  %15 = load i8*, i8** %filename, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 9
  %17 = load i64, i64* %linenum, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 4
  %19 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %13, i8* %15, i64 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 0
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %21, null
  br i1 %tobool, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 5
  %23 = load i32, i32* %flags6, align 4
  %and7 = and i32 %23, 1
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.18

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 5
  %25 = load i32, i32* %flags10, align 4
  %and11 = and i32 %25, 4
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true.9
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %26, i32 0, i32 2
  %27 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input14, align 8
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %filename15 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %28, i32 0, i32 8
  %29 = load i8*, i8** %filename15, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %linenum16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 9
  %31 = load i64, i64* %linenum16, align 8
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %32, i32 0, i32 4
  %33 = load i8*, i8** %name17, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %27, i8* %29, i64 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i8* %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %land.lhs.true.9, %land.lhs.true, %if.end
  %34 = load i32, i32* %typeCheck, align 4
  %tobool19 = icmp ne i32 %34, 0
  br i1 %tobool19, label %if.then.20, label %if.end.55

if.then.20:                                       ; preds = %if.end.18
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 10
  %36 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %36, %struct._tagTreeCCField** %field, align 8
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.54, %if.then.20
  %37 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp22 = icmp ne %struct._tagTreeCCField* %37, null
  br i1 %cmp22, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.21
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %39 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type24 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %39, i32 0, i32 1
  %40 = load i8*, i8** %type24, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %38, i8* %40)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %type, align 8
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %cmp25 = icmp ne %struct._tagTreeCCNode* %41, null
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.54

land.lhs.true.26:                                 ; preds = %while.body.23
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %flags27 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %42, i32 0, i32 5
  %43 = load i32, i32* %flags27, align 4
  %and28 = and i32 %43, 8
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.54

if.then.30:                                       ; preds = %land.lhs.true.26
  %44 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type31 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %44, i32 0, i32 1
  %45 = load i8*, i8** %type31, align 8
  %call32 = call i64 @strlen(i8* %45) #5
  %conv = trunc i64 %call32 to i32
  store i32 %conv, i32* %len, align 4
  %46 = load i32, i32* %len, align 4
  %cmp33 = icmp slt i32 %46, 2
  br i1 %cmp33, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.30
  %47 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %47, 1
  %idxprom35 = sext i32 %sub to i64
  %48 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type36 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %48, i32 0, i32 1
  %49 = load i8*, i8** %type36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %49, i64 %idxprom35
  %50 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %50 to i32
  %cmp39 = icmp ne i32 %conv38, 42
  br i1 %cmp39, label %if.then.49, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %51 = load i32, i32* %len, align 4
  %sub42 = sub nsw i32 %51, 2
  %idxprom43 = sext i32 %sub42 to i64
  %52 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type44 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %52, i32 0, i32 1
  %53 = load i8*, i8** %type44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %53, i64 %idxprom43
  %54 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %54 to i32
  %cmp47 = icmp ne i32 %conv46, 32
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false, %if.then.30
  %55 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %55, i32 0, i32 2
  %56 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input50, align 8
  %57 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %filename51 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %57, i32 0, i32 4
  %58 = load i8*, i8** %filename51, align 8
  %59 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %linenum52 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %59, i32 0, i32 5
  %60 = load i64, i64* %linenum52, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %56, i8* %58, i64 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %lor.lhs.false.41
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.26, %while.body.23
  %61 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %61, i32 0, i32 6
  %62 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %62, %struct._tagTreeCCField** %field, align 8
  br label %while.cond.21

while.end:                                        ; preds = %while.cond.21
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %if.end.18
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %63, i32 0, i32 12
  %64 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %64, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.end.56:                                     ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end.56
  %65 = load i32, i32* %hash, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %context, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %visitor) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %visitor.addr = alloca void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, align 8
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %visitor, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  store i32 0, i32* %hash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %hash, align 4
  %cmp = icmp ult i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  store %struct._tagTreeCCNode* %3, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp1 = icmp ne %struct._tagTreeCCNode* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 0
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  call void %7(%struct._tagTreeCCContext* %8, %struct._tagTreeCCNode* %9)
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %12 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  call void @Visit(%struct._tagTreeCCContext* %10, %struct._tagTreeCCNode* %11, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 12
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %14, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %15 = load i32, i32* %hash, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Visit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %visitor) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %visitor.addr = alloca void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, align 8
  %child = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %visitor, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 1
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %1, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  call void %3(%struct._tagTreeCCContext* %4, %struct._tagTreeCCNode* %5)
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 3
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %7, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 1
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild1, align 8
  store %struct._tagTreeCCNode* %9, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.4, %while.end
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp3 = icmp ne %struct._tagTreeCCNode* %10, null
  br i1 %cmp3, label %while.body.4, label %while.end.6

while.body.4:                                     ; preds = %while.cond.2
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %13 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)** %visitor.addr, align 8
  call void @Visit(%struct._tagTreeCCContext* %11, %struct._tagTreeCCNode* %12, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* %13)
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 3
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling5, align 8
  store %struct._tagTreeCCNode* %15, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond.2

while.end.6:                                      ; preds = %while.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TreeCCNodeIsSingleton(%struct._tagTreeCCNode* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %1, i32 0, i32 10
  %2 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  %cmp1 = icmp ne %struct._tagTreeCCField* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 0
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  store %struct._tagTreeCCNode* %4, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @TreeCCNodeHasAbstracts(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @HasAbstracts(%struct._tagTreeCCContext* %0, %struct._tagTreeCCNode* %1, %struct._tagTreeCCNode* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @HasAbstracts(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %actualNode.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %tempNode = alloca %struct._tagTreeCCNode*, align 8
  %abstractCase = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode* %actualNode, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 0
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %call = call i32 @HasAbstracts(%struct._tagTreeCCContext* %2, %struct._tagTreeCCNode* %4, %struct._tagTreeCCNode* %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 11
  %7 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %7, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.4
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %8, null
  br i1 %cmp, label %while.body, label %while.end.22

while.body:                                       ; preds = %while.cond
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %11 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %call5 = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %9, %struct._tagTreeCCNode* %10, i8* %12)
  store %struct._tagTreeCCOperationCase* %call5, %struct._tagTreeCCOperationCase** %operCase, align 8
  %13 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool6 = icmp ne %struct._tagTreeCCOperationCase* %13, null
  br i1 %tobool6, label %if.end.21, label %if.then.7

if.then.7:                                        ; preds = %while.body
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %parent8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 0
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent8, align 8
  store %struct._tagTreeCCNode* %15, %struct._tagTreeCCNode** %tempNode, align 8
  store i32 1, i32* %abstractCase, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.16, %if.then.7
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %cmp10 = icmp ne %struct._tagTreeCCNode* %16, null
  br i1 %cmp10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.9
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %19 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %19, i32 0, i32 0
  %20 = load i8*, i8** %name12, align 8
  %call13 = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %17, %struct._tagTreeCCNode* %18, i8* %20)
  store %struct._tagTreeCCOperationCase* %call13, %struct._tagTreeCCOperationCase** %operCase, align 8
  %21 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp14 = icmp ne %struct._tagTreeCCOperationCase* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body.11
  store i32 0, i32* %abstractCase, align 4
  br label %while.end

if.end.16:                                        ; preds = %while.body.11
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %parent17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 0
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent17, align 8
  store %struct._tagTreeCCNode* %23, %struct._tagTreeCCNode** %tempNode, align 8
  br label %while.cond.9

while.end:                                        ; preds = %if.then.15, %while.cond.9
  %24 = load i32, i32* %abstractCase, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %while.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %25 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %25, i32 0, i32 4
  %26 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %26, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.22:                                     ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.22, %if.then.19, %if.then.3
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @TreeCCNodeAddVirtual(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %last = alloca %struct._tagTreeCCVirtual*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %1, i32 0, i32 8
  %2 = load i64, i64* %linenum, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 4
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* %4, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @malloc(i64 40) #4
  %7 = bitcast i8* %call to %struct._tagTreeCCVirtual*
  store %struct._tagTreeCCVirtual* %7, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp eq %struct._tagTreeCCVirtual* %7, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 2
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 0
  %11 = load i8*, i8** %name4, align 8
  %12 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %12, i32 0, i32 0
  store i8* %11, i8** %name5, align 8
  %13 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %13, i32 0, i32 2
  %14 = load i8*, i8** %returnType, align 8
  %15 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType6 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %15, i32 0, i32 1
  store i8* %14, i8** %returnType6, align 8
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %16, i32 0, i32 4
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 4
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  %19 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params7 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %19, i32 0, i32 2
  store %struct._tagTreeCCParam* %18, %struct._tagTreeCCParam** %params7, align 8
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %21 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper8 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %21, i32 0, i32 3
  store %struct._tagTreeCCOperation* %20, %struct._tagTreeCCOperation** %oper8, align 8
  %22 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next9 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %22, i32 0, i32 4
  store %struct._tagTreeCCVirtual* null, %struct._tagTreeCCVirtual** %next9, align 8
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 11
  %24 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  %tobool10 = icmp ne %struct._tagTreeCCVirtual* %24, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.3
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 11
  %26 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals12, align 8
  store %struct._tagTreeCCVirtual* %26, %struct._tagTreeCCVirtual** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.11
  %27 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %last, align 8
  %next13 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %27, i32 0, i32 4
  %28 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next13, align 8
  %cmp14 = icmp ne %struct._tagTreeCCVirtual* %28, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %last, align 8
  %next15 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %29, i32 0, i32 4
  %30 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next15, align 8
  store %struct._tagTreeCCVirtual* %30, %struct._tagTreeCCVirtual** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %32 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %last, align 8
  %next16 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %32, i32 0, i32 4
  store %struct._tagTreeCCVirtual* %31, %struct._tagTreeCCVirtual** %next16, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.3
  %33 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %34, i32 0, i32 11
  store %struct._tagTreeCCVirtual* %33, %struct._tagTreeCCVirtual** %virtuals17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode* %nodea, %struct._tagTreeCCNode* %nodeb) #0 {
entry:
  %retval = alloca i32, align 4
  %nodea.addr = alloca %struct._tagTreeCCNode*, align 8
  %nodeb.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCNode* %nodea, %struct._tagTreeCCNode** %nodea.addr, align 8
  store %struct._tagTreeCCNode* %nodeb, %struct._tagTreeCCNode** %nodeb.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nodea.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nodea.addr, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nodeb.addr, align 8
  %cmp1 = icmp eq %struct._tagTreeCCNode* %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nodea.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 0
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  store %struct._tagTreeCCNode* %4, %struct._tagTreeCCNode** %nodea.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @TreeCCNodeClearMarking(%struct._tagTreeCCContext* %context, i32 %flags) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %flags.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %hash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %hash, align 4
  %cmp = icmp ult i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  store %struct._tagTreeCCNode* %3, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp1 = icmp ne %struct._tagTreeCCNode* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %flags.addr, align 4
  %neg = xor i32 %5, -1
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 5
  %7 = load i32, i32* %flags2, align 4
  %and = and i32 %7, %neg
  store i32 %and, i32* %flags2, align 4
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 12
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %9, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i32, i32* %hash, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TreeCCNodeAssignPositions(%struct._tagTreeCCNode* %node) #0 {
entry:
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @AssignPositions(%struct._tagTreeCCNode* %0, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @AssignPositions(%struct._tagTreeCCNode* %node, i32 %posn) #0 {
entry:
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %posn.addr = alloca i32, align 4
  %child = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %posn, i32* %posn.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 1
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %1, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %4 = load i32, i32* %posn.addr, align 4
  %call = call i32 @AssignPositions(%struct._tagTreeCCNode* %3, i32 %4)
  store i32 %call, i32* %posn.addr, align 4
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 3
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %6, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %posn.addr, align 4
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 7
  store i32 %7, i32* %position, align 4
  %9 = load i32, i32* %posn.addr, align 4
  %add = add nsw i32 %9, 1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @TreeCCFieldCreate(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, i8* %name, i8* %type, i8* %value, i32 %flags) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %current = alloca %struct._tagTreeCCNode*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  %prev = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 2
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 5
  %3 = load i64, i64* %linenum, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8*, i8** %type.addr, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i8*, i8** %type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %cond.false ]
  %7 = load i8*, i8** %value.addr, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %8 = load i8*, i8** %value.addr, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i8* [ %8, %cond.true.3 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %cond.false.4 ]
  %9 = load i32, i32* %flags.addr, align 4
  call void (i64, i8*, ...) @TreeCCDebug(i64 %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %4, i8* %cond, i8* %cond6, i32 %9)
  br label %if.end

if.end:                                           ; preds = %cond.end.5, %entry
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %current, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %11, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %current, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %call = call i32 @IsDeclared(%struct._tagTreeCCContext* %12, %struct._tagTreeCCNode* %13, i8* %14, i32 0)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %while.body
  %15 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %15) #4
  %16 = load i8*, i8** %type.addr, align 8
  call void @free(i8* %16) #4
  %17 = load i8*, i8** %value.addr, align 8
  %tobool9 = icmp ne i8* %17, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %18 = load i8*, i8** %value.addr, align 8
  call void @free(i8* %18) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  br label %if.end.37

if.end.12:                                        ; preds = %while.body
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %current, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  store %struct._tagTreeCCNode* %20, %struct._tagTreeCCNode** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %23 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @IsDeclaredInChildren(%struct._tagTreeCCContext* %21, %struct._tagTreeCCNode* %22, i8* %23)
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 10
  %25 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %25, %struct._tagTreeCCField** %field, align 8
  store %struct._tagTreeCCField* null, %struct._tagTreeCCField** %prev, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.16, %while.end
  %26 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp15 = icmp ne %struct._tagTreeCCField* %26, null
  br i1 %cmp15, label %while.body.16, label %while.end.17

while.body.16:                                    ; preds = %while.cond.14
  %27 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  store %struct._tagTreeCCField* %27, %struct._tagTreeCCField** %prev, align 8
  %28 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %28, i32 0, i32 6
  %29 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %29, %struct._tagTreeCCField** %field, align 8
  br label %while.cond.14

while.end.17:                                     ; preds = %while.cond.14
  %call18 = call noalias i8* @malloc(i64 56) #4
  %30 = bitcast i8* %call18 to %struct._tagTreeCCField*
  store %struct._tagTreeCCField* %30, %struct._tagTreeCCField** %field, align 8
  %31 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %tobool19 = icmp ne %struct._tagTreeCCField* %31, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %while.end.17
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input21 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 2
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input21, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %while.end.17
  %34 = load i8*, i8** %name.addr, align 8
  %35 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %35, i32 0, i32 0
  store i8* %34, i8** %name23, align 8
  %36 = load i8*, i8** %type.addr, align 8
  %37 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type24 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %37, i32 0, i32 1
  store i8* %36, i8** %type24, align 8
  %38 = load i8*, i8** %value.addr, align 8
  %39 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value25 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %39, i32 0, i32 2
  store i8* %38, i8** %value25, align 8
  %40 = load i32, i32* %flags.addr, align 4
  %41 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags26 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %41, i32 0, i32 3
  store i32 %40, i32* %flags26, align 4
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %42, i32 0, i32 2
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input27, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %43, i32 0, i32 4
  %44 = load i8*, i8** %filename, align 8
  %45 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %filename28 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %45, i32 0, i32 4
  store i8* %44, i8** %filename28, align 8
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %46, i32 0, i32 2
  %47 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input29, align 8
  %linenum30 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %47, i32 0, i32 5
  %48 = load i64, i64* %linenum30, align 8
  %49 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %linenum31 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %49, i32 0, i32 5
  store i64 %48, i64* %linenum31, align 8
  %50 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next32 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %50, i32 0, i32 6
  store %struct._tagTreeCCField* null, %struct._tagTreeCCField** %next32, align 8
  %51 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %prev, align 8
  %tobool33 = icmp ne %struct._tagTreeCCField* %51, null
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.22
  %52 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %53 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %prev, align 8
  %next35 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %53, i32 0, i32 6
  store %struct._tagTreeCCField* %52, %struct._tagTreeCCField** %next35, align 8
  br label %if.end.37

if.else:                                          ; preds = %if.end.22
  %54 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %55 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields36 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %55, i32 0, i32 10
  store %struct._tagTreeCCField* %54, %struct._tagTreeCCField** %fields36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.11, %if.else, %if.then.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @IsDeclared(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, i8* %name, i32 %reverseError) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %name.addr = alloca i8*, align 8
  %reverseError.addr = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %reverseError, i32* %reverseError.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 10
  %1 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %1, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %2 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %reverseError.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 2
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %9, i32 0, i32 4
  %10 = load i8*, i8** %filename, align 8
  %11 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %11, i32 0, i32 5
  %12 = load i64, i64* %linenum, align 8
  %13 = load i8*, i8** %name.addr, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %8, i8* %10, i64 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %13)
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 2
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input4, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input5 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 2
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input5, align 8
  %18 = load i8*, i8** %name.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %18)
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 2
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input6, align 8
  %21 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %filename7 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %21, i32 0, i32 4
  %22 = load i8*, i8** %filename7, align 8
  %23 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %linenum8 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %23, i32 0, i32 5
  %24 = load i64, i64* %linenum8, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %20, i8* %22, i64 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  %25 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %25, i32 0, i32 6
  %26 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %26, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @IsDeclaredInChildren(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %name.addr = alloca i8*, align 8
  %child = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 1
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %1, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @IsDeclared(%struct._tagTreeCCContext* %3, %struct._tagTreeCCNode* %4, i8* %5, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @IsDeclaredInChildren(%struct._tagTreeCCContext* %6, %struct._tagTreeCCNode* %7, i8* %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 3
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #2

declare void @TreeCCError(%struct.TreeCCInput*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
