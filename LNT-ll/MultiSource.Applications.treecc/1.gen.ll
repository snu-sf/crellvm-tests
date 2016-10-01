; ModuleID = './MultiSource.Applications.treecc/1.gen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct.TreeCCNonVirtual = type { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* }

@.str = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"this operation case duplicates another\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCGenerate(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 13
  %1 = load i32, i32* %language, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateC(%struct._tagTreeCCContext* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateCPP(%struct._tagTreeCCContext* %3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateJava(%struct._tagTreeCCContext* %4)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateCSharp(%struct._tagTreeCCContext* %5)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateRuby(%struct._tagTreeCCContext* %6)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGeneratePHP(%struct._tagTreeCCContext* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @TreeCCGenerateC(%struct._tagTreeCCContext*) #1

declare void @TreeCCGenerateCPP(%struct._tagTreeCCContext*) #1

declare void @TreeCCGenerateJava(%struct._tagTreeCCContext*) #1

declare void @TreeCCGenerateCSharp(%struct._tagTreeCCContext*) #1

declare void @TreeCCGenerateRuby(%struct._tagTreeCCContext*) #1

declare void @TreeCCGeneratePHP(%struct._tagTreeCCContext*) #1

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %context, %struct.TreeCCNonVirtual* %nonVirt) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %hash = alloca i32, align 4
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
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
  %8 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void @GenerateNonVirtual(%struct._tagTreeCCContext* %7, %struct.TreeCCNonVirtual* %8, %struct._tagTreeCCOperation* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 9
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextHash, align 8
  store %struct._tagTreeCCOperation* %11, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %12 = load i32, i32* %hash, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GenerateNonVirtual(%struct._tagTreeCCContext* %context, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %number = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 13
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 1
  %3 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 1
  %6 = load i8*, i8** %className2, align 8
  %call = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %4, i8* %6)
  store %struct._tagTreeCCStream* %call, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %call3 = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %7, i8* %9)
  store %struct._tagTreeCCStream* %call3, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 15
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %11, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  %12 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genStart = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %12, i32 0, i32 0
  %13 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genStart, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %13(%struct._tagTreeCCContext* %14, %struct._tagTreeCCStream* %15, %struct._tagTreeCCOperation* %16)
  %17 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %17, i32 0, i32 5
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 2
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  store i32 1, i32* %number, align 4
  %19 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %19, i32 0, i32 10
  %20 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  store %struct._tagTreeCCOperationCase* %20, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %21 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp8 = icmp ne %struct._tagTreeCCOperationCase* %21, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseFunc = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %22, i32 0, i32 6
  %23 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)** %genCaseFunc, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %27 = load i32, i32* %number, align 4
  call void %23(%struct._tagTreeCCContext* %24, %struct._tagTreeCCStream* %25, %struct._tagTreeCCOperationCase* %26, i32 %27)
  %28 = load i32, i32* %number, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %number, align 4
  %29 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %number9 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %29, i32 0, i32 3
  store i32 %28, i32* %number9, align 4
  %30 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %next = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %30, i32 0, i32 8
  %31 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next, align 8
  store %struct._tagTreeCCOperationCase* %31, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.10

if.end.10:                                        ; preds = %while.end, %if.end.5
  %32 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %32, i32 0, i32 6
  %33 = load i32, i32* %numTriggers, align 4
  %cmp11 = icmp sgt i32 %33, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.10
  %34 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %34, i32 0, i32 5
  %35 = load i32, i32* %flags12, align 4
  %and13 = and i32 %35, 4
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %37 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void @AssignTriggerPosns(%struct._tagTreeCCContext* %36, %struct._tagTreeCCOperation* %37)
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %40 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %41 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %42 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %42, i32 0, i32 12
  %43 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases, align 8
  %44 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %44, i32 0, i32 4
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  call void @GenerateSplitMultiSwitch(%struct._tagTreeCCContext* %38, %struct._tagTreeCCStream* %39, %struct.TreeCCNonVirtual* %40, %struct._tagTreeCCOperation* %41, %struct._tagTreeCCOperationCase** %43, i32 0, i32 1, %struct._tagTreeCCParam* %45, i32 0)
  %46 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEnd = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %46, i32 0, i32 13
  %47 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genEnd, align 8
  %48 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %50 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %47(%struct._tagTreeCCContext* %48, %struct._tagTreeCCStream* %49, %struct._tagTreeCCOperation* %50)
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.10
  %51 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEntry = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %51, i32 0, i32 1
  %52 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genEntry, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %55 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %52(%struct._tagTreeCCContext* %53, %struct._tagTreeCCStream* %54, %struct._tagTreeCCOperation* %55)
  %56 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers17 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %56, i32 0, i32 6
  %57 = load i32, i32* %numTriggers17, align 4
  %cmp18 = icmp sle i32 %57, 1
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.end.16
  %58 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %60 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %61 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %62 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %firstCase20 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %62, i32 0, i32 10
  %63 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase20, align 8
  %call21 = call %struct._tagTreeCCOperationCase* @GenerateSwitch(%struct._tagTreeCCContext* %58, %struct._tagTreeCCStream* %59, %struct.TreeCCNonVirtual* %60, %struct._tagTreeCCOperation* %61, %struct._tagTreeCCOperationCase* %63, i32 0)
  br label %if.end.25

if.else.22:                                       ; preds = %if.end.16
  %64 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void @AssignTriggerPosns(%struct._tagTreeCCContext* %64, %struct._tagTreeCCOperation* %65)
  %66 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %67 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %68 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %69 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %70 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %sortedCases23 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %70, i32 0, i32 12
  %71 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases23, align 8
  %72 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params24 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %72, i32 0, i32 4
  %73 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params24, align 8
  call void @GenerateMultiSwitch(%struct._tagTreeCCContext* %66, %struct._tagTreeCCStream* %67, %struct.TreeCCNonVirtual* %68, %struct._tagTreeCCOperation* %69, %struct._tagTreeCCOperationCase** %71, i32 0, i32 1, %struct._tagTreeCCParam* %73, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.19
  %74 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genExit = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %74, i32 0, i32 12
  %75 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genExit, align 8
  %76 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %78 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %75(%struct._tagTreeCCContext* %76, %struct._tagTreeCCStream* %77, %struct._tagTreeCCOperation* %78)
  %79 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEnd26 = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %79, i32 0, i32 13
  %80 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genEnd26, align 8
  %81 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %83 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %80(%struct._tagTreeCCContext* %81, %struct._tagTreeCCStream* %82, %struct._tagTreeCCOperation* %83)
  br label %return

return:                                           ; preds = %if.end.25, %if.then.15
  ret void
}

declare %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @AssignTriggerPosns(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %type = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 4
  %1 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %1, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %2 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %3, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type2 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %6, i32 0, i32 1
  %7 = load i8*, i8** %type2, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %5, i8* %7)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %type, align 8
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %8, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %call4 = call i32 @TreeCCNodeAssignPositions(%struct._tagTreeCCNode* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %while.body
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %10, i32 0, i32 4
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %11, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GenerateSplitMultiSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, i32 %triggerNum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %triggerNum.addr = alloca i32, align 4
  %type = alloca %struct._tagTreeCCNode*, align 8
  %isEnum = alloca i32, align 4
  %paramName = alloca [64 x i8], align 16
  %paramNum = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
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
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %7 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %type2 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %7, i32 0, i32 1
  %8 = load i8*, i8** %type2, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %6, i8* %8)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %type, align 8
  %9 = load i32, i32* %triggerNum.addr, align 4
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 6
  %11 = load i32, i32* %numTriggers, align 4
  %sub = sub nsw i32 %11, 1
  %cmp3 = icmp ne i32 %9, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %14 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %15 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %16 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %17 = load i32, i32* %base.addr, align 4
  %18 = load i32, i32* %multiplier.addr, align 4
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %20 = load i32, i32* %triggerNum.addr, align 4
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  call void @GenerateSplitMultiScanFunc(%struct._tagTreeCCContext* %12, %struct._tagTreeCCStream* %13, %struct.TreeCCNonVirtual* %14, %struct._tagTreeCCOperation* %15, %struct._tagTreeCCOperationCase** %16, i32 %17, i32 %18, %struct._tagTreeCCParam* %19, i32 %20, %struct._tagTreeCCNode* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %22 = load i32, i32* %triggerNum.addr, align 4
  %cmp4 = icmp ne i32 %22, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %23 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSplitEntry = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %23, i32 0, i32 2
  %24 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)** %genSplitEntry, align 8
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %27 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %28 = load i32, i32* %base.addr, align 4
  call void %24(%struct._tagTreeCCContext* %25, %struct._tagTreeCCStream* %26, %struct._tagTreeCCOperation* %27, i32 %28)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %29 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEntry = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %29, i32 0, i32 1
  %30 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genEntry, align 8
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %33 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %30(%struct._tagTreeCCContext* %31, %struct._tagTreeCCStream* %32, %struct._tagTreeCCOperation* %33)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %flags7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %34, i32 0, i32 5
  %35 = load i32, i32* %flags7, align 4
  %and8 = and i32 %35, 8
  %cmp9 = icmp ne i32 %and8, 0
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, i32* %isEnum, align 4
  %36 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %36, i32 0, i32 0
  %37 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %37, null
  br i1 %tobool, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.6
  %38 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %38, i32 0, i32 3
  %39 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead, align 8
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %42 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %42, i32 0, i32 0
  %43 = load i8*, i8** %name11, align 8
  %44 = load i32, i32* %isEnum, align 4
  call void %39(%struct._tagTreeCCContext* %40, %struct._tagTreeCCStream* %41, i8* %43, i32 0, i32 %44)
  br label %if.end.30

if.else.12:                                       ; preds = %if.end.6
  store i32 0, i32* %paramNum, align 4
  %45 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %45, i32 0, i32 4
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %46, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.24, %if.else.12
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp14 = icmp ne %struct._tagTreeCCParam* %47, null
  br i1 %cmp14, label %land.rhs.16, label %land.end.19

land.rhs.16:                                      ; preds = %while.cond.13
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %49 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %cmp17 = icmp ne %struct._tagTreeCCParam* %48, %49
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.16, %while.cond.13
  %50 = phi i1 [ false, %while.cond.13 ], [ %cmp17, %land.rhs.16 ]
  br i1 %50, label %while.body.20, label %while.end.26

while.body.20:                                    ; preds = %land.end.19
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %51, i32 0, i32 0
  %52 = load i8*, i8** %name21, align 8
  %tobool22 = icmp ne i8* %52, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %while.body.20
  %53 = load i32, i32* %paramNum, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %paramNum, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %while.body.20
  %54 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %54, i32 0, i32 4
  %55 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next25, align 8
  store %struct._tagTreeCCParam* %55, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.13

while.end.26:                                     ; preds = %land.end.19
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %56 = load i32, i32* %paramNum, align 4
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %56) #3
  %57 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead28 = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %57, i32 0, i32 3
  %58 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead28, align 8
  %59 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %60 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay29 = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %61 = load i32, i32* %isEnum, align 4
  call void %58(%struct._tagTreeCCContext* %59, %struct._tagTreeCCStream* %60, i8* %arraydecay29, i32 0, i32 %61)
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.26, %if.then.10
  %62 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %64 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %66 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %67 = load i32, i32* %base.addr, align 4
  %68 = load i32, i32* %multiplier.addr, align 4
  %69 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %70 = load i32, i32* %triggerNum.addr, align 4
  %71 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  call void @GenerateSplitMultiScan(%struct._tagTreeCCContext* %62, %struct._tagTreeCCStream* %63, %struct.TreeCCNonVirtual* %64, %struct._tagTreeCCOperation* %65, %struct._tagTreeCCOperationCase** %66, i32 %67, i32 %68, %struct._tagTreeCCParam* %69, i32 %70, %struct._tagTreeCCNode* %71)
  %72 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSwitch = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %72, i32 0, i32 11
  %73 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSwitch, align 8
  %74 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void %73(%struct._tagTreeCCContext* %74, %struct._tagTreeCCStream* %75, i32 0)
  %76 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genExit = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %76, i32 0, i32 12
  %77 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)** %genExit, align 8
  %78 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %79 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %80 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void %77(%struct._tagTreeCCContext* %78, %struct._tagTreeCCStream* %79, %struct._tagTreeCCOperation* %80)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._tagTreeCCOperationCase* @GenerateSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase* %operCase, i32 %triggerNum) #0 {
