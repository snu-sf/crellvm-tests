; ModuleID = './MultiSource.Applications.treecc/8.gen_cpp.bc'
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

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TreeCCNonVirtualFuncsC = external constant %struct.TreeCCNonVirtual, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"#include <new>\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"namespace %s\0A{\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"const int %s_kind = %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"typedef enum {\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"} %s;\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"class %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"class %s\0A{\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"public:\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\09%s();\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\09virtual ~%s();\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"cpp_gc_skel.h\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"cpp_skel.h\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"private:\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\09static %s *state__;\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"\09static %s *getState()\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\09\09{\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\09\09\09if(state__) return state__;\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\09\09\09state__ = new %s();\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\09\09\09return state__;\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\09\09}\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\09void *alloc(size_t);\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\09void dealloc(void *, size_t);\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\09int push();\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\09void pop();\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"\09void clear();\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"\09virtual void failed();\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"\09virtual char *currFilename();\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\09virtual long currLinenum();\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\09virtual %s *%sCreate(\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\09%s *%sCreate(\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c") = 0;\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"class %s : public %s\0A{\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"protected:\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"\09int kind__;\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\09char *filename__;\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"\09long linenum__;\0A\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"\0Apublic:\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"\09int getKind() const { return kind__; }\0A\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"\09const char *getFilename() const { return filename__; }\0A\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"\09long getLinenum() const { return linenum__; }\0A\00", align 1
@.str.46 = private unnamed_addr constant [62 x i8] c"\09void setFilename(char *filename) { filename__ = filename; }\0A\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"\09void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"\09void *operator new(size_t);\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"\09void operator delete(void *, size_t);\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"public: // for virtual factory\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"\09friend class %s;\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\09%s(\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"%s *state__\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"\09virtual int isA(int kind) const;\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"\09virtual const char *getKindName() const;\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"\09%s %s;\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"\09virtual %s %s(\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"\09static \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"%s %s(\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"#define %s_BLKSIZ %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"#define %s_REENTRANT 1\0A\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"#define %s_TRACK_LINES 1\0A\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"#define %s_USE_ALLOCATOR 1\0A\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"cpp_gc_skel.cc\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"cpp_skel.cc\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"%s *%s::%sCreate(\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"\09void *buf__ = this->alloc(sizeof(%s));\0A\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"\09if(buf__ == 0) return 0;\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"\09return new (buf__) %s(this\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"void *%s::operator new(size_t size__)\0A\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"\09return %s::getState()->alloc(size__);\0A\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"void %s::operator delete(void *ptr__, size_t size__)\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"\09%s::getState()->dealloc(ptr__, size__);\0A\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"%s::~%s()\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"\09// not used\0A\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"int %s::isA(int kind) const\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"\09if(kind == %s_kind)\0A\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"\09\09return 1;\0A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"\09else\0A\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"\09\09return %s::isA(kind);\0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"\09\09return 0;\0A\00", align 1
@.str.91 = private unnamed_addr constant [37 x i8] c"const char *%s::getKindName() const\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"\09return \22%s\22;\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"%s::%s(\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"\09: %s(\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"\09this->kind__ = %s_kind;\0A\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"\09this->filename__ = state__->currFilename();\0A\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"\09this->linenum__ = state__->currLinenum();\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"\09this->filename__ = %s::getState()->currFilename();\0A\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"\09this->linenum__ = %s::getState()->currLinenum();\0A\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"\09this->%s = %s;\0A\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"%s %s::%s(\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"{\0A\09%s *%s = this;\0A\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateCPP(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteCPPHeaders(%struct._tagTreeCCContext* %0)
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %1, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DefineNodeNumbers)
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 4
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %4, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DeclareTypeDefs)
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 4
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 6
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 6
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader2, align 8
  call void @DeclareStateType(%struct._tagTreeCCContext* %9, %struct._tagTreeCCStream* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 4
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream3, align 8
  call void @DeclareStateType(%struct._tagTreeCCContext* %12, %struct._tagTreeCCStream* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %15, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @BuildTypeDecls)
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 4
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCOperationVisitAll(%struct._tagTreeCCContext* %18, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)* @DeclareNonVirtuals)
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream5 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 4
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 7
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool6 = icmp ne %struct._tagTreeCCStream* %22, null
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 7
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource8, align 8
  call void @ImplementStateType(%struct._tagTreeCCContext* %23, %struct._tagTreeCCStream* %25)
  br label %if.end.10

if.else.9:                                        ; preds = %if.end
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %27, i32 0, i32 5
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  call void @ImplementStateType(%struct._tagTreeCCContext* %26, %struct._tagTreeCCStream* %28)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.7
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %29, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementNodeTypes)
  %30 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %30, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsC)
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteCPPFooters(%struct._tagTreeCCContext* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteCPPHeaders(%struct._tagTreeCCContext* %context) #0 {
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
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamHeaderTop(%struct._tagTreeCCStream* %4)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTop(%struct._tagTreeCCStream* %8)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 11
  %11 = load i8*, i8** %namespace, align 8
  %tobool1 = icmp ne i8* %11, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 11
  %14 = load i8*, i8** %namespace3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* %14)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %15, i32 0, i32 7
  %bf.load5 = load i8, i8* %defaultFile, align 4
  %bf.shl6 = shl i8 %bf.load5, 4
  %bf.ashr7 = ashr i8 %bf.shl6, 7
  %bf.cast8 = sext i8 %bf.ashr7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.4
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %16, i32 0, i32 7
  %bf.load11 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load11, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.4
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %17, i32 0, i32 10
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %18, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCNodeVisitAll(%struct._tagTreeCCContext*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)*) #1

