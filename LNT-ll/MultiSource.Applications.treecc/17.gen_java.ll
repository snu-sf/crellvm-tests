; ModuleID = './MultiSource.Applications.treecc/17.gen_java.bc'
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

@TreeCCNonVirtualFuncsJava = constant %struct.TreeCCNonVirtual { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Java_GenStart, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Java_GenEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)* @Java_GenSplitEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)* @Java_GenSwitchHead, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)* @Java_GenSelector, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Java_GenEndSelectors, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @Java_GenCaseFunc, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @Java_GenCaseCall, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @Java_GenCaseInline, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @Java_GenCaseSplit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Java_GenEndCase, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Java_GenEndSwitch, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Java_GenExit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Java_GenEnd }, align 8
@.str = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s class %s\0A{\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\09private static %s %s_split_%d__(\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\09public static %s %s(\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"switch(%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"switch(%s__.getKind())\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\09\09\09\09\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"case %s.%s:\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"case %s.KIND:\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"\09private static %s %s_%d__(\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"%s %s = (%s)%s__;\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\09return (%s);\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"package %s;\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"import java.lang.*;\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"public class %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"\09public static final int %s = %d;\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"public abstract class %s\0A{\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"public class %s\0A{\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"\09private static %s state__;\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"\09public static %s getState()\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"\09\09if(state__ != null) return state__;\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"\09\09state__ = new %s();\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"\09\09return state__;\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"\09public %s() {}\0A\0A\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"\09public %s() { state__ = this; }\0A\0A\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"\09public String currFilename() { return null; }\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"\09public long currLinenum() { return 0; }\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"\09public abstract %s %sCreate(\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"\09public %s %sCreate(\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"\09\09return new %s(this\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"public abstract class %s extends %s\0A{\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"public class %s extends %s\0A{\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"public abstract class %s\0A{\0A\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"public class %s\0A{\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"\09protected int kind__;\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"\09protected String filename__;\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"\09protected long linenum__;\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"\09public int getKind() { return kind__; }\0A\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"\09public String getFilename() { return filename__; }\0A\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"\09public long getLinenum() { return linenum__; }\0A\00", align 1
@.str.70 = private unnamed_addr constant [70 x i8] c"\09public void setFilename(String filename) { filename__ = filename; }\0A\00", align 1
@.str.71 = private unnamed_addr constant [64 x i8] c"\09public void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"\09public static final int KIND = %d;\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"\09%s%s(\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"%s state__\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"\09\09super(\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"\09\09this.kind__ = KIND;\0A\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"\09\09this.filename__ = state__.currFilename();\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"\09\09this.linenum__ = state__.currLinenum();\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"\09\09this.filename__ = %s.getState().currFilename();\0A\00", align 1
@.str.84 = private unnamed_addr constant [49 x i8] c"\09\09this.linenum__ = %s.getState().currLinenum();\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"\09\09this.%s = %s;\0A\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"\09public int isA(int kind)\0A\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"\09\09if(kind == KIND)\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"\09\09else\0A\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"\09\09\09return super.isA(kind);\0A\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"\09\09\09return 0;\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"\09public String getKindName()\0A\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"\09\09return \22%s\22;\0A\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"\09public %s %s;\0A\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"\09public abstract %s %s(\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"\09public %s %s(\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"\09\09%s %s = this;\0A\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @Java_GenStart(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %accessMode = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %internal_access, align 8
  %bf.shl = shl i16 %bf.load, 5
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 13
  %2 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %accessMode, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %accessMode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 1
  %4 = load i8*, i8** %className, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load i8*, i8** %accessMode, align 8
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className3 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 1
  %8 = load i8*, i8** %className3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %6, i8* %8)
  br label %if.end.5

if.else.4:                                        ; preds = %if.end
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load i8*, i8** %accessMode, align 8
  %11 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %10, i8* %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  call void @JavaGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenSplitEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
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
  call void @JavaGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenSwitchHead(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i8* %paramName, i32 %level, i32 %isEnum) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %8, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %7, i32 %add2)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenSelector(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* %7, i8* %9)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenEndSelectors(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenCaseFunc(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number) #0 {
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
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 2
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 2
  %4 = load i8*, i8** %returnType, align 8
  %call = call i8* @ConvertType(%struct._tagTreeCCContext* %1, i8* %4)
  %5 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %5, i32 0, i32 2
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %8 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* %call, i8* %7, i32 %8)
  %9 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper2 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %9, i32 0, i32 2
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper2, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 4
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %11, %struct._tagTreeCCParam** %param, align 8
  %12 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %12, i32 0, i32 0
  %13 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %13, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %entry
  %14 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %14, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 2
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 1
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %if.end
  %19 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 5
  %21 = load i32, i32* %flags5, align 4
  %and6 = and i32 %21, 8
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.4
  %22 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node8 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %22, i32 0, i32 0
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node8, align 8
  %flags9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 5
  %24 = load i32, i32* %flags9, align 4
  %and10 = and i32 %24, 16
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %25 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node13 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %25, i32 0, i32 0
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node13, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name14, align 8
  store i8* %27, i8** %type, align 8
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %if.then.4
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type15 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %28, i32 0, i32 1
  %29 = load i8*, i8** %type15, align 8
  store i8* %29, i8** %type, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %30 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %30, i32 0, i32 1
  %31 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %31, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.19

if.else.17:                                       ; preds = %if.end
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type18 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %32, i32 0, i32 1
  %33 = load i8*, i8** %type18, align 8
  store i8* %33, i8** %type, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.end.16
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name20, align 8
  %tobool21 = icmp ne i8* %35, null
  br i1 %tobool21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.end.19
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %36, i32 0, i32 13
  %37 = load i32, i32* %language, align 4
  %cmp23 = icmp eq i32 %37, 3
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.22
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %39 = load i8*, i8** %type, align 8
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 0
  %41 = load i8*, i8** %name25, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %39, i8* %41)
  br label %if.end.29

if.else.26:                                       ; preds = %if.then.22
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %44 = load i8*, i8** %type, align 8
  %call27 = call i8* @ConvertType(%struct._tagTreeCCContext* %43, i8* %44)
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %45, i32 0, i32 0
  %46 = load i8*, i8** %name28, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %call27, i8* %46)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.37

if.else.30:                                       ; preds = %if.end.19
  %47 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language31 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %47, i32 0, i32 13
  %48 = load i32, i32* %language31, align 4
  %cmp32 = icmp eq i32 %48, 3
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.30
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %50 = load i8*, i8** %type, align 8
  %51 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* %50, i32 %51)
  br label %if.end.36

if.else.34:                                       ; preds = %if.else.30
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %54 = load i8*, i8** %type, align 8
  %call35 = call i8* @ConvertType(%struct._tagTreeCCContext* %53, i8* %54)
  %55 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* %call35, i32 %55)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  %56 = load i32, i32* %num, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.29
  store i32 1, i32* %needComma, align 4
  %57 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next38 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %57, i32 0, i32 4
  %58 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next38, align 8
  store %struct._tagTreeCCParam* %58, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %60 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language39 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %60, i32 0, i32 13
  %61 = load i32, i32* %language39, align 4
  %cmp40 = icmp eq i32 %61, 3
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.end
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %63 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %63, i32 0, i32 7
  %64 = load i64, i64* %codeLinenum, align 8
  %65 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %65, i32 0, i32 6
  %66 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %62, i64 %64, i8* %66)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %while.end
  %67 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  %68 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %68, i32 0, i32 1
  %69 = load i8*, i8** %code, align 8
  %tobool43 = icmp ne i8* %69, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %71 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code45 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %71, i32 0, i32 1
  %72 = load i8*, i8** %code45, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %70, i8* %72, i32 1)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  %73 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %74 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language47 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %74, i32 0, i32 13
  %75 = load i32, i32* %language47, align 4
  %cmp48 = icmp eq i32 %75, 3
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %76 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %76)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenCaseCall(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* %9, i32 %10)
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

