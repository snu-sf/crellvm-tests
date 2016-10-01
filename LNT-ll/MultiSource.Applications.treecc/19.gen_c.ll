; ModuleID = './MultiSource.Applications.treecc/19.gen_c.bc'
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

@TreeCCNonVirtualFuncsC = constant %struct.TreeCCNonVirtual { void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @C_GenStart, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @C_GenEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*, i32)* @C_GenSplitEntry, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*, i32, i32)* @C_GenSwitchHead, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCNode*, i32)* @C_GenSelector, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @C_GenEndSelectors, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @C_GenCaseFunc, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @C_GenCaseCall, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32)* @C_GenCaseInline, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperationCase*, i32, i32)* @C_GenCaseSplit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @C_GenEndCase, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i32)* @C_GenEndSwitch, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @C_GenExit, void (%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, %struct._tagTreeCCOperation*)* @C_GenEnd }, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"c_gc_skel.h\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"c_skel.h\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s %s_split_%d__(\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s(\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s %s::%s(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"switch(%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"switch(%s__->vtable__->kind__)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"switch(%s__->kind__)\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"switch(%s__->getKind())\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\09\09\09\09\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"case %s:\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"case %s_kind:\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"static %s %s_%d__(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s %sP%d__\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(%s *)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"%s *%s = (%s *)%s__;\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\09return (%s);\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"#define %s_kind %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"typedef enum {\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%s\09%s\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"\0A} %s;\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"typedef struct %s__ %s;\0A\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"struct %s__ {\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *vtable__;\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"\09int kind__;\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"\09char *filename__;\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09long linenum__;\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"struct %s_vtable__ {\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *parent__;\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"\09const void *parent__;\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"\09const char *name__;\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"extern struct %s_vtable__ const %s_vt__;\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"\09%s %s;\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"\09%s (*%s_v__)(%s *this__\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c", %s %s\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c", %s P%d__\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"#define %s(this__\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c",P%d__\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c") \5C\0A\00", align 1
@.str.70 = private unnamed_addr constant [63 x i8] c"\09((*(((struct %s_vtable__ *)((this__)->vtable__))->%s_v__)) \5C\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"\09\09((%s *)(this__)\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c", (%s)\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c", (P%d__)\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"))\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"extern %s %s_%s__(\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"%s *%s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"%s *P%d__\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"extern %s *%s_create(\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"%s *state__\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"extern %s %s(\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"#ifndef %skind\0A\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"#define %skind(node__) ((node__)->vtable__->kind__)\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"#define %skind(node__) ((node__)->kind__)\0A\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"#ifndef %skindname\0A\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"#define %skindname(node__) ((node__)->vtable__->name__)\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"#ifndef %skindof\0A\00", align 1
@.str.90 = private unnamed_addr constant [42 x i8] c"#define %skindof(type__) (type__##_kind)\0A\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"#ifndef %sisa\0A\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"extern int %sisa__(const void *vtable__, int kind__);\0A\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"#define %sisa(node__,type__) \5C\0A\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"\09(%sisa__((node__)->vtable__, (type__##_kind)))\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"#ifndef %sgetfilename\0A\00", align 1
@.str.96 = private unnamed_addr constant [54 x i8] c"#define %sgetfilename(node__) ((node__)->filename__)\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"#ifndef %sgetlinenum\0A\00", align 1
@.str.98 = private unnamed_addr constant [52 x i8] c"#define %sgetlinenum(node__) ((node__)->linenum__)\0A\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"#ifndef %ssetfilename\0A\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"#define %ssetfilename(node__, value__) \5C\0A\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"\09((node__)->filename__ = (value__))\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"#ifndef %ssetlinenum\0A\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"#define %ssetlinenum(node__, value__) \5C\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"\09((node__)->linenum__ = (value__))\0A\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"#ifndef %stracklines_declared\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"extern char *%scurrfilename(\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"extern long %scurrlinenum(\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"#define %stracklines_declared 1\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"#ifndef %snodeops_declared\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"extern void %snodeinit(\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"extern void *%snodealloc(\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"%s *state__, \00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"unsigned int size__\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"extern int %snodepush(\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"extern void %snodepop(\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"extern void %snodeclear(\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"extern void %snodefailed(\00", align 1
@.str.118 = private unnamed_addr constant [30 x i8] c"#define %snodeops_declared 1\0A\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"#define %s_BLKSIZ %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"#define %s_REENTRANT 1\0A\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"#define %s_TRACK_LINES 1\0A\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"c_gc_skel.c\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"c_skel.c\00", align 1
@.str.124 = private unnamed_addr constant [38 x i8] c"struct %s_vtable__ const %s_vt__ = {\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"\09&%s_vt__,\0A\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"\090,\0A\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"\09%s_kind,\0A\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"\09\22%s\22,\0A\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"%s %s_%s__(\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"\09(%s (*)(%s *this__\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"))%s_%s__,\0A\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"))0,\0A\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"%s *%s_create(\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"\09static struct %s__ instance__ = {\0A\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"\09\09&%s_vt__,\0A\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"\09\09%s_kind\0A\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"\09};\0A\00", align 1
@.str.138 = private unnamed_addr constant [28 x i8] c"\09return (%s *)&instance__;\0A\00", align 1
@.str.139 = private unnamed_addr constant [64 x i8] c"\09%s *node__ = (%s *)%snodealloc(state__, sizeof(struct %s__));\0A\00", align 1
@.str.140 = private unnamed_addr constant [55 x i8] c"\09%s *node__ = (%s *)%snodealloc(sizeof(struct %s__));\0A\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"\09if(node__ == 0) return 0;\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"\09node__->vtable__ = &%s_vt__;\0A\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"\09node__->kind__ = %s_kind;\0A\00", align 1
@.str.144 = private unnamed_addr constant [48 x i8] c"\09node__->filename__ = %scurrfilename(state__);\0A\00", align 1
@.str.145 = private unnamed_addr constant [46 x i8] c"\09node__->linenum__ = %scurrlinenum(state__);\0A\00", align 1
@.str.146 = private unnamed_addr constant [41 x i8] c"\09node__->filename__ = %scurrfilename();\0A\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"\09node__->linenum__ = %scurrlinenum();\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"\09return (%s *)node__;\0A\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"\09node__->%s = %s;\0A\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"int %sisa__(const void *vtable__, int kind__)\0A\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c"\09const struct %s_vtable__ *vt;\0A\00", align 1
@.str.152 = private unnamed_addr constant [45 x i8] c"\09vt = (const struct %s_vtable__ *)vtable__;\0A\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"\09while(vt != 0) {\0A\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"\09\09if(vt->kind__ == kind__)\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"\09\09vt = vt->parent__;\0A\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @C_GenStart(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  call void @CGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenSplitEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
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
  call void @CGenEntry(%struct._tagTreeCCContext* %0, %struct._tagTreeCCStream* %1, %struct._tagTreeCCOperation* %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenSwitchHead(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i8* %paramName, i32 %level, i32 %isEnum) #0 {
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
  %add = add nsw i32 %mul, 1
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load i32, i32* %isEnum.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %4)
  br label %if.end.7

if.else:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 13
  %6 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.else.5

if.then.1:                                        ; preds = %if.else
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %bf.load = load i16, i16* %kind_in_vtable, align 8
  %bf.shl = shl i16 %bf.load, 8
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.then.1
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %9 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i8* %9)
  br label %if.end

if.else.4:                                        ; preds = %if.then.1
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %11 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.else.5:                                        ; preds = %if.else
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %13 = load i8*, i8** %paramName.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load i32, i32* %level.addr, align 4
  %mul8 = mul nsw i32 %15, 2
  %add9 = add nsw i32 %mul8, 1
  call void @Indent(%struct._tagTreeCCStream* %14, i32 %add9)
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenSelector(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %2, i32 %add)
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %6)
  br label %if.end.8

if.else:                                          ; preds = %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 5
  %8 = load i32, i32* %flags1, align 4
  %and2 = and i32 %8, 8
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load i32, i32* %level.addr, align 4
  %mul5 = mul nsw i32 %10, 2
  %add6 = add nsw i32 %mul5, 2
  call void @Indent(%struct._tagTreeCCStream* %9, i32 %add6)
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenEndSelectors(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenCaseFunc(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number) #0 {
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
  %suffix = alloca i8*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperationCase* %operCase, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %1 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %1, i32 0, i32 2
  %2 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %2, i32 0, i32 2
  %3 = load i8*, i8** %returnType, align 8
  %4 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %4, i32 0, i32 2
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* %3, i8* %6, i32 %7)
  %8 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper2 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %8, i32 0, i32 2
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper2, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 4
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %10, %struct._tagTreeCCParam** %param, align 8
  %11 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %triggers = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %11, i32 0, i32 0
  %12 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %triggers, align 8
  store %struct._tagTreeCCTrigger* %12, %struct._tagTreeCCTrigger** %trigger, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %13 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp = icmp ne %struct._tagTreeCCParam* %13, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %16, i32 0, i32 2
  %17 = load i32, i32* %flags, align 4
  %and = and i32 %17, 1
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %if.end
  %18 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %18, i32 0, i32 0
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %flags5 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 5
  %20 = load i32, i32* %flags5, align 4
  %and6 = and i32 %20, 8
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.4
  %21 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node8 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %21, i32 0, i32 0
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node8, align 8
  %flags9 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 5
  %23 = load i32, i32* %flags9, align 4
  %and10 = and i32 %23, 16
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %24 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %node13 = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %24, i32 0, i32 0
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node13, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 4
  %26 = load i8*, i8** %name14, align 8
  store i8* %26, i8** %type, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8** %suffix, align 8
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %if.then.4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type15 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 1
  %28 = load i8*, i8** %type15, align 8
  store i8* %28, i8** %type, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i8** %suffix, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %29 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %trigger, align 8
  %next = getelementptr inbounds %struct._tagTreeCCTrigger, %struct._tagTreeCCTrigger* %29, i32 0, i32 1
  %30 = load %struct._tagTreeCCTrigger*, %struct._tagTreeCCTrigger** %next, align 8
  store %struct._tagTreeCCTrigger* %30, %struct._tagTreeCCTrigger** %trigger, align 8
  br label %if.end.19

if.else.17:                                       ; preds = %if.end
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type18 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 1
  %32 = load i8*, i8** %type18, align 8
  store i8* %32, i8** %type, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i8** %suffix, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.end.16
  %33 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %33, i32 0, i32 0
  %34 = load i8*, i8** %name20, align 8
  %tobool21 = icmp ne i8* %34, null
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.19
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %36 = load i8*, i8** %type, align 8
  %37 = load i8*, i8** %suffix, align 8
  %38 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name23 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %38, i32 0, i32 0
  %39 = load i8*, i8** %name23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* %36, i8* %37, i8* %39)
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.19
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %41 = load i8*, i8** %type, align 8
  %42 = load i8*, i8** %suffix, align 8
  %43 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* %41, i8* %42, i32 %43)
  %44 = load i32, i32* %num, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  store i32 1, i32* %needComma, align 4
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next26 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %45, i32 0, i32 4
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next26, align 8
  store %struct._tagTreeCCParam* %46, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %needComma, align 4
  %tobool27 = icmp ne i32 %47, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %while.end
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %while.end
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %51 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %51, i32 0, i32 7
  %52 = load i64, i64* %codeLinenum, align 8
  %53 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %53, i32 0, i32 6
  %54 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %50, i64 %52, i8* %54)
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %56 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %56, i32 0, i32 1
  %57 = load i8*, i8** %code, align 8
  %tobool30 = icmp ne i8* %57, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %59 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code32 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %59, i32 0, i32 1
  %60 = load i8*, i8** %code32, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %58, i8* %60)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %61 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %62)
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenCaseCall(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 2
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 2
  %4 = load i8*, i8** %returnType, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* %9, i32 %10)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* %30)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %35)
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %37)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenCaseInline(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 3
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* %21, i8* %23, i8* %26, i8* %28)
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
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %34, i32 0, i32 7
  %35 = load i64, i64* %codeLinenum, align 8
  %36 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %36, i32 0, i32 6
  %37 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %33, i64 %35, i8* %37)
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %39 = load i32, i32* %level.addr, align 4
  %mul21 = mul nsw i32 %39, 2
  %add22 = add nsw i32 %mul21, 3
  call void @Indent(%struct._tagTreeCCStream* %38, i32 %add22)
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %41 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %41, i32 0, i32 1
  %42 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %42, null
  br i1 %tobool, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %while.end
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %44 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %code24 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %44, i32 0, i32 1
  %45 = load i8*, i8** %code24, align 8
  %46 = load i32, i32* %level.addr, align 4
  %mul25 = mul nsw i32 %46, 2
  %add26 = add nsw i32 %mul25, 3
  call void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream* %43, i8* %45, i32 %add26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %while.end
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenCaseSplit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperationCase* %operCase, i32 %number, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 3
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %2, i32 0, i32 2
  %3 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %3, i32 0, i32 2
  %4 = load i8*, i8** %returnType, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %7 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase.addr, align 8
  %oper1 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %7, i32 0, i32 2
  %8 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper1, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %number.addr, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* %9, i32 %10)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* %30)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %35)
  br label %if.end.24