; Function Attrs: nounwind uwtable
define internal void @DefineNodeNumbers(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %header = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 13
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %header, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 24
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %number = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 6
  %8 = load i32, i32* %number, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* %6, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @TreeCCStreamPrint(%struct._tagTreeCCStream*, i8*, ...) #1

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
  %header = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 13
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %header, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %firstChild = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 1
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %firstChild, align 8
  store %struct._tagTreeCCNode* %6, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %cmp1 = icmp ne %struct._tagTreeCCNode* %7, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %flags2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 5
  %9 = load i32, i32* %flags2, align 4
  %and3 = and i32 %9, 16
  %cmp4 = icmp ne i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 4
  %12 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 3
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %14, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 4
  %17 = load i8*, i8** %name6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %17)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 5
  %19 = load i32, i32* %flags7, align 4
  %and8 = and i32 %19, 16
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 4
  %22 = load i8*, i8** %name11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %22)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareStateType(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 10
  %2 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %2)
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 10
  %6 = load i8*, i8** %state_type1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %6)
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 10
  %9 = load i8*, i8** %state_type2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %9)
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load = load i16, i16* %use_gc_allocator, align 8
  %bf.shl = shl i16 %bf.load, 3
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %11, %struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %13, %struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 8
  %bf.load3 = load i16, i16* %reentrant, align 8
  %bf.shl4 = shl i16 %bf.load3, 12
  %bf.ashr5 = ashr i16 %bf.shl4, 15
  %bf.cast6 = sext i16 %bf.ashr5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 10
  %19 = load i8*, i8** %state_type9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* %19)
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 10
  %23 = load i8*, i8** %state_type10, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* %23)
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %27, i32 0, i32 10
  %28 = load i8*, i8** %state_type11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %28)
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant13 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 8
  %bf.load14 = load i16, i16* %reentrant13, align 8
  %bf.shl15 = shl i16 %bf.load14, 12
  %bf.ashr16 = ashr i16 %bf.shl15, 15
  %bf.cast17 = sext i16 %bf.ashr16 to i32
  %tobool18 = icmp ne i32 %bf.cast17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.12
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %33, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DeclareCreateFuncs)
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.12
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0))
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0))
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0))
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0))
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %42, i32 0, i32 8
  %bf.load21 = load i16, i16* %track_lines, align 8
  %bf.shl22 = shl i16 %bf.load21, 14
  %bf.ashr23 = ashr i16 %bf.shl22, 15
  %bf.cast24 = sext i16 %bf.ashr23 to i32
  %tobool25 = icmp ne i32 %bf.cast24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0))
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.20
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BuildTypeDecls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %header = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 13
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %header, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 24
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %5, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 4
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 0
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent2, align 8
  %name3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %10, i32 0, i32 4
  %11 = load i8*, i8** %name3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* %8, i8* %11)
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 16
  %13 = load i8*, i8** %baseType, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name6, align 8
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 16
  %18 = load i8*, i8** %baseType7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* %16, i8* %18)
  br label %if.end.10