while.cond:                                       ; preds = %if.end.40, %if.end
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp3 = icmp ne %struct._tagTreeCCParam* %16, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %while.body
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 2
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 1
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %21 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 5
  %23 = load i32, i32* %flags8, align 4
  %and9 = and i32 %23, 8
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.7
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node11 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node11, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 5
  %26 = load i32, i32* %flags12, align 4
  %and13 = and i32 %26, 16
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node16 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %28, i32 0, i32 0
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node16, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* %30)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.7
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 0
  %32 = load i8*, i8** %name20, align 8
  %tobool21 = icmp ne i8* %32, null
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %35)
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %num, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 2
  %40 = load i32, i32* %flags25, align 4
  %and26 = and i32 %40, 1
  %cmp27 = icmp ne i32 %and26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.end.24
  %41 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node29 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %41, i32 0, i32 0
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node29, align 8
  %flags30 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %42, i32 0, i32 5
  %43 = load i32, i32* %flags30, align 4
  %and31 = and i32 %43, 8
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.then.28
  %44 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node34 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %44, i32 0, i32 0
  %45 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node34, align 8
  %flags35 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %45, i32 0, i32 5
  %46 = load i32, i32* %flags35, align 4
  %and36 = and i32 %46, 16
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.33
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.33, %if.then.28
  %48 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %48, i32 0, i32 1
  %49 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %49, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.24
  store i32 1, i32* %needComma, align 4
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next41 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 4
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next41, align 8
  store %struct._tagTreeCCParam* %51, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenCaseInline(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %level) #0 {
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

while.cond:                                       ; preds = %if.end.19, %entry
  %5 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %6, i32 0, i32 2
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.19

