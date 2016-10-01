; ModuleID = './MultiSource.Applications.treecc/6.oper.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@.str = private unnamed_addr constant [25 x i8] c"%%operation %s %s%s%s %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%%param %s %s %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no_name\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%%case %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%%case %s %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"operation `%s' has no cases\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"node type `%s' is handled multiple times for operation `%s'\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"multiple definitions for operation `%s'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"first definition here\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"node type `%s' is not handled in operation `%s'\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"overlap between trigger types\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"case `%s' is missing from operation `%s'\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCOperationFree(%struct._tagTreeCCOperation* %oper) #0 {
entry:
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %nextParam = alloca %struct._tagTreeCCParam*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %nextCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %nextTrigger = alloca %struct._tagTreeCCTrigger*, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @free(i8* %1) #4
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 1
  %3 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 1
  %5 = load i8*, i8** %className1, align 8
  call void @free(i8* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 2
  %7 = load i8*, i8** %returnType, align 8
  call void @free(i8* %7) #4
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %9, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %10, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %11, i32 0, i32 4
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %12, %struct._tagTreeCCParam** %nextParam, align 8
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %13, i32 0, i32 0
  %14 = load i8*, i8** %name2, align 8
  %tobool3 = icmp ne i8* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %while.body
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %15, i32 0, i32 0
  %16 = load i8*, i8** %name5, align 8
  call void @free(i8* %16) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %while.body
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 1
  %18 = load i8*, i8** %type, align 8
  call void @free(i8* %18) #4
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam, align 8
  store %struct._tagTreeCCParam* %19, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %20, i32 0, i32 10
  %21 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  store %struct._tagTreeCCOperationCase* %21, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.end.20, %while.end
  %22 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp8 = icmp ne %struct._tagTreeCCOperationCase* %22, null
  br i1 %cmp8, label %while.body.9, label %while.end.21

while.body.9:                                     ; preds = %while.cond.7
  %23 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next10 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %23, i32 0, i32 8
  %24 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next10, align 8
  store %struct._tagTreeCCOperationCase* %24, %struct._tagTreeCCOperationCase** %nextCase, align 8
  %25 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %25, i32 0, i32 1
  %26 = load i8*, i8** %code, align 8
  %tobool11 = icmp ne i8* %26, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %while.body.9
  %27 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %nextHeader = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %27, i32 0, i32 9
  %28 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %nextHeader, align 8
  %tobool12 = icmp ne %struct._tagTreeCCOperationCase* %28, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %29 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code14 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %29, i32 0, i32 1
  %30 = load i8*, i8** %code14, align 8
  call void @free(i8* %30) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %while.body.9
  %31 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %31, i32 0, i32 0
  %32 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %32, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.18, %if.end.15
  %33 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %cmp17 = icmp ne %struct._tagTreeCCTrigger* %33, null
  br i1 %cmp17, label %while.body.18, label %while.end.20

while.body.18:                                    ; preds = %while.cond.16
  %34 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next19 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %34, i32 0, i32 1
  %35 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next19, align 8
  store %struct._tagTreeCCTrigger* %35, %struct._tagTreeCCTrigger** %nextTrigger, align 8
  %36 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %37 = bitcast %struct._tagTreeCCTrigger* %36 to i8*
  call void @free(i8* %37) #4
  %38 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %nextTrigger, align 8
  store %struct._tagTreeCCTrigger* %38, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %while.cond.16

while.end.20:                                     ; preds = %while.cond.16
  %39 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %40 = bitcast %struct._tagTreeCCOperationCase* %39 to i8*
  call void @free(i8* %40) #4
  %41 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %nextCase, align 8
  store %struct._tagTreeCCOperationCase* %41, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.7

while.end.21:                                     ; preds = %while.cond.7
  %42 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %42, i32 0, i32 12
  %43 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases, align 8
  %tobool22 = icmp ne %struct._tagTreeCCOperationCase** %43, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %while.end.21
  %44 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases24 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %44, i32 0, i32 12
  %45 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases24, align 8
  %46 = bitcast %struct._tagTreeCCOperationCase** %45 to i8*
  call void @free(i8* %46) #4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %while.end.21
  %47 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %48 = bitcast %struct._tagTreeCCOperation* %47 to i8*
  call void @free(i8* %48) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCOperation* @TreeCCOperationCreate(%struct._tagTreeCCContext* %context, i8* %returnType, i8* %name, i8* %className, i8* %defValue, %struct._tagTreeCCParam* %params, i32 %flags, i32 %numTriggers, i8* %filename, i64 %linenum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %returnType.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %className.addr = alloca i8*, align 8
  %defValue.addr = alloca i8*, align 8
  %params.addr = alloca %struct._tagTreeCCParam*, align 8
  %flags.addr = alloca i32, align 4
  %numTriggers.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  %hash = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %returnType, i8** %returnType.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %className, i8** %className.addr, align 8
  store i8* %defValue, i8** %defValue.addr, align 8
  store %struct._tagTreeCCParam* %params, %struct._tagTreeCCParam** %params.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %numTriggers, i32* %numTriggers.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
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
  %2 = load i8*, i8** %returnType.addr, align 8
  %3 = load i8*, i8** %className.addr, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i8*, i8** %className.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %5 = load i8*, i8** %className.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i32, i32* %flags.addr, align 4
  call void (i64, i8*, ...) @TreeCCDebug(i64 %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %2, i8* %cond, i8* %cond3, i8* %6, i32 %7)
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params.addr, align 8
  store %struct._tagTreeCCParam* %8, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.9, %cond.end
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %linenum.addr, align 8
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %11, i32 0, i32 1
  %12 = load i8*, i8** %type, align 8
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %13, i32 0, i32 0
  %14 = load i8*, i8** %name4, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %while.body
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %15, i32 0, i32 0
  %16 = load i8*, i8** %name7, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %while.body
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi i8* [ %16, %cond.true.6 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %cond.false.8 ]
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags11 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 2
  %18 = load i32, i32* %flags11, align 4
  call void (i64, i8*, ...) @TreeCCDebug(i64 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* %12, i8* %cond10, i32 %18)
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 4
  %20 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %20, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %call = call noalias i8* @malloc(i64 120) #4
  %21 = bitcast i8* %call to %struct._tagTreeCCOperation*
  store %struct._tagTreeCCOperation* %21, %struct._tagTreeCCOperation** %oper, align 8
  %cmp12 = icmp eq %struct._tagTreeCCOperation* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 2
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %24 = load i8*, i8** %name.addr, align 8
  %25 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %name15 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %25, i32 0, i32 0
  store i8* %24, i8** %name15, align 8
  %26 = load i8*, i8** %className.addr, align 8
  %27 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %className16 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %27, i32 0, i32 1
  store i8* %26, i8** %className16, align 8
  %28 = load i8*, i8** %returnType.addr, align 8
  %29 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType17 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %29, i32 0, i32 2
  store i8* %28, i8** %returnType17, align 8
  %30 = load i8*, i8** %defValue.addr, align 8
  %31 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %defValue18 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %31, i32 0, i32 3
  store i8* %30, i8** %defValue18, align 8
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params.addr, align 8
  %33 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params19 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %33, i32 0, i32 4
  store %struct._tagTreeCCParam* %32, %struct._tagTreeCCParam** %params19, align 8
  %34 = load i32, i32* %flags.addr, align 4
  %35 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %flags20 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %35, i32 0, i32 5
  store i32 %34, i32* %flags20, align 4
  %36 = load i32, i32* %numTriggers.addr, align 4
  %37 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %numTriggers21 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %37, i32 0, i32 6
  store i32 %36, i32* %numTriggers21, align 4
  %38 = load i8*, i8** %filename.addr, align 8
  %39 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %filename22 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %39, i32 0, i32 7
  store i8* %38, i8** %filename22, align 8
  %40 = load i64, i64* %linenum.addr, align 8
  %41 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %linenum23 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %41, i32 0, i32 8
  store i64 %40, i64* %linenum23, align 8
  %42 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %42, i32 0, i32 10
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %firstCase, align 8
  %43 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %lastCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %43, i32 0, i32 11
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %lastCase, align 8
  %44 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %sortedCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %44, i32 0, i32 12
  store %struct._tagTreeCCOperationCase** null, %struct._tagTreeCCOperationCase*** %sortedCases, align 8
  %45 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %numCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %45, i32 0, i32 13
  store i32 0, i32* %numCases, align 4
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %46, i32 0, i32 4
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  %48 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %header = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %48, i32 0, i32 14
  store %struct._tagTreeCCStream* %47, %struct._tagTreeCCStream** %header, align 8
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 5
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  %51 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %source = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %51, i32 0, i32 15
  store %struct._tagTreeCCStream* %50, %struct._tagTreeCCStream** %source, align 8
  %52 = load i8*, i8** %name.addr, align 8
  %call24 = call i32 @TreeCCHashString(i8* %52)
  %and = and i32 %call24, 511
  store i32 %and, i32* %hash, align 4
  %53 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %53 to i64
  %54 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %operHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %54, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash, i32 0, i64 %idxprom
  %55 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %arrayidx, align 8
  %56 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %56, i32 0, i32 9
  store %struct._tagTreeCCOperation* %55, %struct._tagTreeCCOperation** %nextHash, align 8
  %57 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %58 = load i32, i32* %hash, align 4
  %idxprom25 = zext i32 %58 to i64
  %59 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %operHash26 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %59, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash26, i32 0, i64 %idxprom25
  store %struct._tagTreeCCOperation* %57, %struct._tagTreeCCOperation** %arrayidx27, align 8
  %60 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  ret %struct._tagTreeCCOperation* %60
}

declare void @TreeCCDebug(i64, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #2

declare i32 @TreeCCHashString(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCOperation* @TreeCCOperationFind(%struct._tagTreeCCContext* %context, i8* %name) #0 {
entry:
  %retval = alloca %struct._tagTreeCCOperation*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %name.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @TreeCCHashString(i8* %0)
  %and = and i32 %call, 511
  store i32 %and, i32* %hash, align 4
  %1 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %operHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %arrayidx, align 8
  store %struct._tagTreeCCOperation* %3, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %cmp = icmp ne %struct._tagTreeCCOperation* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* %7) #5
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  store %struct._tagTreeCCOperation* %8, %struct._tagTreeCCOperation** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 9
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextHash, align 8
  store %struct._tagTreeCCOperation* %10, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._tagTreeCCOperation* null, %struct._tagTreeCCOperation** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %retval
  ret %struct._tagTreeCCOperation* %11
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCOperationCase* @TreeCCOperationAddCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCTrigger* %triggers, i8* %filename, i64 %linenum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %triggers.addr = alloca %struct._tagTreeCCTrigger*, align 8
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCTrigger* %triggers, %struct._tagTreeCCTrigger** %triggers.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers.addr, align 8
  %tobool1 = icmp ne %struct._tagTreeCCTrigger* %1, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %linenum.addr, align 8
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i64, i64* %linenum.addr, align 8
  %6 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers.addr, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %6, i32 0, i32 0
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 4
  %8 = load i8*, i8** %name3, align 8
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 0
  %10 = load i8*, i8** %name4, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %call = call noalias i8* @malloc(i64 80) #4
  %11 = bitcast i8* %call to %struct._tagTreeCCOperationCase*
  store %struct._tagTreeCCOperationCase* %11, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp = icmp eq %struct._tagTreeCCOperationCase* %11, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 2
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.5
  %14 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers.addr, align 8
  %15 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers8 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %15, i32 0, i32 0
  store %struct._tagTreeCCTrigger* %14, %struct._tagTreeCCTrigger** %triggers8, align 8
  %16 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %16, i32 0, i32 1
  store i8* null, i8** %code, align 8
  %17 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %18 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %oper9 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %18, i32 0, i32 2
  store %struct._tagTreeCCOperation* %17, %struct._tagTreeCCOperation** %oper9, align 8
  %19 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %number = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %19, i32 0, i32 3
  store i32 0, i32* %number, align 4
  %20 = load i8*, i8** %filename.addr, align 8
  %21 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %filename10 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %21, i32 0, i32 4
  store i8* %20, i8** %filename10, align 8
  %22 = load i64, i64* %linenum.addr, align 8
  %23 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %linenum11 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %23, i32 0, i32 5
  store i64 %22, i64* %linenum11, align 8
  %24 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %24, i32 0, i32 6
  store i8* null, i8** %codeFilename, align 8
  %25 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %25, i32 0, i32 7
  store i64 0, i64* %codeLinenum, align 8
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %26, i32 0, i32 8
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %next, align 8
  %27 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %nextHeader = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %27, i32 0, i32 9
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %nextHeader, align 8
  %28 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %lastCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %28, i32 0, i32 11
  %29 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %lastCase, align 8
  %tobool12 = icmp ne %struct._tagTreeCCOperationCase* %29, null
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.7
  %30 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %31 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %lastCase14 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %31, i32 0, i32 11
  %32 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %lastCase14, align 8
  %next15 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %32, i32 0, i32 8
  store %struct._tagTreeCCOperationCase* %30, %struct._tagTreeCCOperationCase** %next15, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.7
  %33 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %34 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %34, i32 0, i32 10
  store %struct._tagTreeCCOperationCase* %33, %struct._tagTreeCCOperationCase** %firstCase, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.13
  %35 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %36 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %lastCase18 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %36, i32 0, i32 11
  store %struct._tagTreeCCOperationCase* %35, %struct._tagTreeCCOperationCase** %lastCase18, align 8
  %37 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %37, i32 0, i32 13
  %38 = load i32, i32* %numCases, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %numCases, align 4
  %39 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  ret %struct._tagTreeCCOperationCase* %39
}

; Function Attrs: nounwind uwtable
define void @TreeCCOperationValidate(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %hash = alloca i32, align 4
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
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
  %operHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %arrayidx, align 8
  store %struct._tagTreeCCOperation* %3, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %cmp1 = icmp ne %struct._tagTreeCCOperation* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 5
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void @SortCases(%struct._tagTreeCCContext* %7, %struct._tagTreeCCOperation* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void @OperationTest(%struct._tagTreeCCContext* %9, %struct._tagTreeCCOperation* %10)
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %11, i32 0, i32 9
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextHash, align 8
  store %struct._tagTreeCCOperation* %12, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %13 = load i32, i32* %hash, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SortCases(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %caseList = alloca %struct._tagTreeCCOperationCase**, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 13
  %1 = load i32, i32* %numCases, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 6
  %3 = load i32, i32* %numTriggers, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeClearMarking(%struct._tagTreeCCContext* %4, i32 65280)
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 13
  %6 = load i32, i32* %numCases1, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #4
  %7 = bitcast i8* %call to %struct._tagTreeCCOperationCase**
  store %struct._tagTreeCCOperationCase** %7, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %cmp2 = icmp eq %struct._tagTreeCCOperationCase** %7, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 2
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  store i32 0, i32* %num, align 4
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 10
  %11 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  store %struct._tagTreeCCOperationCase* %11, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %12 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp6 = icmp ne %struct._tagTreeCCOperationCase* %12, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %14 = load i32, i32* %num, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %num, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %15, i64 %idxprom
  store %struct._tagTreeCCOperationCase* %13, %struct._tagTreeCCOperationCase** %arrayidx, align 8
  %16 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %16, i32 0, i32 8
  %17 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next, align 8
  store %struct._tagTreeCCOperationCase* %17, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %19 = bitcast %struct._tagTreeCCOperationCase** %18 to i8*
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases8 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %20, i32 0, i32 13
  %21 = load i32, i32* %numCases8, align 4
  %conv9 = sext i32 %21 to i64
  call void @qsort(i8* %19, i64 %conv9, i64 8, i32 (i8*, i8*)* @CaseCompare)
  %22 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx10 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %22, i64 0
  %23 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx10, align 8
  %24 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase11 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %24, i32 0, i32 10
  store %struct._tagTreeCCOperationCase* %23, %struct._tagTreeCCOperationCase** %firstCase11, align 8
  store i32 1, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %25 = load i32, i32* %num, align 4
  %26 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases12 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %26, i32 0, i32 13
  %27 = load i32, i32* %numCases12, align 4
  %cmp13 = icmp slt i32 %25, %27
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %num, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx16 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %29, i64 %idxprom15
  %30 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx16, align 8
  %31 = load i32, i32* %num, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom17 = sext i32 %sub to i64
  %32 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx18 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %32, i64 %idxprom17
  %33 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx18, align 8
  %next19 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %33, i32 0, i32 8
  store %struct._tagTreeCCOperationCase* %30, %struct._tagTreeCCOperationCase** %next19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %num, align 4
  %inc20 = add nsw i32 %34, 1
  store i32 %inc20, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases21 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %35, i32 0, i32 13
  %36 = load i32, i32* %numCases21, align 4
  %sub22 = sub nsw i32 %36, 1
  %idxprom23 = sext i32 %sub22 to i64
  %37 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx24 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %37, i64 %idxprom23
  %38 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx24, align 8
  %39 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %lastCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %39, i32 0, i32 11
  store %struct._tagTreeCCOperationCase* %38, %struct._tagTreeCCOperationCase** %lastCase, align 8
  %40 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numCases25 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %40, i32 0, i32 13
  %41 = load i32, i32* %numCases25, align 4
  %sub26 = sub nsw i32 %41, 1
  %idxprom27 = sext i32 %sub26 to i64
  %42 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %arrayidx28 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %42, i64 %idxprom27
  %43 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx28, align 8
  %next29 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %43, i32 0, i32 8
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %next29, align 8
  %44 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %caseList, align 8
  %45 = bitcast %struct._tagTreeCCOperationCase** %44 to i8*
  call void @free(i8* %45) #4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OperationTest(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeClearMarking(%struct._tagTreeCCContext* %0, i32 65280)
  %1 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %1, i32 0, i32 10
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  %tobool = icmp ne %struct._tagTreeCCOperationCase* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 2
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 7
  %6 = load i8*, i8** %filename, align 8
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 8
  %8 = load i64, i64* %linenum, align 8
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %4, i8* %6, i64 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %11, i32 0, i32 6
  %12 = load i32, i32* %numTriggers, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.1, label %if.else.32

if.then.1:                                        ; preds = %if.end
  %13 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %13, i32 0, i32 10
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase2, align 8
  store %struct._tagTreeCCOperationCase* %14, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.then.1
  %15 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp3 = icmp ne %struct._tagTreeCCOperationCase* %15, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %16, i32 0, i32 0
  %17 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %17, %struct._tagTreeCCTrigger** %trigger, align 8
  %18 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %cmp4 = icmp ne %struct._tagTreeCCTrigger* %18, null
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %while.body
  %19 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node6 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node6, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 5
  %21 = load i32, i32* %flags, align 4
  %and = and i32 %21, 256
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 2
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input9, align 8
  %24 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %filename10 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %24, i32 0, i32 4
  %25 = load i8*, i8** %filename10, align 8
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %linenum11 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %26, i32 0, i32 5
  %27 = load i64, i64* %linenum11, align 8
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node12 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %28, i32 0, i32 0
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node12, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name13, align 8
  %31 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %31, i32 0, i32 0
  %32 = load i8*, i8** %name14, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %23, i8* %25, i64 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i8* %30, i8* %32)
  br label %if.end.17

if.else:                                          ; preds = %if.then.5
  %33 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node15 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %33, i32 0, i32 0
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node15, align 8
  %flags16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %34, i32 0, i32 5
  %35 = load i32, i32* %flags16, align 4
  %or = or i32 %35, 256
  store i32 %or, i32* %flags16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %while.body
  %36 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %36, i32 0, i32 8
  %37 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next, align 8
  store %struct._tagTreeCCOperationCase* %37, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %38, i32 0, i32 4
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %39, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.29, %while.end
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp20 = icmp ne %struct._tagTreeCCParam* %40, null
  br i1 %cmp20, label %while.body.21, label %while.end.31

while.body.21:                                    ; preds = %while.cond.19
  %41 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags22 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %41, i32 0, i32 2
  %42 = load i32, i32* %flags22, align 4
  %and23 = and i32 %42, 1
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %while.body.21
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %44 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %44, i32 0, i32 1
  %45 = load i8*, i8** %type, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %43, i8* %45)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %node, align 8
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool26 = icmp ne %struct._tagTreeCCNode* %46, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %47 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %48 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %49 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  call void @VerifyHierarchy(%struct._tagTreeCCContext* %47, %struct._tagTreeCCOperation* %48, %struct._tagTreeCCNode* %49)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %while.body.21
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next30 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 4
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next30, align 8
  store %struct._tagTreeCCParam* %51, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.19

while.end.31:                                     ; preds = %while.cond.19
  br label %if.end.60

if.else.32:                                       ; preds = %if.end
  %52 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers33 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %52, i32 0, i32 6
  %53 = load i32, i32* %numTriggers33, align 4
  %cmp34 = icmp eq i32 %53, 0
  br i1 %cmp34, label %if.then.35, label %if.else.54

if.then.35:                                       ; preds = %if.else.32
  %54 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase36 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %54, i32 0, i32 10
  %55 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase36, align 8
  store %struct._tagTreeCCOperationCase* %55, %struct._tagTreeCCOperationCase** %operCase, align 8
  %56 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool37 = icmp ne %struct._tagTreeCCOperationCase* %56, null
  br i1 %tobool37, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.then.35
  %57 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next38 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %57, i32 0, i32 8
  %58 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next38, align 8
  %tobool39 = icmp ne %struct._tagTreeCCOperationCase* %58, null
  br i1 %tobool39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.40
  %59 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next41 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %59, i32 0, i32 8
  %60 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next41, align 8
  store %struct._tagTreeCCOperationCase* %60, %struct._tagTreeCCOperationCase** %operCase, align 8
  %61 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input42 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %61, i32 0, i32 2
  %62 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input42, align 8
  %63 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %filename43 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %63, i32 0, i32 4
  %64 = load i8*, i8** %filename43, align 8
  %65 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %linenum44 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %65, i32 0, i32 5
  %66 = load i64, i64* %linenum44, align 8
  %67 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name45 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %67, i32 0, i32 0
  %68 = load i8*, i8** %name45, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %62, i8* %64, i64 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i8* %68)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %69 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next46 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %69, i32 0, i32 8
  %70 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next46, align 8
  %cmp47 = icmp ne %struct._tagTreeCCOperationCase* %70, null
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input48 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %71, i32 0, i32 2
  %72 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input48, align 8
  %73 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase49 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %73, i32 0, i32 10
  %74 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase49, align 8
  %filename50 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %74, i32 0, i32 4
  %75 = load i8*, i8** %filename50, align 8
  %76 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase51 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %76, i32 0, i32 10
  %77 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase51, align 8
  %linenum52 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %77, i32 0, i32 5
  %78 = load i64, i64* %linenum52, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %72, i8* %75, i64 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %do.end, %land.lhs.true, %if.then.35
  br label %if.end.59

if.else.54:                                       ; preds = %if.else.32
  %79 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase55 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %79, i32 0, i32 10
  %80 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase55, align 8
  %cmp56 = icmp ne %struct._tagTreeCCOperationCase* %80, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.54
  %81 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %82 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void @MultiCoverageTest(%struct._tagTreeCCContext* %81, %struct._tagTreeCCOperation* %82)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %while.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node, i8* %name) #0 {