entry:
  %retval = alloca %struct._tagTreeCCOperationCase*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %triggerNum.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  %markBit = alloca i32, align 4
  %paramNum = alloca i32, align 4
  %firstCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  %isEnum = alloca i32, align 4
  %paramName = alloca [64 x i8], align 16
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 4
  %1 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %1, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %num, align 4
  store i32 1, i32* %paramNum, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %entry
  %2 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %3, i32 0, i32 2
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %num, align 4
  %6 = load i32, i32* %triggerNum.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %num, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %while.body
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %10 = load i32, i32* %paramNum, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %paramNum, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.4
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %11, i32 0, i32 4
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %12, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.3, %while.cond
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %tobool8 = icmp ne %struct._tagTreeCCParam* %13, null
  br i1 %tobool8, label %if.end.17, label %if.then.9

if.then.9:                                        ; preds = %while.end
  %14 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags10 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %14, i32 0, i32 5
  %15 = load i32, i32* %flags10, align 4
  %and11 = and i32 %15, 2
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %16 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseInline = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %16, i32 0, i32 8
  %17 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)** %genCaseInline, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %20 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %21 = load i32, i32* %triggerNum.addr, align 4
  %sub = sub nsw i32 %21, 1
  call void %17(%struct._tagTreeCCContext* %18, %struct._tagTreeCCStream* %19, %struct._tagTreeCCOperationCase* %20, i32 %sub)
  br label %if.end.15

