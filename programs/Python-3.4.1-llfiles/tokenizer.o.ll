; ModuleID = 'tokenizer.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.tok_state = type { i8*, i8*, i8*, i8*, i8*, i32, %struct._IO_FILE*, i32, i32, [100 x i32], i32, i32, i8*, i8*, i32, i32, %struct._object*, i32, i32, i32, [100 x i32], i32, i32, i32, i8*, i32, i8*, %struct._object*, %struct._object*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"ENDMARKER\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NEWLINE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"INDENT\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DEDENT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LPAR\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"RPAR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LSQB\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"RSQB\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"COLON\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"COMMA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"SEMI\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PLUS\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"MINUS\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"STAR\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"SLASH\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"VBAR\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"AMPER\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LESS\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"GREATER\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"EQUAL\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"PERCENT\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"LBRACE\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"RBRACE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"EQEQUAL\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"NOTEQUAL\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"LESSEQUAL\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"GREATEREQUAL\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"TILDE\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"CIRCUMFLEX\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"LEFTSHIFT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"RIGHTSHIFT\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"DOUBLESTAR\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"PLUSEQUAL\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"MINEQUAL\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"STAREQUAL\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"SLASHEQUAL\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"PERCENTEQUAL\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"AMPEREQUAL\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"VBAREQUAL\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"CIRCUMFLEXEQUAL\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"LEFTSHIFTEQUAL\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"RIGHTSHIFTEQUAL\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"DOUBLESTAREQUAL\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"DOUBLESLASH\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"DOUBLESLASHEQUAL\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"RARROW\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"OP\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"<ERRORTOKEN>\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"<N_TOKENS>\00", align 1
@_PyParser_TokenNames = global [55 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.58 = private unnamed_addr constant [21 x i8] c"encoding problem: %s\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"encoding problem: %s with BOM\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"coding\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@.str.61 = private unnamed_addr constant [7 x i8] c"utf-8-\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"iso-latin-1\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"latin-1-\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"iso-8859-1-\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"iso-latin-1-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.69 = private unnamed_addr constant [140 x i8] c"Non-UTF-8 code starting with '\5Cx%.2x' in file %U on line %i, but no encoding declared; see http://python.org/dev/peps/pep-0263/ for details\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@fp_setreadl.PyId_open = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), %struct._object* null }, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@fp_setreadl.PyId_readline = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), %struct._object* null }, align 8
@.str.71 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.73 = private unnamed_addr constant [8 x i8] c"isisOOO\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.74 = private unnamed_addr constant [32 x i8] c"tok_backup: beginning of buffer\00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"%U: inconsistent use of tabs and spaces in indentation\0A\00", align 1
@PyExc_UnicodeDecodeError = external global %struct._object*, align 8
@switch.table = private unnamed_addr constant [3 x i32] [i32 33, i32 29, i32 28]

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromString(i8* nocapture readonly %str, i32 %exec_input) #0 {
entry:
  %newl.i = alloca [2 x i8*], align 16
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !442, metadata !893), !dbg !894
  tail call void @llvm.dbg.value(metadata i32 %exec_input, i64 0, metadata !443, metadata !893), !dbg !895
  %call.i = tail call i8* @PyMem_Malloc(i64 992) #2, !dbg !896
  %cmp.i = icmp eq i8* %call.i, null, !dbg !898
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %newl.i, metadata !537, metadata !893), !dbg !900
  br i1 %cmp.i, label %cleanup, label %tok_new.exit, !dbg !902

tok_new.exit:                                     ; preds = %entry
  %0 = bitcast i8* %call.i to %struct.tok_state*, !dbg !903
  %done.i = getelementptr inbounds i8, i8* %call.i, i64 40, !dbg !904
  %1 = bitcast i8* %done.i to i32*, !dbg !904
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 40, i32 8, i1 false) #2, !dbg !905
  store i32 10, i32* %1, align 4, !dbg !906, !tbaa !907
  %fp.i = getelementptr inbounds i8, i8* %call.i, i64 48, !dbg !913
  %2 = bitcast i8* %fp.i to %struct._IO_FILE**, !dbg !913
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !914, !tbaa !915
  %input.i = getelementptr inbounds i8, i8* %call.i, i64 984, !dbg !916
  %3 = bitcast i8* %input.i to i8**, !dbg !916
  store i8* null, i8** %3, align 8, !dbg !917, !tbaa !918
  %tabsize.i = getelementptr inbounds i8, i8* %call.i, i64 56, !dbg !919
  %4 = bitcast i8* %tabsize.i to i32*, !dbg !919
  store i32 8, i32* %4, align 4, !dbg !920, !tbaa !921
  %indent.i = getelementptr inbounds i8, i8* %call.i, i64 60, !dbg !922
  %5 = bitcast i8* %indent.i to i32*, !dbg !922
  store i32 0, i32* %5, align 4, !dbg !923, !tbaa !924
  %indstack.i = getelementptr inbounds i8, i8* %call.i, i64 64, !dbg !925
  %arrayidx.i = bitcast i8* %indstack.i to i32*, !dbg !926
  store i32 0, i32* %arrayidx.i, align 4, !dbg !927, !tbaa !928
  %atbol.i = getelementptr inbounds i8, i8* %call.i, i64 464, !dbg !929
  %6 = bitcast i8* %atbol.i to i32*, !dbg !929
  store i32 1, i32* %6, align 4, !dbg !930, !tbaa !931
  %pendin.i = getelementptr inbounds i8, i8* %call.i, i64 468, !dbg !932
  %altwarning.i = getelementptr inbounds i8, i8* %call.i, i64 504, !dbg !933
  tail call void @llvm.memset.p0i8.i64(i8* %pendin.i, i8 0, i64 28, i32 4, i1 false) #2, !dbg !934
  %7 = bitcast i8* %altwarning.i to <4 x i32>*, !dbg !935
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, <4 x i32>* %7, align 4, !dbg !935, !tbaa !928
  %decoding_state.i = getelementptr inbounds i8, i8* %call.i, i64 916, !dbg !936
  %filename.i = getelementptr inbounds i8, i8* %call.i, i64 496, !dbg !937
  %8 = bitcast i8* %filename.i to %struct._object**, !dbg !937
  store %struct._object* null, %struct._object** %8, align 8, !dbg !938, !tbaa !939
  %decoding_readline.i = getelementptr inbounds i8, i8* %call.i, i64 952, !dbg !940
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_state.i, i8 0, i64 24, i32 4, i1 false) #2, !dbg !941
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_readline.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !942
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !444, metadata !893), !dbg !943
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !531, metadata !893) #2, !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %exec_input, i64 0, metadata !532, metadata !893) #2, !dbg !945
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !533, metadata !893) #2, !dbg !946
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !534, metadata !893) #2, !dbg !947
  %9 = bitcast [2 x i8*]* %newl.i to i8*, !dbg !948
  call void @llvm.lifetime.start(i64 16, i8* %9) #2, !dbg !948
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 16, i1 false) #2, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !541, metadata !893) #2, !dbg !949
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !693, metadata !893) #2, !dbg !950
  tail call void @llvm.dbg.value(metadata i32 %exec_input, i64 0, metadata !694, metadata !893) #2, !dbg !952
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !695, metadata !893) #2, !dbg !953
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !954
  %call.i.i = tail call i64 @strlen(i8* %str) #9, !dbg !955
  %add.i.i = add i64 %call.i.i, 2, !dbg !956
  tail call void @llvm.dbg.value(metadata i64 %add.i.i, i64 0, metadata !697, metadata !893) #2, !dbg !957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !701, metadata !893) #2, !dbg !958
  %call1.i.i = tail call i8* @PyMem_Malloc(i64 %add.i.i) #2, !dbg !959
  tail call void @llvm.dbg.value(metadata i8* %call1.i.i, i64 0, metadata !699, metadata !893) #2, !dbg !960
  %cmp.i.i = icmp eq i8* %call1.i.i, null, !dbg !961
  br i1 %cmp.i.i, label %translate_newlines.exit.thread.i, label %for.cond.preheader.i.i, !dbg !963

for.cond.preheader.i.i:                           ; preds = %tok_new.exit
  %10 = load i8, i8* %str, align 1, !dbg !964, !tbaa !967
  %tobool.66.i.i = icmp eq i8 %10, 0, !dbg !968
  br i1 %tobool.66.i.i, label %for.end.i.i, label %for.body.i.i.preheader, !dbg !968

for.body.i.i.preheader:                           ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i, !dbg !969

translate_newlines.exit.thread.i:                 ; preds = %tok_new.exit
  store i32 15, i32* %1, align 4, !dbg !972, !tbaa !907
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.i, i64 0, metadata !535, metadata !893) #2, !dbg !974
  store i8* null, i8** %3, align 8, !dbg !975, !tbaa !918
  br label %decode_str.exit.thread, !dbg !976

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %if.end.11.i.i
  %11 = phi i8 [ %13, %if.end.11.i.i ], [ %10, %for.body.i.i.preheader ], !dbg !977
  %current.069.i.i = phi i8* [ %incdec.ptr18.i.i, %if.end.11.i.i ], [ %call1.i.i, %for.body.i.i.preheader ], !dbg !977
  %s.addr.068.i.i = phi i8* [ %incdec.ptr17.i.i, %if.end.11.i.i ], [ %str, %for.body.i.i.preheader ], !dbg !977
  %skip_next_lf.067.i.i = phi i32 [ %.skip_next_lf.1.i.i, %if.end.11.i.i ], [ 0, %for.body.i.i.preheader ], !dbg !977
  %tobool2.i.i = icmp ne i32 %skip_next_lf.067.i.i, 0, !dbg !969
  %cmp4.i.i = icmp eq i8 %11, 10, !dbg !978
  %or.cond65.i.i = and i1 %cmp4.i.i, %tobool2.i.i, !dbg !981
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !954
  br i1 %or.cond65.i.i, label %if.then.6.i.i, label %if.end.11.i.i, !dbg !981

if.then.6.i.i:                                    ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr i8, i8* %s.addr.068.i.i, i64 1, !dbg !982
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.i, i64 0, metadata !693, metadata !893) #2, !dbg !950
  %12 = load i8, i8* %incdec.ptr.i.i, align 1, !dbg !984, !tbaa !967
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !701, metadata !893) #2, !dbg !958
  %tobool7.i.i = icmp eq i8 %12, 0, !dbg !985
  br i1 %tobool7.i.i, label %for.end.i.i.loopexit, label %if.end.11.i.i, !dbg !987

if.end.11.i.i:                                    ; preds = %if.then.6.i.i, %for.body.i.i
  %s.addr.1.i.i = phi i8* [ %incdec.ptr.i.i, %if.then.6.i.i ], [ %s.addr.068.i.i, %for.body.i.i ], !dbg !977
  %c.1.i.i = phi i8 [ %12, %if.then.6.i.i ], [ %11, %for.body.i.i ], !dbg !977
  %cmp13.i.i = icmp eq i8 %c.1.i.i, 13, !dbg !988
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !696, metadata !893) #2, !dbg !954
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !701, metadata !893) #2, !dbg !958
  %.skip_next_lf.1.i.i = zext i1 %cmp13.i.i to i32, !dbg !990
  %.c.1.i.i = select i1 %cmp13.i.i, i8 10, i8 %c.1.i.i, !dbg !990
  store i8 %.c.1.i.i, i8* %current.069.i.i, align 1, !dbg !991, !tbaa !967
  %incdec.ptr17.i.i = getelementptr i8, i8* %s.addr.1.i.i, i64 1, !dbg !992
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr17.i.i, i64 0, metadata !693, metadata !893) #2, !dbg !950
  %incdec.ptr18.i.i = getelementptr i8, i8* %current.069.i.i, i64 1, !dbg !993
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr18.i.i, i64 0, metadata !700, metadata !893) #2, !dbg !994
  %13 = load i8, i8* %incdec.ptr17.i.i, align 1, !dbg !964, !tbaa !967
  %tobool.i.i = icmp eq i8 %13, 0, !dbg !968
  br i1 %tobool.i.i, label %for.cond.for.end_crit_edge.i.i, label %for.body.i.i, !dbg !968

for.cond.for.end_crit_edge.i.i:                   ; preds = %if.end.11.i.i
  %incdec.ptr18.i.i.lcssa = phi i8* [ %incdec.ptr18.i.i, %if.end.11.i.i ]
  %.c.1.i.i.lcssa = phi i8 [ %.c.1.i.i, %if.end.11.i.i ]
  %phitmp.i.i = icmp eq i8 %.c.1.i.i.lcssa, 10, !dbg !968
  br label %for.end.i.i, !dbg !968

for.end.i.i.loopexit:                             ; preds = %if.then.6.i.i
  %current.069.i.i.lcssa = phi i8* [ %current.069.i.i, %if.then.6.i.i ]
  br label %for.end.i.i, !dbg !995

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %for.cond.for.end_crit_edge.i.i, %for.cond.preheader.i.i
  %current.0.lcssa.i.i = phi i8* [ %incdec.ptr18.i.i.lcssa, %for.cond.for.end_crit_edge.i.i ], [ %call1.i.i, %for.cond.preheader.i.i ], [ %current.069.i.i.lcssa, %for.end.i.i.loopexit ], !dbg !977
  %c.3.i.i = phi i1 [ %phitmp.i.i, %for.cond.for.end_crit_edge.i.i ], [ false, %for.cond.preheader.i.i ], [ false, %for.end.i.i.loopexit ], !dbg !977
  %tobool19.i.i = icmp eq i32 %exec_input, 0, !dbg !995
  %or.cond64.i.i = or i1 %tobool19.i.i, %c.3.i.i, !dbg !997
  br i1 %or.cond64.i.i, label %if.end.25.i.i, label %if.then.23.i.i, !dbg !997

if.then.23.i.i:                                   ; preds = %for.end.i.i
  store i8 10, i8* %current.0.lcssa.i.i, align 1, !dbg !998, !tbaa !967
  %incdec.ptr24.i.i = getelementptr i8, i8* %current.0.lcssa.i.i, i64 1, !dbg !1000
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr24.i.i, i64 0, metadata !700, metadata !893) #2, !dbg !994
  br label %if.end.25.i.i, !dbg !1001

if.end.25.i.i:                                    ; preds = %if.then.23.i.i, %for.end.i.i
  %current.1.i.i = phi i8* [ %incdec.ptr24.i.i, %if.then.23.i.i ], [ %current.0.lcssa.i.i, %for.end.i.i ], !dbg !977
  store i8 0, i8* %current.1.i.i, align 1, !dbg !1002, !tbaa !967
  %sub.ptr.lhs.cast.i.i = ptrtoint i8* %current.1.i.i to i64, !dbg !1003
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %call1.i.i to i64, !dbg !1003
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i, !dbg !1003
  %add26.i.i = add i64 %sub.ptr.sub.i.i, 1, !dbg !1004
  tail call void @llvm.dbg.value(metadata i64 %add26.i.i, i64 0, metadata !698, metadata !893) #2, !dbg !1005
  %cmp27.i.i = icmp ult i64 %add26.i.i, %add.i.i, !dbg !1006
  %tobool30.i.i = icmp ne i64 %add26.i.i, 0, !dbg !1008
  %or.cond.i.i = and i1 %cmp27.i.i, %tobool30.i.i, !dbg !1010
  br i1 %or.cond.i.i, label %if.then.31.i.i, label %translate_newlines.exit.i, !dbg !1010

if.then.31.i.i:                                   ; preds = %if.end.25.i.i
  %call32.i.i = tail call i8* @PyMem_Realloc(i8* %call1.i.i, i64 %add26.i.i) #2, !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %call32.i.i, i64 0, metadata !699, metadata !893) #2, !dbg !960
  br label %translate_newlines.exit.i, !dbg !1012

translate_newlines.exit.i:                        ; preds = %if.then.31.i.i, %if.end.25.i.i
  %retval.0.i.i = phi i8* [ %call32.i.i, %if.then.31.i.i ], [ %call1.i.i, %if.end.25.i.i ], !dbg !977
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.i, i64 0, metadata !535, metadata !893) #2, !dbg !974
  store i8* %retval.0.i.i, i8** %3, align 8, !dbg !975, !tbaa !918
  %cmp.i.15 = icmp eq i8* %retval.0.i.i, null, !dbg !1013
  br i1 %cmp.i.15, label %decode_str.exit.thread, label %if.end.i.16, !dbg !976

if.end.i.16:                                      ; preds = %translate_newlines.exit.i
  %enc.i = getelementptr inbounds i8, i8* %call.i, i64 968, !dbg !1015
  %14 = bitcast i8* %enc.i to i8**, !dbg !1015
  store i8* null, i8** %14, align 8, !dbg !1016, !tbaa !1017
  %str2.i = getelementptr inbounds i8, i8* %call.i, i64 976, !dbg !1018
  %15 = bitcast i8* %str2.i to i8**, !dbg !1018
  tail call void @llvm.dbg.value(metadata i32 (%struct.tok_state*, i8*)* null, i64 0, metadata !557, metadata !893) #2, !dbg !1019
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !572, metadata !893) #2, !dbg !1022
  %incdec.ptr.i.178.i = getelementptr i8, i8* %retval.0.i.i, i64 1, !dbg !1024
  store i8* %incdec.ptr.i.178.i, i8** %15, align 8, !dbg !1024, !tbaa !1025
  %16 = load i8, i8* %retval.0.i.i, align 1, !dbg !1024, !tbaa !967
  %17 = bitcast i8* %decoding_state.i to i32*, !dbg !1026
  store i32 1, i32* %17, align 4, !dbg !1027, !tbaa !1028
  %cond.i = icmp eq i8 %16, -17, !dbg !1029
  br i1 %cond.i, label %if.then.2.i.i, label %if.else.10.i.i, !dbg !1029

if.then.2.i.i:                                    ; preds = %if.end.i.16
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !572, metadata !893) #2, !dbg !1030
  %incdec.ptr.i.180.i = getelementptr i8, i8* %retval.0.i.i, i64 2, !dbg !1035
  store i8* %incdec.ptr.i.180.i, i8** %15, align 8, !dbg !1035, !tbaa !1025
  %18 = load i8, i8* %incdec.ptr.i.178.i, align 1, !dbg !1035, !tbaa !967
  %cmp4.i.118.i = icmp eq i8 %18, -69, !dbg !1036
  br i1 %cmp4.i.118.i, label %if.end.i.i, label %if.then.5.i.i, !dbg !1038

if.then.5.i.i:                                    ; preds = %if.then.2.i.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 239, i64 0, metadata !575, metadata !893) #2, !dbg !1042
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1044
  store i8* %retval.0.i.i, i8** %15, align 8, !dbg !1045, !tbaa !1025
  br label %if.end.18.i, !dbg !1046

if.end.i.i:                                       ; preds = %if.then.2.i.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !572, metadata !893) #2, !dbg !1047
  %incdec.ptr.i.187.i = getelementptr i8, i8* %retval.0.i.i, i64 3, !dbg !1049
  store i8* %incdec.ptr.i.187.i, i8** %15, align 8, !dbg !1049, !tbaa !1025
  %19 = load i8, i8* %incdec.ptr.i.180.i, align 1, !dbg !1049, !tbaa !967
  %cmp7.i.i = icmp eq i8 %19, -65, !dbg !1050
  br i1 %cmp7.i.i, label %if.end.12.i.i, label %if.then.8.i.i, !dbg !1052

if.then.8.i.i:                                    ; preds = %if.end.i.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 187, i64 0, metadata !575, metadata !893) #2, !dbg !1056
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1058
  tail call void @llvm.dbg.value(metadata i32 239, i64 0, metadata !575, metadata !893) #2, !dbg !1059
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1061
  store i8* %retval.0.i.i, i8** %15, align 8, !dbg !1062, !tbaa !1025
  br label %if.end.18.i, !dbg !1063

if.else.10.i.i:                                   ; preds = %if.end.i.16
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !576, metadata !893) #2, !dbg !1064
  store i8* %retval.0.i.i, i8** %15, align 8, !dbg !1067, !tbaa !1025
  br label %if.end.18.i, !dbg !1068

if.end.12.i.i:                                    ; preds = %if.end.i.i
  %encoding.i.i = getelementptr inbounds i8, i8* %call.i, i64 928, !dbg !1069
  %20 = bitcast i8* %encoding.i.i to i8**, !dbg !1069
  %21 = load i8*, i8** %20, align 8, !dbg !1069, !tbaa !1071
  %cmp13.i.119.i = icmp eq i8* %21, null, !dbg !1072
  br i1 %cmp13.i.119.i, label %if.end.16.i.i, label %if.then.14.i.i, !dbg !1073

if.then.14.i.i:                                   ; preds = %if.end.12.i.i
  tail call void @PyMem_Free(i8* %21) #2, !dbg !1074
  br label %if.end.16.i.i, !dbg !1074

if.end.16.i.i:                                    ; preds = %if.then.14.i.i, %if.end.12.i.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i64 0, metadata !566, metadata !893) #2, !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !567, metadata !893) #2, !dbg !1077
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !568, metadata !893) #2, !dbg !1078
  %call.i.i.i = tail call i8* @PyMem_Malloc(i64 6) #2, !dbg !1079
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !569, metadata !893) #2, !dbg !1080
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1081
  br i1 %tobool.i.i.i, label %if.then.4.i, label %if.end.6.i, !dbg !1083

if.then.4.i:                                      ; preds = %if.end.16.i.i
  store i32 15, i32* %1, align 4, !dbg !1084, !tbaa !907
  store i8* null, i8** %20, align 8, !dbg !1086, !tbaa !1071
  %decoding_erred.i.i = getelementptr inbounds i8, i8* %call.i, i64 920, !dbg !1087
  %22 = bitcast i8* %decoding_erred.i.i to i32*, !dbg !1087
  store i32 1, i32* %22, align 4, !dbg !1089, !tbaa !1090
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1091, !tbaa !915
  %cmp.i.121.i = icmp eq %struct._IO_FILE* %23, null, !dbg !1093
  %.pre.i.i = bitcast i8* %call.i to i8**, !dbg !1094
  br i1 %cmp.i.121.i, label %error_ret.exit.i, label %land.lhs.true.i.i, !dbg !1095

land.lhs.true.i.i:                                ; preds = %if.then.4.i
  %24 = load i8*, i8** %.pre.i.i, align 8, !dbg !1096, !tbaa !1097
  %cmp1.i.i = icmp eq i8* %24, null, !dbg !1098
  br i1 %cmp1.i.i, label %error_ret.exit.i, label %if.then.i.122.i, !dbg !1099

if.then.i.122.i:                                  ; preds = %land.lhs.true.i.i
  tail call void @PyMem_Free(i8* %24) #2, !dbg !1100
  br label %error_ret.exit.i, !dbg !1100

error_ret.exit.i:                                 ; preds = %if.then.i.122.i, %land.lhs.true.i.i, %if.then.4.i
  store i8* null, i8** %.pre.i.i, align 8, !dbg !1101, !tbaa !1097
  br label %decode_str.exit.thread, !dbg !1102

if.end.6.i:                                       ; preds = %if.end.16.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i.i.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i64 5, i32 1, i1 false) #2, !dbg !1103
  %arrayidx.i.i.i = getelementptr i8, i8* %call.i.i.i, i64 5, !dbg !1104
  store i8 0, i8* %arrayidx.i.i.i, align 1, !dbg !1105, !tbaa !967
  store i8* %call.i.i.i, i8** %20, align 8, !dbg !1086, !tbaa !1071
  %.pre.i = load i8*, i8** %15, align 8, !dbg !1106, !tbaa !1025
  %.pre207.i = load i8*, i8** %14, align 8, !dbg !1107, !tbaa !1017
  tail call void @llvm.dbg.value(metadata i8* %.pre.i, i64 0, metadata !535, metadata !893) #2, !dbg !974
  %cmp9.i = icmp eq i8* %.pre207.i, null, !dbg !1109
  br i1 %cmp9.i, label %if.end.18.i, label %if.then.10.i, !dbg !1110

if.then.10.i:                                     ; preds = %if.end.6.i
  tail call void @llvm.dbg.value(metadata i8* %.pre.i, i64 0, metadata !590, metadata !893) #2, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %.pre207.i, i64 0, metadata !591, metadata !893) #2, !dbg !1114
  %call.i.124.i = tail call i64 @strlen(i8* %.pre.i) #9, !dbg !1115
  %call1.i.125.i = tail call %struct._object* @PyUnicode_Decode(i8* %.pre.i, i64 %call.i.124.i, i8* %.pre207.i, i8* null) #2, !dbg !1116
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.125.i, i64 0, metadata !593, metadata !893) #2, !dbg !1117
  %cmp.i.126.i = icmp eq %struct._object* %call1.i.125.i, null, !dbg !1118
  br i1 %cmp.i.126.i, label %if.then.14.i, label %if.end.i.127.i, !dbg !1120

if.end.i.127.i:                                   ; preds = %if.then.10.i
  %call2.i.i = tail call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %call1.i.125.i) #2, !dbg !1121
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.i, i64 0, metadata !592, metadata !893) #2, !dbg !1122
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.125.i, i64 0, metadata !594, metadata !893) #2, !dbg !1123
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.125.i, i64 0, i32 0, !dbg !1125
  %25 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1125, !tbaa !1127
  %dec.i.i = add i64 %25, -1, !dbg !1125
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1125, !tbaa !1127
  %cmp3.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1125
  br i1 %cmp3.i.i, label %if.else.i.i, label %translate_into_utf8.exit.i, !dbg !1130

if.else.i.i:                                      ; preds = %if.end.i.127.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.125.i, i64 0, i32 1, !dbg !1131
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1131, !tbaa !1133
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1131
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1131, !tbaa !1134
  tail call void %27(%struct._object* %call1.i.125.i) #2, !dbg !1131
  br label %translate_into_utf8.exit.i, !dbg !1137

translate_into_utf8.exit.i:                       ; preds = %if.else.i.i, %if.end.i.127.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.i, i64 0, metadata !534, metadata !893) #2, !dbg !947
  %cmp13.i = icmp eq %struct._object* %call2.i.i, null, !dbg !1138
  br i1 %cmp13.i, label %if.then.14.i, label %if.end.16.i, !dbg !1140

if.then.14.i:                                     ; preds = %translate_into_utf8.exit.i, %if.then.10.i
  %decoding_erred.i.129.i = getelementptr inbounds i8, i8* %call.i, i64 920, !dbg !1141
  %28 = bitcast i8* %decoding_erred.i.129.i to i32*, !dbg !1141
  store i32 1, i32* %28, align 4, !dbg !1143, !tbaa !1090
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1144, !tbaa !915
  %cmp.i.131.i = icmp eq %struct._IO_FILE* %29, null, !dbg !1145
  %.pre.i.132.i = bitcast i8* %call.i to i8**, !dbg !1146
  br i1 %cmp.i.131.i, label %error_ret.exit137.i, label %land.lhs.true.i.134.i, !dbg !1147

land.lhs.true.i.134.i:                            ; preds = %if.then.14.i
  %30 = load i8*, i8** %.pre.i.132.i, align 8, !dbg !1148, !tbaa !1097
  %cmp1.i.133.i = icmp eq i8* %30, null, !dbg !1149
  br i1 %cmp1.i.133.i, label %error_ret.exit137.i, label %if.then.i.135.i, !dbg !1150

if.then.i.135.i:                                  ; preds = %land.lhs.true.i.134.i
  tail call void @PyMem_Free(i8* %30) #2, !dbg !1151
  br label %error_ret.exit137.i, !dbg !1151

error_ret.exit137.i:                              ; preds = %if.then.i.135.i, %land.lhs.true.i.134.i, %if.then.14.i
  store i8* null, i8** %.pre.i.132.i, align 8, !dbg !1152, !tbaa !1097
  br label %decode_str.exit.thread, !dbg !1153

if.end.16.i:                                      ; preds = %translate_into_utf8.exit.i
  %call17.i = tail call i8* @PyBytes_AsString(%struct._object* %call2.i.i) #2, !dbg !1154
  tail call void @llvm.dbg.value(metadata i8* %call17.i, i64 0, metadata !535, metadata !893) #2, !dbg !974
  br label %if.end.18.i, !dbg !1155

if.end.18.i:                                      ; preds = %if.end.16.i, %if.end.6.i, %if.else.10.i.i, %if.then.8.i.i, %if.then.5.i.i
  %utf8.0.i = phi %struct._object* [ %call2.i.i, %if.end.16.i ], [ null, %if.end.6.i ], [ null, %if.else.10.i.i ], [ null, %if.then.8.i.i ], [ null, %if.then.5.i.i ], !dbg !1156
  %str.0.i = phi i8* [ %call17.i, %if.end.16.i ], [ %.pre.i, %if.end.6.i ], [ %retval.0.i.i, %if.else.10.i.i ], [ %retval.0.i.i, %if.then.8.i.i ], [ %retval.0.i.i, %if.then.5.i.i ], !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %str.0.i, i64 0, metadata !536, metadata !893) #2, !dbg !1157
  br label %for.cond.i, !dbg !1158

for.cond.i:                                       ; preds = %for.inc.i, %if.end.18.i
  %s.0.i = phi i8* [ %str.0.i, %if.end.18.i ], [ %incdec.ptr.i, %for.inc.i ], !dbg !1156
  %lineno.0.i = phi i32 [ 0, %if.end.18.i ], [ %lineno.1.i, %for.inc.i ], !dbg !1156
  %31 = load i8, i8* %s.0.i, align 1, !dbg !1160, !tbaa !967
  switch i8 %31, label %for.inc.i [
    i8 0, label %for.end.i
    i8 10, label %if.then.25.i
  ], !dbg !1164

if.then.25.i:                                     ; preds = %for.cond.i
  %idxprom.i = sext i32 %lineno.0.i to i64, !dbg !1165
  %arrayidx.i.17 = getelementptr [2 x i8*], [2 x i8*]* %newl.i, i64 0, i64 %idxprom.i, !dbg !1165
  store i8* %s.0.i, i8** %arrayidx.i.17, align 8, !dbg !1168, !tbaa !1169
  %inc.i = add i32 %lineno.0.i, 1, !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !541, metadata !893) #2, !dbg !949
  %cmp26.i = icmp eq i32 %inc.i, 2, !dbg !1171
  br i1 %cmp26.i, label %for.end.i, label %for.inc.i, !dbg !1173

for.inc.i:                                        ; preds = %if.then.25.i, %for.cond.i
  %lineno.1.i = phi i32 [ %inc.i, %if.then.25.i ], [ %lineno.0.i, %for.cond.i ], !dbg !1156
  %incdec.ptr.i = getelementptr i8, i8* %s.0.i, i64 1, !dbg !1174
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !536, metadata !893) #2, !dbg !1157
  br label %for.cond.i, !dbg !1175

for.end.i:                                        ; preds = %if.then.25.i, %for.cond.i
  store i8* null, i8** %14, align 8, !dbg !1176, !tbaa !1017
  %arrayidx33.i = getelementptr [2 x i8*], [2 x i8*]* %newl.i, i64 0, i64 0, !dbg !1177
  %32 = load i8*, i8** %arrayidx33.i, align 16, !dbg !1179, !tbaa !1169
  %tobool34.i = icmp eq i8* %32, null, !dbg !1177
  br i1 %tobool34.i, label %decode_str.exit, label %if.then.35.i, !dbg !1184

if.then.35.i:                                     ; preds = %for.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %32 to i64, !dbg !1185
  %sub.ptr.rhs.cast.i = ptrtoint i8* %str.0.i to i64, !dbg !1185
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1185
  %call37.i = tail call fastcc i32 @check_coding_spec(i8* %str.0.i, i64 %sub.ptr.sub.i, %struct.tok_state* %0, i32 (%struct.tok_state*, i8*)* nonnull @buf_setreadl) #2, !dbg !1187
  %tobool38.i = icmp eq i32 %call37.i, 0, !dbg !1187
  br i1 %tobool38.i, label %if.then.39.i, label %if.end.41.i, !dbg !1188

if.then.39.i:                                     ; preds = %if.then.35.i
  %decoding_erred.i.138.i = getelementptr inbounds i8, i8* %call.i, i64 920, !dbg !1189
  %33 = bitcast i8* %decoding_erred.i.138.i to i32*, !dbg !1189
  store i32 1, i32* %33, align 4, !dbg !1191, !tbaa !1090
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1192, !tbaa !915
  %cmp.i.140.i = icmp eq %struct._IO_FILE* %34, null, !dbg !1193
  %.pre.i.141.i = bitcast i8* %call.i to i8**, !dbg !1194
  br i1 %cmp.i.140.i, label %error_ret.exit146.i, label %land.lhs.true.i.143.i, !dbg !1195

land.lhs.true.i.143.i:                            ; preds = %if.then.39.i
  %35 = load i8*, i8** %.pre.i.141.i, align 8, !dbg !1196, !tbaa !1097
  %cmp1.i.142.i = icmp eq i8* %35, null, !dbg !1197
  br i1 %cmp1.i.142.i, label %error_ret.exit146.i, label %if.then.i.144.i, !dbg !1198

if.then.i.144.i:                                  ; preds = %land.lhs.true.i.143.i
  tail call void @PyMem_Free(i8* %35) #2, !dbg !1199
  br label %error_ret.exit146.i, !dbg !1199

error_ret.exit146.i:                              ; preds = %if.then.i.144.i, %land.lhs.true.i.143.i, %if.then.39.i
  store i8* null, i8** %.pre.i.141.i, align 8, !dbg !1200, !tbaa !1097
  br label %decode_str.exit.thread, !dbg !1201

if.end.41.i:                                      ; preds = %if.then.35.i
  %36 = load i8*, i8** %14, align 8, !dbg !1202, !tbaa !1017
  %cmp43.i = icmp eq i8* %36, null, !dbg !1203
  br i1 %cmp43.i, label %land.lhs.true.i, label %if.then.66.i, !dbg !1204

land.lhs.true.i:                                  ; preds = %if.end.41.i
  %read_coding_spec.i = getelementptr inbounds i8, i8* %call.i, i64 924, !dbg !1205
  %37 = bitcast i8* %read_coding_spec.i to i32*, !dbg !1205
  %38 = load i32, i32* %37, align 4, !dbg !1205, !tbaa !1206
  %tobool45.i = icmp eq i32 %38, 0, !dbg !1207
  br i1 %tobool45.i, label %land.lhs.true.46.i, label %decode_str.exit, !dbg !1208

land.lhs.true.46.i:                               ; preds = %land.lhs.true.i
  %arrayidx47.i = getelementptr [2 x i8*], [2 x i8*]* %newl.i, i64 0, i64 1, !dbg !1209
  %39 = load i8*, i8** %arrayidx47.i, align 8, !dbg !1209, !tbaa !1169
  %tobool48.i = icmp eq i8* %39, null, !dbg !1209
  br i1 %tobool48.i, label %decode_str.exit, label %if.then.49.i, !dbg !1211

if.then.49.i:                                     ; preds = %land.lhs.true.46.i
  %add.ptr.i = getelementptr i8, i8* %32, i64 1, !dbg !1212
  %sub.ptr.lhs.cast53.i = ptrtoint i8* %39 to i64, !dbg !1213
  %sub.ptr.sub55.i = sub i64 %sub.ptr.lhs.cast53.i, %sub.ptr.lhs.cast.i, !dbg !1213
  %call56.i = tail call fastcc i32 @check_coding_spec(i8* %add.ptr.i, i64 %sub.ptr.sub55.i, %struct.tok_state* %0, i32 (%struct.tok_state*, i8*)* nonnull @buf_setreadl) #2, !dbg !1214
  %tobool57.i = icmp eq i32 %call56.i, 0, !dbg !1214
  br i1 %tobool57.i, label %if.then.58.i, label %if.end.62.i, !dbg !1215

if.then.58.i:                                     ; preds = %if.then.49.i
  %decoding_erred.i.147.i = getelementptr inbounds i8, i8* %call.i, i64 920, !dbg !1216
  %40 = bitcast i8* %decoding_erred.i.147.i to i32*, !dbg !1216
  store i32 1, i32* %40, align 4, !dbg !1218, !tbaa !1090
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1219, !tbaa !915
  %cmp.i.149.i = icmp eq %struct._IO_FILE* %41, null, !dbg !1220
  %.pre.i.150.i = bitcast i8* %call.i to i8**, !dbg !1221
  br i1 %cmp.i.149.i, label %error_ret.exit155.i, label %land.lhs.true.i.152.i, !dbg !1222

land.lhs.true.i.152.i:                            ; preds = %if.then.58.i
  %42 = load i8*, i8** %.pre.i.150.i, align 8, !dbg !1223, !tbaa !1097
  %cmp1.i.151.i = icmp eq i8* %42, null, !dbg !1224
  br i1 %cmp1.i.151.i, label %error_ret.exit155.i, label %if.then.i.153.i, !dbg !1225

if.then.i.153.i:                                  ; preds = %land.lhs.true.i.152.i
  tail call void @PyMem_Free(i8* %42) #2, !dbg !1226
  br label %error_ret.exit155.i, !dbg !1226

error_ret.exit155.i:                              ; preds = %if.then.i.153.i, %land.lhs.true.i.152.i, %if.then.58.i
  store i8* null, i8** %.pre.i.150.i, align 8, !dbg !1227, !tbaa !1097
  br label %decode_str.exit.thread, !dbg !1228

if.end.62.i:                                      ; preds = %if.then.49.i
  %.pr.pre.i = load i8*, i8** %14, align 8, !dbg !1229, !tbaa !1017
  %cmp64.i = icmp eq i8* %.pr.pre.i, null, !dbg !1231
  br i1 %cmp64.i, label %decode_str.exit, label %if.then.66.i, !dbg !1232

if.then.66.i:                                     ; preds = %if.end.62.i, %if.end.41.i
  %43 = phi i8* [ %.pr.pre.i, %if.end.62.i ], [ %36, %if.end.41.i ], !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %str.0.i, i64 0, metadata !590, metadata !893) #2, !dbg !1233
  %call.i.156.i = tail call i64 @strlen(i8* %str.0.i) #9, !dbg !1236
  %call1.i.157.i = tail call %struct._object* @PyUnicode_Decode(i8* %str.0.i, i64 %call.i.156.i, i8* %43, i8* null) #2, !dbg !1237
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.157.i, i64 0, metadata !593, metadata !893) #2, !dbg !1238
  %cmp.i.158.i = icmp eq %struct._object* %call1.i.157.i, null, !dbg !1239
  br i1 %cmp.i.158.i, label %if.then.71.i, label %if.end.i.163.i, !dbg !1240

if.end.i.163.i:                                   ; preds = %if.then.66.i
  %call2.i.159.i = tail call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %call1.i.157.i) #2, !dbg !1241
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.159.i, i64 0, metadata !592, metadata !893) #2, !dbg !1242
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.157.i, i64 0, metadata !594, metadata !893) #2, !dbg !1243
  %ob_refcnt.i.160.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.157.i, i64 0, i32 0, !dbg !1244
  %44 = load i64, i64* %ob_refcnt.i.160.i, align 8, !dbg !1244, !tbaa !1127
  %dec.i.161.i = add i64 %44, -1, !dbg !1244
  store i64 %dec.i.161.i, i64* %ob_refcnt.i.160.i, align 8, !dbg !1244, !tbaa !1127
  %cmp3.i.162.i = icmp eq i64 %dec.i.161.i, 0, !dbg !1244
  br i1 %cmp3.i.162.i, label %if.else.i.166.i, label %translate_into_utf8.exit168.i, !dbg !1245

if.else.i.166.i:                                  ; preds = %if.end.i.163.i
  %ob_type.i.164.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.157.i, i64 0, i32 1, !dbg !1246
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.164.i, align 8, !dbg !1246, !tbaa !1133
  %tp_dealloc.i.165.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1246
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.165.i, align 8, !dbg !1246, !tbaa !1134
  tail call void %46(%struct._object* %call1.i.157.i) #2, !dbg !1246
  br label %translate_into_utf8.exit168.i, !dbg !1247

translate_into_utf8.exit168.i:                    ; preds = %if.else.i.166.i, %if.end.i.163.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i.159.i, i64 0, metadata !534, metadata !893) #2, !dbg !947
  %cmp69.i = icmp eq %struct._object* %call2.i.159.i, null, !dbg !1248
  br i1 %cmp69.i, label %if.then.71.i, label %if.end.73.i, !dbg !1250

if.then.71.i:                                     ; preds = %translate_into_utf8.exit168.i, %if.then.66.i
  %decoding_erred.i.169.i = getelementptr inbounds i8, i8* %call.i, i64 920, !dbg !1251
  %47 = bitcast i8* %decoding_erred.i.169.i to i32*, !dbg !1251
  store i32 1, i32* %47, align 4, !dbg !1253, !tbaa !1090
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1254, !tbaa !915
  %cmp.i.171.i = icmp eq %struct._IO_FILE* %48, null, !dbg !1255
  %.pre.i.172.i = bitcast i8* %call.i to i8**, !dbg !1256
  br i1 %cmp.i.171.i, label %error_ret.exit177.i, label %land.lhs.true.i.174.i, !dbg !1257

land.lhs.true.i.174.i:                            ; preds = %if.then.71.i
  %49 = load i8*, i8** %.pre.i.172.i, align 8, !dbg !1258, !tbaa !1097
  %cmp1.i.173.i = icmp eq i8* %49, null, !dbg !1259
  br i1 %cmp1.i.173.i, label %error_ret.exit177.i, label %if.then.i.175.i, !dbg !1260

if.then.i.175.i:                                  ; preds = %land.lhs.true.i.174.i
  tail call void @PyMem_Free(i8* %49) #2, !dbg !1261
  br label %error_ret.exit177.i, !dbg !1261

error_ret.exit177.i:                              ; preds = %if.then.i.175.i, %land.lhs.true.i.174.i, %if.then.71.i
  store i8* null, i8** %.pre.i.172.i, align 8, !dbg !1262, !tbaa !1097
  br label %decode_str.exit.thread, !dbg !1263

if.end.73.i:                                      ; preds = %translate_into_utf8.exit168.i
  %ob_sval.i = getelementptr inbounds %struct._object, %struct._object* %call2.i.159.i, i64 2, !dbg !1264
  %arraydecay.i = bitcast %struct._object* %ob_sval.i to i8*, !dbg !1264
  tail call void @llvm.dbg.value(metadata i8* %arraydecay.i, i64 0, metadata !535, metadata !893) #2, !dbg !974
  br label %decode_str.exit, !dbg !1265

decode_str.exit.thread:                           ; preds = %error_ret.exit137.i, %error_ret.exit177.i, %error_ret.exit155.i, %error_ret.exit146.i, %error_ret.exit.i, %translate_newlines.exit.i, %translate_newlines.exit.thread.i
  call void @llvm.lifetime.end(i64 16, i8* %9) #2, !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %str.1.i, i64 0, metadata !442, metadata !893), !dbg !894
  br label %if.then.3, !dbg !1267

decode_str.exit:                                  ; preds = %for.end.i, %land.lhs.true.i, %land.lhs.true.46.i, %if.end.62.i, %if.end.73.i
  %utf8.1.i = phi %struct._object* [ %call2.i.159.i, %if.end.73.i ], [ %utf8.0.i, %if.end.62.i ], [ %utf8.0.i, %for.end.i ], [ %utf8.0.i, %land.lhs.true.46.i ], [ %utf8.0.i, %land.lhs.true.i ], !dbg !1156
  %str.1.i = phi i8* [ %arraydecay.i, %if.end.73.i ], [ %str.0.i, %if.end.62.i ], [ %str.0.i, %for.end.i ], [ %str.0.i, %land.lhs.true.46.i ], [ %str.0.i, %land.lhs.true.i ], !dbg !1156
  %decoding_buffer.i = getelementptr inbounds i8, i8* %call.i, i64 960, !dbg !1268
  %50 = bitcast i8* %decoding_buffer.i to %struct._object**, !dbg !1268
  store %struct._object* %utf8.1.i, %struct._object** %50, align 8, !dbg !1269, !tbaa !1270
  call void @llvm.lifetime.end(i64 16, i8* %9) #2, !dbg !1266
  tail call void @llvm.dbg.value(metadata i8* %str.1.i, i64 0, metadata !442, metadata !893), !dbg !894
  %cmp2 = icmp eq i8* %str.1.i, null, !dbg !1271
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1267

if.then.3:                                        ; preds = %decode_str.exit.thread, %decode_str.exit
  tail call void @PyTokenizer_Free(%struct.tok_state* %0), !dbg !1273
  br label %cleanup, !dbg !1275

if.end.4:                                         ; preds = %decode_str.exit
  %inp = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !1276
  %51 = bitcast i8* %inp to i8**, !dbg !1276
  store i8* %str.1.i, i8** %51, align 8, !dbg !1277, !tbaa !1278
  %end = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !1279
  %52 = bitcast i8* %end to i8**, !dbg !1279
  store i8* %str.1.i, i8** %52, align 8, !dbg !1280, !tbaa !1281
  %cur = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !1282
  %53 = bitcast i8* %cur to i8**, !dbg !1282
  store i8* %str.1.i, i8** %53, align 8, !dbg !1283, !tbaa !1284
  %buf = bitcast i8* %call.i to i8**, !dbg !1285
  store i8* %str.1.i, i8** %buf, align 8, !dbg !1286, !tbaa !1097
  br label %cleanup, !dbg !1287

cleanup:                                          ; preds = %entry, %if.end.4, %if.then.3
  %retval.0 = phi %struct.tok_state* [ null, %if.then.3 ], [ %0, %if.end.4 ], [ null, %entry ]
  ret %struct.tok_state* %retval.0, !dbg !1288
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyTokenizer_Free(%struct.tok_state* %tok) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !463, metadata !893), !dbg !1289
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 24, !dbg !1290
  %0 = load i8*, i8** %encoding, align 8, !dbg !1290, !tbaa !1071
  %cmp = icmp eq i8* %0, null, !dbg !1292
  br i1 %cmp, label %do.body, label %if.then, !dbg !1293

if.then:                                          ; preds = %entry
  tail call void @PyMem_Free(i8* %0) #2, !dbg !1294
  br label %do.body, !dbg !1294

do.body:                                          ; preds = %entry, %if.then
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 27, !dbg !1295
  %1 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !1295, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !464, metadata !893), !dbg !1295
  %cmp2 = icmp eq %struct._object* %1, null, !dbg !1298
  br i1 %cmp2, label %if.end.8, label %do.body.4, !dbg !1299

do.body.4:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !466, metadata !893), !dbg !1300
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1302
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1302, !tbaa !1127
  %dec = add i64 %2, -1, !dbg !1302
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1302, !tbaa !1127
  %cmp5 = icmp eq i64 %dec, 0, !dbg !1302
  br i1 %cmp5, label %if.else, label %if.end.8, !dbg !1304

if.else:                                          ; preds = %do.body.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1305
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1305, !tbaa !1133
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1305
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1305, !tbaa !1134
  tail call void %4(%struct._object* %1) #2, !dbg !1305
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %do.body.4, %do.body
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 28, !dbg !1307
  %5 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !1307, !tbaa !1270
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !469, metadata !893), !dbg !1307
  %cmp13 = icmp eq %struct._object* %5, null, !dbg !1309
  br i1 %cmp13, label %if.end.27, label %do.body.15, !dbg !1310

do.body.15:                                       ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !471, metadata !893), !dbg !1311
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1313
  %6 = load i64, i64* %ob_refcnt17, align 8, !dbg !1313, !tbaa !1127
  %dec18 = add i64 %6, -1, !dbg !1313
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !1313, !tbaa !1127
  %cmp19 = icmp eq i64 %dec18, 0, !dbg !1313
  br i1 %cmp19, label %if.else.21, label %if.end.27, !dbg !1315

if.else.21:                                       ; preds = %do.body.15
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1316
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1316, !tbaa !1133
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1316
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !1316, !tbaa !1134
  tail call void %8(%struct._object* %5) #2, !dbg !1316
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.21, %do.body.15, %if.end.8
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 16, !dbg !1318
  %9 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1318, !tbaa !939
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !474, metadata !893), !dbg !1318
  %cmp32 = icmp eq %struct._object* %9, null, !dbg !1320
  br i1 %cmp32, label %if.end.46, label %do.body.34, !dbg !1321

do.body.34:                                       ; preds = %if.end.27
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !476, metadata !893), !dbg !1322
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1324
  %10 = load i64, i64* %ob_refcnt36, align 8, !dbg !1324, !tbaa !1127
  %dec37 = add i64 %10, -1, !dbg !1324
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1324, !tbaa !1127
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !1324
  br i1 %cmp38, label %if.else.40, label %if.end.46, !dbg !1326

if.else.40:                                       ; preds = %do.body.34
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1327
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1327, !tbaa !1133
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1327
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1327, !tbaa !1134
  tail call void %12(%struct._object* %9) #2, !dbg !1327
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %do.body.34, %if.end.27
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 6, !dbg !1329
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1329, !tbaa !915
  %cmp49 = icmp eq %struct._IO_FILE* %13, null, !dbg !1331
  br i1 %cmp49, label %if.end.53, label %land.lhs.true, !dbg !1332

land.lhs.true:                                    ; preds = %if.end.46
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !1333
  %14 = load i8*, i8** %buf, align 8, !dbg !1333, !tbaa !1097
  %cmp50 = icmp eq i8* %14, null, !dbg !1334
  br i1 %cmp50, label %if.end.53, label %if.then.51, !dbg !1335

if.then.51:                                       ; preds = %land.lhs.true
  tail call void @PyMem_Free(i8* %14) #2, !dbg !1336
  br label %if.end.53, !dbg !1336

if.end.53:                                        ; preds = %land.lhs.true, %if.end.46, %if.then.51
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 31, !dbg !1337
  %15 = load i8*, i8** %input, align 8, !dbg !1337, !tbaa !918
  %tobool = icmp eq i8* %15, null, !dbg !1339
  br i1 %tobool, label %if.end.56, label %if.then.54, !dbg !1340

if.then.54:                                       ; preds = %if.end.53
  tail call void @PyMem_Free(i8* %15) #2, !dbg !1341
  br label %if.end.56, !dbg !1341

if.end.56:                                        ; preds = %if.end.53, %if.then.54
  %16 = bitcast %struct.tok_state* %tok to i8*, !dbg !1342
  tail call void @PyMem_Free(i8* %16) #2, !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromUTF8(i8* nocapture readonly %str, i32 %exec_input) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !447, metadata !893), !dbg !1344
  tail call void @llvm.dbg.value(metadata i32 %exec_input, i64 0, metadata !448, metadata !893), !dbg !1345
  %call.i = tail call i8* @PyMem_Malloc(i64 992) #2, !dbg !1346
  %cmp.i = icmp eq i8* %call.i, null, !dbg !1348
  br i1 %cmp.i, label %cleanup, label %tok_new.exit, !dbg !1349

tok_new.exit:                                     ; preds = %entry
  %0 = bitcast i8* %call.i to %struct.tok_state*, !dbg !1350
  %done.i = getelementptr inbounds i8, i8* %call.i, i64 40, !dbg !1351
  %1 = bitcast i8* %done.i to i32*, !dbg !1351
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 40, i32 8, i1 false) #2, !dbg !1352
  store i32 10, i32* %1, align 4, !dbg !1353, !tbaa !907
  %fp.i = getelementptr inbounds i8, i8* %call.i, i64 48, !dbg !1354
  %2 = bitcast i8* %fp.i to %struct._IO_FILE**, !dbg !1354
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1355, !tbaa !915
  %input.i = getelementptr inbounds i8, i8* %call.i, i64 984, !dbg !1356
  %3 = bitcast i8* %input.i to i8**, !dbg !1356
  store i8* null, i8** %3, align 8, !dbg !1357, !tbaa !918
  %tabsize.i = getelementptr inbounds i8, i8* %call.i, i64 56, !dbg !1358
  %4 = bitcast i8* %tabsize.i to i32*, !dbg !1358
  store i32 8, i32* %4, align 4, !dbg !1359, !tbaa !921
  %indent.i = getelementptr inbounds i8, i8* %call.i, i64 60, !dbg !1360
  %5 = bitcast i8* %indent.i to i32*, !dbg !1360
  store i32 0, i32* %5, align 4, !dbg !1361, !tbaa !924
  %indstack.i = getelementptr inbounds i8, i8* %call.i, i64 64, !dbg !1362
  %arrayidx.i = bitcast i8* %indstack.i to i32*, !dbg !1363
  store i32 0, i32* %arrayidx.i, align 4, !dbg !1364, !tbaa !928
  %atbol.i = getelementptr inbounds i8, i8* %call.i, i64 464, !dbg !1365
  %6 = bitcast i8* %atbol.i to i32*, !dbg !1365
  store i32 1, i32* %6, align 4, !dbg !1366, !tbaa !931
  %pendin.i = getelementptr inbounds i8, i8* %call.i, i64 468, !dbg !1367
  %altwarning.i = getelementptr inbounds i8, i8* %call.i, i64 504, !dbg !1368
  tail call void @llvm.memset.p0i8.i64(i8* %pendin.i, i8 0, i64 28, i32 4, i1 false) #2, !dbg !1369
  %7 = bitcast i8* %altwarning.i to <4 x i32>*, !dbg !1370
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, <4 x i32>* %7, align 4, !dbg !1370, !tbaa !928
  %decoding_state.i = getelementptr inbounds i8, i8* %call.i, i64 916, !dbg !1371
  %filename.i = getelementptr inbounds i8, i8* %call.i, i64 496, !dbg !1372
  %8 = bitcast i8* %filename.i to %struct._object**, !dbg !1372
  store %struct._object* null, %struct._object** %8, align 8, !dbg !1373, !tbaa !939
  %decoding_readline.i = getelementptr inbounds i8, i8* %call.i, i64 952, !dbg !1374
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_state.i, i8 0, i64 24, i32 4, i1 false) #2, !dbg !1375
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_readline.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1376
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !449, metadata !893), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !693, metadata !893) #2, !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %exec_input, i64 0, metadata !694, metadata !893) #2, !dbg !1380
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !695, metadata !893) #2, !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !1382
  %call.i.30 = tail call i64 @strlen(i8* %str) #9, !dbg !1383
  %add.i = add i64 %call.i.30, 2, !dbg !1384
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !697, metadata !893) #2, !dbg !1385
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !701, metadata !893) #2, !dbg !1386
  %call1.i = tail call i8* @PyMem_Malloc(i64 %add.i) #2, !dbg !1387
  tail call void @llvm.dbg.value(metadata i8* %call1.i, i64 0, metadata !699, metadata !893) #2, !dbg !1388
  %cmp.i.31 = icmp eq i8* %call1.i, null, !dbg !1389
  br i1 %cmp.i.31, label %translate_newlines.exit.thread, label %for.cond.preheader.i, !dbg !1390

for.cond.preheader.i:                             ; preds = %tok_new.exit
  %9 = load i8, i8* %str, align 1, !dbg !1391, !tbaa !967
  %tobool.66.i = icmp eq i8 %9, 0, !dbg !1392
  br i1 %tobool.66.i, label %for.end.i, label %for.body.i.preheader, !dbg !1392

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !1393

translate_newlines.exit.thread:                   ; preds = %tok_new.exit
  store i32 15, i32* %1, align 4, !dbg !1394, !tbaa !907
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.33, i64 0, metadata !447, metadata !893), !dbg !1344
  store i8* null, i8** %3, align 8, !dbg !1395, !tbaa !918
  br label %if.then.3, !dbg !1396

for.body.i:                                       ; preds = %for.body.i.preheader, %if.end.11.i
  %10 = phi i8 [ %12, %if.end.11.i ], [ %9, %for.body.i.preheader ], !dbg !1397
  %current.069.i = phi i8* [ %incdec.ptr18.i, %if.end.11.i ], [ %call1.i, %for.body.i.preheader ], !dbg !1397
  %s.addr.068.i = phi i8* [ %incdec.ptr17.i, %if.end.11.i ], [ %str, %for.body.i.preheader ], !dbg !1397
  %skip_next_lf.067.i = phi i32 [ %.skip_next_lf.1.i, %if.end.11.i ], [ 0, %for.body.i.preheader ], !dbg !1397
  %tobool2.i = icmp ne i32 %skip_next_lf.067.i, 0, !dbg !1393
  %cmp4.i = icmp eq i8 %10, 10, !dbg !1398
  %or.cond65.i = and i1 %cmp4.i, %tobool2.i, !dbg !1399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !1382
  br i1 %or.cond65.i, label %if.then.6.i, label %if.end.11.i, !dbg !1399

if.then.6.i:                                      ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, i8* %s.addr.068.i, i64 1, !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !693, metadata !893) #2, !dbg !1378
  %11 = load i8, i8* %incdec.ptr.i, align 1, !dbg !1401, !tbaa !967
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !701, metadata !893) #2, !dbg !1386
  %tobool7.i = icmp eq i8 %11, 0, !dbg !1402
  br i1 %tobool7.i, label %for.end.i.loopexit, label %if.end.11.i, !dbg !1403

if.end.11.i:                                      ; preds = %if.then.6.i, %for.body.i
  %s.addr.1.i = phi i8* [ %incdec.ptr.i, %if.then.6.i ], [ %s.addr.068.i, %for.body.i ], !dbg !1397
  %c.1.i = phi i8 [ %11, %if.then.6.i ], [ %10, %for.body.i ], !dbg !1397
  %cmp13.i = icmp eq i8 %c.1.i, 13, !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !696, metadata !893) #2, !dbg !1382
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !701, metadata !893) #2, !dbg !1386
  %.skip_next_lf.1.i = zext i1 %cmp13.i to i32, !dbg !1405
  %.c.1.i = select i1 %cmp13.i, i8 10, i8 %c.1.i, !dbg !1405
  store i8 %.c.1.i, i8* %current.069.i, align 1, !dbg !1406, !tbaa !967
  %incdec.ptr17.i = getelementptr i8, i8* %s.addr.1.i, i64 1, !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr17.i, i64 0, metadata !693, metadata !893) #2, !dbg !1378
  %incdec.ptr18.i = getelementptr i8, i8* %current.069.i, i64 1, !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr18.i, i64 0, metadata !700, metadata !893) #2, !dbg !1409
  %12 = load i8, i8* %incdec.ptr17.i, align 1, !dbg !1391, !tbaa !967
  %tobool.i = icmp eq i8 %12, 0, !dbg !1392
  br i1 %tobool.i, label %for.cond.for.end_crit_edge.i, label %for.body.i, !dbg !1392

for.cond.for.end_crit_edge.i:                     ; preds = %if.end.11.i
  %incdec.ptr18.i.lcssa = phi i8* [ %incdec.ptr18.i, %if.end.11.i ]
  %.c.1.i.lcssa = phi i8 [ %.c.1.i, %if.end.11.i ]
  %phitmp.i = icmp eq i8 %.c.1.i.lcssa, 10, !dbg !1392
  br label %for.end.i, !dbg !1392

for.end.i.loopexit:                               ; preds = %if.then.6.i
  %current.069.i.lcssa = phi i8* [ %current.069.i, %if.then.6.i ]
  br label %for.end.i, !dbg !1410

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.for.end_crit_edge.i, %for.cond.preheader.i
  %current.0.lcssa.i = phi i8* [ %incdec.ptr18.i.lcssa, %for.cond.for.end_crit_edge.i ], [ %call1.i, %for.cond.preheader.i ], [ %current.069.i.lcssa, %for.end.i.loopexit ], !dbg !1397
  %c.3.i = phi i1 [ %phitmp.i, %for.cond.for.end_crit_edge.i ], [ false, %for.cond.preheader.i ], [ false, %for.end.i.loopexit ], !dbg !1397
  %tobool19.i = icmp eq i32 %exec_input, 0, !dbg !1410
  %or.cond64.i = or i1 %tobool19.i, %c.3.i, !dbg !1411
  br i1 %or.cond64.i, label %if.end.25.i, label %if.then.23.i, !dbg !1411

if.then.23.i:                                     ; preds = %for.end.i
  store i8 10, i8* %current.0.lcssa.i, align 1, !dbg !1412, !tbaa !967
  %incdec.ptr24.i = getelementptr i8, i8* %current.0.lcssa.i, i64 1, !dbg !1413
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr24.i, i64 0, metadata !700, metadata !893) #2, !dbg !1409
  br label %if.end.25.i, !dbg !1414

if.end.25.i:                                      ; preds = %if.then.23.i, %for.end.i
  %current.1.i = phi i8* [ %incdec.ptr24.i, %if.then.23.i ], [ %current.0.lcssa.i, %for.end.i ], !dbg !1397
  store i8 0, i8* %current.1.i, align 1, !dbg !1415, !tbaa !967
  %sub.ptr.lhs.cast.i = ptrtoint i8* %current.1.i to i64, !dbg !1416
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call1.i to i64, !dbg !1416
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1416
  %add26.i = add i64 %sub.ptr.sub.i, 1, !dbg !1417
  tail call void @llvm.dbg.value(metadata i64 %add26.i, i64 0, metadata !698, metadata !893) #2, !dbg !1418
  %cmp27.i = icmp ult i64 %add26.i, %add.i, !dbg !1419
  %tobool30.i = icmp ne i64 %add26.i, 0, !dbg !1420
  %or.cond.i = and i1 %cmp27.i, %tobool30.i, !dbg !1421
  br i1 %or.cond.i, label %if.then.31.i, label %translate_newlines.exit, !dbg !1421

if.then.31.i:                                     ; preds = %if.end.25.i
  %call32.i = tail call i8* @PyMem_Realloc(i8* %call1.i, i64 %add26.i) #2, !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %call32.i, i64 0, metadata !699, metadata !893) #2, !dbg !1388
  br label %translate_newlines.exit, !dbg !1423

translate_newlines.exit:                          ; preds = %if.end.25.i, %if.then.31.i
  %retval.0.i.33 = phi i8* [ %call32.i, %if.then.31.i ], [ %call1.i, %if.end.25.i ], !dbg !1397
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.33, i64 0, metadata !447, metadata !893), !dbg !1344
  store i8* %retval.0.i.33, i8** %3, align 8, !dbg !1395, !tbaa !918
  %cmp2 = icmp eq i8* %retval.0.i.33, null, !dbg !1424
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1396

if.then.3:                                        ; preds = %translate_newlines.exit.thread, %translate_newlines.exit
  tail call void @PyTokenizer_Free(%struct.tok_state* %0), !dbg !1426
  br label %cleanup, !dbg !1428

if.end.4:                                         ; preds = %translate_newlines.exit
  %13 = bitcast i8* %decoding_state.i to i32*, !dbg !1429
  store i32 1, i32* %13, align 4, !dbg !1430, !tbaa !1028
  %read_coding_spec = getelementptr inbounds i8, i8* %call.i, i64 924, !dbg !1431
  %14 = bitcast i8* %read_coding_spec to i32*, !dbg !1431
  store i32 1, i32* %14, align 4, !dbg !1432, !tbaa !1206
  %enc = getelementptr inbounds i8, i8* %call.i, i64 968, !dbg !1433
  %15 = bitcast i8* %enc to i8**, !dbg !1433
  store i8* null, i8** %15, align 8, !dbg !1434, !tbaa !1017
  %str5 = getelementptr inbounds i8, i8* %call.i, i64 976, !dbg !1435
  %16 = bitcast i8* %str5 to i8**, !dbg !1435
  store i8* %retval.0.i.33, i8** %16, align 8, !dbg !1436, !tbaa !1025
  %call6 = tail call i8* @PyMem_Malloc(i64 6) #2, !dbg !1437
  %encoding = getelementptr inbounds i8, i8* %call.i, i64 928, !dbg !1438
  %17 = bitcast i8* %encoding to i8**, !dbg !1438
  store i8* %call6, i8** %17, align 8, !dbg !1439, !tbaa !1071
  %tobool = icmp eq i8* %call6, null, !dbg !1440
  br i1 %tobool, label %if.then.8, label %if.end.9, !dbg !1442

if.then.8:                                        ; preds = %if.end.4
  tail call void @PyTokenizer_Free(%struct.tok_state* %0), !dbg !1443
  br label %cleanup, !dbg !1445

if.end.9:                                         ; preds = %if.end.4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1446
  %inp = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !1447
  %18 = bitcast i8* %inp to i8**, !dbg !1447
  store i8* %retval.0.i.33, i8** %18, align 8, !dbg !1448, !tbaa !1278
  %end = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !1449
  %19 = bitcast i8* %end to i8**, !dbg !1449
  store i8* %retval.0.i.33, i8** %19, align 8, !dbg !1450, !tbaa !1281
  %cur = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !1451
  %20 = bitcast i8* %cur to i8**, !dbg !1451
  store i8* %retval.0.i.33, i8** %20, align 8, !dbg !1452, !tbaa !1284
  %buf = bitcast i8* %call.i to i8**, !dbg !1453
  store i8* %retval.0.i.33, i8** %buf, align 8, !dbg !1454, !tbaa !1097
  br label %cleanup, !dbg !1455

cleanup:                                          ; preds = %entry, %if.end.9, %if.then.8, %if.then.3
  %retval.0 = phi %struct.tok_state* [ null, %if.then.3 ], [ %0, %if.end.9 ], [ null, %if.then.8 ], [ null, %entry ]
  ret %struct.tok_state* %retval.0, !dbg !1456
}

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #4

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %fp, i8* readonly %enc, i8* %ps1, i8* %ps2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !454, metadata !893), !dbg !1457
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !455, metadata !893), !dbg !1458
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !456, metadata !893), !dbg !1459
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !457, metadata !893), !dbg !1460
  %call.i = tail call i8* @PyMem_Malloc(i64 992) #2, !dbg !1461
  %cmp.i = icmp eq i8* %call.i, null, !dbg !1463
  br i1 %cmp.i, label %cleanup, label %tok_new.exit, !dbg !1464

tok_new.exit:                                     ; preds = %entry
  %0 = bitcast i8* %call.i to %struct.tok_state*, !dbg !1465
  %done.i = getelementptr inbounds i8, i8* %call.i, i64 40, !dbg !1466
  %1 = bitcast i8* %done.i to i32*, !dbg !1466
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 40, i32 8, i1 false) #2, !dbg !1467
  store i32 10, i32* %1, align 4, !dbg !1468, !tbaa !907
  %fp.i = getelementptr inbounds i8, i8* %call.i, i64 48, !dbg !1469
  %2 = bitcast i8* %fp.i to %struct._IO_FILE**, !dbg !1469
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1470, !tbaa !915
  %input.i = getelementptr inbounds i8, i8* %call.i, i64 984, !dbg !1471
  %3 = bitcast i8* %input.i to i8**, !dbg !1471
  store i8* null, i8** %3, align 8, !dbg !1472, !tbaa !918
  %tabsize.i = getelementptr inbounds i8, i8* %call.i, i64 56, !dbg !1473
  %4 = bitcast i8* %tabsize.i to i32*, !dbg !1473
  store i32 8, i32* %4, align 4, !dbg !1474, !tbaa !921
  %indent.i = getelementptr inbounds i8, i8* %call.i, i64 60, !dbg !1475
  %5 = bitcast i8* %indent.i to i32*, !dbg !1475
  store i32 0, i32* %5, align 4, !dbg !1476, !tbaa !924
  %indstack.i = getelementptr inbounds i8, i8* %call.i, i64 64, !dbg !1477
  %arrayidx.i = bitcast i8* %indstack.i to i32*, !dbg !1478
  store i32 0, i32* %arrayidx.i, align 4, !dbg !1479, !tbaa !928
  %atbol.i = getelementptr inbounds i8, i8* %call.i, i64 464, !dbg !1480
  %6 = bitcast i8* %atbol.i to i32*, !dbg !1480
  store i32 1, i32* %6, align 4, !dbg !1481, !tbaa !931
  %pendin.i = getelementptr inbounds i8, i8* %call.i, i64 468, !dbg !1482
  %altwarning.i = getelementptr inbounds i8, i8* %call.i, i64 504, !dbg !1483
  tail call void @llvm.memset.p0i8.i64(i8* %pendin.i, i8 0, i64 28, i32 4, i1 false) #2, !dbg !1484
  %7 = bitcast i8* %altwarning.i to <4 x i32>*, !dbg !1485
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, <4 x i32>* %7, align 4, !dbg !1485, !tbaa !928
  %decoding_state.i = getelementptr inbounds i8, i8* %call.i, i64 916, !dbg !1486
  %filename.i = getelementptr inbounds i8, i8* %call.i, i64 496, !dbg !1487
  %8 = bitcast i8* %filename.i to %struct._object**, !dbg !1487
  store %struct._object* null, %struct._object** %8, align 8, !dbg !1488, !tbaa !939
  %decoding_readline.i = getelementptr inbounds i8, i8* %call.i, i64 952, !dbg !1489
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_state.i, i8 0, i64 24, i32 4, i1 false) #2, !dbg !1490
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_readline.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !1491
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %0, i64 0, metadata !458, metadata !893), !dbg !1492
  %call1 = tail call i8* @PyMem_Malloc(i64 8192) #2, !dbg !1493
  %buf = bitcast i8* %call.i to i8**, !dbg !1494
  store i8* %call1, i8** %buf, align 8, !dbg !1496, !tbaa !1097
  %cmp2 = icmp eq i8* %call1, null, !dbg !1497
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1498

if.then.3:                                        ; preds = %tok_new.exit
  tail call void @PyTokenizer_Free(%struct.tok_state* %0), !dbg !1499
  br label %cleanup, !dbg !1501

if.end.4:                                         ; preds = %tok_new.exit
  %inp = getelementptr inbounds i8, i8* %call.i, i64 16, !dbg !1502
  %9 = bitcast i8* %inp to i8**, !dbg !1502
  store i8* %call1, i8** %9, align 8, !dbg !1503, !tbaa !1278
  %cur = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !1504
  %10 = bitcast i8* %cur to i8**, !dbg !1504
  store i8* %call1, i8** %10, align 8, !dbg !1505, !tbaa !1284
  %add.ptr = getelementptr i8, i8* %call1, i64 8192, !dbg !1506
  %end = getelementptr inbounds i8, i8* %call.i, i64 24, !dbg !1507
  %11 = bitcast i8* %end to i8**, !dbg !1507
  store i8* %add.ptr, i8** %11, align 8, !dbg !1508, !tbaa !1281
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %2, align 8, !dbg !1509, !tbaa !915
  %prompt = getelementptr inbounds i8, i8* %call.i, i64 472, !dbg !1510
  %12 = bitcast i8* %prompt to i8**, !dbg !1510
  store i8* %ps1, i8** %12, align 8, !dbg !1511, !tbaa !1512
  %nextprompt = getelementptr inbounds i8, i8* %call.i, i64 480, !dbg !1513
  %13 = bitcast i8* %nextprompt to i8**, !dbg !1513
  store i8* %ps2, i8** %13, align 8, !dbg !1514, !tbaa !1515
  %cmp8 = icmp eq i8* %enc, null, !dbg !1516
  br i1 %cmp8, label %cleanup, label %if.then.9, !dbg !1518

if.then.9:                                        ; preds = %if.end.4
  %call10 = tail call i64 @strlen(i8* %enc) #9, !dbg !1519
  %add = add i64 %call10, 1, !dbg !1519
  %call11 = tail call i8* @PyMem_Malloc(i64 %add) #2, !dbg !1519
  %encoding = getelementptr inbounds i8, i8* %call.i, i64 928, !dbg !1521
  %14 = bitcast i8* %encoding to i8**, !dbg !1521
  store i8* %call11, i8** %14, align 8, !dbg !1522, !tbaa !1071
  %tobool = icmp eq i8* %call11, null, !dbg !1523
  br i1 %tobool, label %if.then.13, label %if.end.14, !dbg !1525

if.then.13:                                       ; preds = %if.then.9
  tail call void @PyTokenizer_Free(%struct.tok_state* %0), !dbg !1526
  br label %cleanup, !dbg !1528

if.end.14:                                        ; preds = %if.then.9
  %call16 = tail call i8* @strcpy(i8* %call11, i8* %enc) #2, !dbg !1529
  %15 = bitcast i8* %decoding_state.i to i32*, !dbg !1530
  store i32 2, i32* %15, align 4, !dbg !1531, !tbaa !1028
  br label %cleanup, !dbg !1532

cleanup:                                          ; preds = %entry, %if.end.14, %if.end.4, %if.then.13, %if.then.3
  %retval.0 = phi %struct.tok_state* [ null, %if.then.3 ], [ null, %if.then.13 ], [ %0, %if.end.4 ], [ %0, %if.end.14 ], [ null, %entry ]
  ret %struct.tok_state* %retval.0, !dbg !1533
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind readnone uwtable
define i32 @PyToken_OneChar(i32 %c) #6 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !483, metadata !893), !dbg !1534
  switch i32 %c, label %sw.default [
    i32 40, label %return
    i32 41, label %sw.bb.1
    i32 91, label %sw.bb.2
    i32 93, label %sw.bb.3
    i32 58, label %sw.bb.4
    i32 44, label %sw.bb.5
    i32 59, label %sw.bb.6
    i32 43, label %sw.bb.7
    i32 45, label %sw.bb.8
    i32 42, label %sw.bb.9
    i32 47, label %sw.bb.10
    i32 124, label %sw.bb.11
    i32 38, label %sw.bb.12
    i32 60, label %sw.bb.13
    i32 62, label %sw.bb.14
    i32 61, label %sw.bb.15
    i32 46, label %sw.bb.16
    i32 37, label %sw.bb.17
    i32 123, label %sw.bb.18
    i32 125, label %sw.bb.19
    i32 94, label %sw.bb.20
    i32 126, label %sw.bb.21
    i32 64, label %sw.bb.22
  ], !dbg !1535

sw.bb.1:                                          ; preds = %entry
  br label %return, !dbg !1536

sw.bb.2:                                          ; preds = %entry
  br label %return, !dbg !1538

sw.bb.3:                                          ; preds = %entry
  br label %return, !dbg !1539

sw.bb.4:                                          ; preds = %entry
  br label %return, !dbg !1540

sw.bb.5:                                          ; preds = %entry
  br label %return, !dbg !1541

sw.bb.6:                                          ; preds = %entry
  br label %return, !dbg !1542

sw.bb.7:                                          ; preds = %entry
  br label %return, !dbg !1543

sw.bb.8:                                          ; preds = %entry
  br label %return, !dbg !1544

sw.bb.9:                                          ; preds = %entry
  br label %return, !dbg !1545

sw.bb.10:                                         ; preds = %entry
  br label %return, !dbg !1546

sw.bb.11:                                         ; preds = %entry
  br label %return, !dbg !1547

sw.bb.12:                                         ; preds = %entry
  br label %return, !dbg !1548

sw.bb.13:                                         ; preds = %entry
  br label %return, !dbg !1549

sw.bb.14:                                         ; preds = %entry
  br label %return, !dbg !1550

sw.bb.15:                                         ; preds = %entry
  br label %return, !dbg !1551

sw.bb.16:                                         ; preds = %entry
  br label %return, !dbg !1552

sw.bb.17:                                         ; preds = %entry
  br label %return, !dbg !1553

sw.bb.18:                                         ; preds = %entry
  br label %return, !dbg !1554

sw.bb.19:                                         ; preds = %entry
  br label %return, !dbg !1555

sw.bb.20:                                         ; preds = %entry
  br label %return, !dbg !1556

sw.bb.21:                                         ; preds = %entry
  br label %return, !dbg !1557

sw.bb.22:                                         ; preds = %entry
  br label %return, !dbg !1558

sw.default:                                       ; preds = %entry
  br label %return, !dbg !1559

return:                                           ; preds = %entry, %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1
  %retval.0 = phi i32 [ 52, %sw.default ], [ 49, %sw.bb.22 ], [ 31, %sw.bb.21 ], [ 32, %sw.bb.20 ], [ 26, %sw.bb.19 ], [ 25, %sw.bb.18 ], [ 24, %sw.bb.17 ], [ 23, %sw.bb.16 ], [ 22, %sw.bb.15 ], [ 21, %sw.bb.14 ], [ 20, %sw.bb.13 ], [ 19, %sw.bb.12 ], [ 18, %sw.bb.11 ], [ 17, %sw.bb.10 ], [ 16, %sw.bb.9 ], [ 15, %sw.bb.8 ], [ 14, %sw.bb.7 ], [ 13, %sw.bb.6 ], [ 12, %sw.bb.5 ], [ 11, %sw.bb.4 ], [ 10, %sw.bb.3 ], [ 9, %sw.bb.2 ], [ 8, %sw.bb.1 ], [ 7, %entry ]
  ret i32 %retval.0, !dbg !1560
}

; Function Attrs: nounwind readnone uwtable
define i32 @PyToken_TwoChars(i32 %c1, i32 %c2) #6 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %c1, i64 0, metadata !488, metadata !893), !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %c2, i64 0, metadata !489, metadata !893), !dbg !1562
  switch i32 %c1, label %sw.epilog.41 [
    i32 61, label %sw.bb
    i32 33, label %sw.bb.2
    i32 60, label %sw.bb.5
    i32 62, label %sw.bb.10
    i32 43, label %sw.bb.14
    i32 45, label %sw.bb.17
    i32 42, label %sw.bb.21
    i32 47, label %sw.bb.25
    i32 124, label %sw.bb.29
    i32 37, label %sw.bb.32
    i32 38, label %sw.bb.35
    i32 94, label %sw.bb.38
  ], !dbg !1563

sw.bb:                                            ; preds = %entry
  %cond47 = icmp eq i32 %c2, 61, !dbg !1564
  br i1 %cond47, label %return, label %sw.epilog.41, !dbg !1564

sw.bb.2:                                          ; preds = %entry
  %cond46 = icmp eq i32 %c2, 61, !dbg !1566
  br i1 %cond46, label %return, label %sw.epilog.41, !dbg !1566

sw.bb.5:                                          ; preds = %entry
  %switch.tableidx = add i32 %c2, -60, !dbg !1567
  %0 = icmp ult i32 %switch.tableidx, 3, !dbg !1567
  br i1 %0, label %switch.lookup, label %sw.epilog.41, !dbg !1567

sw.bb.10:                                         ; preds = %entry
  %switch.selectcmp = icmp eq i32 %c2, 62, !dbg !1568
  %switch.select = select i1 %switch.selectcmp, i32 34, i32 52, !dbg !1568
  %switch.selectcmp59 = icmp eq i32 %c2, 61, !dbg !1568
  %switch.select60 = select i1 %switch.selectcmp59, i32 30, i32 %switch.select, !dbg !1568
  br label %return, !dbg !1568

sw.bb.14:                                         ; preds = %entry
  %cond45 = icmp eq i32 %c2, 61, !dbg !1569
  br i1 %cond45, label %return, label %sw.epilog.41, !dbg !1569

sw.bb.17:                                         ; preds = %entry
  %switch.selectcmp61 = icmp eq i32 %c2, 62, !dbg !1570
  %switch.select62 = select i1 %switch.selectcmp61, i32 50, i32 52, !dbg !1570
  %switch.selectcmp63 = icmp eq i32 %c2, 61, !dbg !1570
  %switch.select64 = select i1 %switch.selectcmp63, i32 37, i32 %switch.select62, !dbg !1570
  br label %return, !dbg !1570

sw.bb.21:                                         ; preds = %entry
  %switch.selectcmp65 = icmp eq i32 %c2, 61, !dbg !1571
  %switch.select66 = select i1 %switch.selectcmp65, i32 38, i32 52, !dbg !1571
  %switch.selectcmp67 = icmp eq i32 %c2, 42, !dbg !1571
  %switch.select68 = select i1 %switch.selectcmp67, i32 35, i32 %switch.select66, !dbg !1571
  br label %return, !dbg !1571

sw.bb.25:                                         ; preds = %entry
  %switch.selectcmp69 = icmp eq i32 %c2, 61, !dbg !1572
  %switch.select70 = select i1 %switch.selectcmp69, i32 39, i32 52, !dbg !1572
  %switch.selectcmp71 = icmp eq i32 %c2, 47, !dbg !1572
  %switch.select72 = select i1 %switch.selectcmp71, i32 47, i32 %switch.select70, !dbg !1572
  br label %return, !dbg !1572

sw.bb.29:                                         ; preds = %entry
  %cond44 = icmp eq i32 %c2, 61, !dbg !1573
  br i1 %cond44, label %return, label %sw.epilog.41, !dbg !1573

sw.bb.32:                                         ; preds = %entry
  %cond43 = icmp eq i32 %c2, 61, !dbg !1574
  br i1 %cond43, label %return, label %sw.epilog.41, !dbg !1574

sw.bb.35:                                         ; preds = %entry
  %cond42 = icmp eq i32 %c2, 61, !dbg !1575
  br i1 %cond42, label %return, label %sw.epilog.41, !dbg !1575

sw.bb.38:                                         ; preds = %entry
  %cond = icmp eq i32 %c2, 61, !dbg !1576
  br i1 %cond, label %return, label %sw.epilog.41, !dbg !1576

sw.epilog.41:                                     ; preds = %sw.bb.5, %sw.bb.38, %sw.bb.35, %sw.bb.32, %sw.bb.29, %sw.bb.14, %sw.bb.2, %sw.bb, %entry
  br label %return, !dbg !1577

switch.lookup:                                    ; preds = %sw.bb.5
  %1 = sext i32 %switch.tableidx to i64, !dbg !1567
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table, i64 0, i64 %1, !dbg !1567
  %switch.load = load i32, i32* %switch.gep, align 4, !dbg !1567
  ret i32 %switch.load, !dbg !1567

return:                                           ; preds = %sw.bb.38, %sw.bb.35, %sw.bb.32, %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.14, %sw.bb.10, %sw.bb.2, %sw.bb, %sw.epilog.41
  %retval.0 = phi i32 [ 52, %sw.epilog.41 ], [ 27, %sw.bb ], [ 28, %sw.bb.2 ], [ %switch.select60, %sw.bb.10 ], [ 36, %sw.bb.14 ], [ %switch.select64, %sw.bb.17 ], [ %switch.select68, %sw.bb.21 ], [ %switch.select72, %sw.bb.25 ], [ 42, %sw.bb.29 ], [ 40, %sw.bb.32 ], [ 41, %sw.bb.35 ], [ 43, %sw.bb.38 ]
  ret i32 %retval.0, !dbg !1578
}

; Function Attrs: nounwind readnone uwtable
define i32 @PyToken_ThreeChars(i32 %c1, i32 %c2, i32 %c3) #6 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %c1, i64 0, metadata !494, metadata !893), !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %c2, i64 0, metadata !495, metadata !893), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %c3, i64 0, metadata !496, metadata !893), !dbg !1581
  switch i32 %c1, label %sw.epilog.24 [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.4
    i32 42, label %sw.bb.9
    i32 47, label %sw.bb.14
    i32 46, label %sw.bb.19
  ], !dbg !1582

sw.bb:                                            ; preds = %entry
  %cond32 = icmp eq i32 %c2, 60, !dbg !1583
  %cond33 = icmp eq i32 %c3, 61, !dbg !1585
  %or.cond = and i1 %cond32, %cond33, !dbg !1583
  br i1 %or.cond, label %return, label %sw.epilog.24, !dbg !1583

sw.bb.4:                                          ; preds = %entry
  %cond30 = icmp eq i32 %c2, 62, !dbg !1587
  %cond31 = icmp eq i32 %c3, 61, !dbg !1588
  %or.cond34 = and i1 %cond30, %cond31, !dbg !1587
  br i1 %or.cond34, label %return, label %sw.epilog.24, !dbg !1587

sw.bb.9:                                          ; preds = %entry
  %cond28 = icmp eq i32 %c2, 42, !dbg !1590
  %cond29 = icmp eq i32 %c3, 61, !dbg !1591
  %or.cond35 = and i1 %cond28, %cond29, !dbg !1590
  br i1 %or.cond35, label %return, label %sw.epilog.24, !dbg !1590

sw.bb.14:                                         ; preds = %entry
  %cond26 = icmp eq i32 %c2, 47, !dbg !1593
  %cond27 = icmp eq i32 %c3, 61, !dbg !1594
  %or.cond36 = and i1 %cond26, %cond27, !dbg !1593
  br i1 %or.cond36, label %return, label %sw.epilog.24, !dbg !1593

sw.bb.19:                                         ; preds = %entry
  %cond = icmp eq i32 %c2, 46, !dbg !1596
  %cond25 = icmp eq i32 %c3, 46, !dbg !1597
  %or.cond37 = and i1 %cond, %cond25, !dbg !1596
  br i1 %or.cond37, label %return, label %sw.epilog.24, !dbg !1596

sw.epilog.24:                                     ; preds = %sw.bb.19, %sw.bb.14, %sw.bb.9, %sw.bb.4, %sw.bb, %entry
  br label %return, !dbg !1599

return:                                           ; preds = %sw.bb.19, %sw.bb.14, %sw.bb.9, %sw.bb.4, %sw.bb, %sw.epilog.24
  %retval.0 = phi i32 [ 52, %sw.epilog.24 ], [ 44, %sw.bb ], [ 45, %sw.bb.4 ], [ 46, %sw.bb.9 ], [ 48, %sw.bb.14 ], [ 51, %sw.bb.19 ]
  ret i32 %retval.0, !dbg !1600
}

; Function Attrs: nounwind uwtable
define i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** nocapture %p_start, i8** nocapture %p_end) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !502, metadata !893), !dbg !1601
  tail call void @llvm.dbg.value(metadata i8** %p_start, i64 0, metadata !503, metadata !893), !dbg !1602
  tail call void @llvm.dbg.value(metadata i8** %p_end, i64 0, metadata !504, metadata !893), !dbg !1603
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !704, metadata !893) #2, !dbg !1604
  tail call void @llvm.dbg.value(metadata i8** %p_start, i64 0, metadata !705, metadata !893) #2, !dbg !1606
  tail call void @llvm.dbg.value(metadata i8** %p_end, i64 0, metadata !706, metadata !893) #2, !dbg !1607
  store i8* null, i8** %p_end, align 8, !dbg !1608, !tbaa !1169
  store i8* null, i8** %p_start, align 8, !dbg !1609, !tbaa !1169
  %start.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 4, !dbg !1610
  %atbol.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 10, !dbg !1611
  %cur114.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 1, !dbg !1612
  %0 = bitcast i8** %cur114.i to i64*, !dbg !1612
  %1 = bitcast i8** %start.i to i64*, !dbg !1613
  %pendin116.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 11, !dbg !1614
  %cont_line579.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 25, !dbg !1616
  %level246.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 15, !dbg !1619
  %tabsize.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 7, !dbg !1623
  %alttabsize.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 19, !dbg !1630
  %buf.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !1631
  %prompt.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 12, !dbg !1636
  %indent.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 8, !dbg !1640
  %alterror.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 18, !dbg !1644
  %altwarning.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 17, !dbg !1651
  %filename.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 16, !dbg !1653
  %.pre.i = load i32, i32* %atbol.i, align 4, !dbg !1611, !tbaa !931
  br label %nextline.i, !dbg !1655

nextline.i:                                       ; preds = %nextline.i.backedge, %entry
  %2 = phi i32 [ %.pre.i, %entry ], [ 1, %nextline.i.backedge ], !dbg !1611
  store i8* null, i8** %start.i, align 8, !dbg !1656, !tbaa !1657
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !708, metadata !893) #2, !dbg !1658
  %tobool.i = icmp eq i32 %2, 0, !dbg !1659
  br i1 %tobool.i, label %if.end.113.i, label %if.then.i, !dbg !1660

if.then.i:                                        ; preds = %nextline.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !710, metadata !893) #2, !dbg !1661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !713, metadata !893) #2, !dbg !1662
  store i32 0, i32* %atbol.i, align 4, !dbg !1663, !tbaa !931
  br label %for.cond.i, !dbg !1664

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.then.i
  %col.0.i = phi i32 [ 0, %if.then.i ], [ %col.0.i.be, %for.cond.i.backedge ], !dbg !1665
  %altcol.0.i = phi i32 [ 0, %if.then.i ], [ %altcol.0.i.be, %for.cond.i.backedge ], !dbg !1665
  %call.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call.i, label %if.then.i.i [
    i32 32, label %if.then.2.i
    i32 9, label %if.then.5.i
    i32 12, label %for.cond.i.backedge
    i32 -1, label %land.lhs.true.29.i.loopexit
  ], !dbg !1668

for.cond.i.backedge:                              ; preds = %for.cond.i, %if.then.2.i, %if.then.5.i
  %col.0.i.be = phi i32 [ %inc.i, %if.then.2.i ], [ %mul.i, %if.then.5.i ], [ 0, %for.cond.i ]
  %altcol.0.i.be = phi i32 [ %inc3.i, %if.then.2.i ], [ %mul10.i, %if.then.5.i ], [ 0, %for.cond.i ]
  br label %for.cond.i, !dbg !1666

if.then.2.i:                                      ; preds = %for.cond.i
  %inc.i = add i32 %col.0.i, 1, !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !710, metadata !893) #2, !dbg !1661
  %inc3.i = add i32 %altcol.0.i, 1, !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %inc3.i, i64 0, metadata !713, metadata !893) #2, !dbg !1662
  br label %for.cond.i.backedge, !dbg !1671

if.then.5.i:                                      ; preds = %for.cond.i
  %3 = load i32, i32* %tabsize.i, align 4, !dbg !1623, !tbaa !921
  %div.i = sdiv i32 %col.0.i, %3, !dbg !1672
  %add.i = add i32 %div.i, 1, !dbg !1673
  %mul.i = mul i32 %add.i, %3, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %mul.i, i64 0, metadata !710, metadata !893) #2, !dbg !1661
  %4 = load i32, i32* %alttabsize.i, align 4, !dbg !1630, !tbaa !1675
  %div7.i = sdiv i32 %altcol.0.i, %4, !dbg !1676
  %add8.i = add i32 %div7.i, 1, !dbg !1677
  %mul10.i = mul i32 %add8.i, %4, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %mul10.i, i64 0, metadata !713, metadata !893) #2, !dbg !1662
  br label %for.cond.i.backedge, !dbg !1679

if.then.i.i:                                      ; preds = %for.cond.i
  %call.i.lcssa = phi i32 [ %call.i, %for.cond.i ]
  %altcol.0.i.lcssa = phi i32 [ %altcol.0.i, %for.cond.i ]
  %col.0.i.lcssa = phi i32 [ %col.0.i, %for.cond.i ]
  %5 = load i8*, i8** %cur114.i, align 8, !dbg !1680, !tbaa !1284
  %incdec.ptr.i.i = getelementptr i8, i8* %5, i64 -1, !dbg !1680
  store i8* %incdec.ptr.i.i, i8** %cur114.i, align 8, !dbg !1680, !tbaa !1284
  %6 = load i8*, i8** %buf.i.i, align 8, !dbg !1631, !tbaa !1097
  %cmp1.i.i = icmp ult i8* %incdec.ptr.i.i, %6, !dbg !1681
  br i1 %cmp1.i.i, label %if.then.2.i.i, label %if.end.i.i, !dbg !1682

if.then.2.i.i:                                    ; preds = %if.then.i.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !1683
  unreachable, !dbg !1683

if.end.i.i:                                       ; preds = %if.then.i.i
  %7 = load i8, i8* %incdec.ptr.i.i, align 1, !dbg !1684, !tbaa !967
  %conv.i.i = sext i8 %7 to i32, !dbg !1684
  %cmp4.i.i = icmp eq i32 %conv.i.i, %call.i.lcssa, !dbg !1686
  br i1 %cmp4.i.i, label %tok_backup.exit.i, label %if.then.6.i.i, !dbg !1687

if.then.6.i.i:                                    ; preds = %if.end.i.i
  %conv7.i.i = trunc i32 %call.i.lcssa to i8, !dbg !1688
  store i8 %conv7.i.i, i8* %incdec.ptr.i.i, align 1, !dbg !1689, !tbaa !967
  br label %tok_backup.exit.i, !dbg !1690

tok_backup.exit.i:                                ; preds = %if.then.6.i.i, %if.end.i.i
  %cmp18.i = icmp eq i32 %call.i.lcssa, 10, !dbg !1691
  switch i32 %call.i.lcssa, label %land.lhs.true.29.i [
    i32 35, label %if.then.19.i
    i32 10, label %if.then.19.i
  ], !dbg !1692

if.then.19.i:                                     ; preds = %tok_backup.exit.i, %tok_backup.exit.i
  %cmp20.i = icmp eq i32 %col.0.i.lcssa, 0, !dbg !1693
  %or.cond616.i = and i1 %cmp20.i, %cmp18.i, !dbg !1694
  br i1 %or.cond616.i, label %land.lhs.true.22.i, label %if.end.113.i, !dbg !1694

land.lhs.true.22.i:                               ; preds = %if.then.19.i
  %8 = load i8*, i8** %prompt.i, align 8, !dbg !1636, !tbaa !1512
  %cmp23.i = icmp eq i8* %8, null, !dbg !1695
  br i1 %cmp23.i, label %if.end.113.i, label %land.lhs.true.29.i, !dbg !1696

land.lhs.true.29.i.loopexit:                      ; preds = %for.cond.i
  %altcol.0.i.lcssa139 = phi i32 [ %altcol.0.i, %for.cond.i ]
  %col.0.i.lcssa138 = phi i32 [ %col.0.i, %for.cond.i ]
  br label %land.lhs.true.29.i, !dbg !1697

land.lhs.true.29.i:                               ; preds = %land.lhs.true.29.i.loopexit, %land.lhs.true.22.i, %tok_backup.exit.i
  %altcol.0.i140 = phi i32 [ %altcol.0.i.lcssa, %tok_backup.exit.i ], [ %altcol.0.i.lcssa, %land.lhs.true.22.i ], [ %altcol.0.i.lcssa139, %land.lhs.true.29.i.loopexit ]
  %col.01310.i = phi i32 [ %col.0.i.lcssa, %tok_backup.exit.i ], [ 0, %land.lhs.true.22.i ], [ %col.0.i.lcssa138, %land.lhs.true.29.i.loopexit ], !dbg !1665
  %9 = load i32, i32* %level246.i, align 4, !dbg !1697, !tbaa !1698
  %cmp30.i = icmp eq i32 %9, 0, !dbg !1699
  br i1 %cmp30.i, label %if.then.31.i, label %if.end.113.i, !dbg !1700

if.then.31.i:                                     ; preds = %land.lhs.true.29.i
  %10 = load i32, i32* %indent.i, align 4, !dbg !1701, !tbaa !924
  %idxprom.i = sext i32 %10 to i64, !dbg !1704
  %arrayidx.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 9, i64 %idxprom.i, !dbg !1704
  %11 = load i32, i32* %arrayidx.i, align 4, !dbg !1704, !tbaa !928
  %cmp32.i = icmp eq i32 %col.01310.i, %11, !dbg !1705
  br i1 %cmp32.i, label %if.then.33.i, label %if.else.44.i, !dbg !1706

if.then.33.i:                                     ; preds = %if.then.31.i
  %arrayidx36.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 20, i64 %idxprom.i, !dbg !1707
  %12 = load i32, i32* %arrayidx36.i, align 4, !dbg !1707, !tbaa !928
  %cmp37.i = icmp eq i32 %altcol.0.i140, %12, !dbg !1708
  br i1 %cmp37.i, label %if.end.113.i, label %if.then.38.i, !dbg !1709

if.then.38.i:                                     ; preds = %if.then.33.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !868, metadata !893) #2, !dbg !1710
  %13 = load i32, i32* %alterror.i.i, align 4, !dbg !1644, !tbaa !1711
  %tobool.i.i = icmp eq i32 %13, 0, !dbg !1712
  br i1 %tobool.i.i, label %if.end.i.959.i, label %indenterror.exit.i, !dbg !1713

if.end.i.959.i:                                   ; preds = %if.then.38.i
  %14 = load i32, i32* %altwarning.i.i, align 4, !dbg !1651, !tbaa !1714
  %tobool1.i.i = icmp eq i32 %14, 0, !dbg !1715
  br i1 %tobool1.i.i, label %if.end.113.i, label %if.then.2.i.960.i, !dbg !1716

if.then.2.i.960.i:                                ; preds = %if.end.i.959.i
  %15 = load %struct._object*, %struct._object** %filename.i.i, align 8, !dbg !1653, !tbaa !939
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), %struct._object* %15) #2, !dbg !1717
  store i32 0, i32* %altwarning.i.i, align 4, !dbg !1718, !tbaa !1714
  br label %if.end.113.i, !dbg !1719

indenterror.exit.i:                               ; preds = %if.then.38.i
  %done.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1720
  store i32 18, i32* %done.i.i, align 4, !dbg !1722, !tbaa !907
  %inp.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1723
  %16 = bitcast i8** %inp.i.i to i64*, !dbg !1723
  %17 = load i64, i64* %16, align 8, !dbg !1723, !tbaa !1278
  store i64 %17, i64* %0, align 8, !dbg !1724, !tbaa !1284
  br label %tok_get.exit, !dbg !1725

if.else.44.i:                                     ; preds = %if.then.31.i
  %cmp49.i = icmp sgt i32 %col.01310.i, %11, !dbg !1726
  br i1 %cmp49.i, label %if.then.50.i, label %while.condthread-pre-split.i, !dbg !1727

if.then.50.i:                                     ; preds = %if.else.44.i
  %add52.i = add i32 %10, 1, !dbg !1728
  %cmp53.i = icmp sgt i32 %add52.i, 99, !dbg !1731
  br i1 %cmp53.i, label %if.then.54.i, label %if.end.55.i, !dbg !1732

if.then.54.i:                                     ; preds = %if.then.50.i
  %done.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1733
  store i32 20, i32* %done.i, align 4, !dbg !1735, !tbaa !907
  %inp.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1736
  %18 = bitcast i8** %inp.i to i64*, !dbg !1736
  %19 = load i64, i64* %18, align 8, !dbg !1736, !tbaa !1278
  store i64 %19, i64* %0, align 8, !dbg !1737, !tbaa !1284
  br label %tok_get.exit, !dbg !1738

if.end.55.i:                                      ; preds = %if.then.50.i
  %arrayidx59.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 20, i64 %idxprom.i, !dbg !1739
  %20 = load i32, i32* %arrayidx59.i, align 4, !dbg !1739, !tbaa !928
  %cmp60.i = icmp sgt i32 %altcol.0.i140, %20, !dbg !1741
  br i1 %cmp60.i, label %if.end.66.i, label %if.then.61.i, !dbg !1742

if.then.61.i:                                     ; preds = %if.end.55.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !868, metadata !893) #2, !dbg !1743
  %21 = load i32, i32* %alterror.i.i, align 4, !dbg !1747, !tbaa !1711
  %tobool.i.962.i = icmp eq i32 %21, 0, !dbg !1748
  br i1 %tobool.i.962.i, label %if.end.i.969.i, label %indenterror.exit973.i, !dbg !1749

if.end.i.969.i:                                   ; preds = %if.then.61.i
  %22 = load i32, i32* %altwarning.i.i, align 4, !dbg !1750, !tbaa !1714
  %tobool1.i.968.i = icmp eq i32 %22, 0, !dbg !1751
  br i1 %tobool1.i.968.i, label %if.end.66.i, label %if.then.2.i.971.i, !dbg !1752

if.then.2.i.971.i:                                ; preds = %if.end.i.969.i
  %23 = load %struct._object*, %struct._object** %filename.i.i, align 8, !dbg !1753, !tbaa !939
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), %struct._object* %23) #2, !dbg !1754
  store i32 0, i32* %altwarning.i.i, align 4, !dbg !1755, !tbaa !1714
  %.pre1334.i = load i32, i32* %indent.i, align 4, !dbg !1756, !tbaa !924
  br label %if.end.66.i, !dbg !1757

indenterror.exit973.i:                            ; preds = %if.then.61.i
  %done.i.963.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1758
  store i32 18, i32* %done.i.963.i, align 4, !dbg !1759, !tbaa !907
  %inp.i.964.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1760
  %24 = bitcast i8** %inp.i.964.i to i64*, !dbg !1760
  %25 = load i64, i64* %24, align 8, !dbg !1760, !tbaa !1278
  store i64 %25, i64* %0, align 8, !dbg !1761, !tbaa !1284
  br label %tok_get.exit, !dbg !1762

if.end.66.i:                                      ; preds = %if.then.2.i.971.i, %if.end.i.969.i, %if.end.55.i
  %26 = phi i32 [ %.pre1334.i, %if.then.2.i.971.i ], [ %10, %if.end.i.969.i ], [ %10, %if.end.55.i ], !dbg !1756
  %27 = load i32, i32* %pendin116.i, align 4, !dbg !1763, !tbaa !1764
  %inc67.i = add i32 %27, 1, !dbg !1763
  store i32 %inc67.i, i32* %pendin116.i, align 4, !dbg !1763, !tbaa !1764
  %inc69.i = add i32 %26, 1, !dbg !1756
  store i32 %inc69.i, i32* %indent.i, align 4, !dbg !1756, !tbaa !924
  %idxprom70.i = sext i32 %inc69.i to i64, !dbg !1765
  %arrayidx72.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 9, i64 %idxprom70.i, !dbg !1765
  store i32 %col.01310.i, i32* %arrayidx72.i, align 4, !dbg !1766, !tbaa !928
  %28 = load i32, i32* %indent.i, align 4, !dbg !1767, !tbaa !924
  %idxprom74.i = sext i32 %28 to i64, !dbg !1768
  %arrayidx76.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 20, i64 %idxprom74.i, !dbg !1768
  store i32 %altcol.0.i140, i32* %arrayidx76.i, align 4, !dbg !1769, !tbaa !928
  br label %if.end.113.i, !dbg !1770

while.condthread-pre-split.i:                     ; preds = %if.else.44.i
  %cmp79.1308.i = icmp sgt i32 %10, 0, !dbg !1771
  br i1 %cmp79.1308.i, label %land.rhs.i.preheader, label %while.end.i, !dbg !1772

land.rhs.i.preheader:                             ; preds = %while.condthread-pre-split.i
  br label %land.rhs.i, !dbg !1773

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body.i ], [ %idxprom.i, %land.rhs.i.preheader ], !dbg !1774
  %29 = phi i32 [ %.pre1332.i, %while.body.i ], [ %11, %land.rhs.i.preheader ], !dbg !1774
  %30 = phi i32 [ %dec87.i, %while.body.i ], [ %10, %land.rhs.i.preheader ], !dbg !1775
  %cmp84.i = icmp slt i32 %col.01310.i, %29, !dbg !1773
  %31 = trunc i64 %indvars.iv to i32, !dbg !1777
  br i1 %cmp84.i, label %while.body.i, label %while.end.i.loopexit, !dbg !1777

while.body.i:                                     ; preds = %land.rhs.i
  %32 = load i32, i32* %pendin116.i, align 4, !dbg !1779, !tbaa !1764
  %dec.i = add i32 %32, -1, !dbg !1779
  store i32 %dec.i, i32* %pendin116.i, align 4, !dbg !1779, !tbaa !1764
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1772
  %dec87.i = add nsw i32 %30, -1, !dbg !1775
  %33 = trunc i64 %indvars.iv.next to i32, !dbg !1775
  store i32 %33, i32* %indent.i, align 4, !dbg !1775, !tbaa !924
  %cmp79.i = icmp sgt i64 %indvars.iv, 1, !dbg !1771
  %arrayidx83.phi.trans.insert.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 9, i64 %indvars.iv.next, !dbg !1774
  %.pre1332.i = load i32, i32* %arrayidx83.phi.trans.insert.i, align 4, !dbg !1774, !tbaa !928
  br i1 %cmp79.i, label %land.rhs.i, label %while.end.i.loopexit, !dbg !1772

while.end.i.loopexit:                             ; preds = %land.rhs.i, %while.body.i
  %.ph = phi i32 [ %29, %land.rhs.i ], [ %.pre1332.i, %while.body.i ]
  %.ph115 = phi i32 [ %31, %land.rhs.i ], [ %dec87.i, %while.body.i ]
  br label %while.end.i, !dbg !1780

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.condthread-pre-split.i
  %34 = phi i32 [ %11, %while.condthread-pre-split.i ], [ %.ph, %while.end.i.loopexit ], !dbg !1782
  %35 = phi i32 [ %10, %while.condthread-pre-split.i ], [ %.ph115, %while.end.i.loopexit ], !dbg !1783
  %cmp92.i = icmp eq i32 %col.01310.i, %34, !dbg !1780
  br i1 %cmp92.i, label %if.end.97.i, label %if.then.93.i, !dbg !1784

if.then.93.i:                                     ; preds = %while.end.i
  %done94.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1785
  store i32 21, i32* %done94.i, align 4, !dbg !1787, !tbaa !907
  %inp95.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1788
  %36 = bitcast i8** %inp95.i to i64*, !dbg !1788
  %37 = load i64, i64* %36, align 8, !dbg !1788, !tbaa !1278
  store i64 %37, i64* %0, align 8, !dbg !1789, !tbaa !1284
  br label %tok_get.exit, !dbg !1790

if.end.97.i:                                      ; preds = %while.end.i
  %idxprom89.i = sext i32 %35 to i64, !dbg !1782
  %arrayidx101.i = getelementptr %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 20, i64 %idxprom89.i, !dbg !1791
  %38 = load i32, i32* %arrayidx101.i, align 4, !dbg !1791, !tbaa !928
  %cmp102.i = icmp eq i32 %altcol.0.i140, %38, !dbg !1793
  br i1 %cmp102.i, label %if.end.113.i, label %if.then.103.i, !dbg !1794

if.then.103.i:                                    ; preds = %if.end.97.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !868, metadata !893) #2, !dbg !1795
  %39 = load i32, i32* %alterror.i.i, align 4, !dbg !1799, !tbaa !1711
  %tobool.i.975.i = icmp eq i32 %39, 0, !dbg !1800
  br i1 %tobool.i.975.i, label %if.end.i.982.i, label %indenterror.exit986.i, !dbg !1801

if.end.i.982.i:                                   ; preds = %if.then.103.i
  %40 = load i32, i32* %altwarning.i.i, align 4, !dbg !1802, !tbaa !1714
  %tobool1.i.981.i = icmp eq i32 %40, 0, !dbg !1803
  br i1 %tobool1.i.981.i, label %if.end.113.i, label %if.then.2.i.984.i, !dbg !1804

if.then.2.i.984.i:                                ; preds = %if.end.i.982.i
  %41 = load %struct._object*, %struct._object** %filename.i.i, align 8, !dbg !1805, !tbaa !939
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), %struct._object* %41) #2, !dbg !1806
  store i32 0, i32* %altwarning.i.i, align 4, !dbg !1807, !tbaa !1714
  br label %if.end.113.i, !dbg !1808

indenterror.exit986.i:                            ; preds = %if.then.103.i
  %done.i.976.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1809
  store i32 18, i32* %done.i.976.i, align 4, !dbg !1810, !tbaa !907
  %inp.i.977.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1811
  %42 = bitcast i8** %inp.i.977.i to i64*, !dbg !1811
  %43 = load i64, i64* %42, align 8, !dbg !1811, !tbaa !1278
  store i64 %43, i64* %0, align 8, !dbg !1812, !tbaa !1284
  br label %tok_get.exit, !dbg !1813

if.end.113.i:                                     ; preds = %if.then.2.i.984.i, %if.end.i.982.i, %if.end.97.i, %if.end.66.i, %if.then.2.i.960.i, %if.end.i.959.i, %if.then.33.i, %land.lhs.true.29.i, %land.lhs.true.22.i, %if.then.19.i, %nextline.i
  %blankline.1.i = phi i32 [ 0, %nextline.i ], [ 1, %land.lhs.true.22.i ], [ 1, %if.then.19.i ], [ 0, %land.lhs.true.29.i ], [ 0, %if.end.66.i ], [ 0, %if.end.97.i ], [ 0, %if.then.33.i ], [ 0, %if.end.i.959.i ], [ 0, %if.then.2.i.960.i ], [ 0, %if.end.i.982.i ], [ 0, %if.then.2.i.984.i ], !dbg !1665
  %44 = load i64, i64* %0, align 8, !dbg !1612, !tbaa !1284
  store i64 %44, i64* %1, align 8, !dbg !1613, !tbaa !1657
  %45 = load i32, i32* %pendin116.i, align 4, !dbg !1614, !tbaa !1764
  %cmp117.i = icmp eq i32 %45, 0, !dbg !1814
  br i1 %cmp117.i, label %again.i.preheader, label %if.then.118.i, !dbg !1815

again.i.preheader:                                ; preds = %if.end.113.i
  br label %again.i, !dbg !1816

if.then.118.i:                                    ; preds = %if.end.113.i
  %.lcssa = phi i32 [ %45, %if.end.113.i ]
  %cmp120.i = icmp slt i32 %.lcssa, 0, !dbg !1817
  br i1 %cmp120.i, label %if.then.121.i, label %if.else.124.i, !dbg !1820

if.then.121.i:                                    ; preds = %if.then.118.i
  %inc123.i = add i32 %.lcssa, 1, !dbg !1821
  store i32 %inc123.i, i32* %pendin116.i, align 4, !dbg !1821, !tbaa !1764
  br label %tok_get.exit, !dbg !1823

if.else.124.i:                                    ; preds = %if.then.118.i
  %dec126.i = add i32 %.lcssa, -1, !dbg !1824
  store i32 %dec126.i, i32* %pendin116.i, align 4, !dbg !1824, !tbaa !1764
  br label %tok_get.exit, !dbg !1826

again.i:                                          ; preds = %again.i.preheader, %if.end.578.i
  store i8* null, i8** %start.i, align 8, !dbg !1816, !tbaa !1657
  br label %do.body.i, !dbg !1827

do.body.i:                                        ; preds = %do.body.i.backedge, %again.i
  %call129.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 %call129.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call129.i, label %do.end.i [
    i32 32, label %do.body.i.backedge
    i32 12, label %do.body.i.backedge
    i32 9, label %do.body.i.backedge
  ], !dbg !1830

do.body.i.backedge:                               ; preds = %do.body.i, %do.body.i, %do.body.i
  br label %do.body.i, !dbg !1828

do.end.i:                                         ; preds = %do.body.i
  %call129.i.lcssa = phi i32 [ %call129.i, %do.body.i ]
  %46 = load i8*, i8** %cur114.i, align 8, !dbg !1831, !tbaa !1284
  %add.ptr.i = getelementptr i8, i8* %46, i64 -1, !dbg !1832
  store i8* %add.ptr.i, i8** %start.i, align 8, !dbg !1833, !tbaa !1657
  %cmp136.i = icmp eq i32 %call129.i.lcssa, 35, !dbg !1834
  br i1 %cmp136.i, label %while.cond.138.i.preheader, label %if.end.146.i, !dbg !1836

while.cond.138.i.preheader:                       ; preds = %do.end.i
  br label %while.cond.138.i, !dbg !1837

while.cond.138.i:                                 ; preds = %while.cond.138.i.preheader, %while.body.143.i
  %c.0.i = phi i32 [ %call144.i, %while.body.143.i ], [ 35, %while.cond.138.i.preheader ], !dbg !1665
  switch i32 %c.0.i, label %while.body.143.i [
    i32 -1, label %if.end.146.i.loopexit
    i32 10, label %if.end.146.i.loopexit
  ], !dbg !1837

while.body.143.i:                                 ; preds = %while.cond.138.i
  %call144.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 %call144.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %while.cond.138.i, !dbg !1840

if.end.146.i.loopexit:                            ; preds = %while.cond.138.i, %while.cond.138.i
  %c.0.i.lcssa = phi i32 [ %c.0.i, %while.cond.138.i ], [ %c.0.i, %while.cond.138.i ]
  br label %if.end.146.i, !dbg !1841

if.end.146.i:                                     ; preds = %if.end.146.i.loopexit, %do.end.i
  %c.1.i = phi i32 [ %call129.i.lcssa, %do.end.i ], [ %c.0.i.lcssa, %if.end.146.i.loopexit ], !dbg !1665
  %cmp147.i = icmp eq i32 %c.1.i, -1, !dbg !1841
  br i1 %cmp147.i, label %if.then.148.i, label %if.end.151.i, !dbg !1843

if.then.148.i:                                    ; preds = %if.end.146.i
  %done149.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1844
  %47 = load i32, i32* %done149.i, align 4, !dbg !1844, !tbaa !907
  %cmp150.i = icmp eq i32 %47, 11, !dbg !1846
  %cond.i = select i1 %cmp150.i, i32 0, i32 53, !dbg !1847
  br label %tok_get.exit, !dbg !1848

if.end.151.i:                                     ; preds = %if.end.146.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !709, metadata !893) #2, !dbg !1849
  %c.1.off.i = add i32 %c.1.i, -97, !dbg !1850
  %48 = icmp ult i32 %c.1.off.i, 26, !dbg !1850
  br i1 %48, label %while.body.165.i.preheader, label %lor.lhs.false.155.i, !dbg !1850

lor.lhs.false.155.i:                              ; preds = %if.end.151.i
  %c.1.off945.i = add i32 %c.1.i, -65, !dbg !1851
  %49 = icmp ult i32 %c.1.off945.i, 26, !dbg !1851
  %cmp160.i = icmp eq i32 %c.1.i, 95, !dbg !1854
  %or.cond620.i = or i1 %cmp160.i, %49, !dbg !1851
  %cmp162.i = icmp sgt i32 %c.1.i, 127, !dbg !1857
  %or.cond621.i = or i1 %cmp162.i, %or.cond620.i, !dbg !1851
  br i1 %or.cond621.i, label %while.body.165.i.preheader, label %if.end.240.i, !dbg !1851

while.body.165.i.preheader:                       ; preds = %if.end.151.i, %lor.lhs.false.155.i
  br label %while.body.165.i, !dbg !1859

while.body.165.i:                                 ; preds = %while.body.165.i.preheader, %if.end.197.i
  %saw_b.0.i = phi i32 [ %saw_b.1.i, %if.end.197.i ], [ 0, %while.body.165.i.preheader ], !dbg !1665
  %saw_r.0.i = phi i32 [ %saw_r.1.i, %if.end.197.i ], [ 0, %while.body.165.i.preheader ], !dbg !1665
  %saw_u.0.i = phi i32 [ %saw_u.1.i, %if.end.197.i ], [ 0, %while.body.165.i.preheader ], !dbg !1665
  %c.2.i = phi i32 [ %call198.i, %if.end.197.i ], [ %c.1.i, %while.body.165.i.preheader ], !dbg !1665
  %50 = or i32 %saw_u.0.i, %saw_b.0.i, !dbg !1859
  %51 = icmp eq i32 %50, 0, !dbg !1859
  %52 = and i32 %c.2.i, -33, !dbg !1665
  %53 = icmp eq i32 %52, 66, !dbg !1862
  %or.cond.i = and i1 %51, %53, !dbg !1859
  br i1 %or.cond.i, label %if.end.197.i, label %if.else.174.i, !dbg !1859

if.else.174.i:                                    ; preds = %while.body.165.i
  %54 = or i32 %50, %saw_r.0.i, !dbg !1863
  %55 = icmp eq i32 %54, 0, !dbg !1863
  %56 = icmp eq i32 %52, 85, !dbg !1865
  %or.cond950.i = and i1 %55, %56, !dbg !1863
  br i1 %or.cond950.i, label %if.end.197.i, label %if.else.185.i, !dbg !1863

if.else.185.i:                                    ; preds = %if.else.174.i
  %57 = or i32 %saw_u.0.i, %saw_r.0.i, !dbg !1866
  %58 = icmp eq i32 %57, 0, !dbg !1866
  %59 = icmp eq i32 %52, 82, !dbg !1868
  %or.cond952.i = and i1 %58, %59, !dbg !1866
  br i1 %or.cond952.i, label %if.end.197.i, label %while.cond.205.i.preheader, !dbg !1866

while.cond.205.i.preheader:                       ; preds = %if.else.185.i
  %c.2.i.lcssa = phi i32 [ %c.2.i, %if.else.185.i ]
  br label %while.cond.205.i, !dbg !1869

if.end.197.i:                                     ; preds = %if.else.185.i, %if.else.174.i, %while.body.165.i
  %saw_b.1.i = phi i32 [ 1, %while.body.165.i ], [ %saw_b.0.i, %if.else.174.i ], [ %saw_b.0.i, %if.else.185.i ], !dbg !1665
  %saw_r.1.i = phi i32 [ %saw_r.0.i, %while.body.165.i ], [ %saw_r.0.i, %if.else.174.i ], [ 1, %if.else.185.i ], !dbg !1665
  %saw_u.1.i = phi i32 [ %saw_u.0.i, %while.body.165.i ], [ 1, %if.else.174.i ], [ %saw_u.0.i, %if.else.185.i ], !dbg !1665
  %call198.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %call198.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call198.i, label %while.body.165.i [
    i32 39, label %letter_quote.i.loopexit
    i32 34, label %letter_quote.i.loopexit
  ], !dbg !1873

while.cond.205.i:                                 ; preds = %while.cond.205.i.preheader, %while.body.222.i
  %nonascii.0.i = phi i32 [ %.nonascii.0.i, %while.body.222.i ], [ 0, %while.cond.205.i.preheader ], !dbg !1665
  %c.3.i = phi i32 [ %call226.i, %while.body.222.i ], [ %c.2.i.lcssa, %while.cond.205.i.preheader ], !dbg !1665
  %60 = and i32 %c.3.i, -33, !dbg !1869
  %61 = add i32 %60, -65, !dbg !1869
  %62 = icmp ult i32 %61, 26, !dbg !1869
  br i1 %62, label %while.body.222.i, label %lor.lhs.false.213.i, !dbg !1869

lor.lhs.false.213.i:                              ; preds = %while.cond.205.i
  %c.3.off947.i = add i32 %c.3.i, -48, !dbg !1875
  %63 = icmp ult i32 %c.3.off947.i, 10, !dbg !1875
  %cmp218.i = icmp eq i32 %c.3.i, 95, !dbg !1878
  %or.cond633.i = or i1 %cmp218.i, %63, !dbg !1875
  %cmp220.i = icmp sgt i32 %c.3.i, 127, !dbg !1881
  %or.cond650.i = or i1 %cmp220.i, %or.cond633.i, !dbg !1875
  br i1 %or.cond650.i, label %while.body.222.i, label %while.end.227.i, !dbg !1875

while.body.222.i:                                 ; preds = %lor.lhs.false.213.i, %while.cond.205.i
  %cmp223.i = icmp sgt i32 %c.3.i, 127, !dbg !1883
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !709, metadata !893) #2, !dbg !1849
  %.nonascii.0.i = select i1 %cmp223.i, i32 1, i32 %nonascii.0.i, !dbg !1886
  %call226.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %call226.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %while.cond.205.i, !dbg !1888

while.end.227.i:                                  ; preds = %lor.lhs.false.213.i
  %c.3.i.lcssa = phi i32 [ %c.3.i, %lor.lhs.false.213.i ]
  %nonascii.0.i.lcssa = phi i32 [ %nonascii.0.i, %lor.lhs.false.213.i ]
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !1889
  tail call void @llvm.dbg.value(metadata i32 %c.3.i, i64 0, metadata !865, metadata !893) #2, !dbg !1891
  %cmp.i.987.i = icmp eq i32 %c.3.i.lcssa, -1, !dbg !1892
  br i1 %cmp.i.987.i, label %tok_backup.exit999.i, label %if.then.i.992.i, !dbg !1893

if.then.i.992.i:                                  ; preds = %while.end.227.i
  %64 = load i8*, i8** %cur114.i, align 8, !dbg !1894, !tbaa !1284
  %incdec.ptr.i.989.i = getelementptr i8, i8* %64, i64 -1, !dbg !1894
  store i8* %incdec.ptr.i.989.i, i8** %cur114.i, align 8, !dbg !1894, !tbaa !1284
  %65 = load i8*, i8** %buf.i.i, align 8, !dbg !1895, !tbaa !1097
  %cmp1.i.991.i = icmp ult i8* %incdec.ptr.i.989.i, %65, !dbg !1896
  br i1 %cmp1.i.991.i, label %if.then.2.i.993.i, label %if.end.i.996.i, !dbg !1897

if.then.2.i.993.i:                                ; preds = %if.then.i.992.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !1898
  unreachable, !dbg !1898

if.end.i.996.i:                                   ; preds = %if.then.i.992.i
  %66 = load i8, i8* %incdec.ptr.i.989.i, align 1, !dbg !1899, !tbaa !967
  %conv.i.994.i = sext i8 %66 to i32, !dbg !1899
  %cmp4.i.995.i = icmp eq i32 %conv.i.994.i, %c.3.i.lcssa, !dbg !1900
  br i1 %cmp4.i.995.i, label %tok_backup.exit999.i, label %if.then.6.i.998.i, !dbg !1901

if.then.6.i.998.i:                                ; preds = %if.end.i.996.i
  %conv7.i.997.i = trunc i32 %c.3.i.lcssa to i8, !dbg !1902
  store i8 %conv7.i.997.i, i8* %incdec.ptr.i.989.i, align 1, !dbg !1903, !tbaa !967
  br label %tok_backup.exit999.i, !dbg !1904

tok_backup.exit999.i:                             ; preds = %if.then.6.i.998.i, %if.end.i.996.i, %while.end.227.i
  %tobool228.i = icmp eq i32 %nonascii.0.i.lcssa, 0, !dbg !1905
  br i1 %tobool228.i, label %if.end.234.i, label %land.lhs.true.229.i, !dbg !1907

land.lhs.true.229.i:                              ; preds = %tok_backup.exit999.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !871, metadata !893) #2, !dbg !1908
  %67 = load i8*, i8** %start.i, align 8, !dbg !1910, !tbaa !1657
  %68 = load i64, i64* %0, align 8, !dbg !1911, !tbaa !1284
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %67 to i64, !dbg !1912
  %sub.ptr.sub.i.i = sub i64 %68, %sub.ptr.rhs.cast.i.i, !dbg !1912
  %call.i.i = tail call %struct._object* @PyUnicode_DecodeUTF8(i8* %67, i64 %sub.ptr.sub.i.i, i8* null) #2, !dbg !1913
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !872, metadata !893) #2, !dbg !1914
  %cmp.i.1001.i = icmp eq %struct._object* %call.i.i, null, !dbg !1915
  br i1 %cmp.i.1001.i, label %if.then.i.1003.i, label %lor.lhs.false.i.i, !dbg !1917

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.229.i
  %state.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 2, !dbg !1918
  %69 = bitcast %struct._object* %state.i.i to i32*, !dbg !1918
  %bf.load.i.i = load i32, i32* %69, align 4, !dbg !1918
  %bf.clear.i.i = and i32 %bf.load.i.i, 128, !dbg !1918
  %tobool.i.1002.i = icmp eq i32 %bf.clear.i.i, 0, !dbg !1918
  br i1 %tobool.i.1002.i, label %cond.false.i.i, label %if.end.8.i.i, !dbg !1918

cond.false.i.i:                                   ; preds = %lor.lhs.false.i.i
  %call2.i.i = tail call i32 @_PyUnicode_Ready(%struct._object* %call.i.i) #2, !dbg !1920
  %phitmp.i.i = icmp eq i32 %call2.i.i, -1, !dbg !1920
  br i1 %phitmp.i.i, label %if.then.i.1003.i, label %if.end.8.i.i, !dbg !1922

if.then.i.1003.i:                                 ; preds = %cond.false.i.i, %land.lhs.true.229.i
  %70 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !1923, !tbaa !1169
  %call4.i.i = tail call i32 @PyErr_ExceptionMatches(%struct._object* %70) #2, !dbg !1926
  %tobool5.i.i = icmp eq i32 %call4.i.i, 0, !dbg !1926
  br i1 %tobool5.i.i, label %if.else.i.i, label %if.then.6.i.1005.i, !dbg !1927

if.then.6.i.1005.i:                               ; preds = %if.then.i.1003.i
  tail call void @PyErr_Clear() #2, !dbg !1928
  %done.i.1004.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1930
  store i32 26, i32* %done.i.1004.i, align 4, !dbg !1931, !tbaa !907
  br label %if.then.232.i, !dbg !1932

if.else.i.i:                                      ; preds = %if.then.i.1003.i
  %done7.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1933
  store i32 17, i32* %done7.i.i, align 4, !dbg !1935, !tbaa !907
  br label %if.then.232.i, !dbg !1936

if.end.8.i.i:                                     ; preds = %cond.false.i.i, %lor.lhs.false.i.i
  %call9.i.i = tail call i32 @PyUnicode_IsIdentifier(%struct._object* %call.i.i) #2, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %call9.i.i, i64 0, metadata !873, metadata !893) #2, !dbg !1938
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !874, metadata !893) #2, !dbg !1939
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 0, !dbg !1941
  %71 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1941, !tbaa !1127
  %dec.i.i = add i64 %71, -1, !dbg !1941
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1941, !tbaa !1127
  %cmp10.i.i = icmp eq i64 %dec.i.i, 0, !dbg !1941
  br i1 %cmp10.i.i, label %if.else.12.i.i, label %if.end.13.i.i, !dbg !1943

if.else.12.i.i:                                   ; preds = %if.end.8.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.i, i64 0, i32 1, !dbg !1944
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !1944, !tbaa !1133
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i64 0, i32 4, !dbg !1944
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !1944, !tbaa !1134
  tail call void %73(%struct._object* %call.i.i) #2, !dbg !1944
  br label %if.end.13.i.i, !dbg !1936

if.end.13.i.i:                                    ; preds = %if.else.12.i.i, %if.end.8.i.i
  %cmp14.i.i = icmp eq i32 %call9.i.i, 0, !dbg !1946
  br i1 %cmp14.i.i, label %if.then.15.i.i, label %if.end.234.i, !dbg !1948

if.then.15.i.i:                                   ; preds = %if.end.13.i.i
  %done16.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1949
  store i32 26, i32* %done16.i.i, align 4, !dbg !1950, !tbaa !907
  br label %if.then.232.i, !dbg !1951

if.then.232.i:                                    ; preds = %if.then.15.i.i, %if.else.i.i, %if.then.6.i.1005.i
  %done233.pre-phi.i = phi i32* [ %done7.i.i, %if.else.i.i ], [ %done.i.1004.i, %if.then.6.i.1005.i ], [ %done16.i.i, %if.then.15.i.i ], !dbg !1952
  store i32 26, i32* %done233.pre-phi.i, align 4, !dbg !1954, !tbaa !907
  br label %tok_get.exit, !dbg !1955

if.end.234.i:                                     ; preds = %if.end.13.i.i, %tok_backup.exit999.i
  %74 = load i64, i64* %1, align 8, !dbg !1956, !tbaa !1657
  %75 = bitcast i8** %p_start to i64*, !dbg !1957
  store i64 %74, i64* %75, align 8, !dbg !1957, !tbaa !1169
  %76 = load i64, i64* %0, align 8, !dbg !1958, !tbaa !1284
  %77 = bitcast i8** %p_end to i64*, !dbg !1959
  store i64 %76, i64* %77, align 8, !dbg !1959, !tbaa !1169
  br label %tok_get.exit, !dbg !1960

if.end.240.i:                                     ; preds = %lor.lhs.false.155.i
  switch i32 %c.1.i, label %if.end.279.i [
    i32 10, label %if.then.242.i
    i32 46, label %if.then.255.i
  ], !dbg !1961

if.then.242.i:                                    ; preds = %if.end.240.i
  store i32 1, i32* %atbol.i, align 4, !dbg !1962, !tbaa !931
  %tobool244.i = icmp eq i32 %blankline.1.i, 0, !dbg !1963
  br i1 %tobool244.i, label %lor.lhs.false.245.i, label %nextline.i.backedge, !dbg !1964

nextline.i.backedge:                              ; preds = %if.then.242.i, %lor.lhs.false.245.i
  br label %nextline.i, !dbg !1656

lor.lhs.false.245.i:                              ; preds = %if.then.242.i
  %78 = load i32, i32* %level246.i, align 4, !dbg !1619, !tbaa !1698
  %cmp247.i = icmp sgt i32 %78, 0, !dbg !1965
  br i1 %cmp247.i, label %nextline.i.backedge, label %if.end.249.i, !dbg !1966

if.end.249.i:                                     ; preds = %lor.lhs.false.245.i
  %79 = load i64, i64* %1, align 8, !dbg !1967, !tbaa !1657
  %80 = bitcast i8** %p_start to i64*, !dbg !1968
  store i64 %79, i64* %80, align 8, !dbg !1968, !tbaa !1169
  %81 = load i8*, i8** %cur114.i, align 8, !dbg !1969, !tbaa !1284
  %add.ptr252.i = getelementptr i8, i8* %81, i64 -1, !dbg !1970
  store i8* %add.ptr252.i, i8** %p_end, align 8, !dbg !1971, !tbaa !1169
  store i32 0, i32* %cont_line579.i, align 4, !dbg !1972, !tbaa !1973
  br label %tok_get.exit, !dbg !1974

if.then.255.i:                                    ; preds = %if.end.240.i
  %call256.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %call256.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom257.i = sext i32 %call256.i to i64, !dbg !1978
  %call258.i = tail call i16** @__ctype_b_loc() #1, !dbg !1978
  %82 = load i16*, i16** %call258.i, align 8, !dbg !1978, !tbaa !1169
  %arrayidx259.i = getelementptr i16, i16* %82, i64 %idxprom257.i, !dbg !1978
  %83 = load i16, i16* %arrayidx259.i, align 2, !dbg !1978, !tbaa !1980
  %and.i = and i16 %83, 2048, !dbg !1978
  %tobool260.i = icmp eq i16 %and.i, 0, !dbg !1978
  br i1 %tobool260.i, label %if.else.262.i, label %do.body.442.preheader.i, !dbg !1982

if.else.262.i:                                    ; preds = %if.then.255.i
  switch i32 %call256.i, label %if.then.i.1036.i [
    i32 46, label %if.then.265.i
    i32 -1, label %if.end.276.i
  ], !dbg !1983

if.then.265.i:                                    ; preds = %if.else.262.i
  %call266.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 %call266.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call266.i, label %if.then.i.1012.i [
    i32 46, label %if.then.269.i
    i32 -1, label %tok_backup.exit1019.i
  ], !dbg !1987

if.then.269.i:                                    ; preds = %if.then.265.i
  %84 = load i64, i64* %1, align 8, !dbg !1988, !tbaa !1657
  %85 = bitcast i8** %p_start to i64*, !dbg !1991
  store i64 %84, i64* %85, align 8, !dbg !1991, !tbaa !1169
  %86 = load i64, i64* %0, align 8, !dbg !1992, !tbaa !1284
  %87 = bitcast i8** %p_end to i64*, !dbg !1993
  store i64 %86, i64* %87, align 8, !dbg !1993, !tbaa !1169
  br label %tok_get.exit, !dbg !1994

if.then.i.1012.i:                                 ; preds = %if.then.265.i
  %88 = load i8*, i8** %cur114.i, align 8, !dbg !1995, !tbaa !1284
  %incdec.ptr.i.1009.i = getelementptr i8, i8* %88, i64 -1, !dbg !1995
  store i8* %incdec.ptr.i.1009.i, i8** %cur114.i, align 8, !dbg !1995, !tbaa !1284
  %89 = load i8*, i8** %buf.i.i, align 8, !dbg !1998, !tbaa !1097
  %cmp1.i.1011.i = icmp ult i8* %incdec.ptr.i.1009.i, %89, !dbg !1999
  br i1 %cmp1.i.1011.i, label %if.then.2.i.1013.i, label %if.end.i.1016.i, !dbg !2000

if.then.2.i.1013.i:                               ; preds = %if.then.i.1012.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2001
  unreachable, !dbg !2001

if.end.i.1016.i:                                  ; preds = %if.then.i.1012.i
  %90 = load i8, i8* %incdec.ptr.i.1009.i, align 1, !dbg !2002, !tbaa !967
  %conv.i.1014.i = sext i8 %90 to i32, !dbg !2002
  %cmp4.i.1015.i = icmp eq i32 %conv.i.1014.i, %call266.i, !dbg !2003
  br i1 %cmp4.i.1015.i, label %tok_backup.exit1019.i, label %if.then.6.i.1018.i, !dbg !2004

if.then.6.i.1018.i:                               ; preds = %if.end.i.1016.i
  %conv7.i.1017.i = trunc i32 %call266.i to i8, !dbg !2005
  store i8 %conv7.i.1017.i, i8* %incdec.ptr.i.1009.i, align 1, !dbg !2006, !tbaa !967
  br label %tok_backup.exit1019.i, !dbg !2007

tok_backup.exit1019.i:                            ; preds = %if.then.6.i.1018.i, %if.end.i.1016.i, %if.then.265.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 46, i64 0, metadata !865, metadata !893) #2, !dbg !2010
  %91 = load i8*, i8** %cur114.i, align 8, !dbg !2011, !tbaa !1284
  %incdec.ptr.i.1021.i = getelementptr i8, i8* %91, i64 -1, !dbg !2011
  store i8* %incdec.ptr.i.1021.i, i8** %cur114.i, align 8, !dbg !2011, !tbaa !1284
  %92 = load i8*, i8** %buf.i.i, align 8, !dbg !2012, !tbaa !1097
  %cmp1.i.1023.i = icmp ult i8* %incdec.ptr.i.1021.i, %92, !dbg !2013
  br i1 %cmp1.i.1023.i, label %if.then.2.i.1025.i, label %if.end.i.1028.i, !dbg !2014

if.then.2.i.1025.i:                               ; preds = %tok_backup.exit1019.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2015
  unreachable, !dbg !2015

if.end.i.1028.i:                                  ; preds = %tok_backup.exit1019.i
  %93 = load i8, i8* %incdec.ptr.i.1021.i, align 1, !dbg !2016, !tbaa !967
  %cmp4.i.1027.i = icmp eq i8 %93, 46, !dbg !2017
  br i1 %cmp4.i.1027.i, label %if.end.276.i, label %if.then.6.i.1029.i, !dbg !2018

if.then.6.i.1029.i:                               ; preds = %if.end.i.1028.i
  store i8 46, i8* %incdec.ptr.i.1021.i, align 1, !dbg !2019, !tbaa !967
  br label %if.end.276.i, !dbg !2020

if.then.i.1036.i:                                 ; preds = %if.else.262.i
  %94 = load i8*, i8** %cur114.i, align 8, !dbg !2021, !tbaa !1284
  %incdec.ptr.i.1033.i = getelementptr i8, i8* %94, i64 -1, !dbg !2021
  store i8* %incdec.ptr.i.1033.i, i8** %cur114.i, align 8, !dbg !2021, !tbaa !1284
  %95 = load i8*, i8** %buf.i.i, align 8, !dbg !2024, !tbaa !1097
  %cmp1.i.1035.i = icmp ult i8* %incdec.ptr.i.1033.i, %95, !dbg !2025
  br i1 %cmp1.i.1035.i, label %if.then.2.i.1037.i, label %if.end.i.1040.i, !dbg !2026

if.then.2.i.1037.i:                               ; preds = %if.then.i.1036.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2027
  unreachable, !dbg !2027

if.end.i.1040.i:                                  ; preds = %if.then.i.1036.i
  %96 = load i8, i8* %incdec.ptr.i.1033.i, align 1, !dbg !2028, !tbaa !967
  %conv.i.1038.i = sext i8 %96 to i32, !dbg !2028
  %cmp4.i.1039.i = icmp eq i32 %conv.i.1038.i, %call256.i, !dbg !2029
  br i1 %cmp4.i.1039.i, label %if.end.276.i, label %if.then.6.i.1042.i, !dbg !2030

if.then.6.i.1042.i:                               ; preds = %if.end.i.1040.i
  %conv7.i.1041.i = trunc i32 %call256.i to i8, !dbg !2031
  store i8 %conv7.i.1041.i, i8* %incdec.ptr.i.1033.i, align 1, !dbg !2032, !tbaa !967
  br label %if.end.276.i, !dbg !2033

if.end.276.i:                                     ; preds = %if.then.6.i.1042.i, %if.end.i.1040.i, %if.then.6.i.1029.i, %if.end.i.1028.i, %if.else.262.i
  %97 = load i64, i64* %1, align 8, !dbg !2034, !tbaa !1657
  %98 = bitcast i8** %p_start to i64*, !dbg !2035
  store i64 %97, i64* %98, align 8, !dbg !2035, !tbaa !1169
  %99 = load i64, i64* %0, align 8, !dbg !2036, !tbaa !1284
  %100 = bitcast i8** %p_end to i64*, !dbg !2037
  store i64 %99, i64* %100, align 8, !dbg !2037, !tbaa !1169
  br label %tok_get.exit, !dbg !2038

if.end.279.i:                                     ; preds = %if.end.240.i
  %idxprom280.i = sext i32 %c.1.i to i64, !dbg !2039
  %call281.i = tail call i16** @__ctype_b_loc() #1, !dbg !2039
  %101 = load i16*, i16** %call281.i, align 8, !dbg !2039, !tbaa !1169
  %arrayidx282.i = getelementptr i16, i16* %101, i64 %idxprom280.i, !dbg !2039
  %102 = load i16, i16* %arrayidx282.i, align 2, !dbg !2039, !tbaa !1980
  %and284.i = and i16 %102, 2048, !dbg !2039
  %tobool285.i = icmp eq i16 %and284.i, 0, !dbg !2039
  br i1 %tobool285.i, label %letter_quote.i, label %if.then.286.i, !dbg !2040

if.then.286.i:                                    ; preds = %if.end.279.i
  %call281.i.lcssa = phi i16** [ %call281.i, %if.end.279.i ]
  %c.1.i.lcssa145 = phi i32 [ %c.1.i, %if.end.279.i ]
  %cmp287.i = icmp eq i32 %c.1.i.lcssa145, 48, !dbg !2041
  br i1 %cmp287.i, label %if.then.289.i, label %do.body.429.i.preheader, !dbg !2042

do.body.429.i.preheader:                          ; preds = %if.then.286.i
  br label %do.body.429.i, !dbg !2043

if.then.289.i:                                    ; preds = %if.then.286.i
  %call290.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %call290.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp291.i = icmp eq i32 %call290.i, 46, !dbg !2047
  br i1 %cmp291.i, label %do.body.442.preheader.i, label %if.end.294.i, !dbg !2049

if.end.294.i:                                     ; preds = %if.then.289.i
  %103 = and i32 %call290.i, -33, !dbg !2050
  switch i32 %103, label %while.cond.381.preheader.i [
    i32 74, label %imaginary.i
    i32 88, label %if.then.307.i
    i32 79, label %if.then.334.i
    i32 66, label %if.then.360.i
  ], !dbg !2050

while.cond.381.preheader.i:                       ; preds = %if.end.294.i
  %cmp382.1306.i = icmp eq i32 %call290.i, 48, !dbg !2052
  br i1 %cmp382.1306.i, label %while.body.384.i.preheader, label %while.cond.387.preheader.i, !dbg !2053

while.body.384.i.preheader:                       ; preds = %while.cond.381.preheader.i
  br label %while.body.384.i, !dbg !2054

if.then.307.i:                                    ; preds = %if.end.294.i
  %call308.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 %call308.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom309.i = sext i32 %call308.i to i64, !dbg !2057
  %104 = load i16*, i16** %call281.i.lcssa, align 8, !dbg !2057, !tbaa !1169
  %arrayidx311.i = getelementptr i16, i16* %104, i64 %idxprom309.i, !dbg !2057
  %105 = load i16, i16* %arrayidx311.i, align 2, !dbg !2057, !tbaa !1980
  %and313.i = and i16 %105, 4096, !dbg !2057
  %tobool314.i = icmp eq i16 %and313.i, 0, !dbg !2057
  br i1 %tobool314.i, label %if.then.315.i, label %do.body.318.i.preheader, !dbg !2059

do.body.318.i.preheader:                          ; preds = %if.then.307.i
  br label %do.body.318.i, !dbg !2060

if.then.315.i:                                    ; preds = %if.then.307.i
  %done316.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2062
  store i32 13, i32* %done316.i, align 4, !dbg !2064, !tbaa !907
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2065
  tail call void @llvm.dbg.value(metadata i32 %call308.i, i64 0, metadata !865, metadata !893) #2, !dbg !2067
  %cmp.i.1044.i = icmp eq i32 %call308.i, -1, !dbg !2068
  br i1 %cmp.i.1044.i, label %tok_get.exit, label %if.then.i.1049.i, !dbg !2069

if.then.i.1049.i:                                 ; preds = %if.then.315.i
  %106 = load i8*, i8** %cur114.i, align 8, !dbg !2070, !tbaa !1284
  %incdec.ptr.i.1046.i = getelementptr i8, i8* %106, i64 -1, !dbg !2070
  store i8* %incdec.ptr.i.1046.i, i8** %cur114.i, align 8, !dbg !2070, !tbaa !1284
  %107 = load i8*, i8** %buf.i.i, align 8, !dbg !2071, !tbaa !1097
  %cmp1.i.1048.i = icmp ult i8* %incdec.ptr.i.1046.i, %107, !dbg !2072
  br i1 %cmp1.i.1048.i, label %if.then.2.i.1050.i, label %if.end.i.1053.i, !dbg !2073

if.then.2.i.1050.i:                               ; preds = %if.then.i.1049.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2074
  unreachable, !dbg !2074

if.end.i.1053.i:                                  ; preds = %if.then.i.1049.i
  %108 = load i8, i8* %incdec.ptr.i.1046.i, align 1, !dbg !2075, !tbaa !967
  %conv.i.1051.i = sext i8 %108 to i32, !dbg !2075
  %cmp4.i.1052.i = icmp eq i32 %conv.i.1051.i, %call308.i, !dbg !2076
  br i1 %cmp4.i.1052.i, label %tok_get.exit, label %if.then.6.i.1055.i, !dbg !2077

if.then.6.i.1055.i:                               ; preds = %if.end.i.1053.i
  %conv7.i.1054.i = trunc i32 %call308.i to i8, !dbg !2078
  store i8 %conv7.i.1054.i, i8* %incdec.ptr.i.1046.i, align 1, !dbg !2079, !tbaa !967
  br label %tok_get.exit, !dbg !2080

do.body.318.i:                                    ; preds = %do.body.318.i.preheader, %do.body.318.i
  %call319.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %call319.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom321.i = sext i32 %call319.i to i64, !dbg !2081
  %109 = load i16*, i16** %call281.i.lcssa, align 8, !dbg !2081, !tbaa !1169
  %arrayidx323.i = getelementptr i16, i16* %109, i64 %idxprom321.i, !dbg !2081
  %110 = load i16, i16* %arrayidx323.i, align 2, !dbg !2081, !tbaa !1980
  %and325.i = and i16 %110, 4096, !dbg !2083
  %tobool326.i = icmp eq i16 %and325.i, 0, !dbg !2083
  br i1 %tobool326.i, label %if.end.496.i.loopexit, label %do.body.318.i, !dbg !2083

if.then.334.i:                                    ; preds = %if.end.294.i
  %call335.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2084
  tail call void @llvm.dbg.value(metadata i32 %call335.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %111 = and i32 %call335.i, -8, !dbg !2086
  %112 = icmp eq i32 %111, 48, !dbg !2086
  br i1 %112, label %do.body.344.i.preheader, label %if.then.341.i, !dbg !2086

do.body.344.i.preheader:                          ; preds = %if.then.334.i
  br label %do.body.344.i, !dbg !2088

if.then.341.i:                                    ; preds = %if.then.334.i
  %done342.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2090
  store i32 13, i32* %done342.i, align 4, !dbg !2092, !tbaa !907
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %call335.i, i64 0, metadata !865, metadata !893) #2, !dbg !2095
  %cmp.i.1057.i = icmp eq i32 %call335.i, -1, !dbg !2096
  br i1 %cmp.i.1057.i, label %tok_get.exit, label %if.then.i.1062.i, !dbg !2097

if.then.i.1062.i:                                 ; preds = %if.then.341.i
  %113 = load i8*, i8** %cur114.i, align 8, !dbg !2098, !tbaa !1284
  %incdec.ptr.i.1059.i = getelementptr i8, i8* %113, i64 -1, !dbg !2098
  store i8* %incdec.ptr.i.1059.i, i8** %cur114.i, align 8, !dbg !2098, !tbaa !1284
  %114 = load i8*, i8** %buf.i.i, align 8, !dbg !2099, !tbaa !1097
  %cmp1.i.1061.i = icmp ult i8* %incdec.ptr.i.1059.i, %114, !dbg !2100
  br i1 %cmp1.i.1061.i, label %if.then.2.i.1063.i, label %if.end.i.1066.i, !dbg !2101

if.then.2.i.1063.i:                               ; preds = %if.then.i.1062.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2102
  unreachable, !dbg !2102

if.end.i.1066.i:                                  ; preds = %if.then.i.1062.i
  %115 = load i8, i8* %incdec.ptr.i.1059.i, align 1, !dbg !2103, !tbaa !967
  %conv.i.1064.i = sext i8 %115 to i32, !dbg !2103
  %cmp4.i.1065.i = icmp eq i32 %conv.i.1064.i, %call335.i, !dbg !2104
  br i1 %cmp4.i.1065.i, label %tok_get.exit, label %if.then.6.i.1068.i, !dbg !2105

if.then.6.i.1068.i:                               ; preds = %if.end.i.1066.i
  %conv7.i.1067.i = trunc i32 %call335.i to i8, !dbg !2106
  store i8 %conv7.i.1067.i, i8* %incdec.ptr.i.1059.i, align 1, !dbg !2107, !tbaa !967
  br label %tok_get.exit, !dbg !2108

do.body.344.i:                                    ; preds = %do.body.344.i.preheader, %do.body.344.i
  %call345.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2088
  tail call void @llvm.dbg.value(metadata i32 %call345.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %116 = and i32 %call345.i, -8, !dbg !2109
  %117 = icmp eq i32 %116, 48, !dbg !2109
  br i1 %117, label %do.body.344.i, label %if.end.496.i.loopexit113, !dbg !2110

if.then.360.i:                                    ; preds = %if.end.294.i
  %call361.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %call361.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %118 = and i32 %call361.i, -2, !dbg !2114
  %call361.cmp.i = icmp eq i32 %118, 48, !dbg !2114
  br i1 %call361.cmp.i, label %do.body.370.i.preheader, label %if.then.367.i, !dbg !2114

do.body.370.i.preheader:                          ; preds = %if.then.360.i
  br label %do.body.370.i, !dbg !2116

if.then.367.i:                                    ; preds = %if.then.360.i
  %done368.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2118
  store i32 13, i32* %done368.i, align 4, !dbg !2120, !tbaa !907
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %call361.i, i64 0, metadata !865, metadata !893) #2, !dbg !2123
  %cmp.i.1070.i = icmp eq i32 %call361.i, -1, !dbg !2124
  br i1 %cmp.i.1070.i, label %tok_get.exit, label %if.then.i.1075.i, !dbg !2125

if.then.i.1075.i:                                 ; preds = %if.then.367.i
  %119 = load i8*, i8** %cur114.i, align 8, !dbg !2126, !tbaa !1284
  %incdec.ptr.i.1072.i = getelementptr i8, i8* %119, i64 -1, !dbg !2126
  store i8* %incdec.ptr.i.1072.i, i8** %cur114.i, align 8, !dbg !2126, !tbaa !1284
  %120 = load i8*, i8** %buf.i.i, align 8, !dbg !2127, !tbaa !1097
  %cmp1.i.1074.i = icmp ult i8* %incdec.ptr.i.1072.i, %120, !dbg !2128
  br i1 %cmp1.i.1074.i, label %if.then.2.i.1076.i, label %if.end.i.1079.i, !dbg !2129

if.then.2.i.1076.i:                               ; preds = %if.then.i.1075.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2130
  unreachable, !dbg !2130

if.end.i.1079.i:                                  ; preds = %if.then.i.1075.i
  %121 = load i8, i8* %incdec.ptr.i.1072.i, align 1, !dbg !2131, !tbaa !967
  %conv.i.1077.i = sext i8 %121 to i32, !dbg !2131
  %cmp4.i.1078.i = icmp eq i32 %conv.i.1077.i, %call361.i, !dbg !2132
  br i1 %cmp4.i.1078.i, label %tok_get.exit, label %if.then.6.i.1081.i, !dbg !2133

if.then.6.i.1081.i:                               ; preds = %if.end.i.1079.i
  %conv7.i.1080.i = trunc i32 %call361.i to i8, !dbg !2134
  store i8 %conv7.i.1080.i, i8* %incdec.ptr.i.1072.i, align 1, !dbg !2135, !tbaa !967
  br label %tok_get.exit, !dbg !2136

do.body.370.i:                                    ; preds = %do.body.370.i.preheader, %do.body.370.i
  %call371.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2116
  tail call void @llvm.dbg.value(metadata i32 %call371.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %122 = and i32 %call371.i, -2, !dbg !2137
  %123 = icmp eq i32 %122, 48, !dbg !2137
  br i1 %123, label %do.body.370.i, label %if.end.496.i.loopexit114, !dbg !2138

while.cond.387.preheader.i.loopexit:              ; preds = %while.body.384.i
  %call385.i.lcssa = phi i32 [ %call385.i, %while.body.384.i ]
  br label %while.cond.387.preheader.i, !dbg !2141

while.cond.387.preheader.i:                       ; preds = %while.cond.387.preheader.i.loopexit, %while.cond.381.preheader.i
  %c.5.lcssa.i = phi i32 [ %call290.i, %while.cond.381.preheader.i ], [ %call385.i.lcssa, %while.cond.387.preheader.i.loopexit ], !dbg !1665
  %idxprom388.1301.i = sext i32 %c.5.lcssa.i to i64, !dbg !2141
  %124 = load i16*, i16** %call281.i.lcssa, align 8, !dbg !2141, !tbaa !1169
  %arrayidx390.1302.i = getelementptr i16, i16* %124, i64 %idxprom388.1301.i, !dbg !2141
  %125 = load i16, i16* %arrayidx390.1302.i, align 2, !dbg !2141, !tbaa !1980
  %and392.1303.i = and i16 %125, 2048, !dbg !2144
  %tobool393.1304.i = icmp eq i16 %and392.1303.i, 0, !dbg !2144
  br i1 %tobool393.1304.i, label %while.end.396.i, label %while.body.394.i.preheader, !dbg !2144

while.body.394.i.preheader:                       ; preds = %while.cond.387.preheader.i
  br label %while.body.394.i, !dbg !2145

while.body.384.i:                                 ; preds = %while.body.384.i.preheader, %while.body.384.i
  %call385.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 %call385.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp382.i = icmp eq i32 %call385.i, 48, !dbg !2052
  br i1 %cmp382.i, label %while.body.384.i, label %while.cond.387.preheader.i.loopexit, !dbg !2053

while.body.394.i:                                 ; preds = %while.body.394.i.preheader, %while.body.394.i
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !719, metadata !893) #2, !dbg !2145
  %call395.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2146
  tail call void @llvm.dbg.value(metadata i32 %call395.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom388.i = sext i32 %call395.i to i64, !dbg !2141
  %126 = load i16*, i16** %call281.i.lcssa, align 8, !dbg !2141, !tbaa !1169
  %arrayidx390.i = getelementptr i16, i16* %126, i64 %idxprom388.i, !dbg !2141
  %127 = load i16, i16* %arrayidx390.i, align 2, !dbg !2141, !tbaa !1980
  %and392.i = and i16 %127, 2048, !dbg !2144
  %tobool393.i = icmp eq i16 %and392.i, 0, !dbg !2144
  br i1 %tobool393.i, label %while.end.396.i.loopexit, label %while.body.394.i, !dbg !2144

while.end.396.i.loopexit:                         ; preds = %while.body.394.i
  %call395.i.lcssa = phi i32 [ %call395.i, %while.body.394.i ]
  br label %while.end.396.i, !dbg !2148

while.end.396.i:                                  ; preds = %while.end.396.i.loopexit, %while.cond.387.preheader.i
  %c.6.lcssa.i = phi i32 [ %c.5.lcssa.i, %while.cond.387.preheader.i ], [ %call395.i.lcssa, %while.end.396.i.loopexit ], !dbg !1665
  %nonzero.0.lcssa.i = phi i32 [ 0, %while.cond.387.preheader.i ], [ 1, %while.end.396.i.loopexit ], !dbg !1665
  %cmp397.i = icmp eq i32 %c.6.lcssa.i, 46, !dbg !2148
  br i1 %cmp397.i, label %do.body.442.preheader.i, label %if.else.400.i, !dbg !2150

if.else.400.i:                                    ; preds = %while.end.396.i
  %128 = and i32 %c.6.lcssa.i, -33, !dbg !2151
  switch i32 %128, label %if.else.414.i [
    i32 69, label %exponent.i
    i32 74, label %imaginary.i
  ], !dbg !2151

if.else.414.i:                                    ; preds = %if.else.400.i
  %tobool415.i = icmp eq i32 %nonzero.0.lcssa.i, 0, !dbg !2153
  br i1 %tobool415.i, label %if.end.496.i, label %if.then.416.i, !dbg !2156

if.then.416.i:                                    ; preds = %if.else.414.i
  %done417.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2157
  store i32 13, i32* %done417.i, align 4, !dbg !2159, !tbaa !907
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %call395.i, i64 0, metadata !865, metadata !893) #2, !dbg !2162
  %cmp.i.1083.i = icmp eq i32 %c.6.lcssa.i, -1, !dbg !2163
  br i1 %cmp.i.1083.i, label %tok_get.exit, label %if.then.i.1088.i, !dbg !2164

if.then.i.1088.i:                                 ; preds = %if.then.416.i
  %129 = load i8*, i8** %cur114.i, align 8, !dbg !2165, !tbaa !1284
  %incdec.ptr.i.1085.i = getelementptr i8, i8* %129, i64 -1, !dbg !2165
  store i8* %incdec.ptr.i.1085.i, i8** %cur114.i, align 8, !dbg !2165, !tbaa !1284
  %130 = load i8*, i8** %buf.i.i, align 8, !dbg !2166, !tbaa !1097
  %cmp1.i.1087.i = icmp ult i8* %incdec.ptr.i.1085.i, %130, !dbg !2167
  br i1 %cmp1.i.1087.i, label %if.then.2.i.1089.i, label %if.end.i.1092.i, !dbg !2168

if.then.2.i.1089.i:                               ; preds = %if.then.i.1088.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2169
  unreachable, !dbg !2169

if.end.i.1092.i:                                  ; preds = %if.then.i.1088.i
  %131 = load i8, i8* %incdec.ptr.i.1085.i, align 1, !dbg !2170, !tbaa !967
  %conv.i.1090.i = sext i8 %131 to i32, !dbg !2170
  %cmp4.i.1091.i = icmp eq i32 %conv.i.1090.i, %c.6.lcssa.i, !dbg !2171
  br i1 %cmp4.i.1091.i, label %tok_get.exit, label %if.then.6.i.1094.i, !dbg !2172

if.then.6.i.1094.i:                               ; preds = %if.end.i.1092.i
  %conv7.i.1093.i = trunc i32 %c.6.lcssa.i to i8, !dbg !2173
  store i8 %conv7.i.1093.i, i8* %incdec.ptr.i.1085.i, align 1, !dbg !2174, !tbaa !967
  br label %tok_get.exit, !dbg !2175

do.body.429.i:                                    ; preds = %do.body.429.i.preheader, %do.body.429.i
  %call430.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2043
  tail call void @llvm.dbg.value(metadata i32 %call430.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom432.i = sext i32 %call430.i to i64, !dbg !2176
  %132 = load i16*, i16** %call281.i.lcssa, align 8, !dbg !2176, !tbaa !1169
  %arrayidx434.i = getelementptr i16, i16* %132, i64 %idxprom432.i, !dbg !2176
  %133 = load i16, i16* %arrayidx434.i, align 2, !dbg !2176, !tbaa !1980
  %and436.i = and i16 %133, 2048, !dbg !2178
  %tobool437.i = icmp eq i16 %and436.i, 0, !dbg !2178
  br i1 %tobool437.i, label %do.end.438.i, label %do.body.429.i, !dbg !2178

do.end.438.i:                                     ; preds = %do.body.429.i
  %call430.i.lcssa = phi i32 [ %call430.i, %do.body.429.i ]
  %cmp439.i = icmp eq i32 %call430.i.lcssa, 46, !dbg !2179
  br i1 %cmp439.i, label %do.body.442.preheader.i, label %if.end.452.i, !dbg !2182

do.body.442.preheader.i:                          ; preds = %do.end.438.i, %while.end.396.i, %if.then.289.i, %if.then.255.i
  %call446.pre-phi.i = phi i16** [ %call281.i.lcssa, %do.end.438.i ], [ %call281.i.lcssa, %if.then.289.i ], [ %call258.i, %if.then.255.i ], [ %call281.i.lcssa, %while.end.396.i ], !dbg !2183
  br label %do.body.442.i, !dbg !2186

do.body.442.i:                                    ; preds = %do.body.442.i, %do.body.442.preheader.i
  %call443.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2186
  tail call void @llvm.dbg.value(metadata i32 %call443.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom445.i = sext i32 %call443.i to i64, !dbg !2183
  %134 = load i16*, i16** %call446.pre-phi.i, align 8, !dbg !2183, !tbaa !1169
  %arrayidx447.i = getelementptr i16, i16* %134, i64 %idxprom445.i, !dbg !2183
  %135 = load i16, i16* %arrayidx447.i, align 2, !dbg !2183, !tbaa !1980
  %and449.i = and i16 %135, 2048, !dbg !2188
  %tobool450.i = icmp eq i16 %and449.i, 0, !dbg !2188
  br i1 %tobool450.i, label %if.end.452.i.loopexit, label %do.body.442.i, !dbg !2188

if.end.452.i.loopexit:                            ; preds = %do.body.442.i
  %call443.i.lcssa = phi i32 [ %call443.i, %do.body.442.i ]
  br label %if.end.452.i, !dbg !2189

if.end.452.i:                                     ; preds = %if.end.452.i.loopexit, %do.end.438.i
  %c.7.i = phi i32 [ %call430.i.lcssa, %do.end.438.i ], [ %call443.i.lcssa, %if.end.452.i.loopexit ], !dbg !1665
  %136 = and i32 %c.7.i, -33, !dbg !2189
  %137 = icmp eq i32 %136, 69, !dbg !2189
  br i1 %137, label %exponent.i, label %if.end.487.i, !dbg !2189

exponent.i:                                       ; preds = %if.end.452.i, %if.else.400.i
  %call459.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 %call459.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call459.i, label %if.end.467.i [
    i32 45, label %if.then.465.i
    i32 43, label %if.then.465.i
  ], !dbg !2193

if.then.465.i:                                    ; preds = %exponent.i, %exponent.i
  %call466.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 %call466.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %if.end.467.i, !dbg !2196

if.end.467.i:                                     ; preds = %if.then.465.i, %exponent.i
  %c.8.i = phi i32 [ %call466.i, %if.then.465.i ], [ %call459.i, %exponent.i ], !dbg !1665
  %idxprom468.i = sext i32 %c.8.i to i64, !dbg !2197
  %call469.i = tail call i16** @__ctype_b_loc() #1, !dbg !2197
  %138 = load i16*, i16** %call469.i, align 8, !dbg !2197, !tbaa !1169
  %arrayidx470.i = getelementptr i16, i16* %138, i64 %idxprom468.i, !dbg !2197
  %139 = load i16, i16* %arrayidx470.i, align 2, !dbg !2197, !tbaa !1980
  %and472.i = and i16 %139, 2048, !dbg !2197
  %tobool473.i = icmp eq i16 %and472.i, 0, !dbg !2197
  br i1 %tobool473.i, label %if.then.474.i, label %do.body.477.i.preheader, !dbg !2199

do.body.477.i.preheader:                          ; preds = %if.end.467.i
  br label %do.body.477.i, !dbg !2200

if.then.474.i:                                    ; preds = %if.end.467.i
  %done475.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2202
  store i32 13, i32* %done475.i, align 4, !dbg !2204, !tbaa !907
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %c.8.i, i64 0, metadata !865, metadata !893) #2, !dbg !2207
  %cmp.i.1096.i = icmp eq i32 %c.8.i, -1, !dbg !2208
  br i1 %cmp.i.1096.i, label %tok_get.exit, label %if.then.i.1101.i, !dbg !2209

if.then.i.1101.i:                                 ; preds = %if.then.474.i
  %140 = load i8*, i8** %cur114.i, align 8, !dbg !2210, !tbaa !1284
  %incdec.ptr.i.1098.i = getelementptr i8, i8* %140, i64 -1, !dbg !2210
  store i8* %incdec.ptr.i.1098.i, i8** %cur114.i, align 8, !dbg !2210, !tbaa !1284
  %141 = load i8*, i8** %buf.i.i, align 8, !dbg !2211, !tbaa !1097
  %cmp1.i.1100.i = icmp ult i8* %incdec.ptr.i.1098.i, %141, !dbg !2212
  br i1 %cmp1.i.1100.i, label %if.then.2.i.1102.i, label %if.end.i.1105.i, !dbg !2213

if.then.2.i.1102.i:                               ; preds = %if.then.i.1101.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2214
  unreachable, !dbg !2214

if.end.i.1105.i:                                  ; preds = %if.then.i.1101.i
  %142 = load i8, i8* %incdec.ptr.i.1098.i, align 1, !dbg !2215, !tbaa !967
  %conv.i.1103.i = sext i8 %142 to i32, !dbg !2215
  %cmp4.i.1104.i = icmp eq i32 %conv.i.1103.i, %c.8.i, !dbg !2216
  br i1 %cmp4.i.1104.i, label %tok_get.exit, label %if.then.6.i.1107.i, !dbg !2217

if.then.6.i.1107.i:                               ; preds = %if.end.i.1105.i
  %conv7.i.1106.i = trunc i32 %c.8.i to i8, !dbg !2218
  store i8 %conv7.i.1106.i, i8* %incdec.ptr.i.1098.i, align 1, !dbg !2219, !tbaa !967
  br label %tok_get.exit, !dbg !2220

do.body.477.i:                                    ; preds = %do.body.477.i.preheader, %do.body.477.i
  %call478.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %call478.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %idxprom480.i = sext i32 %call478.i to i64, !dbg !2221
  %143 = load i16*, i16** %call469.i, align 8, !dbg !2221, !tbaa !1169
  %arrayidx482.i = getelementptr i16, i16* %143, i64 %idxprom480.i, !dbg !2221
  %144 = load i16, i16* %arrayidx482.i, align 2, !dbg !2221, !tbaa !1980
  %and484.i = and i16 %144, 2048, !dbg !2223
  %tobool485.i = icmp eq i16 %and484.i, 0, !dbg !2223
  br i1 %tobool485.i, label %if.end.487.i.loopexit, label %do.body.477.i, !dbg !2223

if.end.487.i.loopexit:                            ; preds = %do.body.477.i
  %call478.i.lcssa = phi i32 [ %call478.i, %do.body.477.i ]
  br label %if.end.487.i, !dbg !2224

if.end.487.i:                                     ; preds = %if.end.487.i.loopexit, %if.end.452.i
  %c.9.i = phi i32 [ %c.7.i, %if.end.452.i ], [ %call478.i.lcssa, %if.end.487.i.loopexit ], !dbg !1665
  %145 = and i32 %c.9.i, -33, !dbg !2224
  %146 = icmp eq i32 %145, 74, !dbg !2224
  br i1 %146, label %imaginary.i, label %if.end.496.i, !dbg !2224

imaginary.i:                                      ; preds = %if.end.487.i, %if.else.400.i, %if.end.294.i
  %call494.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %call494.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %if.end.496.i, !dbg !2227

if.end.496.i.loopexit:                            ; preds = %do.body.318.i
  %call319.i.lcssa = phi i32 [ %call319.i, %do.body.318.i ]
  br label %if.end.496.i, !dbg !2228

if.end.496.i.loopexit113:                         ; preds = %do.body.344.i
  %call345.i.lcssa = phi i32 [ %call345.i, %do.body.344.i ]
  br label %if.end.496.i, !dbg !2228

if.end.496.i.loopexit114:                         ; preds = %do.body.370.i
  %call371.i.lcssa = phi i32 [ %call371.i, %do.body.370.i ]
  br label %if.end.496.i, !dbg !2228

if.end.496.i:                                     ; preds = %if.end.496.i.loopexit114, %if.end.496.i.loopexit113, %if.end.496.i.loopexit, %imaginary.i, %if.end.487.i, %if.else.414.i
  %c.10.i = phi i32 [ %call494.i, %imaginary.i ], [ %c.9.i, %if.end.487.i ], [ %c.6.lcssa.i, %if.else.414.i ], [ %call319.i.lcssa, %if.end.496.i.loopexit ], [ %call345.i.lcssa, %if.end.496.i.loopexit113 ], [ %call371.i.lcssa, %if.end.496.i.loopexit114 ], !dbg !1665
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 %c.10.i, i64 0, metadata !865, metadata !893) #2, !dbg !2230
  %cmp.i.1109.i = icmp eq i32 %c.10.i, -1, !dbg !2231
  br i1 %cmp.i.1109.i, label %tok_backup.exit1121.i, label %if.then.i.1114.i, !dbg !2232

if.then.i.1114.i:                                 ; preds = %if.end.496.i
  %147 = load i8*, i8** %cur114.i, align 8, !dbg !2233, !tbaa !1284
  %incdec.ptr.i.1111.i = getelementptr i8, i8* %147, i64 -1, !dbg !2233
  store i8* %incdec.ptr.i.1111.i, i8** %cur114.i, align 8, !dbg !2233, !tbaa !1284
  %148 = load i8*, i8** %buf.i.i, align 8, !dbg !2234, !tbaa !1097
  %cmp1.i.1113.i = icmp ult i8* %incdec.ptr.i.1111.i, %148, !dbg !2235
  br i1 %cmp1.i.1113.i, label %if.then.2.i.1115.i, label %if.end.i.1118.i, !dbg !2236

if.then.2.i.1115.i:                               ; preds = %if.then.i.1114.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2237
  unreachable, !dbg !2237

if.end.i.1118.i:                                  ; preds = %if.then.i.1114.i
  %149 = load i8, i8* %incdec.ptr.i.1111.i, align 1, !dbg !2238, !tbaa !967
  %conv.i.1116.i = sext i8 %149 to i32, !dbg !2238
  %cmp4.i.1117.i = icmp eq i32 %conv.i.1116.i, %c.10.i, !dbg !2239
  br i1 %cmp4.i.1117.i, label %tok_backup.exit1121.i, label %if.then.6.i.1120.i, !dbg !2240

if.then.6.i.1120.i:                               ; preds = %if.end.i.1118.i
  %conv7.i.1119.i = trunc i32 %c.10.i to i8, !dbg !2241
  store i8 %conv7.i.1119.i, i8* %incdec.ptr.i.1111.i, align 1, !dbg !2242, !tbaa !967
  br label %tok_backup.exit1121.i, !dbg !2243

tok_backup.exit1121.i:                            ; preds = %if.then.6.i.1120.i, %if.end.i.1118.i, %if.end.496.i
  %150 = load i64, i64* %1, align 8, !dbg !2244, !tbaa !1657
  %151 = bitcast i8** %p_start to i64*, !dbg !2245
  store i64 %150, i64* %151, align 8, !dbg !2245, !tbaa !1169
  %152 = load i64, i64* %0, align 8, !dbg !2246, !tbaa !1284
  %153 = bitcast i8** %p_end to i64*, !dbg !2247
  store i64 %152, i64* %153, align 8, !dbg !2247, !tbaa !1169
  br label %tok_get.exit, !dbg !2248

letter_quote.i.loopexit:                          ; preds = %if.end.197.i, %if.end.197.i
  %call198.i.lcssa = phi i32 [ %call198.i, %if.end.197.i ], [ %call198.i, %if.end.197.i ]
  br label %letter_quote.i, !dbg !2249

letter_quote.i:                                   ; preds = %letter_quote.i.loopexit, %if.end.279.i
  %c.11.i = phi i32 [ %c.1.i, %if.end.279.i ], [ %call198.i.lcssa, %letter_quote.i.loopexit ], !dbg !1665
  switch i32 %c.11.i, label %if.end.580.i [
    i32 39, label %if.then.506.i
    i32 34, label %if.then.506.i
    i32 92, label %if.then.570.i
  ], !dbg !2249

if.then.506.i:                                    ; preds = %letter_quote.i, %letter_quote.i
  %c.11.i.lcssa150 = phi i32 [ %c.11.i, %letter_quote.i ], [ %c.11.i, %letter_quote.i ]
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !728, metadata !893) #2, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !731, metadata !893) #2, !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !732, metadata !893) #2, !dbg !2252
  %call507.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 %call507.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp508.i = icmp eq i32 %call507.i, %c.11.i.lcssa150, !dbg !2254
  br i1 %cmp508.i, label %if.then.510.i, label %if.end.517.i, !dbg !2256

if.then.510.i:                                    ; preds = %if.then.506.i
  %call511.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %call511.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp512.i = icmp eq i32 %call511.i, %c.11.i.lcssa150, !dbg !2259
  %..i = select i1 %cmp512.i, i32 3, i32 1, !dbg !2261
  %154 = zext i1 %cmp512.i to i32, !dbg !2261
  %.955.i = xor i32 %154, 1, !dbg !2261
  br label %if.end.517.i, !dbg !2261

if.end.517.i:                                     ; preds = %if.then.510.i, %if.then.506.i
  %quote_size.0.i = phi i32 [ 1, %if.then.506.i ], [ %..i, %if.then.510.i ], !dbg !1665
  %end_quote_size.0.i = phi i32 [ 0, %if.then.506.i ], [ %.955.i, %if.then.510.i ], !dbg !1665
  %c.12.i = phi i32 [ %call507.i, %if.then.506.i ], [ %call511.i, %if.then.510.i ], !dbg !1665
  %cmp518.i = icmp eq i32 %c.12.i, %c.11.i.lcssa150, !dbg !2262
  %cmp.i.1122.i = icmp eq i32 %c.12.i, -1, !dbg !2264
  %or.cond1219.i = or i1 %cmp518.i, %cmp.i.1122.i, !dbg !2266
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2267
  tail call void @llvm.dbg.value(metadata i32 %c.12.i, i64 0, metadata !865, metadata !893) #2, !dbg !2268
  br i1 %or.cond1219.i, label %while.cond.522.preheader.i, label %if.then.i.1127.i, !dbg !2266

if.then.i.1127.i:                                 ; preds = %if.end.517.i
  %155 = load i8*, i8** %cur114.i, align 8, !dbg !2269, !tbaa !1284
  %incdec.ptr.i.1124.i = getelementptr i8, i8* %155, i64 -1, !dbg !2269
  store i8* %incdec.ptr.i.1124.i, i8** %cur114.i, align 8, !dbg !2269, !tbaa !1284
  %156 = load i8*, i8** %buf.i.i, align 8, !dbg !2270, !tbaa !1097
  %cmp1.i.1126.i = icmp ult i8* %incdec.ptr.i.1124.i, %156, !dbg !2271
  br i1 %cmp1.i.1126.i, label %if.then.2.i.1128.i, label %if.end.i.1131.i, !dbg !2272

if.then.2.i.1128.i:                               ; preds = %if.then.i.1127.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2273
  unreachable, !dbg !2273

if.end.i.1131.i:                                  ; preds = %if.then.i.1127.i
  %157 = load i8, i8* %incdec.ptr.i.1124.i, align 1, !dbg !2274, !tbaa !967
  %conv.i.1129.i = sext i8 %157 to i32, !dbg !2274
  %cmp4.i.1130.i = icmp eq i32 %conv.i.1129.i, %c.12.i, !dbg !2275
  br i1 %cmp4.i.1130.i, label %while.cond.522.preheader.i, label %if.then.6.i.1133.i, !dbg !2276

if.then.6.i.1133.i:                               ; preds = %if.end.i.1131.i
  %conv7.i.1132.i = trunc i32 %c.12.i to i8, !dbg !2277
  store i8 %conv7.i.1132.i, i8* %incdec.ptr.i.1124.i, align 1, !dbg !2278, !tbaa !967
  br label %while.cond.522.preheader.i, !dbg !2279

while.cond.522.preheader.i:                       ; preds = %if.then.6.i.1133.i, %if.end.i.1131.i, %if.end.517.i
  %cmp523.1299.i = icmp eq i32 %end_quote_size.0.i, %quote_size.0.i, !dbg !2280
  br i1 %cmp523.1299.i, label %while.end.561.i, label %while.body.525.lr.ph.i, !dbg !2281

while.body.525.lr.ph.i:                           ; preds = %while.cond.522.preheader.i
  %cmp540.i = icmp eq i32 %quote_size.0.i, 1, !dbg !2282
  br i1 %cmp540.i, label %while.body.525.us.i.preheader, label %while.body.525.i.preheader, !dbg !2285

while.body.525.us.i.preheader:                    ; preds = %while.body.525.lr.ph.i
  br label %while.body.525.us.i, !dbg !2286

while.body.525.i.preheader:                       ; preds = %while.body.525.lr.ph.i
  %call526.i.31 = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %call526.i.31, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp527.i.32 = icmp eq i32 %call526.i.31, -1, !dbg !2287
  br i1 %cmp527.i.32, label %if.then.529.i, label %if.end.549.i.preheader, !dbg !2289

if.end.549.i.preheader:                           ; preds = %while.body.525.i.preheader
  br label %if.end.549.i, !dbg !2290

while.body.525.us.i:                              ; preds = %while.body.525.us.i.backedge, %while.body.525.us.i.preheader
  %end_quote_size.11300.us.i = phi i32 [ %end_quote_size.0.i, %while.body.525.us.i.preheader ], [ %end_quote_size.11300.us.i.be, %while.body.525.us.i.backedge ], !dbg !1665
  %call526.us.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %call526.us.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  switch i32 %call526.us.i, label %if.end.549.us.i [
    i32 -1, label %if.then.529.i.loopexit
    i32 10, label %if.then.545.i
  ], !dbg !2289

if.end.549.us.i:                                  ; preds = %while.body.525.us.i
  %cmp550.us.i = icmp eq i32 %call526.us.i, %c.11.i.lcssa150, !dbg !2290
  br i1 %cmp550.us.i, label %while.cond.522.backedge.us.i, label %if.else.554.us.i, !dbg !2292

if.else.554.us.i:                                 ; preds = %if.end.549.us.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !732, metadata !893) #2, !dbg !2252
  %cmp555.us.i = icmp eq i32 %call526.us.i, 92, !dbg !2293
  br i1 %cmp555.us.i, label %if.then.557.us.i, label %while.body.525.us.i.backedge, !dbg !2296

while.body.525.us.i.backedge:                     ; preds = %if.else.554.us.i, %if.then.557.us.i, %while.cond.522.backedge.us.i
  %end_quote_size.11300.us.i.be = phi i32 [ %add553.us.i, %while.cond.522.backedge.us.i ], [ 0, %if.then.557.us.i ], [ 0, %if.else.554.us.i ]
  br label %while.body.525.us.i, !dbg !2286

if.then.557.us.i:                                 ; preds = %if.else.554.us.i
  %call558.us.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %while.body.525.us.i.backedge, !dbg !2298

while.cond.522.backedge.us.i:                     ; preds = %if.end.549.us.i
  %add553.us.i = add i32 %end_quote_size.11300.us.i, 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %add553.us.i, i64 0, metadata !732, metadata !893) #2, !dbg !2252
  %cmp523.us.i = icmp eq i32 %end_quote_size.11300.us.i, 0, !dbg !2280
  br i1 %cmp523.us.i, label %while.end.561.i.loopexit, label %while.body.525.us.i.backedge, !dbg !2281

if.then.529.i.loopexit:                           ; preds = %while.body.525.us.i
  br label %if.then.529.i, !dbg !2300

if.then.529.i.loopexit112:                        ; preds = %while.body.525.i.backedge
  br label %if.then.529.i, !dbg !2300

if.then.529.i:                                    ; preds = %if.then.529.i.loopexit112, %if.then.529.i.loopexit, %while.body.525.i.preheader
  %cmp530.i = icmp eq i32 %quote_size.0.i, 3, !dbg !2300
  %done533.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2303
  %.956.i = select i1 %cmp530.i, i32 23, i32 24, !dbg !2304
  store i32 %.956.i, i32* %done533.i, align 4, !dbg !2305, !tbaa !907
  %inp537.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !2306
  %158 = bitcast i8** %inp537.i to i64*, !dbg !2306
  %159 = load i64, i64* %158, align 8, !dbg !2306, !tbaa !1278
  store i64 %159, i64* %0, align 8, !dbg !2307, !tbaa !1284
  br label %tok_get.exit, !dbg !2308

if.then.545.i:                                    ; preds = %while.body.525.us.i
  %done546.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2309
  store i32 24, i32* %done546.i, align 4, !dbg !2311, !tbaa !907
  %inp547.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !2312
  %160 = bitcast i8** %inp547.i to i64*, !dbg !2312
  %161 = load i64, i64* %160, align 8, !dbg !2312, !tbaa !1278
  store i64 %161, i64* %0, align 8, !dbg !2313, !tbaa !1284
  br label %tok_get.exit, !dbg !2314

if.end.549.i:                                     ; preds = %if.end.549.i.preheader, %while.body.525.i.backedge
  %call526.i34 = phi i32 [ %call526.i, %while.body.525.i.backedge ], [ %call526.i.31, %if.end.549.i.preheader ]
  %end_quote_size.11300.i33 = phi i32 [ %end_quote_size.11300.i.be, %while.body.525.i.backedge ], [ %end_quote_size.0.i, %if.end.549.i.preheader ]
  %cmp550.i = icmp eq i32 %call526.i34, %c.11.i.lcssa150, !dbg !2290
  br i1 %cmp550.i, label %while.cond.522.backedge.i, label %if.else.554.i, !dbg !2292

if.else.554.i:                                    ; preds = %if.end.549.i
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !732, metadata !893) #2, !dbg !2252
  %cmp555.i = icmp eq i32 %call526.i34, 92, !dbg !2293
  br i1 %cmp555.i, label %if.then.557.i, label %while.body.525.i.backedge, !dbg !2296

while.body.525.i.backedge:                        ; preds = %if.else.554.i, %while.cond.522.backedge.i, %if.then.557.i
  %end_quote_size.11300.i.be = phi i32 [ %add553.i, %while.cond.522.backedge.i ], [ 0, %if.then.557.i ], [ 0, %if.else.554.i ]
  %call526.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 %call526.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp527.i = icmp eq i32 %call526.i, -1, !dbg !2287
  br i1 %cmp527.i, label %if.then.529.i.loopexit112, label %if.end.549.i, !dbg !2289

while.cond.522.backedge.i:                        ; preds = %if.end.549.i
  %add553.i = add i32 %end_quote_size.11300.i33, 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %add553.i, i64 0, metadata !732, metadata !893) #2, !dbg !2252
  %cmp523.i = icmp eq i32 %add553.i, %quote_size.0.i, !dbg !2280
  br i1 %cmp523.i, label %while.end.561.i.loopexit111, label %while.body.525.i.backedge, !dbg !2281

if.then.557.i:                                    ; preds = %if.else.554.i
  %call558.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  br label %while.body.525.i.backedge, !dbg !2298

while.end.561.i.loopexit:                         ; preds = %while.cond.522.backedge.us.i
  br label %while.end.561.i, !dbg !2315

while.end.561.i.loopexit111:                      ; preds = %while.cond.522.backedge.i
  br label %while.end.561.i, !dbg !2315

while.end.561.i:                                  ; preds = %while.end.561.i.loopexit111, %while.end.561.i.loopexit, %while.cond.522.preheader.i
  %162 = load i64, i64* %1, align 8, !dbg !2315, !tbaa !1657
  %163 = bitcast i8** %p_start to i64*, !dbg !2316
  store i64 %162, i64* %163, align 8, !dbg !2316, !tbaa !1169
  %164 = load i64, i64* %0, align 8, !dbg !2317, !tbaa !1284
  %165 = bitcast i8** %p_end to i64*, !dbg !2318
  store i64 %164, i64* %165, align 8, !dbg !2318, !tbaa !1169
  br label %tok_get.exit, !dbg !2319

if.then.570.i:                                    ; preds = %letter_quote.i
  %call571.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 %call571.i, i64 0, metadata !707, metadata !893) #2, !dbg !1667
  %cmp572.i = icmp eq i32 %call571.i, 10, !dbg !2321
  br i1 %cmp572.i, label %if.end.578.i, label %if.then.574.i, !dbg !2323

if.then.574.i:                                    ; preds = %if.then.570.i
  %done575.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2324
  store i32 25, i32* %done575.i, align 4, !dbg !2326, !tbaa !907
  %inp576.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !2327
  %166 = bitcast i8** %inp576.i to i64*, !dbg !2327
  %167 = load i64, i64* %166, align 8, !dbg !2327, !tbaa !1278
  store i64 %167, i64* %0, align 8, !dbg !2328, !tbaa !1284
  br label %tok_get.exit, !dbg !2329

if.end.578.i:                                     ; preds = %if.then.570.i
  store i32 1, i32* %cont_line579.i, align 4, !dbg !2330, !tbaa !1973
  br label %again.i, !dbg !2331

if.end.580.i:                                     ; preds = %letter_quote.i
  %c.11.i.lcssa = phi i32 [ %c.11.i, %letter_quote.i ]
  %call581.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2332
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !733, metadata !893) #2, !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !488, metadata !893) #2, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !489, metadata !893) #2, !dbg !2336
  switch i32 %c.11.i.lcssa, label %if.end.597.i [
    i32 61, label %sw.bb.i.i
    i32 33, label %sw.bb.2.i.i
    i32 60, label %sw.bb.5.i.i
    i32 62, label %sw.bb.10.i.i
    i32 43, label %sw.bb.14.i.i
    i32 45, label %sw.bb.17.i.i
    i32 42, label %sw.bb.21.i.i
    i32 47, label %sw.bb.25.i.i
    i32 124, label %sw.bb.29.i.i
    i32 37, label %sw.bb.32.i.i
    i32 38, label %sw.bb.35.i.i
    i32 94, label %sw.bb.38.i.i
  ], !dbg !2337

sw.bb.i.i:                                        ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1340.i
  ], !dbg !2338

sw.epilog.thread1340.i:                           ; preds = %sw.bb.i.i
  %168 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %169 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %168, i64* %169, align 8, !dbg !2340, !tbaa !1169
  %170 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %171 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %170, i64* %171, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.15.i.i, !dbg !2345

sw.bb.2.i.i:                                      ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread.i
  ], !dbg !2346

sw.epilog.thread.i:                               ; preds = %sw.bb.2.i.i
  %172 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %173 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %172, i64* %173, align 8, !dbg !2340, !tbaa !1169
  %174 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %175 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %174, i64* %175, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.default.i.i, !dbg !2345

sw.bb.5.i.i:                                      ; preds = %if.end.580.i
  %switch.tableidx.i.i = add i32 %call581.i, -60, !dbg !2347
  %176 = icmp ult i32 %switch.tableidx.i.i, 3, !dbg !2347
  br i1 %176, label %switch.lookup.i.i, label %if.end.597.i, !dbg !2347

sw.bb.10.i.i:                                     ; preds = %if.end.580.i
  %switch.selectcmp.i.i = icmp eq i32 %call581.i, 62, !dbg !2348
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 34, i32 52, !dbg !2348
  %switch.selectcmp59.i.i = icmp eq i32 %call581.i, 61, !dbg !2348
  br i1 %switch.selectcmp59.i.i, label %sw.bb.4.i.thread.i, label %PyToken_TwoChars.exit.i, !dbg !1665

sw.bb.4.i.thread.i:                               ; preds = %sw.bb.10.i.i
  %call586.1205.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !494, metadata !893) #2, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !495, metadata !893) #2, !dbg !2352
  br label %if.else.591.i, !dbg !2353

sw.bb.14.i.i:                                     ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1337.i
  ], !dbg !2354

sw.epilog.thread1337.i:                           ; preds = %sw.bb.14.i.i
  %177 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %178 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %177, i64* %178, align 8, !dbg !2340, !tbaa !1169
  %179 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %180 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %179, i64* %180, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.7.i.i, !dbg !2345

sw.bb.17.i.i:                                     ; preds = %if.end.580.i
  %switch.selectcmp61.i.i = icmp eq i32 %call581.i, 62, !dbg !2355
  %switch.select62.i.i = select i1 %switch.selectcmp61.i.i, i32 50, i32 52, !dbg !2355
  %switch.selectcmp63.i.i = icmp eq i32 %call581.i, 61, !dbg !2355
  br i1 %switch.selectcmp63.i.i, label %if.then.585.thread.i, label %PyToken_TwoChars.exit.i, !dbg !1665

sw.bb.21.i.i:                                     ; preds = %if.end.580.i
  %switch.selectcmp65.i.i = icmp eq i32 %call581.i, 61, !dbg !2356
  %switch.select66.i.i = select i1 %switch.selectcmp65.i.i, i32 38, i32 52, !dbg !2356
  %switch.selectcmp67.i.i = icmp eq i32 %call581.i, 42, !dbg !2356
  br i1 %switch.selectcmp67.i.i, label %if.then.585.thread1208.i, label %PyToken_TwoChars.exit.i, !dbg !1665

if.then.585.thread1208.i:                         ; preds = %sw.bb.21.i.i
  %call586.1209.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !494, metadata !893) #2, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !495, metadata !893) #2, !dbg !2352
  br label %sw.bb.9.i.i, !dbg !2357

sw.bb.25.i.i:                                     ; preds = %if.end.580.i
  %switch.selectcmp69.i.i = icmp eq i32 %call581.i, 61, !dbg !2358
  %switch.select70.i.i = select i1 %switch.selectcmp69.i.i, i32 39, i32 52, !dbg !2358
  %switch.selectcmp71.i.i = icmp eq i32 %call581.i, 47, !dbg !2358
  br i1 %switch.selectcmp71.i.i, label %if.then.585.thread1212.i, label %PyToken_TwoChars.exit.i, !dbg !1665

if.then.585.thread1212.i:                         ; preds = %sw.bb.25.i.i
  %call586.1213.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !494, metadata !893) #2, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !495, metadata !893) #2, !dbg !2352
  br label %sw.bb.14.i.1138.i, !dbg !2357

sw.bb.29.i.i:                                     ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1338.i
  ], !dbg !2359

sw.epilog.thread1338.i:                           ; preds = %sw.bb.29.i.i
  %181 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %182 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %181, i64* %182, align 8, !dbg !2340, !tbaa !1169
  %183 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %184 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %183, i64* %184, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.11.i.i, !dbg !2345

sw.bb.32.i.i:                                     ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1341.i
  ], !dbg !2360

sw.epilog.thread1341.i:                           ; preds = %sw.bb.32.i.i
  %185 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %186 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %185, i64* %186, align 8, !dbg !2340, !tbaa !1169
  %187 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %188 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %187, i64* %188, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.17.i.1174.i, !dbg !2345

sw.bb.35.i.i:                                     ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1339.i
  ], !dbg !2361

sw.epilog.thread1339.i:                           ; preds = %sw.bb.35.i.i
  %189 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %190 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %189, i64* %190, align 8, !dbg !2340, !tbaa !1169
  %191 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %192 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %191, i64* %192, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.12.i.i, !dbg !2345

sw.bb.38.i.i:                                     ; preds = %if.end.580.i
  switch i32 %call581.i, label %if.then.i.1160.i [
    i32 61, label %if.then.585.thread.i
    i32 -1, label %sw.epilog.thread1342.i
  ], !dbg !2362

sw.epilog.thread1342.i:                           ; preds = %sw.bb.38.i.i
  %193 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %194 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %193, i64* %194, align 8, !dbg !2340, !tbaa !1169
  %195 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %196 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %195, i64* %196, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  br label %sw.bb.20.i.i, !dbg !2345

switch.lookup.i.i:                                ; preds = %sw.bb.5.i.i
  %197 = sext i32 %switch.tableidx.i.i to i64, !dbg !2347
  %switch.gep.i.i = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table, i64 0, i64 %197, !dbg !2347
  %switch.load.i.i = load i32, i32* %switch.gep.i.i, align 4, !dbg !2347
  br label %PyToken_TwoChars.exit.i, !dbg !2347

PyToken_TwoChars.exit.i:                          ; preds = %switch.lookup.i.i, %sw.bb.25.i.i, %sw.bb.21.i.i, %sw.bb.17.i.i, %sw.bb.10.i.i
  %call5821136.i = phi i32 [ %switch.load.i.i, %switch.lookup.i.i ], [ %switch.select.i.i, %sw.bb.10.i.i ], [ %switch.select62.i.i, %sw.bb.17.i.i ], [ %switch.select66.i.i, %sw.bb.21.i.i ], [ %switch.select70.i.i, %sw.bb.25.i.i ], !dbg !1665
  tail call void @llvm.dbg.value(metadata i32 %call5821136.i, i64 0, metadata !735, metadata !893) #2, !dbg !2363
  %cmp583.i = icmp eq i32 %call5821136.i, 52, !dbg !2364
  br i1 %cmp583.i, label %if.end.597.i, label %if.then.585.i, !dbg !2365

if.then.585.thread.i:                             ; preds = %sw.bb.38.i.i, %sw.bb.35.i.i, %sw.bb.32.i.i, %sw.bb.29.i.i, %sw.bb.17.i.i, %sw.bb.14.i.i, %sw.bb.2.i.i, %sw.bb.i.i
  %call58211361197.ph.i = phi i32 [ 37, %sw.bb.17.i.i ], [ 27, %sw.bb.i.i ], [ 28, %sw.bb.2.i.i ], [ 36, %sw.bb.14.i.i ], [ 42, %sw.bb.29.i.i ], [ 40, %sw.bb.32.i.i ], [ 41, %sw.bb.35.i.i ], [ 43, %sw.bb.38.i.i ], !dbg !1665
  %call586.1201.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !494, metadata !893) #2, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !495, metadata !893) #2, !dbg !2352
  br label %if.else.591.i, !dbg !2357

if.then.585.i:                                    ; preds = %PyToken_TwoChars.exit.i
  %call586.i = tail call fastcc i32 @tok_nextc(%struct.tok_state* %tok) #2, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !494, metadata !893) #2, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !495, metadata !893) #2, !dbg !2352
  switch i32 %c.11.i.lcssa, label %if.else.591.i [
    i32 60, label %sw.bb.i.1137.i
    i32 62, label %sw.bb.4.i.i
    i32 42, label %sw.bb.9.i.i
    i32 47, label %sw.bb.14.i.1138.i
    i32 46, label %sw.bb.19.i.i
  ], !dbg !2357

sw.bb.i.1137.i:                                   ; preds = %if.then.585.i
  %cond32.i.i = icmp eq i32 %call581.i, 60, !dbg !2366
  %cond33.i.i = icmp eq i32 %call586.i, 61, !dbg !2367
  %or.cond.i.i = and i1 %cond32.i.i, %cond33.i.i, !dbg !2366
  br i1 %or.cond.i.i, label %cleanup.598.i, label %if.else.591.i, !dbg !2366

sw.bb.4.i.i:                                      ; preds = %if.then.585.i
  %cond30.i.i = icmp eq i32 %call581.i, 62, !dbg !2353
  %cond31.i.i = icmp eq i32 %call586.i, 61, !dbg !2368
  %or.cond34.i.i = and i1 %cond30.i.i, %cond31.i.i, !dbg !2353
  br i1 %or.cond34.i.i, label %cleanup.598.i, label %if.else.591.i, !dbg !2353

sw.bb.9.i.i:                                      ; preds = %if.then.585.i, %if.then.585.thread1208.i
  %call5861211.i = phi i32 [ %call586.1209.i, %if.then.585.thread1208.i ], [ %call586.i, %if.then.585.i ], !dbg !1665
  %call582113611971210.i = phi i32 [ 35, %if.then.585.thread1208.i ], [ %call5821136.i, %if.then.585.i ], !dbg !1665
  %cond28.i.i = icmp eq i32 %call581.i, 42, !dbg !2369
  %cond29.i.i = icmp eq i32 %call5861211.i, 61, !dbg !2370
  %or.cond35.i.i = and i1 %cond28.i.i, %cond29.i.i, !dbg !2369
  br i1 %or.cond35.i.i, label %cleanup.598.i, label %if.else.591.i, !dbg !2369

sw.bb.14.i.1138.i:                                ; preds = %if.then.585.i, %if.then.585.thread1212.i
  %call5861215.i = phi i32 [ %call586.1213.i, %if.then.585.thread1212.i ], [ %call586.i, %if.then.585.i ], !dbg !1665
  %call582113611971214.i = phi i32 [ 47, %if.then.585.thread1212.i ], [ %call5821136.i, %if.then.585.i ], !dbg !1665
  %cond26.i.i = icmp eq i32 %call581.i, 47, !dbg !2371
  %cond27.i.i = icmp eq i32 %call5861215.i, 61, !dbg !2372
  %or.cond36.i.i = and i1 %cond26.i.i, %cond27.i.i, !dbg !2371
  br i1 %or.cond36.i.i, label %cleanup.598.i, label %if.else.591.i, !dbg !2371

sw.bb.19.i.i:                                     ; preds = %if.then.585.i
  %cond.i.1139.i = icmp eq i32 %call581.i, 46, !dbg !2373
  %cond25.i.i = icmp eq i32 %call586.i, 46, !dbg !2374
  %or.cond37.i.i = and i1 %cond.i.1139.i, %cond25.i.i, !dbg !2373
  br i1 %or.cond37.i.i, label %cleanup.598.i, label %if.else.591.i, !dbg !2373

if.else.591.i:                                    ; preds = %sw.bb.19.i.i, %sw.bb.14.i.1138.i, %sw.bb.9.i.i, %sw.bb.4.i.i, %sw.bb.i.1137.i, %if.then.585.i, %if.then.585.thread.i, %sw.bb.4.i.thread.i
  %call5861203.i = phi i32 [ %call586.1201.i, %if.then.585.thread.i ], [ %call586.i, %sw.bb.19.i.i ], [ %call5861215.i, %sw.bb.14.i.1138.i ], [ %call5861211.i, %sw.bb.9.i.i ], [ %call586.i, %sw.bb.4.i.i ], [ %call586.i, %sw.bb.i.1137.i ], [ %call586.i, %if.then.585.i ], [ %call586.1205.i, %sw.bb.4.i.thread.i ], !dbg !1665
  %call582113611971202.i = phi i32 [ %call58211361197.ph.i, %if.then.585.thread.i ], [ %call5821136.i, %sw.bb.19.i.i ], [ %call582113611971214.i, %sw.bb.14.i.1138.i ], [ %call582113611971210.i, %sw.bb.9.i.i ], [ %call5821136.i, %sw.bb.4.i.i ], [ %call5821136.i, %sw.bb.i.1137.i ], [ %call5821136.i, %if.then.585.i ], [ 30, %sw.bb.4.i.thread.i ], !dbg !1665
  tail call void @llvm.dbg.value(metadata i32 52, i64 0, metadata !739, metadata !893) #2, !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2376
  %cmp.i.1142.i = icmp eq i32 %call5861203.i, -1, !dbg !2380
  br i1 %cmp.i.1142.i, label %cleanup.598.i, label %if.then.i.1147.i, !dbg !2381

if.then.i.1147.i:                                 ; preds = %if.else.591.i
  %198 = load i8*, i8** %cur114.i, align 8, !dbg !2382, !tbaa !1284
  %incdec.ptr.i.1144.i = getelementptr i8, i8* %198, i64 -1, !dbg !2382
  store i8* %incdec.ptr.i.1144.i, i8** %cur114.i, align 8, !dbg !2382, !tbaa !1284
  %199 = load i8*, i8** %buf.i.i, align 8, !dbg !2383, !tbaa !1097
  %cmp1.i.1146.i = icmp ult i8* %incdec.ptr.i.1144.i, %199, !dbg !2384
  br i1 %cmp1.i.1146.i, label %if.then.2.i.1148.i, label %if.end.i.1151.i, !dbg !2385

if.then.2.i.1148.i:                               ; preds = %if.then.i.1147.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2386
  unreachable, !dbg !2386

if.end.i.1151.i:                                  ; preds = %if.then.i.1147.i
  %200 = load i8, i8* %incdec.ptr.i.1144.i, align 1, !dbg !2387, !tbaa !967
  %conv.i.1149.i = sext i8 %200 to i32, !dbg !2387
  %cmp4.i.1150.i = icmp eq i32 %conv.i.1149.i, %call5861203.i, !dbg !2388
  br i1 %cmp4.i.1150.i, label %cleanup.598.i, label %if.then.6.i.1153.i, !dbg !2389

if.then.6.i.1153.i:                               ; preds = %if.end.i.1151.i
  %conv7.i.1152.i = trunc i32 %call5861203.i to i8, !dbg !2390
  store i8 %conv7.i.1152.i, i8* %incdec.ptr.i.1144.i, align 1, !dbg !2391, !tbaa !967
  br label %cleanup.598.i, !dbg !2392

if.end.597.i:                                     ; preds = %PyToken_TwoChars.exit.i, %sw.bb.5.i.i, %if.end.580.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !864, metadata !893) #2, !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %call581.i, i64 0, metadata !865, metadata !893) #2, !dbg !2395
  %cmp.i.1155.i = icmp eq i32 %call581.i, -1, !dbg !2396
  br i1 %cmp.i.1155.i, label %cleanup.cont.601.i, label %if.then.i.1160.i, !dbg !2397

if.then.i.1160.i:                                 ; preds = %if.end.597.i, %sw.bb.38.i.i, %sw.bb.35.i.i, %sw.bb.32.i.i, %sw.bb.29.i.i, %sw.bb.14.i.i, %sw.bb.2.i.i, %sw.bb.i.i
  %201 = load i8*, i8** %cur114.i, align 8, !dbg !2398, !tbaa !1284
  %incdec.ptr.i.1157.i = getelementptr i8, i8* %201, i64 -1, !dbg !2398
  store i8* %incdec.ptr.i.1157.i, i8** %cur114.i, align 8, !dbg !2398, !tbaa !1284
  %202 = load i8*, i8** %buf.i.i, align 8, !dbg !2399, !tbaa !1097
  %cmp1.i.1159.i = icmp ult i8* %incdec.ptr.i.1157.i, %202, !dbg !2400
  br i1 %cmp1.i.1159.i, label %if.then.2.i.1161.i, label %if.end.i.1164.i, !dbg !2401

if.then.2.i.1161.i:                               ; preds = %if.then.i.1160.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i64 0, i64 0)) #10, !dbg !2402
  unreachable, !dbg !2402

if.end.i.1164.i:                                  ; preds = %if.then.i.1160.i
  %203 = load i8, i8* %incdec.ptr.i.1157.i, align 1, !dbg !2403, !tbaa !967
  %conv.i.1162.i = sext i8 %203 to i32, !dbg !2403
  %cmp4.i.1163.i = icmp eq i32 %conv.i.1162.i, %call581.i, !dbg !2404
  br i1 %cmp4.i.1163.i, label %cleanup.cont.601.i, label %if.then.6.i.1166.i, !dbg !2405

if.then.6.i.1166.i:                               ; preds = %if.end.i.1164.i
  %conv7.i.1165.i = trunc i32 %call581.i to i8, !dbg !2406
  store i8 %conv7.i.1165.i, i8* %incdec.ptr.i.1157.i, align 1, !dbg !2407, !tbaa !967
  br label %cleanup.cont.601.i, !dbg !2408

cleanup.598.i:                                    ; preds = %if.then.6.i.1153.i, %if.end.i.1151.i, %if.else.591.i, %sw.bb.19.i.i, %sw.bb.14.i.1138.i, %sw.bb.9.i.i, %sw.bb.4.i.i, %sw.bb.i.1137.i
  %token.0.i = phi i32 [ %call582113611971202.i, %if.else.591.i ], [ %call582113611971202.i, %if.end.i.1151.i ], [ %call582113611971202.i, %if.then.6.i.1153.i ], [ 51, %sw.bb.19.i.i ], [ 48, %sw.bb.14.i.1138.i ], [ 46, %sw.bb.9.i.i ], [ 45, %sw.bb.4.i.i ], [ 44, %sw.bb.i.1137.i ], !dbg !1665
  %204 = load i64, i64* %1, align 8, !dbg !2409, !tbaa !1657
  %205 = bitcast i8** %p_start to i64*, !dbg !2410
  store i64 %204, i64* %205, align 8, !dbg !2410, !tbaa !1169
  %206 = load i64, i64* %0, align 8, !dbg !2411, !tbaa !1284
  %207 = bitcast i8** %p_end to i64*, !dbg !2412
  store i64 %206, i64* %207, align 8, !dbg !2412, !tbaa !1169
  br label %tok_get.exit, !dbg !1665

cleanup.cont.601.i:                               ; preds = %if.then.6.i.1166.i, %if.end.i.1164.i, %if.end.597.i
  switch i32 %c.11.i.lcssa, label %sw.epilog.i [
    i32 40, label %sw.bb.i
    i32 91, label %sw.bb.i
    i32 123, label %sw.bb.i
    i32 41, label %sw.bb.604.i
    i32 93, label %sw.bb.604.i
    i32 125, label %sw.bb.604.i
  ], !dbg !2413

sw.bb.i:                                          ; preds = %cleanup.cont.601.i, %cleanup.cont.601.i, %cleanup.cont.601.i
  %208 = load i32, i32* %level246.i, align 4, !dbg !2414, !tbaa !1698
  %inc603.i = add i32 %208, 1, !dbg !2414
  store i32 %inc603.i, i32* %level246.i, align 4, !dbg !2414, !tbaa !1698
  br label %sw.epilog.i, !dbg !2416

sw.bb.604.i:                                      ; preds = %cleanup.cont.601.i, %cleanup.cont.601.i, %cleanup.cont.601.i
  %209 = load i32, i32* %level246.i, align 4, !dbg !2417, !tbaa !1698
  %dec606.i = add i32 %209, -1, !dbg !2417
  store i32 %dec606.i, i32* %level246.i, align 4, !dbg !2417, !tbaa !1698
  br label %sw.epilog.i, !dbg !2418

sw.epilog.i:                                      ; preds = %sw.bb.604.i, %sw.bb.i, %cleanup.cont.601.i
  %210 = load i64, i64* %1, align 8, !dbg !2339, !tbaa !1657
  %211 = bitcast i8** %p_start to i64*, !dbg !2340
  store i64 %210, i64* %211, align 8, !dbg !2340, !tbaa !1169
  %212 = load i64, i64* %0, align 8, !dbg !2341, !tbaa !1284
  %213 = bitcast i8** %p_end to i64*, !dbg !2342
  store i64 %212, i64* %213, align 8, !dbg !2342, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i32 %c.11.i, i64 0, metadata !483, metadata !893) #2, !dbg !2343
  switch i32 %c.11.i.lcssa, label %sw.default.i.i [
    i32 40, label %tok_get.exit
    i32 41, label %sw.bb.1.i.i
    i32 91, label %sw.bb.2.i.1168.i
    i32 93, label %sw.bb.3.i.i
    i32 58, label %sw.bb.4.i.1169.i
    i32 44, label %sw.bb.5.i.1170.i
    i32 59, label %sw.bb.6.i.i
    i32 43, label %sw.bb.7.i.i
    i32 45, label %sw.bb.8.i.i
    i32 42, label %sw.bb.9.i.1171.i
    i32 47, label %sw.bb.10.i.1172.i
    i32 124, label %sw.bb.11.i.i
    i32 38, label %sw.bb.12.i.i
    i32 60, label %sw.bb.13.i.i
    i32 62, label %sw.bb.14.i.1173.i
    i32 61, label %sw.bb.15.i.i
    i32 46, label %sw.bb.16.i.i
    i32 37, label %sw.bb.17.i.1174.i
    i32 123, label %sw.bb.18.i.i
    i32 125, label %sw.bb.19.i.1175.i
    i32 94, label %sw.bb.20.i.i
    i32 126, label %sw.bb.21.i.1176.i
    i32 64, label %sw.bb.22.i.i
  ], !dbg !2345

sw.bb.1.i.i:                                      ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2419

sw.bb.2.i.1168.i:                                 ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2420

sw.bb.3.i.i:                                      ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2421

sw.bb.4.i.1169.i:                                 ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2422

sw.bb.5.i.1170.i:                                 ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2423

sw.bb.6.i.i:                                      ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2424

sw.bb.7.i.i:                                      ; preds = %sw.epilog.i, %sw.epilog.thread1337.i
  br label %tok_get.exit, !dbg !2425

sw.bb.8.i.i:                                      ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2426

sw.bb.9.i.1171.i:                                 ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2427

sw.bb.10.i.1172.i:                                ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2428

sw.bb.11.i.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread1338.i
  br label %tok_get.exit, !dbg !2429

sw.bb.12.i.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread1339.i
  br label %tok_get.exit, !dbg !2430

sw.bb.13.i.i:                                     ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2431

sw.bb.14.i.1173.i:                                ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2432

sw.bb.15.i.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread1340.i
  br label %tok_get.exit, !dbg !2433

sw.bb.16.i.i:                                     ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2434

sw.bb.17.i.1174.i:                                ; preds = %sw.epilog.i, %sw.epilog.thread1341.i
  br label %tok_get.exit, !dbg !2435

sw.bb.18.i.i:                                     ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2436

sw.bb.19.i.1175.i:                                ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2437

sw.bb.20.i.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread1342.i
  br label %tok_get.exit, !dbg !2438

sw.bb.21.i.1176.i:                                ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2439

sw.bb.22.i.i:                                     ; preds = %sw.epilog.i
  br label %tok_get.exit, !dbg !2440

sw.default.i.i:                                   ; preds = %sw.epilog.i, %sw.epilog.thread.i
  br label %tok_get.exit, !dbg !2441

tok_get.exit:                                     ; preds = %indenterror.exit.i, %if.then.54.i, %indenterror.exit973.i, %if.then.93.i, %indenterror.exit986.i, %if.then.121.i, %if.else.124.i, %if.then.148.i, %if.then.232.i, %if.end.234.i, %if.end.249.i, %if.then.269.i, %if.end.276.i, %if.then.315.i, %if.end.i.1053.i, %if.then.6.i.1055.i, %if.then.341.i, %if.end.i.1066.i, %if.then.6.i.1068.i, %if.then.367.i, %if.end.i.1079.i, %if.then.6.i.1081.i, %if.then.416.i, %if.end.i.1092.i, %if.then.6.i.1094.i, %if.then.474.i, %if.end.i.1105.i, %if.then.6.i.1107.i, %tok_backup.exit1121.i, %if.then.529.i, %if.then.545.i, %while.end.561.i, %if.then.574.i, %cleanup.598.i, %sw.epilog.i, %sw.bb.1.i.i, %sw.bb.2.i.1168.i, %sw.bb.3.i.i, %sw.bb.4.i.1169.i, %sw.bb.5.i.1170.i, %sw.bb.6.i.i, %sw.bb.7.i.i, %sw.bb.8.i.i, %sw.bb.9.i.1171.i, %sw.bb.10.i.1172.i, %sw.bb.11.i.i, %sw.bb.12.i.i, %sw.bb.13.i.i, %sw.bb.14.i.1173.i, %sw.bb.15.i.i, %sw.bb.16.i.i, %sw.bb.17.i.1174.i, %sw.bb.18.i.i, %sw.bb.19.i.1175.i, %sw.bb.20.i.i, %sw.bb.21.i.1176.i, %sw.bb.22.i.i, %sw.default.i.i
  %retval.9.i = phi i32 [ 6, %if.then.121.i ], [ 5, %if.else.124.i ], [ %cond.i, %if.then.148.i ], [ 53, %if.then.574.i ], [ %token.0.i, %cleanup.598.i ], [ 4, %if.end.249.i ], [ 2, %tok_backup.exit1121.i ], [ 51, %if.then.269.i ], [ 23, %if.end.276.i ], [ 53, %if.then.529.i ], [ 53, %if.then.545.i ], [ 3, %while.end.561.i ], [ 53, %if.then.54.i ], [ 53, %if.then.93.i ], [ 53, %indenterror.exit.i ], [ 53, %indenterror.exit973.i ], [ 53, %indenterror.exit986.i ], [ 53, %if.then.315.i ], [ 53, %if.end.i.1053.i ], [ 53, %if.then.6.i.1055.i ], [ 53, %if.then.341.i ], [ 53, %if.end.i.1066.i ], [ 53, %if.then.6.i.1068.i ], [ 53, %if.then.367.i ], [ 53, %if.end.i.1079.i ], [ 53, %if.then.6.i.1081.i ], [ 53, %if.then.474.i ], [ 53, %if.end.i.1105.i ], [ 53, %if.then.6.i.1107.i ], [ 52, %sw.default.i.i ], [ 49, %sw.bb.22.i.i ], [ 31, %sw.bb.21.i.1176.i ], [ 32, %sw.bb.20.i.i ], [ 26, %sw.bb.19.i.1175.i ], [ 25, %sw.bb.18.i.i ], [ 24, %sw.bb.17.i.1174.i ], [ 23, %sw.bb.16.i.i ], [ 22, %sw.bb.15.i.i ], [ 21, %sw.bb.14.i.1173.i ], [ 20, %sw.bb.13.i.i ], [ 19, %sw.bb.12.i.i ], [ 18, %sw.bb.11.i.i ], [ 17, %sw.bb.10.i.1172.i ], [ 16, %sw.bb.9.i.1171.i ], [ 15, %sw.bb.8.i.i ], [ 14, %sw.bb.7.i.i ], [ 13, %sw.bb.6.i.i ], [ 12, %sw.bb.5.i.1170.i ], [ 11, %sw.bb.4.i.1169.i ], [ 10, %sw.bb.3.i.i ], [ 9, %sw.bb.2.i.1168.i ], [ 8, %sw.bb.1.i.i ], [ 7, %sw.epilog.i ], [ 53, %if.then.232.i ], [ 1, %if.end.234.i ], [ 53, %if.then.416.i ], [ 53, %if.end.i.1092.i ], [ 53, %if.then.6.i.1094.i ], !dbg !1665
  tail call void @llvm.dbg.value(metadata i32 %retval.9.i, i64 0, metadata !505, metadata !893), !dbg !2442
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !2443
  %214 = load i32, i32* %decoding_erred, align 4, !dbg !2443, !tbaa !1090
  %tobool = icmp eq i32 %214, 0, !dbg !2445
  br i1 %tobool, label %if.end, label %if.then, !dbg !2446

if.then:                                          ; preds = %tok_get.exit
  tail call void @llvm.dbg.value(metadata i32 53, i64 0, metadata !505, metadata !893), !dbg !2442
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2447
  store i32 22, i32* %done, align 4, !dbg !2449, !tbaa !907
  br label %if.end, !dbg !2450

if.end:                                           ; preds = %tok_get.exit, %if.then
  %result.0 = phi i32 [ 53, %if.then ], [ %retval.9.i, %tok_get.exit ]
  ret i32 %result.0, !dbg !2451
}

; Function Attrs: nounwind uwtable
define i8* @PyTokenizer_FindEncodingFilename(i32 %fd, %struct._object* %filename) #0 {
entry:
  %p_start = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !510, metadata !893), !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !511, metadata !893), !dbg !2453
  %0 = bitcast i8** %p_start to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2454
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !514, metadata !893), !dbg !2455
  store i8* null, i8** %p_start, align 8, !dbg !2455, !tbaa !1169
  %1 = bitcast i8** %p_end to i8*, !dbg !2454
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2454
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !515, metadata !893), !dbg !2456
  store i8* null, i8** %p_end, align 8, !dbg !2456, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !516, metadata !893), !dbg !2457
  %call = tail call i32 @_Py_dup(i32 %fd) #2, !dbg !2458
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !510, metadata !893), !dbg !2452
  %cmp = icmp slt i32 %call, 0, !dbg !2459
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2461

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fdopen(i32 %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #2, !dbg !2462
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, i64 0, metadata !513, metadata !893), !dbg !2463
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !2464
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !2466

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, i64 0, metadata !454, metadata !893) #2, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !455, metadata !893) #2, !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !456, metadata !893) #2, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !457, metadata !893) #2, !dbg !2471
  %call.i.i = tail call i8* @PyMem_Malloc(i64 992) #2, !dbg !2472
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !2474
  br i1 %cmp.i.i, label %if.then.7, label %tok_new.exit.i, !dbg !2475

tok_new.exit.i:                                   ; preds = %if.end.4
  %2 = bitcast i8* %call.i.i to %struct.tok_state*, !dbg !2476
  %done.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 40, !dbg !2477
  %3 = bitcast i8* %done.i.i to i32*, !dbg !2477
  tail call void @llvm.memset.p0i8.i64(i8* %call.i.i, i8 0, i64 40, i32 8, i1 false) #2, !dbg !2478
  store i32 10, i32* %3, align 4, !dbg !2479, !tbaa !907
  %fp.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 48, !dbg !2480
  %4 = bitcast i8* %fp.i.i to %struct._IO_FILE**, !dbg !2480
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !2481, !tbaa !915
  %input.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 984, !dbg !2482
  %5 = bitcast i8* %input.i.i to i8**, !dbg !2482
  store i8* null, i8** %5, align 8, !dbg !2483, !tbaa !918
  %tabsize.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 56, !dbg !2484
  %6 = bitcast i8* %tabsize.i.i to i32*, !dbg !2484
  store i32 8, i32* %6, align 4, !dbg !2485, !tbaa !921
  %indent.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 60, !dbg !2486
  %7 = bitcast i8* %indent.i.i to i32*, !dbg !2486
  store i32 0, i32* %7, align 4, !dbg !2487, !tbaa !924
  %indstack.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 64, !dbg !2488
  %arrayidx.i.i = bitcast i8* %indstack.i.i to i32*, !dbg !2489
  store i32 0, i32* %arrayidx.i.i, align 4, !dbg !2490, !tbaa !928
  %atbol.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 464, !dbg !2491
  %8 = bitcast i8* %atbol.i.i to i32*, !dbg !2491
  store i32 1, i32* %8, align 4, !dbg !2492, !tbaa !931
  %pendin.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 468, !dbg !2493
  %altwarning.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 504, !dbg !2494
  tail call void @llvm.memset.p0i8.i64(i8* %pendin.i.i, i8 0, i64 28, i32 4, i1 false) #2, !dbg !2495
  %9 = bitcast i8* %altwarning.i.i to <4 x i32>*, !dbg !2496
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, <4 x i32>* %9, align 4, !dbg !2496, !tbaa !928
  %decoding_state.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 916, !dbg !2497
  %filename.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 496, !dbg !2498
  %10 = bitcast i8* %filename.i.i to %struct._object**, !dbg !2498
  store %struct._object* null, %struct._object** %10, align 8, !dbg !2499, !tbaa !939
  %decoding_readline.i.i = getelementptr inbounds i8, i8* %call.i.i, i64 952, !dbg !2500
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_state.i.i, i8 0, i64 24, i32 4, i1 false) #2, !dbg !2501
  tail call void @llvm.memset.p0i8.i64(i8* %decoding_readline.i.i, i8 0, i64 24, i32 8, i1 false) #2, !dbg !2502
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %2, i64 0, metadata !458, metadata !893) #2, !dbg !2503
  %call1.i = tail call i8* @PyMem_Malloc(i64 8192) #2, !dbg !2504
  %buf.i = bitcast i8* %call.i.i to i8**, !dbg !2505
  store i8* %call1.i, i8** %buf.i, align 8, !dbg !2506, !tbaa !1097
  %cmp2.i = icmp eq i8* %call1.i, null, !dbg !2507
  br i1 %cmp2.i, label %if.then.3.i, label %if.end.9, !dbg !2508

if.then.3.i:                                      ; preds = %tok_new.exit.i
  tail call void @PyTokenizer_Free(%struct.tok_state* %2) #2, !dbg !2509
  br label %if.then.7, !dbg !2510

if.then.7:                                        ; preds = %if.end.4, %if.then.3.i
  %call8 = tail call i32 @fclose(%struct._IO_FILE* %call1) #2, !dbg !2511
  br label %cleanup, !dbg !2514

if.end.9:                                         ; preds = %tok_new.exit.i
  %inp.i = getelementptr inbounds i8, i8* %call.i.i, i64 16, !dbg !2515
  %11 = bitcast i8* %inp.i to i8**, !dbg !2515
  store i8* %call1.i, i8** %11, align 8, !dbg !2516, !tbaa !1278
  %cur.i = getelementptr inbounds i8, i8* %call.i.i, i64 8, !dbg !2517
  %12 = bitcast i8* %cur.i to i8**, !dbg !2517
  store i8* %call1.i, i8** %12, align 8, !dbg !2518, !tbaa !1284
  %add.ptr.i = getelementptr i8, i8* %call1.i, i64 8192, !dbg !2519
  %end.i = getelementptr inbounds i8, i8* %call.i.i, i64 24, !dbg !2520
  %13 = bitcast i8* %end.i to i8**, !dbg !2520
  store i8* %add.ptr.i, i8** %13, align 8, !dbg !2521, !tbaa !1281
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %4, align 8, !dbg !2522, !tbaa !915
  %prompt.i = getelementptr inbounds i8, i8* %call.i.i, i64 472, !dbg !2523
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %2, i64 0, metadata !512, metadata !893), !dbg !2524
  call void @llvm.memset.p0i8.i64(i8* %prompt.i, i8 0, i64 16, i32 8, i1 false), !dbg !2525
  %cmp10 = icmp eq %struct._object* %filename, null, !dbg !2526
  br i1 %cmp10, label %if.else, label %if.then.11, !dbg !2528

if.then.11:                                       ; preds = %if.end.9
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %filename, i64 0, i32 0, !dbg !2529
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2529, !tbaa !1127
  %inc = add i64 %14, 1, !dbg !2529
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2529, !tbaa !1127
  store %struct._object* %filename, %struct._object** %10, align 8, !dbg !2531, !tbaa !939
  br label %while.cond.preheader, !dbg !2532

while.cond.preheader:                             ; preds = %if.else, %if.then.11
  %lineno = getelementptr inbounds i8, i8* %call.i.i, i64 488, !dbg !2533
  %15 = bitcast i8* %lineno to i32*, !dbg !2533
  %16 = load i32, i32* %15, align 4, !dbg !2533, !tbaa !2534
  %cmp21.66 = icmp slt i32 %16, 2, !dbg !2535
  br i1 %cmp21.66, label %land.rhs.preheader, label %while.end, !dbg !2536

land.rhs.preheader:                               ; preds = %while.cond.preheader
  br label %land.rhs, !dbg !2537

if.else:                                          ; preds = %if.end.9
  %call13 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0)) #2, !dbg !2538
  store %struct._object* %call13, %struct._object** %10, align 8, !dbg !2540, !tbaa !939
  %cmp16 = icmp eq %struct._object* %call13, null, !dbg !2541
  br i1 %cmp16, label %if.then.17, label %while.cond.preheader, !dbg !2543

if.then.17:                                       ; preds = %if.else
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call1) #2, !dbg !2544
  tail call void @PyTokenizer_Free(%struct.tok_state* %2), !dbg !2546
  br label %cleanup, !dbg !2547

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %17 = load i32, i32* %3, align 4, !dbg !2537, !tbaa !907
  %cmp22 = icmp eq i32 %17, 10, !dbg !2548
  br i1 %cmp22, label %while.body, label %while.end.loopexit, !dbg !2549

while.body:                                       ; preds = %land.rhs
  tail call void @llvm.dbg.value(metadata i8** %p_start, i64 0, metadata !514, metadata !893), !dbg !2455
  tail call void @llvm.dbg.value(metadata i8** %p_end, i64 0, metadata !515, metadata !893), !dbg !2456
  %call23 = call i32 @PyTokenizer_Get(%struct.tok_state* %2, i8** nonnull %p_start, i8** nonnull %p_end), !dbg !2551
  %18 = load i32, i32* %15, align 4, !dbg !2533, !tbaa !2534
  %cmp21 = icmp slt i32 %18, 2, !dbg !2535
  br i1 %cmp21, label %land.rhs, label %while.end.loopexit, !dbg !2536

while.end.loopexit:                               ; preds = %while.body, %land.rhs
  br label %while.end, !dbg !2553

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %call24 = tail call i32 @fclose(%struct._IO_FILE* %call1) #2, !dbg !2553
  %encoding25 = getelementptr inbounds i8, i8* %call.i.i, i64 928, !dbg !2554
  %19 = bitcast i8* %encoding25 to i8**, !dbg !2554
  %20 = load i8*, i8** %19, align 8, !dbg !2554, !tbaa !1071
  %tobool = icmp eq i8* %20, null, !dbg !2556
  br i1 %tobool, label %if.end.35, label %if.then.26, !dbg !2557

if.then.26:                                       ; preds = %while.end
  %call28 = tail call i64 @strlen(i8* %20) #9, !dbg !2558
  %add = add i64 %call28, 1, !dbg !2558
  %call29 = tail call i8* @PyMem_Malloc(i64 %add) #2, !dbg !2558
  tail call void @llvm.dbg.value(metadata i8* %call29, i64 0, metadata !516, metadata !893), !dbg !2457
  %tobool30 = icmp eq i8* %call29, null, !dbg !2560
  br i1 %tobool30, label %if.end.35, label %if.then.31, !dbg !2562

if.then.31:                                       ; preds = %if.then.26
  %21 = load i8*, i8** %19, align 8, !dbg !2563, !tbaa !1071
  %call33 = tail call i8* @strcpy(i8* %call29, i8* %21) #2, !dbg !2564
  br label %if.end.35, !dbg !2564

if.end.35:                                        ; preds = %if.then.26, %while.end, %if.then.31
  %encoding.0 = phi i8* [ %call29, %if.then.31 ], [ null, %if.then.26 ], [ null, %while.end ]
  tail call void @PyTokenizer_Free(%struct.tok_state* %2), !dbg !2565
  br label %cleanup, !dbg !2566

cleanup:                                          ; preds = %if.end, %entry, %if.end.35, %if.then.17, %if.then.7
  %retval.0 = phi i8* [ null, %if.then.7 ], [ %encoding.0, %if.end.35 ], [ null, %if.then.17 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2567
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2567
  ret i8* %retval.0, !dbg !2567
}

declare i32 @_Py_dup(i32) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @PyTokenizer_FindEncoding(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !521, metadata !893), !dbg !2568
  %call = tail call i8* @PyTokenizer_FindEncodingFilename(i32 %fd, %struct._object* null), !dbg !2569
  ret i8* %call, !dbg !2570
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @buf_setreadl(%struct.tok_state* nocapture %tok, i8* %enc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !579, metadata !893), !dbg !2571
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !580, metadata !893), !dbg !2572
  %enc1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 29, !dbg !2573
  store i8* %enc, i8** %enc1, align 8, !dbg !2574, !tbaa !1017
  ret i32 1, !dbg !2575
}

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_coding_spec(i8* %line, i64 %size, %struct.tok_state* %tok, i32 (%struct.tok_state*, i8*)* nocapture %set_readline) #0 {
entry:
  %buf.i.i = alloca [13 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !600, metadata !893), !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !601, metadata !893), !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !602, metadata !893), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 (%struct.tok_state*, i8*)* %set_readline, i64 0, metadata !603, metadata !893), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !605, metadata !893), !dbg !2580
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 25, !dbg !2581
  %0 = load i32, i32* %cont_line, align 4, !dbg !2581, !tbaa !1973
  %tobool = icmp eq i32 %0, 0, !dbg !2583
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %buf.i.i, metadata !647, metadata !893), !dbg !2584
  br i1 %tobool, label %if.end, label %if.then, !dbg !2588

if.then:                                          ; preds = %entry
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 23, !dbg !2589
  store i32 1, i32* %read_coding_spec, align 4, !dbg !2591, !tbaa !1206
  br label %cleanup, !dbg !2592

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !626, metadata !893) #2, !dbg !2594
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !627, metadata !893) #2, !dbg !2595
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !628, metadata !893) #2, !dbg !2596
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !629, metadata !893) #2, !dbg !2597
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !630, metadata !893) #2, !dbg !2598
  %sub.i = add i64 %size, -6, !dbg !2599
  %cmp.171.i = icmp sgt i64 %sub.i, 0, !dbg !2602
  br i1 %cmp.171.i, label %for.body.i.preheader, label %for.cond.18.preheader.i, !dbg !2603

for.body.i.preheader:                             ; preds = %if.end
  br label %for.body.i, !dbg !2604

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %i.0172.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !2607
  %arrayidx.i = getelementptr i8, i8* %line, i64 %i.0172.i, !dbg !2604
  %1 = load i8, i8* %arrayidx.i, align 1, !dbg !2604, !tbaa !967
  switch i8 %1, label %for.cond.preheader.loopexit [
    i8 35, label %for.cond.18.preheader.i.loopexit
    i8 32, label %for.inc.i
    i8 9, label %for.inc.i
    i8 12, label %for.inc.i
  ], !dbg !2608

for.cond.18.preheader.i.loopexit:                 ; preds = %for.body.i, %for.inc.i
  %i.0.lcssa.i.ph = phi i64 [ %i.0172.i, %for.body.i ], [ %inc.i, %for.inc.i ]
  br label %for.cond.18.preheader.i, !dbg !2609

for.cond.18.preheader.i:                          ; preds = %for.cond.18.preheader.i.loopexit, %if.end
  %i.0.lcssa.i = phi i64 [ 0, %if.end ], [ %i.0.lcssa.i.ph, %for.cond.18.preheader.i.loopexit ], !dbg !2607
  %cmp20.169.i = icmp slt i64 %i.0.lcssa.i, %sub.i, !dbg !2609
  br i1 %cmp20.169.i, label %for.body.22.lr.ph.i, label %for.cond.preheader, !dbg !2610

for.body.22.lr.ph.i:                              ; preds = %for.cond.18.preheader.i
  %2 = getelementptr inbounds [13 x i8], [13 x i8]* %buf.i.i, i64 0, i64 0, !dbg !2611
  br label %for.body.22.i, !dbg !2610

for.inc.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %inc.i = add nuw nsw i64 %i.0172.i, 1, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !630, metadata !893) #2, !dbg !2598
  %cmp.i = icmp slt i64 %inc.i, %sub.i, !dbg !2602
  br i1 %cmp.i, label %for.body.i, label %for.cond.18.preheader.i.loopexit, !dbg !2603

for.body.22.i:                                    ; preds = %for.inc.93.i, %for.body.22.lr.ph.i
  %cs.sroa.0.0.166 = phi i64 [ 0, %for.body.22.lr.ph.i ], [ %cs.sroa.0.0.165, %for.inc.93.i ]
  %i.1170.i = phi i64 [ %i.0.lcssa.i, %for.body.22.lr.ph.i ], [ %inc94.i, %for.inc.93.i ], !dbg !2607
  %add.ptr.i = getelementptr i8, i8* %line, i64 %i.1170.i, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !631, metadata !893) #2, !dbg !2614
  %call.i = tail call i32 @strncmp(i8* %add.ptr.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i64 6) #9, !dbg !2615
  %cmp23.i = icmp eq i32 %call.i, 0, !dbg !2616
  br i1 %cmp23.i, label %if.then.25.i, label %for.inc.93.i, !dbg !2617

if.then.25.i:                                     ; preds = %for.body.22.i
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !635, metadata !893) #2, !dbg !2618
  %add.ptr26.i = getelementptr i8, i8* %add.ptr.i, i64 6, !dbg !2619
  tail call void @llvm.dbg.value(metadata i8* %add.ptr26.i, i64 0, metadata !631, metadata !893) #2, !dbg !2614
  %3 = load i8, i8* %add.ptr26.i, align 1, !dbg !2620, !tbaa !967
  switch i8 %3, label %for.inc.93.i [
    i8 58, label %do.body.i.preheader
    i8 61, label %do.body.i.preheader
  ], !dbg !2622

do.body.i.preheader:                              ; preds = %if.then.25.i, %if.then.25.i
  br label %do.body.i, !dbg !2623

do.body.i:                                        ; preds = %do.body.i.backedge, %do.body.i.preheader
  %t.0.i = phi i8* [ %add.ptr26.i, %do.body.i.preheader ], [ %incdec.ptr.i, %do.body.i.backedge ], !dbg !2607
  %incdec.ptr.i = getelementptr i8, i8* %t.0.i, i64 1, !dbg !2623
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !631, metadata !893) #2, !dbg !2614
  %4 = load i8, i8* %incdec.ptr.i, align 1, !dbg !2625, !tbaa !967
  switch i8 %4, label %while.cond.i.preheader [
    i8 32, label %do.body.i.backedge
    i8 9, label %do.body.i.backedge
  ], !dbg !2627

do.body.i.backedge:                               ; preds = %do.body.i, %do.body.i
  br label %do.body.i, !dbg !2623

while.cond.i.preheader:                           ; preds = %do.body.i
  %.lcssa = phi i8 [ %4, %do.body.i ]
  %incdec.ptr.i.lcssa = phi i8* [ %incdec.ptr.i, %do.body.i ]
  br label %while.cond.i, !dbg !2628

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.body.i
  %5 = phi i8 [ %.pre.i, %while.body.i ], [ %.lcssa, %while.cond.i.preheader ], !dbg !2628
  %t.1.i = phi i8* [ %incdec.ptr66.i, %while.body.i ], [ %incdec.ptr.i.lcssa, %while.cond.i.preheader ], !dbg !2607
  %idxprom.i = zext i8 %5 to i64, !dbg !2628
  %arrayidx49.i = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom.i, !dbg !2628
  %6 = load i32, i32* %arrayidx49.i, align 4, !dbg !2628, !tbaa !928
  %and50.i = and i32 %6, 7, !dbg !2628
  %tobool.i = icmp eq i32 %and50.i, 0, !dbg !2628
  br i1 %tobool.i, label %switch.early.test.i, label %while.body.i, !dbg !2630

switch.early.test.i:                              ; preds = %while.cond.i
  switch i8 %5, label %while.end.i [
    i8 95, label %while.body.i
    i8 46, label %while.body.i
    i8 45, label %while.body.i
  ], !dbg !2630

while.body.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %while.cond.i
  %incdec.ptr66.i = getelementptr i8, i8* %t.1.i, i64 1, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr66.i, i64 0, metadata !631, metadata !893) #2, !dbg !2614
  %.pre.i = load i8, i8* %incdec.ptr66.i, align 1, !dbg !2628, !tbaa !967
  br label %while.cond.i, !dbg !2632

while.end.i:                                      ; preds = %switch.early.test.i
  %t.1.i.lcssa = phi i8* [ %t.1.i, %switch.early.test.i ]
  %cmp67.i = icmp ult i8* %incdec.ptr.i.lcssa, %t.1.i.lcssa, !dbg !2633
  br i1 %cmp67.i, label %if.then.69.i, label %for.inc.93.i, !dbg !2634

if.then.69.i:                                     ; preds = %while.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %t.1.i.lcssa to i64, !dbg !2635
  %sub.ptr.rhs.cast.i = ptrtoint i8* %incdec.ptr.i.lcssa to i64, !dbg !2635
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !566, metadata !893) #2, !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !567, metadata !893) #2, !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !568, metadata !893) #2, !dbg !2639
  %add.i.i = add i64 %sub.ptr.sub.i, 1, !dbg !2640
  %call.i.i = tail call i8* @PyMem_Malloc(i64 %add.i.i) #2, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !569, metadata !893) #2, !dbg !2641
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !2642
  br i1 %tobool.i.i, label %new_string.exit.thread.i, label %if.end.73.i, !dbg !2643

new_string.exit.thread.i:                         ; preds = %if.then.69.i
  %done.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2644
  store i32 15, i32* %done.i.i, align 4, !dbg !2645, !tbaa !907
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !638, metadata !893) #2, !dbg !2646
  br label %cleanup, !dbg !2647

if.end.73.i:                                      ; preds = %if.then.69.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i.i, i8* %incdec.ptr.i.lcssa, i64 %sub.ptr.sub.i, i32 1, i1 false) #2, !dbg !2648
  %arrayidx.i.i = getelementptr i8, i8* %call.i.i, i64 %sub.ptr.sub.i, !dbg !2649
  store i8 0, i8* %arrayidx.i.i, align 1, !dbg !2650, !tbaa !967
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !638, metadata !893) #2, !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !646, metadata !893) #2, !dbg !2651
  call void @llvm.lifetime.start(i64 13, i8* %2) #2, !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !651, metadata !893) #2, !dbg !2652
  br label %for.body.i.i, !dbg !2653

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.end.73.i
  %i.0341.i.i = phi i32 [ 0, %if.end.73.i ], [ %inc.i.i, %for.inc.i.i ], !dbg !2654
  %idxprom.i.i = sext i32 %i.0341.i.i to i64, !dbg !2655
  %arrayidx.i.147.i = getelementptr i8, i8* %call.i.i, i64 %idxprom.i.i, !dbg !2655
  %7 = load i8, i8* %arrayidx.i.147.i, align 1, !dbg !2655, !tbaa !967
  %conv.i.i = sext i8 %7 to i32, !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 %conv.i.i, i64 0, metadata !652, metadata !893) #2, !dbg !2656
  switch i8 %7, label %if.else.8.i.i [
    i8 0, label %for.end.i.i
    i8 95, label %if.then.5.i.i
  ], !dbg !2657

if.then.5.i.i:                                    ; preds = %for.body.i.i
  %arrayidx7.i.i = getelementptr [13 x i8], [13 x i8]* %buf.i.i, i64 0, i64 %idxprom.i.i, !dbg !2658
  store i8 45, i8* %arrayidx7.i.i, align 1, !dbg !2659, !tbaa !967
  br label %for.inc.i.i, !dbg !2658

if.else.8.i.i:                                    ; preds = %for.body.i.i
  tail call void @llvm.dbg.value(metadata i32 %conv.i.i, i64 0, metadata !688, metadata !893) #2, !dbg !2660
  %__c.off.i.i.i = add nsw i32 %conv.i.i, 128, !dbg !2665
  %8 = icmp ult i32 %__c.off.i.i.i, 384, !dbg !2665
  br i1 %8, label %cond.true.i.i.i, label %tolower.exit.i.i, !dbg !2665

cond.true.i.i.i:                                  ; preds = %if.else.8.i.i
  %idxprom.i.i.i = sext i8 %7 to i64, !dbg !2666
  %call.i.i.i = tail call i32** @__ctype_tolower_loc() #1, !dbg !2667
  %9 = load i32*, i32** %call.i.i.i, align 8, !dbg !2668, !tbaa !1169
  %arrayidx.i.i.i = getelementptr i32, i32* %9, i64 %idxprom.i.i.i, !dbg !2666
  %10 = load i32, i32* %arrayidx.i.i.i, align 4, !dbg !2666, !tbaa !928
  br label %tolower.exit.i.i, !dbg !2669

tolower.exit.i.i:                                 ; preds = %cond.true.i.i.i, %if.else.8.i.i
  %cond.i.i.i = phi i32 [ %10, %cond.true.i.i.i ], [ %conv.i.i, %if.else.8.i.i ], !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %cond.i.i.i, i64 0, metadata !656, metadata !893) #2, !dbg !2670
  %conv9.i.i = trunc i32 %cond.i.i.i to i8, !dbg !2671
  %arrayidx11.i.i = getelementptr [13 x i8], [13 x i8]* %buf.i.i, i64 0, i64 %idxprom.i.i, !dbg !2672
  store i8 %conv9.i.i, i8* %arrayidx11.i.i, align 1, !dbg !2673, !tbaa !967
  br label %for.inc.i.i, !dbg !2654

for.inc.i.i:                                      ; preds = %tolower.exit.i.i, %if.then.5.i.i
  %inc.i.i = add nuw i32 %i.0341.i.i, 1, !dbg !2674
  tail call void @llvm.dbg.value(metadata i32 %inc.i.i, i64 0, metadata !651, metadata !893) #2, !dbg !2652
  %cmp.i.i = icmp slt i32 %inc.i.i, 12, !dbg !2675
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i, !dbg !2653

for.end.i.i:                                      ; preds = %for.inc.i.i, %for.body.i.i
  %i.0.lcssa.i.i = phi i32 [ %i.0341.i.i, %for.body.i.i ], [ %inc.i.i, %for.inc.i.i ], !dbg !2654
  %idxprom13.i.i = sext i32 %i.0.lcssa.i.i to i64, !dbg !2676
  %arrayidx14.i.i = getelementptr [13 x i8], [13 x i8]* %buf.i.i, i64 0, i64 %idxprom13.i.i, !dbg !2676
  store i8 0, i8* %arrayidx14.i.i, align 1, !dbg !2677, !tbaa !967
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !663, metadata !893) #2, !dbg !2678
  %call60.i.i = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #2, !dbg !2679
  %cmp61.i.i = icmp eq i32 %call60.i.i, 0, !dbg !2682
  br i1 %cmp61.i.i, label %get_normal_name.exit.i, label %lor.lhs.false.i.i, !dbg !2683

lor.lhs.false.i.i:                                ; preds = %for.end.i.i
  %call64.i.i = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i64 6) #9, !dbg !2684
  %cmp65.i.i = icmp eq i32 %call64.i.i, 0, !dbg !2685
  br i1 %cmp65.i.i, label %get_normal_name.exit.i, label %cond.false.121.i.i, !dbg !2686

cond.false.121.i.i:                               ; preds = %lor.lhs.false.i.i
  tail call void @llvm.dbg.value(metadata i64 7, i64 0, metadata !670, metadata !893) #2, !dbg !2687
  %call123.i.i = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0)) #2, !dbg !2688
  %cmp126.i.i = icmp eq i32 %call123.i.i, 0, !dbg !2691
  br i1 %cmp126.i.i, label %get_normal_name.exit.i, label %cond.false.181.i.i, !dbg !2692

cond.false.181.i.i:                               ; preds = %cond.false.121.i.i
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !676, metadata !893) #2, !dbg !2693
  %call183.i.i = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0)) #2, !dbg !2694
  %cmp186.i.i = icmp eq i32 %call183.i.i, 0, !dbg !2697
  br i1 %cmp186.i.i, label %get_normal_name.exit.i, label %cond.false.241.i.i, !dbg !2698

cond.false.241.i.i:                               ; preds = %cond.false.181.i.i
  tail call void @llvm.dbg.value(metadata i64 11, i64 0, metadata !682, metadata !893) #2, !dbg !2699
  %call243.i.i = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0)) #2, !dbg !2700
  %cmp246.i.i = icmp eq i32 %call243.i.i, 0, !dbg !2703
  br i1 %cmp246.i.i, label %get_normal_name.exit.i, label %lor.lhs.false.248.i.i, !dbg !2704

lor.lhs.false.248.i.i:                            ; preds = %cond.false.241.i.i
  %call250.i.i = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i64 8) #9, !dbg !2705
  %cmp251.i.i = icmp eq i32 %call250.i.i, 0, !dbg !2706
  br i1 %cmp251.i.i, label %get_normal_name.exit.i, label %lor.lhs.false.253.i.i, !dbg !2707

lor.lhs.false.253.i.i:                            ; preds = %lor.lhs.false.248.i.i
  %call255.i.i = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i64 11) #9, !dbg !2708
  %cmp256.i.i = icmp eq i32 %call255.i.i, 0, !dbg !2709
  br i1 %cmp256.i.i, label %get_normal_name.exit.i, label %lor.lhs.false.258.i.i, !dbg !2710

lor.lhs.false.258.i.i:                            ; preds = %lor.lhs.false.253.i.i
  %call260.i.i = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i64 12) #9, !dbg !2711
  %cmp261.i.i = icmp eq i32 %call260.i.i, 0, !dbg !2712
  %.s.i.i = select i1 %cmp261.i.i, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i8* %call.i.i, !dbg !2713
  br label %get_normal_name.exit.i, !dbg !2713

get_normal_name.exit.i:                           ; preds = %lor.lhs.false.258.i.i, %lor.lhs.false.253.i.i, %lor.lhs.false.248.i.i, %cond.false.241.i.i, %cond.false.181.i.i, %cond.false.121.i.i, %lor.lhs.false.i.i, %for.end.i.i
  %retval.0.i.148.i = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), %lor.lhs.false.i.i ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), %for.end.i.i ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), %lor.lhs.false.253.i.i ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), %lor.lhs.false.248.i.i ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), %cond.false.241.i.i ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), %cond.false.181.i.i ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), %cond.false.121.i.i ], [ %.s.i.i, %lor.lhs.false.258.i.i ], !dbg !2654
  call void @llvm.lifetime.end(i64 13, i8* %2) #2, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.148.i, i64 0, metadata !641, metadata !893) #2, !dbg !2715
  %cmp75.i = icmp eq i8* %call.i.i, %retval.0.i.148.i, !dbg !2716
  br i1 %cmp75.i, label %cleanup.i, label %if.then.77.i, !dbg !2718

if.then.77.i:                                     ; preds = %get_normal_name.exit.i
  tail call void @PyMem_Free(i8* %call.i.i) #2, !dbg !2719
  %call78.i = tail call i64 @strlen(i8* %retval.0.i.148.i) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i.148.i, i64 0, metadata !566, metadata !893) #2, !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %call78.i, i64 0, metadata !567, metadata !893) #2, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !568, metadata !893) #2, !dbg !2725
  %add.i.149.i = add i64 %call78.i, 1, !dbg !2726
  %call.i.150.i = tail call i8* @PyMem_Malloc(i64 %add.i.149.i) #2, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %call.i.150.i, i64 0, metadata !569, metadata !893) #2, !dbg !2727
  %tobool.i.151.i = icmp eq i8* %call.i.150.i, null, !dbg !2728
  br i1 %tobool.i.151.i, label %new_string.exit157.thread.i, label %new_string.exit157.i, !dbg !2729

new_string.exit157.thread.i:                      ; preds = %if.then.77.i
  %done.i.152.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2730
  store i32 15, i32* %done.i.152.i, align 4, !dbg !2731, !tbaa !907
  tail call void @llvm.dbg.value(metadata i8* %call.i.150.i, i64 0, metadata !638, metadata !893) #2, !dbg !2646
  br label %cleanup, !dbg !2732

new_string.exit157.i:                             ; preds = %if.then.77.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i.150.i, i8* %retval.0.i.148.i, i64 %call78.i, i32 1, i1 false) #2, !dbg !2733
  %arrayidx.i.154.i = getelementptr i8, i8* %call.i.150.i, i64 %call78.i, !dbg !2734
  store i8 0, i8* %arrayidx.i.154.i, align 1, !dbg !2735, !tbaa !967
  tail call void @llvm.dbg.value(metadata i8* %call.i.150.i, i64 0, metadata !638, metadata !893) #2, !dbg !2646
  br label %cleanup.i, !dbg !2607

cleanup.i:                                        ; preds = %new_string.exit157.i, %get_normal_name.exit.i
  %r.0.i = phi i8* [ %call.i.150.i, %new_string.exit157.i ], [ %call.i.i, %get_normal_name.exit.i ], !dbg !2607
  %11 = ptrtoint i8* %r.0.i to i64, !dbg !2736
  br label %for.inc.93.i, !dbg !2607

for.inc.93.i:                                     ; preds = %cleanup.i, %while.end.i, %if.then.25.i, %for.body.22.i
  %cs.sroa.0.0.165 = phi i64 [ %11, %cleanup.i ], [ %cs.sroa.0.0.166, %while.end.i ], [ %cs.sroa.0.0.166, %if.then.25.i ], [ %cs.sroa.0.0.166, %for.body.22.i ]
  %inc94.i = add nsw i64 %i.1170.i, 1, !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %inc94.i, i64 0, metadata !630, metadata !893) #2, !dbg !2598
  %cmp20.i = icmp slt i64 %inc94.i, %sub.i, !dbg !2609
  br i1 %cmp20.i, label %for.body.22.i, label %if.end.3, !dbg !2610

if.end.3:                                         ; preds = %for.inc.93.i
  %cs.sroa.0.0.165.lcssa = phi i64 [ %cs.sroa.0.0.165, %for.inc.93.i ]
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %12 = inttoptr i64 %cs.sroa.0.0.165.lcssa to i8*, !dbg !2738
  %tobool4 = icmp eq i64 %cs.sroa.0.0.165.lcssa, 0, !dbg !2738
  br i1 %tobool4, label %for.cond.preheader, label %if.end.35, !dbg !2739

for.cond.preheader.loopexit:                      ; preds = %for.body.i
  br label %for.cond.preheader, !dbg !2740

for.cond.preheader:                               ; preds = %for.cond.preheader.loopexit, %for.cond.18.preheader.i, %if.end.3
  %cmp.173 = icmp sgt i64 %size, 0, !dbg !2740
  br i1 %cmp.173, label %for.body.preheader, label %cleanup, !dbg !2743

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !2744

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.0174 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, i8* %line, i64 %i.0174, !dbg !2744
  %13 = load i8, i8* %arrayidx, align 1, !dbg !2744, !tbaa !967
  switch i8 %13, label %if.then.32 [
    i8 35, label %cleanup.loopexit
    i8 10, label %cleanup.loopexit
    i8 13, label %cleanup.loopexit
    i8 32, label %for.inc
    i8 9, label %for.inc
    i8 12, label %for.inc
  ], !dbg !2747

if.then.32:                                       ; preds = %for.body
  %read_coding_spec33 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 23, !dbg !2748
  store i32 1, i32* %read_coding_spec33, align 4, !dbg !2751, !tbaa !1206
  br label %cleanup, !dbg !2752

for.inc:                                          ; preds = %for.body, %for.body, %for.body
  %inc = add nuw nsw i64 %i.0174, 1, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !606, metadata !893), !dbg !2754
  %cmp = icmp slt i64 %inc, %size, !dbg !2740
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !2743

if.end.35:                                        ; preds = %if.end.3
  %read_coding_spec36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 23, !dbg !2755
  store i32 1, i32* %read_coding_spec36, align 4, !dbg !2756, !tbaa !1206
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 24, !dbg !2757
  %14 = load i8*, i8** %encoding, align 8, !dbg !2757, !tbaa !1071
  %cmp37 = icmp eq i8* %14, null, !dbg !2758
  br i1 %cmp37, label %cond.false, label %if.else.95, !dbg !2759

cond.false:                                       ; preds = %if.end.35
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !614, metadata !893), !dbg !2760
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %call82 = tail call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #2, !dbg !2761
  %cmp83 = icmp eq i32 %call82, 0, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  br i1 %cmp83, label %if.then.85, label %if.else, !dbg !2765

if.then.85:                                       ; preds = %cond.false
  %15 = bitcast i8** %encoding to i64*, !dbg !2766
  store i64 %cs.sroa.0.0.165.lcssa, i64* %15, align 8, !dbg !2766, !tbaa !1071
  br label %cleanup, !dbg !2768

if.else:                                          ; preds = %cond.false
  %call87 = tail call i32 %set_readline(%struct.tok_state* %tok, i8* %12) #2, !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 %call87, i64 0, metadata !605, metadata !893), !dbg !2580
  %tobool88 = icmp eq i32 %call87, 0, !dbg !2771
  br i1 %tobool88, label %if.else.91, label %if.then.89, !dbg !2773

if.then.89:                                       ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %16 = bitcast i8** %encoding to i64*, !dbg !2774
  store i64 %cs.sroa.0.0.165.lcssa, i64* %16, align 8, !dbg !2774, !tbaa !1071
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 21, !dbg !2776
  store i32 2, i32* %decoding_state, align 4, !dbg !2777, !tbaa !1028
  br label %cleanup, !dbg !2778

if.else.91:                                       ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !2779, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %call92 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i8* %12) #2, !dbg !2781
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  tail call void @PyMem_Free(i8* %12) #2, !dbg !2782
  br label %cleanup

if.else.95:                                       ; preds = %if.end.35
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %call102 = tail call i32 @strcmp(i8* %14, i8* %12) #2, !dbg !2783
  %cmp103 = icmp eq i32 %call102, 0, !dbg !2784
  %conv104 = zext i1 %cmp103 to i32, !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 %conv104, i64 0, metadata !605, metadata !893), !dbg !2580
  br i1 %cmp103, label %if.end.108, label %if.then.106, !dbg !2785

if.then.106:                                      ; preds = %if.else.95
  %18 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !2786, !tbaa !1169
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  %call107 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i8* %12) #2, !dbg !2788
  br label %if.end.108, !dbg !2788

if.end.108:                                       ; preds = %if.then.106, %if.else.95
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !893), !dbg !2593
  tail call void @PyMem_Free(i8* %12) #2, !dbg !2789
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.inc, %for.body, %for.body, %for.body
  br label %cleanup, !dbg !2790

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond.preheader, %new_string.exit.thread.i, %new_string.exit157.thread.i, %if.end.108, %if.then.89, %if.else.91, %if.then.85, %if.then.32, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then.32 ], [ 1, %if.then.85 ], [ %call87, %if.then.89 ], [ 0, %if.else.91 ], [ %conv104, %if.end.108 ], [ 0, %new_string.exit157.thread.i ], [ 0, %new_string.exit.thread.i ], [ 1, %for.cond.preheader ], [ 1, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !2790
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #3

declare %struct._object* @PyUnicode_AsUTF8String(%struct._object*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #7

declare i8* @PyMem_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tok_nextc(%struct.tok_state* %tok) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !742, metadata !893), !dbg !2791
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 1, !dbg !2792
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !2794
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !2795
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 6, !dbg !2797
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 12, !dbg !2798
  %start194 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 4, !dbg !2799
  %buf198 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !2801
  %end212 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 3, !dbg !2804
  %0 = bitcast i8** %end212 to i64*, !dbg !2806
  %lineno250 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 14, !dbg !2808
  %line_start331 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 26, !dbg !2809
  %1 = bitcast i8** %inp to i64*, !dbg !2812
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !2813
  %2 = bitcast i8** %inp to i16**, !dbg !2817
  %3 = bitcast %struct.tok_state* %tok to i64*, !dbg !2818
  %decoding_state.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 21, !dbg !2819
  %decoding_buffer.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 28, !dbg !2823
  %decoding_readline.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 27, !dbg !2824
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 13, !dbg !2827
  %4 = bitcast i8** %cur to i64*, !dbg !2829
  %5 = bitcast i8** %line_start331 to i64*, !dbg !2831
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 24, !dbg !2832
  br label %for.cond, !dbg !2833

for.cond:                                         ; preds = %if.end.351, %entry
  %6 = load i8*, i8** %cur, align 8, !dbg !2792, !tbaa !1284
  %7 = load i8*, i8** %inp, align 8, !dbg !2794, !tbaa !1278
  %cmp = icmp eq i8* %6, %7, !dbg !2834
  %8 = ptrtoint i8* %6 to i64, !dbg !2835
  br i1 %cmp, label %if.end, label %if.then, !dbg !2835

if.then:                                          ; preds = %for.cond
  %.lcssa = phi i8* [ %6, %for.cond ]
  %incdec.ptr = getelementptr i8, i8* %.lcssa, i64 1, !dbg !2836
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !2836, !tbaa !1284
  %9 = load i8, i8* %.lcssa, align 1, !dbg !2836, !tbaa !967
  %conv3 = zext i8 %9 to i32, !dbg !2836
  br label %return, !dbg !2838

if.end:                                           ; preds = %for.cond
  %10 = load i32, i32* %done, align 4, !dbg !2795, !tbaa !907
  %cmp4 = icmp eq i32 %10, 10, !dbg !2839
  br i1 %cmp4, label %if.end.7, label %return.loopexit737, !dbg !2840

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !2797, !tbaa !915
  %cmp8 = icmp eq %struct._IO_FILE* %11, null, !dbg !2841
  br i1 %cmp8, label %if.then.10, label %if.end.38, !dbg !2842

if.then.10:                                       ; preds = %if.end.7
  %.lcssa759 = phi i8* [ %6, %if.end.7 ]
  %call = tail call i8* @strchr(i8* %.lcssa759, i32 10) #2, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !743, metadata !893), !dbg !2844
  %cmp12 = icmp eq i8* %call, null, !dbg !2845
  br i1 %cmp12, label %if.else, label %if.then.14, !dbg !2847

if.then.14:                                       ; preds = %if.then.10
  %incdec.ptr15 = getelementptr i8, i8* %call, i64 1, !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr15, i64 0, metadata !743, metadata !893), !dbg !2844
  br label %if.end.24, !dbg !2849

if.else:                                          ; preds = %if.then.10
  %call17 = tail call i8* @__rawmemchr(i8* %.lcssa759, i32 0) #2, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %call17, i64 0, metadata !743, metadata !893), !dbg !2844
  %12 = load i8*, i8** %inp, align 8, !dbg !2852, !tbaa !1278
  %cmp19 = icmp eq i8* %call17, %12, !dbg !2854
  br i1 %cmp19, label %if.then.21, label %if.end.24, !dbg !2855

if.then.21:                                       ; preds = %if.else
  store i32 11, i32* %done, align 4, !dbg !2856, !tbaa !907
  br label %return, !dbg !2858

if.end.24:                                        ; preds = %if.else, %if.then.14
  %end.0 = phi i8* [ %incdec.ptr15, %if.then.14 ], [ %call17, %if.else ]
  %13 = load i8*, i8** %start194, align 8, !dbg !2859, !tbaa !1657
  %cmp25 = icmp eq i8* %13, null, !dbg !2861
  %14 = load i64, i64* %4, align 8, !dbg !2862, !tbaa !1284
  br i1 %cmp25, label %if.then.27, label %if.end.29, !dbg !2863

if.then.27:                                       ; preds = %if.end.24
  store i64 %14, i64* %3, align 8, !dbg !2864, !tbaa !1097
  br label %if.end.29, !dbg !2865

if.end.29:                                        ; preds = %if.end.24, %if.then.27
  %15 = inttoptr i64 %14 to i8*, !dbg !2866
  store i64 %14, i64* %5, align 8, !dbg !2867, !tbaa !2868
  %16 = load i32, i32* %lineno250, align 4, !dbg !2869, !tbaa !2534
  %inc = add i32 %16, 1, !dbg !2869
  store i32 %inc, i32* %lineno250, align 4, !dbg !2869, !tbaa !2534
  store i8* %end.0, i8** %inp, align 8, !dbg !2870, !tbaa !1278
  %incdec.ptr33 = getelementptr i8, i8* %15, i64 1, !dbg !2866
  store i8* %incdec.ptr33, i8** %cur, align 8, !dbg !2866, !tbaa !1284
  %17 = load i8, i8* %15, align 1, !dbg !2866, !tbaa !967
  %conv37 = zext i8 %17 to i32, !dbg !2866
  br label %return, !dbg !2871

if.end.38:                                        ; preds = %if.end.7
  %18 = load i8*, i8** %prompt, align 8, !dbg !2798, !tbaa !1512
  %cmp39 = icmp eq i8* %18, null, !dbg !2872
  br i1 %cmp39, label %if.else.191, label %if.then.41, !dbg !2873

if.then.41:                                       ; preds = %if.end.38
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2874, !tbaa !1169
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2875, !tbaa !1169
  %call43 = tail call i8* @PyOS_Readline(%struct._IO_FILE* %19, %struct._IO_FILE* %20, i8* %18) #2, !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %call43, i64 0, metadata !749, metadata !893), !dbg !2877
  %cmp44 = icmp eq i8* %call43, null, !dbg !2878
  br i1 %cmp44, label %if.end.95, label %if.then.46, !dbg !2879

if.then.46:                                       ; preds = %if.then.41
  tail call void @llvm.dbg.value(metadata i8* %call43, i64 0, metadata !693, metadata !893) #2, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !694, metadata !893) #2, !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !695, metadata !893) #2, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !2884
  %call.i = tail call i64 @strlen(i8* %call43) #9, !dbg !2885
  %add.i = add i64 %call.i, 2, !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !697, metadata !893) #2, !dbg !2887
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !701, metadata !893) #2, !dbg !2888
  %call1.i = tail call i8* @PyMem_Malloc(i64 %add.i) #2, !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %call1.i, i64 0, metadata !699, metadata !893) #2, !dbg !2890
  %cmp.i = icmp eq i8* %call1.i, null, !dbg !2891
  br i1 %cmp.i, label %translate_newlines.exit.thread, label %for.cond.preheader.i, !dbg !2892

for.cond.preheader.i:                             ; preds = %if.then.46
  %21 = load i8, i8* %call43, align 1, !dbg !2893, !tbaa !967
  %tobool.66.i = icmp eq i8 %21, 0, !dbg !2894
  br i1 %tobool.66.i, label %for.end.i, label %for.body.i.preheader, !dbg !2894

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !2895

translate_newlines.exit.thread:                   ; preds = %if.then.46
  %call43.lcssa = phi i8* [ %call43, %if.then.46 ]
  store i32 15, i32* %done, align 4, !dbg !2896, !tbaa !907
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i, i64 0, metadata !752, metadata !893), !dbg !2897
  tail call void @PyMem_Free(i8* %call43.lcssa) #2, !dbg !2898
  br label %return

for.body.i:                                       ; preds = %for.body.i.preheader, %if.end.11.i
  %22 = phi i8 [ %24, %if.end.11.i ], [ %21, %for.body.i.preheader ], !dbg !2899
  %current.069.i = phi i8* [ %incdec.ptr18.i, %if.end.11.i ], [ %call1.i, %for.body.i.preheader ], !dbg !2899
  %s.addr.068.i = phi i8* [ %incdec.ptr17.i, %if.end.11.i ], [ %call43, %for.body.i.preheader ], !dbg !2899
  %skip_next_lf.067.i = phi i32 [ %.skip_next_lf.1.i, %if.end.11.i ], [ 0, %for.body.i.preheader ], !dbg !2899
  %tobool2.i = icmp ne i32 %skip_next_lf.067.i, 0, !dbg !2895
  %cmp4.i = icmp eq i8 %22, 10, !dbg !2900
  %or.cond65.i = and i1 %cmp4.i, %tobool2.i, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !893) #2, !dbg !2884
  br i1 %or.cond65.i, label %if.then.6.i, label %if.end.11.i, !dbg !2901

if.then.6.i:                                      ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, i8* %s.addr.068.i, i64 1, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !693, metadata !893) #2, !dbg !2880
  %23 = load i8, i8* %incdec.ptr.i, align 1, !dbg !2903, !tbaa !967
  tail call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !701, metadata !893) #2, !dbg !2888
  %tobool7.i = icmp eq i8 %23, 0, !dbg !2904
  br i1 %tobool7.i, label %for.end.i.loopexit, label %if.end.11.i, !dbg !2905

if.end.11.i:                                      ; preds = %if.then.6.i, %for.body.i
  %s.addr.1.i = phi i8* [ %incdec.ptr.i, %if.then.6.i ], [ %s.addr.068.i, %for.body.i ], !dbg !2899
  %c.1.i = phi i8 [ %23, %if.then.6.i ], [ %22, %for.body.i ], !dbg !2899
  %cmp13.i = icmp eq i8 %c.1.i, 13, !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !696, metadata !893) #2, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !701, metadata !893) #2, !dbg !2888
  %.skip_next_lf.1.i = zext i1 %cmp13.i to i32, !dbg !2907
  %.c.1.i = select i1 %cmp13.i, i8 10, i8 %c.1.i, !dbg !2907
  store i8 %.c.1.i, i8* %current.069.i, align 1, !dbg !2908, !tbaa !967
  %incdec.ptr17.i = getelementptr i8, i8* %s.addr.1.i, i64 1, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr17.i, i64 0, metadata !693, metadata !893) #2, !dbg !2880
  %incdec.ptr18.i = getelementptr i8, i8* %current.069.i, i64 1, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr18.i, i64 0, metadata !700, metadata !893) #2, !dbg !2911
  %24 = load i8, i8* %incdec.ptr17.i, align 1, !dbg !2893, !tbaa !967
  %tobool.i = icmp eq i8 %24, 0, !dbg !2894
  br i1 %tobool.i, label %for.end.i.loopexit, label %for.body.i, !dbg !2894

for.end.i.loopexit:                               ; preds = %if.then.6.i, %if.end.11.i
  %current.0.lcssa.i.ph = phi i8* [ %current.069.i, %if.then.6.i ], [ %incdec.ptr18.i, %if.end.11.i ]
  br label %for.end.i, !dbg !2912

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i
  %current.0.lcssa.i = phi i8* [ %call1.i, %for.cond.preheader.i ], [ %current.0.lcssa.i.ph, %for.end.i.loopexit ], !dbg !2899
  store i8 0, i8* %current.0.lcssa.i, align 1, !dbg !2912, !tbaa !967
  %sub.ptr.lhs.cast.i = ptrtoint i8* %current.0.lcssa.i to i64, !dbg !2913
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call1.i to i64, !dbg !2913
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2913
  %add26.i = add i64 %sub.ptr.sub.i, 1, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %add26.i, i64 0, metadata !698, metadata !893) #2, !dbg !2915
  %cmp27.i = icmp ult i64 %add26.i, %add.i, !dbg !2916
  %tobool30.i = icmp ne i64 %add26.i, 0, !dbg !2917
  %or.cond.i = and i1 %cmp27.i, %tobool30.i, !dbg !2918
  br i1 %or.cond.i, label %if.then.31.i, label %translate_newlines.exit, !dbg !2918

if.then.31.i:                                     ; preds = %for.end.i
  %call32.i = tail call i8* @PyMem_Realloc(i8* %call1.i, i64 %add26.i) #2, !dbg !2919
  tail call void @llvm.dbg.value(metadata i8* %call32.i, i64 0, metadata !699, metadata !893) #2, !dbg !2890
  br label %translate_newlines.exit, !dbg !2920

translate_newlines.exit:                          ; preds = %for.end.i, %if.then.31.i
  %retval.0.i = phi i8* [ %call32.i, %if.then.31.i ], [ %call1.i, %for.end.i ], !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %retval.0.i, i64 0, metadata !752, metadata !893), !dbg !2897
  tail call void @PyMem_Free(i8* %call43) #2, !dbg !2898
  %cmp48 = icmp eq i8* %retval.0.i, null, !dbg !2921
  %call43.call47 = select i1 %cmp48, i8* %call43, i8* %retval.0.i, !dbg !2923
  br i1 %cmp48, label %return.loopexit737, label %if.end.53

if.end.53:                                        ; preds = %translate_newlines.exit
  %25 = load i8*, i8** %encoding, align 8, !dbg !2832, !tbaa !1071
  %tobool = icmp ne i8* %25, null, !dbg !2924
  %tobool54 = icmp ne i8* %call43.call47, null, !dbg !2925
  %or.cond = and i1 %tobool54, %tobool, !dbg !2927
  br i1 %or.cond, label %land.lhs.true.55, label %if.end.95, !dbg !2927

land.lhs.true.55:                                 ; preds = %if.end.53
  %26 = load i8, i8* %call43.call47, align 1, !dbg !2928, !tbaa !967
  %tobool57 = icmp eq i8 %26, 0, !dbg !2928
  br i1 %tobool57, label %if.end.95, label %if.then.58, !dbg !2929

if.then.58:                                       ; preds = %land.lhs.true.55
  tail call void @llvm.dbg.value(metadata i8* %call43.call47, i64 0, metadata !590, metadata !893) #2, !dbg !2930
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !591, metadata !893) #2, !dbg !2932
  %call.i.556 = tail call i64 @strlen(i8* %call43.call47) #9, !dbg !2933
  %call1.i.557 = tail call %struct._object* @PyUnicode_Decode(i8* %call43.call47, i64 %call.i.556, i8* %25, i8* null) #2, !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.557, i64 0, metadata !593, metadata !893) #2, !dbg !2935
  %cmp.i.558 = icmp eq %struct._object* %call1.i.557, null, !dbg !2936
  br i1 %cmp.i.558, label %translate_into_utf8.exit.thread, label %if.end.i, !dbg !2937

translate_into_utf8.exit.thread:                  ; preds = %if.then.58
  %call43.call47.lcssa = phi i8* [ %call43.call47, %if.then.58 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !759, metadata !893), !dbg !2938
  tail call void @PyMem_Free(i8* %call43.call47.lcssa) #2, !dbg !2939
  br label %cleanup.90, !dbg !2940

if.end.i:                                         ; preds = %if.then.58
  %call2.i = tail call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %call1.i.557) #2, !dbg !2941
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !592, metadata !893) #2, !dbg !2942
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.557, i64 0, metadata !594, metadata !893) #2, !dbg !2943
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.557, i64 0, i32 0, !dbg !2944
  %27 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2944, !tbaa !1127
  %dec.i = add i64 %27, -1, !dbg !2944
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2944, !tbaa !1127
  %cmp3.i = icmp eq i64 %dec.i, 0, !dbg !2944
  br i1 %cmp3.i, label %if.else.i, label %translate_into_utf8.exit, !dbg !2945

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.557, i64 0, i32 1, !dbg !2946
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2946, !tbaa !1133
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2946
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2946, !tbaa !1134
  tail call void %29(%struct._object* %call1.i.557) #2, !dbg !2946
  br label %translate_into_utf8.exit, !dbg !2947

translate_into_utf8.exit:                         ; preds = %if.end.i, %if.else.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !759, metadata !893), !dbg !2938
  tail call void @PyMem_Free(i8* %call43.call47) #2, !dbg !2939
  %tobool62 = icmp eq %struct._object* %call2.i, null, !dbg !2948
  br i1 %tobool62, label %cleanup.90.loopexit, label %if.end.74, !dbg !2940

if.end.74:                                        ; preds = %translate_into_utf8.exit
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !755, metadata !893), !dbg !2950
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !758, metadata !893), !dbg !2951
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 2, !dbg !2952
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !2952
  %30 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 1, i32 0, !dbg !2953
  %31 = load i64, i64* %30, align 8, !dbg !2953, !tbaa !2954
  %add = add i64 %31, 1, !dbg !2955
  %call75 = tail call i8* @PyMem_Malloc(i64 %add) #2, !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %call75, i64 0, metadata !749, metadata !893), !dbg !2877
  %call76 = tail call i8* @strcpy(i8* %call75, i8* %arraydecay) #2, !dbg !2956
  tail call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !764, metadata !893), !dbg !2957
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 0, !dbg !2959
  %32 = load i64, i64* %ob_refcnt79, align 8, !dbg !2959, !tbaa !1127
  %dec80 = add i64 %32, -1, !dbg !2959
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !2959, !tbaa !1127
  %cmp81 = icmp eq i64 %dec80, 0, !dbg !2959
  br i1 %cmp81, label %if.else.84, label %if.end.95, !dbg !2961

if.else.84:                                       ; preds = %if.end.74
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 0, i32 1, !dbg !2962
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !2962, !tbaa !1133
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !2962
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !2962, !tbaa !1134
  tail call void %34(%struct._object* %call2.i) #2, !dbg !2962
  br label %if.end.95

cleanup.90.loopexit:                              ; preds = %translate_into_utf8.exit
  br label %cleanup.90, !dbg !2964

cleanup.90:                                       ; preds = %cleanup.90.loopexit, %translate_into_utf8.exit.thread
  store i32 22, i32* %done, align 4, !dbg !2964, !tbaa !907
  br label %return

if.end.95:                                        ; preds = %if.else.84, %if.end.74, %if.then.41, %land.lhs.true.55, %if.end.53
  %newtok.3 = phi i8* [ %retval.0.i, %land.lhs.true.55 ], [ %retval.0.i, %if.end.53 ], [ null, %if.then.41 ], [ %call75, %if.end.74 ], [ %call75, %if.else.84 ]
  %35 = load i8*, i8** %nextprompt, align 8, !dbg !2827, !tbaa !1515
  %cmp96 = icmp eq i8* %35, null, !dbg !2966
  br i1 %cmp96, label %if.end.101, label %if.then.98, !dbg !2967

if.then.98:                                       ; preds = %if.end.95
  store i8* %35, i8** %prompt, align 8, !dbg !2968, !tbaa !1512
  br label %if.end.101, !dbg !2969

if.end.101:                                       ; preds = %if.end.95, %if.then.98
  %cmp102 = icmp eq i8* %newtok.3, null, !dbg !2970
  br i1 %cmp102, label %if.then.104, label %if.else.106, !dbg !2971

if.then.104:                                      ; preds = %if.end.101
  store i32 12, i32* %done, align 4, !dbg !2972, !tbaa !907
  br label %if.then.355, !dbg !2973

if.else.106:                                      ; preds = %if.end.101
  %36 = load i8, i8* %newtok.3, align 1, !dbg !2974, !tbaa !967
  %cmp108 = icmp eq i8 %36, 0, !dbg !2975
  br i1 %cmp108, label %if.then.110, label %if.else.112, !dbg !2976

if.then.110:                                      ; preds = %if.else.106
  %newtok.3.lcssa776 = phi i8* [ %newtok.3, %if.else.106 ]
  tail call void @PyMem_Free(i8* %newtok.3.lcssa776) #2, !dbg !2977
  store i32 11, i32* %done, align 4, !dbg !2979, !tbaa !907
  br label %if.then.355, !dbg !2980

if.else.112:                                      ; preds = %if.else.106
  %37 = load i8*, i8** %start194, align 8, !dbg !2981, !tbaa !1657
  %cmp114 = icmp eq i8* %37, null, !dbg !2982
  br i1 %cmp114, label %if.else.163, label %if.then.116, !dbg !2983

if.then.116:                                      ; preds = %if.else.112
  %38 = load i8*, i8** %buf198, align 8, !dbg !2984, !tbaa !1097
  %sub.ptr.rhs.cast = ptrtoint i8* %38 to i64, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !766, metadata !893), !dbg !2986
  %39 = load i64, i64* %4, align 8, !dbg !2987, !tbaa !1284
  %sub.ptr.sub124 = sub i64 %39, %sub.ptr.rhs.cast, !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub124, i64 0, metadata !771, metadata !893), !dbg !2989
  %call125 = tail call i64 @strlen(i8* %newtok.3) #9, !dbg !2990
  %add126 = add i64 %sub.ptr.sub124, %call125, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %add126, i64 0, metadata !772, metadata !893), !dbg !2992
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !773, metadata !893), !dbg !2993
  %add129 = add i64 %add126, 1, !dbg !2994
  %call130 = tail call i8* @PyMem_Realloc(i8* %38, i64 %add129) #2, !dbg !2994
  tail call void @llvm.dbg.value(metadata i8* %call130, i64 0, metadata !773, metadata !893), !dbg !2993
  %40 = load i32, i32* %lineno250, align 4, !dbg !2995, !tbaa !2534
  %inc132 = add i32 %40, 1, !dbg !2995
  store i32 %inc132, i32* %lineno250, align 4, !dbg !2995, !tbaa !2534
  %cmp133 = icmp eq i8* %call130, null, !dbg !2996
  br i1 %cmp133, label %cleanup.157, label %cleanup.157.thread, !dbg !2998

cleanup.157.thread:                               ; preds = %if.then.116
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64, !dbg !2985
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2985
  store i8* %call130, i8** %buf198, align 8, !dbg !2999, !tbaa !1097
  %add.ptr = getelementptr i8, i8* %call130, i64 %sub.ptr.sub124, !dbg !3000
  store i8* %add.ptr, i8** %cur, align 8, !dbg !3001, !tbaa !1284
  store i8* %add.ptr, i8** %line_start331, align 8, !dbg !3002, !tbaa !2868
  %call147 = tail call i8* @strcpy(i8* %add.ptr, i8* %newtok.3) #2, !dbg !3003
  tail call void @PyMem_Free(i8* %newtok.3) #2, !dbg !3004
  %41 = load i8*, i8** %buf198, align 8, !dbg !3005, !tbaa !1097
  %add.ptr149 = getelementptr i8, i8* %41, i64 %add126, !dbg !3006
  store i8* %add.ptr149, i8** %inp, align 8, !dbg !3007, !tbaa !1278
  %add.ptr152 = getelementptr i8, i8* %add.ptr149, i64 1, !dbg !3008
  store i8* %add.ptr152, i8** %end212, align 8, !dbg !3009, !tbaa !1281
  %add.ptr155 = getelementptr i8, i8* %41, i64 %sub.ptr.sub, !dbg !3010
  store i8* %add.ptr155, i8** %start194, align 8, !dbg !3011, !tbaa !1657
  br label %if.end.351

cleanup.157:                                      ; preds = %if.then.116
  %newtok.3.lcssa777 = phi i8* [ %newtok.3, %if.then.116 ]
  %42 = load i8*, i8** %buf198, align 8, !dbg !3012, !tbaa !1097
  tail call void @PyMem_Free(i8* %42) #2, !dbg !3012
  store i8* null, i8** %buf198, align 8, !dbg !3014, !tbaa !1097
  tail call void @PyMem_Free(i8* %newtok.3.lcssa777) #2, !dbg !3015
  store i32 15, i32* %done, align 4, !dbg !3016, !tbaa !907
  br label %return

if.else.163:                                      ; preds = %if.else.112
  %43 = load i32, i32* %lineno250, align 4, !dbg !3017, !tbaa !2534
  %inc165 = add i32 %43, 1, !dbg !3017
  store i32 %inc165, i32* %lineno250, align 4, !dbg !3017, !tbaa !2534
  %44 = load i8*, i8** %buf198, align 8, !dbg !3018, !tbaa !1097
  %cmp167 = icmp eq i8* %44, null, !dbg !3020
  br i1 %cmp167, label %if.end.171, label %if.then.169, !dbg !3021

if.then.169:                                      ; preds = %if.else.163
  tail call void @PyMem_Free(i8* %44) #2, !dbg !3022
  br label %if.end.171, !dbg !3022

if.end.171:                                       ; preds = %if.else.163, %if.then.169
  store i8* %newtok.3, i8** %buf198, align 8, !dbg !3023, !tbaa !1097
  %.cast = ptrtoint i8* %newtok.3 to i64, !dbg !3024
  store i64 %.cast, i64* %4, align 8, !dbg !2829, !tbaa !1284
  store i64 %.cast, i64* %5, align 8, !dbg !2831, !tbaa !2868
  %call180 = tail call i8* @__rawmemchr(i8* %newtok.3, i32 0) #2, !dbg !3025
  store i8* %call180, i8** %inp, align 8, !dbg !3026, !tbaa !1278
  %add.ptr183 = getelementptr i8, i8* %call180, i64 1, !dbg !3027
  store i8* %add.ptr183, i8** %end212, align 8, !dbg !3028, !tbaa !1281
  br label %if.end.351

if.else.191:                                      ; preds = %if.end.38
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !774, metadata !893), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !776, metadata !893), !dbg !3030
  %45 = load i8*, i8** %start194, align 8, !dbg !2799, !tbaa !1657
  %cmp195 = icmp eq i8* %45, null, !dbg !3031
  br i1 %cmp195, label %if.then.197, label %if.else.236, !dbg !3032

if.then.197:                                      ; preds = %if.else.191
  %46 = load i8*, i8** %buf198, align 8, !dbg !2801, !tbaa !1097
  %cmp199 = icmp eq i8* %46, null, !dbg !3033
  br i1 %cmp199, label %if.then.201, label %if.then.197.if.end.213_crit_edge, !dbg !3034

if.then.197.if.end.213_crit_edge:                 ; preds = %if.then.197
  %.pre = load i64, i64* %0, align 8, !dbg !2806, !tbaa !1281
  br label %if.end.213, !dbg !3034

if.then.201:                                      ; preds = %if.then.197
  %call202 = tail call i8* @PyMem_Malloc(i64 8192) #2, !dbg !3035
  store i8* %call202, i8** %buf198, align 8, !dbg !3036, !tbaa !1097
  %cmp205 = icmp eq i8* %call202, null, !dbg !3037
  br i1 %cmp205, label %if.then.207, label %if.end.209, !dbg !3039

if.then.207:                                      ; preds = %if.then.201
  store i32 15, i32* %done, align 4, !dbg !3040, !tbaa !907
  br label %return, !dbg !3042

if.end.209:                                       ; preds = %if.then.201
  %add.ptr211 = getelementptr i8, i8* %call202, i64 8192, !dbg !3043
  store i8* %add.ptr211, i8** %end212, align 8, !dbg !3044, !tbaa !1281
  %47 = ptrtoint i8* %add.ptr211 to i64, !dbg !3045
  br label %if.end.213, !dbg !3045

if.end.213:                                       ; preds = %if.then.197.if.end.213_crit_edge, %if.end.209
  %48 = phi i64 [ %47, %if.end.209 ], [ %.pre, %if.then.197.if.end.213_crit_edge ], !dbg !2806
  %49 = phi i8* [ %call202, %if.end.209 ], [ %46, %if.then.197.if.end.213_crit_edge ], !dbg !3046
  %sub.ptr.rhs.cast218 = ptrtoint i8* %49 to i64, !dbg !3047
  %sub.ptr.sub219 = sub i64 %48, %sub.ptr.rhs.cast218, !dbg !3047
  %conv220 = trunc i64 %sub.ptr.sub219 to i32, !dbg !3048
  %call221 = tail call fastcc i8* @decoding_fgets(i8* %49, i32 %conv220, %struct.tok_state* %tok), !dbg !3049
  %cmp222 = icmp eq i8* %call221, null, !dbg !3050
  br i1 %cmp222, label %if.end.249.thread, label %if.end.249, !dbg !3051

if.else.236:                                      ; preds = %if.else.191
  %50 = load i64, i64* %3, align 8, !dbg !3052, !tbaa !1097
  %sub.ptr.sub241 = sub i64 %8, %50, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub241, i64 0, metadata !776, metadata !893), !dbg !3030
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !856, metadata !893) #2, !dbg !3054
  %51 = load i32, i32* %decoding_state.i, align 4, !dbg !2819, !tbaa !1028
  %cmp.i.560 = icmp eq i32 %51, 2, !dbg !3055
  br i1 %cmp.i.560, label %if.else.i.563, label %if.then.i.562, !dbg !3056

if.then.i.562:                                    ; preds = %if.else.236
  %call.i.561 = tail call i32 @feof(%struct._IO_FILE* %11) #2, !dbg !3057
  br label %decoding_feof.exit, !dbg !3059

if.else.i.563:                                    ; preds = %if.else.236
  %52 = load %struct._object*, %struct._object** %decoding_buffer.i, align 8, !dbg !2823, !tbaa !1270
  tail call void @llvm.dbg.value(metadata %struct._object* %52, i64 0, metadata !857, metadata !893) #2, !dbg !3060
  %cmp1.i = icmp eq %struct._object* %52, null, !dbg !3061
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.9.i, !dbg !3062

if.then.2.i:                                      ; preds = %if.else.i.563
  %53 = load %struct._object*, %struct._object** %decoding_readline.i, align 8, !dbg !2824, !tbaa !1297
  %call3.i = tail call %struct._object* @PyObject_CallObject(%struct._object* %53, %struct._object* null) #2, !dbg !3063
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !857, metadata !893) #2, !dbg !3060
  %cmp4.i.564 = icmp eq %struct._object* %call3.i, null, !dbg !3064
  br i1 %cmp4.i.564, label %if.then.5.i, label %if.else.7.i, !dbg !3066

if.then.5.i:                                      ; preds = %if.then.2.i
  store i32 1, i32* %decoding_erred, align 4, !dbg !3067, !tbaa !1090
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3070, !tbaa !915
  %cmp.i.i = icmp eq %struct._IO_FILE* %54, null, !dbg !3071
  br i1 %cmp.i.i, label %decoding_feof.exit.thread, label %land.lhs.true.i.i, !dbg !3072

land.lhs.true.i.i:                                ; preds = %if.then.5.i
  %55 = load i8*, i8** %buf198, align 8, !dbg !3073, !tbaa !1097
  %cmp1.i.i = icmp eq i8* %55, null, !dbg !3074
  br i1 %cmp1.i.i, label %decoding_feof.exit.thread, label %if.then.i.i, !dbg !3075

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  tail call void @PyMem_Free(i8* %55) #2, !dbg !3076
  br label %decoding_feof.exit.thread, !dbg !3076

decoding_feof.exit.thread:                        ; preds = %if.then.5.i, %land.lhs.true.i.i, %if.then.i.i
  store i8* null, i8** %buf198, align 8, !dbg !3077, !tbaa !1097
  br label %if.end.249.thread, !dbg !3078

if.else.7.i:                                      ; preds = %if.then.2.i
  store %struct._object* %call3.i, %struct._object** %decoding_buffer.i, align 8, !dbg !3079, !tbaa !1270
  br label %if.end.9.i, !dbg !3081

if.end.9.i:                                       ; preds = %if.else.7.i, %if.else.i.563
  %buf.0.i = phi %struct._object* [ %call3.i, %if.else.7.i ], [ %52, %if.else.i.563 ], !dbg !3082
  %call10.i = tail call i64 @PyObject_Size(%struct._object* %buf.0.i) #2, !dbg !3083
  %cmp11.i = icmp eq i64 %call10.i, 0, !dbg !3084
  %conv.i = zext i1 %cmp11.i to i32, !dbg !3084
  br label %decoding_feof.exit, !dbg !3085

decoding_feof.exit:                               ; preds = %if.then.i.562, %if.end.9.i
  %retval.1.i = phi i32 [ %call.i.561, %if.then.i.562 ], [ %conv.i, %if.end.9.i ], !dbg !3082
  %tobool243 = icmp eq i32 %retval.1.i, 0, !dbg !3082
  br i1 %tobool243, label %if.end.249.thread691, label %if.end.249.thread, !dbg !3078

if.end.249.thread691:                             ; preds = %decoding_feof.exit
  store i32 10, i32* %done, align 4, !dbg !3086, !tbaa !907
  %56 = load i32, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  %inc251.692 = add i32 %56, 1, !dbg !3087
  store i32 %inc251.692, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  br label %while.body.lr.ph, !dbg !3088

if.end.249.thread:                                ; preds = %decoding_feof.exit, %decoding_feof.exit.thread, %if.end.213
  %cur193.0.ph = phi i64 [ 0, %if.end.213 ], [ %sub.ptr.sub241, %decoding_feof.exit.thread ], [ %sub.ptr.sub241, %decoding_feof.exit ]
  store i32 11, i32* %done, align 4, !dbg !3089, !tbaa !907
  %57 = load i32, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  %inc251.688 = add i32 %57, 1, !dbg !3087
  store i32 %inc251.688, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  br label %while.end, !dbg !3088

if.end.249:                                       ; preds = %if.end.213
  store i32 10, i32* %done, align 4, !dbg !3091, !tbaa !907
  %58 = load i8*, i8** %buf198, align 8, !dbg !3093, !tbaa !1097
  %call229 = tail call i8* @__rawmemchr(i8* %58, i32 0) #2, !dbg !3093
  store i8* %call229, i8** %inp, align 8, !dbg !3094, !tbaa !1278
  %arrayidx = getelementptr i8, i8* %call229, i64 -1, !dbg !3095
  %59 = load i8, i8* %arrayidx, align 1, !dbg !3095, !tbaa !967
  %cmp233 = icmp eq i8 %59, 10, !dbg !3096
  %60 = load i32, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  %inc251 = add i32 %60, 1, !dbg !3087
  store i32 %inc251, i32* %lineno250, align 4, !dbg !3087, !tbaa !2534
  br i1 %cmp233, label %while.end, label %while.body.lr.ph, !dbg !3088

while.body.lr.ph:                                 ; preds = %if.end.249, %if.end.249.thread691
  %cur193.0694 = phi i64 [ %sub.ptr.sub241, %if.end.249.thread691 ], [ 0, %if.end.249 ]
  br label %while.body, !dbg !3088

while.body:                                       ; preds = %cleanup.317, %while.body.lr.ph
  %61 = load i8*, i8** %start194, align 8, !dbg !3097, !tbaa !1657
  %cmp254 = icmp eq i8* %61, null, !dbg !3098
  br i1 %cmp254, label %while.body.cond.end_crit_edge, label %cond.false, !dbg !3099

while.body.cond.end_crit_edge:                    ; preds = %while.body
  %.pre684 = load i8*, i8** %buf198, align 8, !dbg !3100, !tbaa !1097
  br label %cond.end, !dbg !3099

cond.false:                                       ; preds = %while.body
  %62 = load i64, i64* %3, align 8, !dbg !2818, !tbaa !1097
  %sub.ptr.lhs.cast258 = ptrtoint i8* %61 to i64, !dbg !3101
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %62, !dbg !3101
  %63 = inttoptr i64 %62 to i8*, !dbg !3099
  br label %cond.end, !dbg !3099

cond.end:                                         ; preds = %while.body.cond.end_crit_edge, %cond.false
  %64 = phi i8* [ %63, %cond.false ], [ %.pre684, %while.body.cond.end_crit_edge ], !dbg !3100
  %cond = phi i64 [ %sub.ptr.sub260, %cond.false ], [ -1, %while.body.cond.end_crit_edge ], !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !778, metadata !893), !dbg !3102
  %65 = load i64, i64* %1, align 8, !dbg !2812, !tbaa !1278
  %sub.ptr.rhs.cast264 = ptrtoint i8* %64 to i64, !dbg !3103
  %sub.ptr.sub265 = sub i64 %65, %sub.ptr.rhs.cast264, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %sub.ptr.sub265, i64 0, metadata !780, metadata !893), !dbg !3104
  %add266 = add i64 %sub.ptr.sub265, 8192, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %add266, i64 0, metadata !781, metadata !893), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !782, metadata !893), !dbg !3107
  %call268 = tail call i8* @PyMem_Realloc(i8* %64, i64 %add266) #2, !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %call268, i64 0, metadata !782, metadata !893), !dbg !3107
  %cmp269 = icmp eq i8* %call268, null, !dbg !3109
  br i1 %cmp269, label %if.then.271, label %if.end.275, !dbg !3111

if.then.271:                                      ; preds = %cond.end
  store i32 15, i32* %done, align 4, !dbg !3112, !tbaa !907
  %66 = load i64, i64* %1, align 8, !dbg !3114, !tbaa !1278
  store i64 %66, i64* %4, align 8, !dbg !3115, !tbaa !1284
  br label %return, !dbg !3116

if.end.275:                                       ; preds = %cond.end
  store i8* %call268, i8** %buf198, align 8, !dbg !3117, !tbaa !1097
  %add.ptr278 = getelementptr i8, i8* %call268, i64 %sub.ptr.sub265, !dbg !3118
  store i8* %add.ptr278, i8** %inp, align 8, !dbg !3119, !tbaa !1278
  %add.ptr281 = getelementptr i8, i8* %call268, i64 %add266, !dbg !3120
  store i8* %add.ptr281, i8** %end212, align 8, !dbg !3121, !tbaa !1281
  %cmp283 = icmp slt i64 %cond, 0, !dbg !3122
  %67 = ptrtoint i8* %add.ptr281 to i64, !dbg !3123
  %add.ptr288 = getelementptr i8, i8* %call268, i64 %cond, !dbg !3124
  %.add.ptr288 = select i1 %cmp283, i8* null, i8* %add.ptr288, !dbg !3125
  store i8* %.add.ptr288, i8** %start194, align 8, !dbg !3126, !tbaa !1657
  %sub.ptr.rhs.cast296 = ptrtoint i8* %add.ptr278 to i64, !dbg !3127
  %sub.ptr.sub297 = sub i64 %67, %sub.ptr.rhs.cast296, !dbg !3127
  %conv298 = trunc i64 %sub.ptr.sub297 to i32, !dbg !3128
  %call299 = tail call fastcc i8* @decoding_fgets(i8* %add.ptr278, i32 %conv298, %struct.tok_state* %tok), !dbg !3129
  %cmp300 = icmp eq i8* %call299, null, !dbg !3130
  br i1 %cmp300, label %if.then.302, label %cleanup.317, !dbg !3131

if.then.302:                                      ; preds = %if.end.275
  %68 = load i32, i32* %decoding_erred, align 4, !dbg !2813, !tbaa !1090
  %tobool303 = icmp eq i32 %68, 0, !dbg !3132
  br i1 %tobool303, label %if.end.305, label %return.loopexit, !dbg !3133

if.end.305:                                       ; preds = %if.then.302
  %69 = load i16*, i16** %2, align 8, !dbg !2817, !tbaa !1278
  store i16 10, i16* %69, align 1, !dbg !3134
  br label %cleanup.317, !dbg !3135

cleanup.317:                                      ; preds = %if.end.275, %if.end.305
  %70 = load i8*, i8** %inp, align 8, !dbg !3136, !tbaa !1278
  %call310 = tail call i8* @__rawmemchr(i8* %70, i32 0) #2, !dbg !3136
  store i8* %call310, i8** %inp, align 8, !dbg !3137, !tbaa !1278
  %arrayidx313 = getelementptr i8, i8* %call310, i64 -1, !dbg !3138
  %71 = load i8, i8* %arrayidx313, align 1, !dbg !3138, !tbaa !967
  %cmp315 = icmp eq i8 %71, 10, !dbg !3139
  br i1 %cmp315, label %while.end.loopexit, label %while.body, !dbg !3088

while.end.loopexit:                               ; preds = %cleanup.317
  br label %while.end, !dbg !3140

while.end:                                        ; preds = %while.end.loopexit, %if.end.249, %if.end.249.thread
  %cur193.0690 = phi i64 [ %cur193.0.ph, %if.end.249.thread ], [ 0, %if.end.249 ], [ %cur193.0694, %while.end.loopexit ]
  %72 = load i8*, i8** %buf198, align 8, !dbg !3140, !tbaa !1097
  %cmp324 = icmp eq i8* %72, null, !dbg !3142
  br i1 %cmp324, label %if.end.351, label %if.then.326, !dbg !3143

if.then.326:                                      ; preds = %while.end
  %add.ptr328 = getelementptr i8, i8* %72, i64 %cur193.0690, !dbg !3144
  store i8* %add.ptr328, i8** %cur, align 8, !dbg !3145, !tbaa !1284
  store i8* %add.ptr328, i8** %line_start331, align 8, !dbg !3146, !tbaa !2868
  %73 = load i8*, i8** %inp, align 8, !dbg !3147, !tbaa !1278
  %add.ptr333 = getelementptr i8, i8* %73, i64 -2, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %add.ptr333, i64 0, metadata !777, metadata !893), !dbg !3149
  %cmp335 = icmp ult i8* %add.ptr333, %72, !dbg !3150
  br i1 %cmp335, label %if.end.351, label %land.lhs.true.337, !dbg !3151

land.lhs.true.337:                                ; preds = %if.then.326
  %74 = load i8, i8* %add.ptr333, align 1, !dbg !3152, !tbaa !967
  %cmp339 = icmp eq i8 %74, 13, !dbg !3153
  br i1 %cmp339, label %if.then.341, label %if.end.351, !dbg !3154

if.then.341:                                      ; preds = %land.lhs.true.337
  %incdec.ptr342 = getelementptr i8, i8* %73, i64 -1, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr342, i64 0, metadata !777, metadata !893), !dbg !3149
  store i8 10, i8* %add.ptr333, align 1, !dbg !3157, !tbaa !967
  store i8 0, i8* %incdec.ptr342, align 1, !dbg !3158, !tbaa !967
  store i8* %incdec.ptr342, i8** %inp, align 8, !dbg !3159, !tbaa !1278
  br label %if.end.351, !dbg !3160

if.end.351:                                       ; preds = %if.then.341, %land.lhs.true.337, %while.end, %if.then.326, %if.end.171, %cleanup.157.thread
  %.pr = load i32, i32* %done, align 4, !dbg !3161, !tbaa !907
  %cmp353 = icmp eq i32 %.pr, 10, !dbg !3163
  br i1 %cmp353, label %for.cond, label %if.then.355.loopexit, !dbg !3164

if.then.355.loopexit:                             ; preds = %if.end.351
  br label %if.then.355, !dbg !3165

if.then.355:                                      ; preds = %if.then.355.loopexit, %if.then.110, %if.then.104
  %75 = load i8*, i8** %prompt, align 8, !dbg !3165, !tbaa !1512
  %cmp357 = icmp eq i8* %75, null, !dbg !3168
  br i1 %cmp357, label %if.end.360, label %if.then.359, !dbg !3169

if.then.359:                                      ; preds = %if.then.355
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #2, !dbg !3170
  br label %if.end.360, !dbg !3170

if.end.360:                                       ; preds = %if.then.355, %if.then.359
  %76 = load i64, i64* %1, align 8, !dbg !3171, !tbaa !1278
  store i64 %76, i64* %4, align 8, !dbg !3172, !tbaa !1284
  br label %return, !dbg !3173

return.loopexit:                                  ; preds = %if.then.302
  br label %return, !dbg !3174

return.loopexit737:                               ; preds = %if.end, %translate_newlines.exit
  br label %return, !dbg !3174

return:                                           ; preds = %return.loopexit737, %return.loopexit, %translate_newlines.exit.thread, %if.then.271, %if.then.207, %cleanup.90, %cleanup.157, %if.then.21, %if.end.29, %if.end.360, %if.then
  %retval.13 = phi i32 [ %conv3, %if.then ], [ -1, %if.end.360 ], [ %conv37, %if.end.29 ], [ -1, %if.then.21 ], [ -1, %cleanup.157 ], [ -1, %cleanup.90 ], [ -1, %if.then.207 ], [ -1, %if.then.271 ], [ -1, %translate_newlines.exit.thread ], [ -1, %return.loopexit ], [ -1, %return.loopexit737 ]
  ret i32 %retval.13, !dbg !3174
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @__rawmemchr(i8*, i32) #3

declare i8* @PyOS_Readline(%struct._IO_FILE*, %struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i8* @decoding_fgets(i8* %s, i32 %size, %struct.tok_state* %tok) #0 {
entry:
  %buflen.i = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !787, metadata !893), !dbg !3175
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !788, metadata !893), !dbg !3176
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !789, metadata !893), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !790, metadata !893), !dbg !3178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !791, metadata !893), !dbg !3179
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 21, !dbg !3180
  %fp.i.109 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 6, !dbg !3185
  %encoding.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 24, !dbg !3191
  %done.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !3192
  br label %for.condthread-pre-split, !dbg !3194

for.condthread-pre-split:                         ; preds = %for.condthread-pre-split.backedge, %entry
  %.pr = load i32, i32* %decoding_state, align 4, !dbg !3180, !tbaa !1028
  br label %for.cond, !dbg !3180

for.cond:                                         ; preds = %for.condthread-pre-split, %if.else.5
  %0 = phi i32 [ %.pr, %for.condthread-pre-split ], [ 1, %if.else.5 ], !dbg !3180
  switch i32 %0, label %if.else.5 [
    i32 2, label %if.then
    i32 1, label %if.then.3
  ], !dbg !3195

if.then:                                          ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !798, metadata !893) #2, !dbg !3196
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !799, metadata !893) #2, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !800, metadata !893) #2, !dbg !3200
  %1 = bitcast i64* %buflen.i to i8*, !dbg !3201
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3201
  %dec.i = add i32 %size, -1, !dbg !3202
  tail call void @llvm.dbg.value(metadata i32 %dec.i, i64 0, metadata !799, metadata !893) #2, !dbg !3199
  %decoding_buffer.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 28, !dbg !3203
  %2 = load %struct._object*, %struct._object** %decoding_buffer.i, align 8, !dbg !3203, !tbaa !1270
  %tobool.i = icmp eq %struct._object* %2, null, !dbg !3205
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !3206

if.then.i:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !801, metadata !893) #2, !dbg !3207
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !3208
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3208, !tbaa !1127
  %inc.i = add i64 %3, 1, !dbg !3208
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !3208, !tbaa !1127
  br label %if.end.3.i, !dbg !3210

if.else.i:                                        ; preds = %if.then
  %decoding_readline.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 27, !dbg !3211
  %4 = load %struct._object*, %struct._object** %decoding_readline.i, align 8, !dbg !3211, !tbaa !1297
  %call.i = tail call %struct._object* @PyObject_CallObject(%struct._object* %4, %struct._object* null) #2, !dbg !3213
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !801, metadata !893) #2, !dbg !3207
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !3214
  br i1 %cmp.i, label %if.end.80.i, label %if.end.3.i, !dbg !3216

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %bufobj.0.i = phi %struct._object* [ %2, %if.then.i ], [ %call.i, %if.else.i ], !dbg !3217
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %bufobj.0.i, i64 0, i32 1, !dbg !3218
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3218, !tbaa !1133
  %cmp4.i = icmp eq %struct._typeobject* %5, @PyUnicode_Type, !dbg !3218
  br i1 %cmp4.i, label %if.then.5.i, label %if.else.10.i, !dbg !3220

if.then.5.i:                                      ; preds = %if.end.3.i
  tail call void @llvm.dbg.value(metadata i64* %buflen.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  %call6.i = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %bufobj.0.i, i64* nonnull %buflen.i) #2, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %call6.i, i64 0, metadata !802, metadata !893) #2, !dbg !3224
  %cmp7.i = icmp eq i8* %call6.i, null, !dbg !3225
  br i1 %cmp7.i, label %do.body.67.i, label %do.body.i, !dbg !3227

if.else.10.i:                                     ; preds = %if.end.3.i
  %call11.i = tail call i8* @PyByteArray_AsString(%struct._object* %bufobj.0.i) #2, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %call11.i, i64 0, metadata !802, metadata !893) #2, !dbg !3224
  %cmp12.i = icmp eq i8* %call11.i, null, !dbg !3230
  br i1 %cmp12.i, label %do.body.67.i, label %if.end.14.i, !dbg !3232

if.end.14.i:                                      ; preds = %if.else.10.i
  %6 = getelementptr inbounds %struct._object, %struct._object* %bufobj.0.i, i64 1, i32 0, !dbg !3233
  %7 = load i64, i64* %6, align 8, !dbg !3233, !tbaa !2954
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  store i64 %7, i64* %buflen.i, align 8, !dbg !3234, !tbaa !3235
  br label %do.body.i, !dbg !3217

do.body.i:                                        ; preds = %if.end.14.i, %if.then.5.i
  %buf.0.i = phi i8* [ %call6.i, %if.then.5.i ], [ %call11.i, %if.end.14.i ], !dbg !3217
  %8 = load %struct._object*, %struct._object** %decoding_buffer.i, align 8, !dbg !3236, !tbaa !1270
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !804, metadata !893) #2, !dbg !3236
  %cmp17.i = icmp eq %struct._object* %8, null, !dbg !3238
  br i1 %cmp17.i, label %if.end.27.i, label %do.body.19.i, !dbg !3239

do.body.19.i:                                     ; preds = %do.body.i
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !806, metadata !893) #2, !dbg !3240
  %ob_refcnt20.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !3242
  %9 = load i64, i64* %ob_refcnt20.i, align 8, !dbg !3242, !tbaa !1127
  %dec21.i = add i64 %9, -1, !dbg !3242
  store i64 %dec21.i, i64* %ob_refcnt20.i, align 8, !dbg !3242, !tbaa !1127
  %cmp22.i = icmp eq i64 %dec21.i, 0, !dbg !3242
  br i1 %cmp22.i, label %if.else.24.i, label %if.end.27.i, !dbg !3244

if.else.24.i:                                     ; preds = %do.body.19.i
  %ob_type25.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !3245
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type25.i, align 8, !dbg !3245, !tbaa !1133
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !3245
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3245, !tbaa !1134
  call void %11(%struct._object* %8) #2, !dbg !3245
  br label %if.end.27.i, !dbg !3217

if.end.27.i:                                      ; preds = %if.else.24.i, %do.body.19.i, %do.body.i
  call void @llvm.dbg.value(metadata i64* %buflen.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  %12 = load i64, i64* %buflen.i, align 8, !dbg !3247, !tbaa !3235
  %conv.i = sext i32 %dec.i to i64, !dbg !3249
  %cmp30.i = icmp sgt i64 %12, %conv.i, !dbg !3250
  br i1 %cmp30.i, label %if.then.32.i, label %if.else.42.i, !dbg !3251

if.then.32.i:                                     ; preds = %if.end.27.i
  %add.ptr.i = getelementptr i8, i8* %buf.0.i, i64 %conv.i, !dbg !3252
  %sub.i = sub i64 %12, %conv.i, !dbg !3254
  %call34.i = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr.i, i64 %sub.i) #2, !dbg !3255
  store %struct._object* %call34.i, %struct._object** %decoding_buffer.i, align 8, !dbg !3256, !tbaa !1270
  %cmp37.i = icmp eq %struct._object* %call34.i, null, !dbg !3257
  br i1 %cmp37.i, label %do.body.67.i, label %if.end.40.i, !dbg !3259

if.end.40.i:                                      ; preds = %if.then.32.i
  call void @llvm.dbg.value(metadata i64 %conv.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  store i64 %conv.i, i64* %buflen.i, align 8, !dbg !3260, !tbaa !3235
  br label %if.end.44.i, !dbg !3261

if.else.42.i:                                     ; preds = %if.end.27.i
  store %struct._object* null, %struct._object** %decoding_buffer.i, align 8, !dbg !3262, !tbaa !1270
  br label %if.end.44.i, !dbg !3217

if.end.44.i:                                      ; preds = %if.else.42.i, %if.end.40.i
  %13 = phi i64 [ %12, %if.else.42.i ], [ %conv.i, %if.end.40.i ], !dbg !3263
  call void @llvm.dbg.value(metadata i64* %buflen.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %s, i8* %buf.0.i, i64 %13, i32 1, i1 false) #2, !dbg !3264
  call void @llvm.dbg.value(metadata i64* %buflen.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  %arrayidx.i = getelementptr i8, i8* %s, i64 %13, !dbg !3265
  store i8 0, i8* %arrayidx.i, align 1, !dbg !3266, !tbaa !967
  call void @llvm.dbg.value(metadata i64* %buflen.i, i64 0, metadata !803, metadata !893) #2, !dbg !3221
  %cmp45.i = icmp eq i64 %13, 0, !dbg !3267
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !798, metadata !893) #2, !dbg !3196
  %.s.i = select i1 %cmp45.i, i8* null, i8* %s, !dbg !3269
  call void @llvm.dbg.value(metadata %struct._object* %bufobj.0.i, i64 0, metadata !809, metadata !893) #2, !dbg !3270
  %ob_refcnt51.i = getelementptr inbounds %struct._object, %struct._object* %bufobj.0.i, i64 0, i32 0, !dbg !3272
  %14 = load i64, i64* %ob_refcnt51.i, align 8, !dbg !3272, !tbaa !1127
  %dec52.i = add i64 %14, -1, !dbg !3272
  store i64 %dec52.i, i64* %ob_refcnt51.i, align 8, !dbg !3272, !tbaa !1127
  %cmp53.i = icmp eq i64 %dec52.i, 0, !dbg !3272
  br i1 %cmp53.i, label %if.else.56.i, label %fp_readl.exit, !dbg !3274

if.else.56.i:                                     ; preds = %if.end.44.i
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3275, !tbaa !1133
  %tp_dealloc58.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !3275
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58.i, align 8, !dbg !3275, !tbaa !1134
  call void %16(%struct._object* %bufobj.0.i) #2, !dbg !3275
  br label %fp_readl.exit, !dbg !3217

do.body.67.i:                                     ; preds = %if.then.32.i, %if.else.10.i, %if.then.5.i
  %ob_refcnt69.i = getelementptr inbounds %struct._object, %struct._object* %bufobj.0.i, i64 0, i32 0, !dbg !3277
  %17 = load i64, i64* %ob_refcnt69.i, align 8, !dbg !3277, !tbaa !1127
  %dec70.i = add i64 %17, -1, !dbg !3277
  store i64 %dec70.i, i64* %ob_refcnt69.i, align 8, !dbg !3277, !tbaa !1127
  %cmp71.i = icmp eq i64 %dec70.i, 0, !dbg !3277
  br i1 %cmp71.i, label %if.else.74.i, label %if.end.80.i, !dbg !3279

if.else.74.i:                                     ; preds = %do.body.67.i
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3280, !tbaa !1133
  %tp_dealloc76.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !3280
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76.i, align 8, !dbg !3280, !tbaa !1134
  call void %19(%struct._object* %bufobj.0.i) #2, !dbg !3280
  br label %if.end.80.i, !dbg !3217

if.end.80.i:                                      ; preds = %if.else.74.i, %do.body.67.i, %if.else.i
  %decoding_erred.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !3282
  store i32 1, i32* %decoding_erred.i.i, align 4, !dbg !3284, !tbaa !1090
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3285, !tbaa !915
  %cmp.i.i = icmp eq %struct._IO_FILE* %20, null, !dbg !3286
  %.pre.i.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !3287
  br i1 %cmp.i.i, label %error_ret.exit.i, label %land.lhs.true.i.i, !dbg !3288

land.lhs.true.i.i:                                ; preds = %if.end.80.i
  %21 = load i8*, i8** %.pre.i.i, align 8, !dbg !3289, !tbaa !1097
  %cmp1.i.i = icmp eq i8* %21, null, !dbg !3290
  br i1 %cmp1.i.i, label %error_ret.exit.i, label %if.then.i.i, !dbg !3291

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @PyMem_Free(i8* %21) #2, !dbg !3292
  br label %error_ret.exit.i, !dbg !3292

error_ret.exit.i:                                 ; preds = %if.then.i.i, %land.lhs.true.i.i, %if.end.80.i
  store i8* null, i8** %.pre.i.i, align 8, !dbg !3293, !tbaa !1097
  br label %fp_readl.exit, !dbg !3294

fp_readl.exit:                                    ; preds = %if.end.44.i, %if.else.56.i, %error_ret.exit.i
  %retval.0.i = phi i8* [ null, %error_ret.exit.i ], [ %.s.i, %if.end.44.i ], [ %.s.i, %if.else.56.i ], !dbg !3217
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %retval.0.i, i64 0, metadata !790, metadata !893), !dbg !3178
  br label %for.end, !dbg !3296

if.then.3:                                        ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3297, !tbaa !915
  %call4 = tail call i8* @Py_UniversalNewlineFgets(i8* %s, i32 %size, %struct._IO_FILE* %22, %struct._object* null) #2, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %call4, i64 0, metadata !790, metadata !893), !dbg !3178
  br label %for.end, !dbg !3300

if.else.5:                                        ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata i32 (%struct.tok_state*, i8*)* null, i64 0, metadata !557, metadata !893) #2, !dbg !3301
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !818, metadata !893) #2, !dbg !3302
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3185, !tbaa !915
  %call.i.110 = tail call i32 @_IO_getc(%struct._IO_FILE* %23) #2, !dbg !3185
  tail call void @llvm.dbg.value(metadata i32 %call.i.110, i64 0, metadata !559, metadata !893) #2, !dbg !3303
  store i32 1, i32* %decoding_state, align 4, !dbg !3304, !tbaa !1028
  switch i32 %call.i.110, label %if.else.10.i.75 [
    i32 -1, label %for.cond
    i32 239, label %if.then.2.i
  ], !dbg !3305

if.then.2.i:                                      ; preds = %if.else.5
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !818, metadata !893) #2, !dbg !3306
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3308, !tbaa !915
  %call.i.112 = tail call i32 @_IO_getc(%struct._IO_FILE* %24) #2, !dbg !3308
  tail call void @llvm.dbg.value(metadata i32 %call.i.112, i64 0, metadata !560, metadata !893) #2, !dbg !3309
  %cmp4.i.71 = icmp eq i32 %call.i.112, 187, !dbg !3310
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3311, !tbaa !915
  br i1 %cmp4.i.71, label %if.end.i, label %if.then.5.i.72, !dbg !3313

if.then.5.i.72:                                   ; preds = %if.then.2.i
  tail call void @llvm.dbg.value(metadata i32 %call.i.112, i64 0, metadata !821, metadata !893) #2, !dbg !3314
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3316
  %call.i.114 = tail call i32 @ungetc(i32 %call.i.112, %struct._IO_FILE* %25) #2, !dbg !3317
  tail call void @llvm.dbg.value(metadata i32 239, i64 0, metadata !821, metadata !893) #2, !dbg !3318
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3320
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3321, !tbaa !915
  %call.i.116 = tail call i32 @ungetc(i32 239, %struct._IO_FILE* %26) #2, !dbg !3322
  br label %for.condthread-pre-split.backedge, !dbg !3323

if.end.i:                                         ; preds = %if.then.2.i
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !818, metadata !893) #2, !dbg !3324
  %call.i.118 = tail call i32 @_IO_getc(%struct._IO_FILE* %25) #2, !dbg !3311
  tail call void @llvm.dbg.value(metadata i32 %call.i.118, i64 0, metadata !561, metadata !893) #2, !dbg !3325
  %cmp7.i.74 = icmp eq i32 %call.i.118, 191, !dbg !3326
  br i1 %cmp7.i.74, label %if.end.12.i, label %if.then.8.i, !dbg !3327

if.then.8.i:                                      ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata i32 %call.i.118, i64 0, metadata !821, metadata !893) #2, !dbg !3328
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3330
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3331, !tbaa !915
  %call.i.120 = tail call i32 @ungetc(i32 %call.i.118, %struct._IO_FILE* %27) #2, !dbg !3332
  tail call void @llvm.dbg.value(metadata i32 187, i64 0, metadata !821, metadata !893) #2, !dbg !3333
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3335
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3336, !tbaa !915
  %call.i.122 = tail call i32 @ungetc(i32 187, %struct._IO_FILE* %28) #2, !dbg !3337
  tail call void @llvm.dbg.value(metadata i32 239, i64 0, metadata !821, metadata !893) #2, !dbg !3338
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3340
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3341, !tbaa !915
  %call.i.124 = tail call i32 @ungetc(i32 239, %struct._IO_FILE* %29) #2, !dbg !3342
  br label %for.condthread-pre-split.backedge, !dbg !3343

if.else.10.i.75:                                  ; preds = %if.else.5
  %call.i.110.lcssa = phi i32 [ %call.i.110, %if.else.5 ]
  tail call void @llvm.dbg.value(metadata i32 %call.i.110, i64 0, metadata !821, metadata !893) #2, !dbg !3344
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !822, metadata !893) #2, !dbg !3346
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3347, !tbaa !915
  %call.i.126 = tail call i32 @ungetc(i32 %call.i.110.lcssa, %struct._IO_FILE* %30) #2, !dbg !3348
  br label %for.condthread-pre-split.backedge, !dbg !3349

if.end.12.i:                                      ; preds = %if.end.i
  %31 = load i8*, i8** %encoding.i, align 8, !dbg !3191, !tbaa !1071
  %cmp13.i = icmp eq i8* %31, null, !dbg !3350
  br i1 %cmp13.i, label %if.end.16.i, label %if.then.14.i, !dbg !3351

if.then.14.i:                                     ; preds = %if.end.12.i
  tail call void @PyMem_Free(i8* %31) #2, !dbg !3352
  br label %if.end.16.i, !dbg !3352

if.end.16.i:                                      ; preds = %if.then.14.i, %if.end.12.i
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i64 0, metadata !566, metadata !893) #2, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !567, metadata !893) #2, !dbg !3354
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !568, metadata !893) #2, !dbg !3355
  %call.i.i = tail call i8* @PyMem_Malloc(i64 6) #2, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !569, metadata !893) #2, !dbg !3357
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !3358
  br i1 %tobool.i.i, label %if.then.7, label %check_bom.exit, !dbg !3359

check_bom.exit:                                   ; preds = %if.end.16.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i64 5, i32 1, i1 false) #2, !dbg !3360
  %arrayidx.i.i = getelementptr i8, i8* %call.i.i, i64 5, !dbg !3361
  store i8 0, i8* %arrayidx.i.i, align 1, !dbg !3362, !tbaa !967
  store i8* %call.i.i, i8** %encoding.i, align 8, !dbg !3363, !tbaa !1071
  br label %for.condthread-pre-split.backedge

for.condthread-pre-split.backedge:                ; preds = %check_bom.exit, %if.else.10.i.75, %if.then.8.i, %if.then.5.i.72
  br label %for.condthread-pre-split, !dbg !3180

if.then.7:                                        ; preds = %if.end.16.i
  store i32 15, i32* %done.i.i, align 4, !dbg !3364, !tbaa !907
  store i8* null, i8** %encoding.i, align 8, !dbg !3363, !tbaa !1071
  %decoding_erred.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !3365
  store i32 1, i32* %decoding_erred.i, align 4, !dbg !3367, !tbaa !1090
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3368, !tbaa !915
  %cmp.i.78 = icmp eq %struct._IO_FILE* %32, null, !dbg !3369
  %.pre.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !3370
  br i1 %cmp.i.78, label %error_ret.exit, label %land.lhs.true.i, !dbg !3371

land.lhs.true.i:                                  ; preds = %if.then.7
  %33 = load i8*, i8** %.pre.i, align 8, !dbg !3372, !tbaa !1097
  %cmp1.i = icmp eq i8* %33, null, !dbg !3373
  br i1 %cmp1.i, label %error_ret.exit, label %if.then.i.79, !dbg !3374

if.then.i.79:                                     ; preds = %land.lhs.true.i
  tail call void @PyMem_Free(i8* %33) #2, !dbg !3375
  br label %error_ret.exit, !dbg !3375

error_ret.exit:                                   ; preds = %if.then.7, %land.lhs.true.i, %if.then.i.79
  store i8* null, i8** %.pre.i, align 8, !dbg !3376, !tbaa !1097
  br label %cleanup, !dbg !3377

for.end:                                          ; preds = %if.then.3, %fp_readl.exit
  %line.0 = phi i8* [ %retval.0.i, %fp_readl.exit ], [ %call4, %if.then.3 ]
  %cmp11 = icmp eq i8* %line.0, null, !dbg !3378
  br i1 %cmp11, label %cleanup, label %land.lhs.true, !dbg !3380

land.lhs.true:                                    ; preds = %for.end
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 14, !dbg !3381
  %34 = load i32, i32* %lineno, align 4, !dbg !3381, !tbaa !2534
  %cmp12 = icmp slt i32 %34, 2, !dbg !3382
  br i1 %cmp12, label %land.lhs.true.13, label %land.lhs.true.24, !dbg !3383

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 23, !dbg !3384
  %35 = load i32, i32* %read_coding_spec, align 4, !dbg !3384, !tbaa !1206
  %tobool14 = icmp eq i32 %35, 0, !dbg !3385
  br i1 %tobool14, label %if.then.15, label %land.lhs.true.24, !dbg !3386

if.then.15:                                       ; preds = %land.lhs.true.13
  %call16 = call i64 @strlen(i8* %line.0) #9, !dbg !3387
  %call17 = call fastcc i32 @check_coding_spec(i8* %line.0, i64 %call16, %struct.tok_state* %tok, i32 (%struct.tok_state*, i8*)* nonnull @fp_setreadl), !dbg !3390
  %tobool18 = icmp eq i32 %call17, 0, !dbg !3390
  br i1 %tobool18, label %if.then.19, label %land.lhs.true.24, !dbg !3391

if.then.19:                                       ; preds = %if.then.15
  %decoding_erred.i.81 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !3392
  store i32 1, i32* %decoding_erred.i.81, align 4, !dbg !3395, !tbaa !1090
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3396, !tbaa !915
  %cmp.i.83 = icmp eq %struct._IO_FILE* %36, null, !dbg !3397
  %.pre.i.84 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !3398
  br i1 %cmp.i.83, label %error_ret.exit89, label %land.lhs.true.i.86, !dbg !3399

land.lhs.true.i.86:                               ; preds = %if.then.19
  %37 = load i8*, i8** %.pre.i.84, align 8, !dbg !3400, !tbaa !1097
  %cmp1.i.85 = icmp eq i8* %37, null, !dbg !3401
  br i1 %cmp1.i.85, label %error_ret.exit89, label %if.then.i.87, !dbg !3402

if.then.i.87:                                     ; preds = %land.lhs.true.i.86
  call void @PyMem_Free(i8* %37) #2, !dbg !3403
  br label %error_ret.exit89, !dbg !3403

error_ret.exit89:                                 ; preds = %if.then.19, %land.lhs.true.i.86, %if.then.i.87
  store i8* null, i8** %.pre.i.84, align 8, !dbg !3404, !tbaa !1097
  br label %cleanup, !dbg !3405

land.lhs.true.24:                                 ; preds = %land.lhs.true, %land.lhs.true.13, %if.then.15
  %38 = load i8*, i8** %encoding.i, align 8, !dbg !3406, !tbaa !1071
  %tobool25 = icmp eq i8* %38, null, !dbg !3407
  br i1 %tobool25, label %for.cond.27.preheader, label %cleanup, !dbg !3408

for.cond.27.preheader:                            ; preds = %land.lhs.true.24
  %39 = load i8, i8* %line.0, align 1, !dbg !3409, !tbaa !967
  %tobool28.138 = icmp eq i8 %39, 0, !dbg !3412
  br i1 %tobool28.138, label %cleanup, label %for.body.preheader, !dbg !3412

for.body.preheader:                               ; preds = %for.cond.27.preheader
  br label %for.body, !dbg !3413

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %40 = phi i8 [ %42, %for.inc ], [ %39, %for.body.preheader ], !dbg !3416
  %c.0139 = phi i8* [ %add.ptr, %for.inc ], [ %line.0, %for.body.preheader ]
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !851, metadata !893), !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !852, metadata !893), !dbg !3418
  %cmp.i.90 = icmp sgt i8 %40, -1, !dbg !3419
  br i1 %cmp.i.90, label %for.inc, label %if.end.i.91, !dbg !3421

if.end.i.91:                                      ; preds = %for.body
  %cmp3.i = icmp ult i8 %40, -64, !dbg !3422
  br i1 %cmp3.i, label %if.then.36.loopexit, label %if.end.6.i, !dbg !3424

if.end.6.i:                                       ; preds = %if.end.i.91
  %cmp8.i = icmp ult i8 %40, -32, !dbg !3425
  br i1 %cmp8.i, label %if.end.23.i, label %if.else.i.93, !dbg !3427

if.else.i.93:                                     ; preds = %if.end.6.i
  %cmp12.i.92 = icmp ult i8 %40, -16, !dbg !3428
  br i1 %cmp12.i.92, label %if.end.23.i, label %if.else.15.i, !dbg !3430

if.else.15.i:                                     ; preds = %if.else.i.93
  %cmp17.i.94 = icmp ult i8 %40, -8, !dbg !3431
  br i1 %cmp17.i.94, label %if.end.23.i, label %if.then.36.loopexit, !dbg !3433

if.end.23.i:                                      ; preds = %if.else.15.i, %if.else.i.93, %if.end.6.i
  %expected.0.i = phi i32 [ 1, %if.end.6.i ], [ 2, %if.else.i.93 ], [ 3, %if.else.15.i ], !dbg !3434
  %add.i = add nuw nsw i32 %expected.0.i, 1, !dbg !3435
  tail call void @llvm.dbg.value(metadata i32 %add.i, i64 0, metadata !853, metadata !893), !dbg !3436
  br label %for.body.i, !dbg !3437

for.cond.i:                                       ; preds = %for.body.i
  %tobool.i.95 = icmp eq i32 %dec.i.98, 0, !dbg !3437
  br i1 %tobool.i.95, label %for.inc.loopexit, label %for.body.i, !dbg !3437

for.body.i:                                       ; preds = %for.cond.i, %if.end.23.i
  %expected.147.i = phi i32 [ %expected.0.i, %if.end.23.i ], [ %dec.i.98, %for.cond.i ], !dbg !3434
  %idxprom.i = sext i32 %expected.147.i to i64, !dbg !3439
  %arrayidx.i.96 = getelementptr i8, i8* %c.0139, i64 %idxprom.i, !dbg !3439
  %41 = load i8, i8* %arrayidx.i.96, align 1, !dbg !3439, !tbaa !967
  %cmp25.i = icmp sgt i8 %41, -1, !dbg !3442
  %cmp30.i.97 = icmp ugt i8 %41, -65, !dbg !3443
  %or.cond.i = or i1 %cmp25.i, %cmp30.i.97, !dbg !3444
  %dec.i.98 = add i32 %expected.147.i, -1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i32 %dec.i.98, i64 0, metadata !852, metadata !893), !dbg !3418
  br i1 %or.cond.i, label %if.end.34, label %for.cond.i, !dbg !3444

for.inc.loopexit:                                 ; preds = %for.cond.i
  br label %for.inc, !dbg !3446

for.inc:                                          ; preds = %for.inc.loopexit, %for.body
  %retval.0.i.99.ph = phi i32 [ 1, %for.body ], [ %add.i, %for.inc.loopexit ]
  %idx.ext = sext i32 %retval.0.i.99.ph to i64, !dbg !3446
  %add.ptr = getelementptr i8, i8* %c.0139, i64 %idx.ext, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !792, metadata !893), !dbg !3447
  %42 = load i8, i8* %add.ptr, align 1, !dbg !3409, !tbaa !967
  %tobool28 = icmp eq i8 %42, 0, !dbg !3412
  br i1 %tobool28, label %cleanup.loopexit, label %for.body, !dbg !3412

if.end.34:                                        ; preds = %for.body.i
  %.lcssa155 = phi i8 [ %40, %for.body.i ]
  call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !791, metadata !893), !dbg !3179
  %tobool35 = icmp eq i8 %.lcssa155, 0, !dbg !3448
  br i1 %tobool35, label %cleanup, label %if.then.36, !dbg !3450

if.then.36.loopexit:                              ; preds = %if.else.15.i, %if.end.i.91
  %.lcssa = phi i8 [ %40, %if.else.15.i ], [ %40, %if.end.i.91 ]
  br label %if.then.36, !dbg !3416

if.then.36:                                       ; preds = %if.then.36.loopexit, %if.end.34
  %43 = phi i8 [ %.lcssa, %if.then.36.loopexit ], [ %.lcssa155, %if.end.34 ]
  %conv = zext i8 %43 to i32, !dbg !3416
  %44 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !3451, !tbaa !1169
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 16, !dbg !3453
  %45 = load %struct._object*, %struct._object** %filename, align 8, !dbg !3453, !tbaa !939
  %46 = load i32, i32* %lineno, align 4, !dbg !3454, !tbaa !2534
  %add = add i32 %46, 1, !dbg !3455
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %44, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.69, i64 0, i64 0), i32 %conv, %struct._object* %45, i32 %add) #2, !dbg !3456
  %decoding_erred.i.100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 22, !dbg !3457
  store i32 1, i32* %decoding_erred.i.100, align 4, !dbg !3459, !tbaa !1090
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i.109, align 8, !dbg !3460, !tbaa !915
  %cmp.i.102 = icmp eq %struct._IO_FILE* %47, null, !dbg !3461
  %.pre.i.103 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !3462
  br i1 %cmp.i.102, label %error_ret.exit108, label %land.lhs.true.i.105, !dbg !3463

land.lhs.true.i.105:                              ; preds = %if.then.36
  %48 = load i8*, i8** %.pre.i.103, align 8, !dbg !3464, !tbaa !1097
  %cmp1.i.104 = icmp eq i8* %48, null, !dbg !3465
  br i1 %cmp1.i.104, label %error_ret.exit108, label %if.then.i.106, !dbg !3466

if.then.i.106:                                    ; preds = %land.lhs.true.i.105
  call void @PyMem_Free(i8* %48) #2, !dbg !3467
  br label %error_ret.exit108, !dbg !3467

error_ret.exit108:                                ; preds = %if.then.36, %land.lhs.true.i.105, %if.then.i.106
  store i8* null, i8** %.pre.i.103, align 8, !dbg !3468, !tbaa !1097
  br label %cleanup, !dbg !3469

cleanup.loopexit:                                 ; preds = %for.inc
  br label %cleanup, !dbg !3470

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond.27.preheader, %for.end, %land.lhs.true.24, %if.end.34, %error_ret.exit108, %error_ret.exit89, %error_ret.exit
  %retval.0 = phi i8* [ null, %error_ret.exit108 ], [ null, %error_ret.exit89 ], [ null, %error_ret.exit ], [ %line.0, %if.end.34 ], [ %line.0, %land.lhs.true.24 ], [ null, %for.end ], [ %line.0, %for.cond.27.preheader ], [ %line.0, %cleanup.loopexit ]
  ret i8* %retval.0, !dbg !3470
}

declare void @PySys_WriteStderr(i8*, ...) #3

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fp_setreadl(%struct.tok_state* nocapture %tok, i8* %enc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !825, metadata !893), !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !826, metadata !893), !dbg !3472
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !827, metadata !893), !dbg !3473
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !828, metadata !893), !dbg !3474
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !829, metadata !893), !dbg !3475
  %call = tail call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0)) #2, !dbg !3476
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !829, metadata !893), !dbg !3475
  %cmp = icmp eq %struct._object* %call, null, !dbg !3477
  br i1 %cmp, label %if.end.68, label %if.end, !dbg !3479

if.end:                                           ; preds = %entry
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 6, !dbg !3480
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3480, !tbaa !915
  %call1 = tail call i32 @fileno(%struct._IO_FILE* %0) #2, !dbg !3481
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !830, metadata !893), !dbg !3482
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3483, !tbaa !915
  %call3 = tail call i64 @ftell(%struct._IO_FILE* %1) #2, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !831, metadata !893), !dbg !3485
  %cmp4 = icmp eq i64 %call3, -1, !dbg !3486
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false, !dbg !3488

lor.lhs.false:                                    ; preds = %if.end
  %cmp5 = icmp sgt i64 %call3, 0, !dbg !3489
  %sub = sext i1 %cmp5 to i64, !dbg !3490
  %cond = add i64 %sub, %call3, !dbg !3490
  %call6 = tail call i64 @lseek64(i32 %call1, i64 %cond, i32 0) #2, !dbg !3491
  %cmp7 = icmp eq i64 %call6, -1, !dbg !3494
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !3495

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !3496, !tbaa !1169
  %call9 = tail call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %2, i8* null) #2, !dbg !3498
  br label %do.body.56, !dbg !3499

if.end.10:                                        ; preds = %lor.lhs.false
  %call11 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %call, %struct._Py_Identifier* nonnull @fp_setreadl.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i32 %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i32 -1, i8* %enc, %struct._object* nonnull @_Py_NoneStruct, %struct._object* nonnull @_Py_NoneStruct, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0)) #2, !dbg !3500
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !828, metadata !893), !dbg !3474
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !3501
  br i1 %cmp12, label %do.body.56, label %do.body, !dbg !3503

do.body:                                          ; preds = %if.end.10
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 27, !dbg !3504
  %3 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !3504, !tbaa !1297
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !832, metadata !893), !dbg !3504
  %cmp15 = icmp eq %struct._object* %3, null, !dbg !3506
  br i1 %cmp15, label %if.end.21, label %do.body.17, !dbg !3507

do.body.17:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !834, metadata !893), !dbg !3508
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !3510
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !3510, !tbaa !1127
  %dec = add i64 %4, -1, !dbg !3510
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3510, !tbaa !1127
  %cmp18 = icmp eq i64 %dec, 0, !dbg !3510
  br i1 %cmp18, label %if.else, label %if.end.21, !dbg !3512

if.else:                                          ; preds = %do.body.17
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !3513
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3513, !tbaa !1133
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !3513
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3513, !tbaa !1134
  tail call void %6(%struct._object* %3) #2, !dbg !3513
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %do.body.17, %do.body
  %call24 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call11, %struct._Py_Identifier* nonnull @fp_setreadl.PyId_readline) #2, !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !827, metadata !893), !dbg !3473
  store %struct._object* %call24, %struct._object** %decoding_readline, align 8, !dbg !3516, !tbaa !1297
  br i1 %cmp5, label %if.then.27, label %do.body.37, !dbg !3517

if.then.27:                                       ; preds = %if.end.21
  %call28 = tail call %struct._object* @PyObject_CallObject(%struct._object* %call24, %struct._object* null) #2, !dbg !3518
  %cmp29 = icmp eq %struct._object* %call28, null, !dbg !3522
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !827, metadata !893), !dbg !3473
  %.call24 = select i1 %cmp29, %struct._object* null, %struct._object* %call24, !dbg !3523
  br label %do.body.37, !dbg !3523

do.body.37:                                       ; preds = %if.end.21, %if.then.27
  %readline.0.ph = phi %struct._object* [ %.call24, %if.then.27 ], [ %call24, %if.end.21 ]
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 0, !dbg !3524
  %7 = load i64, i64* %ob_refcnt39, align 8, !dbg !3524, !tbaa !1127
  %dec40 = add i64 %7, -1, !dbg !3524
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !3524, !tbaa !1127
  %cmp41 = icmp eq i64 %dec40, 0, !dbg !3524
  br i1 %cmp41, label %if.else.43, label %do.body.56, !dbg !3526

if.else.43:                                       ; preds = %do.body.37
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 1, !dbg !3527
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !3527, !tbaa !1133
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !3527
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !3527, !tbaa !1134
  tail call void %9(%struct._object* %call11) #2, !dbg !3527
  br label %do.body.56

do.body.56:                                       ; preds = %do.body.37, %if.else.43, %if.then.8, %if.end.10
  %readline.0111117 = phi %struct._object* [ null, %if.end.10 ], [ null, %if.then.8 ], [ %readline.0.ph, %if.else.43 ], [ %readline.0.ph, %do.body.37 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !844, metadata !893), !dbg !3529
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3531
  %10 = load i64, i64* %ob_refcnt58, align 8, !dbg !3531, !tbaa !1127
  %dec59 = add i64 %10, -1, !dbg !3531
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !3531, !tbaa !1127
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !3531
  br i1 %cmp60, label %if.else.62, label %if.end.68, !dbg !3533

if.else.62:                                       ; preds = %do.body.56
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3534
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !3534, !tbaa !1133
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !3534
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !3534, !tbaa !1134
  tail call void %12(%struct._object* %call) #2, !dbg !3534
  br label %if.end.68

if.end.68:                                        ; preds = %entry, %if.else.62, %do.body.56
  %readline.0111118 = phi %struct._object* [ %readline.0111117, %if.else.62 ], [ %readline.0111117, %do.body.56 ], [ null, %entry ]
  %cmp71 = icmp ne %struct._object* %readline.0111118, null, !dbg !3536
  %conv = zext i1 %cmp71 to i32, !dbg !3536
  ret i32 %conv, !dbg !3537
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i8* @PyByteArray_AsString(%struct._object*) #3

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #3

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) #4

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i64 @ftell(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #4

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #4

declare i64 @PyObject_Size(%struct._object*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #8

declare void @PySys_FormatStderr(i8*, ...) #3

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PyErr_Clear() #3

declare i32 @PyUnicode_IsIdentifier(%struct._object*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!890, !891}
!llvm.ident = !{!892}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !24, subprograms: !437, globals: !876)
!1 = !DIFile(filename: "Parser/tokenizer.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "decoding_state", file: !4, line: 15, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Parser/tokenizer.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "STATE_INIT", value: 0)
!7 = !DIEnumerator(name: "STATE_RAW", value: 1)
!8 = !DIEnumerator(name: "STATE_NORMAL", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 47, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "_ISupper", value: 256)
!13 = !DIEnumerator(name: "_ISlower", value: 512)
!14 = !DIEnumerator(name: "_ISalpha", value: 1024)
!15 = !DIEnumerator(name: "_ISdigit", value: 2048)
!16 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!17 = !DIEnumerator(name: "_ISspace", value: 8192)
!18 = !DIEnumerator(name: "_ISprint", value: 16384)
!19 = !DIEnumerator(name: "_ISgraph", value: 32768)
!20 = !DIEnumerator(name: "_ISblank", value: 1)
!21 = !DIEnumerator(name: "_IScntrl", value: 2)
!22 = !DIEnumerator(name: "_ISpunct", value: 4)
!23 = !DIEnumerator(name: "_ISalnum", value: 8)
!24 = !{!25, !26, !28, !364, !402, !410, !115, !411, !413, !52, !66, !98, !415, !416, !417, !418}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !30, line: 109, baseType: !31)
!30 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !30, line: 105, size: 128, align: 64, elements: !32)
!32 = !{!33, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !31, file: !30, line: 107, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !35, line: 177, baseType: !36)
!35 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 102, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !39, line: 181, baseType: !40)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!40 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !31, file: !30, line: 108, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !30, line: 334, size: 3200, align: 64, elements: !44)
!44 = !{!45, !51, !54, !55, !56, !61, !123, !128, !133, !134, !139, !191, !222, !234, !240, !241, !242, !244, !246, !277, !278, !279, !288, !289, !294, !295, !297, !299, !309, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !43, file: !30, line: 335, baseType: !46, size: 192, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !30, line: 114, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 111, size: 192, align: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !30, line: 112, baseType: !29, size: 128, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !47, file: !30, line: 113, baseType: !34, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !43, file: !30, line: 336, baseType: !52, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !43, file: !30, line: 337, baseType: !34, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !43, file: !30, line: 337, baseType: !34, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !43, file: !30, line: 341, baseType: !57, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !30, line: 308, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !28}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !43, file: !30, line: 342, baseType: !62, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !30, line: 314, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !28, !67, !66}
!66 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 48, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 246, size: 1728, align: 64, elements: !71)
!70 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !92, !93, !94, !95, !97, !99, !101, !105, !108, !110, !111, !112, !113, !114, !118, !119}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 247, baseType: !66, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 252, baseType: !26, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 253, baseType: !26, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 254, baseType: !26, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 255, baseType: !26, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 256, baseType: !26, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 257, baseType: !26, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 258, baseType: !26, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 259, baseType: !26, size: 64, align: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 261, baseType: !26, size: 64, align: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 262, baseType: !26, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 263, baseType: !26, size: 64, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 265, baseType: !85, size: 64, align: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 161, size: 192, align: 64, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !86, file: !70, line: 162, baseType: !85, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !86, file: !70, line: 163, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !86, file: !70, line: 167, baseType: !66, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 267, baseType: !90, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 269, baseType: !66, size: 32, align: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 273, baseType: !66, size: 32, align: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 275, baseType: !96, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 140, baseType: !40)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 279, baseType: !98, size: 16, align: 16, offset: 1024)
!98 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 280, baseType: !100, size: 8, align: 8, offset: 1040)
!100 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 281, baseType: !102, size: 8, align: 8, offset: 1048)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 285, baseType: !106, size: 64, align: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 155, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 294, baseType: !109, size: 64, align: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 141, baseType: !40)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !69, file: !70, line: 303, baseType: !25, size: 64, align: 64, offset: 1216)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !69, file: !70, line: 304, baseType: !25, size: 64, align: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !69, file: !70, line: 305, baseType: !25, size: 64, align: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !69, file: !70, line: 306, baseType: !25, size: 64, align: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 307, baseType: !115, size: 64, align: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!117 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 309, baseType: !66, size: 32, align: 32, offset: 1536)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 311, baseType: !120, size: 160, align: 8, offset: 1568)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 20)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !43, file: !30, line: 343, baseType: !124, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !30, line: 316, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!28, !28, !26}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !43, file: !30, line: 344, baseType: !129, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !30, line: 318, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!66, !28, !26, !28}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !43, file: !30, line: 345, baseType: !25, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !43, file: !30, line: 346, baseType: !135, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !30, line: 320, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!28, !28}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !43, file: !30, line: 350, baseType: !140, size: 64, align: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !30, line: 278, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 236, size: 2176, align: 64, elements: !143)
!143 = !{!144, !149, !150, !151, !152, !153, !158, !160, !161, !162, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !142, file: !30, line: 241, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !30, line: 166, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!28, !28, !28}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !142, file: !30, line: 242, baseType: !145, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !142, file: !30, line: 243, baseType: !145, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !142, file: !30, line: 244, baseType: !145, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !142, file: !30, line: 245, baseType: !145, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !142, file: !30, line: 246, baseType: !154, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !30, line: 167, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!28, !28, !28, !28}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !142, file: !30, line: 247, baseType: !159, size: 64, align: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !30, line: 165, baseType: !136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !142, file: !30, line: 248, baseType: !159, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !142, file: !30, line: 249, baseType: !159, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !142, file: !30, line: 250, baseType: !163, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !30, line: 168, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!66, !28}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !142, file: !30, line: 251, baseType: !159, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !142, file: !30, line: 252, baseType: !145, size: 64, align: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !142, file: !30, line: 253, baseType: !145, size: 64, align: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !142, file: !30, line: 254, baseType: !145, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !142, file: !30, line: 255, baseType: !145, size: 64, align: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !142, file: !30, line: 256, baseType: !145, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !142, file: !30, line: 257, baseType: !159, size: 64, align: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !142, file: !30, line: 258, baseType: !25, size: 64, align: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !142, file: !30, line: 259, baseType: !159, size: 64, align: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !142, file: !30, line: 261, baseType: !145, size: 64, align: 64, offset: 1216)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !142, file: !30, line: 262, baseType: !145, size: 64, align: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !142, file: !30, line: 263, baseType: !145, size: 64, align: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !142, file: !30, line: 264, baseType: !145, size: 64, align: 64, offset: 1408)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !142, file: !30, line: 265, baseType: !154, size: 64, align: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !142, file: !30, line: 266, baseType: !145, size: 64, align: 64, offset: 1536)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !142, file: !30, line: 267, baseType: !145, size: 64, align: 64, offset: 1600)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !142, file: !30, line: 268, baseType: !145, size: 64, align: 64, offset: 1664)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !142, file: !30, line: 269, baseType: !145, size: 64, align: 64, offset: 1728)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !142, file: !30, line: 270, baseType: !145, size: 64, align: 64, offset: 1792)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !142, file: !30, line: 272, baseType: !145, size: 64, align: 64, offset: 1856)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !142, file: !30, line: 273, baseType: !145, size: 64, align: 64, offset: 1920)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !142, file: !30, line: 274, baseType: !145, size: 64, align: 64, offset: 1984)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !142, file: !30, line: 275, baseType: !145, size: 64, align: 64, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !142, file: !30, line: 277, baseType: !159, size: 64, align: 64, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !43, file: !30, line: 351, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !30, line: 292, baseType: !194)
!194 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 280, size: 640, align: 64, elements: !195)
!195 = !{!196, !201, !202, !207, !208, !209, !214, !215, !220, !221}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !194, file: !30, line: 281, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !30, line: 169, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!34, !28}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !194, file: !30, line: 282, baseType: !145, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !194, file: !30, line: 283, baseType: !203, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !30, line: 170, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!28, !28, !34}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !194, file: !30, line: 284, baseType: !203, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !194, file: !30, line: 285, baseType: !25, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !194, file: !30, line: 286, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !30, line: 172, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!66, !28, !34, !28}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !194, file: !30, line: 287, baseType: !25, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !194, file: !30, line: 288, baseType: !216, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !30, line: 231, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!66, !28, !28}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !194, file: !30, line: 290, baseType: !145, size: 64, align: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !194, file: !30, line: 291, baseType: !203, size: 64, align: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !43, file: !30, line: 352, baseType: !223, size: 64, align: 64, offset: 896)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !30, line: 298, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 294, size: 192, align: 64, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !225, file: !30, line: 295, baseType: !197, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !225, file: !30, line: 296, baseType: !145, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !225, file: !30, line: 297, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !30, line: 174, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!66, !28, !28, !28}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !43, file: !30, line: 356, baseType: !235, size: 64, align: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !30, line: 321, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !28}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !35, line: 186, baseType: !34)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !43, file: !30, line: 357, baseType: !154, size: 64, align: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !43, file: !30, line: 358, baseType: !135, size: 64, align: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !43, file: !30, line: 359, baseType: !243, size: 64, align: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !30, line: 317, baseType: !146)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !43, file: !30, line: 360, baseType: !245, size: 64, align: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !30, line: 319, baseType: !231)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !43, file: !30, line: 363, baseType: !247, size: 64, align: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !30, line: 304, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 301, size: 128, align: 64, elements: !250)
!250 = !{!251, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !249, file: !30, line: 302, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !30, line: 193, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!66, !28, !256, !66}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !30, line: 191, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !30, line: 178, size: 640, align: 64, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !30, line: 179, baseType: !25, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !258, file: !30, line: 180, baseType: !28, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !258, file: !30, line: 181, baseType: !34, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !258, file: !30, line: 182, baseType: !34, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !258, file: !30, line: 184, baseType: !66, size: 32, align: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !258, file: !30, line: 185, baseType: !66, size: 32, align: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !258, file: !30, line: 186, baseType: !26, size: 64, align: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !258, file: !30, line: 187, baseType: !268, size: 64, align: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !258, file: !30, line: 188, baseType: !268, size: 64, align: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !258, file: !30, line: 189, baseType: !268, size: 64, align: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !258, file: !30, line: 190, baseType: !25, size: 64, align: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !249, file: !30, line: 303, baseType: !273, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !30, line: 194, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !28, !256}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !43, file: !30, line: 366, baseType: !117, size: 64, align: 64, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !43, file: !30, line: 368, baseType: !52, size: 64, align: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !43, file: !30, line: 372, baseType: !280, size: 64, align: 64, offset: 1472)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !30, line: 233, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!66, !28, !284, !25}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !30, line: 232, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!66, !28, !25}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !43, file: !30, line: 375, baseType: !163, size: 64, align: 64, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !43, file: !30, line: 379, baseType: !290, size: 64, align: 64, offset: 1600)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !30, line: 322, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!28, !28, !28, !66}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !43, file: !30, line: 382, baseType: !34, size: 64, align: 64, offset: 1664)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !43, file: !30, line: 385, baseType: !296, size: 64, align: 64, offset: 1728)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !30, line: 323, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !43, file: !30, line: 386, baseType: !298, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !30, line: 324, baseType: !136)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !43, file: !30, line: 389, baseType: !300, size: 64, align: 64, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !302, line: 40, size: 256, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!303 = !{!304, !305, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !301, file: !302, line: 41, baseType: !52, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !301, file: !302, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !302, line: 18, baseType: !146)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !301, file: !302, line: 43, baseType: !66, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !301, file: !302, line: 45, baseType: !52, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !43, file: !30, line: 390, baseType: !310, size: 64, align: 64, offset: 1920)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !30, line: 390, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !43, file: !30, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !26, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!28, !28, !25}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!66, !28, !28, !25}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !26, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !25, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !43, file: !30, line: 392, baseType: !42, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !43, file: !30, line: 393, baseType: !28, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !43, file: !30, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !30, line: 325, baseType: !155)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !43, file: !30, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !30, line: 326, baseType: !231)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !43, file: !30, line: 396, baseType: !34, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !43, file: !30, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !30, line: 327, baseType: !231)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !43, file: !30, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !30, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!28, !42, !34}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !43, file: !30, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !30, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!28, !42, !28, !28}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !43, file: !30, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !30, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !25}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !43, file: !30, line: 401, baseType: !163, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !43, file: !30, line: 402, baseType: !28, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !43, file: !30, line: 403, baseType: !28, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !43, file: !30, line: 404, baseType: !28, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !43, file: !30, line: 405, baseType: !28, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !43, file: !30, line: 406, baseType: !28, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !43, file: !30, line: 407, baseType: !57, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !43, file: !30, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !43, file: !30, line: 412, baseType: !57, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "tok_state", file: !4, line: 22, size: 7936, align: 64, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !365, file: !4, line: 25, baseType: !26, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !365, file: !4, line: 26, baseType: !26, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "inp", scope: !365, file: !4, line: 27, baseType: !26, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !365, file: !4, line: 28, baseType: !26, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !365, file: !4, line: 29, baseType: !26, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !365, file: !4, line: 30, baseType: !66, size: 32, align: 32, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !365, file: !4, line: 32, baseType: !67, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tabsize", scope: !365, file: !4, line: 33, baseType: !66, size: 32, align: 32, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !365, file: !4, line: 34, baseType: !66, size: 32, align: 32, offset: 480)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "indstack", scope: !365, file: !4, line: 35, baseType: !377, size: 3200, align: 32, offset: 512)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 3200, align: 32, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 100)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "atbol", scope: !365, file: !4, line: 36, baseType: !66, size: 32, align: 32, offset: 3712)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pendin", scope: !365, file: !4, line: 37, baseType: !66, size: 32, align: 32, offset: 3744)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !365, file: !4, line: 38, baseType: !52, size: 64, align: 64, offset: 3776)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nextprompt", scope: !365, file: !4, line: 38, baseType: !52, size: 64, align: 64, offset: 3840)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !365, file: !4, line: 39, baseType: !66, size: 32, align: 32, offset: 3904)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !365, file: !4, line: 40, baseType: !66, size: 32, align: 32, offset: 3936)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !365, file: !4, line: 48, baseType: !28, size: 64, align: 64, offset: 3968)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "altwarning", scope: !365, file: !4, line: 50, baseType: !66, size: 32, align: 32, offset: 4032)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "alterror", scope: !365, file: !4, line: 51, baseType: !66, size: 32, align: 32, offset: 4064)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "alttabsize", scope: !365, file: !4, line: 52, baseType: !66, size: 32, align: 32, offset: 4096)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "altindstack", scope: !365, file: !4, line: 53, baseType: !377, size: 3200, align: 32, offset: 4128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_state", scope: !365, file: !4, line: 55, baseType: !3, size: 32, align: 32, offset: 7328)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_erred", scope: !365, file: !4, line: 56, baseType: !66, size: 32, align: 32, offset: 7360)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "read_coding_spec", scope: !365, file: !4, line: 57, baseType: !66, size: 32, align: 32, offset: 7392)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !365, file: !4, line: 58, baseType: !26, size: 64, align: 64, offset: 7424)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cont_line", scope: !365, file: !4, line: 59, baseType: !66, size: 32, align: 32, offset: 7488)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "line_start", scope: !365, file: !4, line: 60, baseType: !52, size: 64, align: 64, offset: 7552)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_readline", scope: !365, file: !4, line: 62, baseType: !28, size: 64, align: 64, offset: 7616)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_buffer", scope: !365, file: !4, line: 63, baseType: !28, size: 64, align: 64, offset: 7680)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !365, file: !4, line: 65, baseType: !52, size: 64, align: 64, offset: 7744)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !365, file: !4, line: 66, baseType: !52, size: 64, align: 64, offset: 7808)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !365, file: !4, line: 67, baseType: !52, size: 64, align: 64, offset: 7872)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !404, line: 41, baseType: !405)
!404 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!405 = !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 31, size: 320, align: 64, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !405, file: !404, line: 32, baseType: !46, size: 192, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !405, file: !404, line: 33, baseType: !239, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !405, file: !404, line: 34, baseType: !102, size: 8, align: 8, offset: 256)
!410 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !37, line: 92, baseType: !109)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !420, line: 351, baseType: !421)
!420 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!421 = !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 217, size: 384, align: 64, elements: !422)
!422 = !{!423, !424, !425, !426, !434}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !421, file: !420, line: 291, baseType: !29, size: 128, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !421, file: !420, line: 292, baseType: !34, size: 64, align: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !421, file: !420, line: 293, baseType: !239, size: 64, align: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !421, file: !420, line: 349, baseType: !427, size: 32, align: 32, offset: 256)
!427 = !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !420, line: 294, size: 32, align: 32, elements: !428)
!428 = !{!429, !430, !431, !432, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !427, file: !420, line: 303, baseType: !362, size: 2, align: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !427, file: !420, line: 331, baseType: !362, size: 3, align: 32, offset: 2)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !427, file: !420, line: 336, baseType: !362, size: 1, align: 32, offset: 5)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !427, file: !420, line: 340, baseType: !362, size: 1, align: 32, offset: 6)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !427, file: !420, line: 345, baseType: !362, size: 1, align: 32, offset: 7)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !421, file: !420, line: 350, baseType: !435, size: 64, align: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !66)
!437 = !{!438, !445, !450, !459, !479, !484, !490, !497, !506, !517, !522, !527, !542, !562, !570, !573, !577, !581, !586, !596, !622, !642, !686, !689, !702, !740, !783, !796, !816, !819, !823, !847, !854, !860, !866, !869}
!438 = !DISubprogram(name: "PyTokenizer_FromString", scope: !1, file: !1, line: 798, type: !439, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (i8*, i32)* @PyTokenizer_FromString, variables: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!364, !52, !66}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !438, file: !1, line: 798, type: !52)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !438, file: !1, line: 798, type: !66)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !438, file: !1, line: 800, type: !364)
!445 = !DISubprogram(name: "PyTokenizer_FromUTF8", scope: !1, file: !1, line: 815, type: !439, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (i8*, i32)* @PyTokenizer_FromUTF8, variables: !446)
!446 = !{!447, !448, !449}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !445, file: !1, line: 815, type: !52)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !445, file: !1, line: 815, type: !66)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !445, file: !1, line: 817, type: !364)
!450 = !DISubprogram(name: "PyTokenizer_FromFile", scope: !1, file: !1, line: 846, type: !451, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (%struct._IO_FILE*, i8*, i8*, i8*)* @PyTokenizer_FromFile, variables: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!364, !67, !52, !52, !52}
!453 = !{!454, !455, !456, !457, !458}
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !450, file: !1, line: 846, type: !67)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !450, file: !1, line: 846, type: !52)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 3, scope: !450, file: !1, line: 847, type: !52)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 4, scope: !450, file: !1, line: 847, type: !52)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !450, file: !1, line: 849, type: !364)
!459 = !DISubprogram(name: "PyTokenizer_Free", scope: !1, file: !1, line: 879, type: !460, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tok_state*)* @PyTokenizer_Free, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !364}
!462 = !{!463, !464, !466, !469, !471, !474, !476}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !459, file: !1, line: 879, type: !364)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !465, file: !1, line: 884, type: !28)
!465 = distinct !DILexicalBlock(scope: !459, file: !1, line: 884, column: 5)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !1, line: 884, type: !28)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 884, column: 5)
!468 = distinct !DILexicalBlock(scope: !465, file: !1, line: 884, column: 5)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !470, file: !1, line: 885, type: !28)
!470 = distinct !DILexicalBlock(scope: !459, file: !1, line: 885, column: 5)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !472, file: !1, line: 885, type: !28)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 885, column: 5)
!473 = distinct !DILexicalBlock(scope: !470, file: !1, line: 885, column: 5)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !475, file: !1, line: 886, type: !28)
!475 = distinct !DILexicalBlock(scope: !459, file: !1, line: 886, column: 5)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !1, line: 886, type: !28)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 886, column: 5)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 886, column: 5)
!479 = !DISubprogram(name: "PyToken_OneChar", scope: !1, file: !1, line: 1109, type: !480, isLocal: false, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @PyToken_OneChar, variables: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!66, !66}
!482 = !{!483}
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !479, file: !1, line: 1109, type: !66)
!484 = !DISubprogram(name: "PyToken_TwoChars", scope: !1, file: !1, line: 1141, type: !485, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @PyToken_TwoChars, variables: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!66, !66, !66}
!487 = !{!488, !489}
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !484, file: !1, line: 1141, type: !66)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2", arg: 2, scope: !484, file: !1, line: 1141, type: !66)
!490 = !DISubprogram(name: "PyToken_ThreeChars", scope: !1, file: !1, line: 1215, type: !491, isLocal: false, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32)* @PyToken_ThreeChars, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!66, !66, !66, !66}
!493 = !{!494, !495, !496}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !490, file: !1, line: 1215, type: !66)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2", arg: 2, scope: !490, file: !1, line: 1215, type: !66)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c3", arg: 3, scope: !490, file: !1, line: 1215, type: !66)
!497 = !DISubprogram(name: "PyTokenizer_Get", scope: !1, file: !1, line: 1727, type: !498, isLocal: false, isDefinition: true, scopeLine: 1728, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8**, i8**)* @PyTokenizer_Get, variables: !501)
!498 = !DISubroutineType(types: !499)
!499 = !{!66, !364, !500, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!501 = !{!502, !503, !504, !505}
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !497, file: !1, line: 1727, type: !364)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_start", arg: 2, scope: !497, file: !1, line: 1727, type: !500)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_end", arg: 3, scope: !497, file: !1, line: 1727, type: !500)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !497, file: !1, line: 1729, type: !66)
!506 = !DISubprogram(name: "PyTokenizer_FindEncodingFilename", scope: !1, file: !1, line: 1748, type: !507, isLocal: false, isDefinition: true, scopeLine: 1749, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32, %struct._object*)* @PyTokenizer_FindEncodingFilename, variables: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!26, !66, !28}
!509 = !{!510, !511, !512, !513, !514, !515, !516}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !506, file: !1, line: 1748, type: !66)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !506, file: !1, line: 1748, type: !28)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !506, file: !1, line: 1750, type: !364)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !506, file: !1, line: 1751, type: !67)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p_start", scope: !506, file: !1, line: 1752, type: !26)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p_end", scope: !506, file: !1, line: 1752, type: !26)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !506, file: !1, line: 1752, type: !26)
!517 = !DISubprogram(name: "PyTokenizer_FindEncoding", scope: !1, file: !1, line: 1800, type: !518, isLocal: false, isDefinition: true, scopeLine: 1801, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @PyTokenizer_FindEncoding, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!26, !66}
!520 = !{!521}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !517, file: !1, line: 1800, type: !66)
!522 = !DISubprogram(name: "tok_new", scope: !1, file: !1, line: 113, type: !523, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, variables: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!364}
!525 = !{!526}
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !522, file: !1, line: 115, type: !364)
!527 = !DISubprogram(name: "decode_str", scope: !1, file: !1, line: 738, type: !528, isLocal: true, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, variables: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!52, !52, !66, !364}
!530 = !{!531, !532, !533, !534, !535, !536, !537, !541}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 1, scope: !527, file: !1, line: 738, type: !52)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "single", arg: 2, scope: !527, file: !1, line: 738, type: !66)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !527, file: !1, line: 738, type: !364)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !527, file: !1, line: 740, type: !28)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !527, file: !1, line: 741, type: !52)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !527, file: !1, line: 742, type: !52)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newl", scope: !527, file: !1, line: 743, type: !538)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 2)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !527, file: !1, line: 744, type: !66)
!542 = !DISubprogram(name: "check_bom", scope: !1, file: !1, line: 339, type: !543, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, variables: !554)
!543 = !DISubroutineType(types: !544)
!544 = !{!66, !545, !548, !551, !364}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!66, !364}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !66, !364}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!66, !364, !52}
!554 = !{!555, !556, !557, !558, !559, !560, !561}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get_char", arg: 1, scope: !542, file: !1, line: 339, type: !545)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unget_char", arg: 2, scope: !542, file: !1, line: 340, type: !548)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set_readline", arg: 3, scope: !542, file: !1, line: 341, type: !551)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 4, scope: !542, file: !1, line: 342, type: !364)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch1", scope: !542, file: !1, line: 344, type: !66)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch2", scope: !542, file: !1, line: 344, type: !66)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch3", scope: !542, file: !1, line: 344, type: !66)
!562 = !DISubprogram(name: "new_string", scope: !1, file: !1, line: 150, type: !563, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, variables: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!26, !52, !34, !364}
!565 = !{!566, !567, !568, !569}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !562, file: !1, line: 150, type: !52)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !562, file: !1, line: 150, type: !34)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !562, file: !1, line: 150, type: !364)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !562, file: !1, line: 152, type: !26)
!570 = !DISubprogram(name: "buf_getc", scope: !1, file: !1, line: 656, type: !546, isLocal: true, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: true, variables: !571)
!571 = !{!572}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !570, file: !1, line: 656, type: !364)
!573 = !DISubprogram(name: "buf_ungetc", scope: !1, file: !1, line: 663, type: !549, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, variables: !574)
!574 = !{!575, !576}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !573, file: !1, line: 663, type: !66)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !573, file: !1, line: 663, type: !364)
!577 = !DISubprogram(name: "buf_setreadl", scope: !1, file: !1, line: 672, type: !552, isLocal: true, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8*)* @buf_setreadl, variables: !578)
!578 = !{!579, !580}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !577, file: !1, line: 672, type: !364)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !577, file: !1, line: 672, type: !52)
!581 = !DISubprogram(name: "error_ret", scope: !1, file: !1, line: 185, type: !582, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!26, !364}
!584 = !{!585}
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !581, file: !1, line: 185, type: !364)
!586 = !DISubprogram(name: "translate_into_utf8", scope: !1, file: !1, line: 681, type: !587, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, variables: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{!28, !52, !52}
!589 = !{!590, !591, !592, !593, !594}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !586, file: !1, line: 681, type: !52)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !586, file: !1, line: 681, type: !52)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !586, file: !1, line: 682, type: !28)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !586, file: !1, line: 683, type: !28)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !1, line: 687, type: !28)
!595 = distinct !DILexicalBlock(scope: !586, file: !1, line: 687, column: 5)
!596 = !DISubprogram(name: "check_coding_spec", scope: !1, file: !1, line: 280, type: !597, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, %struct.tok_state*, i32 (%struct.tok_state*, i8*)*)* @check_coding_spec, variables: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!66, !52, !34, !364, !551}
!599 = !{!600, !601, !602, !603, !604, !605, !606, !609, !614, !615, !617, !618, !621}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !596, file: !1, line: 280, type: !52)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !596, file: !1, line: 280, type: !34)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !596, file: !1, line: 280, type: !364)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set_readline", arg: 4, scope: !596, file: !1, line: 281, type: !551)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cs", scope: !596, file: !1, line: 283, type: !26)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !596, file: !1, line: 284, type: !66)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !607, file: !1, line: 294, type: !34)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 293, column: 14)
!608 = distinct !DILexicalBlock(scope: !596, file: !1, line: 293, column: 9)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !610, file: !1, line: 310, type: !115)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 310, column: 13)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 310, column: 13)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 308, column: 32)
!613 = distinct !DILexicalBlock(scope: !596, file: !1, line: 308, column: 9)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !610, file: !1, line: 310, type: !115)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !616, file: !1, line: 310, type: !413)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 310, column: 13)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !616, file: !1, line: 310, type: !66)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !619, file: !1, line: 325, type: !115)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 325, column: 14)
!620 = distinct !DILexicalBlock(scope: !613, file: !1, line: 324, column: 12)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !619, file: !1, line: 325, type: !115)
!622 = !DISubprogram(name: "get_coding_spec", scope: !1, file: !1, line: 227, type: !623, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, variables: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!66, !52, !500, !34, !364}
!625 = !{!626, !627, !628, !629, !630, !631, !635, !638, !641}
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !622, file: !1, line: 227, type: !52)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spec", arg: 2, scope: !622, file: !1, line: 227, type: !500)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !622, file: !1, line: 227, type: !34)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 4, scope: !622, file: !1, line: 227, type: !364)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !622, file: !1, line: 229, type: !34)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !632, file: !1, line: 240, type: !52)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 239, column: 31)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 239, column: 5)
!634 = distinct !DILexicalBlock(scope: !622, file: !1, line: 239, column: 5)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "begin", scope: !636, file: !1, line: 242, type: !52)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 241, column: 43)
!637 = distinct !DILexicalBlock(scope: !632, file: !1, line: 241, column: 13)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !639, file: !1, line: 256, type: !26)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 255, column: 28)
!640 = distinct !DILexicalBlock(scope: !636, file: !1, line: 255, column: 17)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !639, file: !1, line: 257, type: !26)
!642 = !DISubprogram(name: "get_normal_name", scope: !1, file: !1, line: 196, type: !643, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, variables: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!26, !26}
!645 = !{!646, !647, !651, !652, !656, !660, !663, !664, !666, !667, !670, !671, !673, !674, !676, !677, !679, !680, !682, !683, !685}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !642, file: !1, line: 196, type: !26)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !642, file: !1, line: 198, type: !648)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 104, align: 8, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 13)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !642, file: !1, line: 199, type: !66)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !653, file: !1, line: 201, type: !66)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 200, column: 30)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 200, column: 5)
!655 = distinct !DILexicalBlock(scope: !642, file: !1, line: 200, column: 5)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !657, file: !1, line: 207, type: !66)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 207, column: 22)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 204, column: 18)
!659 = distinct !DILexicalBlock(scope: !653, file: !1, line: 202, column: 13)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !661, file: !1, line: 210, type: !115)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 210, column: 9)
!662 = distinct !DILexicalBlock(scope: !642, file: !1, line: 210, column: 9)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !661, file: !1, line: 210, type: !115)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !665, file: !1, line: 210, type: !413)
!665 = distinct !DILexicalBlock(scope: !661, file: !1, line: 210, column: 9)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !665, file: !1, line: 210, type: !66)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !668, file: !1, line: 213, type: !115)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 213, column: 14)
!669 = distinct !DILexicalBlock(scope: !662, file: !1, line: 213, column: 14)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !668, file: !1, line: 213, type: !115)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !672, file: !1, line: 213, type: !413)
!672 = distinct !DILexicalBlock(scope: !668, file: !1, line: 213, column: 14)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !672, file: !1, line: 213, type: !66)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !675, file: !1, line: 214, type: !115)
!675 = distinct !DILexicalBlock(scope: !669, file: !1, line: 214, column: 14)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !675, file: !1, line: 214, type: !115)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !678, file: !1, line: 214, type: !413)
!678 = distinct !DILexicalBlock(scope: !675, file: !1, line: 214, column: 14)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !678, file: !1, line: 214, type: !66)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !681, file: !1, line: 215, type: !115)
!681 = distinct !DILexicalBlock(scope: !669, file: !1, line: 215, column: 14)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !681, file: !1, line: 215, type: !115)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !684, file: !1, line: 215, type: !413)
!684 = distinct !DILexicalBlock(scope: !681, file: !1, line: 215, column: 14)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !684, file: !1, line: 215, type: !66)
!686 = !DISubprogram(name: "tolower", scope: !10, file: !10, line: 216, type: !480, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, variables: !687)
!687 = !{!688}
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__c", arg: 1, scope: !686, file: !10, line: 216, type: !66)
!689 = !DISubprogram(name: "translate_newlines", scope: !1, file: !1, line: 693, type: !690, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, variables: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!26, !52, !66, !364}
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !689, file: !1, line: 693, type: !52)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !689, file: !1, line: 693, type: !66)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !689, file: !1, line: 693, type: !364)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skip_next_lf", scope: !689, file: !1, line: 694, type: !66)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "needed_length", scope: !689, file: !1, line: 695, type: !115)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final_length", scope: !689, file: !1, line: 695, type: !115)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !689, file: !1, line: 696, type: !26)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !689, file: !1, line: 696, type: !26)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !689, file: !1, line: 697, type: !27)
!702 = !DISubprogram(name: "tok_get", scope: !1, file: !1, line: 1325, type: !498, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, variables: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !713, !714, !717, !718, !719, !728, !731, !732, !733, !735, !736, !739}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !702, file: !1, line: 1325, type: !364)
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_start", arg: 2, scope: !702, file: !1, line: 1325, type: !500)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_end", arg: 3, scope: !702, file: !1, line: 1325, type: !500)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !702, file: !1, line: 1327, type: !66)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blankline", scope: !702, file: !1, line: 1328, type: !66)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nonascii", scope: !702, file: !1, line: 1328, type: !66)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !711, file: !1, line: 1337, type: !66)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 1336, column: 21)
!712 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1336, column: 9)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "altcol", scope: !711, file: !1, line: 1338, type: !66)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_b", scope: !715, file: !1, line: 1449, type: !66)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 1447, column: 43)
!716 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1447, column: 9)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_r", scope: !715, file: !1, line: 1449, type: !66)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_u", scope: !715, file: !1, line: 1449, type: !66)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nonzero", scope: !720, file: !1, line: 1563, type: !66)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 1562, column: 18)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 1550, column: 22)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 1538, column: 22)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 1525, column: 17)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 1518, column: 23)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 1518, column: 13)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 1517, column: 21)
!727 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1517, column: 9)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote", scope: !729, file: !1, line: 1629, type: !66)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 1628, column: 32)
!730 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1628, column: 9)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote_size", scope: !729, file: !1, line: 1630, type: !66)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end_quote_size", scope: !729, file: !1, line: 1631, type: !66)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !734, file: !1, line: 1689, type: !66)
!734 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1688, column: 5)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "token", scope: !734, file: !1, line: 1690, type: !66)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c3", scope: !737, file: !1, line: 1692, type: !66)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 1691, column: 26)
!738 = distinct !DILexicalBlock(scope: !734, file: !1, line: 1691, column: 13)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "token3", scope: !737, file: !1, line: 1693, type: !66)
!740 = !DISubprogram(name: "tok_nextc", scope: !1, file: !1, line: 898, type: !546, isLocal: true, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @tok_nextc, variables: !741)
!741 = !{!742, !743, !749, !752, !755, !758, !759, !760, !764, !766, !771, !772, !773, !774, !776, !777, !778, !780, !781, !782}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !740, file: !1, line: 898, type: !364)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !744, file: !1, line: 907, type: !26)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 906, column: 30)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 906, column: 13)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 900, column: 14)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 900, column: 5)
!748 = distinct !DILexicalBlock(scope: !740, file: !1, line: 900, column: 5)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newtok", scope: !750, file: !1, line: 925, type: !26)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 924, column: 34)
!751 = distinct !DILexicalBlock(scope: !746, file: !1, line: 924, column: 13)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "translated", scope: !753, file: !1, line: 928, type: !26)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 927, column: 33)
!754 = distinct !DILexicalBlock(scope: !750, file: !1, line: 927, column: 17)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !756, file: !1, line: 936, type: !34)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 934, column: 53)
!757 = distinct !DILexicalBlock(scope: !750, file: !1, line: 934, column: 17)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !756, file: !1, line: 937, type: !52)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !756, file: !1, line: 938, type: !28)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !761, file: !1, line: 947, type: !28)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 947, column: 21)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 946, column: 27)
!763 = distinct !DILexicalBlock(scope: !756, file: !1, line: 946, column: 21)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !1, line: 953, type: !28)
!765 = distinct !DILexicalBlock(scope: !756, file: !1, line: 953, column: 17)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !767, file: !1, line: 965, type: !115)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 964, column: 42)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 964, column: 22)
!769 = distinct !DILexicalBlock(scope: !770, file: !1, line: 960, column: 22)
!770 = distinct !DILexicalBlock(scope: !750, file: !1, line: 958, column: 17)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldlen", scope: !767, file: !1, line: 966, type: !115)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newlen", scope: !767, file: !1, line: 967, type: !115)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !767, file: !1, line: 968, type: !26)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "done", scope: !775, file: !1, line: 1000, type: !66)
!775 = distinct !DILexicalBlock(scope: !751, file: !1, line: 999, column: 14)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !775, file: !1, line: 1001, type: !34)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !775, file: !1, line: 1002, type: !26)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curstart", scope: !779, file: !1, line: 1036, type: !34)
!779 = distinct !DILexicalBlock(scope: !775, file: !1, line: 1035, column: 27)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curvalid", scope: !779, file: !1, line: 1038, type: !34)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newsize", scope: !779, file: !1, line: 1039, type: !34)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newbuf", scope: !779, file: !1, line: 1040, type: !26)
!783 = !DISubprogram(name: "decoding_fgets", scope: !1, file: !1, line: 577, type: !784, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.tok_state*)* @decoding_fgets, variables: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!26, !26, !66, !364}
!786 = !{!787, !788, !789, !790, !791, !792, !795}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !783, file: !1, line: 577, type: !26)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !783, file: !1, line: 577, type: !66)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !783, file: !1, line: 577, type: !364)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !783, file: !1, line: 579, type: !26)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "badchar", scope: !783, file: !1, line: 580, type: !66)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !793, file: !1, line: 610, type: !416)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 609, column: 33)
!794 = distinct !DILexicalBlock(scope: !783, file: !1, line: 609, column: 9)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !793, file: !1, line: 611, type: !66)
!796 = !DISubprogram(name: "fp_readl", scope: !1, file: !1, line: 416, type: !784, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, variables: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !806, !809, !811, !813}
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !796, file: !1, line: 416, type: !26)
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !796, file: !1, line: 416, type: !66)
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !796, file: !1, line: 416, type: !364)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufobj", scope: !796, file: !1, line: 418, type: !28)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !796, file: !1, line: 419, type: !52)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !796, file: !1, line: 420, type: !34)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !805, file: !1, line: 452, type: !28)
!805 = distinct !DILexicalBlock(scope: !796, file: !1, line: 452, column: 5)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !807, file: !1, line: 452, type: !28)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 452, column: 5)
!808 = distinct !DILexicalBlock(scope: !805, file: !1, line: 452, column: 5)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !810, file: !1, line: 468, type: !28)
!810 = distinct !DILexicalBlock(scope: !796, file: !1, line: 468, column: 5)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !812, file: !1, line: 472, type: !28)
!812 = distinct !DILexicalBlock(scope: !796, file: !1, line: 472, column: 5)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !1, line: 472, type: !28)
!814 = distinct !DILexicalBlock(scope: !815, file: !1, line: 472, column: 5)
!815 = distinct !DILexicalBlock(scope: !812, file: !1, line: 472, column: 5)
!816 = !DISubprogram(name: "fp_getc", scope: !1, file: !1, line: 535, type: !546, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, variables: !817)
!817 = !{!818}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !816, file: !1, line: 535, type: !364)
!819 = !DISubprogram(name: "fp_ungetc", scope: !1, file: !1, line: 541, type: !549, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, variables: !820)
!820 = !{!821, !822}
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !819, file: !1, line: 541, type: !66)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !819, file: !1, line: 541, type: !364)
!823 = !DISubprogram(name: "fp_setreadl", scope: !1, file: !1, line: 487, type: !552, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8*)* @fp_setreadl, variables: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !834, !837, !839, !842, !844}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !823, file: !1, line: 487, type: !364)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !823, file: !1, line: 487, type: !52)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "readline", scope: !823, file: !1, line: 489, type: !28)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stream", scope: !823, file: !1, line: 489, type: !28)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "io", scope: !823, file: !1, line: 489, type: !28)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !823, file: !1, line: 492, type: !66)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !823, file: !1, line: 493, type: !40)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !833, file: !1, line: 517, type: !28)
!833 = distinct !DILexicalBlock(scope: !823, file: !1, line: 517, column: 5)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !1, line: 517, type: !28)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 517, column: 5)
!836 = distinct !DILexicalBlock(scope: !833, file: !1, line: 517, column: 5)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !838, file: !1, line: 528, type: !28)
!838 = distinct !DILexicalBlock(scope: !823, file: !1, line: 528, column: 5)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !840, file: !1, line: 528, type: !28)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 528, column: 5)
!841 = distinct !DILexicalBlock(scope: !838, file: !1, line: 528, column: 5)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !843, file: !1, line: 529, type: !28)
!843 = distinct !DILexicalBlock(scope: !823, file: !1, line: 529, column: 5)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !845, file: !1, line: 529, type: !28)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 529, column: 5)
!846 = distinct !DILexicalBlock(scope: !843, file: !1, line: 529, column: 5)
!847 = !DISubprogram(name: "valid_utf8", scope: !1, file: !1, line: 548, type: !848, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: true, variables: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!66, !413}
!850 = !{!851, !852, !853}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !847, file: !1, line: 548, type: !413)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "expected", scope: !847, file: !1, line: 550, type: !66)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !847, file: !1, line: 551, type: !66)
!854 = !DISubprogram(name: "decoding_feof", scope: !1, file: !1, line: 634, type: !546, isLocal: true, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, variables: !855)
!855 = !{!856, !857}
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !854, file: !1, line: 634, type: !364)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !858, file: !1, line: 639, type: !28)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 638, column: 12)
!859 = distinct !DILexicalBlock(scope: !854, file: !1, line: 636, column: 9)
!860 = !DISubprogram(name: "tok_backup", scope: !1, file: !1, line: 1095, type: !861, isLocal: true, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, variables: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !364, !66}
!863 = !{!864, !865}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !860, file: !1, line: 1095, type: !364)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !860, file: !1, line: 1095, type: !66)
!866 = !DISubprogram(name: "indenterror", scope: !1, file: !1, line: 1273, type: !546, isLocal: true, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: true, variables: !867)
!867 = !{!868}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !866, file: !1, line: 1273, type: !364)
!869 = !DISubprogram(name: "verify_identifier", scope: !1, file: !1, line: 1300, type: !546, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, variables: !870)
!870 = !{!871, !872, !873, !874}
!871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !869, file: !1, line: 1300, type: !364)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !869, file: !1, line: 1302, type: !28)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !869, file: !1, line: 1303, type: !66)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !1, line: 1315, type: !28)
!875 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1315, column: 5)
!876 = !{!877, !881, !889}
!877 = !DIGlobalVariable(name: "_PyParser_TokenNames", scope: !0, file: !1, line: 50, type: !878, isLocal: false, isDefinition: true, variable: [55 x i8*]* @_PyParser_TokenNames)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3520, align: 64, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 55)
!881 = !DIGlobalVariable(name: "PyId_open", scope: !823, file: !1, line: 490, type: !882, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fp_setreadl.PyId_open)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !30, line: 144, baseType: !883)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !30, line: 140, size: 192, align: 64, elements: !884)
!884 = !{!885, !887, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !30, line: 141, baseType: !886, size: 64, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !883, file: !30, line: 142, baseType: !52, size: 64, align: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !883, file: !30, line: 143, baseType: !28, size: 64, align: 64, offset: 128)
!889 = !DIGlobalVariable(name: "PyId_readline", scope: !823, file: !1, line: 491, type: !882, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fp_setreadl.PyId_readline)
!890 = !{i32 2, !"Dwarf Version", i32 4}
!891 = !{i32 2, !"Debug Info Version", i32 3}
!892 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!893 = !DIExpression()
!894 = !DILocation(line: 798, column: 36, scope: !438)
!895 = !DILocation(line: 798, column: 45, scope: !438)
!896 = !DILocation(line: 115, column: 49, scope: !522, inlinedAt: !897)
!897 = distinct !DILocation(line: 800, column: 29, scope: !438)
!898 = !DILocation(line: 117, column: 13, scope: !899, inlinedAt: !897)
!899 = distinct !DILexicalBlock(scope: !522, file: !1, line: 117, column: 9)
!900 = !DILocation(line: 743, column: 17, scope: !527, inlinedAt: !901)
!901 = distinct !DILocation(line: 803, column: 11, scope: !438)
!902 = !DILocation(line: 117, column: 9, scope: !522, inlinedAt: !897)
!903 = !DILocation(line: 115, column: 29, scope: !522, inlinedAt: !897)
!904 = !DILocation(line: 120, column: 10, scope: !522, inlinedAt: !897)
!905 = !DILocation(line: 119, column: 47, scope: !522, inlinedAt: !897)
!906 = !DILocation(line: 120, column: 15, scope: !522, inlinedAt: !897)
!907 = !{!908, !912, i64 40}
!908 = !{!"tok_state", !909, i64 0, !909, i64 8, !909, i64 16, !909, i64 24, !909, i64 32, !912, i64 40, !909, i64 48, !912, i64 56, !912, i64 60, !910, i64 64, !912, i64 464, !912, i64 468, !909, i64 472, !909, i64 480, !912, i64 488, !912, i64 492, !909, i64 496, !912, i64 504, !912, i64 508, !912, i64 512, !910, i64 516, !910, i64 916, !912, i64 920, !912, i64 924, !909, i64 928, !912, i64 936, !909, i64 944, !909, i64 952, !909, i64 960, !909, i64 968, !909, i64 976, !909, i64 984}
!909 = !{!"any pointer", !910, i64 0}
!910 = !{!"omnipotent char", !911, i64 0}
!911 = !{!"Simple C/C++ TBAA"}
!912 = !{!"int", !910, i64 0}
!913 = !DILocation(line: 121, column: 10, scope: !522, inlinedAt: !897)
!914 = !DILocation(line: 121, column: 13, scope: !522, inlinedAt: !897)
!915 = !{!908, !909, i64 48}
!916 = !DILocation(line: 122, column: 10, scope: !522, inlinedAt: !897)
!917 = !DILocation(line: 122, column: 16, scope: !522, inlinedAt: !897)
!918 = !{!908, !909, i64 984}
!919 = !DILocation(line: 123, column: 10, scope: !522, inlinedAt: !897)
!920 = !DILocation(line: 123, column: 18, scope: !522, inlinedAt: !897)
!921 = !{!908, !912, i64 56}
!922 = !DILocation(line: 124, column: 10, scope: !522, inlinedAt: !897)
!923 = !DILocation(line: 124, column: 17, scope: !522, inlinedAt: !897)
!924 = !{!908, !912, i64 60}
!925 = !DILocation(line: 125, column: 10, scope: !522, inlinedAt: !897)
!926 = !DILocation(line: 125, column: 5, scope: !522, inlinedAt: !897)
!927 = !DILocation(line: 125, column: 22, scope: !522, inlinedAt: !897)
!928 = !{!912, !912, i64 0}
!929 = !DILocation(line: 126, column: 10, scope: !522, inlinedAt: !897)
!930 = !DILocation(line: 126, column: 16, scope: !522, inlinedAt: !897)
!931 = !{!908, !912, i64 464}
!932 = !DILocation(line: 127, column: 10, scope: !522, inlinedAt: !897)
!933 = !DILocation(line: 131, column: 10, scope: !522, inlinedAt: !897)
!934 = !DILocation(line: 128, column: 35, scope: !522, inlinedAt: !897)
!935 = !DILocation(line: 131, column: 21, scope: !522, inlinedAt: !897)
!936 = !DILocation(line: 135, column: 10, scope: !522, inlinedAt: !897)
!937 = !DILocation(line: 142, column: 10, scope: !522, inlinedAt: !897)
!938 = !DILocation(line: 142, column: 19, scope: !522, inlinedAt: !897)
!939 = !{!908, !909, i64 496}
!940 = !DILocation(line: 143, column: 10, scope: !522, inlinedAt: !897)
!941 = !DILocation(line: 135, column: 25, scope: !522, inlinedAt: !897)
!942 = !DILocation(line: 143, column: 28, scope: !522, inlinedAt: !897)
!943 = !DILocation(line: 800, column: 23, scope: !438)
!944 = !DILocation(line: 738, column: 24, scope: !527, inlinedAt: !901)
!945 = !DILocation(line: 738, column: 35, scope: !527, inlinedAt: !901)
!946 = !DILocation(line: 738, column: 61, scope: !527, inlinedAt: !901)
!947 = !DILocation(line: 740, column: 15, scope: !527, inlinedAt: !901)
!948 = !DILocation(line: 743, column: 5, scope: !527, inlinedAt: !901)
!949 = !DILocation(line: 744, column: 9, scope: !527, inlinedAt: !901)
!950 = !DILocation(line: 693, column: 32, scope: !689, inlinedAt: !951)
!951 = distinct !DILocation(line: 745, column: 24, scope: !527, inlinedAt: !901)
!952 = !DILocation(line: 693, column: 39, scope: !689, inlinedAt: !951)
!953 = !DILocation(line: 693, column: 69, scope: !689, inlinedAt: !951)
!954 = !DILocation(line: 694, column: 9, scope: !689, inlinedAt: !951)
!955 = !DILocation(line: 695, column: 28, scope: !689, inlinedAt: !951)
!956 = !DILocation(line: 695, column: 38, scope: !689, inlinedAt: !951)
!957 = !DILocation(line: 695, column: 12, scope: !689, inlinedAt: !951)
!958 = !DILocation(line: 697, column: 10, scope: !689, inlinedAt: !951)
!959 = !DILocation(line: 698, column: 11, scope: !689, inlinedAt: !951)
!960 = !DILocation(line: 696, column: 11, scope: !689, inlinedAt: !951)
!961 = !DILocation(line: 699, column: 13, scope: !962, inlinedAt: !951)
!962 = distinct !DILexicalBlock(scope: !689, file: !1, line: 699, column: 9)
!963 = !DILocation(line: 699, column: 9, scope: !689, inlinedAt: !951)
!964 = !DILocation(line: 703, column: 25, scope: !965, inlinedAt: !951)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 703, column: 5)
!966 = distinct !DILexicalBlock(scope: !689, file: !1, line: 703, column: 5)
!967 = !{!910, !910, i64 0}
!968 = !DILocation(line: 703, column: 5, scope: !966, inlinedAt: !951)
!969 = !DILocation(line: 705, column: 13, scope: !970, inlinedAt: !951)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 705, column: 13)
!971 = distinct !DILexicalBlock(scope: !965, file: !1, line: 703, column: 45)
!972 = !DILocation(line: 700, column: 19, scope: !973, inlinedAt: !951)
!973 = distinct !DILexicalBlock(scope: !962, file: !1, line: 699, column: 22)
!974 = !DILocation(line: 741, column: 17, scope: !527, inlinedAt: !901)
!975 = !DILocation(line: 745, column: 16, scope: !527, inlinedAt: !901)
!976 = !DILocation(line: 746, column: 9, scope: !527, inlinedAt: !901)
!977 = !DILocation(line: 745, column: 24, scope: !527, inlinedAt: !901)
!978 = !DILocation(line: 707, column: 19, scope: !979, inlinedAt: !951)
!979 = distinct !DILexicalBlock(scope: !980, file: !1, line: 707, column: 17)
!980 = distinct !DILexicalBlock(scope: !970, file: !1, line: 705, column: 27)
!981 = !DILocation(line: 705, column: 13, scope: !971, inlinedAt: !951)
!982 = !DILocation(line: 708, column: 22, scope: !983, inlinedAt: !951)
!983 = distinct !DILexicalBlock(scope: !979, file: !1, line: 707, column: 28)
!984 = !DILocation(line: 708, column: 21, scope: !983, inlinedAt: !951)
!985 = !DILocation(line: 709, column: 22, scope: !986, inlinedAt: !951)
!986 = distinct !DILexicalBlock(scope: !983, file: !1, line: 709, column: 21)
!987 = !DILocation(line: 709, column: 21, scope: !983, inlinedAt: !951)
!988 = !DILocation(line: 713, column: 15, scope: !989, inlinedAt: !951)
!989 = distinct !DILexicalBlock(scope: !971, file: !1, line: 713, column: 13)
!990 = !DILocation(line: 713, column: 13, scope: !971, inlinedAt: !951)
!991 = !DILocation(line: 717, column: 18, scope: !971, inlinedAt: !951)
!992 = !DILocation(line: 703, column: 30, scope: !965, inlinedAt: !951)
!993 = !DILocation(line: 703, column: 41, scope: !965, inlinedAt: !951)
!994 = !DILocation(line: 696, column: 17, scope: !689, inlinedAt: !951)
!995 = !DILocation(line: 721, column: 9, scope: !996, inlinedAt: !951)
!996 = distinct !DILexicalBlock(scope: !689, file: !1, line: 721, column: 9)
!997 = !DILocation(line: 721, column: 20, scope: !996, inlinedAt: !951)
!998 = !DILocation(line: 722, column: 18, scope: !999, inlinedAt: !951)
!999 = distinct !DILexicalBlock(scope: !996, file: !1, line: 721, column: 34)
!1000 = !DILocation(line: 723, column: 16, scope: !999, inlinedAt: !951)
!1001 = !DILocation(line: 724, column: 5, scope: !999, inlinedAt: !951)
!1002 = !DILocation(line: 725, column: 14, scope: !689, inlinedAt: !951)
!1003 = !DILocation(line: 726, column: 28, scope: !689, inlinedAt: !951)
!1004 = !DILocation(line: 726, column: 34, scope: !689, inlinedAt: !951)
!1005 = !DILocation(line: 695, column: 43, scope: !689, inlinedAt: !951)
!1006 = !DILocation(line: 727, column: 22, scope: !1007, inlinedAt: !951)
!1007 = distinct !DILexicalBlock(scope: !689, file: !1, line: 727, column: 9)
!1008 = !DILocation(line: 727, column: 41, scope: !1009, inlinedAt: !951)
!1009 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 1)
!1010 = !DILocation(line: 727, column: 38, scope: !1007, inlinedAt: !951)
!1011 = !DILocation(line: 729, column: 15, scope: !1007, inlinedAt: !951)
!1012 = !DILocation(line: 729, column: 9, scope: !1007, inlinedAt: !951)
!1013 = !DILocation(line: 746, column: 13, scope: !1014, inlinedAt: !901)
!1014 = distinct !DILexicalBlock(scope: !527, file: !1, line: 746, column: 9)
!1015 = !DILocation(line: 748, column: 10, scope: !527, inlinedAt: !901)
!1016 = !DILocation(line: 748, column: 14, scope: !527, inlinedAt: !901)
!1017 = !{!908, !909, i64 968}
!1018 = !DILocation(line: 749, column: 10, scope: !527, inlinedAt: !901)
!1019 = !DILocation(line: 341, column: 15, scope: !542, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 750, column: 10, scope: !1021, inlinedAt: !901)
!1021 = distinct !DILexicalBlock(scope: !527, file: !1, line: 750, column: 9)
!1022 = !DILocation(line: 656, column: 28, scope: !570, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 345, column: 11, scope: !542, inlinedAt: !1020)
!1024 = !DILocation(line: 657, column: 12, scope: !570, inlinedAt: !1023)
!1025 = !{!908, !909, i64 976}
!1026 = !DILocation(line: 346, column: 10, scope: !542, inlinedAt: !1020)
!1027 = !DILocation(line: 346, column: 25, scope: !542, inlinedAt: !1020)
!1028 = !{!908, !910, i64 916}
!1029 = !DILocation(line: 347, column: 9, scope: !542, inlinedAt: !1020)
!1030 = !DILocation(line: 656, column: 28, scope: !570, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 350, column: 15, scope: !1032, inlinedAt: !1020)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 349, column: 29)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 349, column: 16)
!1034 = distinct !DILexicalBlock(scope: !542, file: !1, line: 347, column: 9)
!1035 = !DILocation(line: 657, column: 12, scope: !570, inlinedAt: !1031)
!1036 = !DILocation(line: 351, column: 17, scope: !1037, inlinedAt: !1020)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 351, column: 13)
!1038 = !DILocation(line: 351, column: 13, scope: !1032, inlinedAt: !1020)
!1039 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 352, column: 13, scope: !1041, inlinedAt: !1020)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 351, column: 26)
!1042 = !DILocation(line: 663, column: 16, scope: !573, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 353, column: 13, scope: !1041, inlinedAt: !1020)
!1044 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1043)
!1045 = !DILocation(line: 664, column: 13, scope: !573, inlinedAt: !1043)
!1046 = !DILocation(line: 354, column: 13, scope: !1041, inlinedAt: !1020)
!1047 = !DILocation(line: 656, column: 28, scope: !570, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 356, column: 15, scope: !1032, inlinedAt: !1020)
!1049 = !DILocation(line: 657, column: 12, scope: !570, inlinedAt: !1048)
!1050 = !DILocation(line: 357, column: 17, scope: !1051, inlinedAt: !1020)
!1051 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 357, column: 13)
!1052 = !DILocation(line: 357, column: 13, scope: !1032, inlinedAt: !1020)
!1053 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 358, column: 13, scope: !1055, inlinedAt: !1020)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 357, column: 26)
!1056 = !DILocation(line: 663, column: 16, scope: !573, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 359, column: 13, scope: !1055, inlinedAt: !1020)
!1058 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1057)
!1059 = !DILocation(line: 663, column: 16, scope: !573, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 360, column: 13, scope: !1055, inlinedAt: !1020)
!1061 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1060)
!1062 = !DILocation(line: 664, column: 13, scope: !573, inlinedAt: !1060)
!1063 = !DILocation(line: 361, column: 13, scope: !1055, inlinedAt: !1020)
!1064 = !DILocation(line: 663, column: 37, scope: !573, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 388, column: 9, scope: !1066, inlinedAt: !1020)
!1066 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 387, column: 12)
!1067 = !DILocation(line: 664, column: 13, scope: !573, inlinedAt: !1065)
!1068 = !DILocation(line: 389, column: 9, scope: !1066, inlinedAt: !1020)
!1069 = !DILocation(line: 391, column: 14, scope: !1070, inlinedAt: !1020)
!1070 = distinct !DILexicalBlock(scope: !542, file: !1, line: 391, column: 9)
!1071 = !{!908, !909, i64 928}
!1072 = !DILocation(line: 391, column: 23, scope: !1070, inlinedAt: !1020)
!1073 = !DILocation(line: 391, column: 9, scope: !542, inlinedAt: !1020)
!1074 = !DILocation(line: 392, column: 9, scope: !1070, inlinedAt: !1020)
!1075 = !DILocation(line: 150, column: 24, scope: !562, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 393, column: 21, scope: !542, inlinedAt: !1020)
!1077 = !DILocation(line: 150, column: 38, scope: !562, inlinedAt: !1076)
!1078 = !DILocation(line: 150, column: 61, scope: !562, inlinedAt: !1076)
!1079 = !DILocation(line: 152, column: 28, scope: !562, inlinedAt: !1076)
!1080 = !DILocation(line: 152, column: 11, scope: !562, inlinedAt: !1076)
!1081 = !DILocation(line: 153, column: 10, scope: !1082, inlinedAt: !1076)
!1082 = distinct !DILexicalBlock(scope: !562, file: !1, line: 153, column: 9)
!1083 = !DILocation(line: 153, column: 9, scope: !562, inlinedAt: !1076)
!1084 = !DILocation(line: 154, column: 19, scope: !1085, inlinedAt: !1076)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 153, column: 18)
!1086 = !DILocation(line: 393, column: 19, scope: !542, inlinedAt: !1020)
!1087 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 751, column: 16, scope: !1021, inlinedAt: !901)
!1089 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !1088)
!1090 = !{!908, !912, i64 920}
!1091 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !1088)
!1092 = distinct !DILexicalBlock(scope: !581, file: !1, line: 188, column: 9)
!1093 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !1088)
!1094 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !1088)
!1095 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !1088)
!1096 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !1088)
!1097 = !{!908, !909, i64 0}
!1098 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !1088)
!1099 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !1088)
!1100 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !1088)
!1101 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !1088)
!1102 = !DILocation(line: 751, column: 9, scope: !1021, inlinedAt: !901)
!1103 = !DILocation(line: 157, column: 5, scope: !562, inlinedAt: !1076)
!1104 = !DILocation(line: 158, column: 5, scope: !562, inlinedAt: !1076)
!1105 = !DILocation(line: 158, column: 17, scope: !562, inlinedAt: !1076)
!1106 = !DILocation(line: 752, column: 16, scope: !527, inlinedAt: !901)
!1107 = !DILocation(line: 754, column: 14, scope: !1108, inlinedAt: !901)
!1108 = distinct !DILexicalBlock(scope: !527, file: !1, line: 754, column: 9)
!1109 = !DILocation(line: 754, column: 18, scope: !1108, inlinedAt: !901)
!1110 = !DILocation(line: 754, column: 9, scope: !527, inlinedAt: !901)
!1111 = !DILocation(line: 681, column: 33, scope: !586, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 755, column: 16, scope: !1113, inlinedAt: !901)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 754, column: 27)
!1114 = !DILocation(line: 681, column: 50, scope: !586, inlinedAt: !1112)
!1115 = !DILocation(line: 683, column: 43, scope: !586, inlinedAt: !1112)
!1116 = !DILocation(line: 683, column: 21, scope: !586, inlinedAt: !1112)
!1117 = !DILocation(line: 683, column: 15, scope: !586, inlinedAt: !1112)
!1118 = !DILocation(line: 684, column: 13, scope: !1119, inlinedAt: !1112)
!1119 = distinct !DILexicalBlock(scope: !586, file: !1, line: 684, column: 9)
!1120 = !DILocation(line: 684, column: 9, scope: !586, inlinedAt: !1112)
!1121 = !DILocation(line: 686, column: 12, scope: !586, inlinedAt: !1112)
!1122 = !DILocation(line: 682, column: 15, scope: !586, inlinedAt: !1112)
!1123 = !DILocation(line: 687, column: 5, scope: !1124, inlinedAt: !1112)
!1124 = !DILexicalBlockFile(scope: !595, file: !1, discriminator: 1)
!1125 = !DILocation(line: 687, column: 5, scope: !1126, inlinedAt: !1112)
!1126 = distinct !DILexicalBlock(scope: !595, file: !1, line: 687, column: 5)
!1127 = !{!1128, !1129, i64 0}
!1128 = !{!"_object", !1129, i64 0, !909, i64 8}
!1129 = !{!"long", !910, i64 0}
!1130 = !DILocation(line: 687, column: 5, scope: !595, inlinedAt: !1112)
!1131 = !DILocation(line: 687, column: 5, scope: !1132, inlinedAt: !1112)
!1132 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 3)
!1133 = !{!1128, !909, i64 8}
!1134 = !{!1135, !909, i64 48}
!1135 = !{!"_typeobject", !1136, i64 0, !909, i64 24, !1129, i64 32, !1129, i64 40, !909, i64 48, !909, i64 56, !909, i64 64, !909, i64 72, !909, i64 80, !909, i64 88, !909, i64 96, !909, i64 104, !909, i64 112, !909, i64 120, !909, i64 128, !909, i64 136, !909, i64 144, !909, i64 152, !909, i64 160, !1129, i64 168, !909, i64 176, !909, i64 184, !909, i64 192, !909, i64 200, !1129, i64 208, !909, i64 216, !909, i64 224, !909, i64 232, !909, i64 240, !909, i64 248, !909, i64 256, !909, i64 264, !909, i64 272, !909, i64 280, !1129, i64 288, !909, i64 296, !909, i64 304, !909, i64 312, !909, i64 320, !909, i64 328, !909, i64 336, !909, i64 344, !909, i64 352, !909, i64 360, !909, i64 368, !909, i64 376, !912, i64 384, !909, i64 392}
!1136 = !{!"", !1128, i64 0, !1129, i64 16}
!1137 = !DILocation(line: 755, column: 16, scope: !1113, inlinedAt: !901)
!1138 = !DILocation(line: 756, column: 18, scope: !1139, inlinedAt: !901)
!1139 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 756, column: 13)
!1140 = !DILocation(line: 756, column: 13, scope: !1113, inlinedAt: !901)
!1141 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 757, column: 20, scope: !1139, inlinedAt: !901)
!1143 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !1142)
!1144 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !1142)
!1145 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !1142)
!1146 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !1142)
!1147 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !1142)
!1148 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !1142)
!1149 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !1142)
!1150 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !1142)
!1151 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !1142)
!1152 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !1142)
!1153 = !DILocation(line: 757, column: 13, scope: !1139, inlinedAt: !901)
!1154 = !DILocation(line: 758, column: 15, scope: !1113, inlinedAt: !901)
!1155 = !DILocation(line: 759, column: 5, scope: !1113, inlinedAt: !901)
!1156 = !DILocation(line: 803, column: 11, scope: !438)
!1157 = !DILocation(line: 742, column: 17, scope: !527, inlinedAt: !901)
!1158 = !DILocation(line: 760, column: 10, scope: !1159, inlinedAt: !901)
!1159 = distinct !DILexicalBlock(scope: !527, file: !1, line: 760, column: 5)
!1160 = !DILocation(line: 761, column: 13, scope: !1161, inlinedAt: !901)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 761, column: 13)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 760, column: 25)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 760, column: 5)
!1164 = !DILocation(line: 761, column: 13, scope: !1162, inlinedAt: !901)
!1165 = !DILocation(line: 764, column: 13, scope: !1166, inlinedAt: !901)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 762, column: 30)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 762, column: 18)
!1168 = !DILocation(line: 764, column: 26, scope: !1166, inlinedAt: !901)
!1169 = !{!909, !909, i64 0}
!1170 = !DILocation(line: 765, column: 19, scope: !1166, inlinedAt: !901)
!1171 = !DILocation(line: 766, column: 24, scope: !1172, inlinedAt: !901)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 766, column: 17)
!1173 = !DILocation(line: 766, column: 17, scope: !1166, inlinedAt: !901)
!1174 = !DILocation(line: 760, column: 21, scope: !1163, inlinedAt: !901)
!1175 = !DILocation(line: 760, column: 5, scope: !1163, inlinedAt: !901)
!1176 = !DILocation(line: 769, column: 14, scope: !527, inlinedAt: !901)
!1177 = !DILocation(line: 772, column: 9, scope: !1178, inlinedAt: !901)
!1178 = distinct !DILexicalBlock(scope: !527, file: !1, line: 772, column: 9)
!1179 = !DILocation(line: 776, column: 36, scope: !1180, inlinedAt: !901)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 776, column: 17)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 775, column: 68)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 775, column: 13)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 772, column: 18)
!1184 = !DILocation(line: 772, column: 9, scope: !527, inlinedAt: !901)
!1185 = !DILocation(line: 773, column: 45, scope: !1186, inlinedAt: !901)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 773, column: 13)
!1187 = !DILocation(line: 773, column: 14, scope: !1186, inlinedAt: !901)
!1188 = !DILocation(line: 773, column: 13, scope: !1183, inlinedAt: !901)
!1189 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 774, column: 20, scope: !1186, inlinedAt: !901)
!1191 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !1190)
!1192 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !1190)
!1193 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !1190)
!1194 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !1190)
!1195 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !1190)
!1196 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !1190)
!1197 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !1190)
!1198 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !1190)
!1199 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !1190)
!1200 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !1190)
!1201 = !DILocation(line: 774, column: 13, scope: !1186, inlinedAt: !901)
!1202 = !DILocation(line: 775, column: 18, scope: !1182, inlinedAt: !901)
!1203 = !DILocation(line: 775, column: 22, scope: !1182, inlinedAt: !901)
!1204 = !DILocation(line: 775, column: 30, scope: !1182, inlinedAt: !901)
!1205 = !DILocation(line: 775, column: 39, scope: !1182, inlinedAt: !901)
!1206 = !{!908, !912, i64 924}
!1207 = !DILocation(line: 775, column: 34, scope: !1182, inlinedAt: !901)
!1208 = !DILocation(line: 775, column: 56, scope: !1182, inlinedAt: !901)
!1209 = !DILocation(line: 775, column: 59, scope: !1210, inlinedAt: !901)
!1210 = !DILexicalBlockFile(scope: !1182, file: !1, discriminator: 2)
!1211 = !DILocation(line: 775, column: 13, scope: !1183, inlinedAt: !901)
!1212 = !DILocation(line: 776, column: 43, scope: !1180, inlinedAt: !901)
!1213 = !DILocation(line: 776, column: 55, scope: !1180, inlinedAt: !901)
!1214 = !DILocation(line: 776, column: 18, scope: !1180, inlinedAt: !901)
!1215 = !DILocation(line: 776, column: 17, scope: !1181, inlinedAt: !901)
!1216 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 778, column: 24, scope: !1180, inlinedAt: !901)
!1218 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !1217)
!1219 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !1217)
!1220 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !1217)
!1221 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !1217)
!1222 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !1217)
!1223 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !1217)
!1224 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !1217)
!1225 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !1217)
!1226 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !1217)
!1227 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !1217)
!1228 = !DILocation(line: 778, column: 17, scope: !1180, inlinedAt: !901)
!1229 = !DILocation(line: 781, column: 14, scope: !1230, inlinedAt: !901)
!1230 = distinct !DILexicalBlock(scope: !527, file: !1, line: 781, column: 9)
!1231 = !DILocation(line: 781, column: 18, scope: !1230, inlinedAt: !901)
!1232 = !DILocation(line: 781, column: 9, scope: !527, inlinedAt: !901)
!1233 = !DILocation(line: 681, column: 33, scope: !586, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 783, column: 16, scope: !1235, inlinedAt: !901)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 781, column: 27)
!1236 = !DILocation(line: 683, column: 43, scope: !586, inlinedAt: !1234)
!1237 = !DILocation(line: 683, column: 21, scope: !586, inlinedAt: !1234)
!1238 = !DILocation(line: 683, column: 15, scope: !586, inlinedAt: !1234)
!1239 = !DILocation(line: 684, column: 13, scope: !1119, inlinedAt: !1234)
!1240 = !DILocation(line: 684, column: 9, scope: !586, inlinedAt: !1234)
!1241 = !DILocation(line: 686, column: 12, scope: !586, inlinedAt: !1234)
!1242 = !DILocation(line: 682, column: 15, scope: !586, inlinedAt: !1234)
!1243 = !DILocation(line: 687, column: 5, scope: !1124, inlinedAt: !1234)
!1244 = !DILocation(line: 687, column: 5, scope: !1126, inlinedAt: !1234)
!1245 = !DILocation(line: 687, column: 5, scope: !595, inlinedAt: !1234)
!1246 = !DILocation(line: 687, column: 5, scope: !1132, inlinedAt: !1234)
!1247 = !DILocation(line: 783, column: 16, scope: !1235, inlinedAt: !901)
!1248 = !DILocation(line: 784, column: 18, scope: !1249, inlinedAt: !901)
!1249 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 784, column: 13)
!1250 = !DILocation(line: 784, column: 13, scope: !1235, inlinedAt: !901)
!1251 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 785, column: 20, scope: !1249, inlinedAt: !901)
!1253 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !1252)
!1254 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !1252)
!1255 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !1252)
!1256 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !1252)
!1257 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !1252)
!1258 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !1252)
!1259 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !1252)
!1260 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !1252)
!1261 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !1252)
!1262 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !1252)
!1263 = !DILocation(line: 785, column: 13, scope: !1249, inlinedAt: !901)
!1264 = !DILocation(line: 786, column: 15, scope: !1235, inlinedAt: !901)
!1265 = !DILocation(line: 787, column: 5, scope: !1235, inlinedAt: !901)
!1266 = !DILocation(line: 791, column: 1, scope: !527, inlinedAt: !901)
!1267 = !DILocation(line: 804, column: 9, scope: !438)
!1268 = !DILocation(line: 789, column: 10, scope: !527, inlinedAt: !901)
!1269 = !DILocation(line: 789, column: 26, scope: !527, inlinedAt: !901)
!1270 = !{!908, !909, i64 960}
!1271 = !DILocation(line: 804, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !438, file: !1, line: 804, column: 9)
!1273 = !DILocation(line: 805, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 804, column: 22)
!1275 = !DILocation(line: 806, column: 9, scope: !1274)
!1276 = !DILocation(line: 810, column: 43, scope: !438)
!1277 = !DILocation(line: 810, column: 47, scope: !438)
!1278 = !{!908, !909, i64 16}
!1279 = !DILocation(line: 810, column: 32, scope: !438)
!1280 = !DILocation(line: 810, column: 36, scope: !438)
!1281 = !{!908, !909, i64 24}
!1282 = !DILocation(line: 810, column: 21, scope: !438)
!1283 = !DILocation(line: 810, column: 25, scope: !438)
!1284 = !{!908, !909, i64 8}
!1285 = !DILocation(line: 810, column: 10, scope: !438)
!1286 = !DILocation(line: 810, column: 14, scope: !438)
!1287 = !DILocation(line: 811, column: 5, scope: !438)
!1288 = !DILocation(line: 812, column: 1, scope: !438)
!1289 = !DILocation(line: 879, column: 36, scope: !459)
!1290 = !DILocation(line: 881, column: 14, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !459, file: !1, line: 881, column: 9)
!1292 = !DILocation(line: 881, column: 23, scope: !1291)
!1293 = !DILocation(line: 881, column: 9, scope: !459)
!1294 = !DILocation(line: 882, column: 9, scope: !1291)
!1295 = !DILocation(line: 884, column: 5, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 1)
!1297 = !{!908, !909, i64 952}
!1298 = !DILocation(line: 884, column: 5, scope: !468)
!1299 = !DILocation(line: 884, column: 5, scope: !465)
!1300 = !DILocation(line: 884, column: 5, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 4)
!1302 = !DILocation(line: 884, column: 5, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !467, file: !1, line: 884, column: 5)
!1304 = !DILocation(line: 884, column: 5, scope: !467)
!1305 = !DILocation(line: 884, column: 5, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 6)
!1307 = !DILocation(line: 885, column: 5, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!1309 = !DILocation(line: 885, column: 5, scope: !473)
!1310 = !DILocation(line: 885, column: 5, scope: !470)
!1311 = !DILocation(line: 885, column: 5, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 4)
!1313 = !DILocation(line: 885, column: 5, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !472, file: !1, line: 885, column: 5)
!1315 = !DILocation(line: 885, column: 5, scope: !472)
!1316 = !DILocation(line: 885, column: 5, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1314, file: !1, discriminator: 6)
!1318 = !DILocation(line: 886, column: 5, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!1320 = !DILocation(line: 886, column: 5, scope: !478)
!1321 = !DILocation(line: 886, column: 5, scope: !475)
!1322 = !DILocation(line: 886, column: 5, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 4)
!1324 = !DILocation(line: 886, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !477, file: !1, line: 886, column: 5)
!1326 = !DILocation(line: 886, column: 5, scope: !477)
!1327 = !DILocation(line: 886, column: 5, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1325, file: !1, discriminator: 6)
!1329 = !DILocation(line: 888, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !459, file: !1, line: 888, column: 9)
!1331 = !DILocation(line: 888, column: 17, scope: !1330)
!1332 = !DILocation(line: 888, column: 25, scope: !1330)
!1333 = !DILocation(line: 888, column: 33, scope: !1330)
!1334 = !DILocation(line: 888, column: 37, scope: !1330)
!1335 = !DILocation(line: 888, column: 9, scope: !459)
!1336 = !DILocation(line: 889, column: 9, scope: !1330)
!1337 = !DILocation(line: 890, column: 14, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !459, file: !1, line: 890, column: 9)
!1339 = !DILocation(line: 890, column: 9, scope: !1338)
!1340 = !DILocation(line: 890, column: 9, scope: !459)
!1341 = !DILocation(line: 891, column: 9, scope: !1338)
!1342 = !DILocation(line: 892, column: 5, scope: !459)
!1343 = !DILocation(line: 893, column: 1, scope: !459)
!1344 = !DILocation(line: 815, column: 34, scope: !445)
!1345 = !DILocation(line: 815, column: 43, scope: !445)
!1346 = !DILocation(line: 115, column: 49, scope: !522, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 817, column: 29, scope: !445)
!1348 = !DILocation(line: 117, column: 13, scope: !899, inlinedAt: !1347)
!1349 = !DILocation(line: 117, column: 9, scope: !522, inlinedAt: !1347)
!1350 = !DILocation(line: 115, column: 29, scope: !522, inlinedAt: !1347)
!1351 = !DILocation(line: 120, column: 10, scope: !522, inlinedAt: !1347)
!1352 = !DILocation(line: 119, column: 47, scope: !522, inlinedAt: !1347)
!1353 = !DILocation(line: 120, column: 15, scope: !522, inlinedAt: !1347)
!1354 = !DILocation(line: 121, column: 10, scope: !522, inlinedAt: !1347)
!1355 = !DILocation(line: 121, column: 13, scope: !522, inlinedAt: !1347)
!1356 = !DILocation(line: 122, column: 10, scope: !522, inlinedAt: !1347)
!1357 = !DILocation(line: 122, column: 16, scope: !522, inlinedAt: !1347)
!1358 = !DILocation(line: 123, column: 10, scope: !522, inlinedAt: !1347)
!1359 = !DILocation(line: 123, column: 18, scope: !522, inlinedAt: !1347)
!1360 = !DILocation(line: 124, column: 10, scope: !522, inlinedAt: !1347)
!1361 = !DILocation(line: 124, column: 17, scope: !522, inlinedAt: !1347)
!1362 = !DILocation(line: 125, column: 10, scope: !522, inlinedAt: !1347)
!1363 = !DILocation(line: 125, column: 5, scope: !522, inlinedAt: !1347)
!1364 = !DILocation(line: 125, column: 22, scope: !522, inlinedAt: !1347)
!1365 = !DILocation(line: 126, column: 10, scope: !522, inlinedAt: !1347)
!1366 = !DILocation(line: 126, column: 16, scope: !522, inlinedAt: !1347)
!1367 = !DILocation(line: 127, column: 10, scope: !522, inlinedAt: !1347)
!1368 = !DILocation(line: 131, column: 10, scope: !522, inlinedAt: !1347)
!1369 = !DILocation(line: 128, column: 35, scope: !522, inlinedAt: !1347)
!1370 = !DILocation(line: 131, column: 21, scope: !522, inlinedAt: !1347)
!1371 = !DILocation(line: 135, column: 10, scope: !522, inlinedAt: !1347)
!1372 = !DILocation(line: 142, column: 10, scope: !522, inlinedAt: !1347)
!1373 = !DILocation(line: 142, column: 19, scope: !522, inlinedAt: !1347)
!1374 = !DILocation(line: 143, column: 10, scope: !522, inlinedAt: !1347)
!1375 = !DILocation(line: 135, column: 25, scope: !522, inlinedAt: !1347)
!1376 = !DILocation(line: 143, column: 28, scope: !522, inlinedAt: !1347)
!1377 = !DILocation(line: 817, column: 23, scope: !445)
!1378 = !DILocation(line: 693, column: 32, scope: !689, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 821, column: 24, scope: !445)
!1380 = !DILocation(line: 693, column: 39, scope: !689, inlinedAt: !1379)
!1381 = !DILocation(line: 693, column: 69, scope: !689, inlinedAt: !1379)
!1382 = !DILocation(line: 694, column: 9, scope: !689, inlinedAt: !1379)
!1383 = !DILocation(line: 695, column: 28, scope: !689, inlinedAt: !1379)
!1384 = !DILocation(line: 695, column: 38, scope: !689, inlinedAt: !1379)
!1385 = !DILocation(line: 695, column: 12, scope: !689, inlinedAt: !1379)
!1386 = !DILocation(line: 697, column: 10, scope: !689, inlinedAt: !1379)
!1387 = !DILocation(line: 698, column: 11, scope: !689, inlinedAt: !1379)
!1388 = !DILocation(line: 696, column: 11, scope: !689, inlinedAt: !1379)
!1389 = !DILocation(line: 699, column: 13, scope: !962, inlinedAt: !1379)
!1390 = !DILocation(line: 699, column: 9, scope: !689, inlinedAt: !1379)
!1391 = !DILocation(line: 703, column: 25, scope: !965, inlinedAt: !1379)
!1392 = !DILocation(line: 703, column: 5, scope: !966, inlinedAt: !1379)
!1393 = !DILocation(line: 705, column: 13, scope: !970, inlinedAt: !1379)
!1394 = !DILocation(line: 700, column: 19, scope: !973, inlinedAt: !1379)
!1395 = !DILocation(line: 821, column: 16, scope: !445)
!1396 = !DILocation(line: 823, column: 9, scope: !445)
!1397 = !DILocation(line: 821, column: 24, scope: !445)
!1398 = !DILocation(line: 707, column: 19, scope: !979, inlinedAt: !1379)
!1399 = !DILocation(line: 705, column: 13, scope: !971, inlinedAt: !1379)
!1400 = !DILocation(line: 708, column: 22, scope: !983, inlinedAt: !1379)
!1401 = !DILocation(line: 708, column: 21, scope: !983, inlinedAt: !1379)
!1402 = !DILocation(line: 709, column: 22, scope: !986, inlinedAt: !1379)
!1403 = !DILocation(line: 709, column: 21, scope: !983, inlinedAt: !1379)
!1404 = !DILocation(line: 713, column: 15, scope: !989, inlinedAt: !1379)
!1405 = !DILocation(line: 713, column: 13, scope: !971, inlinedAt: !1379)
!1406 = !DILocation(line: 717, column: 18, scope: !971, inlinedAt: !1379)
!1407 = !DILocation(line: 703, column: 30, scope: !965, inlinedAt: !1379)
!1408 = !DILocation(line: 703, column: 41, scope: !965, inlinedAt: !1379)
!1409 = !DILocation(line: 696, column: 17, scope: !689, inlinedAt: !1379)
!1410 = !DILocation(line: 721, column: 9, scope: !996, inlinedAt: !1379)
!1411 = !DILocation(line: 721, column: 20, scope: !996, inlinedAt: !1379)
!1412 = !DILocation(line: 722, column: 18, scope: !999, inlinedAt: !1379)
!1413 = !DILocation(line: 723, column: 16, scope: !999, inlinedAt: !1379)
!1414 = !DILocation(line: 724, column: 5, scope: !999, inlinedAt: !1379)
!1415 = !DILocation(line: 725, column: 14, scope: !689, inlinedAt: !1379)
!1416 = !DILocation(line: 726, column: 28, scope: !689, inlinedAt: !1379)
!1417 = !DILocation(line: 726, column: 34, scope: !689, inlinedAt: !1379)
!1418 = !DILocation(line: 695, column: 43, scope: !689, inlinedAt: !1379)
!1419 = !DILocation(line: 727, column: 22, scope: !1007, inlinedAt: !1379)
!1420 = !DILocation(line: 727, column: 41, scope: !1009, inlinedAt: !1379)
!1421 = !DILocation(line: 727, column: 38, scope: !1007, inlinedAt: !1379)
!1422 = !DILocation(line: 729, column: 15, scope: !1007, inlinedAt: !1379)
!1423 = !DILocation(line: 729, column: 9, scope: !1007, inlinedAt: !1379)
!1424 = !DILocation(line: 823, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !445, file: !1, line: 823, column: 9)
!1426 = !DILocation(line: 824, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 823, column: 22)
!1428 = !DILocation(line: 825, column: 9, scope: !1427)
!1429 = !DILocation(line: 827, column: 10, scope: !445)
!1430 = !DILocation(line: 827, column: 25, scope: !445)
!1431 = !DILocation(line: 828, column: 10, scope: !445)
!1432 = !DILocation(line: 828, column: 27, scope: !445)
!1433 = !DILocation(line: 829, column: 10, scope: !445)
!1434 = !DILocation(line: 829, column: 14, scope: !445)
!1435 = !DILocation(line: 830, column: 10, scope: !445)
!1436 = !DILocation(line: 830, column: 14, scope: !445)
!1437 = !DILocation(line: 831, column: 29, scope: !445)
!1438 = !DILocation(line: 831, column: 10, scope: !445)
!1439 = !DILocation(line: 831, column: 19, scope: !445)
!1440 = !DILocation(line: 832, column: 10, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !445, file: !1, line: 832, column: 9)
!1442 = !DILocation(line: 832, column: 9, scope: !445)
!1443 = !DILocation(line: 833, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 832, column: 25)
!1445 = !DILocation(line: 834, column: 9, scope: !1444)
!1446 = !DILocation(line: 836, column: 5, scope: !445)
!1447 = !DILocation(line: 839, column: 43, scope: !445)
!1448 = !DILocation(line: 839, column: 47, scope: !445)
!1449 = !DILocation(line: 839, column: 32, scope: !445)
!1450 = !DILocation(line: 839, column: 36, scope: !445)
!1451 = !DILocation(line: 839, column: 21, scope: !445)
!1452 = !DILocation(line: 839, column: 25, scope: !445)
!1453 = !DILocation(line: 839, column: 10, scope: !445)
!1454 = !DILocation(line: 839, column: 14, scope: !445)
!1455 = !DILocation(line: 840, column: 5, scope: !445)
!1456 = !DILocation(line: 841, column: 1, scope: !445)
!1457 = !DILocation(line: 846, column: 28, scope: !450)
!1458 = !DILocation(line: 846, column: 44, scope: !450)
!1459 = !DILocation(line: 847, column: 34, scope: !450)
!1460 = !DILocation(line: 847, column: 51, scope: !450)
!1461 = !DILocation(line: 115, column: 49, scope: !522, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 849, column: 29, scope: !450)
!1463 = !DILocation(line: 117, column: 13, scope: !899, inlinedAt: !1462)
!1464 = !DILocation(line: 117, column: 9, scope: !522, inlinedAt: !1462)
!1465 = !DILocation(line: 115, column: 29, scope: !522, inlinedAt: !1462)
!1466 = !DILocation(line: 120, column: 10, scope: !522, inlinedAt: !1462)
!1467 = !DILocation(line: 119, column: 47, scope: !522, inlinedAt: !1462)
!1468 = !DILocation(line: 120, column: 15, scope: !522, inlinedAt: !1462)
!1469 = !DILocation(line: 121, column: 10, scope: !522, inlinedAt: !1462)
!1470 = !DILocation(line: 121, column: 13, scope: !522, inlinedAt: !1462)
!1471 = !DILocation(line: 122, column: 10, scope: !522, inlinedAt: !1462)
!1472 = !DILocation(line: 122, column: 16, scope: !522, inlinedAt: !1462)
!1473 = !DILocation(line: 123, column: 10, scope: !522, inlinedAt: !1462)
!1474 = !DILocation(line: 123, column: 18, scope: !522, inlinedAt: !1462)
!1475 = !DILocation(line: 124, column: 10, scope: !522, inlinedAt: !1462)
!1476 = !DILocation(line: 124, column: 17, scope: !522, inlinedAt: !1462)
!1477 = !DILocation(line: 125, column: 10, scope: !522, inlinedAt: !1462)
!1478 = !DILocation(line: 125, column: 5, scope: !522, inlinedAt: !1462)
!1479 = !DILocation(line: 125, column: 22, scope: !522, inlinedAt: !1462)
!1480 = !DILocation(line: 126, column: 10, scope: !522, inlinedAt: !1462)
!1481 = !DILocation(line: 126, column: 16, scope: !522, inlinedAt: !1462)
!1482 = !DILocation(line: 127, column: 10, scope: !522, inlinedAt: !1462)
!1483 = !DILocation(line: 131, column: 10, scope: !522, inlinedAt: !1462)
!1484 = !DILocation(line: 128, column: 35, scope: !522, inlinedAt: !1462)
!1485 = !DILocation(line: 131, column: 21, scope: !522, inlinedAt: !1462)
!1486 = !DILocation(line: 135, column: 10, scope: !522, inlinedAt: !1462)
!1487 = !DILocation(line: 142, column: 10, scope: !522, inlinedAt: !1462)
!1488 = !DILocation(line: 142, column: 19, scope: !522, inlinedAt: !1462)
!1489 = !DILocation(line: 143, column: 10, scope: !522, inlinedAt: !1462)
!1490 = !DILocation(line: 135, column: 25, scope: !522, inlinedAt: !1462)
!1491 = !DILocation(line: 143, column: 28, scope: !522, inlinedAt: !1462)
!1492 = !DILocation(line: 849, column: 23, scope: !450)
!1493 = !DILocation(line: 857, column: 21, scope: !450)
!1494 = !DILocation(line: 852, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !450, file: !1, line: 852, column: 9)
!1496 = !DILocation(line: 852, column: 19, scope: !1495)
!1497 = !DILocation(line: 852, column: 51, scope: !1495)
!1498 = !DILocation(line: 852, column: 9, scope: !450)
!1499 = !DILocation(line: 853, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 852, column: 60)
!1501 = !DILocation(line: 854, column: 9, scope: !1500)
!1502 = !DILocation(line: 856, column: 21, scope: !450)
!1503 = !DILocation(line: 856, column: 25, scope: !450)
!1504 = !DILocation(line: 856, column: 10, scope: !450)
!1505 = !DILocation(line: 856, column: 14, scope: !450)
!1506 = !DILocation(line: 857, column: 25, scope: !450)
!1507 = !DILocation(line: 857, column: 10, scope: !450)
!1508 = !DILocation(line: 857, column: 14, scope: !450)
!1509 = !DILocation(line: 858, column: 13, scope: !450)
!1510 = !DILocation(line: 859, column: 10, scope: !450)
!1511 = !DILocation(line: 859, column: 17, scope: !450)
!1512 = !{!908, !909, i64 472}
!1513 = !DILocation(line: 860, column: 10, scope: !450)
!1514 = !DILocation(line: 860, column: 21, scope: !450)
!1515 = !{!908, !909, i64 480}
!1516 = !DILocation(line: 861, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !450, file: !1, line: 861, column: 9)
!1518 = !DILocation(line: 861, column: 9, scope: !450)
!1519 = !DILocation(line: 864, column: 25, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 861, column: 22)
!1521 = !DILocation(line: 864, column: 14, scope: !1520)
!1522 = !DILocation(line: 864, column: 23, scope: !1520)
!1523 = !DILocation(line: 865, column: 14, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 865, column: 13)
!1525 = !DILocation(line: 865, column: 13, scope: !1520)
!1526 = !DILocation(line: 866, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 865, column: 29)
!1528 = !DILocation(line: 867, column: 13, scope: !1527)
!1529 = !DILocation(line: 869, column: 9, scope: !1520)
!1530 = !DILocation(line: 870, column: 14, scope: !1520)
!1531 = !DILocation(line: 870, column: 29, scope: !1520)
!1532 = !DILocation(line: 871, column: 5, scope: !1520)
!1533 = !DILocation(line: 873, column: 1, scope: !450)
!1534 = !DILocation(line: 1109, column: 21, scope: !479)
!1535 = !DILocation(line: 1111, column: 5, scope: !479)
!1536 = !DILocation(line: 1113, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !479, file: !1, line: 1111, column: 16)
!1538 = !DILocation(line: 1114, column: 25, scope: !1537)
!1539 = !DILocation(line: 1115, column: 25, scope: !1537)
!1540 = !DILocation(line: 1116, column: 25, scope: !1537)
!1541 = !DILocation(line: 1117, column: 25, scope: !1537)
!1542 = !DILocation(line: 1118, column: 25, scope: !1537)
!1543 = !DILocation(line: 1119, column: 25, scope: !1537)
!1544 = !DILocation(line: 1120, column: 25, scope: !1537)
!1545 = !DILocation(line: 1121, column: 25, scope: !1537)
!1546 = !DILocation(line: 1122, column: 25, scope: !1537)
!1547 = !DILocation(line: 1123, column: 25, scope: !1537)
!1548 = !DILocation(line: 1124, column: 25, scope: !1537)
!1549 = !DILocation(line: 1125, column: 25, scope: !1537)
!1550 = !DILocation(line: 1126, column: 25, scope: !1537)
!1551 = !DILocation(line: 1127, column: 25, scope: !1537)
!1552 = !DILocation(line: 1128, column: 25, scope: !1537)
!1553 = !DILocation(line: 1129, column: 25, scope: !1537)
!1554 = !DILocation(line: 1130, column: 25, scope: !1537)
!1555 = !DILocation(line: 1131, column: 25, scope: !1537)
!1556 = !DILocation(line: 1132, column: 25, scope: !1537)
!1557 = !DILocation(line: 1133, column: 25, scope: !1537)
!1558 = !DILocation(line: 1134, column: 21, scope: !1537)
!1559 = !DILocation(line: 1135, column: 25, scope: !1537)
!1560 = !DILocation(line: 1137, column: 1, scope: !479)
!1561 = !DILocation(line: 1141, column: 22, scope: !484)
!1562 = !DILocation(line: 1141, column: 30, scope: !484)
!1563 = !DILocation(line: 1143, column: 5, scope: !484)
!1564 = !DILocation(line: 1145, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !484, file: !1, line: 1143, column: 17)
!1566 = !DILocation(line: 1150, column: 9, scope: !1565)
!1567 = !DILocation(line: 1155, column: 9, scope: !1565)
!1568 = !DILocation(line: 1162, column: 9, scope: !1565)
!1569 = !DILocation(line: 1168, column: 9, scope: !1565)
!1570 = !DILocation(line: 1173, column: 9, scope: !1565)
!1571 = !DILocation(line: 1179, column: 9, scope: !1565)
!1572 = !DILocation(line: 1185, column: 9, scope: !1565)
!1573 = !DILocation(line: 1191, column: 9, scope: !1565)
!1574 = !DILocation(line: 1196, column: 9, scope: !1565)
!1575 = !DILocation(line: 1201, column: 9, scope: !1565)
!1576 = !DILocation(line: 1206, column: 9, scope: !1565)
!1577 = !DILocation(line: 1211, column: 5, scope: !484)
!1578 = !DILocation(line: 1212, column: 1, scope: !484)
!1579 = !DILocation(line: 1215, column: 24, scope: !490)
!1580 = !DILocation(line: 1215, column: 32, scope: !490)
!1581 = !DILocation(line: 1215, column: 40, scope: !490)
!1582 = !DILocation(line: 1217, column: 5, scope: !490)
!1583 = !DILocation(line: 1219, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !490, file: !1, line: 1217, column: 17)
!1585 = !DILocation(line: 1221, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1219, column: 21)
!1587 = !DILocation(line: 1229, column: 9, scope: !1584)
!1588 = !DILocation(line: 1231, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1229, column: 21)
!1590 = !DILocation(line: 1239, column: 9, scope: !1584)
!1591 = !DILocation(line: 1241, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1239, column: 21)
!1593 = !DILocation(line: 1249, column: 9, scope: !1584)
!1594 = !DILocation(line: 1251, column: 13, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1249, column: 21)
!1596 = !DILocation(line: 1259, column: 9, scope: !1584)
!1597 = !DILocation(line: 1261, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 1259, column: 21)
!1599 = !DILocation(line: 1269, column: 5, scope: !490)
!1600 = !DILocation(line: 1270, column: 1, scope: !490)
!1601 = !DILocation(line: 1727, column: 35, scope: !497)
!1602 = !DILocation(line: 1727, column: 47, scope: !497)
!1603 = !DILocation(line: 1727, column: 63, scope: !497)
!1604 = !DILocation(line: 1325, column: 27, scope: !702, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 1729, column: 18, scope: !497)
!1606 = !DILocation(line: 1325, column: 39, scope: !702, inlinedAt: !1605)
!1607 = !DILocation(line: 1325, column: 55, scope: !702, inlinedAt: !1605)
!1608 = !DILocation(line: 1330, column: 23, scope: !702, inlinedAt: !1605)
!1609 = !DILocation(line: 1330, column: 14, scope: !702, inlinedAt: !1605)
!1610 = !DILocation(line: 1332, column: 10, scope: !702, inlinedAt: !1605)
!1611 = !DILocation(line: 1336, column: 14, scope: !712, inlinedAt: !1605)
!1612 = !DILocation(line: 1411, column: 23, scope: !702, inlinedAt: !1605)
!1613 = !DILocation(line: 1411, column: 16, scope: !702, inlinedAt: !1605)
!1614 = !DILocation(line: 1414, column: 14, scope: !1615, inlinedAt: !1605)
!1615 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1414, column: 9)
!1616 = !DILocation(line: 1683, column: 14, scope: !1617, inlinedAt: !1605)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 1676, column: 20)
!1618 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1676, column: 9)
!1619 = !DILocation(line: 1485, column: 31, scope: !1620, inlinedAt: !1605)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1, line: 1485, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 1483, column: 20)
!1622 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1483, column: 9)
!1623 = !DILocation(line: 1345, column: 33, scope: !1624, inlinedAt: !1605)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 1344, column: 33)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 1344, column: 22)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 1342, column: 17)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 1340, column: 18)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !1, line: 1340, column: 9)
!1629 = distinct !DILexicalBlock(scope: !711, file: !1, line: 1340, column: 9)
!1630 = !DILocation(line: 1346, column: 39, scope: !1624, inlinedAt: !1605)
!1631 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !1635)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 1098, column: 13)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 1097, column: 19)
!1634 = distinct !DILexicalBlock(scope: !860, file: !1, line: 1097, column: 9)
!1635 = distinct !DILocation(line: 1354, column: 9, scope: !711, inlinedAt: !1605)
!1636 = !DILocation(line: 1361, column: 47, scope: !1637, inlinedAt: !1605)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 1361, column: 17)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 1355, column: 36)
!1639 = distinct !DILexicalBlock(scope: !711, file: !1, line: 1355, column: 13)
!1640 = !DILocation(line: 1369, column: 43, scope: !1641, inlinedAt: !1605)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 1369, column: 17)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 1368, column: 44)
!1643 = distinct !DILexicalBlock(scope: !711, file: !1, line: 1368, column: 13)
!1644 = !DILocation(line: 1275, column: 14, scope: !1645, inlinedAt: !1646)
!1645 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1275, column: 9)
!1646 = distinct !DILocation(line: 1372, column: 25, scope: !1647, inlinedAt: !1605)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 1372, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 1371, column: 62)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !1, line: 1371, column: 21)
!1650 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 1369, column: 52)
!1651 = !DILocation(line: 1280, column: 14, scope: !1652, inlinedAt: !1646)
!1652 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1280, column: 9)
!1653 = !DILocation(line: 1286, column: 52, scope: !1654, inlinedAt: !1646)
!1654 = distinct !DILexicalBlock(scope: !1652, file: !1, line: 1280, column: 26)
!1655 = !DILocation(line: 1330, column: 5, scope: !702, inlinedAt: !1605)
!1656 = !DILocation(line: 1332, column: 16, scope: !702, inlinedAt: !1605)
!1657 = !{!908, !909, i64 32}
!1658 = !DILocation(line: 1328, column: 9, scope: !702, inlinedAt: !1605)
!1659 = !DILocation(line: 1336, column: 9, scope: !712, inlinedAt: !1605)
!1660 = !DILocation(line: 1336, column: 9, scope: !702, inlinedAt: !1605)
!1661 = !DILocation(line: 1337, column: 13, scope: !711, inlinedAt: !1605)
!1662 = !DILocation(line: 1338, column: 13, scope: !711, inlinedAt: !1605)
!1663 = !DILocation(line: 1339, column: 20, scope: !711, inlinedAt: !1605)
!1664 = !DILocation(line: 1340, column: 9, scope: !711, inlinedAt: !1605)
!1665 = !DILocation(line: 1729, column: 18, scope: !497)
!1666 = !DILocation(line: 1341, column: 17, scope: !1627, inlinedAt: !1605)
!1667 = !DILocation(line: 1327, column: 9, scope: !702, inlinedAt: !1605)
!1668 = !DILocation(line: 1342, column: 17, scope: !1627, inlinedAt: !1605)
!1669 = !DILocation(line: 1343, column: 20, scope: !1626, inlinedAt: !1605)
!1670 = !DILocation(line: 1343, column: 30, scope: !1626, inlinedAt: !1605)
!1671 = !DILocation(line: 1343, column: 17, scope: !1626, inlinedAt: !1605)
!1672 = !DILocation(line: 1345, column: 27, scope: !1624, inlinedAt: !1605)
!1673 = !DILocation(line: 1345, column: 41, scope: !1624, inlinedAt: !1605)
!1674 = !DILocation(line: 1345, column: 46, scope: !1624, inlinedAt: !1605)
!1675 = !{!908, !912, i64 512}
!1676 = !DILocation(line: 1346, column: 33, scope: !1624, inlinedAt: !1605)
!1677 = !DILocation(line: 1346, column: 50, scope: !1624, inlinedAt: !1605)
!1678 = !DILocation(line: 1347, column: 21, scope: !1624, inlinedAt: !1605)
!1679 = !DILocation(line: 1348, column: 13, scope: !1624, inlinedAt: !1605)
!1680 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !1635)
!1681 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !1635)
!1682 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !1635)
!1683 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !1635)
!1684 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !1635)
!1685 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 1100, column: 13)
!1686 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !1635)
!1687 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !1635)
!1688 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !1635)
!1689 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !1635)
!1690 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !1635)
!1691 = !DILocation(line: 1355, column: 27, scope: !1639, inlinedAt: !1605)
!1692 = !DILocation(line: 1355, column: 22, scope: !1639, inlinedAt: !1605)
!1693 = !DILocation(line: 1361, column: 21, scope: !1637, inlinedAt: !1605)
!1694 = !DILocation(line: 1361, column: 26, scope: !1637, inlinedAt: !1605)
!1695 = !DILocation(line: 1361, column: 54, scope: !1637, inlinedAt: !1605)
!1696 = !DILocation(line: 1361, column: 17, scope: !1638, inlinedAt: !1605)
!1697 = !DILocation(line: 1368, column: 32, scope: !1643, inlinedAt: !1605)
!1698 = !{!908, !912, i64 492}
!1699 = !DILocation(line: 1368, column: 38, scope: !1643, inlinedAt: !1605)
!1700 = !DILocation(line: 1368, column: 13, scope: !711, inlinedAt: !1605)
!1701 = !DILocation(line: 1393, column: 29, scope: !1702, inlinedAt: !1605)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 1391, column: 57)
!1703 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 1376, column: 22)
!1704 = !DILocation(line: 1369, column: 24, scope: !1641, inlinedAt: !1605)
!1705 = !DILocation(line: 1369, column: 21, scope: !1641, inlinedAt: !1605)
!1706 = !DILocation(line: 1369, column: 17, scope: !1642, inlinedAt: !1605)
!1707 = !DILocation(line: 1371, column: 31, scope: !1649, inlinedAt: !1605)
!1708 = !DILocation(line: 1371, column: 28, scope: !1649, inlinedAt: !1605)
!1709 = !DILocation(line: 1371, column: 21, scope: !1650, inlinedAt: !1605)
!1710 = !DILocation(line: 1273, column: 31, scope: !866, inlinedAt: !1646)
!1711 = !{!908, !912, i64 508}
!1712 = !DILocation(line: 1275, column: 9, scope: !1645, inlinedAt: !1646)
!1713 = !DILocation(line: 1275, column: 9, scope: !866, inlinedAt: !1646)
!1714 = !{!908, !912, i64 504}
!1715 = !DILocation(line: 1280, column: 9, scope: !1652, inlinedAt: !1646)
!1716 = !DILocation(line: 1280, column: 9, scope: !866, inlinedAt: !1646)
!1717 = !DILocation(line: 1285, column: 9, scope: !1654, inlinedAt: !1646)
!1718 = !DILocation(line: 1288, column: 25, scope: !1654, inlinedAt: !1646)
!1719 = !DILocation(line: 1289, column: 5, scope: !1654, inlinedAt: !1646)
!1720 = !DILocation(line: 1276, column: 14, scope: !1721, inlinedAt: !1646)
!1721 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 1275, column: 24)
!1722 = !DILocation(line: 1276, column: 19, scope: !1721, inlinedAt: !1646)
!1723 = !DILocation(line: 1277, column: 25, scope: !1721, inlinedAt: !1646)
!1724 = !DILocation(line: 1277, column: 18, scope: !1721, inlinedAt: !1646)
!1725 = !DILocation(line: 1372, column: 25, scope: !1648, inlinedAt: !1605)
!1726 = !DILocation(line: 1376, column: 26, scope: !1703, inlinedAt: !1605)
!1727 = !DILocation(line: 1376, column: 22, scope: !1641, inlinedAt: !1605)
!1728 = !DILocation(line: 1378, column: 32, scope: !1729, inlinedAt: !1605)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 1378, column: 21)
!1730 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 1376, column: 56)
!1731 = !DILocation(line: 1378, column: 35, scope: !1729, inlinedAt: !1605)
!1732 = !DILocation(line: 1378, column: 21, scope: !1730, inlinedAt: !1605)
!1733 = !DILocation(line: 1379, column: 26, scope: !1734, inlinedAt: !1605)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 1378, column: 49)
!1735 = !DILocation(line: 1379, column: 31, scope: !1734, inlinedAt: !1605)
!1736 = !DILocation(line: 1380, column: 37, scope: !1734, inlinedAt: !1605)
!1737 = !DILocation(line: 1380, column: 30, scope: !1734, inlinedAt: !1605)
!1738 = !DILocation(line: 1381, column: 21, scope: !1734, inlinedAt: !1605)
!1739 = !DILocation(line: 1383, column: 31, scope: !1740, inlinedAt: !1605)
!1740 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 1383, column: 21)
!1741 = !DILocation(line: 1383, column: 28, scope: !1740, inlinedAt: !1605)
!1742 = !DILocation(line: 1383, column: 21, scope: !1730, inlinedAt: !1605)
!1743 = !DILocation(line: 1273, column: 31, scope: !866, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1384, column: 25, scope: !1745, inlinedAt: !1605)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 1384, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 1383, column: 62)
!1747 = !DILocation(line: 1275, column: 14, scope: !1645, inlinedAt: !1744)
!1748 = !DILocation(line: 1275, column: 9, scope: !1645, inlinedAt: !1744)
!1749 = !DILocation(line: 1275, column: 9, scope: !866, inlinedAt: !1744)
!1750 = !DILocation(line: 1280, column: 14, scope: !1652, inlinedAt: !1744)
!1751 = !DILocation(line: 1280, column: 9, scope: !1652, inlinedAt: !1744)
!1752 = !DILocation(line: 1280, column: 9, scope: !866, inlinedAt: !1744)
!1753 = !DILocation(line: 1286, column: 52, scope: !1654, inlinedAt: !1744)
!1754 = !DILocation(line: 1285, column: 9, scope: !1654, inlinedAt: !1744)
!1755 = !DILocation(line: 1288, column: 25, scope: !1654, inlinedAt: !1744)
!1756 = !DILocation(line: 1388, column: 31, scope: !1730, inlinedAt: !1605)
!1757 = !DILocation(line: 1289, column: 5, scope: !1654, inlinedAt: !1744)
!1758 = !DILocation(line: 1276, column: 14, scope: !1721, inlinedAt: !1744)
!1759 = !DILocation(line: 1276, column: 19, scope: !1721, inlinedAt: !1744)
!1760 = !DILocation(line: 1277, column: 25, scope: !1721, inlinedAt: !1744)
!1761 = !DILocation(line: 1277, column: 18, scope: !1721, inlinedAt: !1744)
!1762 = !DILocation(line: 1384, column: 25, scope: !1746, inlinedAt: !1605)
!1763 = !DILocation(line: 1387, column: 28, scope: !1730, inlinedAt: !1605)
!1764 = !{!908, !912, i64 468}
!1765 = !DILocation(line: 1388, column: 17, scope: !1730, inlinedAt: !1605)
!1766 = !DILocation(line: 1388, column: 46, scope: !1730, inlinedAt: !1605)
!1767 = !DILocation(line: 1389, column: 39, scope: !1730, inlinedAt: !1605)
!1768 = !DILocation(line: 1389, column: 17, scope: !1730, inlinedAt: !1605)
!1769 = !DILocation(line: 1389, column: 47, scope: !1730, inlinedAt: !1605)
!1770 = !DILocation(line: 1390, column: 13, scope: !1730, inlinedAt: !1605)
!1771 = !DILocation(line: 1393, column: 36, scope: !1702, inlinedAt: !1605)
!1772 = !DILocation(line: 1393, column: 40, scope: !1702, inlinedAt: !1605)
!1773 = !DILocation(line: 1394, column: 25, scope: !1702, inlinedAt: !1605)
!1774 = !DILocation(line: 1394, column: 27, scope: !1702, inlinedAt: !1605)
!1775 = !DILocation(line: 1396, column: 32, scope: !1776, inlinedAt: !1605)
!1776 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 1394, column: 55)
!1777 = !DILocation(line: 1393, column: 17, scope: !1778, inlinedAt: !1605)
!1778 = !DILexicalBlockFile(scope: !1702, file: !1, discriminator: 2)
!1779 = !DILocation(line: 1395, column: 32, scope: !1776, inlinedAt: !1605)
!1780 = !DILocation(line: 1398, column: 25, scope: !1781, inlinedAt: !1605)
!1781 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 1398, column: 21)
!1782 = !DILocation(line: 1398, column: 28, scope: !1781, inlinedAt: !1605)
!1783 = !DILocation(line: 1398, column: 47, scope: !1781, inlinedAt: !1605)
!1784 = !DILocation(line: 1398, column: 21, scope: !1702, inlinedAt: !1605)
!1785 = !DILocation(line: 1399, column: 26, scope: !1786, inlinedAt: !1605)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 1398, column: 56)
!1787 = !DILocation(line: 1399, column: 31, scope: !1786, inlinedAt: !1605)
!1788 = !DILocation(line: 1400, column: 37, scope: !1786, inlinedAt: !1605)
!1789 = !DILocation(line: 1400, column: 30, scope: !1786, inlinedAt: !1605)
!1790 = !DILocation(line: 1401, column: 21, scope: !1786, inlinedAt: !1605)
!1791 = !DILocation(line: 1403, column: 31, scope: !1792, inlinedAt: !1605)
!1792 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 1403, column: 21)
!1793 = !DILocation(line: 1403, column: 28, scope: !1792, inlinedAt: !1605)
!1794 = !DILocation(line: 1403, column: 21, scope: !1702, inlinedAt: !1605)
!1795 = !DILocation(line: 1273, column: 31, scope: !866, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 1404, column: 25, scope: !1797, inlinedAt: !1605)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 1404, column: 25)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 1403, column: 62)
!1799 = !DILocation(line: 1275, column: 14, scope: !1645, inlinedAt: !1796)
!1800 = !DILocation(line: 1275, column: 9, scope: !1645, inlinedAt: !1796)
!1801 = !DILocation(line: 1275, column: 9, scope: !866, inlinedAt: !1796)
!1802 = !DILocation(line: 1280, column: 14, scope: !1652, inlinedAt: !1796)
!1803 = !DILocation(line: 1280, column: 9, scope: !1652, inlinedAt: !1796)
!1804 = !DILocation(line: 1280, column: 9, scope: !866, inlinedAt: !1796)
!1805 = !DILocation(line: 1286, column: 52, scope: !1654, inlinedAt: !1796)
!1806 = !DILocation(line: 1285, column: 9, scope: !1654, inlinedAt: !1796)
!1807 = !DILocation(line: 1288, column: 25, scope: !1654, inlinedAt: !1796)
!1808 = !DILocation(line: 1289, column: 5, scope: !1654, inlinedAt: !1796)
!1809 = !DILocation(line: 1276, column: 14, scope: !1721, inlinedAt: !1796)
!1810 = !DILocation(line: 1276, column: 19, scope: !1721, inlinedAt: !1796)
!1811 = !DILocation(line: 1277, column: 25, scope: !1721, inlinedAt: !1796)
!1812 = !DILocation(line: 1277, column: 18, scope: !1721, inlinedAt: !1796)
!1813 = !DILocation(line: 1404, column: 25, scope: !1798, inlinedAt: !1605)
!1814 = !DILocation(line: 1414, column: 21, scope: !1615, inlinedAt: !1605)
!1815 = !DILocation(line: 1414, column: 9, scope: !702, inlinedAt: !1605)
!1816 = !DILocation(line: 1426, column: 16, scope: !702, inlinedAt: !1605)
!1817 = !DILocation(line: 1415, column: 25, scope: !1818, inlinedAt: !1605)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 1415, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 1414, column: 27)
!1820 = !DILocation(line: 1415, column: 13, scope: !1819, inlinedAt: !1605)
!1821 = !DILocation(line: 1416, column: 24, scope: !1822, inlinedAt: !1605)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 1415, column: 30)
!1823 = !DILocation(line: 1417, column: 13, scope: !1822, inlinedAt: !1605)
!1824 = !DILocation(line: 1420, column: 24, scope: !1825, inlinedAt: !1605)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 1419, column: 14)
!1826 = !DILocation(line: 1421, column: 13, scope: !1825, inlinedAt: !1605)
!1827 = !DILocation(line: 1428, column: 5, scope: !702, inlinedAt: !1605)
!1828 = !DILocation(line: 1429, column: 13, scope: !1829, inlinedAt: !1605)
!1829 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1428, column: 8)
!1830 = !DILocation(line: 1430, column: 23, scope: !702, inlinedAt: !1605)
!1831 = !DILocation(line: 1433, column: 23, scope: !702, inlinedAt: !1605)
!1832 = !DILocation(line: 1433, column: 27, scope: !702, inlinedAt: !1605)
!1833 = !DILocation(line: 1433, column: 16, scope: !702, inlinedAt: !1605)
!1834 = !DILocation(line: 1436, column: 11, scope: !1835, inlinedAt: !1605)
!1835 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1436, column: 9)
!1836 = !DILocation(line: 1436, column: 9, scope: !702, inlinedAt: !1605)
!1837 = !DILocation(line: 1437, column: 9, scope: !1838, inlinedAt: !1605)
!1838 = !DILexicalBlockFile(scope: !1835, file: !1, discriminator: 3)
!1839 = !DILocation(line: 1438, column: 17, scope: !1835, inlinedAt: !1605)
!1840 = !DILocation(line: 1437, column: 9, scope: !1835, inlinedAt: !1605)
!1841 = !DILocation(line: 1441, column: 11, scope: !1842, inlinedAt: !1605)
!1842 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1441, column: 9)
!1843 = !DILocation(line: 1441, column: 9, scope: !702, inlinedAt: !1605)
!1844 = !DILocation(line: 1442, column: 21, scope: !1845, inlinedAt: !1605)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 1441, column: 19)
!1846 = !DILocation(line: 1442, column: 26, scope: !1845, inlinedAt: !1605)
!1847 = !DILocation(line: 1442, column: 16, scope: !1845, inlinedAt: !1605)
!1848 = !DILocation(line: 1442, column: 9, scope: !1845, inlinedAt: !1605)
!1849 = !DILocation(line: 1328, column: 20, scope: !702, inlinedAt: !1605)
!1850 = !DILocation(line: 1447, column: 9, scope: !716, inlinedAt: !1605)
!1851 = !DILocation(line: 1447, column: 9, scope: !1852, inlinedAt: !1605)
!1852 = !DILexicalBlockFile(scope: !1853, file: !1, discriminator: 3)
!1853 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 2)
!1854 = !DILocation(line: 1447, column: 9, scope: !1855, inlinedAt: !1605)
!1855 = !DILexicalBlockFile(scope: !1856, file: !1, discriminator: 6)
!1856 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 5)
!1857 = !DILocation(line: 1447, column: 9, scope: !1858, inlinedAt: !1605)
!1858 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 7)
!1859 = !DILocation(line: 1451, column: 25, scope: !1860, inlinedAt: !1605)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 1451, column: 17)
!1861 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1450, column: 19)
!1862 = !DILocation(line: 1451, column: 48, scope: !1860, inlinedAt: !1605)
!1863 = !DILocation(line: 1455, column: 30, scope: !1864, inlinedAt: !1605)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 1455, column: 22)
!1865 = !DILocation(line: 1455, column: 62, scope: !1864, inlinedAt: !1605)
!1866 = !DILocation(line: 1458, column: 30, scope: !1867, inlinedAt: !1605)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 1458, column: 22)
!1868 = !DILocation(line: 1458, column: 53, scope: !1867, inlinedAt: !1605)
!1869 = !DILocation(line: 1466, column: 16, scope: !1870, inlinedAt: !1605)
!1870 = !DILexicalBlockFile(scope: !1871, file: !1, discriminator: 17)
!1871 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 1)
!1872 = !DILocation(line: 1462, column: 17, scope: !1861, inlinedAt: !1605)
!1873 = !DILocation(line: 1463, column: 26, scope: !1874, inlinedAt: !1605)
!1874 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 1463, column: 17)
!1875 = !DILocation(line: 1466, column: 16, scope: !1876, inlinedAt: !1605)
!1876 = !DILexicalBlockFile(scope: !1877, file: !1, discriminator: 9)
!1877 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 7)
!1878 = !DILocation(line: 1466, column: 16, scope: !1879, inlinedAt: !1605)
!1879 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 13)
!1880 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 11)
!1881 = !DILocation(line: 1466, column: 16, scope: !1882, inlinedAt: !1605)
!1882 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 15)
!1883 = !DILocation(line: 1467, column: 19, scope: !1884, inlinedAt: !1605)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 1467, column: 17)
!1885 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1466, column: 49)
!1886 = !DILocation(line: 1467, column: 17, scope: !1885, inlinedAt: !1605)
!1887 = !DILocation(line: 1469, column: 17, scope: !1885, inlinedAt: !1605)
!1888 = !DILocation(line: 1466, column: 9, scope: !715, inlinedAt: !1605)
!1889 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 1471, column: 9, scope: !715, inlinedAt: !1605)
!1891 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !1890)
!1892 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !1890)
!1893 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !1890)
!1894 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !1890)
!1895 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !1890)
!1896 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !1890)
!1897 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !1890)
!1898 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !1890)
!1899 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !1890)
!1900 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !1890)
!1901 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !1890)
!1902 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !1890)
!1903 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !1890)
!1904 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !1890)
!1905 = !DILocation(line: 1472, column: 13, scope: !1906, inlinedAt: !1605)
!1906 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1472, column: 13)
!1907 = !DILocation(line: 1472, column: 22, scope: !1906, inlinedAt: !1605)
!1908 = !DILocation(line: 1300, column: 37, scope: !869, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 1473, column: 14, scope: !1906, inlinedAt: !1605)
!1910 = !DILocation(line: 1304, column: 35, scope: !869, inlinedAt: !1909)
!1911 = !DILocation(line: 1304, column: 47, scope: !869, inlinedAt: !1909)
!1912 = !DILocation(line: 1304, column: 51, scope: !869, inlinedAt: !1909)
!1913 = !DILocation(line: 1304, column: 9, scope: !869, inlinedAt: !1909)
!1914 = !DILocation(line: 1302, column: 15, scope: !869, inlinedAt: !1909)
!1915 = !DILocation(line: 1305, column: 11, scope: !1916, inlinedAt: !1909)
!1916 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1305, column: 9)
!1917 = !DILocation(line: 1305, column: 19, scope: !1916, inlinedAt: !1909)
!1918 = !DILocation(line: 1305, column: 22, scope: !1919, inlinedAt: !1909)
!1919 = !DILexicalBlockFile(scope: !1916, file: !1, discriminator: 1)
!1920 = !DILocation(line: 1305, column: 22, scope: !1921, inlinedAt: !1909)
!1921 = !DILexicalBlockFile(scope: !1916, file: !1, discriminator: 3)
!1922 = !DILocation(line: 1305, column: 9, scope: !869, inlinedAt: !1909)
!1923 = !DILocation(line: 1306, column: 36, scope: !1924, inlinedAt: !1909)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !1, line: 1306, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 1305, column: 48)
!1926 = !DILocation(line: 1306, column: 13, scope: !1924, inlinedAt: !1909)
!1927 = !DILocation(line: 1306, column: 13, scope: !1925, inlinedAt: !1909)
!1928 = !DILocation(line: 1307, column: 13, scope: !1929, inlinedAt: !1909)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 1306, column: 63)
!1930 = !DILocation(line: 1308, column: 18, scope: !1929, inlinedAt: !1909)
!1931 = !DILocation(line: 1308, column: 23, scope: !1929, inlinedAt: !1909)
!1932 = !DILocation(line: 1309, column: 9, scope: !1929, inlinedAt: !1909)
!1933 = !DILocation(line: 1310, column: 18, scope: !1934, inlinedAt: !1909)
!1934 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 1309, column: 16)
!1935 = !DILocation(line: 1310, column: 23, scope: !1934, inlinedAt: !1909)
!1936 = !DILocation(line: 1473, column: 14, scope: !1906, inlinedAt: !1605)
!1937 = !DILocation(line: 1314, column: 14, scope: !869, inlinedAt: !1909)
!1938 = !DILocation(line: 1303, column: 9, scope: !869, inlinedAt: !1909)
!1939 = !DILocation(line: 1315, column: 5, scope: !1940, inlinedAt: !1909)
!1940 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 1)
!1941 = !DILocation(line: 1315, column: 5, scope: !1942, inlinedAt: !1909)
!1942 = distinct !DILexicalBlock(scope: !875, file: !1, line: 1315, column: 5)
!1943 = !DILocation(line: 1315, column: 5, scope: !875, inlinedAt: !1909)
!1944 = !DILocation(line: 1315, column: 5, scope: !1945, inlinedAt: !1909)
!1945 = !DILexicalBlockFile(scope: !1942, file: !1, discriminator: 3)
!1946 = !DILocation(line: 1316, column: 16, scope: !1947, inlinedAt: !1909)
!1947 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1316, column: 9)
!1948 = !DILocation(line: 1316, column: 9, scope: !869, inlinedAt: !1909)
!1949 = !DILocation(line: 1317, column: 14, scope: !1947, inlinedAt: !1909)
!1950 = !DILocation(line: 1317, column: 19, scope: !1947, inlinedAt: !1909)
!1951 = !DILocation(line: 1317, column: 9, scope: !1947, inlinedAt: !1909)
!1952 = !DILocation(line: 1474, column: 18, scope: !1953, inlinedAt: !1605)
!1953 = distinct !DILexicalBlock(scope: !1906, file: !1, line: 1473, column: 38)
!1954 = !DILocation(line: 1474, column: 23, scope: !1953, inlinedAt: !1605)
!1955 = !DILocation(line: 1475, column: 13, scope: !1953, inlinedAt: !1605)
!1956 = !DILocation(line: 1477, column: 25, scope: !715, inlinedAt: !1605)
!1957 = !DILocation(line: 1477, column: 18, scope: !715, inlinedAt: !1605)
!1958 = !DILocation(line: 1478, column: 23, scope: !715, inlinedAt: !1605)
!1959 = !DILocation(line: 1478, column: 16, scope: !715, inlinedAt: !1605)
!1960 = !DILocation(line: 1479, column: 9, scope: !715, inlinedAt: !1605)
!1961 = !DILocation(line: 1483, column: 9, scope: !702, inlinedAt: !1605)
!1962 = !DILocation(line: 1484, column: 20, scope: !1621, inlinedAt: !1605)
!1963 = !DILocation(line: 1485, column: 13, scope: !1620, inlinedAt: !1605)
!1964 = !DILocation(line: 1485, column: 23, scope: !1620, inlinedAt: !1605)
!1965 = !DILocation(line: 1485, column: 37, scope: !1620, inlinedAt: !1605)
!1966 = !DILocation(line: 1485, column: 13, scope: !1621, inlinedAt: !1605)
!1967 = !DILocation(line: 1487, column: 25, scope: !1621, inlinedAt: !1605)
!1968 = !DILocation(line: 1487, column: 18, scope: !1621, inlinedAt: !1605)
!1969 = !DILocation(line: 1488, column: 23, scope: !1621, inlinedAt: !1605)
!1970 = !DILocation(line: 1488, column: 27, scope: !1621, inlinedAt: !1605)
!1971 = !DILocation(line: 1488, column: 16, scope: !1621, inlinedAt: !1605)
!1972 = !DILocation(line: 1489, column: 24, scope: !1621, inlinedAt: !1605)
!1973 = !{!908, !912, i64 936}
!1974 = !DILocation(line: 1490, column: 9, scope: !1621, inlinedAt: !1605)
!1975 = !DILocation(line: 1495, column: 13, scope: !1976, inlinedAt: !1605)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !1, line: 1494, column: 19)
!1977 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1494, column: 9)
!1978 = !DILocation(line: 1496, column: 13, scope: !1979, inlinedAt: !1605)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 1496, column: 13)
!1980 = !{!1981, !1981, i64 0}
!1981 = !{!"short", !910, i64 0}
!1982 = !DILocation(line: 1496, column: 13, scope: !1976, inlinedAt: !1605)
!1983 = !DILocation(line: 1498, column: 20, scope: !1979, inlinedAt: !1605)
!1984 = !DILocation(line: 1499, column: 17, scope: !1985, inlinedAt: !1605)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 1498, column: 30)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 1498, column: 20)
!1987 = !DILocation(line: 1500, column: 17, scope: !1985, inlinedAt: !1605)
!1988 = !DILocation(line: 1501, column: 33, scope: !1989, inlinedAt: !1605)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 1500, column: 27)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 1500, column: 17)
!1991 = !DILocation(line: 1501, column: 26, scope: !1989, inlinedAt: !1605)
!1992 = !DILocation(line: 1502, column: 31, scope: !1989, inlinedAt: !1605)
!1993 = !DILocation(line: 1502, column: 24, scope: !1989, inlinedAt: !1605)
!1994 = !DILocation(line: 1503, column: 17, scope: !1989, inlinedAt: !1605)
!1995 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 1505, column: 17, scope: !1997, inlinedAt: !1605)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 1504, column: 20)
!1998 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !1996)
!1999 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !1996)
!2000 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !1996)
!2001 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !1996)
!2002 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !1996)
!2003 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !1996)
!2004 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !1996)
!2005 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !1996)
!2006 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !1996)
!2007 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !1996)
!2008 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 1507, column: 13, scope: !1985, inlinedAt: !1605)
!2010 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2009)
!2011 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2009)
!2012 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2009)
!2013 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2009)
!2014 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2009)
!2015 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2009)
!2016 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2009)
!2017 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2009)
!2018 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2009)
!2019 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2009)
!2020 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2009)
!2021 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 1509, column: 13, scope: !2023, inlinedAt: !1605)
!2023 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 1508, column: 16)
!2024 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2022)
!2025 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2022)
!2026 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2022)
!2027 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2022)
!2028 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2022)
!2029 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2022)
!2030 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2022)
!2031 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2022)
!2032 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2022)
!2033 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2022)
!2034 = !DILocation(line: 1511, column: 25, scope: !1976, inlinedAt: !1605)
!2035 = !DILocation(line: 1511, column: 18, scope: !1976, inlinedAt: !1605)
!2036 = !DILocation(line: 1512, column: 23, scope: !1976, inlinedAt: !1605)
!2037 = !DILocation(line: 1512, column: 16, scope: !1976, inlinedAt: !1605)
!2038 = !DILocation(line: 1513, column: 9, scope: !1976, inlinedAt: !1605)
!2039 = !DILocation(line: 1517, column: 9, scope: !727, inlinedAt: !1605)
!2040 = !DILocation(line: 1517, column: 9, scope: !702, inlinedAt: !1605)
!2041 = !DILocation(line: 1518, column: 15, scope: !725, inlinedAt: !1605)
!2042 = !DILocation(line: 1518, column: 13, scope: !726, inlinedAt: !1605)
!2043 = !DILocation(line: 1588, column: 21, scope: !2044, inlinedAt: !1605)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1587, column: 16)
!2045 = distinct !DILexicalBlock(scope: !725, file: !1, line: 1585, column: 14)
!2046 = !DILocation(line: 1520, column: 17, scope: !724, inlinedAt: !1605)
!2047 = !DILocation(line: 1521, column: 19, scope: !2048, inlinedAt: !1605)
!2048 = distinct !DILexicalBlock(scope: !724, file: !1, line: 1521, column: 17)
!2049 = !DILocation(line: 1521, column: 17, scope: !724, inlinedAt: !1605)
!2050 = !DILocation(line: 1523, column: 26, scope: !2051, inlinedAt: !1605)
!2051 = distinct !DILexicalBlock(scope: !724, file: !1, line: 1523, column: 17)
!2052 = !DILocation(line: 1566, column: 26, scope: !720, inlinedAt: !1605)
!2053 = !DILocation(line: 1566, column: 17, scope: !720, inlinedAt: !1605)
!2054 = !DILocation(line: 1567, column: 25, scope: !720, inlinedAt: !1605)
!2055 = !DILocation(line: 1528, column: 21, scope: !2056, inlinedAt: !1605)
!2056 = distinct !DILexicalBlock(scope: !723, file: !1, line: 1525, column: 39)
!2057 = !DILocation(line: 1529, column: 22, scope: !2058, inlinedAt: !1605)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1529, column: 21)
!2059 = !DILocation(line: 1529, column: 21, scope: !2056, inlinedAt: !1605)
!2060 = !DILocation(line: 1535, column: 25, scope: !2061, inlinedAt: !1605)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 1534, column: 20)
!2062 = !DILocation(line: 1530, column: 26, scope: !2063, inlinedAt: !1605)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 1529, column: 35)
!2064 = !DILocation(line: 1530, column: 31, scope: !2063, inlinedAt: !1605)
!2065 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 1531, column: 21, scope: !2063, inlinedAt: !1605)
!2067 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2066)
!2068 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2066)
!2069 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2066)
!2070 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2066)
!2071 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2066)
!2072 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2066)
!2073 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2066)
!2074 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2066)
!2075 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2066)
!2076 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2066)
!2077 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2066)
!2078 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2066)
!2079 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2066)
!2080 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2066)
!2081 = !DILocation(line: 1536, column: 26, scope: !2082, inlinedAt: !1605)
!2082 = !DILexicalBlockFile(scope: !2056, file: !1, discriminator: 1)
!2083 = !DILocation(line: 1536, column: 17, scope: !2061, inlinedAt: !1605)
!2084 = !DILocation(line: 1540, column: 21, scope: !2085, inlinedAt: !1605)
!2085 = distinct !DILexicalBlock(scope: !722, file: !1, line: 1538, column: 44)
!2086 = !DILocation(line: 1541, column: 29, scope: !2087, inlinedAt: !1605)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1541, column: 21)
!2088 = !DILocation(line: 1547, column: 25, scope: !2089, inlinedAt: !1605)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1546, column: 20)
!2090 = !DILocation(line: 1542, column: 26, scope: !2091, inlinedAt: !1605)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 1541, column: 42)
!2092 = !DILocation(line: 1542, column: 31, scope: !2091, inlinedAt: !1605)
!2093 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1543, column: 21, scope: !2091, inlinedAt: !1605)
!2095 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2094)
!2096 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2094)
!2097 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2094)
!2098 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2094)
!2099 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2094)
!2100 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2094)
!2101 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2094)
!2102 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2094)
!2103 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2094)
!2104 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2094)
!2105 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2094)
!2106 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2094)
!2107 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2094)
!2108 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2094)
!2109 = !DILocation(line: 1548, column: 35, scope: !2085, inlinedAt: !1605)
!2110 = !DILocation(line: 1548, column: 17, scope: !2111, inlinedAt: !1605)
!2111 = !DILexicalBlockFile(scope: !2089, file: !1, discriminator: 3)
!2112 = !DILocation(line: 1552, column: 21, scope: !2113, inlinedAt: !1605)
!2113 = distinct !DILexicalBlock(scope: !721, file: !1, line: 1550, column: 44)
!2114 = !DILocation(line: 1553, column: 30, scope: !2115, inlinedAt: !1605)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 1553, column: 21)
!2116 = !DILocation(line: 1559, column: 25, scope: !2117, inlinedAt: !1605)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !1, line: 1558, column: 20)
!2118 = !DILocation(line: 1554, column: 26, scope: !2119, inlinedAt: !1605)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 1553, column: 43)
!2120 = !DILocation(line: 1554, column: 31, scope: !2119, inlinedAt: !1605)
!2121 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 1555, column: 21, scope: !2119, inlinedAt: !1605)
!2123 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2122)
!2124 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2122)
!2125 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2122)
!2126 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2122)
!2127 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2122)
!2128 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2122)
!2129 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2122)
!2130 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2122)
!2131 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2122)
!2132 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2122)
!2133 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2122)
!2134 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2122)
!2135 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2122)
!2136 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2122)
!2137 = !DILocation(line: 1560, column: 35, scope: !2113, inlinedAt: !1605)
!2138 = !DILocation(line: 1560, column: 17, scope: !2139, inlinedAt: !1605)
!2139 = !DILexicalBlockFile(scope: !2140, file: !1, discriminator: 4)
!2140 = !DILexicalBlockFile(scope: !2117, file: !1, discriminator: 2)
!2141 = !DILocation(line: 1568, column: 24, scope: !2142, inlinedAt: !1605)
!2142 = !DILexicalBlockFile(scope: !2143, file: !1, discriminator: 2)
!2143 = !DILexicalBlockFile(scope: !720, file: !1, discriminator: 1)
!2144 = !DILocation(line: 1568, column: 17, scope: !720, inlinedAt: !1605)
!2145 = !DILocation(line: 1563, column: 21, scope: !720, inlinedAt: !1605)
!2146 = !DILocation(line: 1570, column: 25, scope: !2147, inlinedAt: !1605)
!2147 = distinct !DILexicalBlock(scope: !720, file: !1, line: 1568, column: 36)
!2148 = !DILocation(line: 1572, column: 23, scope: !2149, inlinedAt: !1605)
!2149 = distinct !DILexicalBlock(scope: !720, file: !1, line: 1572, column: 21)
!2150 = !DILocation(line: 1572, column: 21, scope: !720, inlinedAt: !1605)
!2151 = !DILocation(line: 1574, column: 35, scope: !2152, inlinedAt: !1605)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 1574, column: 26)
!2153 = !DILocation(line: 1578, column: 26, scope: !2154, inlinedAt: !1605)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1, line: 1578, column: 26)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 1576, column: 26)
!2156 = !DILocation(line: 1578, column: 26, scope: !2155, inlinedAt: !1605)
!2157 = !DILocation(line: 1579, column: 26, scope: !2158, inlinedAt: !1605)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 1578, column: 35)
!2159 = !DILocation(line: 1579, column: 31, scope: !2158, inlinedAt: !1605)
!2160 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 1580, column: 21, scope: !2158, inlinedAt: !1605)
!2162 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2161)
!2163 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2161)
!2164 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2161)
!2165 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2161)
!2166 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2161)
!2167 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2161)
!2168 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2161)
!2169 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2161)
!2170 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2161)
!2171 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2161)
!2172 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2161)
!2173 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2161)
!2174 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2161)
!2175 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2161)
!2176 = !DILocation(line: 1589, column: 22, scope: !2177, inlinedAt: !1605)
!2177 = !DILexicalBlockFile(scope: !2045, file: !1, discriminator: 1)
!2178 = !DILocation(line: 1589, column: 13, scope: !2044, inlinedAt: !1605)
!2179 = !DILocation(line: 1592, column: 23, scope: !2180, inlinedAt: !1605)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 1592, column: 21)
!2181 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1590, column: 13)
!2182 = !DILocation(line: 1592, column: 21, scope: !2181, inlinedAt: !1605)
!2183 = !DILocation(line: 1597, column: 30, scope: !2184, inlinedAt: !1605)
!2184 = !DILexicalBlockFile(scope: !2185, file: !1, discriminator: 1)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !1, line: 1592, column: 31)
!2186 = !DILocation(line: 1596, column: 29, scope: !2187, inlinedAt: !1605)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 1595, column: 24)
!2188 = !DILocation(line: 1597, column: 21, scope: !2187, inlinedAt: !1605)
!2189 = !DILocation(line: 1599, column: 30, scope: !2190, inlinedAt: !1605)
!2190 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 1599, column: 21)
!2191 = !DILocation(line: 1602, column: 25, scope: !2192, inlinedAt: !1605)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !1, line: 1599, column: 43)
!2193 = !DILocation(line: 1603, column: 34, scope: !2194, inlinedAt: !1605)
!2194 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 1603, column: 25)
!2195 = !DILocation(line: 1604, column: 29, scope: !2194, inlinedAt: !1605)
!2196 = !DILocation(line: 1604, column: 25, scope: !2194, inlinedAt: !1605)
!2197 = !DILocation(line: 1605, column: 26, scope: !2198, inlinedAt: !1605)
!2198 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 1605, column: 25)
!2199 = !DILocation(line: 1605, column: 25, scope: !2192, inlinedAt: !1605)
!2200 = !DILocation(line: 1611, column: 29, scope: !2201, inlinedAt: !1605)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 1610, column: 24)
!2202 = !DILocation(line: 1606, column: 30, scope: !2203, inlinedAt: !1605)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 1605, column: 38)
!2204 = !DILocation(line: 1606, column: 35, scope: !2203, inlinedAt: !1605)
!2205 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 1607, column: 25, scope: !2203, inlinedAt: !1605)
!2207 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2206)
!2208 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2206)
!2209 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2206)
!2210 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2206)
!2211 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2206)
!2212 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2206)
!2213 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2206)
!2214 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2206)
!2215 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2206)
!2216 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2206)
!2217 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2206)
!2218 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2206)
!2219 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2206)
!2220 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2206)
!2221 = !DILocation(line: 1612, column: 30, scope: !2222, inlinedAt: !1605)
!2222 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 1)
!2223 = !DILocation(line: 1612, column: 21, scope: !2201, inlinedAt: !1605)
!2224 = !DILocation(line: 1614, column: 30, scope: !2225, inlinedAt: !1605)
!2225 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 1614, column: 21)
!2226 = !DILocation(line: 1617, column: 25, scope: !2225, inlinedAt: !1605)
!2227 = !DILocation(line: 1617, column: 21, scope: !2225, inlinedAt: !1605)
!2228 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 1620, column: 9, scope: !726, inlinedAt: !1605)
!2230 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2229)
!2231 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2229)
!2232 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2229)
!2233 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2229)
!2234 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2229)
!2235 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2229)
!2236 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2229)
!2237 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2229)
!2238 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2229)
!2239 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2229)
!2240 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2229)
!2241 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2229)
!2242 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2229)
!2243 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2229)
!2244 = !DILocation(line: 1621, column: 25, scope: !726, inlinedAt: !1605)
!2245 = !DILocation(line: 1621, column: 18, scope: !726, inlinedAt: !1605)
!2246 = !DILocation(line: 1622, column: 23, scope: !726, inlinedAt: !1605)
!2247 = !DILocation(line: 1622, column: 16, scope: !726, inlinedAt: !1605)
!2248 = !DILocation(line: 1623, column: 9, scope: !726, inlinedAt: !1605)
!2249 = !DILocation(line: 1628, column: 19, scope: !730, inlinedAt: !1605)
!2250 = !DILocation(line: 1629, column: 13, scope: !729, inlinedAt: !1605)
!2251 = !DILocation(line: 1630, column: 13, scope: !729, inlinedAt: !1605)
!2252 = !DILocation(line: 1631, column: 13, scope: !729, inlinedAt: !1605)
!2253 = !DILocation(line: 1634, column: 13, scope: !729, inlinedAt: !1605)
!2254 = !DILocation(line: 1635, column: 15, scope: !2255, inlinedAt: !1605)
!2255 = distinct !DILexicalBlock(scope: !729, file: !1, line: 1635, column: 13)
!2256 = !DILocation(line: 1635, column: 13, scope: !729, inlinedAt: !1605)
!2257 = !DILocation(line: 1636, column: 17, scope: !2258, inlinedAt: !1605)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 1635, column: 25)
!2259 = !DILocation(line: 1637, column: 19, scope: !2260, inlinedAt: !1605)
!2260 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 1637, column: 17)
!2261 = !DILocation(line: 1638, column: 17, scope: !2260, inlinedAt: !1605)
!2262 = !DILocation(line: 1642, column: 15, scope: !2263, inlinedAt: !1605)
!2263 = distinct !DILexicalBlock(scope: !729, file: !1, line: 1642, column: 13)
!2264 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1643, column: 13, scope: !2263, inlinedAt: !1605)
!2266 = !DILocation(line: 1642, column: 13, scope: !729, inlinedAt: !1605)
!2267 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2265)
!2268 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2265)
!2269 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2265)
!2270 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2265)
!2271 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2265)
!2272 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2265)
!2273 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2265)
!2274 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2265)
!2275 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2265)
!2276 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2265)
!2277 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2265)
!2278 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2265)
!2279 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2265)
!2280 = !DILocation(line: 1646, column: 31, scope: !729, inlinedAt: !1605)
!2281 = !DILocation(line: 1646, column: 9, scope: !729, inlinedAt: !1605)
!2282 = !DILocation(line: 1656, column: 28, scope: !2283, inlinedAt: !1605)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 1656, column: 17)
!2284 = distinct !DILexicalBlock(scope: !729, file: !1, line: 1646, column: 46)
!2285 = !DILocation(line: 1656, column: 33, scope: !2283, inlinedAt: !1605)
!2286 = !DILocation(line: 1647, column: 17, scope: !2284, inlinedAt: !1605)
!2287 = !DILocation(line: 1648, column: 19, scope: !2288, inlinedAt: !1605)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 1648, column: 17)
!2289 = !DILocation(line: 1648, column: 17, scope: !2284, inlinedAt: !1605)
!2290 = !DILocation(line: 1661, column: 19, scope: !2291, inlinedAt: !1605)
!2291 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 1661, column: 17)
!2292 = !DILocation(line: 1661, column: 17, scope: !2284, inlinedAt: !1605)
!2293 = !DILocation(line: 1665, column: 23, scope: !2294, inlinedAt: !1605)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 1665, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 1663, column: 18)
!2296 = !DILocation(line: 1665, column: 21, scope: !2295, inlinedAt: !1605)
!2297 = !DILocation(line: 1666, column: 21, scope: !2294, inlinedAt: !1605)
!2298 = !DILocation(line: 1666, column: 17, scope: !2294, inlinedAt: !1605)
!2299 = !DILocation(line: 1662, column: 32, scope: !2291, inlinedAt: !1605)
!2300 = !DILocation(line: 1649, column: 32, scope: !2301, inlinedAt: !1605)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 1649, column: 21)
!2302 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 1648, column: 27)
!2303 = !DILocation(line: 1650, column: 26, scope: !2301, inlinedAt: !1605)
!2304 = !DILocation(line: 1650, column: 21, scope: !2301, inlinedAt: !1605)
!2305 = !DILocation(line: 1650, column: 31, scope: !2301, inlinedAt: !1605)
!2306 = !DILocation(line: 1653, column: 33, scope: !2302, inlinedAt: !1605)
!2307 = !DILocation(line: 1653, column: 26, scope: !2302, inlinedAt: !1605)
!2308 = !DILocation(line: 1654, column: 17, scope: !2302, inlinedAt: !1605)
!2309 = !DILocation(line: 1657, column: 22, scope: !2310, inlinedAt: !1605)
!2310 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 1656, column: 47)
!2311 = !DILocation(line: 1657, column: 27, scope: !2310, inlinedAt: !1605)
!2312 = !DILocation(line: 1658, column: 33, scope: !2310, inlinedAt: !1605)
!2313 = !DILocation(line: 1658, column: 26, scope: !2310, inlinedAt: !1605)
!2314 = !DILocation(line: 1659, column: 17, scope: !2310, inlinedAt: !1605)
!2315 = !DILocation(line: 1670, column: 25, scope: !729, inlinedAt: !1605)
!2316 = !DILocation(line: 1670, column: 18, scope: !729, inlinedAt: !1605)
!2317 = !DILocation(line: 1671, column: 23, scope: !729, inlinedAt: !1605)
!2318 = !DILocation(line: 1671, column: 16, scope: !729, inlinedAt: !1605)
!2319 = !DILocation(line: 1672, column: 9, scope: !729, inlinedAt: !1605)
!2320 = !DILocation(line: 1677, column: 13, scope: !1617, inlinedAt: !1605)
!2321 = !DILocation(line: 1678, column: 15, scope: !2322, inlinedAt: !1605)
!2322 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 1678, column: 13)
!2323 = !DILocation(line: 1678, column: 13, scope: !1617, inlinedAt: !1605)
!2324 = !DILocation(line: 1679, column: 18, scope: !2325, inlinedAt: !1605)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !1, line: 1678, column: 24)
!2326 = !DILocation(line: 1679, column: 23, scope: !2325, inlinedAt: !1605)
!2327 = !DILocation(line: 1680, column: 29, scope: !2325, inlinedAt: !1605)
!2328 = !DILocation(line: 1680, column: 22, scope: !2325, inlinedAt: !1605)
!2329 = !DILocation(line: 1681, column: 13, scope: !2325, inlinedAt: !1605)
!2330 = !DILocation(line: 1683, column: 24, scope: !1617, inlinedAt: !1605)
!2331 = !DILocation(line: 1684, column: 9, scope: !1617, inlinedAt: !1605)
!2332 = !DILocation(line: 1689, column: 18, scope: !734, inlinedAt: !1605)
!2333 = !DILocation(line: 1689, column: 13, scope: !734, inlinedAt: !1605)
!2334 = !DILocation(line: 1141, column: 22, scope: !484, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1690, column: 21, scope: !734, inlinedAt: !1605)
!2336 = !DILocation(line: 1141, column: 30, scope: !484, inlinedAt: !2335)
!2337 = !DILocation(line: 1143, column: 5, scope: !484, inlinedAt: !2335)
!2338 = !DILocation(line: 1145, column: 9, scope: !1565, inlinedAt: !2335)
!2339 = !DILocation(line: 1721, column: 21, scope: !702, inlinedAt: !1605)
!2340 = !DILocation(line: 1721, column: 14, scope: !702, inlinedAt: !1605)
!2341 = !DILocation(line: 1722, column: 19, scope: !702, inlinedAt: !1605)
!2342 = !DILocation(line: 1722, column: 12, scope: !702, inlinedAt: !1605)
!2343 = !DILocation(line: 1109, column: 21, scope: !479, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 1723, column: 12, scope: !702, inlinedAt: !1605)
!2345 = !DILocation(line: 1111, column: 5, scope: !479, inlinedAt: !2344)
!2346 = !DILocation(line: 1150, column: 9, scope: !1565, inlinedAt: !2335)
!2347 = !DILocation(line: 1155, column: 9, scope: !1565, inlinedAt: !2335)
!2348 = !DILocation(line: 1162, column: 9, scope: !1565, inlinedAt: !2335)
!2349 = !DILocation(line: 1692, column: 22, scope: !737, inlinedAt: !1605)
!2350 = !DILocation(line: 1215, column: 24, scope: !490, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1693, column: 26, scope: !737, inlinedAt: !1605)
!2352 = !DILocation(line: 1215, column: 32, scope: !490, inlinedAt: !2351)
!2353 = !DILocation(line: 1229, column: 9, scope: !1584, inlinedAt: !2351)
!2354 = !DILocation(line: 1168, column: 9, scope: !1565, inlinedAt: !2335)
!2355 = !DILocation(line: 1173, column: 9, scope: !1565, inlinedAt: !2335)
!2356 = !DILocation(line: 1179, column: 9, scope: !1565, inlinedAt: !2335)
!2357 = !DILocation(line: 1217, column: 5, scope: !490, inlinedAt: !2351)
!2358 = !DILocation(line: 1185, column: 9, scope: !1565, inlinedAt: !2335)
!2359 = !DILocation(line: 1191, column: 9, scope: !1565, inlinedAt: !2335)
!2360 = !DILocation(line: 1196, column: 9, scope: !1565, inlinedAt: !2335)
!2361 = !DILocation(line: 1201, column: 9, scope: !1565, inlinedAt: !2335)
!2362 = !DILocation(line: 1206, column: 9, scope: !1565, inlinedAt: !2335)
!2363 = !DILocation(line: 1690, column: 13, scope: !734, inlinedAt: !1605)
!2364 = !DILocation(line: 1691, column: 19, scope: !738, inlinedAt: !1605)
!2365 = !DILocation(line: 1691, column: 13, scope: !734, inlinedAt: !1605)
!2366 = !DILocation(line: 1219, column: 9, scope: !1584, inlinedAt: !2351)
!2367 = !DILocation(line: 1221, column: 13, scope: !1586, inlinedAt: !2351)
!2368 = !DILocation(line: 1231, column: 13, scope: !1589, inlinedAt: !2351)
!2369 = !DILocation(line: 1239, column: 9, scope: !1584, inlinedAt: !2351)
!2370 = !DILocation(line: 1241, column: 13, scope: !1592, inlinedAt: !2351)
!2371 = !DILocation(line: 1249, column: 9, scope: !1584, inlinedAt: !2351)
!2372 = !DILocation(line: 1251, column: 13, scope: !1595, inlinedAt: !2351)
!2373 = !DILocation(line: 1259, column: 9, scope: !1584, inlinedAt: !2351)
!2374 = !DILocation(line: 1261, column: 13, scope: !1598, inlinedAt: !2351)
!2375 = !DILocation(line: 1693, column: 17, scope: !737, inlinedAt: !1605)
!2376 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 1697, column: 17, scope: !2378, inlinedAt: !1605)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 1696, column: 20)
!2379 = distinct !DILexicalBlock(scope: !737, file: !1, line: 1694, column: 17)
!2380 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2377)
!2381 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2377)
!2382 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2377)
!2383 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2377)
!2384 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2377)
!2385 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2377)
!2386 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2377)
!2387 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2377)
!2388 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2377)
!2389 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2377)
!2390 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2377)
!2391 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2377)
!2392 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2377)
!2393 = !DILocation(line: 1095, column: 30, scope: !860, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1703, column: 9, scope: !734, inlinedAt: !1605)
!2395 = !DILocation(line: 1095, column: 39, scope: !860, inlinedAt: !2394)
!2396 = !DILocation(line: 1097, column: 11, scope: !1634, inlinedAt: !2394)
!2397 = !DILocation(line: 1097, column: 9, scope: !860, inlinedAt: !2394)
!2398 = !DILocation(line: 1098, column: 13, scope: !1632, inlinedAt: !2394)
!2399 = !DILocation(line: 1098, column: 31, scope: !1632, inlinedAt: !2394)
!2400 = !DILocation(line: 1098, column: 24, scope: !1632, inlinedAt: !2394)
!2401 = !DILocation(line: 1098, column: 13, scope: !1633, inlinedAt: !2394)
!2402 = !DILocation(line: 1099, column: 13, scope: !1632, inlinedAt: !2394)
!2403 = !DILocation(line: 1100, column: 13, scope: !1685, inlinedAt: !2394)
!2404 = !DILocation(line: 1100, column: 23, scope: !1685, inlinedAt: !2394)
!2405 = !DILocation(line: 1100, column: 13, scope: !1633, inlinedAt: !2394)
!2406 = !DILocation(line: 1101, column: 25, scope: !1685, inlinedAt: !2394)
!2407 = !DILocation(line: 1101, column: 23, scope: !1685, inlinedAt: !2394)
!2408 = !DILocation(line: 1101, column: 13, scope: !1685, inlinedAt: !2394)
!2409 = !DILocation(line: 1699, column: 29, scope: !737, inlinedAt: !1605)
!2410 = !DILocation(line: 1699, column: 22, scope: !737, inlinedAt: !1605)
!2411 = !DILocation(line: 1700, column: 27, scope: !737, inlinedAt: !1605)
!2412 = !DILocation(line: 1700, column: 20, scope: !737, inlinedAt: !1605)
!2413 = !DILocation(line: 1707, column: 5, scope: !702, inlinedAt: !1605)
!2414 = !DILocation(line: 1711, column: 19, scope: !2415, inlinedAt: !1605)
!2415 = distinct !DILexicalBlock(scope: !702, file: !1, line: 1707, column: 16)
!2416 = !DILocation(line: 1712, column: 9, scope: !2415, inlinedAt: !1605)
!2417 = !DILocation(line: 1716, column: 19, scope: !2415, inlinedAt: !1605)
!2418 = !DILocation(line: 1717, column: 9, scope: !2415, inlinedAt: !1605)
!2419 = !DILocation(line: 1113, column: 25, scope: !1537, inlinedAt: !2344)
!2420 = !DILocation(line: 1114, column: 25, scope: !1537, inlinedAt: !2344)
!2421 = !DILocation(line: 1115, column: 25, scope: !1537, inlinedAt: !2344)
!2422 = !DILocation(line: 1116, column: 25, scope: !1537, inlinedAt: !2344)
!2423 = !DILocation(line: 1117, column: 25, scope: !1537, inlinedAt: !2344)
!2424 = !DILocation(line: 1118, column: 25, scope: !1537, inlinedAt: !2344)
!2425 = !DILocation(line: 1119, column: 25, scope: !1537, inlinedAt: !2344)
!2426 = !DILocation(line: 1120, column: 25, scope: !1537, inlinedAt: !2344)
!2427 = !DILocation(line: 1121, column: 25, scope: !1537, inlinedAt: !2344)
!2428 = !DILocation(line: 1122, column: 25, scope: !1537, inlinedAt: !2344)
!2429 = !DILocation(line: 1123, column: 25, scope: !1537, inlinedAt: !2344)
!2430 = !DILocation(line: 1124, column: 25, scope: !1537, inlinedAt: !2344)
!2431 = !DILocation(line: 1125, column: 25, scope: !1537, inlinedAt: !2344)
!2432 = !DILocation(line: 1126, column: 25, scope: !1537, inlinedAt: !2344)
!2433 = !DILocation(line: 1127, column: 25, scope: !1537, inlinedAt: !2344)
!2434 = !DILocation(line: 1128, column: 25, scope: !1537, inlinedAt: !2344)
!2435 = !DILocation(line: 1129, column: 25, scope: !1537, inlinedAt: !2344)
!2436 = !DILocation(line: 1130, column: 25, scope: !1537, inlinedAt: !2344)
!2437 = !DILocation(line: 1131, column: 25, scope: !1537, inlinedAt: !2344)
!2438 = !DILocation(line: 1132, column: 25, scope: !1537, inlinedAt: !2344)
!2439 = !DILocation(line: 1133, column: 25, scope: !1537, inlinedAt: !2344)
!2440 = !DILocation(line: 1134, column: 21, scope: !1537, inlinedAt: !2344)
!2441 = !DILocation(line: 1135, column: 25, scope: !1537, inlinedAt: !2344)
!2442 = !DILocation(line: 1729, column: 9, scope: !497)
!2443 = !DILocation(line: 1730, column: 14, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !497, file: !1, line: 1730, column: 9)
!2445 = !DILocation(line: 1730, column: 9, scope: !2444)
!2446 = !DILocation(line: 1730, column: 9, scope: !497)
!2447 = !DILocation(line: 1732, column: 14, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !1, line: 1730, column: 30)
!2449 = !DILocation(line: 1732, column: 19, scope: !2448)
!2450 = !DILocation(line: 1733, column: 5, scope: !2448)
!2451 = !DILocation(line: 1734, column: 5, scope: !497)
!2452 = !DILocation(line: 1748, column: 38, scope: !506)
!2453 = !DILocation(line: 1748, column: 52, scope: !506)
!2454 = !DILocation(line: 1752, column: 5, scope: !506)
!2455 = !DILocation(line: 1752, column: 11, scope: !506)
!2456 = !DILocation(line: 1752, column: 28, scope: !506)
!2457 = !DILocation(line: 1752, column: 43, scope: !506)
!2458 = !DILocation(line: 1755, column: 10, scope: !506)
!2459 = !DILocation(line: 1759, column: 12, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1759, column: 9)
!2461 = !DILocation(line: 1759, column: 9, scope: !506)
!2462 = !DILocation(line: 1763, column: 10, scope: !506)
!2463 = !DILocation(line: 1751, column: 11, scope: !506)
!2464 = !DILocation(line: 1764, column: 12, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1764, column: 9)
!2466 = !DILocation(line: 1764, column: 9, scope: !506)
!2467 = !DILocation(line: 846, column: 28, scope: !450, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1767, column: 11, scope: !506)
!2469 = !DILocation(line: 846, column: 44, scope: !450, inlinedAt: !2468)
!2470 = !DILocation(line: 847, column: 34, scope: !450, inlinedAt: !2468)
!2471 = !DILocation(line: 847, column: 51, scope: !450, inlinedAt: !2468)
!2472 = !DILocation(line: 115, column: 49, scope: !522, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 849, column: 29, scope: !450, inlinedAt: !2468)
!2474 = !DILocation(line: 117, column: 13, scope: !899, inlinedAt: !2473)
!2475 = !DILocation(line: 117, column: 9, scope: !522, inlinedAt: !2473)
!2476 = !DILocation(line: 115, column: 29, scope: !522, inlinedAt: !2473)
!2477 = !DILocation(line: 120, column: 10, scope: !522, inlinedAt: !2473)
!2478 = !DILocation(line: 119, column: 47, scope: !522, inlinedAt: !2473)
!2479 = !DILocation(line: 120, column: 15, scope: !522, inlinedAt: !2473)
!2480 = !DILocation(line: 121, column: 10, scope: !522, inlinedAt: !2473)
!2481 = !DILocation(line: 121, column: 13, scope: !522, inlinedAt: !2473)
!2482 = !DILocation(line: 122, column: 10, scope: !522, inlinedAt: !2473)
!2483 = !DILocation(line: 122, column: 16, scope: !522, inlinedAt: !2473)
!2484 = !DILocation(line: 123, column: 10, scope: !522, inlinedAt: !2473)
!2485 = !DILocation(line: 123, column: 18, scope: !522, inlinedAt: !2473)
!2486 = !DILocation(line: 124, column: 10, scope: !522, inlinedAt: !2473)
!2487 = !DILocation(line: 124, column: 17, scope: !522, inlinedAt: !2473)
!2488 = !DILocation(line: 125, column: 10, scope: !522, inlinedAt: !2473)
!2489 = !DILocation(line: 125, column: 5, scope: !522, inlinedAt: !2473)
!2490 = !DILocation(line: 125, column: 22, scope: !522, inlinedAt: !2473)
!2491 = !DILocation(line: 126, column: 10, scope: !522, inlinedAt: !2473)
!2492 = !DILocation(line: 126, column: 16, scope: !522, inlinedAt: !2473)
!2493 = !DILocation(line: 127, column: 10, scope: !522, inlinedAt: !2473)
!2494 = !DILocation(line: 131, column: 10, scope: !522, inlinedAt: !2473)
!2495 = !DILocation(line: 128, column: 35, scope: !522, inlinedAt: !2473)
!2496 = !DILocation(line: 131, column: 21, scope: !522, inlinedAt: !2473)
!2497 = !DILocation(line: 135, column: 10, scope: !522, inlinedAt: !2473)
!2498 = !DILocation(line: 142, column: 10, scope: !522, inlinedAt: !2473)
!2499 = !DILocation(line: 142, column: 19, scope: !522, inlinedAt: !2473)
!2500 = !DILocation(line: 143, column: 10, scope: !522, inlinedAt: !2473)
!2501 = !DILocation(line: 135, column: 25, scope: !522, inlinedAt: !2473)
!2502 = !DILocation(line: 143, column: 28, scope: !522, inlinedAt: !2473)
!2503 = !DILocation(line: 849, column: 23, scope: !450, inlinedAt: !2468)
!2504 = !DILocation(line: 857, column: 21, scope: !450, inlinedAt: !2468)
!2505 = !DILocation(line: 852, column: 15, scope: !1495, inlinedAt: !2468)
!2506 = !DILocation(line: 852, column: 19, scope: !1495, inlinedAt: !2468)
!2507 = !DILocation(line: 852, column: 51, scope: !1495, inlinedAt: !2468)
!2508 = !DILocation(line: 852, column: 9, scope: !450, inlinedAt: !2468)
!2509 = !DILocation(line: 853, column: 9, scope: !1500, inlinedAt: !2468)
!2510 = !DILocation(line: 854, column: 9, scope: !1500, inlinedAt: !2468)
!2511 = !DILocation(line: 1769, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 1768, column: 22)
!2513 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1768, column: 9)
!2514 = !DILocation(line: 1770, column: 9, scope: !2512)
!2515 = !DILocation(line: 856, column: 21, scope: !450, inlinedAt: !2468)
!2516 = !DILocation(line: 856, column: 25, scope: !450, inlinedAt: !2468)
!2517 = !DILocation(line: 856, column: 10, scope: !450, inlinedAt: !2468)
!2518 = !DILocation(line: 856, column: 14, scope: !450, inlinedAt: !2468)
!2519 = !DILocation(line: 857, column: 25, scope: !450, inlinedAt: !2468)
!2520 = !DILocation(line: 857, column: 10, scope: !450, inlinedAt: !2468)
!2521 = !DILocation(line: 857, column: 14, scope: !450, inlinedAt: !2468)
!2522 = !DILocation(line: 858, column: 13, scope: !450, inlinedAt: !2468)
!2523 = !DILocation(line: 859, column: 10, scope: !450, inlinedAt: !2468)
!2524 = !DILocation(line: 1750, column: 23, scope: !506)
!2525 = !DILocation(line: 860, column: 21, scope: !450, inlinedAt: !2468)
!2526 = !DILocation(line: 1773, column: 18, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1773, column: 9)
!2528 = !DILocation(line: 1773, column: 9, scope: !506)
!2529 = !DILocation(line: 1774, column: 9, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 1773, column: 27)
!2531 = !DILocation(line: 1775, column: 23, scope: !2530)
!2532 = !DILocation(line: 1776, column: 5, scope: !2530)
!2533 = !DILocation(line: 1786, column: 17, scope: !506)
!2534 = !{!908, !912, i64 488}
!2535 = !DILocation(line: 1786, column: 24, scope: !506)
!2536 = !DILocation(line: 1786, column: 28, scope: !506)
!2537 = !DILocation(line: 1786, column: 36, scope: !506)
!2538 = !DILocation(line: 1778, column: 25, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 1777, column: 10)
!2540 = !DILocation(line: 1778, column: 23, scope: !2539)
!2541 = !DILocation(line: 1779, column: 27, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 1779, column: 13)
!2543 = !DILocation(line: 1779, column: 13, scope: !2539)
!2544 = !DILocation(line: 1780, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 1779, column: 36)
!2546 = !DILocation(line: 1781, column: 13, scope: !2545)
!2547 = !DILocation(line: 1782, column: 13, scope: !2545)
!2548 = !DILocation(line: 1786, column: 41, scope: !506)
!2549 = !DILocation(line: 1786, column: 5, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 3)
!2551 = !DILocation(line: 1787, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1786, column: 50)
!2553 = !DILocation(line: 1789, column: 5, scope: !506)
!2554 = !DILocation(line: 1790, column: 14, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !506, file: !1, line: 1790, column: 9)
!2556 = !DILocation(line: 1790, column: 9, scope: !2555)
!2557 = !DILocation(line: 1790, column: 9, scope: !506)
!2558 = !DILocation(line: 1791, column: 28, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 1790, column: 24)
!2560 = !DILocation(line: 1792, column: 13, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 1792, column: 13)
!2562 = !DILocation(line: 1792, column: 13, scope: !2559)
!2563 = !DILocation(line: 1793, column: 31, scope: !2561)
!2564 = !DILocation(line: 1793, column: 9, scope: !2561)
!2565 = !DILocation(line: 1795, column: 5, scope: !506)
!2566 = !DILocation(line: 1796, column: 5, scope: !506)
!2567 = !DILocation(line: 1797, column: 1, scope: !506)
!2568 = !DILocation(line: 1800, column: 30, scope: !517)
!2569 = !DILocation(line: 1802, column: 12, scope: !517)
!2570 = !DILocation(line: 1802, column: 5, scope: !517)
!2571 = !DILocation(line: 672, column: 32, scope: !577)
!2572 = !DILocation(line: 672, column: 49, scope: !577)
!2573 = !DILocation(line: 673, column: 10, scope: !577)
!2574 = !DILocation(line: 673, column: 14, scope: !577)
!2575 = !DILocation(line: 674, column: 5, scope: !577)
!2576 = !DILocation(line: 280, column: 31, scope: !596)
!2577 = !DILocation(line: 280, column: 48, scope: !596)
!2578 = !DILocation(line: 280, column: 72, scope: !596)
!2579 = !DILocation(line: 281, column: 23, scope: !596)
!2580 = !DILocation(line: 284, column: 9, scope: !596)
!2581 = !DILocation(line: 286, column: 14, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !596, file: !1, line: 286, column: 9)
!2583 = !DILocation(line: 286, column: 9, scope: !2582)
!2584 = !DILocation(line: 198, column: 10, scope: !642, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 260, column: 21, scope: !639, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 291, column: 10, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !596, file: !1, line: 291, column: 9)
!2588 = !DILocation(line: 286, column: 9, scope: !596)
!2589 = !DILocation(line: 288, column: 14, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 286, column: 25)
!2591 = !DILocation(line: 288, column: 31, scope: !2590)
!2592 = !DILocation(line: 289, column: 9, scope: !2590)
!2593 = !DILocation(line: 283, column: 11, scope: !596)
!2594 = !DILocation(line: 227, column: 29, scope: !622, inlinedAt: !2586)
!2595 = !DILocation(line: 227, column: 39, scope: !622, inlinedAt: !2586)
!2596 = !DILocation(line: 227, column: 56, scope: !622, inlinedAt: !2586)
!2597 = !DILocation(line: 227, column: 80, scope: !622, inlinedAt: !2586)
!2598 = !DILocation(line: 229, column: 16, scope: !622, inlinedAt: !2586)
!2599 = !DILocation(line: 233, column: 26, scope: !2600, inlinedAt: !2586)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 233, column: 5)
!2601 = distinct !DILexicalBlock(scope: !622, file: !1, line: 233, column: 5)
!2602 = !DILocation(line: 233, column: 19, scope: !2600, inlinedAt: !2586)
!2603 = !DILocation(line: 233, column: 5, scope: !2601, inlinedAt: !2586)
!2604 = !DILocation(line: 234, column: 13, scope: !2605, inlinedAt: !2586)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !1, line: 234, column: 13)
!2606 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 233, column: 36)
!2607 = !DILocation(line: 291, column: 10, scope: !2587)
!2608 = !DILocation(line: 234, column: 13, scope: !2606, inlinedAt: !2586)
!2609 = !DILocation(line: 239, column: 14, scope: !633, inlinedAt: !2586)
!2610 = !DILocation(line: 239, column: 5, scope: !634, inlinedAt: !2586)
!2611 = !DILocation(line: 198, column: 5, scope: !642, inlinedAt: !2585)
!2612 = !DILocation(line: 233, column: 32, scope: !2600, inlinedAt: !2586)
!2613 = !DILocation(line: 240, column: 27, scope: !632, inlinedAt: !2586)
!2614 = !DILocation(line: 240, column: 21, scope: !632, inlinedAt: !2586)
!2615 = !DILocation(line: 241, column: 13, scope: !637, inlinedAt: !2586)
!2616 = !DILocation(line: 241, column: 37, scope: !637, inlinedAt: !2586)
!2617 = !DILocation(line: 241, column: 13, scope: !632, inlinedAt: !2586)
!2618 = !DILocation(line: 242, column: 25, scope: !636, inlinedAt: !2586)
!2619 = !DILocation(line: 243, column: 15, scope: !636, inlinedAt: !2586)
!2620 = !DILocation(line: 244, column: 17, scope: !2621, inlinedAt: !2586)
!2621 = distinct !DILexicalBlock(scope: !636, file: !1, line: 244, column: 17)
!2622 = !DILocation(line: 244, column: 29, scope: !2621, inlinedAt: !2586)
!2623 = !DILocation(line: 247, column: 18, scope: !2624, inlinedAt: !2586)
!2624 = distinct !DILexicalBlock(scope: !636, file: !1, line: 246, column: 16)
!2625 = !DILocation(line: 248, column: 22, scope: !2626, inlinedAt: !2586)
!2626 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 1)
!2627 = !DILocation(line: 248, column: 37, scope: !636, inlinedAt: !2586)
!2628 = !DILocation(line: 251, column: 20, scope: !2629, inlinedAt: !2586)
!2629 = !DILexicalBlockFile(scope: !2626, file: !1, discriminator: 3)
!2630 = !DILocation(line: 251, column: 37, scope: !636, inlinedAt: !2586)
!2631 = !DILocation(line: 253, column: 18, scope: !636, inlinedAt: !2586)
!2632 = !DILocation(line: 251, column: 13, scope: !636, inlinedAt: !2586)
!2633 = !DILocation(line: 255, column: 23, scope: !640, inlinedAt: !2586)
!2634 = !DILocation(line: 255, column: 17, scope: !636, inlinedAt: !2586)
!2635 = !DILocation(line: 256, column: 47, scope: !639, inlinedAt: !2586)
!2636 = !DILocation(line: 150, column: 24, scope: !562, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 256, column: 27, scope: !639, inlinedAt: !2586)
!2638 = !DILocation(line: 150, column: 38, scope: !562, inlinedAt: !2637)
!2639 = !DILocation(line: 150, column: 61, scope: !562, inlinedAt: !2637)
!2640 = !DILocation(line: 152, column: 28, scope: !562, inlinedAt: !2637)
!2641 = !DILocation(line: 152, column: 11, scope: !562, inlinedAt: !2637)
!2642 = !DILocation(line: 153, column: 10, scope: !1082, inlinedAt: !2637)
!2643 = !DILocation(line: 153, column: 9, scope: !562, inlinedAt: !2637)
!2644 = !DILocation(line: 154, column: 14, scope: !1085, inlinedAt: !2637)
!2645 = !DILocation(line: 154, column: 19, scope: !1085, inlinedAt: !2637)
!2646 = !DILocation(line: 256, column: 23, scope: !639, inlinedAt: !2586)
!2647 = !DILocation(line: 258, column: 21, scope: !639, inlinedAt: !2586)
!2648 = !DILocation(line: 157, column: 5, scope: !562, inlinedAt: !2637)
!2649 = !DILocation(line: 158, column: 5, scope: !562, inlinedAt: !2637)
!2650 = !DILocation(line: 158, column: 17, scope: !562, inlinedAt: !2637)
!2651 = !DILocation(line: 196, column: 23, scope: !642, inlinedAt: !2585)
!2652 = !DILocation(line: 199, column: 9, scope: !642, inlinedAt: !2585)
!2653 = !DILocation(line: 200, column: 5, scope: !655, inlinedAt: !2585)
!2654 = !DILocation(line: 260, column: 21, scope: !639, inlinedAt: !2586)
!2655 = !DILocation(line: 201, column: 17, scope: !653, inlinedAt: !2585)
!2656 = !DILocation(line: 201, column: 13, scope: !653, inlinedAt: !2585)
!2657 = !DILocation(line: 202, column: 13, scope: !653, inlinedAt: !2585)
!2658 = !DILocation(line: 205, column: 13, scope: !658, inlinedAt: !2585)
!2659 = !DILocation(line: 205, column: 20, scope: !658, inlinedAt: !2585)
!2660 = !DILocation(line: 216, column: 1, scope: !686, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 207, column: 22, scope: !2662, inlinedAt: !2585)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 207, column: 22)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 207, column: 22)
!2664 = distinct !DILexicalBlock(scope: !657, file: !1, line: 207, column: 22)
!2665 = !DILocation(line: 218, column: 22, scope: !686, inlinedAt: !2661)
!2666 = !DILocation(line: 218, column: 37, scope: !686, inlinedAt: !2661)
!2667 = !DILocation(line: 218, column: 39, scope: !686, inlinedAt: !2661)
!2668 = !DILocation(line: 218, column: 38, scope: !686, inlinedAt: !2661)
!2669 = !DILocation(line: 218, column: 10, scope: !686, inlinedAt: !2661)
!2670 = !DILocation(line: 207, column: 22, scope: !657, inlinedAt: !2585)
!2671 = !DILocation(line: 207, column: 22, scope: !658, inlinedAt: !2585)
!2672 = !DILocation(line: 207, column: 13, scope: !658, inlinedAt: !2585)
!2673 = !DILocation(line: 207, column: 20, scope: !658, inlinedAt: !2585)
!2674 = !DILocation(line: 200, column: 26, scope: !654, inlinedAt: !2585)
!2675 = !DILocation(line: 200, column: 19, scope: !654, inlinedAt: !2585)
!2676 = !DILocation(line: 209, column: 5, scope: !642, inlinedAt: !2585)
!2677 = !DILocation(line: 209, column: 12, scope: !642, inlinedAt: !2585)
!2678 = !DILocation(line: 210, column: 9, scope: !661, inlinedAt: !2585)
!2679 = !DILocation(line: 210, column: 9, scope: !2680, inlinedAt: !2585)
!2680 = !DILexicalBlockFile(scope: !2681, file: !1, discriminator: 4)
!2681 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 2)
!2682 = !DILocation(line: 210, column: 30, scope: !662, inlinedAt: !2585)
!2683 = !DILocation(line: 210, column: 35, scope: !662, inlinedAt: !2585)
!2684 = !DILocation(line: 211, column: 9, scope: !662, inlinedAt: !2585)
!2685 = !DILocation(line: 211, column: 35, scope: !662, inlinedAt: !2585)
!2686 = !DILocation(line: 210, column: 9, scope: !642, inlinedAt: !2585)
!2687 = !DILocation(line: 213, column: 14, scope: !668, inlinedAt: !2585)
!2688 = !DILocation(line: 213, column: 14, scope: !2689, inlinedAt: !2585)
!2689 = !DILexicalBlockFile(scope: !2690, file: !1, discriminator: 4)
!2690 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 2)
!2691 = !DILocation(line: 213, column: 37, scope: !669, inlinedAt: !2585)
!2692 = !DILocation(line: 213, column: 42, scope: !669, inlinedAt: !2585)
!2693 = !DILocation(line: 214, column: 14, scope: !675, inlinedAt: !2585)
!2694 = !DILocation(line: 214, column: 14, scope: !2695, inlinedAt: !2585)
!2695 = !DILexicalBlockFile(scope: !2696, file: !1, discriminator: 4)
!2696 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 2)
!2697 = !DILocation(line: 214, column: 40, scope: !669, inlinedAt: !2585)
!2698 = !DILocation(line: 214, column: 45, scope: !669, inlinedAt: !2585)
!2699 = !DILocation(line: 215, column: 14, scope: !681, inlinedAt: !2585)
!2700 = !DILocation(line: 215, column: 14, scope: !2701, inlinedAt: !2585)
!2701 = !DILexicalBlockFile(scope: !2702, file: !1, discriminator: 4)
!2702 = !DILexicalBlockFile(scope: !681, file: !1, discriminator: 2)
!2703 = !DILocation(line: 215, column: 41, scope: !669, inlinedAt: !2585)
!2704 = !DILocation(line: 215, column: 46, scope: !669, inlinedAt: !2585)
!2705 = !DILocation(line: 216, column: 14, scope: !669, inlinedAt: !2585)
!2706 = !DILocation(line: 216, column: 42, scope: !669, inlinedAt: !2585)
!2707 = !DILocation(line: 216, column: 47, scope: !669, inlinedAt: !2585)
!2708 = !DILocation(line: 217, column: 14, scope: !669, inlinedAt: !2585)
!2709 = !DILocation(line: 217, column: 46, scope: !669, inlinedAt: !2585)
!2710 = !DILocation(line: 217, column: 51, scope: !669, inlinedAt: !2585)
!2711 = !DILocation(line: 218, column: 14, scope: !669, inlinedAt: !2585)
!2712 = !DILocation(line: 218, column: 47, scope: !669, inlinedAt: !2585)
!2713 = !DILocation(line: 213, column: 14, scope: !662, inlinedAt: !2585)
!2714 = !DILocation(line: 222, column: 1, scope: !642, inlinedAt: !2585)
!2715 = !DILocation(line: 257, column: 23, scope: !639, inlinedAt: !2586)
!2716 = !DILocation(line: 261, column: 23, scope: !2717, inlinedAt: !2586)
!2717 = distinct !DILexicalBlock(scope: !639, file: !1, line: 261, column: 21)
!2718 = !DILocation(line: 261, column: 21, scope: !639, inlinedAt: !2586)
!2719 = !DILocation(line: 262, column: 21, scope: !2720, inlinedAt: !2586)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 261, column: 29)
!2721 = !DILocation(line: 263, column: 39, scope: !2720, inlinedAt: !2586)
!2722 = !DILocation(line: 150, column: 24, scope: !562, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 263, column: 25, scope: !2720, inlinedAt: !2586)
!2724 = !DILocation(line: 150, column: 38, scope: !562, inlinedAt: !2723)
!2725 = !DILocation(line: 150, column: 61, scope: !562, inlinedAt: !2723)
!2726 = !DILocation(line: 152, column: 28, scope: !562, inlinedAt: !2723)
!2727 = !DILocation(line: 152, column: 11, scope: !562, inlinedAt: !2723)
!2728 = !DILocation(line: 153, column: 10, scope: !1082, inlinedAt: !2723)
!2729 = !DILocation(line: 153, column: 9, scope: !562, inlinedAt: !2723)
!2730 = !DILocation(line: 154, column: 14, scope: !1085, inlinedAt: !2723)
!2731 = !DILocation(line: 154, column: 19, scope: !1085, inlinedAt: !2723)
!2732 = !DILocation(line: 264, column: 25, scope: !2720, inlinedAt: !2586)
!2733 = !DILocation(line: 157, column: 5, scope: !562, inlinedAt: !2723)
!2734 = !DILocation(line: 158, column: 5, scope: !562, inlinedAt: !2723)
!2735 = !DILocation(line: 158, column: 17, scope: !562, inlinedAt: !2723)
!2736 = !DILocation(line: 267, column: 23, scope: !639, inlinedAt: !2586)
!2737 = !DILocation(line: 239, column: 27, scope: !633, inlinedAt: !2586)
!2738 = !DILocation(line: 293, column: 10, scope: !608)
!2739 = !DILocation(line: 293, column: 9, scope: !596)
!2740 = !DILocation(line: 295, column: 23, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !1, line: 295, column: 9)
!2742 = distinct !DILexicalBlock(scope: !607, file: !1, line: 295, column: 9)
!2743 = !DILocation(line: 295, column: 9, scope: !2742)
!2744 = !DILocation(line: 296, column: 17, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 296, column: 17)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !1, line: 295, column: 36)
!2747 = !DILocation(line: 296, column: 32, scope: !2745)
!2748 = !DILocation(line: 301, column: 22, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !1, line: 298, column: 73)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 298, column: 17)
!2751 = !DILocation(line: 301, column: 39, scope: !2749)
!2752 = !DILocation(line: 302, column: 17, scope: !2749)
!2753 = !DILocation(line: 295, column: 32, scope: !2741)
!2754 = !DILocation(line: 294, column: 20, scope: !607)
!2755 = !DILocation(line: 307, column: 10, scope: !596)
!2756 = !DILocation(line: 307, column: 27, scope: !596)
!2757 = !DILocation(line: 308, column: 14, scope: !613)
!2758 = !DILocation(line: 308, column: 23, scope: !613)
!2759 = !DILocation(line: 308, column: 9, scope: !596)
!2760 = !DILocation(line: 310, column: 13, scope: !610)
!2761 = !DILocation(line: 310, column: 13, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2763, file: !1, discriminator: 4)
!2763 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 2)
!2764 = !DILocation(line: 310, column: 33, scope: !611)
!2765 = !DILocation(line: 310, column: 13, scope: !612)
!2766 = !DILocation(line: 311, column: 27, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !611, file: !1, line: 310, column: 39)
!2768 = !DILocation(line: 312, column: 9, scope: !2767)
!2769 = !DILocation(line: 313, column: 17, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !611, file: !1, line: 312, column: 16)
!2771 = !DILocation(line: 314, column: 17, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 314, column: 17)
!2773 = !DILocation(line: 314, column: 17, scope: !2770)
!2774 = !DILocation(line: 315, column: 31, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 314, column: 20)
!2776 = !DILocation(line: 316, column: 22, scope: !2775)
!2777 = !DILocation(line: 316, column: 37, scope: !2775)
!2778 = !DILocation(line: 317, column: 13, scope: !2775)
!2779 = !DILocation(line: 319, column: 30, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 318, column: 18)
!2781 = !DILocation(line: 319, column: 17, scope: !2780)
!2782 = !DILocation(line: 321, column: 17, scope: !2780)
!2783 = !DILocation(line: 325, column: 14, scope: !619)
!2784 = !DILocation(line: 325, column: 40, scope: !620)
!2785 = !DILocation(line: 326, column: 13, scope: !620)
!2786 = !DILocation(line: 327, column: 26, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !620, file: !1, line: 326, column: 13)
!2788 = !DILocation(line: 327, column: 13, scope: !2787)
!2789 = !DILocation(line: 329, column: 9, scope: !620)
!2790 = !DILocation(line: 332, column: 1, scope: !596)
!2791 = !DILocation(line: 898, column: 29, scope: !740)
!2792 = !DILocation(line: 901, column: 18, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !746, file: !1, line: 901, column: 13)
!2794 = !DILocation(line: 901, column: 30, scope: !2793)
!2795 = !DILocation(line: 904, column: 18, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !746, file: !1, line: 904, column: 13)
!2797 = !DILocation(line: 906, column: 18, scope: !745)
!2798 = !DILocation(line: 924, column: 18, scope: !751)
!2799 = !DILocation(line: 1003, column: 22, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !775, file: !1, line: 1003, column: 17)
!2801 = !DILocation(line: 1004, column: 26, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 1004, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 1003, column: 37)
!2804 = !DILocation(line: 1011, column: 26, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 1004, column: 39)
!2806 = !DILocation(line: 1013, column: 57, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 1013, column: 21)
!2808 = !DILocation(line: 1033, column: 18, scope: !775)
!2809 = !DILocation(line: 1070, column: 22, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 1068, column: 35)
!2811 = distinct !DILexicalBlock(scope: !775, file: !1, line: 1068, column: 17)
!2812 = !DILocation(line: 1038, column: 44, scope: !779)
!2813 = !DILocation(line: 1059, column: 30, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 1059, column: 25)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !1, line: 1055, column: 46)
!2816 = distinct !DILexicalBlock(scope: !779, file: !1, line: 1053, column: 21)
!2817 = !DILocation(line: 1063, column: 33, scope: !2815)
!2818 = !DILocation(line: 1037, column: 45, scope: !779)
!2819 = !DILocation(line: 636, column: 14, scope: !859, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1026, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 1026, column: 21)
!2822 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 1024, column: 18)
!2823 = !DILocation(line: 639, column: 30, scope: !858, inlinedAt: !2820)
!2824 = !DILocation(line: 641, column: 44, scope: !2825, inlinedAt: !2820)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 640, column: 26)
!2826 = distinct !DILexicalBlock(scope: !858, file: !1, line: 640, column: 13)
!2827 = !DILocation(line: 956, column: 22, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !750, file: !1, line: 956, column: 17)
!2829 = !DILocation(line: 993, column: 26, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !768, file: !1, line: 987, column: 18)
!2831 = !DILocation(line: 994, column: 33, scope: !2830)
!2832 = !DILocation(line: 934, column: 22, scope: !757)
!2833 = !DILocation(line: 900, column: 5, scope: !740)
!2834 = !DILocation(line: 901, column: 22, scope: !2793)
!2835 = !DILocation(line: 901, column: 13, scope: !746)
!2836 = !DILocation(line: 902, column: 20, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 901, column: 35)
!2838 = !DILocation(line: 902, column: 13, scope: !2837)
!2839 = !DILocation(line: 904, column: 23, scope: !2796)
!2840 = !DILocation(line: 904, column: 13, scope: !746)
!2841 = !DILocation(line: 906, column: 21, scope: !745)
!2842 = !DILocation(line: 906, column: 13, scope: !746)
!2843 = !DILocation(line: 907, column: 25, scope: !744)
!2844 = !DILocation(line: 907, column: 19, scope: !744)
!2845 = !DILocation(line: 908, column: 21, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !744, file: !1, line: 908, column: 17)
!2847 = !DILocation(line: 908, column: 17, scope: !744)
!2848 = !DILocation(line: 909, column: 20, scope: !2846)
!2849 = !DILocation(line: 909, column: 17, scope: !2846)
!2850 = !DILocation(line: 911, column: 23, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !1, line: 910, column: 18)
!2852 = !DILocation(line: 912, column: 33, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 912, column: 21)
!2854 = !DILocation(line: 912, column: 25, scope: !2853)
!2855 = !DILocation(line: 912, column: 21, scope: !2851)
!2856 = !DILocation(line: 913, column: 31, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !1, line: 912, column: 38)
!2858 = !DILocation(line: 914, column: 21, scope: !2857)
!2859 = !DILocation(line: 917, column: 22, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !744, file: !1, line: 917, column: 17)
!2861 = !DILocation(line: 917, column: 28, scope: !2860)
!2862 = !DILocation(line: 918, column: 33, scope: !2860)
!2863 = !DILocation(line: 917, column: 17, scope: !744)
!2864 = !DILocation(line: 918, column: 26, scope: !2860)
!2865 = !DILocation(line: 918, column: 17, scope: !2860)
!2866 = !DILocation(line: 922, column: 20, scope: !744)
!2867 = !DILocation(line: 919, column: 29, scope: !744)
!2868 = !{!908, !909, i64 944}
!2869 = !DILocation(line: 920, column: 24, scope: !744)
!2870 = !DILocation(line: 921, column: 22, scope: !744)
!2871 = !DILocation(line: 922, column: 13, scope: !744)
!2872 = !DILocation(line: 924, column: 25, scope: !751)
!2873 = !DILocation(line: 924, column: 13, scope: !746)
!2874 = !DILocation(line: 925, column: 42, scope: !750)
!2875 = !DILocation(line: 925, column: 49, scope: !750)
!2876 = !DILocation(line: 925, column: 28, scope: !750)
!2877 = !DILocation(line: 925, column: 19, scope: !750)
!2878 = !DILocation(line: 927, column: 24, scope: !754)
!2879 = !DILocation(line: 927, column: 17, scope: !750)
!2880 = !DILocation(line: 693, column: 32, scope: !689, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 928, column: 36, scope: !753)
!2882 = !DILocation(line: 693, column: 39, scope: !689, inlinedAt: !2881)
!2883 = !DILocation(line: 693, column: 69, scope: !689, inlinedAt: !2881)
!2884 = !DILocation(line: 694, column: 9, scope: !689, inlinedAt: !2881)
!2885 = !DILocation(line: 695, column: 28, scope: !689, inlinedAt: !2881)
!2886 = !DILocation(line: 695, column: 38, scope: !689, inlinedAt: !2881)
!2887 = !DILocation(line: 695, column: 12, scope: !689, inlinedAt: !2881)
!2888 = !DILocation(line: 697, column: 10, scope: !689, inlinedAt: !2881)
!2889 = !DILocation(line: 698, column: 11, scope: !689, inlinedAt: !2881)
!2890 = !DILocation(line: 696, column: 11, scope: !689, inlinedAt: !2881)
!2891 = !DILocation(line: 699, column: 13, scope: !962, inlinedAt: !2881)
!2892 = !DILocation(line: 699, column: 9, scope: !689, inlinedAt: !2881)
!2893 = !DILocation(line: 703, column: 25, scope: !965, inlinedAt: !2881)
!2894 = !DILocation(line: 703, column: 5, scope: !966, inlinedAt: !2881)
!2895 = !DILocation(line: 705, column: 13, scope: !970, inlinedAt: !2881)
!2896 = !DILocation(line: 700, column: 19, scope: !973, inlinedAt: !2881)
!2897 = !DILocation(line: 928, column: 23, scope: !753)
!2898 = !DILocation(line: 929, column: 17, scope: !753)
!2899 = !DILocation(line: 928, column: 36, scope: !753)
!2900 = !DILocation(line: 707, column: 19, scope: !979, inlinedAt: !2881)
!2901 = !DILocation(line: 705, column: 13, scope: !971, inlinedAt: !2881)
!2902 = !DILocation(line: 708, column: 22, scope: !983, inlinedAt: !2881)
!2903 = !DILocation(line: 708, column: 21, scope: !983, inlinedAt: !2881)
!2904 = !DILocation(line: 709, column: 22, scope: !986, inlinedAt: !2881)
!2905 = !DILocation(line: 709, column: 21, scope: !983, inlinedAt: !2881)
!2906 = !DILocation(line: 713, column: 15, scope: !989, inlinedAt: !2881)
!2907 = !DILocation(line: 713, column: 13, scope: !971, inlinedAt: !2881)
!2908 = !DILocation(line: 717, column: 18, scope: !971, inlinedAt: !2881)
!2909 = !DILocation(line: 703, column: 30, scope: !965, inlinedAt: !2881)
!2910 = !DILocation(line: 703, column: 41, scope: !965, inlinedAt: !2881)
!2911 = !DILocation(line: 696, column: 17, scope: !689, inlinedAt: !2881)
!2912 = !DILocation(line: 725, column: 14, scope: !689, inlinedAt: !2881)
!2913 = !DILocation(line: 726, column: 28, scope: !689, inlinedAt: !2881)
!2914 = !DILocation(line: 726, column: 34, scope: !689, inlinedAt: !2881)
!2915 = !DILocation(line: 695, column: 43, scope: !689, inlinedAt: !2881)
!2916 = !DILocation(line: 727, column: 22, scope: !1007, inlinedAt: !2881)
!2917 = !DILocation(line: 727, column: 41, scope: !1009, inlinedAt: !2881)
!2918 = !DILocation(line: 727, column: 38, scope: !1007, inlinedAt: !2881)
!2919 = !DILocation(line: 729, column: 15, scope: !1007, inlinedAt: !2881)
!2920 = !DILocation(line: 729, column: 9, scope: !1007, inlinedAt: !2881)
!2921 = !DILocation(line: 930, column: 32, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !753, file: !1, line: 930, column: 21)
!2923 = !DILocation(line: 931, column: 21, scope: !2922)
!2924 = !DILocation(line: 934, column: 17, scope: !757)
!2925 = !DILocation(line: 934, column: 34, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!2927 = !DILocation(line: 934, column: 31, scope: !757)
!2928 = !DILocation(line: 934, column: 44, scope: !757)
!2929 = !DILocation(line: 934, column: 17, scope: !750)
!2930 = !DILocation(line: 681, column: 33, scope: !586, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 938, column: 31, scope: !756)
!2932 = !DILocation(line: 681, column: 50, scope: !586, inlinedAt: !2931)
!2933 = !DILocation(line: 683, column: 43, scope: !586, inlinedAt: !2931)
!2934 = !DILocation(line: 683, column: 21, scope: !586, inlinedAt: !2931)
!2935 = !DILocation(line: 683, column: 15, scope: !586, inlinedAt: !2931)
!2936 = !DILocation(line: 684, column: 13, scope: !1119, inlinedAt: !2931)
!2937 = !DILocation(line: 684, column: 9, scope: !586, inlinedAt: !2931)
!2938 = !DILocation(line: 938, column: 27, scope: !756)
!2939 = !DILocation(line: 939, column: 17, scope: !756)
!2940 = !DILocation(line: 940, column: 21, scope: !756)
!2941 = !DILocation(line: 686, column: 12, scope: !586, inlinedAt: !2931)
!2942 = !DILocation(line: 682, column: 15, scope: !586, inlinedAt: !2931)
!2943 = !DILocation(line: 687, column: 5, scope: !1124, inlinedAt: !2931)
!2944 = !DILocation(line: 687, column: 5, scope: !1126, inlinedAt: !2931)
!2945 = !DILocation(line: 687, column: 5, scope: !595, inlinedAt: !2931)
!2946 = !DILocation(line: 687, column: 5, scope: !1132, inlinedAt: !2931)
!2947 = !DILocation(line: 938, column: 31, scope: !756)
!2948 = !DILocation(line: 940, column: 22, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !756, file: !1, line: 940, column: 21)
!2950 = !DILocation(line: 936, column: 28, scope: !756)
!2951 = !DILocation(line: 937, column: 29, scope: !756)
!2952 = !DILocation(line: 945, column: 23, scope: !756)
!2953 = !DILocation(line: 944, column: 26, scope: !756)
!2954 = !{!1136, !1129, i64 16}
!2955 = !DILocation(line: 951, column: 26, scope: !756)
!2956 = !DILocation(line: 952, column: 17, scope: !756)
!2957 = !DILocation(line: 953, column: 17, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 1)
!2959 = !DILocation(line: 953, column: 17, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !765, file: !1, line: 953, column: 17)
!2961 = !DILocation(line: 953, column: 17, scope: !765)
!2962 = !DILocation(line: 953, column: 17, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2960, file: !1, discriminator: 3)
!2964 = !DILocation(line: 941, column: 31, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 940, column: 25)
!2966 = !DILocation(line: 956, column: 33, scope: !2828)
!2967 = !DILocation(line: 956, column: 17, scope: !750)
!2968 = !DILocation(line: 957, column: 29, scope: !2828)
!2969 = !DILocation(line: 957, column: 17, scope: !2828)
!2970 = !DILocation(line: 958, column: 24, scope: !770)
!2971 = !DILocation(line: 958, column: 17, scope: !750)
!2972 = !DILocation(line: 959, column: 27, scope: !770)
!2973 = !DILocation(line: 959, column: 17, scope: !770)
!2974 = !DILocation(line: 960, column: 22, scope: !769)
!2975 = !DILocation(line: 960, column: 30, scope: !769)
!2976 = !DILocation(line: 960, column: 22, scope: !770)
!2977 = !DILocation(line: 961, column: 17, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !769, file: !1, line: 960, column: 39)
!2979 = !DILocation(line: 962, column: 27, scope: !2978)
!2980 = !DILocation(line: 963, column: 13, scope: !2978)
!2981 = !DILocation(line: 964, column: 27, scope: !768)
!2982 = !DILocation(line: 964, column: 33, scope: !768)
!2983 = !DILocation(line: 964, column: 22, scope: !769)
!2984 = !DILocation(line: 965, column: 50, scope: !767)
!2985 = !DILocation(line: 965, column: 43, scope: !767)
!2986 = !DILocation(line: 965, column: 24, scope: !767)
!2987 = !DILocation(line: 966, column: 38, scope: !767)
!2988 = !DILocation(line: 966, column: 42, scope: !767)
!2989 = !DILocation(line: 966, column: 24, scope: !767)
!2990 = !DILocation(line: 967, column: 42, scope: !767)
!2991 = !DILocation(line: 967, column: 40, scope: !767)
!2992 = !DILocation(line: 967, column: 24, scope: !767)
!2993 = !DILocation(line: 968, column: 23, scope: !767)
!2994 = !DILocation(line: 969, column: 31, scope: !767)
!2995 = !DILocation(line: 970, column: 28, scope: !767)
!2996 = !DILocation(line: 971, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !767, file: !1, line: 971, column: 21)
!2998 = !DILocation(line: 971, column: 21, scope: !767)
!2999 = !DILocation(line: 978, column: 26, scope: !767)
!3000 = !DILocation(line: 979, column: 37, scope: !767)
!3001 = !DILocation(line: 979, column: 26, scope: !767)
!3002 = !DILocation(line: 980, column: 33, scope: !767)
!3003 = !DILocation(line: 981, column: 17, scope: !767)
!3004 = !DILocation(line: 982, column: 17, scope: !767)
!3005 = !DILocation(line: 983, column: 33, scope: !767)
!3006 = !DILocation(line: 983, column: 37, scope: !767)
!3007 = !DILocation(line: 983, column: 26, scope: !767)
!3008 = !DILocation(line: 984, column: 37, scope: !767)
!3009 = !DILocation(line: 984, column: 26, scope: !767)
!3010 = !DILocation(line: 985, column: 39, scope: !767)
!3011 = !DILocation(line: 985, column: 28, scope: !767)
!3012 = !DILocation(line: 972, column: 21, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !1, line: 971, column: 34)
!3014 = !DILocation(line: 973, column: 30, scope: !3013)
!3015 = !DILocation(line: 974, column: 21, scope: !3013)
!3016 = !DILocation(line: 975, column: 31, scope: !3013)
!3017 = !DILocation(line: 988, column: 28, scope: !2830)
!3018 = !DILocation(line: 989, column: 26, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2830, file: !1, line: 989, column: 21)
!3020 = !DILocation(line: 989, column: 30, scope: !3019)
!3021 = !DILocation(line: 989, column: 21, scope: !2830)
!3022 = !DILocation(line: 990, column: 21, scope: !3019)
!3023 = !DILocation(line: 991, column: 26, scope: !2830)
!3024 = !DILocation(line: 993, column: 33, scope: !2830)
!3025 = !DILocation(line: 995, column: 28, scope: !2830)
!3026 = !DILocation(line: 995, column: 26, scope: !2830)
!3027 = !DILocation(line: 996, column: 37, scope: !2830)
!3028 = !DILocation(line: 996, column: 26, scope: !2830)
!3029 = !DILocation(line: 1000, column: 17, scope: !775)
!3030 = !DILocation(line: 1001, column: 24, scope: !775)
!3031 = !DILocation(line: 1003, column: 28, scope: !2800)
!3032 = !DILocation(line: 1003, column: 17, scope: !775)
!3033 = !DILocation(line: 1004, column: 30, scope: !2802)
!3034 = !DILocation(line: 1004, column: 21, scope: !2803)
!3035 = !DILocation(line: 1006, column: 25, scope: !2805)
!3036 = !DILocation(line: 1005, column: 30, scope: !2805)
!3037 = !DILocation(line: 1007, column: 34, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2805, file: !1, line: 1007, column: 25)
!3039 = !DILocation(line: 1007, column: 25, scope: !2805)
!3040 = !DILocation(line: 1008, column: 35, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !1, line: 1007, column: 43)
!3042 = !DILocation(line: 1009, column: 25, scope: !3041)
!3043 = !DILocation(line: 1011, column: 41, scope: !2805)
!3044 = !DILocation(line: 1011, column: 30, scope: !2805)
!3045 = !DILocation(line: 1012, column: 17, scope: !2805)
!3046 = !DILocation(line: 1013, column: 41, scope: !2807)
!3047 = !DILocation(line: 1013, column: 61, scope: !2807)
!3048 = !DILocation(line: 1013, column: 46, scope: !2807)
!3049 = !DILocation(line: 1013, column: 21, scope: !2807)
!3050 = !DILocation(line: 1014, column: 32, scope: !2807)
!3051 = !DILocation(line: 1013, column: 21, scope: !2803)
!3052 = !DILocation(line: 1025, column: 39, scope: !2822)
!3053 = !DILocation(line: 1025, column: 32, scope: !2822)
!3054 = !DILocation(line: 634, column: 33, scope: !854, inlinedAt: !2820)
!3055 = !DILocation(line: 636, column: 29, scope: !859, inlinedAt: !2820)
!3056 = !DILocation(line: 636, column: 9, scope: !854, inlinedAt: !2820)
!3057 = !DILocation(line: 637, column: 16, scope: !3058, inlinedAt: !2820)
!3058 = distinct !DILexicalBlock(scope: !859, file: !1, line: 636, column: 46)
!3059 = !DILocation(line: 637, column: 9, scope: !3058, inlinedAt: !2820)
!3060 = !DILocation(line: 639, column: 19, scope: !858, inlinedAt: !2820)
!3061 = !DILocation(line: 640, column: 17, scope: !2826, inlinedAt: !2820)
!3062 = !DILocation(line: 640, column: 13, scope: !858, inlinedAt: !2820)
!3063 = !DILocation(line: 641, column: 19, scope: !2825, inlinedAt: !2820)
!3064 = !DILocation(line: 642, column: 21, scope: !3065, inlinedAt: !2820)
!3065 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 642, column: 17)
!3066 = !DILocation(line: 642, column: 17, scope: !2825, inlinedAt: !2820)
!3067 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 643, column: 17, scope: !3069, inlinedAt: !2820)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !1, line: 642, column: 30)
!3070 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !3068)
!3071 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !3068)
!3072 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !3068)
!3073 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !3068)
!3074 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !3068)
!3075 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !3068)
!3076 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !3068)
!3077 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !3068)
!3078 = !DILocation(line: 1026, column: 21, scope: !2822)
!3079 = !DILocation(line: 646, column: 38, scope: !3080, inlinedAt: !2820)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !1, line: 645, column: 20)
!3081 = !DILocation(line: 648, column: 9, scope: !2825, inlinedAt: !2820)
!3082 = !DILocation(line: 1026, column: 21, scope: !2821)
!3083 = !DILocation(line: 649, column: 16, scope: !858, inlinedAt: !2820)
!3084 = !DILocation(line: 649, column: 37, scope: !858, inlinedAt: !2820)
!3085 = !DILocation(line: 649, column: 9, scope: !858, inlinedAt: !2820)
!3086 = !DILocation(line: 1031, column: 31, scope: !2821)
!3087 = !DILocation(line: 1033, column: 24, scope: !775)
!3088 = !DILocation(line: 1035, column: 13, scope: !775)
!3089 = !DILocation(line: 1015, column: 31, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 1014, column: 41)
!3091 = !DILocation(line: 1019, column: 31, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 1018, column: 22)
!3093 = !DILocation(line: 1020, column: 32, scope: !3092)
!3094 = !DILocation(line: 1020, column: 30, scope: !3092)
!3095 = !DILocation(line: 1021, column: 28, scope: !3092)
!3096 = !DILocation(line: 1021, column: 41, scope: !3092)
!3097 = !DILocation(line: 1036, column: 44, scope: !779)
!3098 = !DILocation(line: 1036, column: 50, scope: !779)
!3099 = !DILocation(line: 1036, column: 39, scope: !779)
!3100 = !DILocation(line: 1038, column: 55, scope: !779)
!3101 = !DILocation(line: 1037, column: 38, scope: !779)
!3102 = !DILocation(line: 1036, column: 28, scope: !779)
!3103 = !DILocation(line: 1038, column: 48, scope: !779)
!3104 = !DILocation(line: 1038, column: 28, scope: !779)
!3105 = !DILocation(line: 1039, column: 47, scope: !779)
!3106 = !DILocation(line: 1039, column: 28, scope: !779)
!3107 = !DILocation(line: 1040, column: 23, scope: !779)
!3108 = !DILocation(line: 1052, column: 31, scope: !779)
!3109 = !DILocation(line: 1043, column: 28, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !779, file: !1, line: 1043, column: 21)
!3111 = !DILocation(line: 1043, column: 21, scope: !779)
!3112 = !DILocation(line: 1044, column: 31, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !1, line: 1043, column: 37)
!3114 = !DILocation(line: 1045, column: 37, scope: !3113)
!3115 = !DILocation(line: 1045, column: 30, scope: !3113)
!3116 = !DILocation(line: 1046, column: 21, scope: !3113)
!3117 = !DILocation(line: 1048, column: 26, scope: !779)
!3118 = !DILocation(line: 1053, column: 41, scope: !2816)
!3119 = !DILocation(line: 1049, column: 26, scope: !779)
!3120 = !DILocation(line: 1050, column: 37, scope: !779)
!3121 = !DILocation(line: 1050, column: 26, scope: !779)
!3122 = !DILocation(line: 1051, column: 39, scope: !779)
!3123 = !DILocation(line: 1054, column: 43, scope: !2816)
!3124 = !DILocation(line: 1052, column: 35, scope: !779)
!3125 = !DILocation(line: 1051, column: 30, scope: !779)
!3126 = !DILocation(line: 1051, column: 28, scope: !779)
!3127 = !DILocation(line: 1054, column: 47, scope: !2816)
!3128 = !DILocation(line: 1054, column: 32, scope: !2816)
!3129 = !DILocation(line: 1053, column: 21, scope: !2816)
!3130 = !DILocation(line: 1055, column: 37, scope: !2816)
!3131 = !DILocation(line: 1053, column: 21, scope: !779)
!3132 = !DILocation(line: 1059, column: 25, scope: !2814)
!3133 = !DILocation(line: 1059, column: 25, scope: !2815)
!3134 = !DILocation(line: 1063, column: 21, scope: !2815)
!3135 = !DILocation(line: 1064, column: 17, scope: !2815)
!3136 = !DILocation(line: 1065, column: 28, scope: !779)
!3137 = !DILocation(line: 1065, column: 26, scope: !779)
!3138 = !DILocation(line: 1066, column: 24, scope: !779)
!3139 = !DILocation(line: 1066, column: 37, scope: !779)
!3140 = !DILocation(line: 1074, column: 32, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2810, file: !1, line: 1074, column: 21)
!3142 = !DILocation(line: 1068, column: 26, scope: !2811)
!3143 = !DILocation(line: 1068, column: 17, scope: !775)
!3144 = !DILocation(line: 1069, column: 37, scope: !2810)
!3145 = !DILocation(line: 1069, column: 26, scope: !2810)
!3146 = !DILocation(line: 1070, column: 33, scope: !2810)
!3147 = !DILocation(line: 1073, column: 27, scope: !2810)
!3148 = !DILocation(line: 1073, column: 31, scope: !2810)
!3149 = !DILocation(line: 1002, column: 19, scope: !775)
!3150 = !DILocation(line: 1074, column: 24, scope: !3141)
!3151 = !DILocation(line: 1074, column: 36, scope: !3141)
!3152 = !DILocation(line: 1074, column: 39, scope: !3141)
!3153 = !DILocation(line: 1074, column: 43, scope: !3141)
!3154 = !DILocation(line: 1074, column: 21, scope: !2810)
!3155 = !DILocation(line: 1075, column: 24, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3141, file: !1, line: 1074, column: 52)
!3157 = !DILocation(line: 1075, column: 27, scope: !3156)
!3158 = !DILocation(line: 1076, column: 25, scope: !3156)
!3159 = !DILocation(line: 1077, column: 30, scope: !3156)
!3160 = !DILocation(line: 1078, column: 17, scope: !3156)
!3161 = !DILocation(line: 1081, column: 18, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !746, file: !1, line: 1081, column: 13)
!3163 = !DILocation(line: 1081, column: 23, scope: !3162)
!3164 = !DILocation(line: 1081, column: 13, scope: !746)
!3165 = !DILocation(line: 1082, column: 22, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !1, line: 1082, column: 17)
!3167 = distinct !DILexicalBlock(scope: !3162, file: !1, line: 1081, column: 32)
!3168 = !DILocation(line: 1082, column: 29, scope: !3166)
!3169 = !DILocation(line: 1082, column: 17, scope: !3167)
!3170 = !DILocation(line: 1083, column: 17, scope: !3166)
!3171 = !DILocation(line: 1084, column: 29, scope: !3167)
!3172 = !DILocation(line: 1084, column: 22, scope: !3167)
!3173 = !DILocation(line: 1085, column: 13, scope: !3167)
!3174 = !DILocation(line: 1089, column: 1, scope: !740)
!3175 = !DILocation(line: 577, column: 22, scope: !783)
!3176 = !DILocation(line: 577, column: 29, scope: !783)
!3177 = !DILocation(line: 577, column: 53, scope: !783)
!3178 = !DILocation(line: 579, column: 11, scope: !783)
!3179 = !DILocation(line: 580, column: 9, scope: !783)
!3180 = !DILocation(line: 582, column: 18, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !1, line: 582, column: 13)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !1, line: 581, column: 14)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 581, column: 5)
!3184 = distinct !DILexicalBlock(scope: !783, file: !1, line: 581, column: 5)
!3185 = !DILocation(line: 536, column: 12, scope: !816, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 345, column: 11, scope: !542, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 596, column: 18, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !1, line: 596, column: 17)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 592, column: 16)
!3190 = distinct !DILexicalBlock(scope: !3181, file: !1, line: 587, column: 20)
!3191 = !DILocation(line: 391, column: 14, scope: !1070, inlinedAt: !3187)
!3192 = !DILocation(line: 154, column: 14, scope: !1085, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 393, column: 21, scope: !542, inlinedAt: !3187)
!3194 = !DILocation(line: 581, column: 5, scope: !783)
!3195 = !DILocation(line: 582, column: 13, scope: !3182)
!3196 = !DILocation(line: 416, column: 16, scope: !796, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 585, column: 20, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3181, file: !1, line: 582, column: 50)
!3199 = !DILocation(line: 416, column: 23, scope: !796, inlinedAt: !3197)
!3200 = !DILocation(line: 416, column: 47, scope: !796, inlinedAt: !3197)
!3201 = !DILocation(line: 420, column: 5, scope: !796, inlinedAt: !3197)
!3202 = !DILocation(line: 424, column: 9, scope: !796, inlinedAt: !3197)
!3203 = !DILocation(line: 426, column: 14, scope: !3204, inlinedAt: !3197)
!3204 = distinct !DILexicalBlock(scope: !796, file: !1, line: 426, column: 9)
!3205 = !DILocation(line: 426, column: 9, scope: !3204, inlinedAt: !3197)
!3206 = !DILocation(line: 426, column: 9, scope: !796, inlinedAt: !3197)
!3207 = !DILocation(line: 418, column: 15, scope: !796, inlinedAt: !3197)
!3208 = !DILocation(line: 428, column: 9, scope: !3209, inlinedAt: !3197)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !1, line: 426, column: 31)
!3210 = !DILocation(line: 429, column: 5, scope: !3209, inlinedAt: !3197)
!3211 = !DILocation(line: 432, column: 43, scope: !3212, inlinedAt: !3197)
!3212 = distinct !DILexicalBlock(scope: !3204, file: !1, line: 431, column: 5)
!3213 = !DILocation(line: 432, column: 18, scope: !3212, inlinedAt: !3197)
!3214 = !DILocation(line: 433, column: 20, scope: !3215, inlinedAt: !3197)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !1, line: 433, column: 13)
!3216 = !DILocation(line: 433, column: 13, scope: !3212, inlinedAt: !3197)
!3217 = !DILocation(line: 585, column: 20, scope: !3198)
!3218 = !DILocation(line: 436, column: 9, scope: !3219, inlinedAt: !3197)
!3219 = distinct !DILexicalBlock(scope: !796, file: !1, line: 436, column: 9)
!3220 = !DILocation(line: 436, column: 9, scope: !796, inlinedAt: !3197)
!3221 = !DILocation(line: 420, column: 16, scope: !796, inlinedAt: !3197)
!3222 = !DILocation(line: 438, column: 15, scope: !3223, inlinedAt: !3197)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 437, column: 5)
!3224 = !DILocation(line: 419, column: 17, scope: !796, inlinedAt: !3197)
!3225 = !DILocation(line: 439, column: 17, scope: !3226, inlinedAt: !3197)
!3226 = distinct !DILexicalBlock(scope: !3223, file: !1, line: 439, column: 13)
!3227 = !DILocation(line: 439, column: 13, scope: !3223, inlinedAt: !3197)
!3228 = !DILocation(line: 445, column: 15, scope: !3229, inlinedAt: !3197)
!3229 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 444, column: 5)
!3230 = !DILocation(line: 446, column: 17, scope: !3231, inlinedAt: !3197)
!3231 = distinct !DILexicalBlock(scope: !3229, file: !1, line: 446, column: 13)
!3232 = !DILocation(line: 446, column: 13, scope: !3229, inlinedAt: !3197)
!3233 = !DILocation(line: 449, column: 18, scope: !3229, inlinedAt: !3197)
!3234 = !DILocation(line: 449, column: 16, scope: !3229, inlinedAt: !3197)
!3235 = !{!1129, !1129, i64 0}
!3236 = !DILocation(line: 452, column: 5, scope: !3237, inlinedAt: !3197)
!3237 = !DILexicalBlockFile(scope: !805, file: !1, discriminator: 1)
!3238 = !DILocation(line: 452, column: 5, scope: !808, inlinedAt: !3197)
!3239 = !DILocation(line: 452, column: 5, scope: !805, inlinedAt: !3197)
!3240 = !DILocation(line: 452, column: 5, scope: !3241, inlinedAt: !3197)
!3241 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 4)
!3242 = !DILocation(line: 452, column: 5, scope: !3243, inlinedAt: !3197)
!3243 = distinct !DILexicalBlock(scope: !807, file: !1, line: 452, column: 5)
!3244 = !DILocation(line: 452, column: 5, scope: !807, inlinedAt: !3197)
!3245 = !DILocation(line: 452, column: 5, scope: !3246, inlinedAt: !3197)
!3246 = !DILexicalBlockFile(scope: !3243, file: !1, discriminator: 6)
!3247 = !DILocation(line: 453, column: 9, scope: !3248, inlinedAt: !3197)
!3248 = distinct !DILexicalBlock(scope: !796, file: !1, line: 453, column: 9)
!3249 = !DILocation(line: 453, column: 18, scope: !3248, inlinedAt: !3197)
!3250 = !DILocation(line: 453, column: 16, scope: !3248, inlinedAt: !3197)
!3251 = !DILocation(line: 453, column: 9, scope: !796, inlinedAt: !3197)
!3252 = !DILocation(line: 455, column: 65, scope: !3253, inlinedAt: !3197)
!3253 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 453, column: 24)
!3254 = !DILocation(line: 456, column: 64, scope: !3253, inlinedAt: !3197)
!3255 = !DILocation(line: 455, column: 32, scope: !3253, inlinedAt: !3197)
!3256 = !DILocation(line: 455, column: 30, scope: !3253, inlinedAt: !3197)
!3257 = !DILocation(line: 457, column: 34, scope: !3258, inlinedAt: !3197)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 457, column: 13)
!3259 = !DILocation(line: 457, column: 13, scope: !3253, inlinedAt: !3197)
!3260 = !DILocation(line: 459, column: 16, scope: !3253, inlinedAt: !3197)
!3261 = !DILocation(line: 460, column: 5, scope: !3253, inlinedAt: !3197)
!3262 = !DILocation(line: 462, column: 30, scope: !3248, inlinedAt: !3197)
!3263 = !DILocation(line: 464, column: 20, scope: !796, inlinedAt: !3197)
!3264 = !DILocation(line: 464, column: 5, scope: !796, inlinedAt: !3197)
!3265 = !DILocation(line: 465, column: 5, scope: !796, inlinedAt: !3197)
!3266 = !DILocation(line: 465, column: 15, scope: !796, inlinedAt: !3197)
!3267 = !DILocation(line: 466, column: 16, scope: !3268, inlinedAt: !3197)
!3268 = distinct !DILexicalBlock(scope: !796, file: !1, line: 466, column: 9)
!3269 = !DILocation(line: 466, column: 9, scope: !796, inlinedAt: !3197)
!3270 = !DILocation(line: 468, column: 5, scope: !3271, inlinedAt: !3197)
!3271 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 1)
!3272 = !DILocation(line: 468, column: 5, scope: !3273, inlinedAt: !3197)
!3273 = distinct !DILexicalBlock(scope: !810, file: !1, line: 468, column: 5)
!3274 = !DILocation(line: 468, column: 5, scope: !810, inlinedAt: !3197)
!3275 = !DILocation(line: 468, column: 5, scope: !3276, inlinedAt: !3197)
!3276 = !DILexicalBlockFile(scope: !3273, file: !1, discriminator: 3)
!3277 = !DILocation(line: 472, column: 5, scope: !3278, inlinedAt: !3197)
!3278 = distinct !DILexicalBlock(scope: !814, file: !1, line: 472, column: 5)
!3279 = !DILocation(line: 472, column: 5, scope: !814, inlinedAt: !3197)
!3280 = !DILocation(line: 472, column: 5, scope: !3281, inlinedAt: !3197)
!3281 = !DILexicalBlockFile(scope: !3278, file: !1, discriminator: 6)
!3282 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 473, column: 12, scope: !796, inlinedAt: !3197)
!3284 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !3283)
!3285 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !3283)
!3286 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !3283)
!3287 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !3283)
!3288 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !3283)
!3289 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !3283)
!3290 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !3283)
!3291 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !3283)
!3292 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !3283)
!3293 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !3283)
!3294 = !DILocation(line: 473, column: 5, scope: !796, inlinedAt: !3197)
!3295 = !DILocation(line: 474, column: 1, scope: !796, inlinedAt: !3197)
!3296 = !DILocation(line: 586, column: 13, scope: !3198)
!3297 = !DILocation(line: 590, column: 50, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 587, column: 54)
!3299 = !DILocation(line: 589, column: 20, scope: !3298)
!3300 = !DILocation(line: 591, column: 13, scope: !3298)
!3301 = !DILocation(line: 341, column: 15, scope: !542, inlinedAt: !3187)
!3302 = !DILocation(line: 535, column: 38, scope: !816, inlinedAt: !3186)
!3303 = !DILocation(line: 344, column: 9, scope: !542, inlinedAt: !3187)
!3304 = !DILocation(line: 346, column: 25, scope: !542, inlinedAt: !3187)
!3305 = !DILocation(line: 347, column: 9, scope: !542, inlinedAt: !3187)
!3306 = !DILocation(line: 535, column: 38, scope: !816, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 350, column: 15, scope: !1032, inlinedAt: !3187)
!3308 = !DILocation(line: 536, column: 12, scope: !816, inlinedAt: !3307)
!3309 = !DILocation(line: 344, column: 14, scope: !542, inlinedAt: !3187)
!3310 = !DILocation(line: 351, column: 17, scope: !1037, inlinedAt: !3187)
!3311 = !DILocation(line: 536, column: 12, scope: !816, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 356, column: 15, scope: !1032, inlinedAt: !3187)
!3313 = !DILocation(line: 351, column: 13, scope: !1032, inlinedAt: !3187)
!3314 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 352, column: 13, scope: !1041, inlinedAt: !3187)
!3316 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3315)
!3317 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3315)
!3318 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 353, column: 13, scope: !1041, inlinedAt: !3187)
!3320 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3319)
!3321 = !DILocation(line: 542, column: 20, scope: !819, inlinedAt: !3319)
!3322 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3319)
!3323 = !DILocation(line: 354, column: 13, scope: !1041, inlinedAt: !3187)
!3324 = !DILocation(line: 535, column: 38, scope: !816, inlinedAt: !3312)
!3325 = !DILocation(line: 344, column: 19, scope: !542, inlinedAt: !3187)
!3326 = !DILocation(line: 357, column: 17, scope: !1051, inlinedAt: !3187)
!3327 = !DILocation(line: 357, column: 13, scope: !1032, inlinedAt: !3187)
!3328 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 358, column: 13, scope: !1055, inlinedAt: !3187)
!3330 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3329)
!3331 = !DILocation(line: 542, column: 20, scope: !819, inlinedAt: !3329)
!3332 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3329)
!3333 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 359, column: 13, scope: !1055, inlinedAt: !3187)
!3335 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3334)
!3336 = !DILocation(line: 542, column: 20, scope: !819, inlinedAt: !3334)
!3337 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3334)
!3338 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 360, column: 13, scope: !1055, inlinedAt: !3187)
!3340 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3339)
!3341 = !DILocation(line: 542, column: 20, scope: !819, inlinedAt: !3339)
!3342 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3339)
!3343 = !DILocation(line: 361, column: 13, scope: !1055, inlinedAt: !3187)
!3344 = !DILocation(line: 541, column: 27, scope: !819, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 388, column: 9, scope: !1066, inlinedAt: !3187)
!3346 = !DILocation(line: 541, column: 48, scope: !819, inlinedAt: !3345)
!3347 = !DILocation(line: 542, column: 20, scope: !819, inlinedAt: !3345)
!3348 = !DILocation(line: 542, column: 5, scope: !819, inlinedAt: !3345)
!3349 = !DILocation(line: 389, column: 9, scope: !1066, inlinedAt: !3187)
!3350 = !DILocation(line: 391, column: 23, scope: !1070, inlinedAt: !3187)
!3351 = !DILocation(line: 391, column: 9, scope: !542, inlinedAt: !3187)
!3352 = !DILocation(line: 392, column: 9, scope: !1070, inlinedAt: !3187)
!3353 = !DILocation(line: 150, column: 24, scope: !562, inlinedAt: !3193)
!3354 = !DILocation(line: 150, column: 38, scope: !562, inlinedAt: !3193)
!3355 = !DILocation(line: 150, column: 61, scope: !562, inlinedAt: !3193)
!3356 = !DILocation(line: 152, column: 28, scope: !562, inlinedAt: !3193)
!3357 = !DILocation(line: 152, column: 11, scope: !562, inlinedAt: !3193)
!3358 = !DILocation(line: 153, column: 10, scope: !1082, inlinedAt: !3193)
!3359 = !DILocation(line: 153, column: 9, scope: !562, inlinedAt: !3193)
!3360 = !DILocation(line: 157, column: 5, scope: !562, inlinedAt: !3193)
!3361 = !DILocation(line: 158, column: 5, scope: !562, inlinedAt: !3193)
!3362 = !DILocation(line: 158, column: 17, scope: !562, inlinedAt: !3193)
!3363 = !DILocation(line: 393, column: 19, scope: !542, inlinedAt: !3187)
!3364 = !DILocation(line: 154, column: 19, scope: !1085, inlinedAt: !3193)
!3365 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 597, column: 24, scope: !3188)
!3367 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !3366)
!3368 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !3366)
!3369 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !3366)
!3370 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !3366)
!3371 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !3366)
!3372 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !3366)
!3373 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !3366)
!3374 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !3366)
!3375 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !3366)
!3376 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !3366)
!3377 = !DILocation(line: 597, column: 17, scope: !3188)
!3378 = !DILocation(line: 601, column: 14, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !783, file: !1, line: 601, column: 9)
!3380 = !DILocation(line: 601, column: 22, scope: !3379)
!3381 = !DILocation(line: 601, column: 30, scope: !3379)
!3382 = !DILocation(line: 601, column: 37, scope: !3379)
!3383 = !DILocation(line: 601, column: 41, scope: !3379)
!3384 = !DILocation(line: 601, column: 50, scope: !3379)
!3385 = !DILocation(line: 601, column: 45, scope: !3379)
!3386 = !DILocation(line: 601, column: 9, scope: !783)
!3387 = !DILocation(line: 602, column: 38, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 602, column: 13)
!3389 = distinct !DILexicalBlock(scope: !3379, file: !1, line: 601, column: 68)
!3390 = !DILocation(line: 602, column: 14, scope: !3388)
!3391 = !DILocation(line: 602, column: 13, scope: !3389)
!3392 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 603, column: 20, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !1, line: 602, column: 71)
!3395 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !3393)
!3396 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !3393)
!3397 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !3393)
!3398 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !3393)
!3399 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !3393)
!3400 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !3393)
!3401 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !3393)
!3402 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !3393)
!3403 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !3393)
!3404 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !3393)
!3405 = !DILocation(line: 603, column: 13, scope: !3394)
!3406 = !DILocation(line: 609, column: 23, scope: !794)
!3407 = !DILocation(line: 609, column: 18, scope: !794)
!3408 = !DILocation(line: 609, column: 9, scope: !783)
!3409 = !DILocation(line: 612, column: 41, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 612, column: 9)
!3411 = distinct !DILexicalBlock(scope: !793, file: !1, line: 612, column: 9)
!3412 = !DILocation(line: 612, column: 9, scope: !3411)
!3413 = !DILocation(line: 548, column: 44, scope: !847, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 613, column: 28, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3410, file: !1, line: 613, column: 17)
!3416 = !DILocation(line: 614, column: 27, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3415, file: !1, line: 613, column: 44)
!3418 = !DILocation(line: 550, column: 9, scope: !847, inlinedAt: !3414)
!3419 = !DILocation(line: 552, column: 12, scope: !3420, inlinedAt: !3414)
!3420 = distinct !DILexicalBlock(scope: !847, file: !1, line: 552, column: 9)
!3421 = !DILocation(line: 552, column: 9, scope: !847, inlinedAt: !3414)
!3422 = !DILocation(line: 555, column: 12, scope: !3423, inlinedAt: !3414)
!3423 = distinct !DILexicalBlock(scope: !847, file: !1, line: 555, column: 9)
!3424 = !DILocation(line: 555, column: 9, scope: !847, inlinedAt: !3414)
!3425 = !DILocation(line: 558, column: 12, scope: !3426, inlinedAt: !3414)
!3426 = distinct !DILexicalBlock(scope: !847, file: !1, line: 558, column: 9)
!3427 = !DILocation(line: 558, column: 9, scope: !847, inlinedAt: !3414)
!3428 = !DILocation(line: 560, column: 17, scope: !3429, inlinedAt: !3414)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !1, line: 560, column: 14)
!3430 = !DILocation(line: 560, column: 14, scope: !3426, inlinedAt: !3414)
!3431 = !DILocation(line: 562, column: 17, scope: !3432, inlinedAt: !3414)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 562, column: 14)
!3433 = !DILocation(line: 562, column: 14, scope: !3429, inlinedAt: !3414)
!3434 = !DILocation(line: 613, column: 28, scope: !3415)
!3435 = !DILocation(line: 566, column: 23, scope: !847, inlinedAt: !3414)
!3436 = !DILocation(line: 551, column: 9, scope: !847, inlinedAt: !3414)
!3437 = !DILocation(line: 567, column: 5, scope: !3438, inlinedAt: !3414)
!3438 = distinct !DILexicalBlock(scope: !847, file: !1, line: 567, column: 5)
!3439 = !DILocation(line: 568, column: 13, scope: !3440, inlinedAt: !3414)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 568, column: 13)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !1, line: 567, column: 5)
!3442 = !DILocation(line: 568, column: 25, scope: !3440, inlinedAt: !3414)
!3443 = !DILocation(line: 568, column: 47, scope: !3440, inlinedAt: !3414)
!3444 = !DILocation(line: 568, column: 32, scope: !3440, inlinedAt: !3414)
!3445 = !DILocation(line: 567, column: 30, scope: !3441, inlinedAt: !3414)
!3446 = !DILocation(line: 612, column: 47, scope: !3410)
!3447 = !DILocation(line: 610, column: 24, scope: !793)
!3448 = !DILocation(line: 618, column: 9, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !783, file: !1, line: 618, column: 9)
!3450 = !DILocation(line: 618, column: 9, scope: !783)
!3451 = !DILocation(line: 621, column: 22, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3449, file: !1, line: 618, column: 18)
!3453 = !DILocation(line: 626, column: 31, scope: !3452)
!3454 = !DILocation(line: 626, column: 46, scope: !3452)
!3455 = !DILocation(line: 626, column: 53, scope: !3452)
!3456 = !DILocation(line: 621, column: 9, scope: !3452)
!3457 = !DILocation(line: 187, column: 10, scope: !581, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 627, column: 16, scope: !3452)
!3459 = !DILocation(line: 187, column: 25, scope: !581, inlinedAt: !3458)
!3460 = !DILocation(line: 188, column: 14, scope: !1092, inlinedAt: !3458)
!3461 = !DILocation(line: 188, column: 17, scope: !1092, inlinedAt: !3458)
!3462 = !DILocation(line: 190, column: 10, scope: !581, inlinedAt: !3458)
!3463 = !DILocation(line: 188, column: 25, scope: !1092, inlinedAt: !3458)
!3464 = !DILocation(line: 188, column: 33, scope: !1092, inlinedAt: !3458)
!3465 = !DILocation(line: 188, column: 37, scope: !1092, inlinedAt: !3458)
!3466 = !DILocation(line: 188, column: 9, scope: !581, inlinedAt: !3458)
!3467 = !DILocation(line: 189, column: 9, scope: !1092, inlinedAt: !3458)
!3468 = !DILocation(line: 190, column: 14, scope: !581, inlinedAt: !3458)
!3469 = !DILocation(line: 627, column: 9, scope: !3452)
!3470 = !DILocation(line: 631, column: 1, scope: !783)
!3471 = !DILocation(line: 487, column: 31, scope: !823)
!3472 = !DILocation(line: 487, column: 48, scope: !823)
!3473 = !DILocation(line: 489, column: 15, scope: !823)
!3474 = !DILocation(line: 489, column: 33, scope: !823)
!3475 = !DILocation(line: 489, column: 49, scope: !823)
!3476 = !DILocation(line: 495, column: 10, scope: !823)
!3477 = !DILocation(line: 496, column: 12, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !823, file: !1, line: 496, column: 9)
!3479 = !DILocation(line: 496, column: 9, scope: !823)
!3480 = !DILocation(line: 499, column: 22, scope: !823)
!3481 = !DILocation(line: 499, column: 10, scope: !823)
!3482 = !DILocation(line: 492, column: 9, scope: !823)
!3483 = !DILocation(line: 505, column: 22, scope: !823)
!3484 = !DILocation(line: 505, column: 11, scope: !823)
!3485 = !DILocation(line: 493, column: 10, scope: !823)
!3486 = !DILocation(line: 506, column: 13, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !823, file: !1, line: 506, column: 9)
!3488 = !DILocation(line: 506, column: 19, scope: !3487)
!3489 = !DILocation(line: 507, column: 31, scope: !3487)
!3490 = !DILocation(line: 507, column: 27, scope: !3487)
!3491 = !DILocation(line: 507, column: 9, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !1, discriminator: 4)
!3493 = !DILexicalBlockFile(scope: !3487, file: !1, discriminator: 3)
!3494 = !DILocation(line: 507, column: 63, scope: !3487)
!3495 = !DILocation(line: 506, column: 9, scope: !823)
!3496 = !DILocation(line: 508, column: 40, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3487, file: !1, line: 507, column: 77)
!3498 = !DILocation(line: 508, column: 9, scope: !3497)
!3499 = !DILocation(line: 509, column: 9, scope: !3497)
!3500 = !DILocation(line: 512, column: 14, scope: !823)
!3501 = !DILocation(line: 514, column: 16, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !823, file: !1, line: 514, column: 9)
!3503 = !DILocation(line: 514, column: 9, scope: !823)
!3504 = !DILocation(line: 517, column: 5, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !833, file: !1, discriminator: 1)
!3506 = !DILocation(line: 517, column: 5, scope: !836)
!3507 = !DILocation(line: 517, column: 5, scope: !833)
!3508 = !DILocation(line: 517, column: 5, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 4)
!3510 = !DILocation(line: 517, column: 5, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !835, file: !1, line: 517, column: 5)
!3512 = !DILocation(line: 517, column: 5, scope: !835)
!3513 = !DILocation(line: 517, column: 5, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3511, file: !1, discriminator: 6)
!3515 = !DILocation(line: 518, column: 16, scope: !823)
!3516 = !DILocation(line: 519, column: 28, scope: !823)
!3517 = !DILocation(line: 520, column: 9, scope: !823)
!3518 = !DILocation(line: 521, column: 13, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 521, column: 13)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !1, line: 520, column: 18)
!3521 = distinct !DILexicalBlock(scope: !823, file: !1, line: 520, column: 9)
!3522 = !DILocation(line: 521, column: 49, scope: !3519)
!3523 = !DILocation(line: 521, column: 13, scope: !3520)
!3524 = !DILocation(line: 528, column: 5, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !840, file: !1, line: 528, column: 5)
!3526 = !DILocation(line: 528, column: 5, scope: !840)
!3527 = !DILocation(line: 528, column: 5, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3525, file: !1, discriminator: 6)
!3529 = !DILocation(line: 529, column: 5, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !845, file: !1, discriminator: 4)
!3531 = !DILocation(line: 529, column: 5, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !845, file: !1, line: 529, column: 5)
!3533 = !DILocation(line: 529, column: 5, scope: !845)
!3534 = !DILocation(line: 529, column: 5, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3532, file: !1, discriminator: 6)
!3536 = !DILocation(line: 530, column: 21, scope: !823)
!3537 = !DILocation(line: 530, column: 5, scope: !823)
