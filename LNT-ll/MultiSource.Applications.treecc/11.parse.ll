; ModuleID = './MultiSource.Applications.treecc/11.parse.bc'
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

@.str = private unnamed_addr constant [34 x i8] c"literal definition block expected\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"header filename expected\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"output filename expected\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"include filename expected\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"declaration expected\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"`,' expected\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"identifier expected\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"code block expected\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"operation `%s' is not declared\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"node type `%s' is not declared\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"type name expected\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"`)' expected\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"`(' expected\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"incorrect number of triggers for operation\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"operation declared here\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"node type `%s' does not inherit from `%s'\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"literal code constant expected\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"default values can only be specified for `%%nocreate' fields\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"field name expected\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"field declaration expected\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"`;' expected\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"field definition block expected\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"`]' expected\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"`virtual' and `inline' cannot be used together\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"operation name expected\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"operation return type expected\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"C# requires that a class name be specified\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"C# requires different class and operation names\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"parameter declaration expected\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"`%s' is not a valid trigger type\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"default value expected\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"default value required\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"virtual operations must have at least one parameter\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"the first parameter of a virtual must be the trigger\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"cannot use enumerated types as triggers for virtual operations\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"operation `%s' is already declared\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"previous declaration here\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"trigger types must end in `*'\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"option name expected\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"identifier or string expected\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"%%option %s %s\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"%%option %s\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"invalid value for option `%s'\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"option `%s' requires a value\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"option `%s' does not take a value\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"enumerated type name expected\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"`=' expected\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"`{' expected\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"no values were specified for the enumeration\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"`}' expected\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCParse(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %flags = alloca i32, align 4
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %stream82 = alloca %struct._tagTreeCCStream*, align 8
  %readOnly132 = alloca i32, align 4
  %includeFile = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %newInput = alloca %struct.TreeCCInput*, align 8
  %origInput = alloca %struct.TreeCCInput*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call = call i32 @TreeCCNextToken(%struct.TreeCCInput* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end.242

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.238, %if.end
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 2
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
    i32 4, label %sw.bb.3
    i32 31, label %sw.bb.3
    i32 32, label %sw.bb.3
    i32 33, label %sw.bb.3
    i32 19, label %sw.bb.49
    i32 22, label %sw.bb.50
    i32 27, label %sw.bb.51
    i32 28, label %sw.bb.52
    i32 29, label %sw.bb.75
    i32 30, label %sw.bb.111
    i32 34, label %sw.bb.125
    i32 35, label %sw.bb.126
    i32 36, label %sw.bb.131
    i32 3, label %sw.bb.171
    i32 5, label %sw.bb.171
    i32 6, label %sw.bb.171
    i32 7, label %sw.bb.171
    i32 8, label %sw.bb.171
    i32 9, label %sw.bb.171
    i32 10, label %sw.bb.171
    i32 11, label %sw.bb.171
    i32 12, label %sw.bb.171
    i32 13, label %sw.bb.171
    i32 14, label %sw.bb.171
    i32 15, label %sw.bb.171
    i32 16, label %sw.bb.171
    i32 17, label %sw.bb.171
    i32 18, label %sw.bb.171
    i32 20, label %sw.bb.171
    i32 21, label %sw.bb.171
    i32 23, label %sw.bb.171
    i32 24, label %sw.bb.171
    i32 25, label %sw.bb.171
    i32 26, label %sw.bb.171
    i32 37, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %do.body
  br label %sw.epilog

sw.bb.2:                                          ; preds = %do.body
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @ParseOperationCase(%struct._tagTreeCCContext* %5)
  br label %do.cond.238

sw.bb.3:                                          ; preds = %do.body, %do.body, %do.body, %do.body, %do.body
  store i32 0, i32* %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %sw.bb.3
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 2
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input4, align 8
  %token5 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 0
  %8 = load i32, i32* %token5, align 4
  %cmp = icmp eq i32 %8, 31
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 2
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input6, align 8
  %token7 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 0
  %11 = load i32, i32* %token7, align 4
  %cmp8 = icmp eq i32 %11, 32
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 2
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input9, align 8
  %token10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %13, i32 0, i32 0
  %14 = load i32, i32* %token10, align 4
  %cmp11 = icmp eq i32 %14, 33
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 2
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input12, align 8
  %token13 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 0
  %18 = load i32, i32* %token13, align 4
  %cmp14 = icmp eq i32 %18, 31
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body
  %19 = load i32, i32* %flags, align 4
  %or = or i32 %19, 3
  store i32 %or, i32* %flags, align 4
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 2
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input16, align 8
  %token17 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %21, i32 0, i32 0
  %22 = load i32, i32* %token17, align 4
  %cmp18 = icmp eq i32 %22, 32
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %23 = load i32, i32* %flags, align 4
  %or20 = or i32 %23, 2
  store i32 %or20, i32* %flags, align 4
  br label %if.end.23

if.else.21:                                       ; preds = %if.else
  %24 = load i32, i32* %flags, align 4
  %or22 = or i32 %24, 4
  store i32 %or22, i32* %flags, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %25, i32 0, i32 2
  %26 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input25, align 8
  %call26 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %26)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load i32, i32* %flags, align 4
  %and = and i32 %27, 2
  %cmp27 = icmp eq i32 %and, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %while.end
  %28 = load i32, i32* %flags, align 4
  %or29 = or i32 %28, 1
  store i32 %or29, i32* %flags, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %while.end
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input31 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %29, i32 0, i32 2
  %30 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input31, align 8
  %token32 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %30, i32 0, i32 0
  %31 = load i32, i32* %token32, align 4
  %cmp33 = icmp eq i32 %31, 2
  br i1 %cmp33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.end.30
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input35 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %33, i32 0, i32 2
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input35, align 8
  %call36 = call i8* @TreeCCValue(%struct.TreeCCInput* %34)
  %35 = load i32, i32* %flags, align 4
  call void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext* %32, i8* %call36, i32 %35)
  br label %if.end.48

if.else.37:                                       ; preds = %if.end.30
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input38 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %36, i32 0, i32 2
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input38, align 8
  %token39 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 0
  %38 = load i32, i32* %token39, align 4
  %cmp40 = icmp eq i32 %38, 4
  br i1 %cmp40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.else.37
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input42 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %40, i32 0, i32 2
  %41 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input42, align 8
  %call43 = call i8* @TreeCCValue(%struct.TreeCCInput* %41)
  %42 = load i32, i32* %flags, align 4
  %or44 = or i32 %42, 4
  call void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext* %39, i8* %call43, i32 %or44)
  br label %if.end.47

if.else.45:                                       ; preds = %if.else.37
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input46 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %43, i32 0, i32 2
  %44 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input46, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %do.cond.238

if.end.47:                                        ; preds = %if.then.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.34
  br label %sw.epilog

sw.bb.49:                                         ; preds = %do.body
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @ParseNode(%struct._tagTreeCCContext* %45)
  br label %do.cond.238

sw.bb.50:                                         ; preds = %do.body
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @ParseOperation(%struct._tagTreeCCContext* %46)
  br label %do.cond.238

sw.bb.51:                                         ; preds = %do.body
  %47 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @ParseOption(%struct._tagTreeCCContext* %47)
  br label %do.cond.238

sw.bb.52:                                         ; preds = %do.body
  %48 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input53 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %48, i32 0, i32 2
  %49 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input53, align 8
  %call54 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %49)
  %50 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input55 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %50, i32 0, i32 2
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input55, align 8
  %token56 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %51, i32 0, i32 0
  %52 = load i32, i32* %token56, align 4
  %cmp57 = icmp eq i32 %52, 17
  br i1 %cmp57, label %if.then.58, label %if.else.72

if.then.58:                                       ; preds = %sw.bb.52
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %54 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input59 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %54, i32 0, i32 2
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input59, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %55, i32 0, i32 1
  %56 = load i8*, i8** %text, align 8
  %57 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input60 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %57, i32 0, i32 2
  %58 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input60, align 8
  %text61 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %58, i32 0, i32 1
  %59 = load i8*, i8** %text61, align 8
  %call62 = call %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %53, i8* %56, i8* %59, i32 1)
  store %struct._tagTreeCCStream* %call62, %struct._tagTreeCCStream** %stream, align 8
  %60 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %61 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %61, i32 0, i32 4
  store %struct._tagTreeCCStream* %60, %struct._tagTreeCCStream** %headerStream, align 8
  %62 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input63 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %62, i32 0, i32 2
  %63 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input63, align 8
  %readOnly = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %63, i32 0, i32 10
  %64 = load i32, i32* %readOnly, align 4
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %readOnly64 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %65, i32 0, i32 7
  %bf.load = load i8, i8* %readOnly64, align 4
  %bf.shl = shl i8 %bf.load, 6
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %or65 = or i32 %bf.cast, %64
  %66 = trunc i32 %or65 to i8
  %bf.load66 = load i8, i8* %readOnly64, align 4
  %bf.value = and i8 %66, 1
  %bf.shl67 = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load66, -3
  %bf.set = or i8 %bf.clear, %bf.shl67
  store i8 %bf.set, i8* %readOnly64, align 4
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  %67 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %67, i32 0, i32 6
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader, align 8
  %tobool68 = icmp ne %struct._tagTreeCCStream* %68, null
  br i1 %tobool68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %if.then.58
  %69 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %70 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader70 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %70, i32 0, i32 6
  store %struct._tagTreeCCStream* %69, %struct._tagTreeCCStream** %commonHeader70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.58
  br label %if.end.74

if.else.72:                                       ; preds = %sw.bb.52
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input73 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %71, i32 0, i32 2
  %72 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input73, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %do.cond.238

if.end.74:                                        ; preds = %if.end.71
  br label %sw.epilog

sw.bb.75:                                         ; preds = %do.body
  %73 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input76 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %73, i32 0, i32 2
  %74 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input76, align 8
  %call77 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %74)
  %75 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input78 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %75, i32 0, i32 2
  %76 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input78, align 8
  %token79 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %76, i32 0, i32 0
  %77 = load i32, i32* %token79, align 4
  %cmp80 = icmp eq i32 %77, 17
  br i1 %cmp80, label %if.then.81, label %if.else.108

if.then.81:                                       ; preds = %sw.bb.75
  %78 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %79 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input83 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %79, i32 0, i32 2
  %80 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input83, align 8
  %text84 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %80, i32 0, i32 1
  %81 = load i8*, i8** %text84, align 8
  %82 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input85 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %82, i32 0, i32 2
  %83 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input85, align 8
  %text86 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %83, i32 0, i32 1
  %84 = load i8*, i8** %text86, align 8
  %call87 = call %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext* %78, i8* %81, i8* %84, i32 0)
  store %struct._tagTreeCCStream* %call87, %struct._tagTreeCCStream** %stream82, align 8
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream82, align 8
  %86 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %86, i32 0, i32 5
  store %struct._tagTreeCCStream* %85, %struct._tagTreeCCStream** %sourceStream, align 8
  %87 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input88 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %87, i32 0, i32 2
  %88 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input88, align 8
  %readOnly89 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %88, i32 0, i32 10
  %89 = load i32, i32* %readOnly89, align 4
  %90 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream82, align 8
  %readOnly90 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %90, i32 0, i32 7
  %bf.load91 = load i8, i8* %readOnly90, align 4
  %bf.shl92 = shl i8 %bf.load91, 6
  %bf.ashr93 = ashr i8 %bf.shl92, 7
  %bf.cast94 = sext i8 %bf.ashr93 to i32
  %or95 = or i32 %bf.cast94, %89
  %91 = trunc i32 %or95 to i8
  %bf.load96 = load i8, i8* %readOnly90, align 4
  %bf.value97 = and i8 %91, 1
  %bf.shl98 = shl i8 %bf.value97, 1
  %bf.clear99 = and i8 %bf.load96, -3
  %bf.set100 = or i8 %bf.clear99, %bf.shl98
  store i8 %bf.set100, i8* %readOnly90, align 4
  %bf.result.shl101 = shl i8 %bf.value97, 7
  %bf.result.ashr102 = ashr i8 %bf.result.shl101, 7
  %bf.result.cast103 = sext i8 %bf.result.ashr102 to i32
  %92 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %92, i32 0, i32 7
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool104 = icmp ne %struct._tagTreeCCStream* %93, null
  br i1 %tobool104, label %if.end.107, label %if.then.105

