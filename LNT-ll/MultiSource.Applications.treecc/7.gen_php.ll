; ModuleID = './MultiSource.Applications.treecc/7.gen_php.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeCCNonVirtual = type { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }

@TreeCCNonVirtualFuncsPHP = constant %struct.TreeCCNonVirtual { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @PHP_GenStart, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @PHP_GenEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)* @PHP_GenSplitEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)* @PHP_GenSwitchHead, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)* @PHP_GenSelector, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @PHP_GenEndSelectors, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @PHP_GenCaseFunc, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @PHP_GenCaseCall, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @PHP_GenCaseInline, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @PHP_GenCaseSplit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @PHP_GenEndCase, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @PHP_GenEndSwitch, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @PHP_GenExit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @PHP_GenEnd }, align 8
@.str = private unnamed_addr constant [12 x i8] c"class %s\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"    function %s_split_%d__(&\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    function %s(&\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"$%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"$P%d__\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"switch($%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"switch($%s__->getKind())\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"case %s_%s:\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"case %s_KIND:\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"    function %s_%d__(&\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_%d__(\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"$%s = %s__;\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_split_%d__(\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"    return (%s);\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"    return 0;\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"<?php\0A\0A/* %s.  Generated automatically by treecc */\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"define('%s_%s',%d);\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"class %s\0A{\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"    function &getState()\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"        static $state = null;\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"        if($state != null) return $state;\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"        $state = new %s();\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"        return $state;\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"    }\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"    function currFilename() { return null; }\0A\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"    function currLinenum() { return 0; }\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"    function %sCreate(\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"        return new %s($this\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"define('%s_KIND',%d);\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"define('%s_KIND', %d);\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"class %s extends %s\0A{\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"    var $kind__;\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"    var $filename__;\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"    var $linenum__;\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"    function getKind() { return $this->kind__; }\0A\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"    function getFilename() { return $this->filename__; }\0A\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"    function getLinenum() { return $this->linenum__; }\0A\00", align 1
@.str.59 = private unnamed_addr constant [72 x i8] c"    function setFilename($filename) { $this->filename__ = $filename; }\0A\00", align 1
@.str.60 = private unnamed_addr constant [68 x i8] c"    function setLinenum($linenum) { $this->linenum__ = $linenum; }\0A\00", align 1
@.str.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"    function %s%s(\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"&$state__\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"        parent::%s (\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"        $this->kind__ = %s_KIND;\0A\00", align 1
@.str.66 = private unnamed_addr constant [55 x i8] c"        $this->filename__ = $state__->currFilename();\0A\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"        $this->linenum__ = $state__->currLinenum();\0A\00", align 1
@.str.68 = private unnamed_addr constant [77 x i8] c"        $_tmp = &%s::getState(); $this->filename__ = $_tmp->currFilename();\0A\00", align 1
@.str.69 = private unnamed_addr constant [75 x i8] c"        $_tmp = &%s::getState(); $this->linenum__ = $_tmp->currLinenum();\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"        $this->%s = $%s;\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"    function isA($kind)\0A\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"        if($kind == %s_KIND)\0A\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"            return 1;\0A\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"        else\0A\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"            return parent::isA($kind);\0A\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"            return 0;\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"    function getKindName()\0A\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"        return \22%s\22;\0A\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"    var $%s;\0A\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c" $%s\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"    function  %s(\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"    function %s(\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"$%s \00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"\0A        $%s = &$this;\0A    \00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c") {}\0A\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"\0A?>\00", align 1

; Function Attrs: nounwind uwtable
define internal void @PHP_GenStart(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 1
  %1 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 1
  %4 = load i8*, i8** %className1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  call void @PHPGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenSplitEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %number.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %3 = load i32, i32* %number.addr, align 4
  call void @PHPGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenSwitchHead(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i8* %paramName, i32 %level, i32 %isEnum) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %paramName.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %isEnum.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i8* %paramName, i8** %paramName.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %isEnum, i32* %isEnum.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load i32, i32* %isEnum.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %8, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %7, i32 %add2)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenSelector(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 16
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %3, 2
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %2, i32 %add)
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 0
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 4
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 4
  %9 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* %7, i8* %9)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 5
  %11 = load i32, i32* %flags2, align 4
  %and3 = and i32 %11, 8
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %mul6 = mul nsw i32 %13, 2
  %add7 = add nsw i32 %mul6, 3
  call void @Indent(%struct._tagTreeCCStream* %12, i32 %add7)
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenEndSelectors(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenCaseFunc(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %number.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  %type = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %1, i32 0, i32 2
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %3, i32 %4)
  %5 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %5, i32 0, i32 2
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 4
  %7 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %7, %struct._tagTreeCCParam** %param, align 8
  %8 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %8, i32 0, i32 0
  %9 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %9, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %10, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 1
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.else.16

if.then.3:                                        ; preds = %if.end
  %15 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %15, i32 0, i32 0
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 5
  %17 = load i32, i32* %flags4, align 4
  %and5 = and i32 %17, 8
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.3
  %18 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node7 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %18, i32 0, i32 0
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node7, align 8
  %flags8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 5
  %20 = load i32, i32* %flags8, align 4
  %and9 = and i32 %20, 16
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node12 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node12, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 4
  %23 = load i8*, i8** %name13, align 8
  store i8* %23, i8** %type, align 8
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.then.3
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %24, i32 0, i32 1
  %25 = load i8*, i8** %type14, align 8
  store i8* %25, i8** %type, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  %26 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %26, i32 0, i32 1
  %27 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %27, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.end
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type17 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %28, i32 0, i32 1
  %29 = load i8*, i8** %type17, align 8
  store i8* %29, i8** %type, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %30, i32 0, i32 0
  %31 = load i8*, i8** %name19, align 8
  %tobool20 = icmp ne i8* %31, null
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.18
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %33 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name22 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %33, i32 0, i32 0
  %34 = load i8*, i8** %name22, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %34)
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.18
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %36 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %36)
  %37 = load i32, i32* %num, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  store i32 1, i32* %needComma, align 4
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 4
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next25, align 8
  store %struct._tagTreeCCParam* %39, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %41, i32 0, i32 13
  %42 = load i32, i32* %language, align 4
  %cmp26 = icmp eq i32 %42, 3
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %44 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %44, i32 0, i32 7
  %45 = load i64, i64* %codeLinenum, align 8
  %46 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %46, i32 0, i32 6
  %47 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %43, i64 %45, i8* %47)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.end
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %49 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %49, i32 0, i32 1
  %50 = load i8*, i8** %code, align 8
  %tobool29 = icmp ne i8* %50, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %52 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code31 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %52, i32 0, i32 1
  %53 = load i8*, i8** %code31, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %51, i8* %53, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %55 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language33 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %55, i32 0, i32 13
  %56 = load i32, i32* %language33, align 4
  %cmp34 = icmp eq i32 %56, 3
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %57 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %57)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenCaseCall(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %number.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 4
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 2
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 2
  %4 = load i8*, i8** %returnType, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0), i8* %9, i32 %10)
  %11 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper2 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %11, i32 0, i32 2
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper2, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 4
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %13, %struct._tagTreeCCParam** %param, align 8
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %14, i32 0, i32 0
  %15 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %15, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp3 = icmp ne %struct._tagTreeCCParam* %16, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %while.body
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 0
  %20 = load i8*, i8** %name6, align 8
  %tobool7 = icmp ne i8* %20, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 0
  %23 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %23)
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %25 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %25)
  %26 = load i32, i32* %num, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 2
  %28 = load i32, i32* %flags, align 4
  %and = and i32 %28, 1
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end.10
  %29 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %29, i32 0, i32 0
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 5
  %31 = load i32, i32* %flags13, align 4
  %and14 = and i32 %31, 8
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.12
  %32 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node16 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %32, i32 0, i32 0
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node16, align 8
  %flags17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %33, i32 0, i32 5
  %34 = load i32, i32* %flags17, align 4
  %and18 = and i32 %34, 16
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.12
  %36 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %36, i32 0, i32 1
  %37 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %37, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  store i32 1, i32* %needComma, align 4
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 4
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next23, align 8
  store %struct._tagTreeCCParam* %39, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenCaseInline(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %level.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %0, i32 0, i32 2
  %1 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %1, i32 0, i32 4
  %2 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %2, %struct._tagTreeCCParam** %param, align 8
  %3 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %3, i32 0, i32 0
  %4 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %4, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %5 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %10, i32 0, i32 0
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 5
  %12 = load i32, i32* %flags4, align 4
  %and5 = and i32 %12, 8
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.3
  %13 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node7 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %13, i32 0, i32 0
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node7, align 8
  %flags8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 5
  %15 = load i32, i32* %flags8, align 4
  %and9 = and i32 %15, 16
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %17, 2
  %add = add nsw i32 %mul, 4
  call void @Indent(%struct._tagTreeCCStream* %16, i32 %add)
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 0
  %20 = load i8*, i8** %name12, align 8
  %21 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %21, i32 0, i32 0
  %22 = load i8*, i8** %name13, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* %20, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then.3
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %23 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %23, i32 0, i32 1
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %24, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %while.body
  %25 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next16 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %25, i32 0, i32 4
  %26 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next16, align 8
  store %struct._tagTreeCCParam* %26, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %27, i32 0, i32 13
  %28 = load i32, i32* %language, align 4
  %cmp17 = icmp eq i32 %28, 3
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %30 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %30, i32 0, i32 7
  %31 = load i64, i64* %codeLinenum, align 8
  %32 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %32, i32 0, i32 6
  %33 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %29, i64 %31, i8* %33)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %while.end
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %35 = load i32, i32* %level.addr, align 4
  %mul20 = mul nsw i32 %35, 2
  %add21 = add nsw i32 %mul20, 4
  call void @Indent(%struct._tagTreeCCStream* %34, i32 %add21)
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  %37 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %37, i32 0, i32 1
  %38 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %38, null
  br i1 %tobool, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %40 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code23 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %40, i32 0, i32 1
  %41 = load i8*, i8** %code23, align 8
  %42 = load i32, i32* %level.addr, align 4
  %mul24 = mul nsw i32 %42, 2
  %add25 = add nsw i32 %mul24, 4
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %39, i8* %41, i32 %add25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 13
  %45 = load i32, i32* %language27, align 4
  %cmp28 = icmp eq i32 %45, 3
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %46)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenCaseSplit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %operCase.addr = alloca %struct._tagTreeCCOperationCase*, align 8
  %number.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %trigger = alloca %struct._tagTreeCCTrigger*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 4
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 2
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 2
  %4 = load i8*, i8** %returnType, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i32 0, i32 0), i8* %9, i32 %10)
  %11 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper2 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %11, i32 0, i32 2
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper2, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 4
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %13, %struct._tagTreeCCParam** %param, align 8
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %14, i32 0, i32 0
  %15 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %15, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp3 = icmp ne %struct._tagTreeCCParam* %16, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %while.body
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 0
  %20 = load i8*, i8** %name6, align 8
  %tobool7 = icmp ne i8* %20, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 0
  %23 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %23)
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %25 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %25)
  %26 = load i32, i32* %num, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 2
  %28 = load i32, i32* %flags, align 4
  %and = and i32 %28, 1
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.end.10
  %29 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %29, i32 0, i32 0
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 5
  %31 = load i32, i32* %flags13, align 4
  %and14 = and i32 %31, 8
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.12
  %32 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node16 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %32, i32 0, i32 0
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node16, align 8
  %flags17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %33, i32 0, i32 5
  %34 = load i32, i32* %flags17, align 4
  %and18 = and i32 %34, 16
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.12
  %36 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %36, i32 0, i32 1
  %37 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %37, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  store i32 1, i32* %needComma, align 4
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 4
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next23, align 8
  store %struct._tagTreeCCParam* %39, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenEndCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 3
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenEndSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load i32, i32* %level.addr, align 4
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenExit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 2
  %1 = load i8*, i8** %returnType, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %defValue = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 3
  %3 = load i8*, i8** %defValue, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %defValue2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 3
  %6 = load i8*, i8** %defValue2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PHP_GenEnd(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 13
  %2 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCGeneratePHP(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WritePHPHeaders(%struct._tagTreeCCContext* %0)
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %1, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DeclareTypeDefs)
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 7
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 7
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource1, align 8
  call void @ImplementStateType(%struct._tagTreeCCContext* %4, %struct._tagTreeCCStream* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 5
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  call void @ImplementStateType(%struct._tagTreeCCContext* %7, %struct._tagTreeCCStream* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %10, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @BuildTypeDecls)
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %11, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsPHP)
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WritePHPFooters(%struct._tagTreeCCContext* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WritePHPHeaders(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %cmp = icmp ne %struct._tagTreeCCStream* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 7
  %bf.load = load i8, i8* %isHeader, align 4
  %bf.shl = shl i8 %bf.load, 5
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %5, i32 0, i32 2
  %6 = load i8*, i8** %embedName, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i32 0, i32 0), i8* %6)
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTopCS(%struct._tagTreeCCStream* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 7
  %bf.load1 = load i8, i8* %defaultFile, align 4
  %bf.shl2 = shl i8 %bf.load1, 4
  %bf.ashr3 = ashr i8 %bf.shl2, 7
  %bf.cast4 = sext i8 %bf.ashr3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %9, i32 0, i32 7
  %bf.load7 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load7, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %10, i32 0, i32 10
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %11, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCNodeVisitAll(%struct._tagTreeCCContext*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*) #1

; Function Attrs: nounwind uwtable
define internal void @DeclareTypeDefs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %i = alloca i32, align 4
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %child = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 14
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %3, %struct._tagTreeCCStream** %stream, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 1
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp1 = icmp ne %struct._tagTreeCCNode* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 5
  %8 = load i32, i32* %flags2, align 4
  %and3 = and i32 %8, 16
  %cmp4 = icmp ne i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 4
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name6, align 8
  %14 = load i32, i32* %i, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* %11, i8* %13, i32 %14)
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 3
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %17, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImplementStateType(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 8
  %bf.load1 = load i16, i16* %abstract_factory, align 8
  %bf.shl2 = shl i16 %bf.load1, 9
  %bf.ashr3 = ashr i16 %bf.shl2, 15
  %bf.cast4 = sext i16 %bf.ashr3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 10
  %4 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 10
  %7 = load i8*, i8** %state_type6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 8
  %bf.load8 = load i16, i16* %reentrant7, align 8
  %bf.shl9 = shl i16 %bf.load8, 12
  %bf.ashr10 = ashr i16 %bf.shl9, 15
  %bf.cast11 = sext i16 %bf.ashr10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0))
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0))
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0))
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 10
  %15 = load i8*, i8** %state_type14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* %15)
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0))
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 8
  %bf.load17 = load i16, i16* %reentrant16, align 8
  %bf.shl18 = shl i16 %bf.load17, 12
  %bf.ashr19 = ashr i16 %bf.shl18, 15
  %bf.cast20 = sext i16 %bf.ashr19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %19, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 8
  %bf.load24 = load i16, i16* %track_lines, align 8
  %bf.shl25 = shl i16 %bf.load24, 14
  %bf.ashr26 = ashr i16 %bf.shl25, 15
  %bf.cast27 = sext i16 %bf.ashr26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i32 0, i32 0))
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.23
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BuildTypeDecls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %needComma = alloca i32, align 4
  %constructorAccess = alloca i8*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  %isAbstract = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 24
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @TreeCCNodeHasAbstracts(%struct._tagTreeCCContext* %2, %struct._tagTreeCCNode* %3)
  store i32 %call, i32* %isAbstract, align 4
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 14
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %5, %struct._tagTreeCCStream** %stream, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 0
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %7, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 4
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 6
  %12 = load i32, i32* %number, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* %10, i32 %12)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 4
  %15 = load i8*, i8** %name2, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 6
  %17 = load i32, i32* %number3, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i8* %15, i32 %17)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 0
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent5, align 8
  %tobool6 = icmp ne %struct._tagTreeCCNode* %19, null
  br i1 %tobool6, label %if.then.7, label %if.else.18