if.else:                                          ; preds = %if.end.19
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %37)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenEndCase(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 2
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenEndSwitch(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, i32 %level) #0 {
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
  %add = add nsw i32 %mul, 2
  call void @Indent(%struct._tagTreeCCStream* %0, i32 %add)
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0))
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load i32, i32* %level.addr, align 4
  %mul1 = mul nsw i32 %4, 2
  %add2 = add nsw i32 %mul1, 1
  call void @Indent(%struct._tagTreeCCStream* %3, i32 %add2)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenExit(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
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
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #3
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @C_GenEnd(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %oper.addr = alloca %struct._tagTreeCCOperation*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCOperation* %oper, %struct._tagTreeCCOperation** %oper.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCGenerateC(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteHeaders(%struct._tagTreeCCContext* %0)
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
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %bf.load = load i16, i16* %use_gc_allocator, align 8
  %bf.shl = shl i16 %bf.load, 3
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 6
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader, align 8
  %tobool2 = icmp ne %struct._tagTreeCCStream* %9, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 6
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader4, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %10, %struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream5 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 4
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream5, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %13, %struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.14

if.else.6:                                        ; preds = %entry
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 6
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader7, align 8
  %tobool8 = icmp ne %struct._tagTreeCCStream* %17, null
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.6
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 6
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader10, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %18, %struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.else.11:                                       ; preds = %if.else.6
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 4
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream12, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %21, %struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %24, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @BuildTypeDecls)
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %25, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DeclareCreateFuncs)
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream15 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %26, i32 0, i32 4
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream15, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %28 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCOperationVisitAll(%struct._tagTreeCCContext* %28, void (%struct._tagTreeCCContext*, %struct._tagTreeCCOperation*)* @DeclareNonVirtuals)
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %29, i32 0, i32 4
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @OutputHelpers(%struct._tagTreeCCContext* %31)
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 8
  %bf.load17 = load i16, i16* %use_allocator, align 8
  %bf.shl18 = shl i16 %bf.load17, 4
  %bf.ashr19 = ashr i16 %bf.shl18, 15
  %bf.cast20 = sext i16 %bf.ashr19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.14
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %33, i32 0, i32 7
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool23 = icmp ne %struct._tagTreeCCStream* %34, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.22
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %36 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %36, i32 0, i32 7
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource25, align 8
  call void @WriteSourceSkeleton(%struct._tagTreeCCContext* %35, %struct._tagTreeCCStream* %37)
  br label %if.end.27

if.else.26:                                       ; preds = %if.then.22
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 5
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  call void @WriteSourceSkeleton(%struct._tagTreeCCContext* %38, %struct._tagTreeCCStream* %40)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.14
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %41, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @DefineVtables)
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCNodeVisitAll(%struct._tagTreeCCContext* %42, void (%struct._tagTreeCCContext*, %struct._tagTreeCCNode*)* @ImplementCreateFuncs)
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext* %43, %struct.TreeCCNonVirtual* @TreeCCNonVirtualFuncsC)
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @OutputIsA(%struct._tagTreeCCContext* %44)
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  call void @WriteFooters(%struct._tagTreeCCContext* %45)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteHeaders(%struct._tagTreeCCContext* %context) #0 {
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
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamHeaderTop(%struct._tagTreeCCStream* %4)
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0))
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0))
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceTop(%struct._tagTreeCCStream* %10)
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %defaultFile = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %12, i32 0, i32 7
  %bf.load1 = load i8, i8* %defaultFile, align 4
  %bf.shl2 = shl i8 %bf.load1, 4
  %bf.ashr3 = ashr i8 %bf.shl2, 7
  %bf.cast4 = sext i8 %bf.ashr3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %dirty = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %13, i32 0, i32 7
  %bf.load7 = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load7, -17
  store i8 %bf.clear, i8* %dirty, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %14, i32 0, i32 10
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %15, %struct._tagTreeCCStream** %stream, align 8
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i8* %6, i32 %8)
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
  %sep = alloca i8*, align 8
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %sep, align 8
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0))
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
  %11 = load i8*, i8** %sep, align 8
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 4
  %13 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* %11, i8* %13)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8** %sep, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.body
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %child, align 8
  %nextSibling = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 3
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextSibling, align 8
  store %struct._tagTreeCCNode* %15, %struct._tagTreeCCNode** %child, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 4
  %18 = load i8*, i8** %name6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* %18)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %19 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %19, i32 0, i32 5
  %20 = load i32, i32* %flags7, align 4
  %and8 = and i32 %20, 16
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.else
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 4
  %23 = load i8*, i8** %name11, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 4
  %25 = load i8*, i8** %name12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), i8* %23, i8* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %while.end
  ret void
}