if.then.105:                                      ; preds = %if.then.81
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream82, align 8
  %95 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource106 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %95, i32 0, i32 7
  store %struct._tagTreeCCStream* %94, %struct._tagTreeCCStream** %commonSource106, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.then.81
  br label %if.end.110

if.else.108:                                      ; preds = %sw.bb.75
  %96 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input109 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %96, i32 0, i32 2
  %97 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input109, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %do.cond.238

if.end.110:                                       ; preds = %if.end.107
  br label %sw.epilog

sw.bb.111:                                        ; preds = %do.body
  %98 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input112 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %98, i32 0, i32 2
  %99 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input112, align 8
  %call113 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %99)
  %100 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input114 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %100, i32 0, i32 2
  %101 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input114, align 8
  %token115 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %101, i32 0, i32 0
  %102 = load i32, i32* %token115, align 4
  %cmp116 = icmp eq i32 %102, 17
  br i1 %cmp116, label %if.then.117, label %if.else.122

if.then.117:                                      ; preds = %sw.bb.111
  %103 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input118 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %103, i32 0, i32 2
  %104 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input118, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %104, i32 0, i32 4
  %105 = load i8*, i8** %filename, align 8
  %106 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input119 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %106, i32 0, i32 2
  %107 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input119, align 8
  %text120 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %107, i32 0, i32 1
  %108 = load i8*, i8** %text120, align 8
  %call121 = call i8* @TreeCCResolvePathname(i8* %105, i8* %108)
  %109 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %outputDirectory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %109, i32 0, i32 15
  store i8* %call121, i8** %outputDirectory, align 8
  br label %if.end.124

if.else.122:                                      ; preds = %sw.bb.111
  %110 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input123 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %110, i32 0, i32 2
  %111 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input123, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %do.cond.238

if.end.124:                                       ; preds = %if.then.117
  br label %sw.epilog

sw.bb.125:                                        ; preds = %do.body
  %112 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @ParseEnum(%struct._tagTreeCCContext* %112)
  br label %do.cond.238

sw.bb.126:                                        ; preds = %do.body
  %113 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream127 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %113, i32 0, i32 4
  %114 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream127, align 8
  %115 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader128 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %115, i32 0, i32 6
  store %struct._tagTreeCCStream* %114, %struct._tagTreeCCStream** %commonHeader128, align 8
  %116 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream129 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %116, i32 0, i32 5
  %117 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream129, align 8
  %118 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource130 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %118, i32 0, i32 7
  store %struct._tagTreeCCStream* %117, %struct._tagTreeCCStream** %commonSource130, align 8
  br label %sw.epilog

sw.bb.131:                                        ; preds = %do.body
  %119 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input133 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %119, i32 0, i32 2
  %120 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input133, align 8
  %readOnly134 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %120, i32 0, i32 10
  %121 = load i32, i32* %readOnly134, align 4
  store i32 %121, i32* %readOnly132, align 4
  %122 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input135 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %122, i32 0, i32 2
  %123 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input135, align 8
  %call136 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %123)
  %124 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input137 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %124, i32 0, i32 2
  %125 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input137, align 8
  %token138 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %125, i32 0, i32 0
  %126 = load i32, i32* %token138, align 4
  %cmp139 = icmp eq i32 %126, 37
  br i1 %cmp139, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %sw.bb.131
  store i32 1, i32* %readOnly132, align 4
  %127 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input141 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %127, i32 0, i32 2
  %128 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input141, align 8
  %call142 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %128)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %sw.bb.131
  %129 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input144 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %129, i32 0, i32 2
  %130 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input144, align 8
  %token145 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %130, i32 0, i32 0
  %131 = load i32, i32* %token145, align 4
  %cmp146 = icmp eq i32 %131, 17
  br i1 %cmp146, label %if.then.147, label %if.else.168

if.then.147:                                      ; preds = %if.end.143
  %132 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input148 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %132, i32 0, i32 2
  %133 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input148, align 8
  %filename149 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %133, i32 0, i32 4
  %134 = load i8*, i8** %filename149, align 8
  %135 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input150 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %135, i32 0, i32 2
  %136 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input150, align 8
  %text151 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %136, i32 0, i32 1
  %137 = load i8*, i8** %text151, align 8
  %call152 = call i8* @TreeCCResolvePathname(i8* %134, i8* %137)
  store i8* %call152, i8** %includeFile, align 8
  %138 = load i8*, i8** %includeFile, align 8
  %call153 = call %struct._IO_FILE* @fopen(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call153, %struct._IO_FILE** %file, align 8
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp154 = icmp ne %struct._IO_FILE* %139, null
  br i1 %cmp154, label %if.then.155, label %if.else.165

if.then.155:                                      ; preds = %if.then.147
  %call156 = call noalias i8* @malloc(i64 1096) #4
  %140 = bitcast i8* %call156 to %struct.TreeCCInput*
  store %struct.TreeCCInput* %140, %struct.TreeCCInput** %newInput, align 8
  %141 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input157 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %141, i32 0, i32 2
  %142 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input157, align 8
  store %struct.TreeCCInput* %142, %struct.TreeCCInput** %origInput, align 8
  %143 = load %struct.TreeCCInput*, %struct.TreeCCInput** %newInput, align 8
  %tobool158 = icmp ne %struct.TreeCCInput* %143, null
  br i1 %tobool158, label %if.end.161, label %if.then.159

if.then.159:                                      ; preds = %if.then.155
  %144 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input160 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %144, i32 0, i32 2
  %145 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input160, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %145)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.then.155
  %146 = load %struct.TreeCCInput*, %struct.TreeCCInput** %newInput, align 8
  %147 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input162 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %147, i32 0, i32 2
  %148 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input162, align 8
  %progname = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %148, i32 0, i32 2
  %149 = load i8*, i8** %progname, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %151 = load i8*, i8** %includeFile, align 8
  call void @TreeCCOpen(%struct.TreeCCInput* %146, i8* %149, %struct._IO_FILE* %150, i8* %151)
  %152 = load %struct.TreeCCInput*, %struct.TreeCCInput** %newInput, align 8
  %153 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input163 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %153, i32 0, i32 2
  store %struct.TreeCCInput* %152, %struct.TreeCCInput** %input163, align 8
  %154 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCParse(%struct._tagTreeCCContext* %154)
  %155 = load %struct.TreeCCInput*, %struct.TreeCCInput** %origInput, align 8
  %156 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input164 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %156, i32 0, i32 2
  store %struct.TreeCCInput* %155, %struct.TreeCCInput** %input164, align 8
  %157 = load %struct.TreeCCInput*, %struct.TreeCCInput** %newInput, align 8
  call void @TreeCCClose(%struct.TreeCCInput* %157, i32 1)
  %158 = load %struct.TreeCCInput*, %struct.TreeCCInput** %newInput, align 8
  %159 = bitcast %struct.TreeCCInput* %158 to i8*
  call void @free(i8* %159) #4
  br label %if.end.167

if.else.165:                                      ; preds = %if.then.147
  %160 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input166 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %160, i32 0, i32 2
  %161 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input166, align 8
  %162 = load i8*, i8** %includeFile, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* %162)
  %163 = load i8*, i8** %includeFile, align 8
  call void @free(i8* %163) #4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.end.161
  br label %if.end.170

if.else.168:                                      ; preds = %if.end.143
  %164 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input169 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %164, i32 0, i32 2
  %165 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input169, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.end.167
  br label %sw.epilog

sw.bb.171:                                        ; preds = %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body, %do.body
  %166 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input172 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %166, i32 0, i32 2
  %167 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input172, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  br label %do.body.173

do.body.173:                                      ; preds = %lor.end.235, %sw.bb.171
  %168 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input174 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %168, i32 0, i32 2
  %169 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input174, align 8
  %call175 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %169)
  br label %do.cond

do.cond:                                          ; preds = %do.body.173
  %170 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input176 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %170, i32 0, i32 2
  %171 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input176, align 8
  %token177 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %171, i32 0, i32 0
  %172 = load i32, i32* %token177, align 4
  %cmp178 = icmp eq i32 %172, 0
  br i1 %cmp178, label %lor.end.235, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %do.cond
  %173 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input180 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %173, i32 0, i32 2
  %174 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input180, align 8
  %token181 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %174, i32 0, i32 0
  %175 = load i32, i32* %token181, align 4
  %cmp182 = icmp eq i32 %175, 1
  br i1 %cmp182, label %lor.end.235, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %lor.lhs.false.179
  %176 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input184 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %176, i32 0, i32 2
  %177 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input184, align 8
  %token185 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %177, i32 0, i32 0
  %178 = load i32, i32* %token185, align 4
  %cmp186 = icmp eq i32 %178, 2
  br i1 %cmp186, label %lor.end.235, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %lor.lhs.false.183
  %179 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input188 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %179, i32 0, i32 2
  %180 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input188, align 8
  %token189 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %180, i32 0, i32 0
  %181 = load i32, i32* %token189, align 4
  %cmp190 = icmp eq i32 %181, 4
  br i1 %cmp190, label %lor.end.235, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %lor.lhs.false.187
  %182 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input192 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %182, i32 0, i32 2
  %183 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input192, align 8
  %token193 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %183, i32 0, i32 0
  %184 = load i32, i32* %token193, align 4
  %cmp194 = icmp eq i32 %184, 19
  br i1 %cmp194, label %lor.end.235, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.191
  %185 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input196 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %185, i32 0, i32 2
  %186 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input196, align 8
  %token197 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %186, i32 0, i32 0
  %187 = load i32, i32* %token197, align 4
  %cmp198 = icmp eq i32 %187, 22
  br i1 %cmp198, label %lor.end.235, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.lhs.false.195
  %188 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input200 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %188, i32 0, i32 2
  %189 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input200, align 8
  %token201 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %189, i32 0, i32 0
  %190 = load i32, i32* %token201, align 4
  %cmp202 = icmp eq i32 %190, 27
  br i1 %cmp202, label %lor.end.235, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.199
  %191 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input204 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %191, i32 0, i32 2
  %192 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input204, align 8
  %token205 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %192, i32 0, i32 0
  %193 = load i32, i32* %token205, align 4
  %cmp206 = icmp eq i32 %193, 28
  br i1 %cmp206, label %lor.end.235, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %lor.lhs.false.203
  %194 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input208 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %194, i32 0, i32 2
  %195 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input208, align 8
  %token209 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %195, i32 0, i32 0
  %196 = load i32, i32* %token209, align 4
  %cmp210 = icmp eq i32 %196, 29
  br i1 %cmp210, label %lor.end.235, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %lor.lhs.false.207
  %197 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input212 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %197, i32 0, i32 2
  %198 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input212, align 8
  %token213 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %198, i32 0, i32 0
  %199 = load i32, i32* %token213, align 4
  %cmp214 = icmp eq i32 %199, 31
  br i1 %cmp214, label %lor.end.235, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.211
  %200 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input216 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %200, i32 0, i32 2
  %201 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input216, align 8
  %token217 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %201, i32 0, i32 0
  %202 = load i32, i32* %token217, align 4
  %cmp218 = icmp eq i32 %202, 32
  br i1 %cmp218, label %lor.end.235, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.215
  %203 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input220 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %203, i32 0, i32 2
  %204 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input220, align 8
  %token221 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %204, i32 0, i32 0
  %205 = load i32, i32* %token221, align 4
  %cmp222 = icmp eq i32 %205, 33
  br i1 %cmp222, label %lor.end.235, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.219
  %206 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input224 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %206, i32 0, i32 2
  %207 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input224, align 8
  %token225 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %207, i32 0, i32 0
  %208 = load i32, i32* %token225, align 4
  %cmp226 = icmp eq i32 %208, 34
  br i1 %cmp226, label %lor.end.235, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %lor.lhs.false.223
  %209 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input228 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %209, i32 0, i32 2
  %210 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input228, align 8
  %token229 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %210, i32 0, i32 0
  %211 = load i32, i32* %token229, align 4
  %cmp230 = icmp eq i32 %211, 35
  br i1 %cmp230, label %lor.end.235, label %lor.rhs.231