if.else.8:                                        ; preds = %if.else
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %21)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.5
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0))
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 8
  %bf.load = load i16, i16* %track_lines, align 8
  %bf.shl = shl i16 %bf.load, 14
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool11 = icmp ne i32 %bf.cast, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0))
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0))
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0))
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %29, i32 0, i32 8
  %bf.load15 = load i16, i16* %track_lines14, align 8
  %bf.shl16 = shl i16 %bf.load15, 14
  %bf.ashr17 = ashr i16 %bf.shl16, 15
  %bf.cast18 = sext i16 %bf.ashr17 to i32
  %tobool19 = icmp ne i32 %bf.cast18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.13
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i32 0, i32 0))
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i32 0, i32 0))
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.46, i32 0, i32 0))
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.13
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 8
  %bf.load22 = load i16, i16* %reentrant, align 8
  %bf.shl23 = shl i16 %bf.load22, 12
  %bf.ashr24 = ashr i16 %bf.shl23, 15
  %bf.cast25 = sext i16 %bf.ashr24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.21
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0))
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.1
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant30 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %38, i32 0, i32 8
  %bf.load31 = load i16, i16* %reentrant30, align 8
  %bf.shl32 = shl i16 %bf.load31, 12
  %bf.ashr33 = ashr i16 %bf.shl32, 15
  %bf.cast34 = sext i16 %bf.ashr33 to i32
  %tobool35 = icmp ne i32 %bf.cast34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.50

if.then.36:                                       ; preds = %if.end.29
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 8
  %bf.load37 = load i16, i16* %virtual_factory, align 8
  %bf.shl38 = shl i16 %bf.load37, 10
  %bf.ashr39 = ashr i16 %bf.shl38, 15
  %bf.cast40 = sext i16 %bf.ashr39 to i32
  %tobool41 = icmp ne i32 %bf.cast40, 0
  br i1 %tobool41, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.36
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %40, i32 0, i32 8
  %bf.load42 = load i16, i16* %abstract_factory, align 8
  %bf.shl43 = shl i16 %bf.load42, 9
  %bf.ashr44 = ashr i16 %bf.shl43, 15
  %bf.cast45 = sext i16 %bf.ashr44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.36
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 10
  %45 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* %45)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.57

if.else.50:                                       ; preds = %if.end.29
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags51 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %46, i32 0, i32 5
  %47 = load i32, i32* %flags51, align 4
  %and52 = and i32 %47, 2
  %cmp53 = icmp ne i32 %and52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.50
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.56

if.else.55:                                       ; preds = %if.else.50
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.49
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %51 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name58 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %51, i32 0, i32 4
  %52 = load i8*, i8** %name58, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* %52)
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant59 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %53, i32 0, i32 8
  %bf.load60 = load i16, i16* %reentrant59, align 8
  %bf.shl61 = shl i16 %bf.load60, 12
  %bf.ashr62 = ashr i16 %bf.shl61, 15
  %bf.cast63 = sext i16 %bf.ashr62 to i32
  %tobool64 = icmp ne i32 %bf.cast63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.57
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %55 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type66 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %55, i32 0, i32 10
  %56 = load i8*, i8** %state_type66, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* %56)
  store i32 1, i32* %needComma, align 4
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.57
  store i32 0, i32* %needComma, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.65
  %57 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %59 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %60 = load i32, i32* %needComma, align 4
  %call = call i32 @CreateParams(%struct._tagTreeCCContext* %57, %struct._tagTreeCCStream* %58, %struct._tagTreeCCNode* %59, i32 %60)
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0))
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %63 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %63, i32 0, i32 10
  %64 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  %tobool69 = icmp ne %struct._tagTreeCCField* %64, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %65 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %67 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareFields(%struct._tagTreeCCContext* %65, %struct._tagTreeCCStream* %66, %struct._tagTreeCCNode* %67)
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  %69 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %71 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %72 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareVirtuals(%struct._tagTreeCCContext* %69, %struct._tagTreeCCStream* %70, %struct._tagTreeCCNode* %71, %struct._tagTreeCCNode* %72)
  %73 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0))
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.56, i32 0, i32 0))
  %76 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %78 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name72 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %78, i32 0, i32 4
  %79 = load i8*, i8** %name72, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %79)
  %80 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.71, %if.then
  ret void
}