if.else:                                          ; preds = %if.then.9
  %22 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseCall = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %22, i32 0, i32 7
  %23 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)** %genCaseCall, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %27 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %27, i32 0, i32 3
  %28 = load i32, i32* %number, align 4
  %29 = load i32, i32* %triggerNum.addr, align 4
  %sub14 = sub nsw i32 %29, 1
  call void %23(%struct._tagTreeCCContext* %24, %struct._tagTreeCCStream* %25, %struct._tagTreeCCOperationCase* %26, i32 %28, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %30 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %next16 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %30, i32 0, i32 8
  %31 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %next16, align 8
  store %struct._tagTreeCCOperationCase* %31, %struct._tagTreeCCOperationCase** %retval
  br label %return

if.end.17:                                        ; preds = %while.end
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %33 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %33, i32 0, i32 1
  %34 = load i8*, i8** %type, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %32, i8* %34)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %node, align 8
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 5
  %36 = load i32, i32* %flags18, align 4
  %and19 = and i32 %36, 8
  %cmp20 = icmp ne i32 %and19, 0
  %conv = zext i1 %cmp20 to i32
  store i32 %conv, i32* %isEnum, align 4
  %37 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %37, i32 0, i32 0
  %38 = load i8*, i8** %name21, align 8
  %tobool22 = icmp ne i8* %38, null
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end.17
  %39 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %39, i32 0, i32 3
  %40 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead, align 8
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name24 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %43, i32 0, i32 0
  %44 = load i8*, i8** %name24, align 8
  %45 = load i32, i32* %triggerNum.addr, align 4
  %46 = load i32, i32* %isEnum, align 4
  call void %40(%struct._tagTreeCCContext* %41, %struct._tagTreeCCStream* %42, i8* %44, i32 %45, i32 %46)
  br label %if.end.29