lor.rhs.231:                                      ; preds = %lor.lhs.false.227
  %212 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input232 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %212, i32 0, i32 2
  %213 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input232, align 8
  %token233 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %213, i32 0, i32 0
  %214 = load i32, i32* %token233, align 4
  %cmp234 = icmp eq i32 %214, 36
  br label %lor.end.235

lor.end.235:                                      ; preds = %lor.rhs.231, %lor.lhs.false.227, %lor.lhs.false.223, %lor.lhs.false.219, %lor.lhs.false.215, %lor.lhs.false.211, %lor.lhs.false.207, %lor.lhs.false.203, %lor.lhs.false.199, %lor.lhs.false.195, %lor.lhs.false.191, %lor.lhs.false.187, %lor.lhs.false.183, %lor.lhs.false.179, %do.cond
  %215 = phi i1 [ true, %lor.lhs.false.227 ], [ true, %lor.lhs.false.223 ], [ true, %lor.lhs.false.219 ], [ true, %lor.lhs.false.215 ], [ true, %lor.lhs.false.211 ], [ true, %lor.lhs.false.207 ], [ true, %lor.lhs.false.203 ], [ true, %lor.lhs.false.199 ], [ true, %lor.lhs.false.195 ], [ true, %lor.lhs.false.191 ], [ true, %lor.lhs.false.187 ], [ true, %lor.lhs.false.183 ], [ true, %lor.lhs.false.179 ], [ true, %do.cond ], [ %cmp234, %lor.rhs.231 ]
  %lnot = xor i1 %215, true
  br i1 %lnot, label %do.body.173, label %do.end

do.end:                                           ; preds = %lor.end.235
  br label %do.cond.238

sw.epilog:                                        ; preds = %do.body, %if.end.170, %sw.bb.126, %if.end.124, %if.end.110, %if.end.74, %if.end.48, %sw.bb
  %216 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input236 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %216, i32 0, i32 2
  %217 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input236, align 8
  %call237 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %217)
  br label %do.cond.238

do.cond.238:                                      ; preds = %sw.epilog, %do.end, %sw.bb.125, %if.else.122, %if.else.108, %if.else.72, %sw.bb.51, %sw.bb.50, %sw.bb.49, %if.else.45, %sw.bb.2
  %218 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input239 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %218, i32 0, i32 2
  %219 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input239, align 8
  %token240 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %219, i32 0, i32 0
  %220 = load i32, i32* %token240, align 4
  %cmp241 = icmp ne i32 %220, 0
  br i1 %cmp241, label %do.body, label %do.end.242

do.end.242:                                       ; preds = %if.then, %do.cond.238
  ret void
}

declare i32 @TreeCCNextToken(%struct.TreeCCInput*) #1

; Function Attrs: nounwind uwtable
define internal void @ParseOperationCase(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %caseList = alloca %struct._tagTreeCCOperationCase*, align 8
  %code = alloca i8*, align 8
  %codeFilename = alloca i8*, align 8
  %codeLinenum = alloca i64, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %caseList, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.then.4, %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 0
  %3 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %call = call %struct._tagTreeCCOperationCase* @ParseOperationHeader(%struct._tagTreeCCContext* %4)
  store %struct._tagTreeCCOperationCase* %call, %struct._tagTreeCCOperationCase** %operCase, align 8
  %5 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool = icmp ne %struct._tagTreeCCOperationCase* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %caseList, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %nextHeader = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 9
  store %struct._tagTreeCCOperationCase* %6, %struct._tagTreeCCOperationCase** %nextHeader, align 8
  %8 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  store %struct._tagTreeCCOperationCase* %8, %struct._tagTreeCCOperationCase** %caseList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %9, i32 0, i32 0
  %10 = load i32, i32* %token2, align 4
  %cmp3 = icmp eq i32 %10, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %while.cond

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 0
  %13 = load i32, i32* %token6, align 4
  %cmp7 = icmp ne i32 %13, 11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  br label %while.end

if.end.9:                                         ; preds = %if.end.5
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call10 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %14)
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token11 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %15, i32 0, i32 0
  %16 = load i32, i32* %token11, align 4
  %cmp12 = icmp ne i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  br label %while.cond

while.end:                                        ; preds = %if.then.8, %while.cond
  %18 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %18, i32 0, i32 4
  %19 = load i8*, i8** %filename, align 8
  store i8* %19, i8** %codeFilename, align 8
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i32 0, i32 5
  %21 = load i64, i64* %linenum, align 8
  store i64 %21, i64* %codeLinenum, align 8
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token15 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %22, i32 0, i32 0
  %23 = load i32, i32* %token15, align 4
  %cmp16 = icmp eq i32 %23, 3
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.end
  %24 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call18 = call i8* @TreeCCValue(%struct.TreeCCInput* %24)
  store i8* %call18, i8** %code, align 8
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call19 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %25)
  br label %if.end.20

if.else:                                          ; preds = %while.end
  store i8* null, i8** %code, align 8
  %26 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %27 = load i8*, i8** %code, align 8
  %tobool21 = icmp ne i8* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end.20
  %28 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %caseList, align 8
  store %struct._tagTreeCCOperationCase* %28, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.25, %if.then.22
  %29 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp24 = icmp ne %struct._tagTreeCCOperationCase* %29, null
  br i1 %cmp24, label %while.body.25, label %while.end.30

while.body.25:                                    ; preds = %while.cond.23
  %30 = load i8*, i8** %code, align 8
  %31 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code26 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %31, i32 0, i32 1
  store i8* %30, i8** %code26, align 8
  %32 = load i8*, i8** %codeFilename, align 8
  %33 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename27 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %33, i32 0, i32 6
  store i8* %32, i8** %codeFilename27, align 8
  %34 = load i64, i64* %codeLinenum, align 8
  %35 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum28 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %35, i32 0, i32 7
  store i64 %34, i64* %codeLinenum28, align 8
  %36 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %nextHeader29 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %36, i32 0, i32 9
  %37 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %nextHeader29, align 8
  store %struct._tagTreeCCOperationCase* %37, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.23

while.end.30:                                     ; preds = %while.cond.23
  br label %if.end.31

if.end.31:                                        ; preds = %while.end.30, %if.end.20
  ret void
}

declare void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext*, i8*, i32) #1

declare i8* @TreeCCValue(%struct.TreeCCInput*) #1

declare void @TreeCCError(%struct.TreeCCInput*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @ParseNode(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %name = alloca i8*, align 8
  %parent = alloca i8*, align 8
  %flags = alloca i32, align 4
  %linenum = alloca i64, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  %fieldName = alloca i8*, align 8
  %fieldType = alloca i8*, align 8
  %fieldValue = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call = call i32 @TreeCCNextToken(%struct.TreeCCInput* %2)
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 5
  %4 = load i64, i64* %linenum2, align 8
  store i64 %4, i64* %linenum, align 8
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 0
  %6 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.114

if.end:                                           ; preds = %entry
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call3 = call i8* @TreeCCValue(%struct.TreeCCInput* %8)
  store i8* %call3, i8** %name, align 8
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call4 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %9)
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token5 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %10, i32 0, i32 0
  %11 = load i32, i32* %token5, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call8 = call i8* @TreeCCValue(%struct.TreeCCInput* %12)
  store i8* %call8, i8** %parent, align 8
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call9 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %13)
  br label %if.end.10

if.else:                                          ; preds = %if.end
  store i8* null, i8** %parent, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  store i32 0, i32* %flags, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %if.end.10
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token11 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %14, i32 0, i32 0
  %15 = load i32, i32* %token11, align 4
  %cmp12 = icmp eq i32 %15, 20
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %for.cond
  %16 = load i32, i32* %flags, align 4
  %or = or i32 %16, 2
  store i32 %or, i32* %flags, align 4
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call14 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %17)
  br label %if.end.23

if.else.15:                                       ; preds = %for.cond
  %18 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token16 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %18, i32 0, i32 0
  %19 = load i32, i32* %token16, align 4
  %cmp17 = icmp eq i32 %19, 21
  br i1 %cmp17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.else.15
  %20 = load i32, i32* %flags, align 4
  %or19 = or i32 %20, 4
  store i32 %or19, i32* %flags, align 4
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call20 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %21)
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.15
  br label %for.end

if.end.22:                                        ; preds = %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.13
  br label %for.cond

for.end:                                          ; preds = %if.else.21
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load i64, i64* %linenum, align 8
  %24 = load i8*, i8** %name, align 8
  %25 = load i8*, i8** %parent, align 8
  %26 = load i32, i32* %flags, align 4
  %call24 = call %struct._tagTreeCCNode* @TreeCCNodeCreate(%struct._tagTreeCCContext* %22, i64 %23, i8* %24, i8* %25, i32 %26)
  store %struct._tagTreeCCNode* %call24, %struct._tagTreeCCNode** %node, align 8
  %27 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token25 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %27, i32 0, i32 0
  %28 = load i32, i32* %token25, align 4
  %cmp26 = icmp eq i32 %28, 12
  br i1 %cmp26, label %if.then.27, label %if.end.114

if.then.27:                                       ; preds = %for.end
  %29 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %parseLiteral = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %29, i32 0, i32 9
  store i32 0, i32* %parseLiteral, align 4
  %30 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call28 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %30)
  %31 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %parseLiteral29 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %31, i32 0, i32 9
  store i32 1, i32* %parseLiteral29, align 4
  %32 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token30 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %32, i32 0, i32 0
  %33 = load i32, i32* %token30, align 4
  %cmp31 = icmp eq i32 %33, 7
  br i1 %cmp31, label %if.then.32, label %if.else.112

if.then.32:                                       ; preds = %if.then.27
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call33 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %34)
  br label %while.cond

while.cond:                                       ; preds = %if.end.109, %if.then.40, %if.then.32
  %35 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token34 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %35, i32 0, i32 0
  %36 = load i32, i32* %token34, align 4
  %cmp35 = icmp ne i32 %36, 8
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token36 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 0
  %38 = load i32, i32* %token36, align 4
  %cmp37 = icmp ne i32 %38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %39, label %while.body, label %while.end.110

while.body:                                       ; preds = %land.end
  %40 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token38 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %40, i32 0, i32 0
  %41 = load i32, i32* %token38, align 4
  %cmp39 = icmp eq i32 %41, 15
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %while.body
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call41 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %42)
  br label %while.cond