if.then:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.18

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
  %19 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node12 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node12, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name13, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 0
  %23 = load i8*, i8** %name14, align 8
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node15 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node15, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name16, align 8
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 0
  %28 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* %21, i8* %23, i8* %26, i8* %28)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then.3
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %29 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %29, i32 0, i32 1
  %30 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %30, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %while.body
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 4
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next20, align 8
  store %struct._tagTreeCCParam* %32, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %33, i32 0, i32 13
  %34 = load i32, i32* %language, align 4
  %cmp21 = icmp eq i32 %34, 3
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %36 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %36, i32 0, i32 7
  %37 = load i64, i64* %codeLinenum, align 8
  %38 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %38, i32 0, i32 6
  %39 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %35, i64 %37, i8* %39)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.end
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %41 = load i32, i32* %level.addr, align 4
  %mul24 = mul nsw i32 %41, 2
  %add25 = add nsw i32 %mul24, 4
  call void @Indent(%struct._tagTreeCCStream* %40, i32 %add25)
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %43 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %43, i32 0, i32 1
  %44 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %44, null
  br i1 %tobool, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.23
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %46 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code27 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %46, i32 0, i32 1
  %47 = load i8*, i8** %code27, align 8
  %48 = load i32, i32* %level.addr, align 4
  %mul28 = mul nsw i32 %48, 2
  %add29 = add nsw i32 %mul28, 4
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %45, i8* %47, i32 %add29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.23
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %50 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language31 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %50, i32 0, i32 13
  %51 = load i32, i32* %language31, align 4
  %cmp32 = icmp eq i32 %51, 3
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %52)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenCaseSplit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* %9, i32 %10)
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

while.cond:                                       ; preds = %if.end.40, %if.end
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp3 = icmp ne %struct._tagTreeCCParam* %16, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %while.body
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 2
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 1
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %21 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 5
  %23 = load i32, i32* %flags8, align 4
  %and9 = and i32 %23, 8
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.7
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node11 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node11, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 5
  %26 = load i32, i32* %flags12, align 4
  %and13 = and i32 %26, 16
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %land.lhs.true
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node16 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %28, i32 0, i32 0
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node16, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* %30)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.then.7
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 0
  %32 = load i8*, i8** %name20, align 8
  %tobool21 = icmp ne i8* %32, null
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %35)
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %num, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 2
  %40 = load i32, i32* %flags25, align 4
  %and26 = and i32 %40, 1
  %cmp27 = icmp ne i32 %and26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.end.24
  %41 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node29 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %41, i32 0, i32 0
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node29, align 8
  %flags30 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %42, i32 0, i32 5
  %43 = load i32, i32* %flags30, align 4
  %and31 = and i32 %43, 8
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.then.28
  %44 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node34 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %44, i32 0, i32 0
  %45 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node34, align 8
  %flags35 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %45, i32 0, i32 5
  %46 = load i32, i32* %flags35, align 4
  %and36 = and i32 %46, 16
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.33
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.33, %if.then.28
  %48 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %48, i32 0, i32 1
  %49 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %49, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.24
  store i32 1, i32* %needComma, align 4
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next41 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 4
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next41, align 8
  store %struct._tagTreeCCParam* %51, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenEndCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 3
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenEndSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenExit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #3
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Java_GenEnd(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 13
  %2 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateJava(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 10
  %2 = load i8*, i8** %state_type, align 8
  %call = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %0, i8* %2)
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %3, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @CreateNodeStreams)
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCOperationVisitAll(%struct._tagTreeCCContext* %4, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)* @CreateNonVirtualStreams)
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteJavaHeaders(%struct._tagTreeCCContext* %5)
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %6, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DeclareTypeDefs)
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 10
  %10 = load i8*, i8** %state_type1, align 8
  %call2 = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %8, i8* %10)
  call void @ImplementStateType(%struct._tagTreeCCContext* %7, %struct._tagTreeCCStream* %call2)
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %11, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @BuildTypeDecls)
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %12, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsJava)
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteJavaFooters(%struct._tagTreeCCContext* %13)
  ret void
}

declare %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext*, i8*) #1

declare void @TreeCCNodeVisitAll(%struct._tagTreeCCContext*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*) #1

; Function Attrs: nounwind uwtable
define internal void @CreateNodeStreams(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 16
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 4
  %4 = load i8*, i8** %name, align 8
  %call = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %2, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @TreeCCOperationVisitAll(%struct._tagTreeCCContext*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)*) #1