if.then.7:                                        ; preds = %if.end.4
  %20 = load i32, i32* %isAbstract, align 4
  %tobool8 = icmp ne i32 %20, 0
  br i1 %tobool8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.then.7
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 4
  %23 = load i8*, i8** %name10, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent11, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i8* %23, i8* %26)
  br label %if.end.17

if.else.13:                                       ; preds = %if.then.7
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %28, i32 0, i32 4
  %29 = load i8*, i8** %name14, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent15 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 0
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent15, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %31, i32 0, i32 4
  %32 = load i8*, i8** %name16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i8* %29, i8* %32)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.13, %if.then.9
  br label %if.end.36

if.else.18:                                       ; preds = %if.end.4
  %33 = load i32, i32* %isAbstract, align 4
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.18
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 4
  %36 = load i8*, i8** %name21, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %36)
  br label %if.end.24

if.else.22:                                       ; preds = %if.else.18
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %38, i32 0, i32 4
  %39 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %39)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0))
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %41, i32 0, i32 8
  %bf.load = load i16, i16* %track_lines, align 8
  %bf.shl = shl i16 %bf.load, 14
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool25 = icmp ne i32 %bf.cast, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0))
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines28 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %46, i32 0, i32 8
  %bf.load29 = load i16, i16* %track_lines28, align 8
  %bf.shl30 = shl i16 %bf.load29, 14
  %bf.ashr31 = ashr i16 %bf.shl30, 15
  %bf.cast32 = sext i16 %bf.ashr31 to i32
  %tobool33 = icmp ne i32 %bf.cast32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.27
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i32 0, i32 0))
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.58, i32 0, i32 0))
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.59, i32 0, i32 0))
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.27
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.17
  %52 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %52, i32 0, i32 10
  %53 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  %tobool37 = icmp ne %struct._tagTreeCCField* %53, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %54 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %56 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareFields(%struct._tagTreeCCContext* %54, %struct._tagTreeCCStream* %55, %struct._tagTreeCCNode* %56)
  %57 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %58 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %58, i32 0, i32 8
  %bf.load40 = load i16, i16* %reentrant, align 8
  %bf.shl41 = shl i16 %bf.load40, 12
  %bf.ashr42 = ashr i16 %bf.shl41, 15
  %bf.cast43 = sext i16 %bf.ashr42 to i32
  %tobool44 = icmp ne i32 %bf.cast43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.39
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.53