if.end.42:                                        ; preds = %while.body
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token43 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %43, i32 0, i32 0
  %44 = load i32, i32* %token43, align 4
  %cmp44 = icmp eq i32 %44, 23
  br i1 %cmp44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.end.42
  store i32 1, i32* %flags, align 4
  %45 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call46 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %45)
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.42
  store i32 0, i32* %flags, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.45
  %46 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @ParseTypeAndName(%struct.TreeCCInput* %46, i8** %fieldType, i8** %fieldName)
  %47 = load i8*, i8** %fieldType, align 8
  %tobool = icmp ne i8* %47, null
  br i1 %tobool, label %land.lhs.true, label %if.else.69

land.lhs.true:                                    ; preds = %if.end.48
  %48 = load i8*, i8** %fieldName, align 8
  %tobool49 = icmp ne i8* %48, null
  br i1 %tobool49, label %if.then.50, label %if.else.69

if.then.50:                                       ; preds = %land.lhs.true
  %49 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token51 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %49, i32 0, i32 0
  %50 = load i32, i32* %token51, align 4
  %cmp52 = icmp eq i32 %50, 12
  br i1 %cmp52, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %if.then.50
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call54 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %51)
  %52 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token55 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %52, i32 0, i32 0
  %53 = load i32, i32* %token55, align 4
  %cmp56 = icmp eq i32 %53, 3
  br i1 %cmp56, label %if.then.57, label %if.else.60

if.then.57:                                       ; preds = %if.then.53
  %54 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call58 = call i8* @TreeCCValue(%struct.TreeCCInput* %54)
  store i8* %call58, i8** %fieldValue, align 8
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call59 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %55)
  br label %if.end.61

if.else.60:                                       ; preds = %if.then.53
  %56 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %fieldValue, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.57
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.50
  store i8* null, i8** %fieldValue, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  %57 = load i8*, i8** %fieldValue, align 8
  %tobool64 = icmp ne i8* %57, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.68

land.lhs.true.65:                                 ; preds = %if.end.63
  %58 = load i32, i32* %flags, align 4
  %and = and i32 %58, 1
  %cmp66 = icmp eq i32 %and, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.65
  %59 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.65, %if.end.63
  %60 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %61 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %62 = load i8*, i8** %fieldName, align 8
  %63 = load i8*, i8** %fieldType, align 8
  %64 = load i8*, i8** %fieldValue, align 8
  %65 = load i32, i32* %flags, align 4
  call void @TreeCCFieldCreate(%struct._tagTreeCCContext* %60, %struct._tagTreeCCNode* %61, i8* %62, i8* %63, i8* %64, i32 %65)
  br label %if.end.95

if.else.69:                                       ; preds = %land.lhs.true, %if.end.48
  %66 = load i8*, i8** %fieldType, align 8
  %tobool70 = icmp ne i8* %66, null
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.69
  %67 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.73

if.else.72:                                       ; preds = %if.else.69
  %68 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.71
  %69 = load i8*, i8** %fieldType, align 8
  %tobool74 = icmp ne i8* %69, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %70 = load i8*, i8** %fieldType, align 8
  call void @free(i8* %70) #4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  %71 = load i8*, i8** %fieldName, align 8
  %tobool77 = icmp ne i8* %71, null
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  %72 = load i8*, i8** %fieldName, align 8
  call void @free(i8* %72) #4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.76
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.93, %if.end.79
  %73 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token81 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %73, i32 0, i32 0
  %74 = load i32, i32* %token81, align 4
  %cmp82 = icmp ne i32 %74, 15
  br i1 %cmp82, label %land.lhs.true.83, label %land.end.92

land.lhs.true.83:                                 ; preds = %while.cond.80
  %75 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token84 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %75, i32 0, i32 0
  %76 = load i32, i32* %token84, align 4
  %cmp85 = icmp ne i32 %76, 8
  br i1 %cmp85, label %land.lhs.true.86, label %land.end.92

land.lhs.true.86:                                 ; preds = %land.lhs.true.83
  %77 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token87 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %77, i32 0, i32 0
  %78 = load i32, i32* %token87, align 4
  %cmp88 = icmp ne i32 %78, 1
  br i1 %cmp88, label %land.rhs.89, label %land.end.92

land.rhs.89:                                      ; preds = %land.lhs.true.86
  %79 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token90 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %79, i32 0, i32 0
  %80 = load i32, i32* %token90, align 4
  %cmp91 = icmp ne i32 %80, 0
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.89, %land.lhs.true.86, %land.lhs.true.83, %while.cond.80
  %81 = phi i1 [ false, %land.lhs.true.86 ], [ false, %land.lhs.true.83 ], [ false, %while.cond.80 ], [ %cmp91, %land.rhs.89 ]
  br i1 %81, label %while.body.93, label %while.end

while.body.93:                                    ; preds = %land.end.92
  %82 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call94 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %82)
  br label %while.cond.80

while.end:                                        ; preds = %land.end.92
  br label %if.end.95

if.end.95:                                        ; preds = %while.end, %if.end.68
  %83 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token96 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %83, i32 0, i32 0
  %84 = load i32, i32* %token96, align 4
  %cmp97 = icmp eq i32 %84, 15
  br i1 %cmp97, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.end.95
  %85 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call99 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %85)
  br label %if.end.109

if.else.100:                                      ; preds = %if.end.95
  %86 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  %87 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token101 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %87, i32 0, i32 0
  %88 = load i32, i32* %token101, align 4
  %cmp102 = icmp ne i32 %88, 1
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.108

land.lhs.true.103:                                ; preds = %if.else.100
  %89 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token104 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %89, i32 0, i32 0
  %90 = load i32, i32* %token104, align 4
  %cmp105 = icmp ne i32 %90, 8
  br i1 %cmp105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %land.lhs.true.103
  %91 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call107 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %91)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %land.lhs.true.103, %if.else.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.98
  br label %while.cond

while.end.110:                                    ; preds = %land.end
  %92 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call111 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %92)
  br label %if.end.113

if.else.112:                                      ; preds = %if.then.27
  %93 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %while.end.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.then, %if.end.113, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ParseOperation(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %flags = alloca i32, align 4
  %returnType = alloca i8*, align 8
  %name = alloca i8*, align 8
  %className = alloca i8*, align 8
  %defValue = alloca i8*, align 8
  %params = alloca %struct._tagTreeCCParam*, align 8
  %lastParam = alloca %struct._tagTreeCCParam*, align 8
  %newParam = alloca %struct._tagTreeCCParam*, align 8
  %numTriggers = alloca i32, align 4
  %paramType = alloca i8*, align 8
  %paramName = alloca i8*, align 8
  %paramFlags = alloca i32, align 4
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  %filename = alloca i8*, align 8
  %linenum = alloca i64, align 8
  %typeNode = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  store %struct._tagTreeCCParam* null, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* null, %struct._tagTreeCCParam** %lastParam, align 8
  store i32 0, i32* %numTriggers, align 4
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call = call i32 @TreeCCNextToken(%struct.TreeCCInput* %2)
  store i32 0, i32* %flags, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %entry
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %4, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %5 = load i32, i32* %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, i32* %flags, align 4
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call2 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %6)
  br label %if.end.16

if.else:                                          ; preds = %for.cond
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 0
  %8 = load i32, i32* %token3, align 4
  %cmp4 = icmp eq i32 %8, 25
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %9 = load i32, i32* %flags, align 4
  %or6 = or i32 %9, 2
  store i32 %or6, i32* %flags, align 4
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call7 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %10)
  br label %if.end.15

if.else.8:                                        ; preds = %if.else
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token9 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 0
  %12 = load i32, i32* %token9, align 4
  %cmp10 = icmp eq i32 %12, 26
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else.8
  %13 = load i32, i32* %flags, align 4
  %or12 = or i32 %13, 4
  store i32 %or12, i32* %flags, align 4
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call13 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %14)
  br label %if.end

if.else.14:                                       ; preds = %if.else.8
  br label %for.end

if.end:                                           ; preds = %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  br label %for.cond

for.end:                                          ; preds = %if.else.14
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, 1
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.end
  %16 = load i32, i32* %flags, align 4
  %and18 = and i32 %16, 2
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0))
  %18 = load i32, i32* %flags, align 4
  %and21 = and i32 %18, -3
  store i32 %and21, i32* %flags, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %for.end
  %19 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @ParseTypeAndName(%struct.TreeCCInput* %19, i8** %returnType, i8** %name)
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename23 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i32 0, i32 4
  %21 = load i8*, i8** %filename23, align 8
  store i8* %21, i8** %filename, align 8
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum24 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %22, i32 0, i32 5
  %23 = load i64, i64* %linenum24, align 8
  store i64 %23, i64* %linenum, align 8
  %24 = load i8*, i8** %returnType, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.26

lor.lhs.false:                                    ; preds = %if.end.22
  %25 = load i8*, i8** %name, align 8
  %tobool25 = icmp ne i8* %25, null
  br i1 %tobool25, label %if.end.37, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.22
  %26 = load i8*, i8** %returnType, align 8
  %tobool27 = icmp ne i8* %26, null
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.26
  %27 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.30

if.else.29:                                       ; preds = %if.then.26
  %28 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %29 = load i8*, i8** %returnType, align 8
  %tobool31 = icmp ne i8* %29, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %30 = load i8*, i8** %returnType, align 8
  call void @free(i8* %30) #4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %31 = load i8*, i8** %name, align 8
  %tobool34 = icmp ne i8* %31, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %32 = load i8*, i8** %name, align 8
  call void @free(i8* %32) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.244

if.end.37:                                        ; preds = %lor.lhs.false
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token38 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %33, i32 0, i32 0
  %34 = load i32, i32* %token38, align 4
  %cmp39 = icmp eq i32 %34, 16
  br i1 %cmp39, label %if.then.40, label %if.else.48

if.then.40:                                       ; preds = %if.end.37
  %35 = load i8*, i8** %name, align 8
  store i8* %35, i8** %className, align 8
  %36 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call41 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %36)
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token42 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 0
  %38 = load i32, i32* %token42, align 4
  %cmp43 = icmp ne i32 %38, 1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  %39 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  %40 = load i8*, i8** %returnType, align 8
  call void @free(i8* %40) #4
  %41 = load i8*, i8** %className, align 8
  call void @free(i8* %41) #4
  br label %if.end.244

if.end.45:                                        ; preds = %if.then.40
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call46 = call i8* @TreeCCValue(%struct.TreeCCInput* %42)
  store i8* %call46, i8** %name, align 8
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call47 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %43)
  br label %if.end.49

if.else.48:                                       ; preds = %if.end.37
  store i8* null, i8** %className, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.end.45
  %44 = load i32, i32* %flags, align 4
  %and50 = and i32 %44, 1
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.63

land.lhs.true.52:                                 ; preds = %if.end.49
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %45, i32 0, i32 13
  %46 = load i32, i32* %language, align 4
  %cmp53 = icmp eq i32 %46, 3
  br i1 %cmp53, label %if.then.54, label %if.end.63

if.then.54:                                       ; preds = %land.lhs.true.52
  %47 = load i8*, i8** %className, align 8
  %tobool55 = icmp ne i8* %47, null
  br i1 %tobool55, label %if.else.57, label %if.then.56

if.then.56:                                       ; preds = %if.then.54
  %48 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %49 = load i8*, i8** %filename, align 8
  %50 = load i64, i64* %linenum, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %48, i8* %49, i64 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.62

if.else.57:                                       ; preds = %if.then.54
  %51 = load i8*, i8** %className, align 8
  %52 = load i8*, i8** %name, align 8
  %call58 = call i32 @strcmp(i8* %51, i8* %52) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.else.57
  %53 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %54 = load i8*, i8** %filename, align 8
  %55 = load i64, i64* %linenum, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %53, i8* %54, i64 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.52, %if.end.49
  %56 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token64 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %56, i32 0, i32 0
  %57 = load i32, i32* %token64, align 4
  %cmp65 = icmp eq i32 %57, 5
  br i1 %cmp65, label %if.then.66, label %if.else.137