entry:
  %retval = alloca %struct._tagTreeCCOperationCase*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %name.addr = alloca i8*, align 8
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._tagTreeCCOperation* @TreeCCOperationFind(%struct._tagTreeCCContext* %0, i8* %1)
  store %struct._tagTreeCCOperation* %call, %struct._tagTreeCCOperation** %oper, align 8
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %tobool = icmp ne %struct._tagTreeCCOperation* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 10
  %4 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  store %struct._tagTreeCCOperationCase* %4, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %5 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp = icmp ne %struct._tagTreeCCOperationCase* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %6, i32 0, i32 0
  %7 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  %tobool1 = icmp ne %struct._tagTreeCCTrigger* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers2 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %8, i32 0, i32 0
  %9 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers2, align 8
  %node3 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %9, i32 0, i32 0
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node3, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp4 = icmp eq %struct._tagTreeCCNode* %10, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  store %struct._tagTreeCCOperationCase* %12, %struct._tagTreeCCOperationCase** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %while.body
  %13 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %13, i32 0, i32 8
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next, align 8
  store %struct._tagTreeCCOperationCase* %14, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %if.then
  %15 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %retval
  ret %struct._tagTreeCCOperationCase* %15
}

; Function Attrs: nounwind uwtable
define void @TreeCCOperationVisitAll(%struct._tagTreeCCContext* %context, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)* %visitor) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %visitor.addr = alloca void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)*, align 8
  %hash = alloca i32, align 4
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)* %visitor, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)** %visitor.addr, align 8
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
  %operHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash, i32 0, i64 %idxprom
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %arrayidx, align 8
  store %struct._tagTreeCCOperation* %3, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %cmp1 = icmp ne %struct._tagTreeCCOperation* %4, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)** %visitor.addr, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void %5(%struct._tagTreeCCContext* %6, %struct._tagTreeCCOperation* %7)
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 9
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextHash, align 8
  store %struct._tagTreeCCOperation* %9, %struct._tagTreeCCOperation** %oper, align 8
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