; Function Attrs: nounwind uwtable
define internal void @CreateNonVirtualStreams(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.4

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
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %call3 = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %7, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteJavaHeaders(%struct._tagTreeCCContext* %context) #0 {
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
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 7
  %bf.load = load i8, i8* %isHeader, align 4
  %bf.shl = shl i8 %bf.load, 5
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTop(%struct._tagTreeCCStream* %4)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 11
  %7 = load i8*, i8** %namespace, align 8
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 11
  %10 = load i8*, i8** %namespace3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %while.body
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %12, i32 0, i32 7
  %bf.load5 = load i8, i8* %defaultFile, align 4
  %bf.shl6 = shl i8 %bf.load5, 4
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.4
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %13, i32 0, i32 7
  %bf.load11 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load11, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.4
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 10
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %15, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareTypeDefs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %child = alloca %struct._tagTreeCCNode*, align 8
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 4
  %4 = load i8*, i8** %name, align 8
  %call = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %2, i8* %4)
  store %struct._tagTreeCCStream* %call, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 4
  %7 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* %7)
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 1
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %child, align 8
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp2 = icmp ne %struct._tagTreeCCNode* %11, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %flags3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 5
  %13 = load i32, i32* %flags3, align 4
  %and4 = and i32 %13, 16
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %while.body
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name7, align 8
  %17 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i32 0, i32 0), i8* %16, i32 %17)
  %18 = load i32, i32* %num, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %while.body
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 3
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %20, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %entry
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 10
  %7 = load i8*, i8** %state_type6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 8
  %bf.load8 = load i16, i16* %reentrant7, align 8
  %bf.shl9 = shl i16 %bf.load8, 12
  %bf.ashr10 = ashr i16 %bf.shl9, 15
  %bf.cast11 = sext i16 %bf.ashr10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %if.end.17, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 10
  %11 = load i8*, i8** %state_type14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* %11)
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type15 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 10
  %14 = load i8*, i8** %state_type15, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i8* %14)
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0))
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 10
  %19 = load i8*, i8** %state_type16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* %19)
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0))
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant18 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 8
  %bf.load19 = load i16, i16* %reentrant18, align 8
  %bf.shl20 = shl i16 %bf.load19, 12
  %bf.ashr21 = ashr i16 %bf.shl20, 15
  %bf.cast22 = sext i16 %bf.ashr21 to i32
  %tobool23 = icmp ne i32 %bf.cast22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.end.17
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 10
  %25 = load i8*, i8** %state_type25, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* %25)
  br label %if.end.28

if.else.26:                                       ; preds = %if.end.17
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %27, i32 0, i32 10
  %28 = load i8*, i8** %state_type27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0), i8* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %29, i32 0, i32 8
  %bf.load30 = load i16, i16* %reentrant29, align 8
  %bf.shl31 = shl i16 %bf.load30, 12
  %bf.ashr32 = ashr i16 %bf.shl31, 15
  %bf.cast33 = sext i16 %bf.ashr32 to i32
  %tobool34 = icmp ne i32 %bf.cast33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.28
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %30, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.28
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 8
  %bf.load37 = load i16, i16* %track_lines, align 8
  %bf.shl38 = shl i16 %bf.load37, 14
  %bf.ashr39 = ashr i16 %bf.shl38, 15
  %bf.cast40 = sext i16 %bf.ashr39 to i32
  %tobool41 = icmp ne i32 %bf.cast40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.36
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i32 0, i32 0))
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.36
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
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
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name, align 8
  %call1 = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %4, i8* %6)
  store %struct._tagTreeCCStream* %call1, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 0
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %8, null
  br i1 %tobool, label %if.then.2, label %if.else.12

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %isAbstract, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 4
  %12 = load i8*, i8** %name5, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 0
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent6, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 4
  %15 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0), i8* %12, i8* %15)
  br label %if.end.11

if.else:                                          ; preds = %if.then.2
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 4
  %18 = load i8*, i8** %name8, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 0
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent9, align 8
  %name10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name10, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i8* %18, i8* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.4
  br label %if.end.43

if.else.12:                                       ; preds = %if.end
  %22 = load i32, i32* %isAbstract, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %if.else.12
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %23, i32 0, i32 16
  %24 = load i8*, i8** %baseType, align 8
  %tobool15 = icmp ne i8* %24, null
  br i1 %tobool15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.then.14
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name17, align 8
  %28 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType18 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %28, i32 0, i32 16
  %29 = load i8*, i8** %baseType18, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0), i8* %27, i8* %29)
  br label %if.end.21

if.else.19:                                       ; preds = %if.then.14
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %31, i32 0, i32 4
  %32 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i8* %32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.16
  br label %if.end.31

if.else.22:                                       ; preds = %if.else.12
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %33, i32 0, i32 16
  %34 = load i8*, i8** %baseType23, align 8
  %tobool24 = icmp ne i8* %34, null
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.22
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name26 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %36, i32 0, i32 4
  %37 = load i8*, i8** %name26, align 8
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %38, i32 0, i32 16
  %39 = load i8*, i8** %baseType27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i8* %37, i8* %39)
  br label %if.end.30

