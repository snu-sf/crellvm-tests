; ModuleID = './MultiSource.Applications.treecc/3.gen_ruby.bc'
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

@TreeCCNonVirtualFuncsRuby = constant %struct.TreeCCNonVirtual { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Ruby_GenStart, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Ruby_GenEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)* @Ruby_GenSplitEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)* @Ruby_GenSwitchHead, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)* @Ruby_GenSelector, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Ruby_GenEndSelectors, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @Ruby_GenCaseFunc, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @Ruby_GenCaseCall, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @Ruby_GenCaseInline, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @Ruby_GenCaseSplit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Ruby_GenEndCase, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @Ruby_GenEndSwitch, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Ruby_GenExit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @Ruby_GenEnd }, align 8
@.str = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"  private \0A  def %s.%s_split_%d__(\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"  public \0A  def %s.%s(\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"p%d__\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"case %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"case %s__.type::KIND\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"when %s.%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"when %s::KIND\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"  private \0A  def %s.%s_%d__(\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"%s = %s__;\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"  return %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"  return 0\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"  end\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"# %s.  Generated automatically by treecc \0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"module %s\0Abegin\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"class %s \0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"  %s = %i\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"end\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"  @@state = nil\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"  def %s.state\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"    return @@state unless @@state.nil?\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"    @@state = %s.new()\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"    return @@state\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"  end\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"  def intialize \0A     @@state = self \0A   end\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"  def currFilename \0A     return nil \0A  end\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"  def currLinenum \0A     return 0 \0A  end\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"  def %s %sCreate(\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"raise \22Abstract method called: %s\5Cn\22\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"    return %s.new(this\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"class %s < %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"  protected\0A  attr_reader :kind\0A  public\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"  attr_accessor :Linenum, :Filename\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"  attr_accessor :%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"  KIND = %d\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"  def initialize(\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"    super(\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"@state\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"    @kind = KIND\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"    @Filename = @state.currFilename\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"    @Finenum = @state.currLinenum\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"    @Filename = %s.state.currFilename()\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"    @Linenum = %s.state.currLinenum()\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"    self.%s = %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"  def isA(kind)\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"    if(@kind == KIND) then\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"      return true\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"    else\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"      return super(kind)\0A    end\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"      return 0\0A    end\0A\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"  def KindName\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"    return \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"  def %s(\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\0A    %s %s = self\0A  \00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c")\0A  end\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenStart(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  call void @RubyGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenSplitEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
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
  call void @RubyGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenSwitchHead(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i8* %paramName, i32 %level, i32 %isEnum) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %8, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %7, i32 %add2)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenSelector(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %7, i8* %9)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenEndSelectors(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenCaseFunc(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number) #0 {
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
  %cname = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %0, i32 0, i32 2
  %1 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %1, i32 0, i32 1
  %2 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %3, i32 0, i32 2
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %className2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 1
  %5 = load i8*, i8** %className2, align 8
  store i8* %5, i8** %cname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper3 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %6, i32 0, i32 2
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper3, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  store i8* %8, i8** %cname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load i8*, i8** %cname, align 8
  %11 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper4 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %11, i32 0, i32 2
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper4, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8
  %14 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* %10, i8* %13, i32 %14)
  %15 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper6 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %15, i32 0, i32 2
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper6, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %16, i32 0, i32 4
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %17, %struct._tagTreeCCParam** %param, align 8
  %18 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %18, i32 0, i32 0
  %19 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %19, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end
  %20 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %20, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %needComma, align 4
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %while.body
  %23 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %23, i32 0, i32 2
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 1
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.then.11, label %if.else.25

if.then.11:                                       ; preds = %if.end.9
  %25 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %25, i32 0, i32 0
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 5
  %27 = load i32, i32* %flags12, align 4
  %and13 = and i32 %27, 8
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.then.11
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node15 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %28, i32 0, i32 0
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node15, align 8
  %flags16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 5
  %30 = load i32, i32* %flags16, align 4
  %and17 = and i32 %30, 16
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %land.lhs.true
  %31 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node20 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %31, i32 0, i32 0
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node20, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %32, i32 0, i32 4
  %33 = load i8*, i8** %name21, align 8
  store i8* %33, i8** %type, align 8
  br label %if.end.24

if.else.22:                                       ; preds = %land.lhs.true, %if.then.11
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 1
  %35 = load i8*, i8** %type23, align 8
  store i8* %35, i8** %type, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.19
  %36 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %36, i32 0, i32 1
  %37 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %37, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %if.end.9
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type26 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 1
  %39 = load i8*, i8** %type26, align 8
  store i8* %39, i8** %type, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.end.24
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 0
  %41 = load i8*, i8** %name28, align 8
  %tobool29 = icmp ne i8* %41, null
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.27
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name31 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %43, i32 0, i32 0
  %44 = load i8*, i8** %name31, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %44)
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.27
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %46 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %46)
  %47 = load i32, i32* %num, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.30
  store i32 1, i32* %needComma, align 4
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next34 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %48, i32 0, i32 4
  %49 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next34, align 8
  store %struct._tagTreeCCParam* %49, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %51 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %51, i32 0, i32 1
  %52 = load i8*, i8** %code, align 8
  %tobool35 = icmp ne i8* %52, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %54 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code37 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %54, i32 0, i32 1
  %55 = load i8*, i8** %code37, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %53, i8* %55, i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  %56 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %57 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenCaseCall(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 1
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %3, i32 0, i32 2
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %5, i32 %6)
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %9, %struct._tagTreeCCParam** %param, align 8
  %10 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %10, i32 0, i32 0
  %11 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %11, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %entry
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %12, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %15, i32 0, i32 0
  %16 = load i8*, i8** %name2, align 8
  %tobool3 = icmp ne i8* %16, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %18, i32 0, i32 0
  %19 = load i8*, i8** %name5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %19)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %21 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %21)
  %22 = load i32, i32* %num, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %23 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %23, i32 0, i32 2
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 1
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %if.end.6
  %25 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %25, i32 0, i32 0
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 5
  %27 = load i32, i32* %flags9, align 4
  %and10 = and i32 %27, 8
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.8
  %28 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node12 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %28, i32 0, i32 0
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node12, align 8
  %flags13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 5
  %30 = load i32, i32* %flags13, align 4
  %and14 = and i32 %30, 16
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true, %if.then.8
  %32 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %32, i32 0, i32 1
  %33 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %33, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  store i32 1, i32* %needComma, align 4
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next19 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 4
  %35 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next19, align 8
  store %struct._tagTreeCCParam* %35, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenCaseInline(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* %20, i8* %22)
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
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %28 = load i32, i32* %level.addr, align 4
  %mul17 = mul nsw i32 %28, 2
  %add18 = add nsw i32 %mul17, 4
  call void @Indent(%struct._tagTreeCCStream* %27, i32 %add18)
  %29 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %29, i32 0, i32 1
  %30 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %30, null
  br i1 %tobool, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %while.end
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %32 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code20 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %32, i32 0, i32 1
  %33 = load i8*, i8** %code20, align 8
  %34 = load i32, i32* %level.addr, align 4
  %mul21 = mul nsw i32 %34, 2
  %add22 = add nsw i32 %mul21, 3
  %mul23 = mul nsw i32 %add22, 2
  call void @TreeCCStreamCodeIndentCustom(%struct._tagTreeCCStream* %31, i8* %33, i8 signext 32, i32 %mul23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %while.end
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %36 = load i32, i32* %level.addr, align 4
  %mul25 = mul nsw i32 %36, 2
  %add26 = add nsw i32 %mul25, 4
  call void @Indent(%struct._tagTreeCCStream* %35, i32 %add26)
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenCaseSplit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %3, i32 0, i32 2
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* %5, i32 %6)
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %9, %struct._tagTreeCCParam** %param, align 8
  %10 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %10, i32 0, i32 0
  %11 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %11, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %entry
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %12, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 1
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %17 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %17, i32 0, i32 0
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 5
  %19 = load i32, i32* %flags4, align 4
  %and5 = and i32 %19, 8
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.3
  %20 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node7 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %20, i32 0, i32 0
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node7, align 8
  %flags8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 5
  %22 = load i32, i32* %flags8, align 4
  %and9 = and i32 %22, 16
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node12 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node12, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name13, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 0
  %28 = load i8*, i8** %name16, align 8
  %tobool17 = icmp ne i8* %28, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %30, i32 0, i32 0
  %31 = load i8*, i8** %name19, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %31)
  br label %if.end.20