if.then.66:                                       ; preds = %if.end.63
  %58 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call67 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %58)
  br label %while.cond

while.cond:                                       ; preds = %if.end.130, %if.then.66
  %59 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token68 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %59, i32 0, i32 0
  %60 = load i32, i32* %token68, align 4
  %cmp69 = icmp eq i32 %60, 1
  br i1 %cmp69, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %61 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token70 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %61, i32 0, i32 0
  %62 = load i32, i32* %token70, align 4
  %cmp71 = icmp eq i32 %62, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %63 = phi i1 [ true, %while.cond ], [ %cmp71, %lor.rhs ]
  br i1 %63, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %64 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token72 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %64, i32 0, i32 0
  %65 = load i32, i32* %token72, align 4
  %cmp73 = icmp eq i32 %65, 1
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %while.body
  store i32 0, i32* %paramFlags, align 4
  %66 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @ParseTypeAndName(%struct.TreeCCInput* %66, i8** %paramType, i8** %paramName)
  br label %if.end.83

if.else.75:                                       ; preds = %while.body
  store i32 1, i32* %paramFlags, align 4
  %67 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call76 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %67)
  %68 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @ParseTypeAndName(%struct.TreeCCInput* %68, i8** %paramType, i8** %paramName)
  %69 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token77 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %69, i32 0, i32 0
  %70 = load i32, i32* %token77, align 4
  %cmp78 = icmp eq i32 %70, 10
  br i1 %cmp78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.else.75
  %71 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call80 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %71)
  br label %if.end.82

if.else.81:                                       ; preds = %if.else.75
  %72 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.79
  %73 = load i32, i32* %numTriggers, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %numTriggers, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.74
  %74 = load i8*, i8** %paramType, align 8
  %tobool84 = icmp ne i8* %74, null
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  %75 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.117

if.else.86:                                       ; preds = %if.end.83
  %76 = load i8*, i8** %paramType, align 8
  %call87 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #5
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.else.93, label %if.then.89

if.then.89:                                       ; preds = %if.else.86
  %77 = load i8*, i8** %paramType, align 8
  call void @free(i8* %77) #4
  %78 = load i8*, i8** %paramName, align 8
  %tobool90 = icmp ne i8* %78, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.89
  %79 = load i8*, i8** %paramName, align 8
  call void @free(i8* %79) #4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.then.89
  br label %if.end.116

if.else.93:                                       ; preds = %if.else.86
  %call94 = call noalias i8* @malloc(i64 32) #4
  %80 = bitcast i8* %call94 to %struct._tagTreeCCParam*
  store %struct._tagTreeCCParam* %80, %struct._tagTreeCCParam** %newParam, align 8
  %81 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %tobool95 = icmp ne %struct._tagTreeCCParam* %81, null
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.else.93
  %82 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %82)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.else.93
  %83 = load i8*, i8** %paramName, align 8
  %84 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %name98 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %84, i32 0, i32 0
  store i8* %83, i8** %name98, align 8
  %85 = load i8*, i8** %paramType, align 8
  %86 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %86, i32 0, i32 1
  store i8* %85, i8** %type, align 8
  %87 = load i32, i32* %paramFlags, align 4
  %88 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %flags99 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %88, i32 0, i32 2
  store i32 %87, i32* %flags99, align 4
  %89 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %size = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %89, i32 0, i32 3
  store i32 0, i32* %size, align 4
  %90 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %90, i32 0, i32 4
  store %struct._tagTreeCCParam* null, %struct._tagTreeCCParam** %next, align 8
  %91 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %lastParam, align 8
  %tobool100 = icmp ne %struct._tagTreeCCParam* %91, null
  br i1 %tobool100, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %if.end.97
  %92 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  %93 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %lastParam, align 8
  %next102 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %93, i32 0, i32 4
  store %struct._tagTreeCCParam* %92, %struct._tagTreeCCParam** %next102, align 8
  br label %if.end.104

if.else.103:                                      ; preds = %if.end.97
  %94 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  store %struct._tagTreeCCParam* %94, %struct._tagTreeCCParam** %params, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.101
  %95 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  store %struct._tagTreeCCParam* %95, %struct._tagTreeCCParam** %lastParam, align 8
  %96 = load i32, i32* %paramFlags, align 4
  %and105 = and i32 %96, 1
  %cmp106 = icmp ne i32 %and105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.end.104
  %97 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %98 = load i8*, i8** %paramType, align 8
  %call108 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %97, i8* %98)
  store %struct._tagTreeCCNode* %call108, %struct._tagTreeCCNode** %typeNode, align 8
  %cmp109 = icmp eq %struct._tagTreeCCNode* %call108, null
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.then.107
  %99 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %100 = load i8*, i8** %paramType, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* %100)
  br label %if.end.114

if.else.111:                                      ; preds = %if.then.107
  %101 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %102 = load i8*, i8** %paramType, align 8
  %103 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %typeNode, align 8
  %104 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename112 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %104, i32 0, i32 4
  %105 = load i8*, i8** %filename112, align 8
  %106 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum113 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %106, i32 0, i32 5
  %107 = load i64, i64* %linenum113, align 8
  call void @ValidateSuffixes(%struct._tagTreeCCContext* %101, i8* %102, %struct._tagTreeCCNode* %103, i8* %105, i64 %107)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.104
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.92
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.85
  %108 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token118 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %108, i32 0, i32 0
  %109 = load i32, i32* %token118, align 4
  %cmp119 = icmp eq i32 %109, 11
  br i1 %cmp119, label %if.then.120, label %if.else.129

if.then.120:                                      ; preds = %if.end.117
  %110 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call121 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %110)
  %111 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token122 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %111, i32 0, i32 0
  %112 = load i32, i32* %token122, align 4
  %cmp123 = icmp ne i32 %112, 1
  br i1 %cmp123, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %if.then.120
  %113 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token125 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %113, i32 0, i32 0
  %114 = load i32, i32* %token125, align 4
  %cmp126 = icmp ne i32 %114, 9
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.124
  %115 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.124, %if.then.120
  br label %if.end.130

if.else.129:                                      ; preds = %if.end.117
  br label %while.end

if.end.130:                                       ; preds = %if.end.128
  br label %while.cond

while.end:                                        ; preds = %if.else.129, %lor.end
  %116 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token131 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %116, i32 0, i32 0
  %117 = load i32, i32* %token131, align 4
  %cmp132 = icmp eq i32 %117, 6
  br i1 %cmp132, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %while.end
  %118 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call134 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %118)
  br label %if.end.136

if.else.135:                                      ; preds = %while.end
  %119 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.133
  br label %if.end.138

if.else.137:                                      ; preds = %if.end.63
  %120 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.end.136
  %121 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token139 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %121, i32 0, i32 0
  %122 = load i32, i32* %token139, align 4
  %cmp140 = icmp eq i32 %122, 12
  br i1 %cmp140, label %if.then.141, label %if.else.150

if.then.141:                                      ; preds = %if.end.138
  %123 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call142 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %123)
  %124 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token143 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %124, i32 0, i32 0
  %125 = load i32, i32* %token143, align 4
  %cmp144 = icmp eq i32 %125, 3
  br i1 %cmp144, label %if.then.145, label %if.else.148

if.then.145:                                      ; preds = %if.then.141
  %126 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call146 = call i8* @TreeCCValue(%struct.TreeCCInput* %126)
  store i8* %call146, i8** %defValue, align 8
  %127 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call147 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %127)
  br label %if.end.149

if.else.148:                                      ; preds = %if.then.141
  %128 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  store i8* null, i8** %defValue, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.145
  br label %if.end.158

if.else.150:                                      ; preds = %if.end.138
  store i8* null, i8** %defValue, align 8
  %129 = load i32, i32* %flags, align 4
  %and151 = and i32 %129, 1
  %cmp152 = icmp eq i32 %and151, 0
  br i1 %cmp152, label %land.lhs.true.153, label %if.end.157

land.lhs.true.153:                                ; preds = %if.else.150
  %130 = load i8*, i8** %returnType, align 8
  %call154 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp155 = icmp ne i32 %call154, 0
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %land.lhs.true.153
  %131 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %land.lhs.true.153, %if.else.150
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.149
  %132 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token159 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %132, i32 0, i32 0
  %133 = load i32, i32* %token159, align 4
  %cmp160 = icmp eq i32 %133, 15
  br i1 %cmp160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.158
  %134 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call162 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %134)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.158
  %135 = load i32, i32* %numTriggers, align 4
  %cmp164 = icmp eq i32 %135, 0
  br i1 %cmp164, label %land.lhs.true.165, label %if.end.178

land.lhs.true.165:                                ; preds = %if.end.163
  %136 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %cmp166 = icmp ne %struct._tagTreeCCParam* %136, null
  br i1 %cmp166, label %if.then.167, label %if.end.178

if.then.167:                                      ; preds = %land.lhs.true.165
  store i32 1, i32* %numTriggers, align 4
  %137 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %flags168 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %137, i32 0, i32 2
  %138 = load i32, i32* %flags168, align 4
  %or169 = or i32 %138, 1
  store i32 %or169, i32* %flags168, align 4
  %139 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %140 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type170 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %140, i32 0, i32 1
  %141 = load i8*, i8** %type170, align 8
  %call171 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %139, i8* %141)
  store %struct._tagTreeCCNode* %call171, %struct._tagTreeCCNode** %typeNode, align 8
  %cmp172 = icmp eq %struct._tagTreeCCNode* %call171, null
  br i1 %cmp172, label %if.then.173, label %if.else.175

if.then.173:                                      ; preds = %if.then.167
  %142 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %143 = load i8*, i8** %filename, align 8
  %144 = load i64, i64* %linenum, align 8
  %145 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type174 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %145, i32 0, i32 1
  %146 = load i8*, i8** %type174, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %142, i8* %143, i64 %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* %146)
  br label %if.end.177

if.else.175:                                      ; preds = %if.then.167
  %147 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %148 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type176 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %148, i32 0, i32 1
  %149 = load i8*, i8** %type176, align 8
  %150 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %typeNode, align 8
  %151 = load i8*, i8** %filename, align 8
  %152 = load i64, i64* %linenum, align 8
  call void @ValidateSuffixes(%struct._tagTreeCCContext* %147, i8* %149, %struct._tagTreeCCNode* %150, i8* %151, i64 %152)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.175, %if.then.173
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.165, %if.end.163
  %153 = load i32, i32* %flags, align 4
  %and179 = and i32 %153, 1
  %cmp180 = icmp ne i32 %and179, 0
  br i1 %cmp180, label %if.then.181, label %if.end.210

if.then.181:                                      ; preds = %if.end.178
  %154 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %tobool182 = icmp ne %struct._tagTreeCCParam* %154, null
  br i1 %tobool182, label %lor.lhs.false.183, label %if.then.189

lor.lhs.false.183:                                ; preds = %if.then.181
  %155 = load i32, i32* %numTriggers, align 4
  %cmp184 = icmp ne i32 %155, 1
  br i1 %cmp184, label %if.then.189, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %lor.lhs.false.183
  %156 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %flags186 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %156, i32 0, i32 2
  %157 = load i32, i32* %flags186, align 4
  %and187 = and i32 %157, 1
  %cmp188 = icmp eq i32 %and187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.195

if.then.189:                                      ; preds = %lor.lhs.false.185, %lor.lhs.false.183, %if.then.181
  %158 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %tobool190 = icmp ne %struct._tagTreeCCParam* %158, null
  br i1 %tobool190, label %if.else.192, label %if.then.191

if.then.191:                                      ; preds = %if.then.189
  %159 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %159, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.193