if.else.28:                                       ; preds = %if.else.22
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name29 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 4
  %42 = load i8*, i8** %name29, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i8* %42)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.21
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0))
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 8
  %bf.load = load i16, i16* %track_lines, align 8
  %bf.shl = shl i16 %bf.load, 14
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool32 = icmp ne i32 %bf.cast, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i32 0, i32 0))
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0))
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines35 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 8
  %bf.load36 = load i16, i16* %track_lines35, align 8
  %bf.shl37 = shl i16 %bf.load36, 14
  %bf.ashr38 = ashr i16 %bf.shl37, 15
  %bf.cast39 = sext i16 %bf.ashr38 to i32
  %tobool40 = icmp ne i32 %bf.cast39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.68, i32 0, i32 0))
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.69, i32 0, i32 0))
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.70, i32 0, i32 0))
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.34
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.11
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %56 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %56, i32 0, i32 6
  %57 = load i32, i32* %number, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.72, i32 0, i32 0), i32 %57)
  %58 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %58, i32 0, i32 10
  %59 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  %tobool44 = icmp ne %struct._tagTreeCCField* %59, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %60 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %62 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareFields(%struct._tagTreeCCContext* %60, %struct._tagTreeCCStream* %61, %struct._tagTreeCCNode* %62)
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  %64 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %64, i32 0, i32 8
  %bf.load47 = load i16, i16* %reentrant, align 8
  %bf.shl48 = shl i16 %bf.load47, 12
  %bf.ashr49 = ashr i16 %bf.shl48, 15
  %bf.cast50 = sext i16 %bf.ashr49 to i32
  %tobool51 = icmp ne i32 %bf.cast50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.66

if.then.52:                                       ; preds = %if.end.46
  %65 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %65, i32 0, i32 8
  %bf.load53 = load i16, i16* %virtual_factory, align 8
  %bf.shl54 = shl i16 %bf.load53, 10
  %bf.ashr55 = ashr i16 %bf.shl54, 15
  %bf.cast56 = sext i16 %bf.ashr55 to i32
  %tobool57 = icmp ne i32 %bf.cast56, 0
  br i1 %tobool57, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %66 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %66, i32 0, i32 8
  %bf.load58 = load i16, i16* %abstract_factory, align 8
  %bf.shl59 = shl i16 %bf.load58, 9
  %bf.ashr60 = ashr i16 %bf.shl59, 15
  %bf.cast61 = sext i16 %bf.ashr60 to i32
  %tobool62 = icmp ne i32 %bf.cast61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %lor.lhs.false, %if.then.52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.73

if.else.66:                                       ; preds = %if.end.46
  %67 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags67 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %67, i32 0, i32 5
  %68 = load i32, i32* %flags67, align 4
  %and68 = and i32 %68, 2
  %cmp69 = icmp ne i32 %and68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.66
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.72

if.else.71:                                       ; preds = %if.else.66
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.65
  %69 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %70 = load i8*, i8** %constructorAccess, align 8
  %71 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name74 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %71, i32 0, i32 4
  %72 = load i8*, i8** %name74, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* %70, i8* %72)
  %73 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant75 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %73, i32 0, i32 8
  %bf.load76 = load i16, i16* %reentrant75, align 8
  %bf.shl77 = shl i16 %bf.load76, 12
  %bf.ashr78 = ashr i16 %bf.shl77, 15
  %bf.cast79 = sext i16 %bf.ashr78 to i32
  %tobool80 = icmp ne i32 %bf.cast79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.end.73
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %75 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %75, i32 0, i32 10
  %76 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* %76)
  store i32 1, i32* %needComma, align 4
  br label %if.end.83

if.else.82:                                       ; preds = %if.end.73
  store i32 0, i32* %needComma, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.81
  %77 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %78 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %79 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %80 = load i32, i32* %needComma, align 4
  %call84 = call i32 @CreateParams(%struct._tagTreeCCContext* %77, %struct._tagTreeCCStream* %78, %struct._tagTreeCCNode* %79, i32 %80)
  %81 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %83 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent85 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %83, i32 0, i32 0
  %84 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent85, align 8
  %tobool86 = icmp ne %struct._tagTreeCCNode* %84, null
  br i1 %tobool86, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.end.83
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0))
  %86 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant88 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %86, i32 0, i32 8
  %bf.load89 = load i16, i16* %reentrant88, align 8
  %bf.shl90 = shl i16 %bf.load89, 12
  %bf.ashr91 = ashr i16 %bf.shl90, 15
  %bf.cast92 = sext i16 %bf.ashr91 to i32
  %tobool93 = icmp ne i32 %bf.cast92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.then.87
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.96

