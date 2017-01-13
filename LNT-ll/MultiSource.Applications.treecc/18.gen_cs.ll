; ModuleID = './MultiSource.Applications.treecc/18.gen_cs.bc'
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

@TreeCCNonVirtualFuncsJava = external constant %struct.TreeCCNonVirtual, align 8
@.str = private unnamed_addr constant [47 x i8] c"/* %s.  Generated automatically by treecc */\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"namespace %s\0A{\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"using System;\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"internal enum %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"public enum %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"internal abstract class %s\0A{\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"public abstract class %s\0A{\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"internal class %s\0A{\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"public class %s\0A{\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\09private static %s state__;\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"\09public static %s getState()\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\09\09if(state__ != null) return state__;\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\09\09state__ = new %s();\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\09\09return state__;\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\09public %s() {}\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\09public %s() { state__ = this; }\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\09public virtual String currFilename() { return null; }\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\09public virtual long currLinenum() { return 0; }\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"\09public virtual abstract %s %sCreate(\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\09public virtual %s %sCreate(\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\09public %s %sCreate(\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"\09\09return new %s(this\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"%s abstract class %s : %s\0A{\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"%s class %s : %s\0A{\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"%s abstract class %s\0A{\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"%s class %s\0A{\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"\09protected int kind__;\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\09protected String filename__;\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"\09protected long linenum__;\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"\09public int getKind() { return kind__; }\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"\09public String getFilename() { return filename__; }\0A\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"\09public long getLinenum() { return linenum__; }\0A\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"\09public void setFilename(String filename) { filename__ = filename; }\0A\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"\09public void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"\09public new const int KIND = %d;\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"\09public const int KIND = %d;\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\09%s%s(\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"%s state__\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"\09\09: base(\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\09\09this.kind__ = KIND;\0A\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"\09\09this.filename__ = state__.currFilename();\0A\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"\09\09this.linenum__ = state__.currLinenum();\0A\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"\09\09this.filename__ = %s.getState().currFilename();\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"\09\09this.linenum__ = %s.getState().currLinenum();\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"\09\09this.%s = %s;\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"\09public override int isA(int kind)\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"\09public virtual int isA(int kind)\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"\09\09if(kind == KIND)\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"\09\09else\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"\09\09\09return base.isA(kind);\0A\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"\09\09\09return 0;\0A\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"\09public override String getKindName()\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"\09public virtual String getKindName()\0A\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"\09\09return \22%s\22;\0A\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"\09public %s %s;\0A\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"\09public abstract %s %s(\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"\09public virtual %s %s(\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"\09public override %s %s(\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"\0A\09\09%s %s = this;\0A\09\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateCSharp(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteCSharpHeaders(%struct._tagTreeCCContext* %0)
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
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %11, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsJava)
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteCSharpFooters(%struct._tagTreeCCContext* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteCSharpHeaders(%struct._tagTreeCCContext* %context) #0 {
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
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %embedName = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %5, i32 0, i32 2
  %6 = load i8*, i8** %embedName, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i8* %6)
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 11
  %8 = load i8*, i8** %namespace, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 11
  %11 = load i8*, i8** %namespace3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTopCS(%struct._tagTreeCCStream* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %while.body
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 7
  %bf.load5 = load i8, i8* %defaultFile, align 4
  %bf.shl6 = shl i8 %bf.load5, 4
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.4
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %15, i32 0, i32 7
  %bf.load11 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load11, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.4
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %16, i32 0, i32 10
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %17, %struct._tagTreeCCStream** %stream, align 8
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
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %child = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 5
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 14
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %3, %struct._tagTreeCCStream** %stream, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 8
  %bf.load = load i16, i16* %internal_access, align 8
  %bf.shl = shl i16 %bf.load, 5
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 4
  %7 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 4
  %10 = load i8*, i8** %name2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 1
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %13, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp3 = icmp ne %struct._tagTreeCCNode* %14, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %flags4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 5
  %16 = load i32, i32* %flags4, align 4
  %and5 = and i32 %16, 16
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.body
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 4
  %19 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %19)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %while.body
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 3
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %21, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %while.end, %entry
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
  br i1 %tobool, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 8
  %bf.load1 = load i16, i16* %abstract_factory, align 8
  %bf.shl2 = shl i16 %bf.load1, 9
  %bf.ashr3 = ashr i16 %bf.shl2, 15
  %bf.cast4 = sext i16 %bf.ashr3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.then, label %if.else.13

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %bf.load6 = load i16, i16* %internal_access, align 8
  %bf.shl7 = shl i16 %bf.load6, 5
  %bf.ashr8 = ashr i16 %bf.shl7, 15
  %bf.cast9 = sext i16 %bf.ashr8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 10
  %5 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 10
  %8 = load i8*, i8** %state_type12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.25

if.else.13:                                       ; preds = %land.lhs.true, %entry
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %internal_access14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 8
  %bf.load15 = load i16, i16* %internal_access14, align 8
  %bf.shl16 = shl i16 %bf.load15, 5
  %bf.ashr17 = ashr i16 %bf.shl16, 15
  %bf.cast18 = sext i16 %bf.ashr17 to i32
  %tobool19 = icmp ne i32 %bf.cast18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.13
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type21 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 10
  %12 = load i8*, i8** %state_type21, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* %12)
  br label %if.end.24

if.else.22:                                       ; preds = %if.else.13
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 10
  %15 = load i8*, i8** %state_type23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %15)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant26 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 8
  %bf.load27 = load i16, i16* %reentrant26, align 8
  %bf.shl28 = shl i16 %bf.load27, 12
  %bf.ashr29 = ashr i16 %bf.shl28, 15
  %bf.cast30 = sext i16 %bf.ashr29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.end.36, label %if.then.32

if.then.32:                                       ; preds = %if.end.25
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type33 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 10
  %19 = load i8*, i8** %state_type33, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %19)
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type34 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 10
  %22 = load i8*, i8** %state_type34, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* %22)
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0))
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type35 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %26, i32 0, i32 10
  %27 = load i8*, i8** %state_type35, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* %27)
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.25
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant37 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %30, i32 0, i32 8
  %bf.load38 = load i16, i16* %reentrant37, align 8
  %bf.shl39 = shl i16 %bf.load38, 12
  %bf.ashr40 = ashr i16 %bf.shl39, 15
  %bf.cast41 = sext i16 %bf.ashr40 to i32
  %tobool42 = icmp ne i32 %bf.cast41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.36
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type44 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 10
  %33 = load i8*, i8** %state_type44, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %33)
  br label %if.end.47