declare void @TreeCCOperationVisitAll(%struct._tagTreeCCContext*, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)*) #1

; Function Attrs: nounwind uwtable
define internal void @DeclareNonVirtuals(%struct._tagTreeCCContext* %context, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  %0 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %header = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %0, i32 0, i32 14
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %header, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.20

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %4, i32 0, i32 1
  %5 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className2 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 1
  %8 = load i8*, i8** %className2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* %8)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %13 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %13, i32 0, i32 2
  %14 = load i8*, i8** %returnType, align 8
  %15 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* %14, i8* %16)
  %17 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %17, i32 0, i32 4
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %18, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end.3
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp4 = icmp ne %struct._tagTreeCCParam* %19, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %needComma, align 4
  %tobool5 = icmp ne i32 %20, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.body
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 0
  %23 = load i8*, i8** %name8, align 8
  %tobool9 = icmp ne i8* %23, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %25, i32 0, i32 1
  %26 = load i8*, i8** %type, align 8
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 0
  %28 = load i8*, i8** %name11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %26, i8* %28)
  br label %if.end.13

if.else:                                          ; preds = %if.end.7
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type12 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %30, i32 0, i32 1
  %31 = load i8*, i8** %type12, align 8
  %32 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* %31, i32 %32)
  %33 = load i32, i32* %num, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  store i32 1, i32* %needComma, align 4
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 4
  %35 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %35, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i32, i32* %needComma, align 4
  %tobool14 = icmp ne i32 %36, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %while.end
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.end
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %39 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className17 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %39, i32 0, i32 1
  %40 = load i8*, i8** %className17, align 8
  %tobool18 = icmp ne i8* %40, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then, %if.then.19, %if.end.16
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
  %block_size = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 14
  %1 = load i32, i32* %block_size, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 10
  %4 = load i8*, i8** %state_type, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %block_size1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 14
  %6 = load i32, i32* %block_size1, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* %4, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 10
  %10 = load i8*, i8** %state_type4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), i8* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 8
  %bf.load6 = load i16, i16* %track_lines, align 8
  %bf.shl7 = shl i16 %bf.load6, 14
  %bf.ashr8 = ashr i16 %bf.shl7, 15
  %bf.cast9 = sext i16 %bf.ashr8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.5
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 10
  %14 = load i8*, i8** %state_type12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i8* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.5
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 8
  %bf.load14 = load i16, i16* %use_allocator, align 8
  %bf.shl15 = shl i16 %bf.load14, 4
  %bf.ashr16 = ashr i16 %bf.shl15, 15
  %bf.cast17 = sext i16 %bf.ashr16 to i32
  %tobool18 = icmp ne i32 %bf.cast17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.13
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type20 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 10
  %18 = load i8*, i8** %state_type20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0), i8* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.13
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 8
  %bf.load22 = load i16, i16* %use_gc_allocator, align 8
  %bf.shl23 = shl i16 %bf.load22, 3
  %bf.ashr24 = ashr i16 %bf.shl23, 15
  %bf.cast25 = sext i16 %bf.ashr24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.21
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %20, %struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.28