if.else.192:                                      ; preds = %if.then.189
  %160 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %160, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.192, %if.then.191
  %161 = load i32, i32* %flags, align 4
  %and194 = and i32 %161, -2
  store i32 %and194, i32* %flags, align 4
  br label %if.end.209

if.else.195:                                      ; preds = %lor.lhs.false.185
  %162 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %163 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type196 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %163, i32 0, i32 1
  %164 = load i8*, i8** %type196, align 8
  %call197 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %162, i8* %164)
  store %struct._tagTreeCCNode* %call197, %struct._tagTreeCCNode** %typeNode, align 8
  %cmp198 = icmp eq %struct._tagTreeCCNode* %call197, null
  br i1 %cmp198, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.else.195
  %165 = load i32, i32* %flags, align 4
  %and200 = and i32 %165, -2
  store i32 %and200, i32* %flags, align 4
  br label %if.end.208

if.else.201:                                      ; preds = %if.else.195
  %166 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %typeNode, align 8
  %flags202 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %166, i32 0, i32 5
  %167 = load i32, i32* %flags202, align 4
  %and203 = and i32 %167, 8
  %cmp204 = icmp ne i32 %and203, 0
  br i1 %cmp204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.else.201
  %168 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %168, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i32 0, i32 0))
  %169 = load i32, i32* %flags, align 4
  %and206 = and i32 %169, -2
  store i32 %and206, i32* %flags, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.else.201
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.199
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.193
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.178
  %170 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %171 = load i8*, i8** %name, align 8
  %call211 = call %struct._tagTreeCCOperation* @TreeCCOperationFind(%struct._tagTreeCCContext* %170, i8* %171)
  store %struct._tagTreeCCOperation* %call211, %struct._tagTreeCCOperation** %oper, align 8
  %172 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %cmp212 = icmp ne %struct._tagTreeCCOperation* %172, null
  br i1 %cmp212, label %if.then.213, label %if.end.237

if.then.213:                                      ; preds = %if.end.210
  %173 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %174 = load i8*, i8** %filename, align 8
  %175 = load i64, i64* %linenum, align 8
  %176 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %173, i8* %174, i64 %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0), i8* %176)
  %177 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %178 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %filename214 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %178, i32 0, i32 7
  %179 = load i8*, i8** %filename214, align 8
  %180 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %linenum215 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %180, i32 0, i32 8
  %181 = load i64, i64* %linenum215, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %177, i8* %179, i64 %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0))
  %182 = load i8*, i8** %returnType, align 8
  call void @free(i8* %182) #4
  %183 = load i8*, i8** %name, align 8
  call void @free(i8* %183) #4
  %184 = load i8*, i8** %className, align 8
  %tobool216 = icmp ne i8* %184, null
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.then.213
  %185 = load i8*, i8** %className, align 8
  call void @free(i8* %185) #4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.then.213
  %186 = load i8*, i8** %defValue, align 8
  %tobool219 = icmp ne i8* %186, null
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.218
  %187 = load i8*, i8** %defValue, align 8
  call void @free(i8* %187) #4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.218
  br label %while.cond.222

while.cond.222:                                   ; preds = %if.end.235, %if.end.221
  %188 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %cmp223 = icmp ne %struct._tagTreeCCParam* %188, null
  br i1 %cmp223, label %while.body.224, label %while.end.236

while.body.224:                                   ; preds = %while.cond.222
  %189 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %next225 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %189, i32 0, i32 4
  %190 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next225, align 8
  store %struct._tagTreeCCParam* %190, %struct._tagTreeCCParam** %newParam, align 8
  %191 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %name226 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %191, i32 0, i32 0
  %192 = load i8*, i8** %name226, align 8
  %tobool227 = icmp ne i8* %192, null
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %while.body.224
  %193 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %name229 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %193, i32 0, i32 0
  %194 = load i8*, i8** %name229, align 8
  call void @free(i8* %194) #4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %while.body.224
  %195 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type231 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %195, i32 0, i32 1
  %196 = load i8*, i8** %type231, align 8
  %tobool232 = icmp ne i8* %196, null
  br i1 %tobool232, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.end.230
  %197 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type234 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %197, i32 0, i32 1
  %198 = load i8*, i8** %type234, align 8
  call void @free(i8* %198) #4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.end.230
  %199 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %200 = bitcast %struct._tagTreeCCParam* %199 to i8*
  call void @free(i8* %200) #4
  %201 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %newParam, align 8
  store %struct._tagTreeCCParam* %201, %struct._tagTreeCCParam** %params, align 8
  br label %while.cond.222

while.end.236:                                    ; preds = %while.cond.222
  br label %if.end.244

if.end.237:                                       ; preds = %if.end.210
  %202 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %203 = load i8*, i8** %returnType, align 8
  %204 = load i8*, i8** %name, align 8
  %205 = load i8*, i8** %className, align 8
  %206 = load i8*, i8** %defValue, align 8
  %207 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %208 = load i32, i32* %flags, align 4
  %209 = load i32, i32* %numTriggers, align 4
  %210 = load i8*, i8** %filename, align 8
  %211 = load i64, i64* %linenum, align 8
  %call238 = call %struct._tagTreeCCOperation* @TreeCCOperationCreate(%struct._tagTreeCCContext* %202, i8* %203, i8* %204, i8* %205, i8* %206, %struct._tagTreeCCParam* %207, i32 %208, i32 %209, i8* %210, i64 %211)
  store %struct._tagTreeCCOperation* %call238, %struct._tagTreeCCOperation** %oper, align 8
  %212 = load i32, i32* %flags, align 4
  %and239 = and i32 %212, 1
  %cmp240 = icmp ne i32 %and239, 0
  br i1 %cmp240, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %if.end.237
  %213 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %214 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %215 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  %type242 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %215, i32 0, i32 1
  %216 = load i8*, i8** %type242, align 8
  %call243 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %214, i8* %216)
  %217 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void @TreeCCNodeAddVirtual(%struct._tagTreeCCContext* %213, %struct._tagTreeCCNode* %call243, %struct._tagTreeCCOperation* %217)
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.36, %if.then.44, %while.end.236, %if.then.241, %if.end.237
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ParseOption(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %name = alloca i8*, align 8
  %value = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %linenum = alloca i64, align 8
  %optValue = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call = call i32 @TreeCCNextToken(%struct.TreeCCInput* %2)
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.45

if.end:                                           ; preds = %entry
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call2 = call i8* @TreeCCValue(%struct.TreeCCInput* %6)
  store i8* %call2, i8** %name, align 8
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 4
  %8 = load i8*, i8** %filename3, align 8
  store i8* %8, i8** %filename, align 8
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum4 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %9, i32 0, i32 5
  %10 = load i64, i64* %linenum4, align 8
  store i64 %10, i64* %linenum, align 8
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call5 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %11)
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 0
  %13 = load i32, i32* %token6, align 4
  %cmp7 = icmp eq i32 %13, 12
  br i1 %cmp7, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call9 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %14)
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %15, i32 0, i32 0
  %16 = load i32, i32* %token10, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 0
  %18 = load i32, i32* %token12, align 4
  %cmp13 = icmp eq i32 %18, 17
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.8
  %19 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call15 = call i8* @TreeCCValue(%struct.TreeCCInput* %19)
  store i8* %call15, i8** %value, align 8
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call16 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %20)
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0))
  store i8* null, i8** %value, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  br label %if.end.19

if.else.18:                                       ; preds = %if.end
  store i8* null, i8** %value, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end.17
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.19
  %23 = load i8*, i8** %value, align 8
  %tobool21 = icmp ne i8* %23, null
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.then.20
  %24 = load i64, i64* %linenum, align 8
  %25 = load i8*, i8** %name, align 8
  %26 = load i8*, i8** %value, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* %25, i8* %26)
  br label %if.end.24

if.else.23:                                       ; preds = %if.then.20
  %27 = load i64, i64* %linenum, align 8
  %28 = load i8*, i8** %name, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.19
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %30 = load i8*, i8** %name, align 8
  %31 = load i8*, i8** %value, align 8
  %call26 = call i32 @TreeCCOptionProcess(%struct._tagTreeCCContext* %29, i8* %30, i8* %31)
  store i32 %call26, i32* %optValue, align 4
  %32 = load i32, i32* %optValue, align 4
  %cmp27 = icmp eq i32 %32, 2
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %34 = load i8*, i8** %filename, align 8
  %35 = load i64, i64* %linenum, align 8
  %36 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %33, i8* %34, i64 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8* %36)
  br label %if.end.41

if.else.29:                                       ; preds = %if.end.25
  %37 = load i32, i32* %optValue, align 4
  %cmp30 = icmp eq i32 %37, 3
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.29
  %38 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %39 = load i8*, i8** %filename, align 8
  %40 = load i64, i64* %linenum, align 8
  %41 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %38, i8* %39, i64 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), i8* %41)
  br label %if.end.40

if.else.32:                                       ; preds = %if.else.29
  %42 = load i32, i32* %optValue, align 4
  %cmp33 = icmp eq i32 %42, 4
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.32
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %44 = load i8*, i8** %filename, align 8
  %45 = load i64, i64* %linenum, align 8
  %46 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %43, i8* %44, i64 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %46)
  br label %if.end.39

if.else.35:                                       ; preds = %if.else.32
  %47 = load i32, i32* %optValue, align 4
  %cmp36 = icmp eq i32 %47, 5
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.35
  %48 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %49 = load i8*, i8** %filename, align 8
  %50 = load i64, i64* %linenum, align 8
  %51 = load i8*, i8** %name, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %48, i8* %49, i64 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0), i8* %51)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.28
  %52 = load i8*, i8** %name, align 8
  call void @free(i8* %52) #4
  %53 = load i32, i32* %optValue, align 4
  %cmp42 = icmp ne i32 %53, 1
  br i1 %cmp42, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.41
  %54 = load i8*, i8** %value, align 8
  %tobool43 = icmp ne i8* %54, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true
  %55 = load i8*, i8** %value, align 8
  call void @free(i8* %55) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then, %if.then.44, %land.lhs.true, %if.end.41
  ret void
}

declare %struct._tagTreeCCStream* @TreeCCStreamCreate(%struct._tagTreeCCContext*, i8*, i8*, i32) #1

declare i8* @TreeCCResolvePathname(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ParseEnum(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %name = alloca i8*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  %sawValue = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call = call i32 @TreeCCNextToken(%struct.TreeCCInput* %2)
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 0
  %4 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.46

if.end:                                           ; preds = %entry
  %6 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call2 = call i8* @TreeCCValue(%struct.TreeCCInput* %6)
  store i8* %call2, i8** %name, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 5
  %9 = load i64, i64* %linenum, align 8
  %10 = load i8*, i8** %name, align 8
  %call3 = call %struct._tagTreeCCNode* @TreeCCNodeCreate(%struct._tagTreeCCContext* %7, i64 %9, i8* %10, i8* null, i32 14)
  store %struct._tagTreeCCNode* %call3, %struct._tagTreeCCNode** %node, align 8
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call4 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %11)
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token5 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 0
  %13 = load i32, i32* %token5, align 4
  %cmp6 = icmp ne i32 %13, 12
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.46

if.end.8:                                         ; preds = %if.end
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %parseLiteral = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %15, i32 0, i32 9
  store i32 0, i32* %parseLiteral, align 4
  %16 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call9 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %16)
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %parseLiteral10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 9
  store i32 1, i32* %parseLiteral10, align 4
  %18 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token11 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %18, i32 0, i32 0
  %19 = load i32, i32* %token11, align 4
  %cmp12 = icmp ne i32 %19, 7
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.46