declare void @TreeCCNodeClearMarking(%struct._tagTreeCCContext*, i32) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @CaseCompare(i8* %e1, i8* %e2) #0 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca i8*, align 8
  %e2.addr = alloca i8*, align 8
  %operCase1 = alloca %struct._tagTreeCCOperationCase*, align 8
  %operCase2 = alloca %struct._tagTreeCCOperationCase*, align 8
  %trigger1 = alloca %struct._tagTreeCCTrigger*, align 8
  %trigger2 = alloca %struct._tagTreeCCTrigger*, align 8
  %ancestor1 = alloca %struct._tagTreeCCNode*, align 8
  %ancestor2 = alloca %struct._tagTreeCCNode*, align 8
  store i8* %e1, i8** %e1.addr, align 8
  store i8* %e2, i8** %e2.addr, align 8
  %0 = load i8*, i8** %e1.addr, align 8
  %1 = bitcast i8* %0 to %struct._tagTreeCCOperationCase**
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %1, align 8
  store %struct._tagTreeCCOperationCase* %2, %struct._tagTreeCCOperationCase** %operCase1, align 8
  %3 = load i8*, i8** %e2.addr, align 8
  %4 = bitcast i8* %3 to %struct._tagTreeCCOperationCase**
  %5 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %4, align 8
  store %struct._tagTreeCCOperationCase* %5, %struct._tagTreeCCOperationCase** %operCase2, align 8
  %6 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase1, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %6, i32 0, i32 0
  %7 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %7, %struct._tagTreeCCTrigger** %trigger1, align 8
  %8 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase2, align 8
  %triggers1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %8, i32 0, i32 0
  %9 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers1, align 8
  store %struct._tagTreeCCTrigger* %9, %struct._tagTreeCCTrigger** %trigger2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %entry
  %10 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %cmp = icmp ne %struct._tagTreeCCTrigger* %10, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %cmp2 = icmp ne %struct._tagTreeCCTrigger* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %12, label %while.body, label %while.end.75