if.else:                                          ; preds = %if.end.15
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %33 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %33)
  %34 = load i32, i32* %num, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %35 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags21 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %35, i32 0, i32 2
  %36 = load i32, i32* %flags21, align 4
  %and22 = and i32 %36, 1
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.end.20
  %37 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node25 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %37, i32 0, i32 0
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node25, align 8
  %flags26 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %38, i32 0, i32 5
  %39 = load i32, i32* %flags26, align 4
  %and27 = and i32 %39, 8
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.35

land.lhs.true.29:                                 ; preds = %if.then.24
  %40 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node30 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %40, i32 0, i32 0
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node30, align 8
  %flags31 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 5
  %42 = load i32, i32* %flags31, align 4
  %and32 = and i32 %42, 16
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.29
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.29, %if.then.24
  %44 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %44, i32 0, i32 1
  %45 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %45, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.20
  store i32 1, i32* %needComma, align 4
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next37 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %46, i32 0, i32 4
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next37, align 8
  store %struct._tagTreeCCParam* %47, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenEndCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %level.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenEndSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenExit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #3
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ruby_GenEnd(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateRuby(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteRubyHeaders(%struct._tagTreeCCContext* %0)
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
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %11, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsRuby)
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteRubyFooters(%struct._tagTreeCCContext* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteRubyHeaders(%struct._tagTreeCCContext* %context) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), i8* %6)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTopCS(%struct._tagTreeCCStream* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %while.body
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %13, i32 0, i32 7
  %bf.load5 = load i8, i8* %defaultFile, align 4
  %bf.shl6 = shl i8 %bf.load5, 4
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.4
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 7
  %bf.load11 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load11, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.4
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %15, i32 0, i32 10
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %16, %struct._tagTreeCCStream** %stream, align 8
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
  %counter = alloca i32, align 4
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
  store i32 0, i32* %counter, align 4
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 14
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %3, %struct._tagTreeCCStream** %stream, align 8
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* %6)
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 1
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %8, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp1 = icmp ne %struct._tagTreeCCNode* %9, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 5
  %11 = load i32, i32* %flags2, align 4
  %and3 = and i32 %11, 16
  %cmp4 = icmp ne i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 4
  %14 = load i8*, i8** %name6, align 8
  %15 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %counter, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 3
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %17, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
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
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 10
  %2 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %2)
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0))
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 10
  %7 = load i8*, i8** %state_type1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* %7)
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0))
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 10
  %11 = load i8*, i8** %state_type2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* %11)
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 8
  %bf.load4 = load i16, i16* %reentrant3, align 8
  %bf.shl5 = shl i16 %bf.load4, 12
  %bf.ashr6 = ashr i16 %bf.shl5, 15
  %bf.cast7 = sext i16 %bf.ashr6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 8
  %bf.load12 = load i16, i16* %reentrant11, align 8
  %bf.shl13 = shl i16 %bf.load12, 12
  %bf.ashr14 = ashr i16 %bf.shl13, 15
  %bf.cast15 = sext i16 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %17, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.10
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 8
  %bf.load19 = load i16, i16* %track_lines, align 8
  %bf.shl20 = shl i16 %bf.load19, 14
  %bf.ashr21 = ashr i16 %bf.shl20, 15
  %bf.cast22 = sext i16 %bf.ashr21 to i32
  %tobool23 = icmp ne i32 %bf.cast22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.18
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0))
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.18
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BuildTypeDecls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %needComma = alloca i32, align 4
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
  %parent2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 0
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent2, align 8
  %name3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* %10, i8* %13)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %16)
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0))
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 8
  %bf.load = load i16, i16* %track_lines, align 8
  %bf.shl = shl i16 %bf.load, 14
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.1
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 10
  %22 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %22, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %23 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp9 = icmp ne %struct._tagTreeCCField* %23, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name10 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %25, i32 0, i32 0
  %26 = load i8*, i8** %name10, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* %26)
  %27 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %27, i32 0, i32 6
  %28 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %28, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %31, i32 0, i32 6
  %32 = load i32, i32* %number, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 %32)
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0))
  %34 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %34, i32 0, i32 8
  %bf.load11 = load i16, i16* %reentrant, align 8
  %bf.shl12 = shl i16 %bf.load11, 12
  %bf.ashr13 = ashr i16 %bf.shl12, 15
  %bf.cast14 = sext i16 %bf.ashr13 to i32
  %tobool15 = icmp ne i32 %bf.cast14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %while.end
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.18