if.else.95:                                       ; preds = %if.then.87
  store i32 0, i32* %needComma, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.94
  %88 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %89 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %90 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent97 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %90, i32 0, i32 0
  %91 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent97, align 8
  %92 = load i32, i32* %needComma, align 4
  %call98 = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %88, %struct._tagTreeCCStream* %89, %struct._tagTreeCCNode* %91, i32 %92)
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %if.end.83
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0))
  %95 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines100 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %95, i32 0, i32 8
  %bf.load101 = load i16, i16* %track_lines100, align 8
  %bf.shl102 = shl i16 %bf.load101, 14
  %bf.ashr103 = ashr i16 %bf.shl102, 15
  %bf.cast104 = sext i16 %bf.ashr103 to i32
  %tobool105 = icmp ne i32 %bf.cast104, 0
  br i1 %tobool105, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %if.end.99
  %96 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent106 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %96, i32 0, i32 0
  %97 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent106, align 8
  %tobool107 = icmp ne %struct._tagTreeCCNode* %97, null
  br i1 %tobool107, label %if.end.120, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true
  %98 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant109 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %98, i32 0, i32 8
  %bf.load110 = load i16, i16* %reentrant109, align 8
  %bf.shl111 = shl i16 %bf.load110, 12
  %bf.ashr112 = ashr i16 %bf.shl111, 15
  %bf.cast113 = sext i16 %bf.ashr112 to i32
  %tobool114 = icmp ne i32 %bf.cast113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.then.108
  %99 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.81, i32 0, i32 0))
  %100 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.119

if.else.116:                                      ; preds = %if.then.108
  %101 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %102 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type117 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %102, i32 0, i32 10
  %103 = load i8*, i8** %state_type117, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* %103)
  %104 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %105 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type118 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %105, i32 0, i32 10
  %106 = load i8*, i8** %state_type118, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.84, i32 0, i32 0), i8* %106)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %land.lhs.true, %if.end.99
  %107 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields121 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %107, i32 0, i32 10
  %108 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields121, align 8
  store %struct._tagTreeCCField* %108, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.135, %if.end.120
  %109 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp122 = icmp ne %struct._tagTreeCCField* %109, null
  br i1 %cmp122, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %110 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags123 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %110, i32 0, i32 3
  %111 = load i32, i32* %flags123, align 4
  %and124 = and i32 %111, 1
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %while.body
  %112 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %113 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name127 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %113, i32 0, i32 0
  %114 = load i8*, i8** %name127, align 8
  %115 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name128 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %115, i32 0, i32 0
  %116 = load i8*, i8** %name128, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i8* %114, i8* %116)
  br label %if.end.135

if.else.129:                                      ; preds = %while.body
  %117 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %117, i32 0, i32 2
  %118 = load i8*, i8** %value, align 8
  %tobool130 = icmp ne i8* %118, null
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.else.129
  %119 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %120 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name132 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %120, i32 0, i32 0
  %121 = load i8*, i8** %name132, align 8
  %122 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value133 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %122, i32 0, i32 2
  %123 = load i8*, i8** %value133, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i8* %121, i8* %123)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.else.129
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.126
  %124 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %124, i32 0, i32 6
  %125 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %125, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %126 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  %127 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %128 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %129 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %130 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %127, %struct._tagTreeCCStream* %128, %struct._tagTreeCCNode* %129, %struct._tagTreeCCNode* %130)
  %131 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0))
  %132 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %133 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0))
  %134 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0))
  %135 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0))
  %136 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent136 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %136, i32 0, i32 0
  %137 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent136, align 8
  %tobool137 = icmp ne %struct._tagTreeCCNode* %137, null
  br i1 %tobool137, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %while.end
  %138 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0))
  br label %if.end.140

if.else.139:                                      ; preds = %while.end
  %139 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %if.then.138
  %140 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  %141 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.92, i32 0, i32 0))
  %142 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %143 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %144 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name141 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %144, i32 0, i32 4
  %145 = load i8*, i8** %name141, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i32 0, i32 0), i8* %145)
  %146 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  %147 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.140, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @WriteJavaFooters(%struct._tagTreeCCContext* %context) #0 {
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
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %8, i32 0, i32 10
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %9, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCStreamPrint(%struct._tagTreeCCStream*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @JavaGenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
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
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 2
  %3 = load i8*, i8** %returnType, align 8
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* %3, i8* %5, i32 %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 2
  %9 = load i8*, i8** %returnType1, align 8
  %10 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %10, i32 0, i32 0
  %11 = load i8*, i8** %name2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 4
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %13, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %14 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp3 = icmp ne %struct._tagTreeCCParam* %14, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %while.body
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 13
  %18 = load i32, i32* %language, align 4
  %cmp6 = icmp eq i32 %18, 3
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.5
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %20 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %20, i32 0, i32 1
  %21 = load i8*, i8** %type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %21)
  br label %if.end.10