if.else.45:                                       ; preds = %if.end.36
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type46 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 10
  %36 = load i8*, i8** %state_type46, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* %36)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  %37 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant48 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %37, i32 0, i32 8
  %bf.load49 = load i16, i16* %reentrant48, align 8
  %bf.shl50 = shl i16 %bf.load49, 12
  %bf.ashr51 = ashr i16 %bf.shl50, 15
  %bf.cast52 = sext i16 %bf.ashr51 to i32
  %tobool53 = icmp ne i32 %bf.cast52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.47
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %38, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.47
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 8
  %bf.load56 = load i16, i16* %track_lines, align 8
  %bf.shl57 = shl i16 %bf.load56, 14
  %bf.ashr58 = ashr i16 %bf.shl57, 15
  %bf.cast59 = sext i16 %bf.ashr58 to i32
  %tobool60 = icmp ne i32 %bf.cast59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.55
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0))
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.55
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
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
  %accessMode = alloca i8*, align 8
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
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 8
  %bf.load = load i16, i16* %internal_access, align 8
  %bf.shl = shl i16 %bf.load, 5
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8** %accessMode, align 8
  br label %if.end.2

if.else:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8** %accessMode, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 14
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %6, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 0
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool3 = icmp ne %struct._tagTreeCCNode* %8, null
  br i1 %tobool3, label %if.then.4, label %if.else.14