if.else.17:                                       ; preds = %while.end
  store i32 0, i32* %needComma, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %39 = load i32, i32* %needComma, align 4
  %call19 = call i32 @CreateParams(%struct._tagTreeCCContext* %36, %struct._tagTreeCCStream* %37, %struct._tagTreeCCNode* %38, i32 %39)
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent20 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 0
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent20, align 8
  %tobool21 = icmp ne %struct._tagTreeCCNode* %42, null
  br i1 %tobool21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %if.end.18
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0))
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 8
  %bf.load24 = load i16, i16* %reentrant23, align 8
  %bf.shl25 = shl i16 %bf.load24, 12
  %bf.ashr26 = ashr i16 %bf.shl25, 15
  %bf.cast27 = sext i16 %bf.ashr26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.22
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %if.then.22
  store i32 0, i32* %needComma, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %48 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %49 = load i32, i32* %needComma, align 4
  %call32 = call i32 @CreateParams(%struct._tagTreeCCContext* %46, %struct._tagTreeCCStream* %47, %struct._tagTreeCCNode* %48, i32 %49)
  %50 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %52 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent33 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %52, i32 0, i32 0
  %53 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent33, align 8
  %54 = load i32, i32* %needComma, align 4
  %call34 = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %50, %struct._tagTreeCCStream* %51, %struct._tagTreeCCNode* %53, i32 %54)
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.31, %if.end.18
  %56 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0))
  %57 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines36 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %57, i32 0, i32 8
  %bf.load37 = load i16, i16* %track_lines36, align 8
  %bf.shl38 = shl i16 %bf.load37, 14
  %bf.ashr39 = ashr i16 %bf.shl38, 15
  %bf.cast40 = sext i16 %bf.ashr39 to i32
  %tobool41 = icmp ne i32 %bf.cast40, 0
  br i1 %tobool41, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end.35
  %58 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent42 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %58, i32 0, i32 0
  %59 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent42, align 8
  %tobool43 = icmp ne %struct._tagTreeCCNode* %59, null
  br i1 %tobool43, label %if.end.55, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true
  %60 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant45 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %60, i32 0, i32 8
  %bf.load46 = load i16, i16* %reentrant45, align 8
  %bf.shl47 = shl i16 %bf.load46, 12
  %bf.ashr48 = ashr i16 %bf.shl47, 15
  %bf.cast49 = sext i16 %bf.ashr48 to i32
  %tobool50 = icmp ne i32 %bf.cast49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.then.44
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0))
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.44
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %64 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %64, i32 0, i32 10
  %65 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i32 0, i32 0), i8* %65)
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %67 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type53 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %67, i32 0, i32 10
  %68 = load i8*, i8** %state_type53, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i32 0, i32 0), i8* %68)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.51
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %if.end.35
  %69 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields56 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %69, i32 0, i32 10
  %70 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields56, align 8
  store %struct._tagTreeCCField* %70, %struct._tagTreeCCField** %field, align 8
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.72, %if.end.55
  %71 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp58 = icmp ne %struct._tagTreeCCField* %71, null
  br i1 %cmp58, label %while.body.59, label %while.end.74