while.body:                                       ; preds = %land.end
  %13 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %13, i32 0, i32 0
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %15 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %node3 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %15, i32 0, i32 0
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node3, align 8
  %cmp4 = icmp ne %struct._tagTreeCCNode* %14, %16
  br i1 %cmp4, label %if.then, label %if.end.73

if.then:                                          ; preds = %while.body
  %17 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node5 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %17, i32 0, i32 0
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node5, align 8
  store %struct._tagTreeCCNode* %18, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end, %if.then
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %cmp7 = icmp ne %struct._tagTreeCCNode* %20, null
  br i1 %cmp7, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.cond.6
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent9, align 8
  %23 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %node10 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %23, i32 0, i32 0
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node10, align 8
  %cmp11 = icmp eq %struct._tagTreeCCNode* %22, %24
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %while.body.8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body.8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 0
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent13, align 8
  store %struct._tagTreeCCNode* %26, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  %27 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %node14 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %27, i32 0, i32 0
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node14, align 8
  store %struct._tagTreeCCNode* %28, %struct._tagTreeCCNode** %ancestor2, align 8
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.23, %while.end
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 0
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent16, align 8
  %cmp17 = icmp ne %struct._tagTreeCCNode* %30, null
  br i1 %cmp17, label %while.body.18, label %while.end.25