if.then.4:                                        ; preds = %if.end.2
  %9 = load i32, i32* %isAbstract, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.then.4
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %11 = load i8*, i8** %accessMode, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 0
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent7, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %11, i8* %13, i8* %16)
  br label %if.end.13

if.else.9:                                        ; preds = %if.then.4
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %18 = load i8*, i8** %accessMode, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 4
  %20 = load i8*, i8** %name10, align 8
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent11, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 4
  %23 = load i8*, i8** %name12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %18, i8* %20, i8* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.9, %if.then.6
  br label %if.end.49

if.else.14:                                       ; preds = %if.end.2
  %24 = load i32, i32* %isAbstract, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else.14
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %25, i32 0, i32 16
  %26 = load i8*, i8** %baseType, align 8
  %tobool17 = icmp ne i8* %26, null
  br i1 %tobool17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.then.16
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %28 = load i8*, i8** %accessMode, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name19, align 8
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType20 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 16
  %32 = load i8*, i8** %baseType20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %28, i8* %30, i8* %32)
  br label %if.end.23

if.else.21:                                       ; preds = %if.then.16
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %34 = load i8*, i8** %accessMode, align 8
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name22 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 4
  %36 = load i8*, i8** %name22, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* %34, i8* %36)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.18
  br label %if.end.33

if.else.24:                                       ; preds = %if.else.14
  %37 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %37, i32 0, i32 16
  %38 = load i8*, i8** %baseType25, align 8
  %tobool26 = icmp ne i8* %38, null
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else.24
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %40 = load i8*, i8** %accessMode, align 8
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 4
  %42 = load i8*, i8** %name28, align 8
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %43, i32 0, i32 16
  %44 = load i8*, i8** %baseType29, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %40, i8* %42, i8* %44)
  br label %if.end.32

if.else.30:                                       ; preds = %if.else.24
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %46 = load i8*, i8** %accessMode, align 8
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name31 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %47, i32 0, i32 4
  %48 = load i8*, i8** %name31, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8* %46, i8* %48)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.23
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0))
  %50 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %50, i32 0, i32 8
  %bf.load34 = load i16, i16* %track_lines, align 8
  %bf.shl35 = shl i16 %bf.load34, 14
  %bf.ashr36 = ashr i16 %bf.shl35, 15
  %bf.cast37 = sext i16 %bf.ashr36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.33
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0))
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.33
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0))
  %55 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines41 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %55, i32 0, i32 8
  %bf.load42 = load i16, i16* %track_lines41, align 8
  %bf.shl43 = shl i16 %bf.load42, 14
  %bf.ashr44 = ashr i16 %bf.shl43, 15
  %bf.cast45 = sext i16 %bf.ashr44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  %56 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0))
  %57 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.44, i32 0, i32 0))
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i32 0, i32 0))
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.40
  %60 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.13
  %61 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent50 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %61, i32 0, i32 0
  %62 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent50, align 8
  %tobool51 = icmp ne %struct._tagTreeCCNode* %62, null
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %64 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %64, i32 0, i32 6
  %65 = load i32, i32* %number, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i32 %65)
  br label %if.end.55

if.else.53:                                       ; preds = %if.end.49
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %67 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number54 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %67, i32 0, i32 6
  %68 = load i32, i32* %number54, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i32 0, i32 0), i32 %68)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.52
  %69 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %69, i32 0, i32 10
  %70 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  %tobool56 = icmp ne %struct._tagTreeCCField* %70, null
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %72 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %73 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareFields(%struct._tagTreeCCContext* %71, %struct._tagTreeCCStream* %72, %struct._tagTreeCCNode* %73)
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  %75 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %75, i32 0, i32 8
  %bf.load59 = load i16, i16* %reentrant, align 8
  %bf.shl60 = shl i16 %bf.load59, 12
  %bf.ashr61 = ashr i16 %bf.shl60, 15
  %bf.cast62 = sext i16 %bf.ashr61 to i32
  %tobool63 = icmp ne i32 %bf.cast62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.58
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.72