while.body.59:                                    ; preds = %while.cond.57
  %72 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags60 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %72, i32 0, i32 3
  %73 = load i32, i32* %flags60, align 4
  %and61 = and i32 %73, 1
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %while.body.59
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %75 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name64 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %75, i32 0, i32 0
  %76 = load i8*, i8** %name64, align 8
  %77 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name65 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %77, i32 0, i32 0
  %78 = load i8*, i8** %name65, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* %76, i8* %78)
  br label %if.end.72

if.else.66:                                       ; preds = %while.body.59
  %79 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %79, i32 0, i32 2
  %80 = load i8*, i8** %value, align 8
  %tobool67 = icmp ne i8* %80, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.else.66
  %81 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %82 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name69 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %82, i32 0, i32 0
  %83 = load i8*, i8** %name69, align 8
  %84 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value70 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %84, i32 0, i32 2
  %85 = load i8*, i8** %value70, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* %83, i8* %85)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.else.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.63
  %86 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next73 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %86, i32 0, i32 6
  %87 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next73, align 8
  store %struct._tagTreeCCField* %87, %struct._tagTreeCCField** %field, align 8
  br label %while.cond.57

while.end.74:                                     ; preds = %while.cond.57
  %88 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  %89 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %90 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %91 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %92 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %89, %struct._tagTreeCCStream* %90, %struct._tagTreeCCNode* %91, %struct._tagTreeCCNode* %92)
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0))
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0))
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0))
  %96 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0))
  %97 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent75 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %97, i32 0, i32 0
  %98 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent75, align 8
  %tobool76 = icmp ne %struct._tagTreeCCNode* %98, null
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %while.end.74
  %99 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.79