if.else:                                          ; preds = %if.end.21
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %22, %struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 8
  %bf.load30 = load i16, i16* %reentrant29, align 8
  %bf.shl31 = shl i16 %bf.load30, 12
  %bf.ashr32 = ashr i16 %bf.shl31, 15
  %bf.cast33 = sext i16 %bf.ashr32 to i32
  %tobool34 = icmp ne i32 %bf.cast33, 0
  br i1 %tobool34, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.28
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %25, i32 0, i32 8
  %bf.load35 = load i16, i16* %abstract_factory, align 8
  %bf.shl36 = shl i16 %bf.load35, 9
  %bf.ashr37 = ashr i16 %bf.shl36, 15
  %bf.cast38 = sext i16 %bf.ashr37 to i32
  %tobool39 = icmp ne i32 %bf.cast38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %26, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true, %if.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImplementNodeTypes(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %source = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 14
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %source, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 24
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %5, null
  br i1 %tobool, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 4
  %9 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.79, i32 0, i32 0), i8* %9)
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 10
  %13 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.80, i32 0, i32 0), i8* %13)
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 4
  %17 = load i8*, i8** %name3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i32 0, i32 0), i8* %17)
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 10
  %21 = load i8*, i8** %state_type4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i32 0, i32 0), i8* %21)
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementConstructor(%struct._tagTreeCCContext* %23, %struct._tagTreeCCStream* %24, %struct._tagTreeCCNode* %25)
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %27, i32 0, i32 4
  %28 = load i8*, i8** %name6, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %29, i32 0, i32 4
  %30 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* %28, i8* %30)
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0))
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  %34 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %37 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @ImplementVirtuals(%struct._tagTreeCCContext* %34, %struct._tagTreeCCStream* %35, %struct._tagTreeCCNode* %36, %struct._tagTreeCCNode* %37)
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %39, i32 0, i32 4
  %40 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0), i8* %40)
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %43 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %43, i32 0, i32 4
  %44 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* %44)
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0))
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0))
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %47, i32 0, i32 0
  %48 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent10, align 8
  %tobool11 = icmp ne %struct._tagTreeCCNode* %48, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.5
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %50 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent13 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %50, i32 0, i32 0
  %51 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent13, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %51, i32 0, i32 4
  %52 = load i8*, i8** %name14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i32 0, i32 0), i8* %52)
  br label %if.end.15

if.else:                                          ; preds = %if.end.5
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %54 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %56 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %56, i32 0, i32 4
  %57 = load i8*, i8** %name16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.91, i32 0, i32 0), i8* %57)
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %60 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %60, i32 0, i32 4
  %61 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0), i8* %61)
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @WriteCPPFooters(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %entry
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
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 11
  %7 = load i8*, i8** %namespace, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %9, i32 0, i32 7
  %bf.load8 = load i8, i8* %isHeader, align 4
  %bf.shl9 = shl i8 %bf.load8, 5
  %bf.ashr10 = ashr i8 %bf.shl9, 7
  %bf.cast11 = sext i8 %bf.ashr10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamHeaderBottom(%struct._tagTreeCCStream* %10)
  br label %if.end.15

if.else.14:                                       ; preds = %if.end
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream* %11)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %12, i32 0, i32 10
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %13, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCStreamHeaderTop(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceTop(%struct._tagTreeCCStream*) #1

declare void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DeclareCreateFuncs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
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
  br label %if.end.29

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.29

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 6
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %5, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.5
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 6
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader7, align 8
  store %struct._tagTreeCCStream* %7, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end.5
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  store %struct._tagTreeCCStream* %9, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load = load i16, i16* %virtual_factory, align 8
  %bf.shl = shl i16 %bf.load, 10
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool9 = icmp ne i32 %bf.cast, 0
  br i1 %tobool9, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 8
  %bf.load10 = load i16, i16* %abstract_factory, align 8
  %bf.shl11 = shl i16 %bf.load10, 9
  %bf.ashr12 = ashr i16 %bf.shl11, 15
  %bf.cast13 = sext i16 %bf.ashr12 to i32
  %tobool14 = icmp ne i32 %bf.cast13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.8
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 4
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i8* %14, i8* %16)
  br label %if.end.20