if.end.14:                                        ; preds = %if.end.8
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call15 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %21)
  store i32 0, i32* %sawValue, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end.14
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token16 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %22, i32 0, i32 0
  %23 = load i32, i32* %token16, align 4
  %cmp17 = icmp eq i32 %23, 1
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum18 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %25, i32 0, i32 5
  %26 = load i64, i64* %linenum18, align 8
  %27 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call19 = call i8* @TreeCCValue(%struct.TreeCCInput* %27)
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %28, i32 0, i32 4
  %29 = load i8*, i8** %name20, align 8
  %call21 = call i8* @TreeCCDupString(i8* %29)
  %call22 = call %struct._tagTreeCCNode* @TreeCCNodeCreate(%struct._tagTreeCCContext* %24, i64 %26, i8* %call19, i8* %call21, i32 16)
  store i32 1, i32* %sawValue, align 4
  %30 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call23 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %30)
  %31 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token24 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %31, i32 0, i32 0
  %32 = load i32, i32* %token24, align 4
  %cmp25 = icmp eq i32 %32, 11
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %while.body
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call27 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %33)
  br label %if.end.33

if.else:                                          ; preds = %while.body
  %34 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token28 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %34, i32 0, i32 0
  %35 = load i32, i32* %token28, align 4
  %cmp29 = icmp eq i32 %35, 1
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else
  %36 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.32

if.else.31:                                       ; preds = %if.else
  br label %while.end

if.end.32:                                        ; preds = %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.26
  br label %while.cond

while.end:                                        ; preds = %if.else.31, %while.cond
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token34 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 0
  %38 = load i32, i32* %token34, align 4
  %cmp35 = icmp eq i32 %38, 11
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %39 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call37 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  %40 = load i32, i32* %sawValue, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.38
  %41 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.38
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token41 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %42, i32 0, i32 0
  %43 = load i32, i32* %token41, align 4
  %cmp42 = icmp eq i32 %43, 8
  br i1 %cmp42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.40
  %44 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call44 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %44)
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.40
  %45 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then, %if.then.7, %if.then.13, %if.else.45, %if.then.43
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #1

declare void @TreeCCOpen(%struct.TreeCCInput*, i8*, %struct._IO_FILE*, i8*) #1

declare void @TreeCCClose(%struct.TreeCCInput*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._tagTreeCCOperationCase* @ParseOperationHeader(%struct._tagTreeCCContext* %context) #0 {
entry:
  %retval = alloca %struct._tagTreeCCOperationCase*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %input = alloca %struct.TreeCCInput*, align 8
  %triggers = alloca %struct._tagTreeCCTrigger*, align 8
  %lastTrigger = alloca %struct._tagTreeCCTrigger*, align 8
  %newTrigger = alloca %struct._tagTreeCCTrigger*, align 8
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  %fatalError = alloca i32, align 4
  %numTriggers = alloca i32, align 4
  %filename = alloca i8*, align 8
  %linenum = alloca i64, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %reportedError = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 2
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input1, align 8
  store %struct.TreeCCInput* %1, %struct.TreeCCInput** %input, align 8
  store %struct._tagTreeCCTrigger* null, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* null, %struct._tagTreeCCTrigger** %lastTrigger, align 8
  store i32 0, i32* %fatalError, align 4
  store i32 0, i32* %numTriggers, align 4
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %filename2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 4
  %3 = load i8*, i8** %filename2, align 8
  store i8* %3, i8** %filename, align 8
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 5
  %5 = load i64, i64* %linenum3, align 8
  store i64 %5, i64* %linenum, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %text = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %7, i32 0, i32 1
  %8 = load i8*, i8** %text, align 8
  %call = call %struct._tagTreeCCOperation* @TreeCCOperationFind(%struct._tagTreeCCContext* %6, i8* %8)
  store %struct._tagTreeCCOperation* %call, %struct._tagTreeCCOperation** %oper, align 8
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %tobool = icmp ne %struct._tagTreeCCOperation* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %text4 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %11, i32 0, i32 1
  %12 = load i8*, i8** %text4, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %12)
  store i32 1, i32* %fatalError, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call5 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %13)
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %14, i32 0, i32 0
  %15 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %15, 5
  br i1 %cmp, label %if.then.6, label %if.else.46

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call7 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %16)
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then.6
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token8 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 0
  %18 = load i32, i32* %token8, align 4
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %numTriggers, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %numTriggers, align 4
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %text10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %21, i32 0, i32 1
  %22 = load i8*, i8** %text10, align 8
  %call11 = call %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext* %20, i8* %22)
  store %struct._tagTreeCCNode* %call11, %struct._tagTreeCCNode** %node, align 8
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool12 = icmp ne %struct._tagTreeCCNode* %23, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %while.body
  %24 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %text14 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %25, i32 0, i32 1
  %26 = load i8*, i8** %text14, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i8* %26)
  store i32 1, i32* %fatalError, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %while.body
  %call16 = call noalias i8* @malloc(i64 16) #4
  %27 = bitcast i8* %call16 to %struct._tagTreeCCTrigger*
  store %struct._tagTreeCCTrigger* %27, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %tobool17 = icmp ne %struct._tagTreeCCTrigger* %28, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %29 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %29)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %31 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %node20 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %31, i32 0, i32 0
  store %struct._tagTreeCCNode* %30, %struct._tagTreeCCNode** %node20, align 8
  %32 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %32, i32 0, i32 1
  store %struct._tagTreeCCTrigger* null, %struct._tagTreeCCTrigger** %next, align 8
  %33 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %lastTrigger, align 8
  %tobool21 = icmp ne %struct._tagTreeCCTrigger* %33, null
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %34 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %35 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %lastTrigger, align 8
  %next23 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %35, i32 0, i32 1
  store %struct._tagTreeCCTrigger* %34, %struct._tagTreeCCTrigger** %next23, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %36 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  store %struct._tagTreeCCTrigger* %36, %struct._tagTreeCCTrigger** %triggers, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %37 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  store %struct._tagTreeCCTrigger* %37, %struct._tagTreeCCTrigger** %lastTrigger, align 8
  %38 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call25 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %38)
  %39 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token26 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %39, i32 0, i32 0
  %40 = load i32, i32* %token26, align 4
  %cmp27 = icmp eq i32 %40, 11
  br i1 %cmp27, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %if.end.24
  %41 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call29 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %41)
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token30 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %42, i32 0, i32 0
  %43 = load i32, i32* %token30, align 4
  %cmp31 = icmp ne i32 %43, 1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.28
  %44 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.28
  br label %if.end.39

if.else.34:                                       ; preds = %if.end.24
  %45 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token35 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %45, i32 0, i32 0
  %46 = load i32, i32* %token35, align 4
  %cmp36 = icmp ne i32 %46, 6
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.34
  %47 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.34
  br label %while.end

if.end.39:                                        ; preds = %if.end.33
  br label %while.cond

while.end:                                        ; preds = %if.end.38, %while.cond
  %48 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %token40 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %48, i32 0, i32 0
  %49 = load i32, i32* %token40, align 4
  %cmp41 = icmp eq i32 %49, 6
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %while.end
  %50 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %call43 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %50)
  br label %if.end.45

if.else.44:                                       ; preds = %while.end
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.42
  br label %if.end.47

if.else.46:                                       ; preds = %if.end
  %52 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  %53 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %tobool48 = icmp ne %struct._tagTreeCCOperation* %53, null
  br i1 %tobool48, label %if.then.49, label %if.end.84

if.then.49:                                       ; preds = %if.end.47
  %54 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %numTriggers50 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %54, i32 0, i32 6
  %55 = load i32, i32* %numTriggers50, align 4
  %56 = load i32, i32* %numTriggers, align 4
  %cmp51 = icmp ne i32 %55, %56
  br i1 %cmp51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.then.49
  %57 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %58 = load i8*, i8** %filename, align 8
  %59 = load i64, i64* %linenum, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %57, i8* %58, i64 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0))
  %60 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %61 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %filename53 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %61, i32 0, i32 7
  %62 = load i8*, i8** %filename53, align 8
  %63 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %linenum54 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %63, i32 0, i32 8
  %64 = load i64, i64* %linenum54, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %60, i8* %62, i64 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %fatalError, align 4
  br label %if.end.83

if.else.55:                                       ; preds = %if.then.49
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %65, i32 0, i32 4
  %66 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %66, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %reportedError, align 4
  %67 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %67, %struct._tagTreeCCTrigger** %newTrigger, align 8
  br label %while.cond.56

while.cond.56:                                    ; preds = %if.end.75, %if.else.55
  %68 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp57 = icmp ne %struct._tagTreeCCParam* %68, null
  br i1 %cmp57, label %while.body.58, label %while.end.77

while.body.58:                                    ; preds = %while.cond.56
  %69 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %69, i32 0, i32 2
  %70 = load i32, i32* %flags, align 4
  %and = and i32 %70, 1
  %cmp59 = icmp ne i32 %and, 0
  br i1 %cmp59, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %while.body.58
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %72 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %72, i32 0, i32 1
  %73 = load i8*, i8** %type, align 8
  %call61 = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %71, i8* %73)
  store %struct._tagTreeCCNode* %call61, %struct._tagTreeCCNode** %node, align 8
  %74 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool62 = icmp ne %struct._tagTreeCCNode* %74, null
  br i1 %tobool62, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.then.60
  %75 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %node63 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %75, i32 0, i32 0
  %76 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node63, align 8
  %77 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %call64 = call i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode* %76, %struct._tagTreeCCNode* %77)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.73, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true
  %78 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %node67 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %78, i32 0, i32 0
  %79 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node67, align 8
  %tobool68 = icmp ne %struct._tagTreeCCNode* %79, null
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.then.66
  %80 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %81 = load i8*, i8** %filename, align 8
  %82 = load i64, i64* %linenum, align 8
  %83 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %node70 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %83, i32 0, i32 0
  %84 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node70, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %84, i32 0, i32 4
  %85 = load i8*, i8** %name, align 8
  %86 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %name71 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %86, i32 0, i32 4
  %87 = load i8*, i8** %name71, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %80, i8* %81, i64 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i8* %85, i8* %87)
  store i32 1, i32* %reportedError, align 4
  store i32 1, i32* %fatalError, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.then.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.then.60
  %88 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %next74 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %88, i32 0, i32 1
  %89 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next74, align 8
  store %struct._tagTreeCCTrigger* %89, %struct._tagTreeCCTrigger** %newTrigger, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.73, %while.body.58
  %90 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next76 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %90, i32 0, i32 4
  %91 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next76, align 8
  store %struct._tagTreeCCParam* %91, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.56

while.end.77:                                     ; preds = %while.cond.56
  %92 = load i32, i32* %reportedError, align 4
  %tobool78 = icmp ne i32 %92, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %while.end.77
  %93 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %94 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %filename80 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %94, i32 0, i32 7
  %95 = load i8*, i8** %filename80, align 8
  %96 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %linenum81 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %96, i32 0, i32 8
  %97 = load i64, i64* %linenum81, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %93, i8* %95, i64 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %while.end.77
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.52
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.47
  %98 = load i32, i32* %fatalError, align 4
  %tobool85 = icmp ne i32 %98, 0
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.84
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.89, %if.then.86
  %99 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  %cmp88 = icmp ne %struct._tagTreeCCTrigger* %99, null
  br i1 %cmp88, label %while.body.89, label %while.end.91

while.body.89:                                    ; preds = %while.cond.87
  %100 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  %next90 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %100, i32 0, i32 1
  %101 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next90, align 8
  store %struct._tagTreeCCTrigger* %101, %struct._tagTreeCCTrigger** %newTrigger, align 8
  %102 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  %103 = bitcast %struct._tagTreeCCTrigger* %102 to i8*
  call void @free(i8* %103) #4
  %104 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %newTrigger, align 8
  store %struct._tagTreeCCTrigger* %104, %struct._tagTreeCCTrigger** %triggers, align 8
  br label %while.cond.87