if.else.78:                                       ; preds = %while.end.74
  %100 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  %101 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  %102 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0))
  %103 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %104 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name80 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %104, i32 0, i32 4
  %105 = load i8*, i8** %name80, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* %105)
  %106 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %107 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.79, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @WriteRubyFooters(%struct._tagTreeCCContext* %context) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
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

; Function Attrs: nounwind uwtable
define internal void @RubyGenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %number.addr = alloca i32, align 4
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  %cname = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 1
  %1 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className1 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 1
  %3 = load i8*, i8** %className1, align 8
  store i8* %3, i8** %cname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  store i8* %5, i8** %cname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %number.addr, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load i8*, i8** %cname, align 8
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name3 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 0
  %10 = load i8*, i8** %name3, align 8
  %11 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %8, i8* %10, i32 %11)
  br label %if.end.6

if.else.4:                                        ; preds = %if.end
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load i8*, i8** %cname, align 8
  %14 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %14, i32 0, i32 0
  %15 = load i8*, i8** %name5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* %13, i8* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.4, %if.then.2
  %16 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %16, i32 0, i32 4
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %17, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.6
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp7 = icmp ne %struct._tagTreeCCParam* %18, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %needComma, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %while.body
  %21 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %21, i32 0, i32 0
  %22 = load i8*, i8** %name11, align 8
  %tobool12 = icmp ne i8* %22, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.10
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %24, i32 0, i32 0
  %25 = load i8*, i8** %name14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %25)
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.10
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %27 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %27)
  %28 = load i32, i32* %num, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.13
  %29 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %29, i32 0, i32 2
  %30 = load i32, i32* %flags, align 4
  %and = and i32 %30, 1
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %32, i32 0, i32 1
  %33 = load i8*, i8** %type, align 8
  %call = call i32 @IsEnumType(%struct._tagTreeCCContext* %31, i8* %33)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.18
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.16
  store i32 1, i32* %needComma, align 4
  %35 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %35, i32 0, i32 4
  %36 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %36, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %while.end
  %5 = load i32, i32* %indent.addr, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.7

if.else.4:                                        ; preds = %if.else
  %7 = load i32, i32* %indent.addr, align 4
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.4
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  ret void
}

declare void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream*, i8*, i32) #1

declare void @TreeCCStreamCodeIndentCustom(%struct._tagTreeCCStream*, i8*, i8 signext, i32) #1

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
  br label %if.end.16

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.16

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
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 4
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 4
  %14 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* %12, i8* %14)
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %15, %struct._tagTreeCCStream* %16, %struct._tagTreeCCNode* %17, i32 0)
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 8
  %bf.load = load i16, i16* %abstract_factory, align 8
  %bf.shl = shl i16 %bf.load, 9
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.8
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 4
  %22 = load i8*, i8** %name12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i8* %22)
  br label %if.end.16

if.else.13:                                       ; preds = %if.end.8
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i8* %26)
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call15 = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %27, %struct._tagTreeCCStream* %28, %struct._tagTreeCCNode* %29, i32 1)
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.then.4, %if.else.13, %if.then.11
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %16)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %16)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %16)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %16)
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

while.cond:                                       ; preds = %if.end.76, %if.else.22, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.78

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
  br i1 %tobool15, label %if.then.16, label %if.end.76

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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* %32)
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.18
  %33 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %33, i32 0, i32 4
  %34 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %34, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

if.end.23:                                        ; preds = %if.then.20
  br label %if.end.31

if.else.24:                                       ; preds = %if.then.16
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %cmp25 = icmp eq %struct._tagTreeCCNode* %35, %36
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.24
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %38 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name27 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %38, i32 0, i32 0
  %39 = load i8*, i8** %name27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* %39)
  br label %if.end.30