if.else.65:                                       ; preds = %if.end.58
  %76 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags66 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %76, i32 0, i32 5
  %77 = load i32, i32* %flags66, align 4
  %and67 = and i32 %77, 2
  %cmp68 = icmp ne i32 %and67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.65
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.71

if.else.70:                                       ; preds = %if.else.65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8** %constructorAccess, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.64
  %78 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %79 = load i8*, i8** %constructorAccess, align 8
  %80 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name73 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %80, i32 0, i32 4
  %81 = load i8*, i8** %name73, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %79, i8* %81)
  %82 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant74 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %82, i32 0, i32 8
  %bf.load75 = load i16, i16* %reentrant74, align 8
  %bf.shl76 = shl i16 %bf.load75, 12
  %bf.ashr77 = ashr i16 %bf.shl76, 15
  %bf.cast78 = sext i16 %bf.ashr77 to i32
  %tobool79 = icmp ne i32 %bf.cast78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.72
  %83 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %84 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %84, i32 0, i32 10
  %85 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* %85)
  store i32 1, i32* %needComma, align 4
  br label %if.end.82

if.else.81:                                       ; preds = %if.end.72
  store i32 0, i32* %needComma, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.80
  %86 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %88 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %89 = load i32, i32* %needComma, align 4
  %call83 = call i32 @CreateParams(%struct._tagTreeCCContext* %86, %struct._tagTreeCCStream* %87, %struct._tagTreeCCNode* %88, i32 %89)
  %90 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %91 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent84 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %91, i32 0, i32 0
  %92 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent84, align 8
  %tobool85 = icmp ne %struct._tagTreeCCNode* %92, null
  br i1 %tobool85, label %if.then.86, label %if.end.98

if.then.86:                                       ; preds = %if.end.82
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0))
  %94 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant87 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %94, i32 0, i32 8
  %bf.load88 = load i16, i16* %reentrant87, align 8
  %bf.shl89 = shl i16 %bf.load88, 12
  %bf.ashr90 = ashr i16 %bf.shl89, 15
  %bf.cast91 = sext i16 %bf.ashr90 to i32
  %tobool92 = icmp ne i32 %bf.cast91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.then.86
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %if.then.86
  store i32 0, i32* %needComma, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.93
  %96 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %97 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %98 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent96 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %98, i32 0, i32 0
  %99 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent96, align 8
  %100 = load i32, i32* %needComma, align 4
  %call97 = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %96, %struct._tagTreeCCStream* %97, %struct._tagTreeCCNode* %99, i32 %100)
  %101 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.95, %if.end.82
  %102 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %103 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0))
  %104 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines99 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %104, i32 0, i32 8
  %bf.load100 = load i16, i16* %track_lines99, align 8
  %bf.shl101 = shl i16 %bf.load100, 14
  %bf.ashr102 = ashr i16 %bf.shl101, 15
  %bf.cast103 = sext i16 %bf.ashr102 to i32
  %tobool104 = icmp ne i32 %bf.cast103, 0
  br i1 %tobool104, label %land.lhs.true, label %if.end.119

land.lhs.true:                                    ; preds = %if.end.98
  %105 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent105 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %105, i32 0, i32 0
  %106 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent105, align 8
  %tobool106 = icmp ne %struct._tagTreeCCNode* %106, null
  br i1 %tobool106, label %if.end.119, label %if.then.107