declare void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext*, %struct._tagTreeCCStream*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @BuildTypeDecls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
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
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 4
  %6 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* %6)
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 4
  %9 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i32 0, i32 0), i8* %9)
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load = load i16, i16* %kind_in_vtable, align 8
  %bf.shl = shl i16 %bf.load, 8
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 8
  %bf.load4 = load i16, i16* %track_lines, align 8
  %bf.shl5 = shl i16 %bf.load4, 14
  %bf.ashr6 = ashr i16 %bf.shl5, 15
  %bf.cast7 = sext i16 %bf.ashr6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0))
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.3
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareFields(%struct._tagTreeCCContext* %15, %struct._tagTreeCCStream* %16, %struct._tagTreeCCNode* %17)
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name11 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* %21)
  %22 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %22, i32 0, i32 0
  %23 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool12 = icmp ne %struct._tagTreeCCNode* %23, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent14 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %25, i32 0, i32 0
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent14, align 8
  %name15 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name15, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), i8* %27)
  br label %if.end.16

if.else:                                          ; preds = %if.end.10
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %32 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareVirtuals(%struct._tagTreeCCContext* %31, %struct._tagTreeCCStream* %32, %struct._tagTreeCCNode* %33)
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %35 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %36, i32 0, i32 4
  %37 = load i8*, i8** %name17, align 8
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name18 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %38, i32 0, i32 4
  %39 = load i8*, i8** %name18, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i32 0, i32 0), i8* %37, i8* %39)
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @DeclareVirtualMacros(%struct._tagTreeCCContext* %40, %struct._tagTreeCCStream* %41, %struct._tagTreeCCNode* %42)
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %45 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i32 @DeclareVirtualImpls(%struct._tagTreeCCContext* %43, %struct._tagTreeCCStream* %44, %struct._tagTreeCCNode* %45, %struct._tagTreeCCNode* %46)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %47 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.20, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareCreateFuncs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
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
  %and = and i32 %3, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 5
  %5 = load i32, i32* %flags1, align 4
  %and2 = and i32 %5, 24
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i8* @TypedefName(%struct._tagTreeCCNode* %7)
  %8 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %8, i32 0, i32 4
  %9 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i32 0, i32 0), i8* %call, i8* %9)
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 10
  %13 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %13)
  store i32 1, i32* %needComma, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  store i32 0, i32* %needComma, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %17 = load i32, i32* %needComma, align 4
  %call6 = call i32 @CreateParams(%struct._tagTreeCCContext* %14, %struct._tagTreeCCStream* %15, %struct._tagTreeCCNode* %16, i32 %17)
  store i32 %call6, i32* %needComma, align 4
  %18 = load i32, i32* %needComma, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.9, %if.then
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
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %5 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %5, i32 0, i32 2
  %6 = load i8*, i8** %returnType, align 8
  %7 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* %6, i8* %8)
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 4
  %10 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %10, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %11 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp1 = icmp ne %struct._tagTreeCCParam* %11, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %needComma, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %while.body
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %while.body
  %14 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %14, i32 0, i32 0
  %15 = load i8*, i8** %name4, align 8
  %tobool5 = icmp ne i8* %15, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 1
  %18 = load i8*, i8** %type, align 8
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 0
  %20 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* %18, i8* %20)
  br label %if.end.9

if.else:                                          ; preds = %if.end.3
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type8 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 1
  %23 = load i8*, i8** %type8, align 8
  %24 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* %23, i32 %24)
  %25 = load i32, i32* %num, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  store i32 1, i32* %needComma, align 4
  %26 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %26, i32 0, i32 4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %27, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %needComma, align 4
  %tobool10 = icmp ne i32 %28, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.end
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %while.end
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OutputHelpers(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 6
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonHeader1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 6
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonHeader1, align 8
  store %struct._tagTreeCCStream* %3, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 4
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  store %struct._tagTreeCCStream* %5, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 9
  %8 = load i8*, i8** %yy_replacement, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i8* %8)
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 8
  %bf.load = load i16, i16* %kind_in_vtable, align 8
  %bf.shl = shl i16 %bf.load, 8
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 9
  %12 = load i8*, i8** %yy_replacement4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.84, i32 0, i32 0), i8* %12)
  br label %if.end.7

if.else.5:                                        ; preds = %if.end
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement6 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 9
  %15 = load i8*, i8** %yy_replacement6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0), i8* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.3
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 9
  %19 = load i8*, i8** %yy_replacement8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i8* %19)
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 9
  %22 = load i8*, i8** %yy_replacement9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i32 0, i32 0), i8* %22)
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %25 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %25, i32 0, i32 9
  %26 = load i8*, i8** %yy_replacement10, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* %26)
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %28 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %28, i32 0, i32 9
  %29 = load i8*, i8** %yy_replacement11, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.90, i32 0, i32 0), i8* %29)
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %31 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 9
  %33 = load i8*, i8** %yy_replacement12, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0), i8* %33)
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement13 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 9
  %36 = load i8*, i8** %yy_replacement13, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0), i8* %36)
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %38, i32 0, i32 9
  %39 = load i8*, i8** %yy_replacement14, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.93, i32 0, i32 0), i8* %39)
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement15 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %41, i32 0, i32 9
  %42 = load i8*, i8** %yy_replacement15, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.94, i32 0, i32 0), i8* %42)
  %43 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %44 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %44, i32 0, i32 8
  %bf.load16 = load i16, i16* %track_lines, align 8
  %bf.shl17 = shl i16 %bf.load16, 14
  %bf.ashr18 = ashr i16 %bf.shl17, 15
  %bf.cast19 = sext i16 %bf.ashr18 to i32
  %tobool20 = icmp ne i32 %bf.cast19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.52