if.else.46:                                       ; preds = %if.end.39
  %59 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags47 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %59, i32 0, i32 5
  %60 = load i32, i32* %flags47, align 4
  %and48 = and i32 %60, 2
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.52

if.else.51:                                       ; preds = %if.else.46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.45
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %62 = load i8*, i8** %constructorAccess, align 8
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name54 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %63, i32 0, i32 4
  %64 = load i8*, i8** %name54, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), i8* %62, i8* %64)
  %65 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant55 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %65, i32 0, i32 8
  %bf.load56 = load i16, i16* %reentrant55, align 8
  %bf.shl57 = shl i16 %bf.load56, 12
  %bf.ashr58 = ashr i16 %bf.shl57, 15
  %bf.cast59 = sext i16 %bf.ashr58 to i32
  %tobool60 = icmp ne i32 %bf.cast59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.end.53
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.63

if.else.62:                                       ; preds = %if.end.53
  store i32 0, i32* %needComma, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %67 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %69 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %70 = load i32, i32* %needComma, align 4
  %call64 = call i32 @CreateParams(%struct._tagTreeCCContext* %67, %struct._tagTreeCCStream* %68, %struct._tagTreeCCNode* %69, i32 %70)
  %71 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %72 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %73 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent65 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %73, i32 0, i32 0
  %74 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent65, align 8
  %tobool66 = icmp ne %struct._tagTreeCCNode* %74, null
  br i1 %tobool66, label %if.then.67, label %if.end.81