while.body.18:                                    ; preds = %while.cond.15
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent19 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %31, i32 0, i32 0
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent19, align 8
  %33 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node20 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %33, i32 0, i32 0
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node20, align 8
  %cmp21 = icmp eq %struct._tagTreeCCNode* %32, %34
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body.18
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %while.body.18
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent24 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 0
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent24, align 8
  store %struct._tagTreeCCNode* %36, %struct._tagTreeCCNode** %ancestor2, align 8
  br label %while.cond.15

while.end.25:                                     ; preds = %while.cond.15
  %37 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %cmp26 = icmp ne %struct._tagTreeCCNode* %37, %38
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %while.end.25
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %39, i32 0, i32 6
  %40 = load i32, i32* %number, align 4
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %number28 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 6
  %42 = load i32, i32* %number28, align 4
  %cmp29 = icmp slt i32 %40, %42
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.27
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.27
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %while.end.25
  %43 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node32 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %43, i32 0, i32 0
  %44 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node32, align 8
  store %struct._tagTreeCCNode* %44, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.36, %if.end.31
  %45 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent34 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %45, i32 0, i32 0
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent34, align 8
  %cmp35 = icmp ne %struct._tagTreeCCNode* %46, null
  br i1 %cmp35, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %while.cond.33
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent37 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %47, i32 0, i32 0
  %48 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent37, align 8
  store %struct._tagTreeCCNode* %48, %struct._tagTreeCCNode** %ancestor1, align 8
  %49 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %49, i32 0, i32 5
  %50 = load i32, i32* %flags, align 4
  %or = or i32 %50, 256
  store i32 %or, i32* %flags, align 4
  br label %while.cond.33

while.end.38:                                     ; preds = %while.cond.33
  %51 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %node39 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %51, i32 0, i32 0
  %52 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node39, align 8
  store %struct._tagTreeCCNode* %52, %struct._tagTreeCCNode** %ancestor2, align 8
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.48, %while.end.38
  %53 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent41 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %53, i32 0, i32 0
  %54 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent41, align 8
  %cmp42 = icmp ne %struct._tagTreeCCNode* %54, null
  br i1 %cmp42, label %while.body.43, label %while.end.50

while.body.43:                                    ; preds = %while.cond.40
  %55 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent44 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %55, i32 0, i32 0
  %56 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent44, align 8
  %flags45 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %56, i32 0, i32 5
  %57 = load i32, i32* %flags45, align 4
  %and = and i32 %57, 256
  %cmp46 = icmp ne i32 %and, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.body.43
  br label %while.end.50

if.end.48:                                        ; preds = %while.body.43
  %58 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent49 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %58, i32 0, i32 0
  %59 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent49, align 8
  store %struct._tagTreeCCNode* %59, %struct._tagTreeCCNode** %ancestor2, align 8
  br label %while.cond.40

while.end.50:                                     ; preds = %if.then.47, %while.cond.40
  %60 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node51 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %60, i32 0, i32 0
  %61 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node51, align 8
  store %struct._tagTreeCCNode* %61, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %while.end.50
  %62 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent53 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %62, i32 0, i32 0
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent53, align 8
  %cmp54 = icmp ne %struct._tagTreeCCNode* %63, null
  br i1 %cmp54, label %while.body.55, label %while.end.59

while.body.55:                                    ; preds = %while.cond.52
  %64 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent56 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %64, i32 0, i32 0
  %65 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent56, align 8
  store %struct._tagTreeCCNode* %65, %struct._tagTreeCCNode** %ancestor1, align 8
  %66 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %flags57 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %66, i32 0, i32 5
  %67 = load i32, i32* %flags57, align 4
  %and58 = and i32 %67, -257
  store i32 %and58, i32* %flags57, align 4
  br label %while.cond.52