if.then.21:                                       ; preds = %if.end.7
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %46 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement22 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %46, i32 0, i32 9
  %47 = load i8*, i8** %yy_replacement22, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0), i8* %47)
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 9
  %50 = load i8*, i8** %yy_replacement23, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.96, i32 0, i32 0), i8* %50)
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %52 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement24 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %53, i32 0, i32 9
  %54 = load i8*, i8** %yy_replacement24, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.97, i32 0, i32 0), i8* %54)
  %55 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %56 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement25 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %56, i32 0, i32 9
  %57 = load i8*, i8** %yy_replacement25, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.98, i32 0, i32 0), i8* %57)
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %60 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement26 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %60, i32 0, i32 9
  %61 = load i8*, i8** %yy_replacement26, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.99, i32 0, i32 0), i8* %61)
  %62 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %63 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %63, i32 0, i32 9
  %64 = load i8*, i8** %yy_replacement27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i32 0, i32 0), i8* %64)
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i32 0, i32 0))
  %66 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %67 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %68 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement28 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %68, i32 0, i32 9
  %69 = load i8*, i8** %yy_replacement28, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0), i8* %69)
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %71, i32 0, i32 9
  %72 = load i8*, i8** %yy_replacement29, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.103, i32 0, i32 0), i8* %72)
  %73 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0))
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  %75 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %76 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement30 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %76, i32 0, i32 9
  %77 = load i8*, i8** %yy_replacement30, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0), i8* %77)
  %78 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %79 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement31 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %79, i32 0, i32 9
  %80 = load i8*, i8** %yy_replacement31, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i8* %80)
  %81 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %81, i32 0, i32 8
  %bf.load32 = load i16, i16* %reentrant, align 8
  %bf.shl33 = shl i16 %bf.load32, 12
  %bf.ashr34 = ashr i16 %bf.shl33, 15
  %bf.cast35 = sext i16 %bf.ashr34 to i32
  %tobool36 = icmp ne i32 %bf.cast35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.then.21
  %82 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %83 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %83, i32 0, i32 10
  %84 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %84)
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.21
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  %86 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %87 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %88 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement40 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %88, i32 0, i32 9
  %89 = load i8*, i8** %yy_replacement40, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0), i8* %89)
  %90 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant41 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %90, i32 0, i32 8
  %bf.load42 = load i16, i16* %reentrant41, align 8
  %bf.shl43 = shl i16 %bf.load42, 12
  %bf.ashr44 = ashr i16 %bf.shl43, 15
  %bf.cast45 = sext i16 %bf.ashr44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.39
  %91 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %92 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type48 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %92, i32 0, i32 10
  %93 = load i8*, i8** %state_type48, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %93)
  br label %if.end.50

if.else.49:                                       ; preds = %if.end.39
  %94 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.47
  %95 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %96 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %97 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement51 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %97, i32 0, i32 9
  %98 = load i8*, i8** %yy_replacement51, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.108, i32 0, i32 0), i8* %98)
  %99 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %if.end.7
  %100 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %101 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement53 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %101, i32 0, i32 9
  %102 = load i8*, i8** %yy_replacement53, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %102)
  %103 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %104 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement54 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %104, i32 0, i32 9
  %105 = load i8*, i8** %yy_replacement54, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i32 0, i32 0), i8* %105)
  %106 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant55 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %106, i32 0, i32 8
  %bf.load56 = load i16, i16* %reentrant55, align 8
  %bf.shl57 = shl i16 %bf.load56, 12
  %bf.ashr58 = ashr i16 %bf.shl57, 15
  %bf.cast59 = sext i16 %bf.ashr58 to i32
  %tobool60 = icmp ne i32 %bf.cast59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.52
  %107 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %108 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type62 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %108, i32 0, i32 10
  %109 = load i8*, i8** %state_type62, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %109)
  br label %if.end.64

if.else.63:                                       ; preds = %if.end.52
  %110 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.61
  %111 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %112 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %113 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement65 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %113, i32 0, i32 9
  %114 = load i8*, i8** %yy_replacement65, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0), i8* %114)
  %115 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant66 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %115, i32 0, i32 8
  %bf.load67 = load i16, i16* %reentrant66, align 8
  %bf.shl68 = shl i16 %bf.load67, 12
  %bf.ashr69 = ashr i16 %bf.shl68, 15
  %bf.cast70 = sext i16 %bf.ashr69 to i32
  %tobool71 = icmp ne i32 %bf.cast70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.64
  %116 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %117 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type73 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %117, i32 0, i32 10
  %118 = load i8*, i8** %state_type73, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i8* %118)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.64
  %119 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i32 0, i32 0))
  %120 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %121 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %122 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement75 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %122, i32 0, i32 9
  %123 = load i8*, i8** %yy_replacement75, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i32 0, i32 0), i8* %123)
  %124 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant76 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %124, i32 0, i32 8
  %bf.load77 = load i16, i16* %reentrant76, align 8
  %bf.shl78 = shl i16 %bf.load77, 12
  %bf.ashr79 = ashr i16 %bf.shl78, 15
  %bf.cast80 = sext i16 %bf.ashr79 to i32
  %tobool81 = icmp ne i32 %bf.cast80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %if.end.74
  %125 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %126 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type83 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %126, i32 0, i32 10
  %127 = load i8*, i8** %state_type83, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %127)
  br label %if.end.85

if.else.84:                                       ; preds = %if.end.74
  %128 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.then.82
  %129 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %130 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %131 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement86 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %131, i32 0, i32 9
  %132 = load i8*, i8** %yy_replacement86, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.115, i32 0, i32 0), i8* %132)
  %133 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant87 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %133, i32 0, i32 8
  %bf.load88 = load i16, i16* %reentrant87, align 8
  %bf.shl89 = shl i16 %bf.load88, 12
  %bf.ashr90 = ashr i16 %bf.shl89, 15
  %bf.cast91 = sext i16 %bf.ashr90 to i32
  %tobool92 = icmp ne i32 %bf.cast91, 0
  br i1 %tobool92, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.end.85
  %134 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %135 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type94 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %135, i32 0, i32 10
  %136 = load i8*, i8** %state_type94, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %136)
  br label %if.end.96

if.else.95:                                       ; preds = %if.end.85
  %137 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.93
  %138 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %139 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %140 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement97 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %140, i32 0, i32 9
  %141 = load i8*, i8** %yy_replacement97, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.116, i32 0, i32 0), i8* %141)
  %142 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant98 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %142, i32 0, i32 8
  %bf.load99 = load i16, i16* %reentrant98, align 8
  %bf.shl100 = shl i16 %bf.load99, 12
  %bf.ashr101 = ashr i16 %bf.shl100, 15
  %bf.cast102 = sext i16 %bf.ashr101 to i32
  %tobool103 = icmp ne i32 %bf.cast102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.96
  %143 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %144 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type105 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %144, i32 0, i32 10
  %145 = load i8*, i8** %state_type105, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %145)
  br label %if.end.107

if.else.106:                                      ; preds = %if.end.96
  %146 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.then.104
  %147 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %148 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %149 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement108 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %149, i32 0, i32 9
  %150 = load i8*, i8** %yy_replacement108, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i32 0, i32 0), i8* %150)
  %151 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant109 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %151, i32 0, i32 8
  %bf.load110 = load i16, i16* %reentrant109, align 8
  %bf.shl111 = shl i16 %bf.load110, 12
  %bf.ashr112 = ashr i16 %bf.shl111, 15
  %bf.cast113 = sext i16 %bf.ashr112 to i32
  %tobool114 = icmp ne i32 %bf.cast113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %if.end.107
  %152 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %153 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type116 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %153, i32 0, i32 10
  %154 = load i8*, i8** %state_type116, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %154)
  br label %if.end.118

if.else.117:                                      ; preds = %if.end.107
  %155 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.115
  %156 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %157 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %158 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement119 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %158, i32 0, i32 9
  %159 = load i8*, i8** %yy_replacement119, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.118, i32 0, i32 0), i8* %159)
  %160 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteSourceSkeleton(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.119, i32 0, i32 0), i8* %4, i32 %6)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i32 0, i32 0), i8* %10)
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.121, i32 0, i32 0), i8* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.5
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 8
  %bf.load14 = load i16, i16* %use_gc_allocator, align 8
  %bf.shl15 = shl i16 %bf.load14, 3
  %bf.ashr16 = ashr i16 %bf.shl15, 15
  %bf.cast17 = sext i16 %bf.ashr16 to i32
  %tobool18 = icmp ne i32 %bf.cast17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.13
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %16, %struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0))
  br label %if.end.20