if.then.67:                                       ; preds = %if.end.63
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %76 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent68 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %76, i32 0, i32 0
  %77 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent68, align 8
  %name69 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %77, i32 0, i32 4
  %78 = load i8*, i8** %name69, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0), i8* %78)
  %79 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant70 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %79, i32 0, i32 8
  %bf.load71 = load i16, i16* %reentrant70, align 8
  %bf.shl72 = shl i16 %bf.load71, 12
  %bf.ashr73 = ashr i16 %bf.shl72, 15
  %bf.cast74 = sext i16 %bf.ashr73 to i32
  %tobool75 = icmp ne i32 %bf.cast74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.67
  %80 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %if.then.67
  store i32 0, i32* %needComma, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  %81 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %83 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent79 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %83, i32 0, i32 0
  %84 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent79, align 8
  %85 = load i32, i32* %needComma, align 4
  %call80 = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %81, %struct._tagTreeCCStream* %82, %struct._tagTreeCCNode* %84, i32 %85)
  %86 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.78, %if.end.63
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %88 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name82 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %88, i32 0, i32 4
  %89 = load i8*, i8** %name82, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %89)
  %90 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines83 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %90, i32 0, i32 8
  %bf.load84 = load i16, i16* %track_lines83, align 8
  %bf.shl85 = shl i16 %bf.load84, 14
  %bf.ashr86 = ashr i16 %bf.shl85, 15
  %bf.cast87 = sext i16 %bf.ashr86 to i32
  %tobool88 = icmp ne i32 %bf.cast87, 0
  br i1 %tobool88, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.end.81
  %91 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent89 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %91, i32 0, i32 0
  %92 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent89, align 8
  %tobool90 = icmp ne %struct._tagTreeCCNode* %92, null
  br i1 %tobool90, label %if.end.102, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true
  %93 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant92 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %93, i32 0, i32 8
  %bf.load93 = load i16, i16* %reentrant92, align 8
  %bf.shl94 = shl i16 %bf.load93, 12
  %bf.ashr95 = ashr i16 %bf.shl94, 15
  %bf.cast96 = sext i16 %bf.ashr95 to i32
  %tobool97 = icmp ne i32 %bf.cast96, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.then.91
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.66, i32 0, i32 0))
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.101