while.end.59:                                     ; preds = %while.cond.52
  %68 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node60 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %68, i32 0, i32 0
  %69 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node60, align 8
  store %struct._tagTreeCCNode* %69, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.65, %while.end.59
  %70 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent62 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %70, i32 0, i32 0
  %71 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent62, align 8
  %72 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %parent63 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %72, i32 0, i32 0
  %73 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent63, align 8
  %cmp64 = icmp ne %struct._tagTreeCCNode* %71, %73
  br i1 %cmp64, label %while.body.65, label %while.end.67

while.body.65:                                    ; preds = %while.cond.61
  %74 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %parent66 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %74, i32 0, i32 0
  %75 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent66, align 8
  store %struct._tagTreeCCNode* %75, %struct._tagTreeCCNode** %ancestor1, align 8
  br label %while.cond.61

while.end.67:                                     ; preds = %while.cond.61
  %76 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor1, align 8
  %number68 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %76, i32 0, i32 6
  %77 = load i32, i32* %number68, align 4
  %78 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %ancestor2, align 8
  %number69 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %78, i32 0, i32 6
  %79 = load i32, i32* %number69, align 4
  %cmp70 = icmp slt i32 %77, %79
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %while.end.67
  store i32 -1, i32* %retval
  br label %return

if.else.72:                                       ; preds = %while.end.67
  store i32 1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %while.body
  %80 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %80, i32 0, i32 1
  %81 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %81, %struct._tagTreeCCTrigger** %trigger1, align 8
  %82 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %next74 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %82, i32 0, i32 1
  %83 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next74, align 8
  store %struct._tagTreeCCTrigger* %83, %struct._tagTreeCCTrigger** %trigger2, align 8
  br label %while.cond

while.end.75:                                     ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.75, %if.else.72, %if.then.71, %if.else, %if.then.30, %if.then.22, %if.then.12
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare void @TreeCCErrorOnLine(%struct.TreeCCInput*, i8*, i64, i8*, ...) #2

declare %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @VerifyHierarchy(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 2
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 7
  %7 = load i8*, i8** %filename, align 8
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 8
  %9 = load i64, i64* %linenum, align 8
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 4
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %5, i8* %7, i64 %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* %11, i8* %13)
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 1
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %15, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.6
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp7 = icmp ne %struct._tagTreeCCNode* %16, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %18 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @VerifyHierarchy(%struct._tagTreeCCContext* %17, %struct._tagTreeCCOperation* %18, %struct._tagTreeCCNode* %19)
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 3
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %21, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then.4, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MultiCoverageTest(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %param2 = alloca %struct._tagTreeCCParam*, align 8
  %type = alloca %struct._tagTreeCCNode*, align 8
  %type2 = alloca %struct._tagTreeCCNode*, align 8
  %size = alloca i32, align 4
  %nodeStack = alloca %struct._tagTreeCCNode**, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store i32 1, i32* %size, align 4
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 4
  %1 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %1, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %2 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %2, null
  br i1 %cmp, label %while.body, label %while.end.33

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %3, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.31

if.then:                                          ; preds = %while.body
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type3 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %6, i32 0, i32 1
  %7 = load i8*, i8** %type3, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %5, i8* %7)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %type, align 8
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %8, null
  br i1 %tobool, label %if.then.4, label %if.end.30

if.then.4:                                        ; preds = %if.then
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %call5 = call i32 @TreeCCNodeAssignPositions(%struct._tagTreeCCNode* %9)
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %size6 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %10, i32 0, i32 3
  store i32 %call5, i32* %size6, align 4
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %size7 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %11, i32 0, i32 3
  %12 = load i32, i32* %size7, align 4
  %13 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %13, %12
  store i32 %mul, i32* %size, align 4
  %14 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params8 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %14, i32 0, i32 4
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params8, align 8
  store %struct._tagTreeCCParam* %15, %struct._tagTreeCCParam** %param2, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.29, %if.then.4
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param2, align 8
  %cmp10 = icmp ne %struct._tagTreeCCParam* %16, null
  br i1 %cmp10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.9
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param2, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 2
  %18 = load i32, i32* %flags12, align 4
  %and13 = and i32 %18, 1
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %while.body.11
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param2, align 8
  %20 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp15 = icmp ne %struct._tagTreeCCParam* %19, %20
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %land.lhs.true
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param2, align 8
  %type17 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 1
  %23 = load i8*, i8** %type17, align 8
  %call18 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %21, i8* %23)
  store %struct._tagTreeCCNode* %call18, %struct._tagTreeCCNode** %type2, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type2, align 8
  %tobool19 = icmp ne %struct._tagTreeCCNode* %24, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.28

land.lhs.true.20:                                 ; preds = %if.then.16
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type2, align 8
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %cmp21 = icmp ne %struct._tagTreeCCNode* %25, %26
  br i1 %cmp21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %land.lhs.true.20
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type2, align 8
  %call23 = call i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode* %27, %struct._tagTreeCCNode* %28)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.22
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type2, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %call25 = call i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode* %29, %struct._tagTreeCCNode* %30)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.22
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 2
  %32 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %33 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %33, i32 0, i32 7
  %34 = load i8*, i8** %filename, align 8
  %35 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %35, i32 0, i32 8
  %36 = load i64, i64* %linenum, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %32, i8* %34, i64 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %land.lhs.true.20, %if.then.16
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true, %while.body.11
  %37 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param2, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %37, i32 0, i32 4
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %38, %struct._tagTreeCCParam** %param2, align 8
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  br label %if.end.30

if.end.30:                                        ; preds = %while.end, %if.then
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %while.body
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next32 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 4
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next32, align 8
  store %struct._tagTreeCCParam* %40, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end.33:                                     ; preds = %while.cond
  %41 = load i32, i32* %size, align 4
  %conv = sext i32 %41 to i64
  %call34 = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %42 = bitcast i8* %call34 to %struct._tagTreeCCOperationCase**
  %43 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %43, i32 0, i32 12
  store %struct._tagTreeCCOperationCase** %42, %struct._tagTreeCCOperationCase*** %sortedCases, align 8
  %cmp35 = icmp eq %struct._tagTreeCCOperationCase** %42, null
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %while.end.33
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input38 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 2
  %45 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input38, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %45)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %while.end.33
  %46 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %46, i32 0, i32 10
  %47 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  store %struct._tagTreeCCOperationCase* %47, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %if.end.39
  %48 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp41 = icmp ne %struct._tagTreeCCOperationCase* %48, null
  br i1 %cmp41, label %while.body.43, label %while.end.47