if.else.25:                                       ; preds = %if.end.17
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %47 = load i32, i32* %paramNum, align 4
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %47) #3
  %48 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead27 = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %48, i32 0, i32 3
  %49 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead27, align 8
  %50 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %52 = load i32, i32* %triggerNum.addr, align 4
  %53 = load i32, i32* %isEnum, align 4
  call void %49(%struct._tagTreeCCContext* %50, %struct._tagTreeCCStream* %51, i8* %arraydecay28, i32 %52, i32 %53)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.25, %if.then.23
  %54 = load i32, i32* %triggerNum.addr, align 4
  %shl = shl i32 256, %54
  store i32 %shl, i32* %markBit, align 4
  %55 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %56 = load i32, i32* %markBit, align 4
  call void @TreeCCNodeClearMarking(%struct._tagTreeCCContext* %55, i32 %56)
  %57 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store %struct._tagTreeCCOperationCase* %57, %struct._tagTreeCCOperationCase** %firstCase, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.53, %if.end.29
  %58 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %58, i32 0, i32 0
  %59 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %59, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 0, i32* %num, align 4
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.35, %do.body
  %60 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %cmp31 = icmp ne %struct._tagTreeCCTrigger* %60, null
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.30
  %61 = load i32, i32* %num, align 4
  %62 = load i32, i32* %triggerNum.addr, align 4
  %cmp33 = icmp slt i32 %61, %62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.30
  %63 = phi i1 [ false, %while.cond.30 ], [ %cmp33, %land.rhs ]
  br i1 %63, label %while.body.35, label %while.end.38

while.body.35:                                    ; preds = %land.end
  %64 = load i32, i32* %num, align 4
  %inc36 = add nsw i32 %64, 1
  store i32 %inc36, i32* %num, align 4
  %65 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next37 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %65, i32 0, i32 1
  %66 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next37, align 8
  store %struct._tagTreeCCTrigger* %66, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %while.cond.30

while.end.38:                                     ; preds = %land.end
  %67 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %tobool39 = icmp ne %struct._tagTreeCCTrigger* %67, null
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %while.end.38
  %68 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %69 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %70 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %71 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node41 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %71, i32 0, i32 0
  %72 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node41, align 8
  %73 = load i32, i32* %markBit, align 4
  %74 = load i32, i32* %triggerNum.addr, align 4
  %call42 = call i32 @GenerateSelectors(%struct._tagTreeCCContext* %68, %struct._tagTreeCCStream* %69, %struct.TreeCCNonVirtual* %70, %struct._tagTreeCCNode* %72, i32 %73, i32 %74)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.40
  %75 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %75, i32 0, i32 2
  %76 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %77 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %filename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %77, i32 0, i32 4
  %78 = load i8*, i8** %filename, align 8
  %79 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %linenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %79, i32 0, i32 5
  %80 = load i64, i64* %linenum, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %76, i8* %78, i64 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.end.38
  %81 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSelectors = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %81, i32 0, i32 5
  %82 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSelectors, align 8
  %83 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %84 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %85 = load i32, i32* %triggerNum.addr, align 4
  call void %82(%struct._tagTreeCCContext* %83, %struct._tagTreeCCStream* %84, i32 %85)
  %86 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %88 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %89 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %90 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %91 = load i32, i32* %triggerNum.addr, align 4
  %add = add nsw i32 %91, 1
  %call47 = call %struct._tagTreeCCOperationCase* @GenerateSwitch(%struct._tagTreeCCContext* %86, %struct._tagTreeCCStream* %87, %struct.TreeCCNonVirtual* %88, %struct._tagTreeCCOperation* %89, %struct._tagTreeCCOperationCase* %90, i32 %add)
  store %struct._tagTreeCCOperationCase* %call47, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %92 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndCase = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %92, i32 0, i32 10
  %93 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndCase, align 8
  %94 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %96 = load i32, i32* %triggerNum.addr, align 4
  call void %93(%struct._tagTreeCCContext* %94, %struct._tagTreeCCStream* %95, i32 %96)
  br label %do.cond