if.else:                                          ; preds = %if.end.13
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* %18, %struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DefineVtables(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
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
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @OutputVtableImpls(%struct._tagTreeCCContext* %4, %struct._tagTreeCCStream* %5, %struct._tagTreeCCNode* %6, %struct._tagTreeCCNode* %7)
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 4
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %11, i32 0, i32 4
  %12 = load i8*, i8** %name1, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.124, i32 0, i32 0), i8* %10, i8* %12)
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 0
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %14, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %15 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %16 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent3 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %16, i32 0, i32 0
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent3, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %17, i32 0, i32 4
  %18 = load i8*, i8** %name4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), i8* %18)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 4
  %22 = load i8*, i8** %name6, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* %22)
  %23 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %24 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %24, i32 0, i32 4
  %25 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* %25)
  %26 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %28 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %29 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @OutputVtableFuncs(%struct._tagTreeCCContext* %26, %struct._tagTreeCCStream* %27, %struct._tagTreeCCNode* %28, %struct._tagTreeCCNode* %29)
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImplementCreateFuncs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %typedefName = alloca i8*, align 8
  %needComma = alloca i32, align 4
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
  %flags1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 5
  %5 = load i32, i32* %flags1, align 4
  %and2 = and i32 %5, 2
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call = call i8* @TypedefName(%struct._tagTreeCCNode* %6)
  store i8* %call, i8** %typedefName, align 8
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %8 = load i8*, i8** %typedefName, align 8
  %9 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %9, i32 0, i32 4
  %10 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.133, i32 0, i32 0), i8* %8, i8* %10)
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 8
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.shl = shl i16 %bf.load, 12
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.5
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 10
  %14 = load i8*, i8** %state_type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %14)
  store i32 1, i32* %needComma, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end.5
  store i32 0, i32* %needComma, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %17 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %18 = load i32, i32* %needComma, align 4
  %call8 = call i32 @CreateParamsSource(%struct._tagTreeCCContext* %15, %struct._tagTreeCCStream* %16, %struct._tagTreeCCNode* %17, i32 %18)
  store i32 %call8, i32* %needComma, align 4
  %19 = load i32, i32* %needComma, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %22 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %23, i32 0, i32 8
  %bf.load12 = load i16, i16* %track_lines, align 8
  %bf.shl13 = shl i16 %bf.load12, 14
  %bf.ashr14 = ashr i16 %bf.shl13, 15
  %bf.cast15 = sext i16 %bf.ashr14 to i32
  %tobool16 = icmp ne i32 %bf.cast15, 0
  br i1 %tobool16, label %if.else.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.11
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %no_singletons = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 8
  %bf.load17 = load i16, i16* %no_singletons, align 8
  %bf.shl18 = shl i16 %bf.load17, 13
  %bf.ashr19 = ashr i16 %bf.shl18, 15
  %bf.cast20 = sext i16 %bf.ashr19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.else.36, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %25 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %call23 = call i32 @TreeCCNodeIsSingleton(%struct._tagTreeCCNode* %25)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.36

if.then.25:                                       ; preds = %land.lhs.true.22
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %27 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name26 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %27, i32 0, i32 4
  %28 = load i8*, i8** %name26, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.134, i32 0, i32 0), i8* %28)
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %30 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name27 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %30, i32 0, i32 4
  %31 = load i8*, i8** %name27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* %31)
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 8
  %bf.load28 = load i16, i16* %kind_in_vtable, align 8
  %bf.shl29 = shl i16 %bf.load28, 8
  %bf.ashr30 = ashr i16 %bf.shl29, 15
  %bf.cast31 = sext i16 %bf.ashr30 to i32
  %tobool32 = icmp ne i32 %bf.cast31, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.25
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name34 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %34, i32 0, i32 4
  %35 = load i8*, i8** %name34, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* %35)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.25
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0))
  %37 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %38 = load i8*, i8** %typedefName, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.138, i32 0, i32 0), i8* %38)
  br label %if.end.84

if.else.36:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.end.11
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant37 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 8
  %bf.load38 = load i16, i16* %reentrant37, align 8
  %bf.shl39 = shl i16 %bf.load38, 12
  %bf.ashr40 = ashr i16 %bf.shl39, 15
  %bf.cast41 = sext i16 %bf.ashr40 to i32
  %tobool42 = icmp ne i32 %bf.cast41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.else.36
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name44 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %41, i32 0, i32 4
  %42 = load i8*, i8** %name44, align 8
  %43 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name45 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %43, i32 0, i32 4
  %44 = load i8*, i8** %name45, align 8
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %45, i32 0, i32 9
  %46 = load i8*, i8** %yy_replacement, align 8
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name46 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %47, i32 0, i32 4
  %48 = load i8*, i8** %name46, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.139, i32 0, i32 0), i8* %42, i8* %44, i8* %46, i8* %48)
  br label %if.end.52

if.else.47:                                       ; preds = %if.else.36
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %50 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name48 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %50, i32 0, i32 4
  %51 = load i8*, i8** %name48, align 8
  %52 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name49 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %52, i32 0, i32 4
  %53 = load i8*, i8** %name49, align 8
  %54 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %54, i32 0, i32 9
  %55 = load i8*, i8** %yy_replacement50, align 8
  %56 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name51 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %56, i32 0, i32 4
  %57 = load i8*, i8** %name51, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.140, i32 0, i32 0), i8* %51, i8* %53, i8* %55, i8* %57)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.47, %if.then.43
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.141, i32 0, i32 0))
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %60 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name53 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %60, i32 0, i32 4
  %61 = load i8*, i8** %name53, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.142, i32 0, i32 0), i8* %61)
  %62 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable54 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %62, i32 0, i32 8
  %bf.load55 = load i16, i16* %kind_in_vtable54, align 8
  %bf.shl56 = shl i16 %bf.load55, 8
  %bf.ashr57 = ashr i16 %bf.shl56, 15
  %bf.cast58 = sext i16 %bf.ashr57 to i32
  %tobool59 = icmp ne i32 %bf.cast58, 0
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %if.end.52
  %63 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %64 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name61 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %64, i32 0, i32 4
  %65 = load i8*, i8** %name61, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i32 0, i32 0), i8* %65)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.52
  %66 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines63 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %66, i32 0, i32 8
  %bf.load64 = load i16, i16* %track_lines63, align 8
  %bf.shl65 = shl i16 %bf.load64, 14
  %bf.ashr66 = ashr i16 %bf.shl65, 15
  %bf.cast67 = sext i16 %bf.ashr66 to i32
  %tobool68 = icmp ne i32 %bf.cast67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.83

if.then.69:                                       ; preds = %if.end.62
  %67 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant70 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %67, i32 0, i32 8
  %bf.load71 = load i16, i16* %reentrant70, align 8
  %bf.shl72 = shl i16 %bf.load71, 12
  %bf.ashr73 = ashr i16 %bf.shl72, 15
  %bf.cast74 = sext i16 %bf.ashr73 to i32
  %tobool75 = icmp ne i32 %bf.cast74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.79

if.then.76:                                       ; preds = %if.then.69
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %69 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement77 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %69, i32 0, i32 9
  %70 = load i8*, i8** %yy_replacement77, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.144, i32 0, i32 0), i8* %70)
  %71 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %72 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement78 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %72, i32 0, i32 9
  %73 = load i8*, i8** %yy_replacement78, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.145, i32 0, i32 0), i8* %73)
  br label %if.end.82