while.body.43:                                    ; preds = %while.cond.40
  %49 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases44 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %49, i32 0, i32 12
  %50 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases44, align 8
  %51 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params45 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %51, i32 0, i32 4
  %52 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params45, align 8
  %53 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %54 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %54, i32 0, i32 0
  %55 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  call void @MarkMultiCase(%struct._tagTreeCCOperationCase** %50, i32 0, i32 1, %struct._tagTreeCCParam* %52, %struct._tagTreeCCOperationCase* %53, %struct._tagTreeCCTrigger* %55)
  %56 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next46 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %56, i32 0, i32 8
  %57 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next46, align 8
  store %struct._tagTreeCCOperationCase* %57, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.40

while.end.47:                                     ; preds = %while.cond.40
  %58 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %58, i32 0, i32 6
  %59 = load i32, i32* %numTriggers, align 4
  %conv48 = sext i32 %59 to i64
  %call49 = call noalias i8* @calloc(i64 %conv48, i64 8) #4
  %60 = bitcast i8* %call49 to %struct._tagTreeCCNode**
  store %struct._tagTreeCCNode** %60, %struct._tagTreeCCNode*** %nodeStack, align 8
  %61 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack, align 8
  %tobool50 = icmp ne %struct._tagTreeCCNode** %61, null
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %while.end.47
  %62 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input52 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %62, i32 0, i32 2
  %63 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input52, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %63)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %while.end.47
  %64 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %66 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases54 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %66, i32 0, i32 12
  %67 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases54, align 8
  %68 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params55 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %68, i32 0, i32 4
  %69 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params55, align 8
  %70 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack, align 8
  %71 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack, align 8
  call void @VerifyMultiCoverage(%struct._tagTreeCCContext* %64, %struct._tagTreeCCOperation* %65, %struct._tagTreeCCOperationCase** %67, i32 0, i32 1, %struct._tagTreeCCParam* %69, %struct._tagTreeCCNode** %70, %struct._tagTreeCCNode** %71)
  %72 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack, align 8
  %73 = bitcast %struct._tagTreeCCNode** %72 to i8*
  call void @free(i8* %73) #4
  br label %return

return:                                           ; preds = %if.end.53, %if.then.27
  ret void
}

declare i32 @TreeCCNodeAssignPositions(%struct._tagTreeCCNode*) #2

declare i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode*, %struct._tagTreeCCNode*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @MarkMultiCase(%struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCTrigger* %nextTrigger) #0 {
entry:
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %nextTrigger.addr = alloca %struct._tagTreeCCTrigger*, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store %struct._tagTreeCCTrigger* %nextTrigger, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %cmp1 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %4, i32 0, i32 4
  %5 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %5, %struct._tagTreeCCParam** %nextParam.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %tobool = icmp ne %struct._tagTreeCCParam* %6, null
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %while.end
  %7 = load i32, i32* %base.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %8, i64 %idxprom
  %9 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx, align 8
  %cmp2 = icmp eq %struct._tagTreeCCOperationCase* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %11 = load i32, i32* %base.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %12, i64 %idxprom4
  store %struct._tagTreeCCOperationCase* %10, %struct._tagTreeCCOperationCase** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %return

if.end.6:                                         ; preds = %while.end
  %13 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %14 = load i32, i32* %base.addr, align 4
  %15 = load i32, i32* %multiplier.addr, align 4
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %17 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %18 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  %19 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  call void @MarkMultiScan(%struct._tagTreeCCOperationCase** %13, i32 %14, i32 %15, %struct._tagTreeCCParam* %16, %struct._tagTreeCCOperationCase* %17, %struct._tagTreeCCTrigger* %18, %struct._tagTreeCCNode* %20)
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VerifyMultiCoverage(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCNode** %nodeStack, %struct._tagTreeCCNode** %nodeStackTop) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %nodeStack.addr = alloca %struct._tagTreeCCNode**, align 8
  %nodeStackTop.addr = alloca %struct._tagTreeCCNode**, align 8
  %type = alloca %struct._tagTreeCCNode*, align 8
  %posn = alloca i32, align 4
  %isAbstract = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store %struct._tagTreeCCNode** %nodeStack, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  store %struct._tagTreeCCNode** %nodeStackTop, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 1
  %cmp1 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %4, i32 0, i32 4
  %5 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %5, %struct._tagTreeCCParam** %nextParam.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %tobool = icmp ne %struct._tagTreeCCParam* %6, null
  br i1 %tobool, label %if.end.29, label %if.then

if.then:                                          ; preds = %while.end
  %7 = load i32, i32* %base.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %8, i64 %idxprom
  %9 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx, align 8
  %cmp2 = icmp eq %struct._tagTreeCCOperationCase* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.28

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %isAbstract, align 4
  store i32 0, i32* %posn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %10 = load i32, i32* %posn, align 4
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %11, i32 0, i32 6
  %12 = load i32, i32* %numTriggers, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %posn, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %14, i64 %idxprom5
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx6, align 8
  %flags7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 5
  %16 = load i32, i32* %flags7, align 4
  %and8 = and i32 %16, 2
  %cmp9 = icmp ne i32 %and8, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %isAbstract, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %posn, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %posn, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %18 = load i32, i32* %isAbstract, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.end.27, label %if.then.12

if.then.12:                                       ; preds = %for.end
  store i8* null, i8** %str, align 8
  store i32 0, i32* %posn, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.then.12
  %19 = load i32, i32* %posn, align 4
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers14 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %20, i32 0, i32 6
  %21 = load i32, i32* %numTriggers14, align 4
  %cmp15 = icmp slt i32 %19, %21
  br i1 %cmp15, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load i8*, i8** %str, align 8
  %24 = load i32, i32* %posn, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %25, i64 %idxprom17
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx18, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name, align 8
  %call = call i8* @AppendParam(%struct._tagTreeCCContext* %22, i8* %23, i8* %27)
  store i8* %call, i8** %str, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %28 = load i32, i32* %posn, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, i32* %posn, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  %29 = load i8*, i8** %str, align 8
  %tobool22 = icmp ne i8* %29, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %for.end.21
  %call24 = call i8* @TreeCCDupString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call24, i8** %str, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end.21
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %30, i32 0, i32 2
  %31 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %32 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %32, i32 0, i32 7
  %33 = load i8*, i8** %filename, align 8
  %34 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %34, i32 0, i32 8
  %35 = load i64, i64* %linenum, align 8
  %36 = load i8*, i8** %str, align 8
  %37 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name26 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %37, i32 0, i32 0
  %38 = load i8*, i8** %name26, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %31, i8* %33, i64 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* %36, i8* %38)
  %39 = load i8*, i8** %str, align 8
  call void @free(i8* %39) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.25, %for.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  br label %return