do.cond:                                          ; preds = %if.end.46
  %97 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %cmp48 = icmp ne %struct._tagTreeCCOperationCase* %97, null
  br i1 %cmp48, label %land.rhs.50, label %land.end.53

land.rhs.50:                                      ; preds = %do.cond
  %98 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %firstCase, align 8
  %99 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %100 = load i32, i32* %triggerNum.addr, align 4
  %call51 = call i32 @LevelsMatch(%struct._tagTreeCCOperationCase* %98, %struct._tagTreeCCOperationCase* %99, i32 %100)
  %tobool52 = icmp ne i32 %call51, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.50, %do.cond
  %101 = phi i1 [ false, %do.cond ], [ %tobool52, %land.rhs.50 ]
  br i1 %101, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.53
  %102 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSwitch = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %102, i32 0, i32 11
  %103 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSwitch, align 8
  %104 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %105 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %106 = load i32, i32* %triggerNum.addr, align 4
  call void %103(%struct._tagTreeCCContext* %104, %struct._tagTreeCCStream* %105, i32 %106)
  %107 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store %struct._tagTreeCCOperationCase* %107, %struct._tagTreeCCOperationCase** %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.15
  %108 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %retval
  ret %struct._tagTreeCCOperationCase* %108
}

; Function Attrs: nounwind uwtable
define internal void @GenerateMultiSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, i32 %triggerNum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %triggerNum.addr = alloca i32, align 4
  %type = alloca %struct._tagTreeCCNode*, align 8
  %isEnum = alloca i32, align 4
  %paramName = alloca [64 x i8], align 16
  %paramNum = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
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
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %while.end
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 5
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 2
  %cmp4 = icmp ne i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseInline = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %9, i32 0, i32 8
  %10 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)** %genCaseInline, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load i32, i32* %base.addr, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %14, i64 %idxprom
  %15 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx, align 8
  %16 = load i32, i32* %triggerNum.addr, align 4
  %sub = sub nsw i32 %16, 1
  call void %10(%struct._tagTreeCCContext* %11, %struct._tagTreeCCStream* %12, %struct._tagTreeCCOperationCase* %15, i32 %sub)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseCall = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %17, i32 0, i32 7
  %18 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)** %genCaseCall, align 8
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %21 = load i32, i32* %base.addr, align 4
  %idxprom6 = sext i32 %21 to i64
  %22 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %22, i64 %idxprom6
  %23 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx7, align 8
  %24 = load i32, i32* %base.addr, align 4
  %idxprom8 = sext i32 %24 to i64
  %25 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %25, i64 %idxprom8
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx9, align 8
  %number = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %26, i32 0, i32 3
  %27 = load i32, i32* %number, align 4
  %28 = load i32, i32* %triggerNum.addr, align 4
  %sub10 = sub nsw i32 %28, 1
  call void %18(%struct._tagTreeCCContext* %19, %struct._tagTreeCCStream* %20, %struct._tagTreeCCOperationCase* %23, i32 %27, i32 %sub10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %return

if.end.11:                                        ; preds = %while.end
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %type12 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %30, i32 0, i32 1
  %31 = load i8*, i8** %type12, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %29, i8* %31)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %type, align 8
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  %flags13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %32, i32 0, i32 5
  %33 = load i32, i32* %flags13, align 4
  %and14 = and i32 %33, 8
  %cmp15 = icmp ne i32 %and14, 0
  %conv = zext i1 %cmp15 to i32
  store i32 %conv, i32* %isEnum, align 4
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name, align 8
  %tobool16 = icmp ne i8* %35, null
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.11
  %36 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %36, i32 0, i32 3
  %37 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead, align 8
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 0
  %41 = load i8*, i8** %name18, align 8
  %42 = load i32, i32* %triggerNum.addr, align 4
  %43 = load i32, i32* %isEnum, align 4
  call void %37(%struct._tagTreeCCContext* %38, %struct._tagTreeCCStream* %39, i8* %41, i32 %42, i32 %43)
  br label %if.end.37

if.else.19:                                       ; preds = %if.end.11
  store i32 0, i32* %paramNum, align 4
  %44 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %44, i32 0, i32 4
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %45, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.31, %if.else.19
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp21 = icmp ne %struct._tagTreeCCParam* %46, null
  br i1 %cmp21, label %land.rhs.23, label %land.end.26

land.rhs.23:                                      ; preds = %while.cond.20
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %cmp24 = icmp ne %struct._tagTreeCCParam* %47, %48
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.23, %while.cond.20
  %49 = phi i1 [ false, %while.cond.20 ], [ %cmp24, %land.rhs.23 ]
  br i1 %49, label %while.body.27, label %while.end.33

while.body.27:                                    ; preds = %land.end.26
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 0
  %51 = load i8*, i8** %name28, align 8
  %tobool29 = icmp ne i8* %51, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %while.body.27
  %52 = load i32, i32* %paramNum, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %paramNum, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %while.body.27
  %53 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next32 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %53, i32 0, i32 4
  %54 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next32, align 8
  store %struct._tagTreeCCParam* %54, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.20