if.else.79:                                       ; preds = %if.then.69
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %75 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement80 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %75, i32 0, i32 9
  %76 = load i8*, i8** %yy_replacement80, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.146, i32 0, i32 0), i8* %76)
  %77 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %78 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement81 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %78, i32 0, i32 9
  %79 = load i8*, i8** %yy_replacement81, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.147, i32 0, i32 0), i8* %79)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.62
  %80 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %81 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %82 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  call void @InitFields(%struct._tagTreeCCContext* %80, %struct._tagTreeCCStream* %81, %struct._tagTreeCCNode* %82)
  %83 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %84 = load i8*, i8** %typedefName, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.148, i32 0, i32 0), i8* %84)
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.35
  %85 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.84, %if.then.4, %if.then
  ret void
}

declare void @TreeCCGenerateNonVirtuals(%struct._tagTreeCCContext*, %struct.TreeCCNonVirtual*) #1

; Function Attrs: nounwind uwtable
define internal void @OutputIsA(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 7
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource, align 8
  %tobool = icmp ne %struct._tagTreeCCStream* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %commonSource1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 7
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %commonSource1, align 8
  store %struct._tagTreeCCStream* %3, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 5
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  store %struct._tagTreeCCStream* %5, %struct._tagTreeCCStream** %stream, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 9
  %8 = load i8*, i8** %yy_replacement, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i8* %8)
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 9
  %11 = load i8*, i8** %yy_replacement2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), i8* %11)
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0))
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 9
  %16 = load i8*, i8** %yy_replacement3, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.150, i32 0, i32 0), i8* %16)
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 9
  %20 = load i8*, i8** %yy_replacement4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.151, i32 0, i32 0), i8* %20)
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement5 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 9
  %23 = load i8*, i8** %yy_replacement5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.152, i32 0, i32 0), i8* %23)
  %24 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0))
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.154, i32 0, i32 0))
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0))
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i32 0, i32 0))
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0))
  %29 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0))
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WriteFooters(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
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
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %isHeader = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %6, i32 0, i32 7
  %bf.load6 = load i8, i8* %isHeader, align 4
  %bf.shl7 = shl i8 %bf.load6, 5
  %bf.ashr8 = ashr i8 %bf.shl7, 7
  %bf.cast9 = sext i8 %bf.ashr8 to i32
  %tobool10 = icmp ne i32 %bf.cast9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0))
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0))
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamHeaderBottom(%struct._tagTreeCCStream* %11)
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %13 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %13, i32 0, i32 10
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %14, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CGenEntry(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCOperation* %oper, i32 %number) #0 {
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %3, i8* %5, i32 %6)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 13
  %8 = load i32, i32* %language, align 4
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %9, i32 0, i32 1
  %10 = load i8*, i8** %className, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.else.5, label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false, %if.else
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType3 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %12, i32 0, i32 2
  %13 = load i8*, i8** %returnType3, align 8
  %14 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %14, i32 0, i32 0
  %15 = load i8*, i8** %name4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %13, i8* %15)
  br label %if.end

if.else.5:                                        ; preds = %lor.lhs.false
  %16 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %17 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %returnType6 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %17, i32 0, i32 2
  %18 = load i8*, i8** %returnType6, align 8
  %19 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %className7 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %19, i32 0, i32 1
  %20 = load i8*, i8** %className7, align 8
  %21 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %21, i32 0, i32 0
  %22 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %18, i8* %20, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %23 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper.addr, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %23, i32 0, i32 4
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %24, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  store i32 0, i32* %needComma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.end.9
  %25 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp10 = icmp ne %struct._tagTreeCCParam* %25, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %needComma, align 4
  %tobool11 = icmp ne i32 %26, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.body
  %28 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %29 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %29, i32 0, i32 1
  %30 = load i8*, i8** %type, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %30)
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 0
  %32 = load i8*, i8** %name14, align 8
  %tobool15 = icmp ne i8* %32, null
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.end.13
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %35)
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.13
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %num, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 2
  %40 = load i32, i32* %flags, align 4
  %and = and i32 %40, 1
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.19
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %42 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type22 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %42, i32 0, i32 1
  %43 = load i8*, i8** %type22, align 8
  %call = call i32 @IsEnumType(%struct._tagTreeCCContext* %41, i8* %43)
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  %44 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.19
  store i32 1, i32* %needComma, align 4
  %45 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %45, i32 0, i32 4
  %46 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %46, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %needComma, align 4
  %tobool27 = icmp ne i32 %47, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %while.end
  %48 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %while.end
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %while.end
  %5 = load i32, i32* %indent.addr, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.7

if.else.4:                                        ; preds = %if.else
  %7 = load i32, i32* %indent.addr, align 4
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.4
  %8 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  ret void
}

declare void @TreeCCStreamLine(%struct._tagTreeCCStream*, i64, i8*) #1

declare void @TreeCCStreamCode(%struct._tagTreeCCStream*, i8*) #1

declare void @TreeCCStreamFixLine(%struct._tagTreeCCStream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @TreeCCStreamCodeIndent(%struct._tagTreeCCStream*, i8*, i32) #1

declare void @TreeCCStreamHeaderTop(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceTop(%struct._tagTreeCCStream*) #1

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
  call void @DeclareFields(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 10
  %7 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %7, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %10, i32 0, i32 1
  %11 = load i8*, i8** %type, align 8
  %12 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* %11, i8* %13)
  %14 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %14, i32 0, i32 6
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %15, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareVirtuals(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
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
  call void @DeclareVirtuals(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 11
  %7 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %7, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %8, null
  br i1 %cmp, label %while.body, label %while.end.13

while.body:                                       ; preds = %while.cond
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %10 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %10, i32 0, i32 1
  %11 = load i8*, i8** %returnType, align 8
  %12 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %14, i32 0, i32 4
  %15 = load i8*, i8** %name2, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0), i8* %11, i8* %13, i8* %15)
  %16 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %16, i32 0, i32 2
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %17, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end.11, %while.body
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp4 = icmp ne %struct._tagTreeCCParam* %18, null
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %19 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %19, i32 0, i32 0
  %20 = load i8*, i8** %name6, align 8
  %tobool7 = icmp ne i8* %20, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body.5
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %22 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %22, i32 0, i32 1
  %23 = load i8*, i8** %type, align 8
  %24 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %24, i32 0, i32 0
  %25 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* %23, i8* %25)
  br label %if.end.11

if.else:                                          ; preds = %while.body.5
  %26 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type10 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %27, i32 0, i32 1
  %28 = load i8*, i8** %type10, align 8
  %29 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* %28, i32 %29)
  %30 = load i32, i32* %num, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 4
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %32, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %34 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next12 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %34, i32 0, i32 4
  %35 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next12, align 8
  store %struct._tagTreeCCVirtual* %35, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.13:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DeclareVirtualMacros(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 11
  %1 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %1, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.21, %entry
  %2 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %2, null
  br i1 %cmp, label %while.body, label %while.end.23

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0), i8* %5)
  %6 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %6, i32 0, i32 2
  %7 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %7, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %8 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp2 = icmp ne %struct._tagTreeCCParam* %8, null
  br i1 %cmp2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %9 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %9, i32 0, i32 0
  %10 = load i8*, i8** %name4, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.3
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name5 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* %13)
  br label %if.end

if.else:                                          ; preds = %while.body.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %15)
  %16 = load i32, i32* %num, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %17, i32 0, i32 4
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %18, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0))
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %21 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %21, i32 0, i32 4
  %22 = load i8*, i8** %name6, align 8
  %23 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %23, i32 0, i32 0
  %24 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.70, i32 0, i32 0), i8* %22, i8* %24)
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %26 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name8 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %26, i32 0, i32 4
  %27 = load i8*, i8** %name8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i8* %27)
  %28 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params9 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %28, i32 0, i32 2
  %29 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params9, align 8
  store %struct._tagTreeCCParam* %29, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.19, %while.end
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp11 = icmp ne %struct._tagTreeCCParam* %30, null
  br i1 %cmp11, label %while.body.12, label %while.end.21

while.body.12:                                    ; preds = %while.cond.10
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name13 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 0
  %32 = load i8*, i8** %name13, align 8
  %tobool14 = icmp ne i8* %32, null
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %while.body.12
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 0
  %35 = load i8*, i8** %name16, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* %35)
  br label %if.end.19