if.else.28:                                       ; preds = %if.else.24
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %41 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name29 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %41, i32 0, i32 0
  %42 = load i8*, i8** %name29, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* %42)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.23
  %43 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %43, i32 0, i32 3
  %44 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %44, i32 0, i32 4
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %45, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  store i32 1, i32* %first, align 4
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.52, %if.end.31
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp33 = icmp ne %struct._tagTreeCCParam* %46, null
  br i1 %cmp33, label %while.body.34, label %while.end.54

while.body.34:                                    ; preds = %while.cond.32
  %47 = load i32, i32* %needComma, align 4
  %tobool35 = icmp ne i32 %47, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.body.34
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %while.body.34
  %49 = load i32, i32* %first, align 4
  %tobool38 = icmp ne i32 %49, 0
  br i1 %tobool38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.end.37
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name40 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %50, i32 0, i32 0
  %51 = load i8*, i8** %name40, align 8
  %tobool41 = icmp ne i8* %51, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.39
  %52 = load i32, i32* %num, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.39
  store i32 0, i32* %first, align 4
  br label %if.end.52

if.else.44:                                       ; preds = %if.end.37
  %53 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name45 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %53, i32 0, i32 0
  %54 = load i8*, i8** %name45, align 8
  %tobool46 = icmp ne i8* %54, null
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.else.44
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name48 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %56, i32 0, i32 0
  %57 = load i8*, i8** %name48, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %57)
  br label %if.end.51

if.else.49:                                       ; preds = %if.else.44
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %59 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 %59)
  %60 = load i32, i32* %num, align 4
  %inc50 = add nsw i32 %60, 1
  store i32 %inc50, i32* %num, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  store i32 1, i32* %needComma, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.43
  %61 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next53 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %61, i32 0, i32 4
  %62 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next53, align 8
  store %struct._tagTreeCCParam* %62, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.32

while.end.54:                                     ; preds = %while.cond.32
  %63 = load i32, i32* %abstractCase, align 4
  %tobool55 = icmp ne i32 %63, 0
  br i1 %tobool55, label %if.else.74, label %if.then.56

if.then.56:                                       ; preds = %while.end.54
  %64 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %66 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %66, i32 0, i32 7
  %67 = load i64, i64* %codeLinenum, align 8
  %68 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %68, i32 0, i32 6
  %69 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %65, i64 %67, i8* %69)
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %71 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper57 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %71, i32 0, i32 3
  %72 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper57, align 8
  %params58 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %72, i32 0, i32 4
  %73 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params58, align 8
  %name59 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %73, i32 0, i32 0
  %74 = load i8*, i8** %name59, align 8
  %tobool60 = icmp ne i8* %74, null
  br i1 %tobool60, label %lor.lhs.false, label %if.then.66

lor.lhs.false:                                    ; preds = %if.then.56
  %75 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper61 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %75, i32 0, i32 3
  %76 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper61, align 8
  %params62 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %76, i32 0, i32 4
  %77 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params62, align 8
  %name63 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %77, i32 0, i32 0
  %78 = load i8*, i8** %name63, align 8
  %call64 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0)) #3
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false, %if.then.56
  %79 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %80 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %80, i32 0, i32 1
  %81 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %79, i8* %81, i32 1)
  br label %if.end.73

if.else.67:                                       ; preds = %lor.lhs.false
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %83 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name68 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %83, i32 0, i32 4
  %84 = load i8*, i8** %name68, align 8
  %85 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %oper69 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %85, i32 0, i32 3
  %86 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper69, align 8
  %params70 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %86, i32 0, i32 4
  %87 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params70, align 8
  %name71 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %87, i32 0, i32 0
  %88 = load i8*, i8** %name71, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* %84, i8* %88)
  %89 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %90 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code72 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %90, i32 0, i32 1
  %91 = load i8*, i8** %code72, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %89, i8* %91, i32 1)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.67, %if.then.66
  %92 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %93)
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.75

if.else.74:                                       ; preds = %while.end.54
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.end.73
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.14
  %96 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next77 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %96, i32 0, i32 4
  %97 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next77, align 8
  store %struct._tagTreeCCVirtual* %97, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.78:                                     ; preds = %while.cond
  ret void
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #1

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamClear(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