if.else.8:                                        ; preds = %if.end.5
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type9 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %24, i32 0, i32 1
  %25 = load i8*, i8** %type9, align 8
  %call = call i8* @ConvertType(%struct._tagTreeCCContext* %23, i8* %25)
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %call)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  %26 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %26, i32 0, i32 0
  %27 = load i8*, i8** %name11, align 8
  %tobool12 = icmp ne i8* %27, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.10
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %29 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %29, i32 0, i32 0
  %30 = load i8*, i8** %name14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %30)
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.10
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %32 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %32)
  %33 = load i32, i32* %num, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.13
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 2
  %35 = load i32, i32* %flags, align 4
  %and = and i32 %35, 1
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.16
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %37 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type19 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %37, i32 0, i32 1
  %38 = load i8*, i8** %type19, align 8
  %call20 = call i32 @IsEnumType(%struct._tagTreeCCContext* %36, i8* %38)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.18
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  store i32 1, i32* %needComma, align 4
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 4
  %41 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %41, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @ConvertType(%struct._tagTreeCCContext* %context, i8* %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %type.addr = alloca i8*, align 8
  %node = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %1 = load i8*, i8** %type.addr, align 8
  %call = call %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext* %0, i8* %1)
  store %struct._tagTreeCCNode* %call, %struct._tagTreeCCNode** %node, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 5
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %type.addr, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
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

declare %struct._tagTreeCCNode* @TreeCCNodeFind(%struct._tagTreeCCContext*, i8*) #1

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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %while.end
  %5 = load i32, i32* %indent.addr, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.7

if.else.4:                                        ; preds = %if.else
  %7 = load i32, i32* %indent.addr, align 4
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.4
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
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

declare void @TreeCCStreamSourceTop(%struct._tagTreeCCStream*) #1

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
  br label %if.end.22

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.22

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 10
  %6 = load i8*, i8** %state_type, align 8
  %call = call %struct._tagTreeCCStream* @TreeCCStreamGetJava(%struct._tagTreeCCContext* %4, i8* %6)
  store %struct._tagTreeCCStream* %call, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %bf.load = load i16, i16* %abstract_factory, align 8
  %bf.shl = shl i16 %bf.load, 9
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.5
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 4
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 4
  %12 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i32 0, i32 0), i8* %10, i8* %12)
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 4
  %15 = load i8*, i8** %name8, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 4
  %17 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8* %15, i8* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call11 = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %18, %struct._tagTreeCCStream* %19, %struct._tagTreeCCNode* %20, i32 0)
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 8
  %bf.load13 = load i16, i16* %abstract_factory12, align 8
  %bf.shl14 = shl i16 %bf.load13, 9
  %bf.ashr15 = ashr i16 %bf.shl14, 15
  %bf.cast16 = sext i16 %bf.ashr15 to i32
  %tobool17 = icmp ne i32 %bf.cast16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.10
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.22

if.else.19:                                       ; preds = %if.end.10
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i8* %27)
  %28 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call21 = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %28, %struct._tagTreeCCStream* %29, %struct._tagTreeCCNode* %30, i32 1)
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then, %if.then.4, %if.else.19, %if.then.18
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

while.cond:                                       ; preds = %if.end.8, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %16, i32 0, i32 1
  %17 = load i8*, i8** %type, align 8
  %call7 = call i8* @ConvertType(%struct._tagTreeCCContext* %15, i8* %17)
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %18, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %call7, i8* %19)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %while.body
  %20 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %20, i32 0, i32 6
  %21 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %21, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %needComma.addr, align 4
  ret i32 %22
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %16)
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
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %5, i32 0, i32 1
  %6 = load i8*, i8** %type, align 8
  %call = call i8* @ConvertType(%struct._tagTreeCCContext* %4, i8* %6)
  %7 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0), i8* %call, i8* %8)
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %9, i32 0, i32 6
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %10, %struct._tagTreeCCField** %field, align 8
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

while.cond:                                       ; preds = %if.end.8, %if.end
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 3
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %needComma.addr, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %16, i32 0, i32 1
  %17 = load i8*, i8** %type, align 8
  %call7 = call i8* @ConvertType(%struct._tagTreeCCContext* %15, i8* %17)
  %18 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %18, i32 0, i32 0
  %19 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %call7, i8* %19)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %while.body
  %20 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %20, i32 0, i32 6
  %21 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %21, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %needComma.addr, align 4
  ret i32 %22
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %16)
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

while.cond:                                       ; preds = %if.end.72, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.74

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
  br i1 %tobool15, label %if.then.16, label %if.end.72

if.then.16:                                       ; preds = %if.end.14
  %27 = load i32, i32* %abstractCase, align 4
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.then.16
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %30 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %30, i32 0, i32 1
  %31 = load i8*, i8** %returnType, align 8
  %call19 = call i8* @ConvertType(%struct._tagTreeCCContext* %29, i8* %31)
  %32 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %32, i32 0, i32 0
  %33 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0), i8* %call19, i8* %33)
  br label %if.end.25