if.else.99:                                       ; preds = %if.then.91
  %96 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %97 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %97, i32 0, i32 10
  %98 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %96, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.68, i32 0, i32 0), i8* %98)
  %99 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %100 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type100 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %100, i32 0, i32 10
  %101 = load i8*, i8** %state_type100, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %99, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.69, i32 0, i32 0), i8* %101)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.then.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true, %if.end.81
  %102 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields103 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %102, i32 0, i32 10
  %103 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields103, align 8
  store %struct._tagTreeCCField* %103, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.117, %if.end.102
  %104 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp104 = icmp ne %struct._tagTreeCCField* %104, null
  br i1 %cmp104, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %105 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags105 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %105, i32 0, i32 3
  %106 = load i32, i32* %flags105, align 4
  %and106 = and i32 %106, 1
  %cmp107 = icmp eq i32 %and106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.111

if.then.108:                                      ; preds = %while.body
  %107 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %108 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name109 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %108, i32 0, i32 0
  %109 = load i8*, i8** %name109, align 8
  %110 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name110 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %110, i32 0, i32 0
  %111 = load i8*, i8** %name110, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i8* %109, i8* %111)
  br label %if.end.117

if.else.111:                                      ; preds = %while.body
  %112 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %112, i32 0, i32 2
  %113 = load i8*, i8** %value, align 8
  %tobool112 = icmp ne i8* %113, null
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.else.111
  %114 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %115 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name114 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %115, i32 0, i32 0
  %116 = load i8*, i8** %name114, align 8
  %117 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value115 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %117, i32 0, i32 2
  %118 = load i8*, i8** %value115, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i8* %116, i8* %118)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.else.111
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.108
  %119 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %119, i32 0, i32 6
  %120 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %120, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %121 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %122 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %123 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %124 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %125 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %122, %struct._tagTreeCCStream* %123, %struct._tagTreeCCNode* %124, %struct._tagTreeCCNode* %125)
  %126 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent118 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %126, i32 0, i32 0
  %127 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent118, align 8
  %tobool119 = icmp ne %struct._tagTreeCCNode* %127, null
  br i1 %tobool119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %while.end
  %128 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.122