if.then.107:                                      ; preds = %land.lhs.true
  %107 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant108 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %107, i32 0, i32 8
  %bf.load109 = load i16, i16* %reentrant108, align 8
  %bf.shl110 = shl i16 %bf.load109, 12
  %bf.ashr111 = ashr i16 %bf.shl110, 15
  %bf.cast112 = sext i16 %bf.ashr111 to i32
  %tobool113 = icmp ne i32 %bf.cast112, 0
  br i1 %tobool113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.then.107
  %108 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i32 0, i32 0))
  %109 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.118

if.else.115:                                      ; preds = %if.then.107
  %110 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %111 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type116 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %111, i32 0, i32 10
  %112 = load i8*, i8** %state_type116, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.58, i32 0, i32 0), i8* %112)
  %113 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %114 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type117 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %114, i32 0, i32 10
  %115 = load i8*, i8** %state_type117, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0), i8* %115)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true, %if.end.98
  %116 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields120 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %116, i32 0, i32 10
  %117 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields120, align 8
  store %struct._tagTreeCCField* %117, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.134, %if.end.119
  %118 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp121 = icmp ne %struct._tagTreeCCField* %118, null
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %119 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags122 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %119, i32 0, i32 3
  %120 = load i32, i32* %flags122, align 4
  %and123 = and i32 %120, 1
  %cmp124 = icmp eq i32 %and123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %while.body
  %121 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %122 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name126 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %122, i32 0, i32 0
  %123 = load i8*, i8** %name126, align 8
  %124 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name127 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %124, i32 0, i32 0
  %125 = load i8*, i8** %name127, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* %123, i8* %125)
  br label %if.end.134

if.else.128:                                      ; preds = %while.body
  %126 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %126, i32 0, i32 2
  %127 = load i8*, i8** %value, align 8
  %tobool129 = icmp ne i8* %127, null
  br i1 %tobool129, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.else.128
  %128 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %129 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name131 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %129, i32 0, i32 0
  %130 = load i8*, i8** %name131, align 8
  %131 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value132 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %131, i32 0, i32 2
  %132 = load i8*, i8** %value132, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* %130, i8* %132)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %if.else.128
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.125
  %133 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %133, i32 0, i32 6
  %134 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %134, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %135 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %136 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %137 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %138 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %139 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %136, %struct._tagTreeCCStream* %137, %struct._tagTreeCCNode* %138, %struct._tagTreeCCNode* %139)
  %140 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent135 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %140, i32 0, i32 0
  %141 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent135, align 8
  %tobool136 = icmp ne %struct._tagTreeCCNode* %141, null
  br i1 %tobool136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %while.end
  %142 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.139

if.else.138:                                      ; preds = %while.end
  %143 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138, %if.then.137
  %144 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %145 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0))
  %146 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0))
  %147 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0))
  %148 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent140 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %148, i32 0, i32 0
  %149 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent140, align 8
  %tobool141 = icmp ne %struct._tagTreeCCNode* %149, null
  br i1 %tobool141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.end.139
  %150 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.144

if.else.143:                                      ; preds = %if.end.139
  %151 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  %152 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %153 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent145 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %153, i32 0, i32 0
  %154 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent145, align 8
  %tobool146 = icmp ne %struct._tagTreeCCNode* %154, null
  br i1 %tobool146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %if.end.144
  %155 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.149

if.else.148:                                      ; preds = %if.end.144
  %156 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.then.147
  %157 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %158 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %159 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name150 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %159, i32 0, i32 4
  %160 = load i8*, i8** %name150, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i8* %160)
  %161 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0))
  %162 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.149, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @WriteCSharpFooters(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
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
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %6, i32 0, i32 7
  %bf.load6 = load i8, i8* %isHeader, align 4
  %bf.shl7 = shl i8 %bf.load6, 5
  %bf.ashr8 = ashr i8 %bf.shl7, 7
  %bf.cast9 = sext i8 %bf.ashr8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream* %7)
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 11
  %9 = load i8*, i8** %namespace, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.11
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %11, i32 0, i32 10
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %12, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCStreamPrint(%struct._tagTreeCCStream*, i8*, ...) #1

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
  br label %if.end.36

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.36

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
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 4
  %15 = load i8*, i8** %name11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0), i8* %13, i8* %15)
  br label %if.end.25