if.else.17:                                       ; preds = %lor.lhs.false
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 4
  %19 = load i8*, i8** %name18, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name19, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* %19, i8* %21)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.15
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %22, %struct._tagTreeCCStream* %23, %struct._tagTreeCCNode* %24, i32 0)
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory21 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %25, i32 0, i32 8
  %bf.load22 = load i16, i16* %abstract_factory21, align 8
  %bf.shl23 = shl i16 %bf.load22, 9
  %bf.ashr24 = ashr i16 %bf.shl23, 15
  %bf.cast25 = sext i16 %bf.ashr24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.20
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.20
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then, %if.then.4, %if.else.28, %if.then.27
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %16, i8* %18)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %16, i8* %18)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %5, i8* %7)
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %8, i32 0, i32 6
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %9, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareVirtuals(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %actualNode.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  %needComma = alloca i32, align 4
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %declareCase = alloca i32, align 4
  %abstractCase = alloca i32, align 4
  %tempNode = alloca %struct._tagTreeCCNode*, align 8
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
  call void @DeclareVirtuals(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 11
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %8, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.39

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
  br i1 %tobool15, label %if.then.16, label %if.end.37

if.then.16:                                       ; preds = %if.end.14
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %28 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %28, i32 0, i32 1
  %29 = load i8*, i8** %returnType, align 8
  %30 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %30, i32 0, i32 0
  %31 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i8* %29, i8* %31)
  %32 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %32, i32 0, i32 2
  %33 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %33, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.31, %if.then.16
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp19 = icmp ne %struct._tagTreeCCParam* %34, null
  br i1 %cmp19, label %while.body.20, label %while.end.32

while.body.20:                                    ; preds = %while.cond.18
  %35 = load i32, i32* %needComma, align 4
  %tobool21 = icmp ne i32 %35, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %while.body.20
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.24

if.else.23:                                       ; preds = %while.body.20
  store i32 1, i32* %needComma, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  %37 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %37, i32 0, i32 0
  %38 = load i8*, i8** %name25, align 8
  %tobool26 = icmp ne i8* %38, null
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end.24
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 1
  %41 = load i8*, i8** %type, align 8
  %42 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name28 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %42, i32 0, i32 0
  %43 = load i8*, i8** %name28, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %41, i8* %43)
  br label %if.end.31

if.else.29:                                       ; preds = %if.end.24
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type30 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %45, i32 0, i32 1
  %46 = load i8*, i8** %type30, align 8
  %47 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* %46, i32 %47)
  %48 = load i32, i32* %num, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  %49 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %49, i32 0, i32 4
  %50 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %50, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.18

while.end.32:                                     ; preds = %while.cond.18
  %51 = load i32, i32* %abstractCase, align 4
  %tobool33 = icmp ne i32 %51, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %while.end.32
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.36

if.else.35:                                       ; preds = %while.end.32
  %53 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.14
  %54 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next38 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %54, i32 0, i32 4
  %55 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next38, align 8
  store %struct._tagTreeCCVirtual* %55, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  ret void
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #1

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
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

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
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 10
  %14 = load i8*, i8** %state_type, align 8
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %15, i32 0, i32 4
  %16 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8* %12, i8* %14, i8* %16)
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @FactoryCreateParams(%struct._tagTreeCCContext* %17, %struct._tagTreeCCStream* %18, %struct._tagTreeCCNode* %19, i32 0)
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0))
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name10 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %23, i32 0, i32 4
  %24 = load i8*, i8** %name10, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.74, i32 0, i32 0), i8* %24)
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0))
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %27, i32 0, i32 4
  %28 = load i8*, i8** %name11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i32 0, i32 0), i8* %28)
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %31 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call12 = call i32 @FactoryInvokeParams(%struct._tagTreeCCContext* %29, %struct._tagTreeCCStream* %30, %struct._tagTreeCCNode* %31, i32 1)
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4, %if.then
  ret void
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* %16)
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
define internal void @ImplementConstructor(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %needComma = alloca i32, align 4
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %1, i32 0, i32 4
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %3, i32 0, i32 4
  %4 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* %2, i8* %4)
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 10
  %8 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* %8)
  store i32 1, i32* %needComma, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %needComma, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %12 = load i32, i32* %needComma, align 4
  %call = call i32 @CreateParamsSource(%struct._tagTreeCCContext* %9, %struct._tagTreeCCStream* %10, %struct._tagTreeCCNode* %11, i32 %12)
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0))
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 0
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool2 = icmp ne %struct._tagTreeCCNode* %15, null
  br i1 %tobool2, label %if.then.3, label %if.end.17