if.else.17:                                       ; preds = %while.body.12
  %36 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %37 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %num, align 4
  %inc18 = add nsw i32 %38, 1
  store i32 %inc18, i32* %num, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 4
  %40 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next20, align 8
  store %struct._tagTreeCCParam* %40, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.10

while.end.21:                                     ; preds = %while.cond.10
  %41 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0))
  %42 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next22 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %42, i32 0, i32 4
  %43 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next22, align 8
  store %struct._tagTreeCCVirtual* %43, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.23:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @DeclareVirtualImpls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
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
  %needComma = alloca i32, align 4
  %haveVirts = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode* %actualNode, %struct._tagTreeCCNode** %actualNode.addr, align 8
  store i32 0, i32* %haveVirts, align 4
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
  %call = call i32 @DeclareVirtualImpls(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode* %6)
  store i32 %call, i32* %haveVirts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 11
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %8, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.4, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.33

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %12 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %call2 = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %10, %struct._tagTreeCCNode* %11, i8* %13)
  store %struct._tagTreeCCOperationCase* %call2, %struct._tagTreeCCOperationCase** %operCase, align 8
  %14 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool3 = icmp ne %struct._tagTreeCCOperationCase* %14, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %while.body
  %15 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %15, i32 0, i32 4
  %16 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next, align 8
  store %struct._tagTreeCCVirtual* %16, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

if.end.5:                                         ; preds = %while.body
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %18 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %18, i32 0, i32 1
  %19 = load i8*, i8** %returnType, align 8
  %20 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %20, i32 0, i32 4
  %21 = load i8*, i8** %name6, align 8
  %22 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %22, i32 0, i32 0
  %23 = load i8*, i8** %name7, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* %19, i8* %21, i8* %23)
  %24 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %oper8 = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %24, i32 0, i32 2
  %25 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper8, align 8
  store %struct._tagTreeCCOperation* %25, %struct._tagTreeCCOperation** %oper, align 8
  %26 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %params = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %26, i32 0, i32 4
  %27 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %27, %struct._tagTreeCCParam** %param, align 8
  store i32 0, i32* %needComma, align 4
  store i32 1, i32* %num, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.30, %if.end.5
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp10 = icmp ne %struct._tagTreeCCParam* %28, null
  br i1 %cmp10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.9
  %29 = load i32, i32* %needComma, align 4
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %while.body.11
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name14 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %31, i32 0, i32 0
  %32 = load i8*, i8** %name14, align 8
  %tobool15 = icmp ne i8* %32, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %34 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %34, i32 0, i32 1
  %35 = load i8*, i8** %type, align 8
  %36 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name17 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %36, i32 0, i32 0
  %37 = load i8*, i8** %name17, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* %35, i8* %37)
  br label %if.end.19

if.else:                                          ; preds = %if.then.13
  %38 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %39 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type18 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %39, i32 0, i32 1
  %40 = load i8*, i8** %type18, align 8
  %41 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* %40, i32 %41)
  %42 = load i32, i32* %num, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  br label %if.end.30

if.else.20:                                       ; preds = %while.body.11
  %43 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %43, i32 0, i32 0
  %44 = load i8*, i8** %name21, align 8
  %tobool22 = icmp ne i8* %44, null
  br i1 %tobool22, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.else.20
  %45 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %46 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name24 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %46, i32 0, i32 4
  %47 = load i8*, i8** %name24, align 8
  %48 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name25 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %48, i32 0, i32 0
  %49 = load i8*, i8** %name25, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* %47, i8* %49)
  br label %if.end.29

if.else.26:                                       ; preds = %if.else.20
  %50 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %51 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name27 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %51, i32 0, i32 4
  %52 = load i8*, i8** %name27, align 8
  %53 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* %52, i32 %53)
  %54 = load i32, i32* %num, align 4
  %inc28 = add nsw i32 %54, 1
  store i32 %inc28, i32* %num, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.19
  store i32 1, i32* %needComma, align 4
  %55 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next31 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %55, i32 0, i32 4
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next31, align 8
  store %struct._tagTreeCCParam* %56, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  %57 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  store i32 1, i32* %haveVirts, align 4
  %58 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next32 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %58, i32 0, i32 4
  %59 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next32, align 8
  store %struct._tagTreeCCVirtual* %59, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.33:                                     ; preds = %while.cond
  %60 = load i32, i32* %haveVirts, align 4
  ret i32 %60
}

declare %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext*, %struct._tagTreeCCNode*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @TypedefName(%struct._tagTreeCCNode* %node) #0 {
entry:
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %cmp = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %2, i32 0, i32 5
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 4
  %cmp1 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %5, i32 0, i32 0
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent2, align 8
  store %struct._tagTreeCCNode* %6, %struct._tagTreeCCNode** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 4
  %8 = load i8*, i8** %name, align 8
  ret i8* %8
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* %16, i8* %18)
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
define internal void @OutputVtableImpls(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
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
  call void @OutputVtableImpls(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 11
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %8, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.3, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.35

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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i8* %19, i8* %21, i8* %23)
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
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.32, %if.end.4
  %28 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp9 = icmp ne %struct._tagTreeCCParam* %28, null
  br i1 %cmp9, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.cond.8
  %29 = load i32, i32* %needComma, align 4
  %tobool11 = icmp ne i32 %29, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body.10
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.body.10
  %31 = load i32, i32* %needComma, align 4
  %tobool14 = icmp ne i32 %31, 0
  br i1 %tobool14, label %if.else.23, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %32 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name16 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %32, i32 0, i32 0
  %33 = load i8*, i8** %name16, align 8
  %tobool17 = icmp ne i8* %33, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.15
  %34 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %35 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name19 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %35, i32 0, i32 4
  %36 = load i8*, i8** %name19, align 8
  %37 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %37, i32 0, i32 0
  %38 = load i8*, i8** %name20, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* %36, i8* %38)
  br label %if.end.22

if.else:                                          ; preds = %if.then.15
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %40 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %name21 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %40, i32 0, i32 4
  %41 = load i8*, i8** %name21, align 8
  %42 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* %41, i32 %42)
  %43 = load i32, i32* %num, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.18
  br label %if.end.32

if.else.23:                                       ; preds = %if.end.13
  %44 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name24 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %44, i32 0, i32 0
  %45 = load i8*, i8** %name24, align 8
  %tobool25 = icmp ne i8* %45, null
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %47 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %47, i32 0, i32 1
  %48 = load i8*, i8** %type, align 8
  %49 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name27 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %49, i32 0, i32 0
  %50 = load i8*, i8** %name27, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* %48, i8* %50)
  br label %if.end.31