while.end.91:                                     ; preds = %while.cond.87
  store %struct._tagTreeCCOperationCase* null, %struct._tagTreeCCOperationCase** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.84
  %105 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %106 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %107 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  %108 = load i8*, i8** %filename, align 8
  %109 = load i64, i64* %linenum, align 8
  %call93 = call %struct._tagTreeCCOperationCase* @TreeCCOperationAddCase(%struct._tagTreeCCContext* %105, %struct._tagTreeCCOperation* %106, %struct._tagTreeCCTrigger* %107, i8* %108, i64 %109)
  store %struct._tagTreeCCOperationCase* %call93, %struct._tagTreeCCOperationCase** %retval
  br label %return

return:                                           ; preds = %if.end.92, %while.end.91
  %110 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %retval
  ret %struct._tagTreeCCOperationCase* %110
}

declare %struct._tagTreeCCOperation* @TreeCCOperationFind(%struct._tagTreeCCContext*, i8*) #1

declare %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext*, i8*) #1

declare void @TreeCCErrorOnLine(%struct.TreeCCInput*, i8*, i64, i8*, ...) #1

declare %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext*, i8*) #1

declare i32 @TreeCCNodeInheritsFrom(%struct._tagTreeCCNode*, %struct._tagTreeCCNode*) #1

declare %struct._tagTreeCCOperationCase* @TreeCCOperationAddCase(%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*, %struct._tagTreeCCTrigger*, i8*, i64) #1

declare %struct._tagTreeCCNode* @TreeCCNodeCreate(%struct._tagTreeCCContext*, i64, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ParseTypeAndName(%struct.TreeCCInput* %input, i8** %type, i8** %name) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %type.addr = alloca i8**, align 8
  %name.addr = alloca i8**, align 8
  %tempType = alloca i8*, align 8
  %last = alloca i8*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8** %type, i8*** %type.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i32 0, i32 0
  %1 = load i32, i32* %token, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  %3 = load i8**, i8*** %type.addr, align 8
  store i8* null, i8** %3, align 8
  %4 = load i8**, i8*** %name.addr, align 8
  store i8* null, i8** %4, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %tempType, align 8
  store i8* null, i8** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %5 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token1 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %5, i32 0, i32 0
  %6 = load i32, i32* %token1, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %tempType, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %while.body
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call = call i8* @TreeCCValue(%struct.TreeCCInput* %8)
  store i8* %call, i8** %tempType, align 8
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %9 = load i8*, i8** %last, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.else.7, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call6 = call i8* @TreeCCValue(%struct.TreeCCInput* %10)
  store i8* %call6, i8** %last, align 8
  br label %if.end.10

if.else.7:                                        ; preds = %if.else
  %11 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %12 = load i8*, i8** %tempType, align 8
  %13 = load i8*, i8** %last, align 8
  %call8 = call i8* @AppendStrings(%struct.TreeCCInput* %11, i8* %12, i8* %13, i32 1, i32 1)
  store i8* %call8, i8** %tempType, align 8
  %14 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call9 = call i8* @TreeCCValue(%struct.TreeCCInput* %14)
  store i8* %call9, i8** %last, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call12 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %15)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %last, align 8
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.end
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token14 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 0
  %18 = load i32, i32* %token14, align 4
  %cmp15 = icmp eq i32 %18, 13
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token16 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %19, i32 0, i32 0
  %20 = load i32, i32* %token16, align 4
  %cmp17 = icmp eq i32 %20, 14
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %21 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token19 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %21, i32 0, i32 0
  %22 = load i32, i32* %token19, align 4
  %cmp20 = icmp eq i32 %22, 9
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %land.lhs.true
  %23 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %24 = load i8*, i8** %tempType, align 8
  %25 = load i8*, i8** %last, align 8
  %call22 = call i8* @AppendStrings(%struct.TreeCCInput* %23, i8* %24, i8* %25, i32 1, i32 1)
  store i8* %call22, i8** %tempType, align 8
  store i8* null, i8** %last, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %lor.lhs.false.18, %while.end
  br label %while.cond.24

while.cond.24:                                    ; preds = %if.end.50, %if.then.47, %if.end.23
  %26 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token25 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %26, i32 0, i32 0
  %27 = load i32, i32* %token25, align 4
  %cmp26 = icmp eq i32 %27, 13
  br i1 %cmp26, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %while.cond.24
  %28 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token28 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %28, i32 0, i32 0
  %29 = load i32, i32* %token28, align 4
  %cmp29 = icmp eq i32 %29, 14
  br i1 %cmp29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.27
  %30 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token30 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %30, i32 0, i32 0
  %31 = load i32, i32* %token30, align 4
  %cmp31 = icmp eq i32 %31, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.27, %while.cond.24
  %32 = phi i1 [ true, %lor.lhs.false.27 ], [ true, %while.cond.24 ], [ %cmp31, %lor.rhs ]
  br i1 %32, label %while.body.32, label %while.end.52

while.body.32:                                    ; preds = %lor.end
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token33 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %33, i32 0, i32 0
  %34 = load i32, i32* %token33, align 4
  %cmp34 = icmp eq i32 %34, 13
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %while.body.32
  %35 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %36 = load i8*, i8** %tempType, align 8
  %call36 = call i8* @AppendStrings(%struct.TreeCCInput* %35, i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 0)
  store i8* %call36, i8** %tempType, align 8
  br label %if.end.50

if.else.37:                                       ; preds = %while.body.32
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token38 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 0
  %38 = load i32, i32* %token38, align 4
  %cmp39 = icmp eq i32 %38, 14
  br i1 %cmp39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.37
  %39 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %40 = load i8*, i8** %tempType, align 8
  %call41 = call i8* @AppendStrings(%struct.TreeCCInput* %39, i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 0)
  store i8* %call41, i8** %tempType, align 8
  br label %if.end.49

if.else.42:                                       ; preds = %if.else.37
  %41 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %42 = load i8*, i8** %tempType, align 8
  %call43 = call i8* @AppendStrings(%struct.TreeCCInput* %41, i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0)
  store i8* %call43, i8** %tempType, align 8
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call44 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %43)
  %44 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token45 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %44, i32 0, i32 0
  %45 = load i32, i32* %token45, align 4
  %cmp46 = icmp ne i32 %45, 10
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else.42
  %46 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void (%struct.TreeCCInput*, i8*, ...) @TreeCCError(%struct.TreeCCInput* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0))
  br label %while.cond.24

if.end.48:                                        ; preds = %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.35
  %47 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call51 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %47)
  br label %while.cond.24

while.end.52:                                     ; preds = %lor.end
  %48 = load i8*, i8** %last, align 8
  %tobool53 = icmp ne i8* %48, null
  br i1 %tobool53, label %if.end.60, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %while.end.52
  %49 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %token55 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %49, i32 0, i32 0
  %50 = load i32, i32* %token55, align 4
  %cmp56 = icmp eq i32 %50, 1
  br i1 %cmp56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %land.lhs.true.54
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call58 = call i8* @TreeCCValue(%struct.TreeCCInput* %51)
  store i8* %call58, i8** %last, align 8
  %52 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %call59 = call i32 @TreeCCNextToken(%struct.TreeCCInput* %52)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %land.lhs.true.54, %while.end.52
  %53 = load i8*, i8** %tempType, align 8
  %54 = load i8**, i8*** %type.addr, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %last, align 8
  %56 = load i8**, i8*** %name.addr, align 8
  store i8* %55, i8** %56, align 8
  br label %return

return:                                           ; preds = %if.end.60, %if.then
  ret void
}

declare void @TreeCCFieldCreate(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @AppendStrings(%struct.TreeCCInput* %input, i8* %str1, i8* %str2, i32 %sep, i32 %free2) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %sep.addr = alloca i32, align 4
  %free2.addr = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i32 %sep, i32* %sep.addr, align 4
  store i32 %free2, i32* %free2.addr, align 4
  %0 = load i8*, i8** %str1.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %str2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* %len2, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %sep.addr, align 4
  %add3 = add nsw i32 %add, %4
  %add4 = add nsw i32 %add3, 1
  store i32 %add4, i32* %len, align 4
  %5 = load i8*, i8** %str1.addr, align 8
  %6 = load i32, i32* %len, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call i8* @realloc(i8* %5, i64 %conv5) #4
  store i8* %call6, i8** %value, align 8
  %7 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %sep.addr, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %10 = load i32, i32* %len1, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %value, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  %12 = load i8*, i8** %value, align 8
  %13 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %14 = load i8*, i8** %str2.addr, align 8
  %call10 = call i8* @strcpy(i8* %add.ptr9, i8* %14) #4
  %15 = load i32, i32* %len1, align 4
  %16 = load i32, i32* %len2, align 4
  %add11 = add nsw i32 %15, %16
  %add12 = add nsw i32 %add11, 1
  %idxprom13 = sext i32 %add12 to i64
  %17 = load i8*, i8** %value, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %18 = load i8*, i8** %value, align 8
  %19 = load i32, i32* %len1, align 4
  %idx.ext15 = sext i32 %19 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 %idx.ext15
  %20 = load i8*, i8** %str2.addr, align 8
  %call17 = call i8* @strcpy(i8* %add.ptr16, i8* %20) #4
  %21 = load i32, i32* %len1, align 4
  %22 = load i32, i32* %len2, align 4
  %add18 = add nsw i32 %21, %22
  %idxprom19 = sext i32 %add18 to i64
  %23 = load i8*, i8** %value, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %idxprom19
  store i8 0, i8* %arrayidx20, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.8
  %24 = load i32, i32* %free2.addr, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %25 = load i8*, i8** %str2.addr, align 8
  call void @free(i8* %25) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %26 = load i8*, i8** %value, align 8
  ret i8* %26
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @ValidateSuffixes(%struct._tagTreeCCContext* %context, i8* %type, %struct._tagTreeCCNode* %node, i8* %filename, i64 %linenum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %type.addr = alloca i8*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %len = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  %0 = load i8*, i8** %type.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 13
  %2 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 13
  %4 = load i32, i32* %language2, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then, label %if.end.27

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 5
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 8
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 5
  %8 = load i32, i32* %flags7, align 4
  %and8 = and i32 %8, 16
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.26

if.then.11:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %len, align 4
  %cmp12 = icmp slt i32 %9, 2
  br i1 %cmp12, label %if.then.25, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.then.11
  %10 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8*, i8** %type.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp ne i32 %conv15, 42
  br i1 %cmp16, label %if.then.25, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %13 = load i32, i32* %len, align 4
  %sub19 = sub nsw i32 %13, 2
  %idxprom20 = sext i32 %sub19 to i64
  %14 = load i8*, i8** %type.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 %idxprom20
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp ne i32 %conv22, 32
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.14, %if.then.11
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 2
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %18 = load i8*, i8** %filename.addr, align 8
  %19 = load i64, i64* %linenum.addr, align 8
  call void (%struct.TreeCCInput*, i8*, i64, i8*, ...) @TreeCCErrorOnLine(%struct.TreeCCInput* %17, i8* %18, i64 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.25, %lor.lhs.false.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  ret void
}

declare %struct._tagTreeCCOperation* @TreeCCOperationCreate(%struct._tagTreeCCContext*, i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64) #1

declare void @TreeCCNodeAddVirtual(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, %struct._tagTreeCCOperation*) #1

declare void @TreeCCDebug(i64, i8*, ...) #1

declare i32 @TreeCCOptionProcess(%struct._tagTreeCCContext*, i8*, i8*) #1

declare i8* @TreeCCDupString(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