if.then.3:                                        ; preds = %if.end
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 0
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent4, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %18, i32 0, i32 4
  %19 = load i8*, i8** %name5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8* %19)
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 8
  %bf.load7 = load i16, i16* %reentrant6, align 8
  %bf.shl8 = shl i16 %bf.load7, 12
  %bf.ashr9 = ashr i16 %bf.shl8, 15
  %bf.cast10 = sext i16 %bf.ashr9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.3
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0))
  store i32 1, i32* %needComma, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.then.3
  store i32 0, i32* %needComma, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent15 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent15, align 8
  %26 = load i32, i32* %needComma, align 4
  %call16 = call i32 @InheritParamsSource(%struct._tagTreeCCContext* %22, %struct._tagTreeCCStream* %23, %struct._tagTreeCCNode* %25, i32 %26)
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 4
  %31 = load i8*, i8** %name18, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i32 0, i32 0), i8* %31)
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 8
  %bf.load19 = load i16, i16* %track_lines, align 8
  %bf.shl20 = shl i16 %bf.load19, 14
  %bf.ashr21 = ashr i16 %bf.shl20, 15
  %bf.cast22 = sext i16 %bf.ashr21 to i32
  %tobool23 = icmp ne i32 %bf.cast22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.17
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent24 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %33, i32 0, i32 0
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent24, align 8
  %tobool25 = icmp ne %struct._tagTreeCCNode* %34, null
  br i1 %tobool25, label %if.end.38, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 8
  %bf.load28 = load i16, i16* %reentrant27, align 8
  %bf.shl29 = shl i16 %bf.load28, 12
  %bf.ashr30 = ashr i16 %bf.shl29, 15
  %bf.cast31 = sext i16 %bf.ashr30 to i32
  %tobool32 = icmp ne i32 %bf.cast31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.26
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.97, i32 0, i32 0))
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.37

if.else.34:                                       ; preds = %if.then.26
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type35 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 10
  %40 = load i8*, i8** %state_type35, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i32 0, i32 0), i8* %40)
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type36 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %42, i32 0, i32 10
  %43 = load i8*, i8** %state_type36, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i32 0, i32 0), i8* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %if.end.17
  %44 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %44, i32 0, i32 10
  %45 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %45, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end.38
  %46 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %46, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %47, i32 0, i32 3
  %48 = load i32, i32* %flags, align 4
  %and = and i32 %48, 1
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %while.body
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %50 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name41 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %50, i32 0, i32 0
  %51 = load i8*, i8** %name41, align 8
  %52 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name42 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %52, i32 0, i32 0
  %53 = load i8*, i8** %name42, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* %51, i8* %53)
  br label %if.end.49

if.else.43:                                       ; preds = %while.body
  %54 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %54, i32 0, i32 2
  %55 = load i8*, i8** %value, align 8
  %tobool44 = icmp ne i8* %55, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.else.43
  %56 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %57 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name46 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %57, i32 0, i32 0
  %58 = load i8*, i8** %name46, align 8
  %59 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value47 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %59, i32 0, i32 2
  %60 = load i8*, i8** %value47, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* %58, i8* %60)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.else.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.40
  %61 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %61, i32 0, i32 6
  %62 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %62, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0))
  ret void
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
  %oper = alloca %struct._tagTreeCCOperation*, align 8
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

while.cond:                                       ; preds = %if.end.45, %if.then.3, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.47

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
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %while.body
  %15 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %15, i32 0, i32 4
  %16 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %16, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