if.else.28:                                       ; preds = %if.else.23
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %52 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type29 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %52, i32 0, i32 1
  %53 = load i8*, i8** %type29, align 8
  %54 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i8* %53, i32 %54)
  %55 = load i32, i32* %num, align 4
  %inc30 = add nsw i32 %55, 1
  store i32 %inc30, i32* %num, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.22
  store i32 1, i32* %needComma, align 4
  %56 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next33 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %56, i32 0, i32 4
  %57 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next33, align 8
  store %struct._tagTreeCCParam* %57, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  %58 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %59 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %60 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeLinenum = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %60, i32 0, i32 7
  %61 = load i64, i64* %codeLinenum, align 8
  %62 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %codeFilename = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %62, i32 0, i32 6
  %63 = load i8*, i8** %codeFilename, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* %59, i64 %61, i8* %63)
  %64 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %65 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %66 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %code = getelementptr inbounds %struct._tagTreeCCOperationCase, %struct._tagTreeCCOperationCase* %66, i32 0, i32 1
  %67 = load i8*, i8** %code, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* %65, i8* %67)
  %68 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %69 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* %69)
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %71 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next34 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %71, i32 0, i32 4
  %72 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next34, align 8
  store %struct._tagTreeCCVirtual* %72, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.35:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @OutputVtableFuncs(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode* %actualNode) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %actualNode.addr = alloca %struct._tagTreeCCNode*, align 8
  %virt = alloca %struct._tagTreeCCVirtual*, align 8
  %param = alloca %struct._tagTreeCCParam*, align 8
  %operCase = alloca %struct._tagTreeCCOperationCase*, align 8
  %parent = alloca %struct._tagTreeCCNode*, align 8
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
  store %struct._tagTreeCCNode* %actualNode, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %0 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %0, i32 0, i32 0
  %1 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent1, align 8
  %tobool = icmp ne %struct._tagTreeCCNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %4 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %parent2 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %4, i32 0, i32 0
  %5 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent2, align 8
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  call void @OutputVtableFuncs(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5, %struct._tagTreeCCNode* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %virtuals = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %7, i32 0, i32 11
  %8 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virtuals, align 8
  store %struct._tagTreeCCVirtual* %8, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end
  %9 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %cmp = icmp ne %struct._tagTreeCCVirtual* %9, null
  br i1 %cmp, label %while.body, label %while.end.30

while.body:                                       ; preds = %while.cond
  %10 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %11 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %returnType = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %11, i32 0, i32 1
  %12 = load i8*, i8** %returnType, align 8
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %name = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %13, i32 0, i32 4
  %14 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.130, i32 0, i32 0), i8* %12, i8* %14)
  %15 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %params = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %15, i32 0, i32 2
  %16 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %params, align 8
  store %struct._tagTreeCCParam* %16, %struct._tagTreeCCParam** %param, align 8
  store i32 1, i32* %num, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end.11, %while.body
  %17 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %cmp4 = icmp ne %struct._tagTreeCCParam* %17, null
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %18 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name6 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %18, i32 0, i32 0
  %19 = load i8*, i8** %name6, align 8
  %tobool7 = icmp ne i8* %19, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body.5
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %21 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %21, i32 0, i32 1
  %22 = load i8*, i8** %type, align 8
  %23 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %name9 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %23, i32 0, i32 0
  %24 = load i8*, i8** %name9, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* %22, i8* %24)
  br label %if.end.11

if.else:                                          ; preds = %while.body.5
  %25 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %26 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %type10 = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %26, i32 0, i32 1
  %27 = load i8*, i8** %type10, align 8
  %28 = load i32, i32* %num, align 4
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* %27, i32 %28)
  %29 = load i32, i32* %num, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %num, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %30 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %param, align 8
  %next = getelementptr inbounds %struct._tagTreeCCParam, %struct._tagTreeCCParam* %30, i32 0, i32 4
  %31 = load %struct._tagTreeCCParam*, %struct._tagTreeCCParam** %next, align 8
  store %struct._tagTreeCCParam* %31, %struct._tagTreeCCParam** %param, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %33 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  %34 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name12 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %34, i32 0, i32 0
  %35 = load i8*, i8** %name12, align 8
  %call = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %32, %struct._tagTreeCCNode* %33, i8* %35)
  store %struct._tagTreeCCOperationCase* %call, %struct._tagTreeCCOperationCase** %operCase, align 8
  %36 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %actualNode.addr, align 8
  store %struct._tagTreeCCNode* %36, %struct._tagTreeCCNode** %parent, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.19, %while.end
  %37 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool14 = icmp ne %struct._tagTreeCCOperationCase* %37, null
  %lnot = xor i1 %tobool14, true
  br i1 %lnot, label %while.body.15, label %while.end.22

while.body.15:                                    ; preds = %while.cond.13
  %38 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %parent16 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %38, i32 0, i32 0
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent16, align 8
  store %struct._tagTreeCCNode* %39, %struct._tagTreeCCNode** %parent, align 8
  %40 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %tobool17 = icmp ne %struct._tagTreeCCNode* %40, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %while.body.15
  br label %while.end.22

if.end.19:                                        ; preds = %while.body.15
  %41 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %42 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %43 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name20 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %43, i32 0, i32 0
  %44 = load i8*, i8** %name20, align 8
  %call21 = call %struct._tagTreeCCOperationCase* @TreeCCOperationFindCase(%struct._tagTreeCCContext* %41, %struct._tagTreeCCNode* %42, i8* %44)
  store %struct._tagTreeCCOperationCase* %call21, %struct._tagTreeCCOperationCase** %operCase, align 8
  br label %while.cond.13

while.end.22:                                     ; preds = %if.then.18, %while.cond.13
  %45 = load %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase** %operCase, align 8
  %tobool23 = icmp ne %struct._tagTreeCCOperationCase* %45, null
  br i1 %tobool23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %while.end.22
  %46 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %47 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %parent, align 8
  %name25 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %47, i32 0, i32 4
  %48 = load i8*, i8** %name25, align 8
  %49 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %name26 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %49, i32 0, i32 0
  %50 = load i8*, i8** %name26, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i8* %48, i8* %50)
  br label %if.end.28

if.else.27:                                       ; preds = %while.end.22
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.24
  %52 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %virt, align 8
  %next29 = getelementptr inbounds %struct._tagTreeCCVirtual, %struct._tagTreeCCVirtual* %52, i32 0, i32 4
  %53 = load %struct._tagTreeCCVirtual*, %struct._tagTreeCCVirtual** %next29, align 8
  store %struct._tagTreeCCVirtual* %53, %struct._tagTreeCCVirtual** %virt, align 8
  br label %while.cond

while.end.30:                                     ; preds = %while.cond
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
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %15 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %type = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %15, i32 0, i32 1
  %16 = load i8*, i8** %type, align 8
  %17 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* %16, i8* %18)
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

declare i32 @TreeCCNodeIsSingleton(%struct._tagTreeCCNode*) #1

; Function Attrs: nounwind uwtable
define internal void @InitFields(%struct._tagTreeCCContext* %context, %struct._tagTreeCCStream* %stream, %struct._tagTreeCCNode* %node) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %stream.addr = alloca %struct._tagTreeCCStream*, align 8
  %node.addr = alloca %struct._tagTreeCCNode*, align 8
  %field = alloca %struct._tagTreeCCField*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store %struct._tagTreeCCStream* %stream, %struct._tagTreeCCStream** %stream.addr, align 8
  store %struct._tagTreeCCNode* %node, %struct._tagTreeCCNode** %node.addr, align 8
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
  call void @InitFields(%struct._tagTreeCCContext* %2, %struct._tagTreeCCStream* %3, %struct._tagTreeCCNode* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node.addr, align 8
  %fields = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %6, i32 0, i32 10
  %7 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %fields, align 8
  store %struct._tagTreeCCField* %7, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %8 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %cmp = icmp ne %struct._tagTreeCCField* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %flags = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %9, i32 0, i32 3
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  %11 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %12 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name4 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %14, i32 0, i32 0
  %15 = load i8*, i8** %name4, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.149, i32 0, i32 0), i8* %13, i8* %15)
  br label %if.end.10

if.else:                                          ; preds = %while.body
  %16 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %16, i32 0, i32 2
  %17 = load i8*, i8** %value, align 8
  %tobool5 = icmp ne i8* %17, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.else
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream.addr, align 8
  %19 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %name7 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %19, i32 0, i32 0
  %20 = load i8*, i8** %name7, align 8
  %21 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %value8 = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %21, i32 0, i32 2
  %22 = load i8*, i8** %value8, align 8
  call void (%struct._tagTreeCCStream*, i8*, ...) @TreeCCStreamPrint(%struct._tagTreeCCStream* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.149, i32 0, i32 0), i8* %20, i8* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  %23 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %field, align 8
  %next = getelementptr inbounds %struct._tagTreeCCField, %struct._tagTreeCCField* %23, i32 0, i32 6
  %24 = load %struct._tagTreeCCField*, %struct._tagTreeCCField** %next, align 8
  store %struct._tagTreeCCField* %24, %struct._tagTreeCCField** %field, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @TreeCCStreamClear(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamHeaderBottom(%struct._tagTreeCCStream*) #1

declare void @TreeCCStreamSourceBottom(%struct._tagTreeCCStream*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