if.else.121:                                      ; preds = %while.end
  %129 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %130 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %131 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %132 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name123 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %132, i32 0, i32 4
  %133 = load i8*, i8** %name123, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i32 0, i32 0), i8* %133)
  %134 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0))
  %135 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0))
  %136 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent124 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %136, i32 0, i32 0
  %137 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent124, align 8
  %tobool125 = icmp ne %struct._tagTreeCCNode* %137, null
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.end.122
  %138 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.128

if.else.127:                                      ; preds = %if.end.122
  %139 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.then.126
  %140 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %141 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent129 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %141, i32 0, i32 0
  %142 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent129, align 8
  %tobool130 = icmp ne %struct._tagTreeCCNode* %142, null
  br i1 %tobool130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.end.128
  %143 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.133

if.else.132:                                      ; preds = %if.end.128
  %144 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  %145 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %146 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %147 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name134 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %147, i32 0, i32 4
  %148 = load i8*, i8** %name134, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i8* %148)
  %149 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  %150 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.133, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @WritePHPFooters(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %cmp = icmp ne %struct._tagTreeCCStream* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 7
  %bf.load = load i8, i8* %defaultFile, align 4
  %bf.shl = shl i8 %bf.load, 4
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %4, i32 0, i32 7
  %bf.load1 = load i8, i8* %dirty, align 4
  %bf.shl2 = shl i8 %bf.load1, 3
  %bf.ashr3 = ashr i8 %bf.shl2, 7
  %bf.cast4 = sext i8 %bf.ashr3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamClear(%struct._tagTreeCCStream* %5)
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %6, i32 0, i32 7
  %bf.load6 = load i8, i8* %isHeader, align 4
  %bf.shl7 = shl i8 %bf.load6, 5
  %bf.ashr8 = ashr i8 %bf.shl7, 7
  %bf.cast9 = sext i8 %bf.ashr8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0))
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %9, i32 0, i32 10
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %10, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCStreamPrint(%struct._tagTreeCCStream*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @PHPGenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %number.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* %3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 0
  %7 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %9, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp2 = icmp ne %struct._tagTreeCCParam* %10, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.body
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %13, i32 0, i32 0
  %14 = load i8*, i8** %name5, align 8
  %tobool6 = icmp ne i8* %14, null
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end.4
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %16, i32 0, i32 0
  %17 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %17)
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.4
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %19 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %19)
  %20 = load i32, i32* %num, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.7
  %21 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %21, i32 0, i32 2
  %22 = load i32, i32* %flags, align 4
  %and = and i32 %22, 1
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %24, i32 0, i32 1
  %25 = load i8*, i8** %type, align 8
  %call = call i32 @IsEnumType(%struct._tagTreeCCContext* %23, i8* %25)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.10
  store i32 1, i32* %needComma, align 4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 4
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %28, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @IsEnumType(%struct._tagTreeCCContext* %context, i8* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %type.addr = alloca i8*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext* %0, i8* %1)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %node, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %2, null
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 5
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._tagTreeCCNode* @TreeCCNodeFindByType(%struct._tagTreeCCContext*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @Indent(%struct._tagTreeCCStream* %stream, i32 %indent) #0 {
entry:
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %indent.addr = alloca i32, align 4
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %indent.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  %2 = load i32, i32* %indent.addr, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %indent.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %indent.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %while.end
  %5 = load i32, i32* %indent.addr, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.7

if.else.4:                                        ; preds = %if.else
  %7 = load i32, i32* %indent.addr, align 4
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.4
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  ret void
}

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

declare void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream*, i8*, i32) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @TreeCCStreamSourceTopCS(%struct._tagTreeCCStream*) #1

; Function Attrs: nounwind uwtable
define internal void @ImplementCreateFuncs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 24
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.33

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.33

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 7
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %5, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.5
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 7
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource7, align 8
  store %struct._tagTreeCCStream* %7, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end.5
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 5
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  store %struct._tagTreeCCStream* %9, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load = load i16, i16* %abstract_factory, align 8
  %bf.shl = shl i16 %bf.load, 9
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool9 = icmp ne i32 %bf.cast, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* %13)
  br label %if.end.22