if.else.12:                                       ; preds = %if.end.8
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 8
  %bf.load13 = load i16, i16* %virtual_factory, align 8
  %bf.shl14 = shl i16 %bf.load13, 10
  %bf.ashr15 = ashr i16 %bf.shl14, 15
  %bf.cast16 = sext i16 %bf.ashr15 to i32
  %tobool17 = icmp ne i32 %bf.cast16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.else.12
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 4
  %19 = load i8*, i8** %name19, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i8* %19, i8* %21)
  br label %if.end.24

if.else.21:                                       ; preds = %if.else.12
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name22 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 4
  %24 = load i8*, i8** %name22, align 8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* %24, i8* %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.10
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %27, %struct._tagTreeCCStream* %28, %struct._tagTreeCCNode* %29, i32 0)
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory26 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %30, i32 0, i32 8
  %bf.load27 = load i16, i16* %abstract_factory26, align 8
  %bf.shl28 = shl i16 %bf.load27, 9
  %bf.ashr29 = ashr i16 %bf.shl28, 15
  %bf.cast30 = sext i16 %bf.ashr29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.25
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.36

if.else.33:                                       ; preds = %if.end.25
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name34 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 4
  %36 = load i8*, i8** %name34, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* %36)
  %37 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call35 = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %37, %struct._tagTreeCCStream* %38, %struct._tagTreeCCNode* %39, i32 1)
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then, %if.then.4, %if.else.33, %if.then.32
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %16, i8* %18)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %19 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %19, i32 0, i32 6
  %20 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %20, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %needComma.addr, align 4
  ret i32 %21
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %16)
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
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %4, i32 0, i32 1
  %5 = load i8*, i8** %type, align 8
  %6 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i8* %5, i8* %7)
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %8, i32 0, i32 6
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %9, %struct._tagTreeCCField** %field, align 8
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %16, i8* %18)
  store i32 1, i32* %needComma.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %while.body
  %19 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %19, i32 0, i32 6
  %20 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %20, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %needComma.addr, align 4
  ret i32 %21
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %16)
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

while.cond:                                       ; preds = %if.end.79, %if.else.22, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.81

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
  br i1 %tobool15, label %if.then.16, label %if.end.79

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
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %31, i32 0, i32 1
  %32 = load i8*, i8** %returnType, align 8
  %33 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %33, i32 0, i32 0
  %34 = load i8*, i8** %name21, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i32 0, i32 0), i8* %32, i8* %34)
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.18
  %35 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %35, i32 0, i32 4
  %36 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %36, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.33

if.else.24:                                       ; preds = %if.then.16
  %37 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %cmp25 = icmp eq %struct._tagTreeCCNode* %37, %38
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else.24
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %40 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType27 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %40, i32 0, i32 1
  %41 = load i8*, i8** %returnType27, align 8
  %42 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %42, i32 0, i32 0
  %43 = load i8*, i8** %name28, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i8* %41, i8* %43)
  br label %if.end.32

if.else.29:                                       ; preds = %if.else.24
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %45 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType30 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %45, i32 0, i32 1
  %46 = load i8*, i8** %returnType30, align 8
  %47 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name31 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %47, i32 0, i32 0
  %48 = load i8*, i8** %name31, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0), i8* %46, i8* %48)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.23
  %49 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %49, i32 0, i32 3
  %50 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %50, i32 0, i32 4
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %51, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  store i32 1, i32* %first, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.55, %if.end.33
  %52 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp35 = icmp ne %struct._tagTreeCCParam* %52, null
  br i1 %cmp35, label %while.body.36, label %while.end.57