if.end.4:                                         ; preds = %while.body
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %18, i32 0, i32 1
  %19 = load i8*, i8** %returnType, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name5, align 8
  %22 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %22, i32 0, i32 0
  %23 = load i8*, i8** %name6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* %19, i8* %21, i8* %23)
  %24 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %oper7 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %24, i32 0, i32 2
  %25 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper7, align 8
  store %struct._tagTreeCCOperation* %25, %struct._tagTreeCCOperation** %oper, align 8
  %26 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %26, i32 0, i32 4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %27, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  store i32 1, i32* %first, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.28, %if.end.4
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp9 = icmp ne %struct._tagTreeCCParam* %28, null
  br i1 %cmp9, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.cond.8
  %29 = load i32, i32* %needComma, align 4
  %tobool11 = icmp ne i32 %29, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body.10
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.body.10
  %31 = load i32, i32* %first, align 4
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %32, i32 0, i32 0
  %33 = load i8*, i8** %name16, align 8
  %tobool17 = icmp ne i8* %33, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  %34 = load i32, i32* %num, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  store i32 0, i32* %first, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end.13
  %35 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %35, i32 0, i32 0
  %36 = load i8*, i8** %name20, align 8
  %tobool21 = icmp ne i8* %36, null
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 1
  %39 = load i8*, i8** %type, align 8
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %40, i32 0, i32 0
  %41 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %39, i8* %41)
  br label %if.end.27

if.else.24:                                       ; preds = %if.else
  %42 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %43, i32 0, i32 1
  %44 = load i8*, i8** %type25, align 8
  %45 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* %44, i32 %45)
  %46 = load i32, i32* %num, align 4
  %inc26 = add nsw i32 %46, 1
  store i32 %inc26, i32* %num, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.22
  store i32 1, i32* %needComma, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next29 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %47, i32 0, i32 4
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next29, align 8
  store %struct._tagTreeCCParam* %48, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0))
  %50 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params30 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %50, i32 0, i32 4
  %51 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params30, align 8
  %name31 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %51, i32 0, i32 0
  %52 = load i8*, i8** %name31, align 8
  %tobool32 = icmp ne i8* %52, null
  br i1 %tobool32, label %lor.lhs.false, label %if.then.37

lor.lhs.false:                                    ; preds = %while.end
  %53 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params33 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %53, i32 0, i32 4
  %54 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params33, align 8
  %name34 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %54, i32 0, i32 0
  %55 = load i8*, i8** %name34, align 8
  %call35 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #3
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false, %while.end
  %56 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %57 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %57, i32 0, i32 7
  %58 = load i64, i64* %codeLinenum, align 8
  %59 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %59, i32 0, i32 6
  %60 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %56, i64 %58, i8* %60)
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0))
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %63 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %63, i32 0, i32 1
  %64 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %62, i8* %64)
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0))
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %66)
  br label %if.end.45

if.else.38:                                       ; preds = %lor.lhs.false
  %67 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %68 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name39 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %68, i32 0, i32 4
  %69 = load i8*, i8** %name39, align 8
  %70 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params40 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %70, i32 0, i32 4
  %71 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params40, align 8
  %name41 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %71, i32 0, i32 0
  %72 = load i8*, i8** %name41, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0), i8* %69, i8* %72)
  %73 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %74 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum42 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %74, i32 0, i32 7
  %75 = load i64, i64* %codeLinenum42, align 8
  %76 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename43 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %76, i32 0, i32 6
  %77 = load i8*, i8** %codeFilename43, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %73, i64 %75, i8* %77)
  %78 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0))
  %79 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %80 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code44 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %80, i32 0, i32 1
  %81 = load i8*, i8** %code44, align 8
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %79, i8* %81, i32 1)
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0))
  %83 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %83)
  %84 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.38, %if.then.37
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %86 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next46 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %86, i32 0, i32 4
  %87 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next46, align 8
  store %struct._tagTreeCCVirtual* %87, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.47:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @CreateParamsSource(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %needComma) #0 {
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
  %call = call i32 @CreateParamsSource(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, i32 %6)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %16, i8* %18)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* %16)
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

declare void @TreeCCStreamCode(%struct._tagTreeCCStream*, i8*) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream*, i8*, i32) #1

declare void @TreeCCStreamClear(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamHeaderBottom(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