if.else.21:                                       ; preds = %if.then.16
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %36 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType22 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %36, i32 0, i32 1
  %37 = load i8*, i8** %returnType22, align 8
  %call23 = call i8* @ConvertType(%struct._tagTreeCCContext* %35, i8* %37)
  %38 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name24 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %38, i32 0, i32 0
  %39 = load i8*, i8** %name24, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i8* %call23, i8* %39)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.then.18
  %40 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %40, i32 0, i32 3
  %41 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %41, i32 0, i32 4
  %42 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %42, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  store i32 1, i32* %first, align 4
  br label %while.cond.26

while.cond.26:                                    ; preds = %if.end.49, %if.end.25
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp27 = icmp ne %struct._tagTreeCCParam* %43, null
  br i1 %cmp27, label %while.body.28, label %while.end.50

while.body.28:                                    ; preds = %while.cond.26
  %44 = load i32, i32* %needComma, align 4
  %tobool29 = icmp ne i32 %44, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body.28
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %while.body.28
  %46 = load i32, i32* %first, align 4
  %tobool32 = icmp ne i32 %46, 0
  br i1 %tobool32, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %if.end.31
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name34 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %47, i32 0, i32 0
  %48 = load i8*, i8** %name34, align 8
  %tobool35 = icmp ne i8* %48, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  %49 = load i32, i32* %num, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  store i32 0, i32* %first, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %if.end.31
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name39 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 0
  %51 = load i8*, i8** %name39, align 8
  %tobool40 = icmp ne i8* %51, null
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.38
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %54 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %54, i32 0, i32 1
  %55 = load i8*, i8** %type, align 8
  %call42 = call i8* @ConvertType(%struct._tagTreeCCContext* %53, i8* %55)
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name43 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %56, i32 0, i32 0
  %57 = load i8*, i8** %name43, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %call42, i8* %57)
  br label %if.end.48

if.else.44:                                       ; preds = %if.else.38
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %59 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %60 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type45 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %60, i32 0, i32 1
  %61 = load i8*, i8** %type45, align 8
  %call46 = call i8* @ConvertType(%struct._tagTreeCCContext* %59, i8* %61)
  %62 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* %call46, i32 %62)
  %63 = load i32, i32* %num, align 4
  %inc47 = add nsw i32 %63, 1
  store i32 %inc47, i32* %num, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.44, %if.then.41
  store i32 1, i32* %needComma, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.37
  %64 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %64, i32 0, i32 4
  %65 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %65, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.26

while.end.50:                                     ; preds = %while.cond.26
  %66 = load i32, i32* %abstractCase, align 4
  %tobool51 = icmp ne i32 %66, 0
  br i1 %tobool51, label %if.else.70, label %if.then.52

if.then.52:                                       ; preds = %while.end.50
  %67 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %69 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper53 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %69, i32 0, i32 3
  %70 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper53, align 8
  %params54 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %70, i32 0, i32 4
  %71 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params54, align 8
  %name55 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %71, i32 0, i32 0
  %72 = load i8*, i8** %name55, align 8
  %tobool56 = icmp ne i8* %72, null
  br i1 %tobool56, label %lor.lhs.false, label %if.then.62

lor.lhs.false:                                    ; preds = %if.then.52
  %73 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper57 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %73, i32 0, i32 3
  %74 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper57, align 8
  %params58 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %74, i32 0, i32 4
  %75 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params58, align 8
  %name59 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %75, i32 0, i32 0
  %76 = load i8*, i8** %name59, align 8
  %call60 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0)) #3
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else.63, label %if.then.62

if.then.62:                                       ; preds = %lor.lhs.false, %if.then.52
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %78 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %78, i32 0, i32 1
  %79 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %77, i8* %79, i32 1)
  br label %if.end.69

if.else.63:                                       ; preds = %lor.lhs.false
  %80 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %81 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name64 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %81, i32 0, i32 4
  %82 = load i8*, i8** %name64, align 8
  %83 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper65 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %83, i32 0, i32 3
  %84 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper65, align 8
  %params66 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %84, i32 0, i32 4
  %85 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params66, align 8
  %name67 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %85, i32 0, i32 0
  %86 = load i8*, i8** %name67, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), i8* %82, i8* %86)
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %88 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code68 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %88, i32 0, i32 1
  %89 = load i8*, i8** %code68, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %87, i8* %89, i32 1)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.62
  %90 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  br label %if.end.71

if.else.70:                                       ; preds = %while.end.50
  %91 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.end.69
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.14
  %92 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next73 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %92, i32 0, i32 4
  %93 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next73, align 8
  store %struct._tagTreeCCVirtual* %93, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.74:                                     ; preds = %while.cond
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