while.body.36:                                    ; preds = %while.cond.34
  %53 = load i32, i32* %needComma, align 4
  %tobool37 = icmp ne i32 %53, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %while.body.36
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %while.body.36
  %55 = load i32, i32* %first, align 4
  %tobool40 = icmp ne i32 %55, 0
  br i1 %tobool40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.end.39
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name42 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %56, i32 0, i32 0
  %57 = load i8*, i8** %name42, align 8
  %tobool43 = icmp ne i8* %57, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.41
  %58 = load i32, i32* %num, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  store i32 0, i32* %first, align 4
  br label %if.end.55

if.else.46:                                       ; preds = %if.end.39
  %59 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name47 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %59, i32 0, i32 0
  %60 = load i8*, i8** %name47, align 8
  %tobool48 = icmp ne i8* %60, null
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.46
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %62 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %62, i32 0, i32 1
  %63 = load i8*, i8** %type, align 8
  %64 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name50 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %64, i32 0, i32 0
  %65 = load i8*, i8** %name50, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %63, i8* %65)
  br label %if.end.54

if.else.51:                                       ; preds = %if.else.46
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %67 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type52 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %67, i32 0, i32 1
  %68 = load i8*, i8** %type52, align 8
  %69 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* %68, i32 %69)
  %70 = load i32, i32* %num, align 4
  %inc53 = add nsw i32 %70, 1
  store i32 %inc53, i32* %num, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.49
  store i32 1, i32* %needComma, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.45
  %71 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next56 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %71, i32 0, i32 4
  %72 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next56, align 8
  store %struct._tagTreeCCParam* %72, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.34

while.end.57:                                     ; preds = %while.cond.34
  %73 = load i32, i32* %abstractCase, align 4
  %tobool58 = icmp ne i32 %73, 0
  br i1 %tobool58, label %if.else.77, label %if.then.59

if.then.59:                                       ; preds = %while.end.57
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %76 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %76, i32 0, i32 7
  %77 = load i64, i64* %codeLinenum, align 8
  %78 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %78, i32 0, i32 6
  %79 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %75, i64 %77, i8* %79)
  %80 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  %81 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper60 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %81, i32 0, i32 3
  %82 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper60, align 8
  %params61 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %82, i32 0, i32 4
  %83 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params61, align 8
  %name62 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %83, i32 0, i32 0
  %84 = load i8*, i8** %name62, align 8
  %tobool63 = icmp ne i8* %84, null
  br i1 %tobool63, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %if.then.59
  %85 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper64 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %85, i32 0, i32 3
  %86 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper64, align 8
  %params65 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %86, i32 0, i32 4
  %87 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params65, align 8
  %name66 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %87, i32 0, i32 0
  %88 = load i8*, i8** %name66, align 8
  %call67 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0)) #3
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else.70, label %if.then.69

if.then.69:                                       ; preds = %lor.lhs.false, %if.then.59
  %89 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %90 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %90, i32 0, i32 1
  %91 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %89, i8* %91, i32 1)
  br label %if.end.76

if.else.70:                                       ; preds = %lor.lhs.false
  %92 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %93 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name71 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %93, i32 0, i32 4
  %94 = load i8*, i8** %name71, align 8
  %95 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper72 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %95, i32 0, i32 3
  %96 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper72, align 8
  %params73 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %96, i32 0, i32 4
  %97 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params73, align 8
  %name74 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %97, i32 0, i32 0
  %98 = load i8*, i8** %name74, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i8* %94, i8* %98)
  %99 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %100 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code75 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %100, i32 0, i32 1
  %101 = load i8*, i8** %code75, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %99, i8* %101, i32 1)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %if.then.69
  %102 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0))
  %103 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %103)
  %104 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.78

if.else.77:                                       ; preds = %while.end.57
  %105 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.end.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.14
  %106 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next80 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %106, i32 0, i32 4
  %107 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next80, align 8
  store %struct._tagTreeCCVirtual* %107, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.81:                                     ; preds = %while.cond
  ret void
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #1

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream*, i8*, i32) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamClear(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