while.end.33:                                     ; preds = %land.end.26
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %55 = load i32, i32* %paramNum, align 4
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %55) #3
  %56 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSwitchHead35 = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %56, i32 0, i32 3
  %57 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)** %genSwitchHead35, align 8
  %58 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %arraydecay36 = getelementptr inbounds [64 x i8], [64 x i8]* %paramName, i32 0, i32 0
  %60 = load i32, i32* %triggerNum.addr, align 4
  %61 = load i32, i32* %isEnum, align 4
  call void %57(%struct._tagTreeCCContext* %58, %struct._tagTreeCCStream* %59, i8* %arraydecay36, i32 %60, i32 %61)
  br label %if.end.37

if.end.37:                                        ; preds = %while.end.33, %if.then.17
  %62 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %64 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %66 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %67 = load i32, i32* %base.addr, align 4
  %68 = load i32, i32* %multiplier.addr, align 4
  %69 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %70 = load i32, i32* %triggerNum.addr, align 4
  %71 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %type, align 8
  call void @GenerateMultiScan(%struct._tagTreeCCContext* %62, %struct._tagTreeCCStream* %63, %struct.TreeCCNonVirtual* %64, %struct._tagTreeCCOperation* %65, %struct._tagTreeCCOperationCase** %66, i32 %67, i32 %68, %struct._tagTreeCCParam* %69, i32 %70, %struct._tagTreeCCNode* %71)
  %72 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSwitch = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %72, i32 0, i32 11
  %73 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSwitch, align 8
  %74 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %76 = load i32, i32* %triggerNum.addr, align 4
  call void %73(%struct._tagTreeCCContext* %74, %struct._tagTreeCCStream* %75, i32 %76)
  br label %return

return:                                           ; preds = %if.end.37, %if.end
  ret void
}

declare %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext*, i8*) #1

declare i32 @TreeCCNodeAssignPositions(%struct._tagTreeCCNode*) #1