if.else.11:                                       ; preds = %if.end.8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 8
  %bf.load12 = load i16, i16* %virtual_factory, align 8
  %bf.shl13 = shl i16 %bf.load12, 10
  %bf.ashr14 = ashr i16 %bf.shl13, 15
  %bf.cast15 = sext i16 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.11
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 4
  %17 = load i8*, i8** %name18, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* %17)
  br label %if.end.21

if.else.19:                                       ; preds = %if.else.11
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 4
  %20 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.10
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %21, %struct._tagTreeCCStream* %22, %struct._tagTreeCCNode* %23, i32 0)
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 8
  %bf.load24 = load i16, i16* %abstract_factory23, align 8
  %bf.shl25 = shl i16 %bf.load24, 9
  %bf.ashr26 = ashr i16 %bf.shl25, 15
  %bf.cast27 = sext i16 %bf.ashr26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end.22
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.33

if.else.30:                                       ; preds = %if.end.22
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name31 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name31, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i8* %30)
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call32 = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %31, %struct._tagTreeCCStream* %32, %struct._tagTreeCCNode* %33, i32 1)
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then, %if.then.4, %if.else.30, %if.then.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @FactoryCreateParams(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %needComma) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %needComma.addr = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %needComma, i32* %needComma.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %6 = load i32, i32* %needComma.addr, align 4
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, i32 %6)
  store i32 %call, i32* %needComma.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 10
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %8, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %16)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 6
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %18, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %needComma.addr, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %needComma) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %needComma.addr = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %needComma, i32* %needComma.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %6 = load i32, i32* %needComma.addr, align 4
  %call = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, i32 %6)
  store i32 %call, i32* %needComma.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 10
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %8, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %16)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 6
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %18, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %needComma.addr, align 4
  ret i32 %19
}

declare i32 @TreeCCNodeHasAbstracts(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*) #1

; Function Attrs: nounwind uwtable
define internal void @DeclareFields(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 10
  %1 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %1, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i8* %5)
  %6 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %6, i32 0, i32 6
  %7 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %7, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @CreateParams(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %needComma) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %needComma.addr = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %needComma, i32* %needComma.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %6 = load i32, i32* %needComma.addr, align 4
  %call = call i32 @CreateParams(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, i32 %6)
  store i32 %call, i32* %needComma.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 10
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %8, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i8* %16)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 6
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %18, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %needComma.addr, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @InheritParamsSource(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %needComma) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %needComma.addr = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store i32 %needComma, i32* %needComma.addr, align 4
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %6 = load i32, i32* %needComma.addr, align 4
  %call = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, i32 %6)
  store i32 %call, i32* %needComma.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 10
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %8, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %16)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 6
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %18, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %needComma.addr, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @ImplementVirtuals(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %actualNode.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %declareCase = alloca i32, align 4
  %abstractCase = alloca i32, align 4
  %tempNode = alloca %struct._tagTreeCCNode*, align 8
  %num = alloca i32, align 4
  %first = alloca i32, align 4
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode* %actualNode, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 11
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %8, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %if.else.22, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.72

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %12 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %call = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %10, %struct._tagTreeCCNode* %11, i8* %13)
  store %struct._tagTreeCCOperationCase* %call, %struct._tagTreeCCOperationCase** %operCase, align 8
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool2 = icmp ne %struct._tagTreeCCOperationCase* %14, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %while.body
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %parent4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 0
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent4, align 8
  store %struct._tagTreeCCNode* %16, %struct._tagTreeCCNode** %tempNode, align 8
  store i32 1, i32* %abstractCase, align 4
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.12, %if.then.3
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %cmp6 = icmp ne %struct._tagTreeCCNode* %17, null
  br i1 %cmp6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.5
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %20 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %20, i32 0, i32 0
  %21 = load i8*, i8** %name8, align 8
  %call9 = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %18, %struct._tagTreeCCNode* %19, i8* %21)
  store %struct._tagTreeCCOperationCase* %call9, %struct._tagTreeCCOperationCase** %operCase, align 8
  %22 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %cmp10 = icmp ne %struct._tagTreeCCOperationCase* %22, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body.7
  store i32 0, i32* %abstractCase, align 4
  br label %while.end

if.end.12:                                        ; preds = %while.body.7
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %tempNode, align 8
  %parent13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 0
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent13, align 8
  store %struct._tagTreeCCNode* %24, %struct._tagTreeCCNode** %tempNode, align 8
  br label %while.cond.5

while.end:                                        ; preds = %if.then.11, %while.cond.5
  %25 = load i32, i32* %abstractCase, align 4
  store i32 %25, i32* %declareCase, align 4
  br label %if.end.14