if.end.29:                                        ; preds = %while.end
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %41 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %type30 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %41, i32 0, i32 1
  %42 = load i8*, i8** %type30, align 8
  %call31 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %40, i8* %42)
  store %struct._tagTreeCCNode* %call31, %struct._tagTreeCCNode** %type, align 8
  %43 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %tobool32 = icmp ne %struct._tagTreeCCNode* %43, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.29
  br label %return

if.end.34:                                        ; preds = %if.end.29
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %45 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %46 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %47 = load i32, i32* %base.addr, align 4
  %48 = load i32, i32* %multiplier.addr, align 4
  %49 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %50 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %51 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  %52 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  call void @VerifyMultiScan(%struct._tagTreeCCContext* %44, %struct._tagTreeCCOperation* %45, %struct._tagTreeCCOperationCase** %46, i32 %47, i32 %48, %struct._tagTreeCCParam* %49, %struct._tagTreeCCNode* %50, %struct._tagTreeCCNode** %51, %struct._tagTreeCCNode** %52)
  br label %return

return:                                           ; preds = %if.end.34, %if.then.33, %if.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MarkMultiScan(%struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCTrigger* %nextTrigger, %struct._tagTreeCCNode* %node) #0 {
entry:
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %nextTrigger.addr = alloca %struct._tagTreeCCTrigger*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store %struct._tagTreeCCTrigger* %nextTrigger, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %1 = load i32, i32* %base.addr, align 4
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 7
  %3 = load i32, i32* %position, align 4
  %4 = load i32, i32* %multiplier.addr, align 4
  %mul = mul nsw i32 %3, %4
  %add = add nsw i32 %1, %mul
  %5 = load i32, i32* %multiplier.addr, align 4
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %size = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %6, i32 0, i32 3
  %7 = load i32, i32* %size, align 4
  %mul1 = mul nsw i32 %5, %7
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  %10 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %11 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  %next2 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %11, i32 0, i32 1
  %12 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next2, align 8
  call void @MarkMultiCase(%struct._tagTreeCCOperationCase** %0, i32 %add, i32 %mul1, %struct._tagTreeCCParam* %9, %struct._tagTreeCCOperationCase* %10, %struct._tagTreeCCTrigger* %12)
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 1
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %14, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %15, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %17 = load i32, i32* %base.addr, align 4
  %18 = load i32, i32* %multiplier.addr, align 4
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %20 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %21 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %nextTrigger.addr, align 8
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @MarkMultiScan(%struct._tagTreeCCOperationCase** %16, i32 %17, i32 %18, %struct._tagTreeCCParam* %19, %struct._tagTreeCCOperationCase* %20, %struct._tagTreeCCTrigger* %21, %struct._tagTreeCCNode* %22)
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 3
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %24, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @AppendParam(%struct._tagTreeCCContext* %context, i8* %str, i8* %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %str.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %slen = alloca i32, align 4
  %tlen = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %slen, align 4
  %2 = load i8*, i8** %type.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %tlen, align 4
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %slen, align 4
  %5 = load i32, i32* %tlen, align 4
  %add = add nsw i32 %4, %5
  %add3 = add nsw i32 %add, 3
  %conv4 = sext i32 %add3 to i64
  %call5 = call i8* @realloc(i8* %3, i64 %conv4) #4
  store i8* %call5, i8** %str.addr, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %tobool6 = icmp ne i8* %6, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 2
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %slen, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %call8 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #4
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i32, i32* %slen, align 4
  %idx.ext9 = sext i32 %12 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 2
  %13 = load i8*, i8** %type.addr, align 8
  %call12 = call i8* @strcpy(i8* %add.ptr11, i8* %13) #4
  %14 = load i8*, i8** %str.addr, align 8
  store i8* %14, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %15 = load i8*, i8** %type.addr, align 8
  %call13 = call i8* @TreeCCDupString(i8* %15)
  store i8* %call13, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare i8* @TreeCCDupString(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @VerifyMultiScan(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %nodeStack, %struct._tagTreeCCNode** %nodeStackTop) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %nodeStack.addr = alloca %struct._tagTreeCCNode**, align 8
  %nodeStackTop.addr = alloca %struct._tagTreeCCNode**, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode** %nodeStack, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  store %struct._tagTreeCCNode** %nodeStackTop, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %1 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  store %struct._tagTreeCCNode* %0, %struct._tagTreeCCNode** %1, align 8
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %4 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %5 = load i32, i32* %base.addr, align 4
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 7
  %7 = load i32, i32* %position, align 4
  %8 = load i32, i32* %multiplier.addr, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %5, %mul
  %9 = load i32, i32* %multiplier.addr, align 4
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %size = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %10, i32 0, i32 3
  %11 = load i32, i32* %size, align 4
  %mul1 = mul nsw i32 %9, %11
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %12, i32 0, i32 4
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  %14 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  %15 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  %add.ptr = getelementptr inbounds %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %15, i64 1
  call void @VerifyMultiCoverage(%struct._tagTreeCCContext* %2, %struct._tagTreeCCOperation* %3, %struct._tagTreeCCOperationCase** %4, i32 %add, i32 %mul1, %struct._tagTreeCCParam* %13, %struct._tagTreeCCNode** %14, %struct._tagTreeCCNode** %add.ptr)
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 1
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %17, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %18, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %21 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %22 = load i32, i32* %base.addr, align 4
  %23 = load i32, i32* %multiplier.addr, align 4
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %26 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStack.addr, align 8
  %27 = load %struct._tagTreeCCNode**, %struct._tagTreeCCNode*** %nodeStackTop.addr, align 8
  call void @VerifyMultiScan(%struct._tagTreeCCContext* %19, %struct._tagTreeCCOperation* %20, %struct._tagTreeCCOperationCase** %21, i32 %22, i32 %23, %struct._tagTreeCCParam* %24, %struct._tagTreeCCNode* %25, %struct._tagTreeCCNode** %26, %struct._tagTreeCCNode** %27)
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %28, i32 0, i32 3
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %29, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