; Function Attrs: nounwind uwtable
define internal void @GenerateSplitMultiScanFunc(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, i32 %triggerNum, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %triggerNum.addr = alloca i32, align 4
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %6 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %7 = load i32, i32* %base.addr, align 4
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 7
  %9 = load i32, i32* %position, align 4
  %10 = load i32, i32* %multiplier.addr, align 4
  %mul = mul nsw i32 %9, %10
  %add = add nsw i32 %7, %mul
  %11 = load i32, i32* %multiplier.addr, align 4
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %size = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %12, i32 0, i32 3
  %13 = load i32, i32* %size, align 4
  %mul1 = mul nsw i32 %11, %13
  %14 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %14, i32 0, i32 4
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  %16 = load i32, i32* %triggerNum.addr, align 4
  %add2 = add nsw i32 %16, 1
  call void @GenerateSplitMultiSwitch(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct.TreeCCNonVirtual* %4, %struct._tagTreeCCOperation* %5, %struct._tagTreeCCOperationCase** %6, i32 %add, i32 %mul1, %struct._tagTreeCCParam* %15, i32 %add2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 1
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %18, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp3 = icmp ne %struct._tagTreeCCNode* %19, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %22 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %23 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %24 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %25 = load i32, i32* %base.addr, align 4
  %26 = load i32, i32* %multiplier.addr, align 4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %28 = load i32, i32* %triggerNum.addr, align 4
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @GenerateSplitMultiScanFunc(%struct._tagTreeCCContext* %20, %struct._tagTreeCCStream* %21, %struct.TreeCCNonVirtual* %22, %struct._tagTreeCCOperation* %23, %struct._tagTreeCCOperationCase** %24, i32 %25, i32 %26, %struct._tagTreeCCParam* %27, i32 %28, %struct._tagTreeCCNode* %29)
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 3
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %31, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @GenerateSplitMultiScan(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, i32 %triggerNum, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %triggerNum.addr = alloca i32, align 4
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %number = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSelector = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %2, i32 0, i32 4
  %3 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)** %genSelector, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void %3(%struct._tagTreeCCContext* %4, %struct._tagTreeCCStream* %5, %struct._tagTreeCCNode* %6, i32 0)
  %7 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSelectors = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %7, i32 0, i32 5
  %8 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSelectors, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void %8(%struct._tagTreeCCContext* %9, %struct._tagTreeCCStream* %10, i32 0)
  %11 = load i32, i32* %base.addr, align 4
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 7
  %13 = load i32, i32* %position, align 4
  %14 = load i32, i32* %multiplier.addr, align 4
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %11, %mul
  store i32 %add, i32* %number, align 4
  %15 = load i32, i32* %triggerNum.addr, align 4
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %numTriggers = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %16, i32 0, i32 6
  %17 = load i32, i32* %numTriggers, align 4
  %sub = sub nsw i32 %17, 1
  %cmp1 = icmp eq i32 %15, %sub
  br i1 %cmp1, label %if.then.2, label %if.else.12

if.then.2:                                        ; preds = %if.then
  %18 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags3 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %18, i32 0, i32 5
  %19 = load i32, i32* %flags3, align 4
  %and4 = and i32 %19, 2
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  %20 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseInline = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %20, i32 0, i32 8
  %21 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)** %genCaseInline, align 8
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %24 = load i32, i32* %number, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %25, i64 %idxprom
  %26 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx, align 8
  call void %21(%struct._tagTreeCCContext* %22, %struct._tagTreeCCStream* %23, %struct._tagTreeCCOperationCase* %26, i32 0)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %27 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseCall = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %27, i32 0, i32 7
  %28 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)** %genCaseCall, align 8
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %31 = load i32, i32* %number, align 4
  %idxprom7 = sext i32 %31 to i64
  %32 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %32, i64 %idxprom7
  %33 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx8, align 8
  %34 = load i32, i32* %number, align 4
  %idxprom9 = sext i32 %34 to i64
  %35 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %35, i64 %idxprom9
  %36 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx10, align 8
  %number11 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %36, i32 0, i32 3
  %37 = load i32, i32* %number11, align 4
  call void %28(%struct._tagTreeCCContext* %29, %struct._tagTreeCCStream* %30, %struct._tagTreeCCOperationCase* %33, i32 %37, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.15

if.else.12:                                       ; preds = %if.then
  %38 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genCaseSplit = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %38, i32 0, i32 9
  %39 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)** %genCaseSplit, align 8
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %42 = load i32, i32* %number, align 4
  %idxprom13 = sext i32 %42 to i64
  %43 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %43, i64 %idxprom13
  %44 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %arrayidx14, align 8
  %45 = load i32, i32* %number, align 4
  call void %39(%struct._tagTreeCCContext* %40, %struct._tagTreeCCStream* %41, %struct._tagTreeCCOperationCase* %44, i32 %45, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.end
  %46 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndCase = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %46, i32 0, i32 10
  %47 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndCase, align 8
  %48 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void %47(%struct._tagTreeCCContext* %48, %struct._tagTreeCCStream* %49, i32 0)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %50 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %50, i32 0, i32 1
  %51 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %51, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %52 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp17 = icmp ne %struct._tagTreeCCNode* %52, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %55 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %56 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %57 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %58 = load i32, i32* %base.addr, align 4
  %59 = load i32, i32* %multiplier.addr, align 4
  %60 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %61 = load i32, i32* %triggerNum.addr, align 4
  %62 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @GenerateSplitMultiScan(%struct._tagTreeCCContext* %53, %struct._tagTreeCCStream* %54, %struct.TreeCCNonVirtual* %55, %struct._tagTreeCCOperation* %56, %struct._tagTreeCCOperationCase** %57, i32 %58, i32 %59, %struct._tagTreeCCParam* %60, i32 %61, %struct._tagTreeCCNode* %62)
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %63, i32 0, i32 3
  %64 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %64, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCNodeClearMarking(%struct._tagTreeCCContext*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @GenerateSelectors(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCNode* %node, i32 %markBit, i32 %triggerNum) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %markBit.addr = alloca i32, align 4
  %triggerNum.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %markBit, i32* %markBit.addr, align 4
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %2 = load i32, i32* %markBit.addr, align 4
  %and = and i32 %1, %2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %markBit.addr, align 4
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 5
  %5 = load i32, i32* %flags1, align 4
  %or = or i32 %5, %3
  store i32 %or, i32* %flags1, align 4
  %6 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSelector = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %6, i32 0, i32 4
  %7 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)** %genSelector, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %11 = load i32, i32* %triggerNum.addr, align 4
  call void %7(%struct._tagTreeCCContext* %8, %struct._tagTreeCCStream* %9, %struct._tagTreeCCNode* %10, i32 %11)
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 1
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %13, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp2 = icmp ne %struct._tagTreeCCNode* %14, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %19 = load i32, i32* %markBit.addr, align 4
  %20 = load i32, i32* %triggerNum.addr, align 4
  %call = call i32 @GenerateSelectors(%struct._tagTreeCCContext* %15, %struct._tagTreeCCStream* %16, %struct.TreeCCNonVirtual* %17, %struct._tagTreeCCNode* %18, i32 %19, i32 %20)
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 3
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %22, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @TreeCCErrorOnLine(%struct.TreeCCInput*, i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @LevelsMatch(%struct._tagTreeCCOperationCase* %operCase1, %struct._tagTreeCCOperationCase* %operCase2, i32 %triggerNum) #0 {
entry:
  %retval = alloca i32, align 4
  %operCase1.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %operCase2.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %triggerNum.addr = alloca i32, align 4
  %trigger1 = alloca %struct._tagTreeCCTrigger*, align 8
  %trigger2 = alloca %struct._tagTreeCCTrigger*, align 8
  store %struct._tagTreeCCOperationCase* %operCase1, %struct._tagTreeCCOperationCase** %operCase1.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase2, %struct._tagTreeCCOperationCase** %operCase2.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  %0 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase1.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %1, %struct._tagTreeCCTrigger** %trigger1, align 8
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase2.addr, align 8
  %triggers1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 0
  %3 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers1, align 8
  store %struct._tagTreeCCTrigger* %3, %struct._tagTreeCCTrigger** %trigger2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %triggerNum.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %5, i32 0, i32 0
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %7 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %node2 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %7, i32 0, i32 0
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node2, align 8
  %cmp3 = icmp ne %struct._tagTreeCCNode* %6, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger1, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %9, i32 0, i32 1
  %10 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %10, %struct._tagTreeCCTrigger** %trigger1, align 8
  %11 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger2, align 8
  %next4 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %11, i32 0, i32 1
  %12 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next4, align 8
  store %struct._tagTreeCCTrigger* %12, %struct._tagTreeCCTrigger** %trigger2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @GenerateMultiScan(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct.TreeCCNonVirtual* %nonVirt, %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperationCase** %sortedCases, i32 %base, i32 %multiplier, %struct._tagTreeCCParam* %nextParam, i32 %triggerNum, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %nonVirt.addr = alloca %struct.TreeCCNonVirtual*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %sortedCases.addr = alloca %struct._tagTreeCCOperationCase**, align 8
  %base.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %nextParam.addr = alloca %struct._tagTreeCCParam*, align 8
  %triggerNum.addr = alloca i32, align 4
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct.TreeCCNonVirtual* %nonVirt, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store %struct._tagTreeCCOperationCase** %sortedCases, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  store %struct._tagTreeCCParam* %nextParam, %struct._tagTreeCCParam** %nextParam.addr, align 8
  store i32 %triggerNum, i32* %triggerNum.addr, align 4
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genSelector = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %2, i32 0, i32 4
  %3 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)** %genSelector, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %7 = load i32, i32* %triggerNum.addr, align 4
  call void %3(%struct._tagTreeCCContext* %4, %struct._tagTreeCCStream* %5, %struct._tagTreeCCNode* %6, i32 %7)
  %8 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndSelectors = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %8, i32 0, i32 5
  %9 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndSelectors, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load i32, i32* %triggerNum.addr, align 4
  call void %9(%struct._tagTreeCCContext* %10, %struct._tagTreeCCStream* %11, i32 %12)
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %17 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %18 = load i32, i32* %base.addr, align 4
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %position = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 7
  %20 = load i32, i32* %position, align 4
  %21 = load i32, i32* %multiplier.addr, align 4
  %mul = mul nsw i32 %20, %21
  %add = add nsw i32 %18, %mul
  %22 = load i32, i32* %multiplier.addr, align 4
  %23 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %size = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %23, i32 0, i32 3
  %24 = load i32, i32* %size, align 4
  %mul1 = mul nsw i32 %22, %24
  %25 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %25, i32 0, i32 4
  %26 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  %27 = load i32, i32* %triggerNum.addr, align 4
  %add2 = add nsw i32 %27, 1
  call void @GenerateMultiSwitch(%struct._tagTreeCCContext* %13, %struct._tagTreeCCStream* %14, %struct.TreeCCNonVirtual* %15, %struct._tagTreeCCOperation* %16, %struct._tagTreeCCOperationCase** %17, i32 %add, i32 %mul1, %struct._tagTreeCCParam* %26, i32 %add2)
  %28 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %genEndCase = getelementptr inbounds %struct.TreeCCNonVirtual, %struct.TreeCCNonVirtual* %28, i32 0, i32 10
  %29 = load void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)** %genEndCase, align 8
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %32 = load i32, i32* %triggerNum.addr, align 4
  call void %29(%struct._tagTreeCCContext* %30, %struct._tagTreeCCStream* %31, i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %33, i32 0, i32 1
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %34, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %cmp3 = icmp ne %struct._tagTreeCCNode* %35, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %38 = load %struct.TreeCCNonVirtual*, %struct.TreeCCNonVirtual** %nonVirt.addr, align 8
  %39 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %40 = load %struct._tagTreeCCOperationCase**, %struct._tagTreeCCOperationCase*** %sortedCases.addr, align 8
  %41 = load i32, i32* %base.addr, align 4
  %42 = load i32, i32* %multiplier.addr, align 4
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %nextParam.addr, align 8
  %44 = load i32, i32* %triggerNum.addr, align 4
  %45 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @GenerateMultiScan(%struct._tagTreeCCContext* %36, %struct._tagTreeCCStream* %37, %struct.TreeCCNonVirtual* %38, %struct._tagTreeCCOperation* %39, %struct._tagTreeCCOperationCase** %40, i32 %41, i32 %42, %struct._tagTreeCCParam* %43, i32 %44, %struct._tagTreeCCNode* %45)
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %46, i32 0, i32 3
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %47, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