if.else:                                          ; preds = %while.body
  store i32 1, i32* %declareCase, align 4
  store i32 0, i32* %abstractCase, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %while.end
  %26 = load i32, i32* %declareCase, align 4
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.then.16, label %if.end.70

if.then.16:                                       ; preds = %if.end.14
  %27 = load i32, i32* %abstractCase, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then.18, label %if.else.24

if.then.18:                                       ; preds = %if.then.16
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %cmp19 = icmp eq %struct._tagTreeCCNode* %28, %29
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.then.18
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %31 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %31, i32 0, i32 0
  %32 = load i8*, i8** %name21, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* %32)
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.18
  %33 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %33, i32 0, i32 4
  %34 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %34, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.16
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %36 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name25 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %36, i32 0, i32 0
  %37 = load i8*, i8** %name25, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), i8* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.end.23
  %38 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %38, i32 0, i32 3
  %39 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %39, i32 0, i32 4
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %40, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  store i32 1, i32* %first, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.47, %if.end.26
  %41 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp28 = icmp ne %struct._tagTreeCCParam* %41, null
  br i1 %cmp28, label %while.body.29, label %while.end.49

while.body.29:                                    ; preds = %while.cond.27
  %42 = load i32, i32* %needComma, align 4
  %tobool30 = icmp ne i32 %42, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.body.29
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %while.body.29
  %44 = load i32, i32* %first, align 4
  %tobool33 = icmp ne i32 %44, 0
  br i1 %tobool33, label %if.then.34, label %if.else.39

if.then.34:                                       ; preds = %if.end.32
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name35 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %45, i32 0, i32 0
  %46 = load i8*, i8** %name35, align 8
  %tobool36 = icmp ne i8* %46, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  %47 = load i32, i32* %num, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.34
  store i32 0, i32* %first, align 4
  br label %if.end.47

if.else.39:                                       ; preds = %if.end.32
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name40 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %48, i32 0, i32 0
  %49 = load i8*, i8** %name40, align 8
  %tobool41 = icmp ne i8* %49, null
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.else.39
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name43 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %51, i32 0, i32 0
  %52 = load i8*, i8** %name43, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* %52)
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.39
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %54 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %54)
  %55 = load i32, i32* %num, align 4
  %inc45 = add nsw i32 %55, 1
  store i32 %inc45, i32* %num, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.42
  store i32 1, i32* %needComma, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.38
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next48 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %56, i32 0, i32 4
  %57 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next48, align 8
  store %struct._tagTreeCCParam* %57, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.27

while.end.49:                                     ; preds = %while.cond.27
  %58 = load i32, i32* %abstractCase, align 4
  %tobool50 = icmp ne i32 %58, 0
  br i1 %tobool50, label %if.else.68, label %if.then.51

if.then.51:                                       ; preds = %while.end.49
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %60 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %61 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %61, i32 0, i32 7
  %62 = load i64, i64* %codeLinenum, align 8
  %63 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %63, i32 0, i32 6
  %64 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %60, i64 %62, i8* %64)
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %66 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper52 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %66, i32 0, i32 3
  %67 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper52, align 8
  %params53 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %67, i32 0, i32 4
  %68 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params53, align 8
  %name54 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %68, i32 0, i32 0
  %69 = load i8*, i8** %name54, align 8
  %tobool55 = icmp ne i8* %69, null
  br i1 %tobool55, label %lor.lhs.false, label %if.then.61

lor.lhs.false:                                    ; preds = %if.then.51
  %70 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper56 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %70, i32 0, i32 3
  %71 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper56, align 8
  %params57 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %71, i32 0, i32 4
  %72 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params57, align 8
  %name58 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %72, i32 0, i32 0
  %73 = load i8*, i8** %name58, align 8
  %call59 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0)) #3
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %lor.lhs.false, %if.then.51
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %75 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %75, i32 0, i32 1
  %76 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %74, i8* %76, i32 1)
  br label %if.end.67

if.else.62:                                       ; preds = %lor.lhs.false
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %78 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper63 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %78, i32 0, i32 3
  %79 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper63, align 8
  %params64 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %79, i32 0, i32 4
  %80 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params64, align 8
  %name65 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %80, i32 0, i32 0
  %81 = load i8*, i8** %name65, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i8* %81)
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %83 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code66 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %83, i32 0, i32 1
  %84 = load i8*, i8** %code66, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %82, i8* %84, i32 1)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.61
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %86 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %86)
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.69

if.else.68:                                       ; preds = %while.end.49
  %88 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.end.67
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.14
  %89 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next71 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %89, i32 0, i32 4
  %90 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next71, align 8
  store %struct._tagTreeCCVirtual* %90, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.72:                                     ; preds = %while.cond
  ret void
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #1

declare void @TreeCCStreamClear(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
