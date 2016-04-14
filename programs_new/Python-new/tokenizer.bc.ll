; ModuleID = 'programs_new/Python-new/tokenizer.bc.ll'
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

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

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromString(i8* %str, i32 %exec_input) #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %str.addr = alloca i8*, align 8
  %exec_input.addr = alloca i32, align 4
  %tok = alloca %struct.tok_state*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !443, metadata !898), !dbg !899
  store i32 %exec_input, i32* %exec_input.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %exec_input.addr, metadata !444, metadata !898), !dbg !902
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !903
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !903
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !445, metadata !898), !dbg !904
  %call = call %struct.tok_state* @tok_new(), !dbg !905
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8, !dbg !904, !tbaa !894
  %1 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !906, !tbaa !894
  %cmp = icmp eq %struct.tok_state* %1, null, !dbg !908
  br i1 %cmp, label %if.then, label %if.end, !dbg !909

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !910
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !910

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !911, !tbaa !894
  %3 = load i32, i32* %exec_input.addr, align 4, !dbg !912, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !913, !tbaa !894
  %call1 = call i8* @decode_str(i8* %2, i32 %3, %struct.tok_state* %4), !dbg !914
  store i8* %call1, i8** %str.addr, align 8, !dbg !915, !tbaa !894
  %5 = load i8*, i8** %str.addr, align 8, !dbg !916, !tbaa !894
  %cmp2 = icmp eq i8* %5, null, !dbg !918
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !919

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !920, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %6), !dbg !922
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !923

if.end.4:                                         ; preds = %if.end
  %7 = load i8*, i8** %str.addr, align 8, !dbg !924, !tbaa !894
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !925, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 2, !dbg !926
  store i8* %7, i8** %inp, align 8, !dbg !927, !tbaa !928
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !930, !tbaa !894
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 3, !dbg !931
  store i8* %7, i8** %end, align 8, !dbg !932, !tbaa !933
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !934, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 1, !dbg !935
  store i8* %7, i8** %cur, align 8, !dbg !936, !tbaa !937
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !938, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 0, !dbg !939
  store i8* %7, i8** %buf, align 8, !dbg !940, !tbaa !941
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !942, !tbaa !894
  store %struct.tok_state* %12, %struct.tok_state** %retval, !dbg !943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !943

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %13 = bitcast %struct.tok_state** %tok to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !944
  %14 = load %struct.tok_state*, %struct.tok_state** %retval, !dbg !944
  ret %struct.tok_state* %14, !dbg !944
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal %struct.tok_state* @tok_new() #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %tok = alloca %struct.tok_state*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !945
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !945
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !527, metadata !898), !dbg !946
  %call = call i8* @PyMem_Malloc(i64 992), !dbg !947
  %1 = bitcast i8* %call to %struct.tok_state*, !dbg !948
  store %struct.tok_state* %1, %struct.tok_state** %tok, align 8, !dbg !946, !tbaa !894
  %2 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !949, !tbaa !894
  %cmp = icmp eq %struct.tok_state* %2, null, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !953
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !953

if.end:                                           ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !954, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 4, !dbg !955
  store i8* null, i8** %start, align 8, !dbg !956, !tbaa !957
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !958, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 2, !dbg !959
  store i8* null, i8** %inp, align 8, !dbg !960, !tbaa !928
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !961, !tbaa !894
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 3, !dbg !962
  store i8* null, i8** %end, align 8, !dbg !963, !tbaa !933
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !964, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 1, !dbg !965
  store i8* null, i8** %cur, align 8, !dbg !966, !tbaa !937
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !967, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 0, !dbg !968
  store i8* null, i8** %buf, align 8, !dbg !969, !tbaa !941
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !970, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 5, !dbg !971
  store i32 10, i32* %done, align 4, !dbg !972, !tbaa !973
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !974, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 6, !dbg !975
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !dbg !976, !tbaa !977
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !978, !tbaa !894
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 31, !dbg !979
  store i8* null, i8** %input, align 8, !dbg !980, !tbaa !981
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !982, !tbaa !894
  %tabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 7, !dbg !983
  store i32 8, i32* %tabsize, align 4, !dbg !984, !tbaa !985
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !986, !tbaa !894
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 8, !dbg !987
  store i32 0, i32* %indent, align 4, !dbg !988, !tbaa !989
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !990, !tbaa !894
  %indstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 9, !dbg !991
  %arrayidx = getelementptr [100 x i32], [100 x i32]* %indstack, i32 0, i64 0, !dbg !990
  store i32 0, i32* %arrayidx, align 4, !dbg !992, !tbaa !900
  %14 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !993, !tbaa !894
  %atbol = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 10, !dbg !994
  store i32 1, i32* %atbol, align 4, !dbg !995, !tbaa !996
  %15 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !997, !tbaa !894
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 11, !dbg !998
  store i32 0, i32* %pendin, align 4, !dbg !999, !tbaa !1000
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1001, !tbaa !894
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 13, !dbg !1002
  store i8* null, i8** %nextprompt, align 8, !dbg !1003, !tbaa !1004
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1005, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 12, !dbg !1006
  store i8* null, i8** %prompt, align 8, !dbg !1007, !tbaa !1008
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1009, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 14, !dbg !1010
  store i32 0, i32* %lineno, align 4, !dbg !1011, !tbaa !1012
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1013, !tbaa !894
  %level = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 15, !dbg !1014
  store i32 0, i32* %level, align 4, !dbg !1015, !tbaa !1016
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1017, !tbaa !894
  %altwarning = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 17, !dbg !1018
  store i32 1, i32* %altwarning, align 4, !dbg !1019, !tbaa !1020
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1021, !tbaa !894
  %alterror = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 18, !dbg !1022
  store i32 1, i32* %alterror, align 4, !dbg !1023, !tbaa !1024
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1025, !tbaa !894
  %alttabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 19, !dbg !1026
  store i32 1, i32* %alttabsize, align 4, !dbg !1027, !tbaa !1028
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1029, !tbaa !894
  %altindstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 20, !dbg !1030
  %arrayidx1 = getelementptr [100 x i32], [100 x i32]* %altindstack, i32 0, i64 0, !dbg !1029
  store i32 0, i32* %arrayidx1, align 4, !dbg !1031, !tbaa !900
  %24 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1032, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 21, !dbg !1033
  store i32 0, i32* %decoding_state, align 4, !dbg !1034, !tbaa !1035
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1036, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 22, !dbg !1037
  store i32 0, i32* %decoding_erred, align 4, !dbg !1038, !tbaa !1039
  %26 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1040, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 23, !dbg !1041
  store i32 0, i32* %read_coding_spec, align 4, !dbg !1042, !tbaa !1043
  %27 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1044, !tbaa !894
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 29, !dbg !1045
  store i8* null, i8** %enc, align 8, !dbg !1046, !tbaa !1047
  %28 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1048, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %28, i32 0, i32 24, !dbg !1049
  store i8* null, i8** %encoding, align 8, !dbg !1050, !tbaa !1051
  %29 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1052, !tbaa !894
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 25, !dbg !1053
  store i32 0, i32* %cont_line, align 4, !dbg !1054, !tbaa !1055
  %30 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1056, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 16, !dbg !1057
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !1058, !tbaa !1059
  %31 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1060, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 27, !dbg !1061
  store %struct._object* null, %struct._object** %decoding_readline, align 8, !dbg !1062, !tbaa !1063
  %32 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1064, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 28, !dbg !1065
  store %struct._object* null, %struct._object** %decoding_buffer, align 8, !dbg !1066, !tbaa !1067
  %33 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1068, !tbaa !894
  store %struct.tok_state* %33, %struct.tok_state** %retval, !dbg !1069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1069

cleanup:                                          ; preds = %if.end, %if.then
  %34 = bitcast %struct.tok_state** %tok to i8*, !dbg !1070
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1070
  %35 = load %struct.tok_state*, %struct.tok_state** %retval, !dbg !1070
  ret %struct.tok_state* %35, !dbg !1070
}

; Function Attrs: nounwind uwtable
define internal i8* @decode_str(i8* %input, i32 %single, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %single.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %utf8 = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %s = alloca i8*, align 8
  %newl = alloca [2 x i8*], align 16
  %lineno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %input, i8** %input.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %input.addr, metadata !532, metadata !898), !dbg !1071
  store i32 %single, i32* %single.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %single.addr, metadata !533, metadata !898), !dbg !1072
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !534, metadata !898), !dbg !1073
  %0 = bitcast %struct._object** %utf8 to i8*, !dbg !1074
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct._object** %utf8, metadata !535, metadata !898), !dbg !1075
  store %struct._object* null, %struct._object** %utf8, align 8, !dbg !1075, !tbaa !894
  %1 = bitcast i8** %str to i8*, !dbg !1076
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1076
  call void @llvm.dbg.declare(metadata i8** %str, metadata !536, metadata !898), !dbg !1077
  %2 = bitcast i8** %s to i8*, !dbg !1078
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1078
  call void @llvm.dbg.declare(metadata i8** %s, metadata !537, metadata !898), !dbg !1079
  %3 = bitcast [2 x i8*]* %newl to i8*, !dbg !1080
  call void @llvm.lifetime.start(i64 16, i8* %3) #2, !dbg !1080
  call void @llvm.dbg.declare(metadata [2 x i8*]* %newl, metadata !538, metadata !898), !dbg !1081
  %4 = bitcast [2 x i8*]* %newl to i8*, !dbg !1081
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 16, i1 false), !dbg !1081
  %5 = bitcast i32* %lineno to i8*, !dbg !1082
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1082
  call void @llvm.dbg.declare(metadata i32* %lineno, metadata !542, metadata !898), !dbg !1083
  store i32 0, i32* %lineno, align 4, !dbg !1083, !tbaa !900
  %6 = load i8*, i8** %input.addr, align 8, !dbg !1084, !tbaa !894
  %7 = load i32, i32* %single.addr, align 4, !dbg !1085, !tbaa !900
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1086, !tbaa !894
  %call = call i8* @translate_newlines(i8* %6, i32 %7, %struct.tok_state* %8), !dbg !1087
  store i8* %call, i8** %str, align 8, !dbg !1088, !tbaa !894
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1089, !tbaa !894
  %input1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 31, !dbg !1090
  store i8* %call, i8** %input1, align 8, !dbg !1091, !tbaa !981
  %10 = load i8*, i8** %str, align 8, !dbg !1092, !tbaa !894
  %cmp = icmp eq i8* %10, null, !dbg !1094
  br i1 %cmp, label %if.then, label %if.end, !dbg !1095

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1096

if.end:                                           ; preds = %entry
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1097, !tbaa !894
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 29, !dbg !1098
  store i8* null, i8** %enc, align 8, !dbg !1099, !tbaa !1047
  %12 = load i8*, i8** %str, align 8, !dbg !1100, !tbaa !894
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1101, !tbaa !894
  %str2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 30, !dbg !1102
  store i8* %12, i8** %str2, align 8, !dbg !1103, !tbaa !1104
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1105, !tbaa !894
  %call3 = call i32 @check_bom(i32 (%struct.tok_state*)* @buf_getc, void (i32, %struct.tok_state*)* @buf_ungetc, i32 (%struct.tok_state*, i8*)* @buf_setreadl, %struct.tok_state* %14), !dbg !1107
  %tobool = icmp ne i32 %call3, 0, !dbg !1107
  br i1 %tobool, label %if.end.6, label %if.then.4, !dbg !1108

if.then.4:                                        ; preds = %if.end
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1109, !tbaa !894
  %call5 = call i8* @error_ret(%struct.tok_state* %15), !dbg !1110
  store i8* %call5, i8** %retval, !dbg !1111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1111

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1112, !tbaa !894
  %str7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 30, !dbg !1113
  %17 = load i8*, i8** %str7, align 8, !dbg !1113, !tbaa !1104
  store i8* %17, i8** %str, align 8, !dbg !1114, !tbaa !894
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1115, !tbaa !894
  %enc8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 29, !dbg !1117
  %19 = load i8*, i8** %enc8, align 8, !dbg !1117, !tbaa !1047
  %cmp9 = icmp ne i8* %19, null, !dbg !1118
  br i1 %cmp9, label %if.then.10, label %if.end.18, !dbg !1119

if.then.10:                                       ; preds = %if.end.6
  %20 = load i8*, i8** %str, align 8, !dbg !1120, !tbaa !894
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1122, !tbaa !894
  %enc11 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 29, !dbg !1123
  %22 = load i8*, i8** %enc11, align 8, !dbg !1123, !tbaa !1047
  %call12 = call %struct._object* @translate_into_utf8(i8* %20, i8* %22), !dbg !1124
  store %struct._object* %call12, %struct._object** %utf8, align 8, !dbg !1125, !tbaa !894
  %23 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !1126, !tbaa !894
  %cmp13 = icmp eq %struct._object* %23, null, !dbg !1128
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1129

if.then.14:                                       ; preds = %if.then.10
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1130, !tbaa !894
  %call15 = call i8* @error_ret(%struct.tok_state* %24), !dbg !1131
  store i8* %call15, i8** %retval, !dbg !1132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1132

if.end.16:                                        ; preds = %if.then.10
  %25 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !1133, !tbaa !894
  %call17 = call i8* @PyBytes_AsString(%struct._object* %25), !dbg !1134
  store i8* %call17, i8** %str, align 8, !dbg !1135, !tbaa !894
  br label %if.end.18, !dbg !1136

if.end.18:                                        ; preds = %if.end.16, %if.end.6
  %26 = load i8*, i8** %str, align 8, !dbg !1137, !tbaa !894
  store i8* %26, i8** %s, align 8, !dbg !1139, !tbaa !894
  br label %for.cond, !dbg !1140

for.cond:                                         ; preds = %for.inc, %if.end.18
  %27 = load i8*, i8** %s, align 8, !dbg !1141, !tbaa !894
  %28 = load i8, i8* %27, align 1, !dbg !1145, !tbaa !1146
  %conv = sext i8 %28 to i32, !dbg !1145
  %cmp19 = icmp eq i32 %conv, 0, !dbg !1147
  br i1 %cmp19, label %if.then.21, label %if.else, !dbg !1148

if.then.21:                                       ; preds = %for.cond
  br label %for.end, !dbg !1149

if.else:                                          ; preds = %for.cond
  %29 = load i8*, i8** %s, align 8, !dbg !1151, !tbaa !894
  %30 = load i8, i8* %29, align 1, !dbg !1153, !tbaa !1146
  %conv22 = sext i8 %30 to i32, !dbg !1153
  %cmp23 = icmp eq i32 %conv22, 10, !dbg !1154
  br i1 %cmp23, label %if.then.25, label %if.end.30, !dbg !1155

if.then.25:                                       ; preds = %if.else
  %31 = load i8*, i8** %s, align 8, !dbg !1156, !tbaa !894
  %32 = load i32, i32* %lineno, align 4, !dbg !1158, !tbaa !900
  %idxprom = sext i32 %32 to i64, !dbg !1159
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 %idxprom, !dbg !1159
  store i8* %31, i8** %arrayidx, align 8, !dbg !1160, !tbaa !894
  %33 = load i32, i32* %lineno, align 4, !dbg !1161, !tbaa !900
  %inc = add i32 %33, 1, !dbg !1161
  store i32 %inc, i32* %lineno, align 4, !dbg !1161, !tbaa !900
  %34 = load i32, i32* %lineno, align 4, !dbg !1162, !tbaa !900
  %cmp26 = icmp eq i32 %34, 2, !dbg !1164
  br i1 %cmp26, label %if.then.28, label %if.end.29, !dbg !1165

if.then.28:                                       ; preds = %if.then.25
  br label %for.end, !dbg !1166

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.30, !dbg !1168

if.end.30:                                        ; preds = %if.end.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %for.inc, !dbg !1169

for.inc:                                          ; preds = %if.end.31
  %35 = load i8*, i8** %s, align 8, !dbg !1170, !tbaa !894
  %incdec.ptr = getelementptr i8, i8* %35, i32 1, !dbg !1170
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !1170, !tbaa !894
  br label %for.cond, !dbg !1171

for.end:                                          ; preds = %if.then.28, %if.then.21
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1172, !tbaa !894
  %enc32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 29, !dbg !1173
  store i8* null, i8** %enc32, align 8, !dbg !1174, !tbaa !1047
  %arrayidx33 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0, !dbg !1175
  %37 = load i8*, i8** %arrayidx33, align 8, !dbg !1175, !tbaa !894
  %tobool34 = icmp ne i8* %37, null, !dbg !1175
  br i1 %tobool34, label %if.then.35, label %if.end.62, !dbg !1177

if.then.35:                                       ; preds = %for.end
  %38 = load i8*, i8** %str, align 8, !dbg !1178, !tbaa !894
  %arrayidx36 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0, !dbg !1181
  %39 = load i8*, i8** %arrayidx36, align 8, !dbg !1181, !tbaa !894
  %40 = load i8*, i8** %str, align 8, !dbg !1182, !tbaa !894
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64, !dbg !1183
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64, !dbg !1183
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1183
  %41 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1184, !tbaa !894
  %call37 = call i32 @check_coding_spec(i8* %38, i64 %sub.ptr.sub, %struct.tok_state* %41, i32 (%struct.tok_state*, i8*)* @buf_setreadl), !dbg !1185
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1185
  br i1 %tobool38, label %if.end.41, label %if.then.39, !dbg !1186

if.then.39:                                       ; preds = %if.then.35
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1187, !tbaa !894
  %call40 = call i8* @error_ret(%struct.tok_state* %42), !dbg !1188
  store i8* %call40, i8** %retval, !dbg !1189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1189

if.end.41:                                        ; preds = %if.then.35
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1190, !tbaa !894
  %enc42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %43, i32 0, i32 29, !dbg !1192
  %44 = load i8*, i8** %enc42, align 8, !dbg !1192, !tbaa !1047
  %cmp43 = icmp eq i8* %44, null, !dbg !1193
  br i1 %cmp43, label %land.lhs.true, label %if.end.61, !dbg !1194

land.lhs.true:                                    ; preds = %if.end.41
  %45 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1195, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %45, i32 0, i32 23, !dbg !1197
  %46 = load i32, i32* %read_coding_spec, align 4, !dbg !1197, !tbaa !1043
  %tobool45 = icmp ne i32 %46, 0, !dbg !1198
  br i1 %tobool45, label %if.end.61, label %land.lhs.true.46, !dbg !1199

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %arrayidx47 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 1, !dbg !1200
  %47 = load i8*, i8** %arrayidx47, align 8, !dbg !1200, !tbaa !894
  %tobool48 = icmp ne i8* %47, null, !dbg !1200
  br i1 %tobool48, label %if.then.49, label %if.end.61, !dbg !1202

if.then.49:                                       ; preds = %land.lhs.true.46
  %arrayidx50 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0, !dbg !1203
  %48 = load i8*, i8** %arrayidx50, align 8, !dbg !1203, !tbaa !894
  %add.ptr = getelementptr i8, i8* %48, i64 1, !dbg !1206
  %arrayidx51 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 1, !dbg !1207
  %49 = load i8*, i8** %arrayidx51, align 8, !dbg !1207, !tbaa !894
  %arrayidx52 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0, !dbg !1208
  %50 = load i8*, i8** %arrayidx52, align 8, !dbg !1208, !tbaa !894
  %sub.ptr.lhs.cast53 = ptrtoint i8* %49 to i64, !dbg !1209
  %sub.ptr.rhs.cast54 = ptrtoint i8* %50 to i64, !dbg !1209
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54, !dbg !1209
  %51 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1210, !tbaa !894
  %call56 = call i32 @check_coding_spec(i8* %add.ptr, i64 %sub.ptr.sub55, %struct.tok_state* %51, i32 (%struct.tok_state*, i8*)* @buf_setreadl), !dbg !1211
  %tobool57 = icmp ne i32 %call56, 0, !dbg !1211
  br i1 %tobool57, label %if.end.60, label %if.then.58, !dbg !1212

if.then.58:                                       ; preds = %if.then.49
  %52 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1213, !tbaa !894
  %call59 = call i8* @error_ret(%struct.tok_state* %52), !dbg !1214
  store i8* %call59, i8** %retval, !dbg !1215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1215

if.end.60:                                        ; preds = %if.then.49
  br label %if.end.61, !dbg !1216

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.46, %land.lhs.true, %if.end.41
  br label %if.end.62, !dbg !1217

if.end.62:                                        ; preds = %if.end.61, %for.end
  %53 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1218, !tbaa !894
  %enc63 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %53, i32 0, i32 29, !dbg !1220
  %54 = load i8*, i8** %enc63, align 8, !dbg !1220, !tbaa !1047
  %cmp64 = icmp ne i8* %54, null, !dbg !1221
  br i1 %cmp64, label %if.then.66, label %if.end.74, !dbg !1222

if.then.66:                                       ; preds = %if.end.62
  %55 = load i8*, i8** %str, align 8, !dbg !1223, !tbaa !894
  %56 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1225, !tbaa !894
  %enc67 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %56, i32 0, i32 29, !dbg !1226
  %57 = load i8*, i8** %enc67, align 8, !dbg !1226, !tbaa !1047
  %call68 = call %struct._object* @translate_into_utf8(i8* %55, i8* %57), !dbg !1227
  store %struct._object* %call68, %struct._object** %utf8, align 8, !dbg !1228, !tbaa !894
  %58 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !1229, !tbaa !894
  %cmp69 = icmp eq %struct._object* %58, null, !dbg !1231
  br i1 %cmp69, label %if.then.71, label %if.end.73, !dbg !1232

if.then.71:                                       ; preds = %if.then.66
  %59 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1233, !tbaa !894
  %call72 = call i8* @error_ret(%struct.tok_state* %59), !dbg !1234
  store i8* %call72, i8** %retval, !dbg !1235
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1235

if.end.73:                                        ; preds = %if.then.66
  %60 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !1236, !tbaa !894
  %61 = bitcast %struct._object* %60 to %struct.PyBytesObject*, !dbg !1237
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %61, i32 0, i32 2, !dbg !1238
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1239
  store i8* %arraydecay, i8** %str, align 8, !dbg !1240, !tbaa !894
  br label %if.end.74, !dbg !1241

if.end.74:                                        ; preds = %if.end.73, %if.end.62
  %62 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !1242, !tbaa !894
  %63 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1243, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %63, i32 0, i32 28, !dbg !1244
  store %struct._object* %62, %struct._object** %decoding_buffer, align 8, !dbg !1245, !tbaa !1067
  %64 = load i8*, i8** %str, align 8, !dbg !1246, !tbaa !894
  store i8* %64, i8** %retval, !dbg !1247
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1247

cleanup:                                          ; preds = %if.end.74, %if.then.71, %if.then.58, %if.then.39, %if.then.14, %if.then.4, %if.then
  %65 = bitcast i32* %lineno to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !1248
  %66 = bitcast [2 x i8*]* %newl to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 16, i8* %66) #2, !dbg !1248
  %67 = bitcast i8** %s to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !1248
  %68 = bitcast i8** %str to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !1248
  %69 = bitcast %struct._object** %utf8 to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !1248
  %70 = load i8*, i8** %retval, !dbg !1248
  ret i8* %70, !dbg !1248
}

; Function Attrs: nounwind uwtable
define void @PyTokenizer_Free(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_xdecref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !464, metadata !898), !dbg !1249
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1250, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 24, !dbg !1252
  %1 = load i8*, i8** %encoding, align 8, !dbg !1252, !tbaa !1051
  %cmp = icmp ne i8* %1, null, !dbg !1253
  br i1 %cmp, label %if.then, label %if.end, !dbg !1254

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1255, !tbaa !894
  %encoding1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 24, !dbg !1256
  %3 = load i8*, i8** %encoding1, align 8, !dbg !1256, !tbaa !1051
  call void @PyMem_Free(i8* %3), !dbg !1257
  br label %if.end, !dbg !1257

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !1258

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1259
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !465, metadata !898), !dbg !1261
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1262, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 27, !dbg !1263
  %6 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !1263, !tbaa !1063
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1261, !tbaa !894
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1264, !tbaa !894
  %cmp2 = icmp ne %struct._object* %7, null, !dbg !1265
  br i1 %cmp2, label %if.then.3, label %if.end.8, !dbg !1266

if.then.3:                                        ; preds = %do.body
  br label %do.body.4, !dbg !1267

do.body.4:                                        ; preds = %if.then.3
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1269
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1269
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !467, metadata !898), !dbg !1271
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1272, !tbaa !894
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1271, !tbaa !894
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1273, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1275
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1276, !tbaa !1277
  %dec = add i64 %11, -1, !dbg !1276
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1276, !tbaa !1277
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1280
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1281

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7, !dbg !1282

if.else:                                          ; preds = %do.body.4
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1284, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1286
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1286, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1288
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1288, !tbaa !1289
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1292, !tbaa !894
  call void %14(%struct._object* %15), !dbg !1293
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1294
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1294
  br label %do.cond, !dbg !1296

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1297

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !1299

if.end.8:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1301
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1301
  br label %do.end.10, !dbg !1304

do.end.10:                                        ; preds = %if.end.8
  br label %do.body.11, !dbg !1305

do.body.11:                                       ; preds = %do.end.10
  %18 = bitcast %struct._object** %_py_xdecref_tmp12 to i8*, !dbg !1306
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1306
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp12, metadata !470, metadata !898), !dbg !1308
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1309, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 28, !dbg !1310
  %20 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !1310, !tbaa !1067
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp12, align 8, !dbg !1308, !tbaa !894
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp12, align 8, !dbg !1311, !tbaa !894
  %cmp13 = icmp ne %struct._object* %21, null, !dbg !1312
  br i1 %cmp13, label %if.then.14, label %if.end.27, !dbg !1313

if.then.14:                                       ; preds = %do.body.11
  br label %do.body.15, !dbg !1314

do.body.15:                                       ; preds = %if.then.14
  %22 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !1316
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1316
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp16, metadata !472, metadata !898), !dbg !1318
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp12, align 8, !dbg !1319, !tbaa !894
  store %struct._object* %23, %struct._object** %_py_decref_tmp16, align 8, !dbg !1318, !tbaa !894
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !1320, !tbaa !894
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1322
  %25 = load i64, i64* %ob_refcnt17, align 8, !dbg !1323, !tbaa !1277
  %dec18 = add i64 %25, -1, !dbg !1323
  store i64 %dec18, i64* %ob_refcnt17, align 8, !dbg !1323, !tbaa !1277
  %cmp19 = icmp ne i64 %dec18, 0, !dbg !1324
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !1325

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24, !dbg !1326

if.else.21:                                       ; preds = %do.body.15
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !1328, !tbaa !894
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1330
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8, !dbg !1330, !tbaa !1287
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1331
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8, !dbg !1331, !tbaa !1289
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8, !dbg !1332, !tbaa !894
  call void %28(%struct._object* %29), !dbg !1333
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  %30 = bitcast %struct._object** %_py_decref_tmp16 to i8*, !dbg !1334
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1334
  br label %do.cond.25, !dbg !1336

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26, !dbg !1337

do.end.26:                                        ; preds = %do.cond.25
  br label %if.end.27, !dbg !1339

if.end.27:                                        ; preds = %do.end.26, %do.body.11
  %31 = bitcast %struct._object** %_py_xdecref_tmp12 to i8*, !dbg !1341
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1341
  br label %do.end.29, !dbg !1342

do.end.29:                                        ; preds = %if.end.27
  br label %do.body.30, !dbg !1343

do.body.30:                                       ; preds = %do.end.29
  %32 = bitcast %struct._object** %_py_xdecref_tmp31 to i8*, !dbg !1344
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !1344
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp31, metadata !475, metadata !898), !dbg !1346
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1347, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 16, !dbg !1348
  %34 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1348, !tbaa !1059
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1346, !tbaa !894
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1349, !tbaa !894
  %cmp32 = icmp ne %struct._object* %35, null, !dbg !1350
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !1351

if.then.33:                                       ; preds = %do.body.30
  br label %do.body.34, !dbg !1352

do.body.34:                                       ; preds = %if.then.33
  %36 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1354
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !477, metadata !898), !dbg !1356
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp31, align 8, !dbg !1357, !tbaa !894
  store %struct._object* %37, %struct._object** %_py_decref_tmp35, align 8, !dbg !1356, !tbaa !894
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1358, !tbaa !894
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1360
  %39 = load i64, i64* %ob_refcnt36, align 8, !dbg !1361, !tbaa !1277
  %dec37 = add i64 %39, -1, !dbg !1361
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1361, !tbaa !1277
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !1362
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !1363

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !1364

if.else.40:                                       ; preds = %do.body.34
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1366, !tbaa !894
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1368
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1368, !tbaa !1287
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1369
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1369, !tbaa !1289
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !1370, !tbaa !894
  call void %42(%struct._object* %43), !dbg !1371
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %44 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !1372
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1372
  br label %do.cond.44, !dbg !1374

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !1375

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46, !dbg !1377

if.end.46:                                        ; preds = %do.end.45, %do.body.30
  %45 = bitcast %struct._object** %_py_xdecref_tmp31 to i8*, !dbg !1379
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !1379
  br label %do.end.48, !dbg !1380

do.end.48:                                        ; preds = %if.end.46
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1381, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %46, i32 0, i32 6, !dbg !1383
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1383, !tbaa !977
  %cmp49 = icmp ne %struct._IO_FILE* %47, null, !dbg !1384
  br i1 %cmp49, label %land.lhs.true, label %if.end.53, !dbg !1385

land.lhs.true:                                    ; preds = %do.end.48
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1386, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %48, i32 0, i32 0, !dbg !1388
  %49 = load i8*, i8** %buf, align 8, !dbg !1388, !tbaa !941
  %cmp50 = icmp ne i8* %49, null, !dbg !1389
  br i1 %cmp50, label %if.then.51, label %if.end.53, !dbg !1390

if.then.51:                                       ; preds = %land.lhs.true
  %50 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1391, !tbaa !894
  %buf52 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %50, i32 0, i32 0, !dbg !1392
  %51 = load i8*, i8** %buf52, align 8, !dbg !1392, !tbaa !941
  call void @PyMem_Free(i8* %51), !dbg !1393
  br label %if.end.53, !dbg !1393

if.end.53:                                        ; preds = %if.then.51, %land.lhs.true, %do.end.48
  %52 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1394, !tbaa !894
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %52, i32 0, i32 31, !dbg !1396
  %53 = load i8*, i8** %input, align 8, !dbg !1396, !tbaa !981
  %tobool = icmp ne i8* %53, null, !dbg !1394
  br i1 %tobool, label %if.then.54, label %if.end.56, !dbg !1397

if.then.54:                                       ; preds = %if.end.53
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1398, !tbaa !894
  %input55 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %54, i32 0, i32 31, !dbg !1399
  %55 = load i8*, i8** %input55, align 8, !dbg !1399, !tbaa !981
  call void @PyMem_Free(i8* %55), !dbg !1400
  br label %if.end.56, !dbg !1400

if.end.56:                                        ; preds = %if.then.54, %if.end.53
  %56 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1401, !tbaa !894
  %57 = bitcast %struct.tok_state* %56 to i8*, !dbg !1401
  call void @PyMem_Free(i8* %57), !dbg !1402
  ret void, !dbg !1403
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromUTF8(i8* %str, i32 %exec_input) #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %str.addr = alloca i8*, align 8
  %exec_input.addr = alloca i32, align 4
  %tok = alloca %struct.tok_state*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !448, metadata !898), !dbg !1404
  store i32 %exec_input, i32* %exec_input.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %exec_input.addr, metadata !449, metadata !898), !dbg !1405
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !1406
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1406
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !450, metadata !898), !dbg !1407
  %call = call %struct.tok_state* @tok_new(), !dbg !1408
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8, !dbg !1407, !tbaa !894
  %1 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1409, !tbaa !894
  %cmp = icmp eq %struct.tok_state* %1, null, !dbg !1411
  br i1 %cmp, label %if.then, label %if.end, !dbg !1412

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1413

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !1414, !tbaa !894
  %3 = load i32, i32* %exec_input.addr, align 4, !dbg !1415, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1416, !tbaa !894
  %call1 = call i8* @translate_newlines(i8* %2, i32 %3, %struct.tok_state* %4), !dbg !1417
  store i8* %call1, i8** %str.addr, align 8, !dbg !1418, !tbaa !894
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1419, !tbaa !894
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 31, !dbg !1420
  store i8* %call1, i8** %input, align 8, !dbg !1421, !tbaa !981
  %6 = load i8*, i8** %str.addr, align 8, !dbg !1422, !tbaa !894
  %cmp2 = icmp eq i8* %6, null, !dbg !1424
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1425

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1426, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %7), !dbg !1428
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1429

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1430, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 21, !dbg !1431
  store i32 1, i32* %decoding_state, align 4, !dbg !1432, !tbaa !1035
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1433, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 23, !dbg !1434
  store i32 1, i32* %read_coding_spec, align 4, !dbg !1435, !tbaa !1043
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1436, !tbaa !894
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 29, !dbg !1437
  store i8* null, i8** %enc, align 8, !dbg !1438, !tbaa !1047
  %11 = load i8*, i8** %str.addr, align 8, !dbg !1439, !tbaa !894
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1440, !tbaa !894
  %str5 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 30, !dbg !1441
  store i8* %11, i8** %str5, align 8, !dbg !1442, !tbaa !1104
  %call6 = call i8* @PyMem_Malloc(i64 6), !dbg !1443
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1444, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 24, !dbg !1445
  store i8* %call6, i8** %encoding, align 8, !dbg !1446, !tbaa !1051
  %14 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1447, !tbaa !894
  %encoding7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 24, !dbg !1449
  %15 = load i8*, i8** %encoding7, align 8, !dbg !1449, !tbaa !1051
  %tobool = icmp ne i8* %15, null, !dbg !1447
  br i1 %tobool, label %if.end.9, label %if.then.8, !dbg !1450

if.then.8:                                        ; preds = %if.end.4
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1451, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %16), !dbg !1453
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1454
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1454

if.end.9:                                         ; preds = %if.end.4
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1455, !tbaa !894
  %encoding10 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 24, !dbg !1456
  %18 = load i8*, i8** %encoding10, align 8, !dbg !1456, !tbaa !1051
  %call11 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #2, !dbg !1457
  %19 = load i8*, i8** %str.addr, align 8, !dbg !1458, !tbaa !894
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1459, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 2, !dbg !1460
  store i8* %19, i8** %inp, align 8, !dbg !1461, !tbaa !928
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1462, !tbaa !894
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 3, !dbg !1463
  store i8* %19, i8** %end, align 8, !dbg !1464, !tbaa !933
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1465, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 1, !dbg !1466
  store i8* %19, i8** %cur, align 8, !dbg !1467, !tbaa !937
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1468, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 0, !dbg !1469
  store i8* %19, i8** %buf, align 8, !dbg !1470, !tbaa !941
  %24 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1471, !tbaa !894
  store %struct.tok_state* %24, %struct.tok_state** %retval, !dbg !1472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1472

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %25 = bitcast %struct.tok_state** %tok to i8*, !dbg !1473
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1473
  %26 = load %struct.tok_state*, %struct.tok_state** %retval, !dbg !1473
  ret %struct.tok_state* %26, !dbg !1473
}

; Function Attrs: nounwind uwtable
define internal i8* @translate_newlines(i8* %s, i32 %exec_input, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %exec_input.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %skip_next_lf = alloca i32, align 4
  %needed_length = alloca i64, align 8
  %final_length = alloca i64, align 8
  %buf = alloca i8*, align 8
  %current = alloca i8*, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !694, metadata !898), !dbg !1474
  store i32 %exec_input, i32* %exec_input.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %exec_input.addr, metadata !695, metadata !898), !dbg !1475
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !696, metadata !898), !dbg !1476
  %0 = bitcast i32* %skip_next_lf to i8*, !dbg !1477
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1477
  call void @llvm.dbg.declare(metadata i32* %skip_next_lf, metadata !697, metadata !898), !dbg !1478
  store i32 0, i32* %skip_next_lf, align 4, !dbg !1478, !tbaa !900
  %1 = bitcast i64* %needed_length to i8*, !dbg !1479
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1479
  call void @llvm.dbg.declare(metadata i64* %needed_length, metadata !698, metadata !898), !dbg !1480
  %2 = load i8*, i8** %s.addr, align 8, !dbg !1481, !tbaa !894
  %call = call i64 @strlen(i8* %2) #9, !dbg !1482
  %add = add i64 %call, 2, !dbg !1483
  store i64 %add, i64* %needed_length, align 8, !dbg !1480, !tbaa !1484
  %3 = bitcast i64* %final_length to i8*, !dbg !1479
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1479
  call void @llvm.dbg.declare(metadata i64* %final_length, metadata !699, metadata !898), !dbg !1485
  %4 = bitcast i8** %buf to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !700, metadata !898), !dbg !1487
  %5 = bitcast i8** %current to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %current, metadata !701, metadata !898), !dbg !1488
  call void @llvm.lifetime.start(i64 1, i8* %c) #2, !dbg !1489
  call void @llvm.dbg.declare(metadata i8* %c, metadata !702, metadata !898), !dbg !1490
  store i8 0, i8* %c, align 1, !dbg !1490, !tbaa !1146
  %6 = load i64, i64* %needed_length, align 8, !dbg !1491, !tbaa !1484
  %call1 = call i8* @PyMem_Malloc(i64 %6), !dbg !1492
  store i8* %call1, i8** %buf, align 8, !dbg !1493, !tbaa !894
  %7 = load i8*, i8** %buf, align 8, !dbg !1494, !tbaa !894
  %cmp = icmp eq i8* %7, null, !dbg !1496
  br i1 %cmp, label %if.then, label %if.end, !dbg !1497

if.then:                                          ; preds = %entry
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1498, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 5, !dbg !1500
  store i32 15, i32* %done, align 4, !dbg !1501, !tbaa !973
  store i8* null, i8** %retval, !dbg !1502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1502

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %buf, align 8, !dbg !1503, !tbaa !894
  store i8* %9, i8** %current, align 8, !dbg !1505, !tbaa !894
  br label %for.cond, !dbg !1506

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1507, !tbaa !894
  %11 = load i8, i8* %10, align 1, !dbg !1511, !tbaa !1146
  %tobool = icmp ne i8 %11, 0, !dbg !1512
  br i1 %tobool, label %for.body, label %for.end, !dbg !1512

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %s.addr, align 8, !dbg !1513, !tbaa !894
  %13 = load i8, i8* %12, align 1, !dbg !1515, !tbaa !1146
  store i8 %13, i8* %c, align 1, !dbg !1516, !tbaa !1146
  %14 = load i32, i32* %skip_next_lf, align 4, !dbg !1517, !tbaa !900
  %tobool2 = icmp ne i32 %14, 0, !dbg !1517
  br i1 %tobool2, label %if.then.3, label %if.end.11, !dbg !1519

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %skip_next_lf, align 4, !dbg !1520, !tbaa !900
  %15 = load i8, i8* %c, align 1, !dbg !1522, !tbaa !1146
  %conv = sext i8 %15 to i32, !dbg !1522
  %cmp4 = icmp eq i32 %conv, 10, !dbg !1524
  br i1 %cmp4, label %if.then.6, label %if.end.10, !dbg !1525

if.then.6:                                        ; preds = %if.then.3
  %16 = load i8*, i8** %s.addr, align 8, !dbg !1526, !tbaa !894
  %incdec.ptr = getelementptr i8, i8* %16, i32 1, !dbg !1526
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !1526, !tbaa !894
  %17 = load i8, i8* %incdec.ptr, align 1, !dbg !1528, !tbaa !1146
  store i8 %17, i8* %c, align 1, !dbg !1529, !tbaa !1146
  %18 = load i8, i8* %c, align 1, !dbg !1530, !tbaa !1146
  %tobool7 = icmp ne i8 %18, 0, !dbg !1530
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !1532

if.then.8:                                        ; preds = %if.then.6
  br label %for.end, !dbg !1533

if.end.9:                                         ; preds = %if.then.6
  br label %if.end.10, !dbg !1534

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  br label %if.end.11, !dbg !1535

if.end.11:                                        ; preds = %if.end.10, %for.body
  %19 = load i8, i8* %c, align 1, !dbg !1536, !tbaa !1146
  %conv12 = sext i8 %19 to i32, !dbg !1536
  %cmp13 = icmp eq i32 %conv12, 13, !dbg !1538
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !1539

if.then.15:                                       ; preds = %if.end.11
  store i32 1, i32* %skip_next_lf, align 4, !dbg !1540, !tbaa !900
  store i8 10, i8* %c, align 1, !dbg !1542, !tbaa !1146
  br label %if.end.16, !dbg !1543

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %20 = load i8, i8* %c, align 1, !dbg !1544, !tbaa !1146
  %21 = load i8*, i8** %current, align 8, !dbg !1545, !tbaa !894
  store i8 %20, i8* %21, align 1, !dbg !1546, !tbaa !1146
  br label %for.inc, !dbg !1547

for.inc:                                          ; preds = %if.end.16
  %22 = load i8*, i8** %s.addr, align 8, !dbg !1548, !tbaa !894
  %incdec.ptr17 = getelementptr i8, i8* %22, i32 1, !dbg !1548
  store i8* %incdec.ptr17, i8** %s.addr, align 8, !dbg !1548, !tbaa !894
  %23 = load i8*, i8** %current, align 8, !dbg !1549, !tbaa !894
  %incdec.ptr18 = getelementptr i8, i8* %23, i32 1, !dbg !1549
  store i8* %incdec.ptr18, i8** %current, align 8, !dbg !1549, !tbaa !894
  br label %for.cond, !dbg !1550

for.end:                                          ; preds = %if.then.8, %for.cond
  %24 = load i32, i32* %exec_input.addr, align 4, !dbg !1551, !tbaa !900
  %tobool19 = icmp ne i32 %24, 0, !dbg !1551
  br i1 %tobool19, label %land.lhs.true, label %if.end.25, !dbg !1553

land.lhs.true:                                    ; preds = %for.end
  %25 = load i8, i8* %c, align 1, !dbg !1554, !tbaa !1146
  %conv20 = sext i8 %25 to i32, !dbg !1554
  %cmp21 = icmp ne i32 %conv20, 10, !dbg !1556
  br i1 %cmp21, label %if.then.23, label %if.end.25, !dbg !1557

if.then.23:                                       ; preds = %land.lhs.true
  %26 = load i8*, i8** %current, align 8, !dbg !1558, !tbaa !894
  store i8 10, i8* %26, align 1, !dbg !1560, !tbaa !1146
  %27 = load i8*, i8** %current, align 8, !dbg !1561, !tbaa !894
  %incdec.ptr24 = getelementptr i8, i8* %27, i32 1, !dbg !1561
  store i8* %incdec.ptr24, i8** %current, align 8, !dbg !1561, !tbaa !894
  br label %if.end.25, !dbg !1562

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true, %for.end
  %28 = load i8*, i8** %current, align 8, !dbg !1563, !tbaa !894
  store i8 0, i8* %28, align 1, !dbg !1564, !tbaa !1146
  %29 = load i8*, i8** %current, align 8, !dbg !1565, !tbaa !894
  %30 = load i8*, i8** %buf, align 8, !dbg !1566, !tbaa !894
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64, !dbg !1567
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64, !dbg !1567
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1567
  %add26 = add i64 %sub.ptr.sub, 1, !dbg !1568
  store i64 %add26, i64* %final_length, align 8, !dbg !1569, !tbaa !1484
  %31 = load i64, i64* %final_length, align 8, !dbg !1570, !tbaa !1484
  %32 = load i64, i64* %needed_length, align 8, !dbg !1572, !tbaa !1484
  %cmp27 = icmp ult i64 %31, %32, !dbg !1573
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.33, !dbg !1574

land.lhs.true.29:                                 ; preds = %if.end.25
  %33 = load i64, i64* %final_length, align 8, !dbg !1575, !tbaa !1484
  %tobool30 = icmp ne i64 %33, 0, !dbg !1575
  br i1 %tobool30, label %if.then.31, label %if.end.33, !dbg !1577

if.then.31:                                       ; preds = %land.lhs.true.29
  %34 = load i8*, i8** %buf, align 8, !dbg !1578, !tbaa !894
  %35 = load i64, i64* %final_length, align 8, !dbg !1579, !tbaa !1484
  %call32 = call i8* @PyMem_Realloc(i8* %34, i64 %35), !dbg !1580
  store i8* %call32, i8** %buf, align 8, !dbg !1581, !tbaa !894
  br label %if.end.33, !dbg !1582

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.29, %if.end.25
  %36 = load i8*, i8** %buf, align 8, !dbg !1583, !tbaa !894
  store i8* %36, i8** %retval, !dbg !1584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1584

cleanup:                                          ; preds = %if.end.33, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #2, !dbg !1585
  %37 = bitcast i8** %current to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1585
  %38 = bitcast i8** %buf to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1585
  %39 = bitcast i64* %final_length to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1585
  %40 = bitcast i64* %needed_length to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1585
  %41 = bitcast i32* %skip_next_lf to i8*, !dbg !1585
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !1585
  %42 = load i8*, i8** %retval, !dbg !1585
  ret i8* %42, !dbg !1585
}

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %fp, i8* %enc, i8* %ps1, i8* %ps2) #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %enc.addr = alloca i8*, align 8
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %tok = alloca %struct.tok_state*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !455, metadata !898), !dbg !1586
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !456, metadata !898), !dbg !1587
  store i8* %ps1, i8** %ps1.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %ps1.addr, metadata !457, metadata !898), !dbg !1588
  store i8* %ps2, i8** %ps2.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %ps2.addr, metadata !458, metadata !898), !dbg !1589
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1590
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !459, metadata !898), !dbg !1591
  %call = call %struct.tok_state* @tok_new(), !dbg !1592
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8, !dbg !1591, !tbaa !894
  %1 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1593, !tbaa !894
  %cmp = icmp eq %struct.tok_state* %1, null, !dbg !1595
  br i1 %cmp, label %if.then, label %if.end, !dbg !1596

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1597
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1597

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 8192), !dbg !1598
  %2 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1600, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 0, !dbg !1601
  store i8* %call1, i8** %buf, align 8, !dbg !1602, !tbaa !941
  %cmp2 = icmp eq i8* %call1, null, !dbg !1603
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1604

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1605, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %3), !dbg !1607
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1608
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1608

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1609, !tbaa !894
  %buf5 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 0, !dbg !1610
  %5 = load i8*, i8** %buf5, align 8, !dbg !1610, !tbaa !941
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1611, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 2, !dbg !1612
  store i8* %5, i8** %inp, align 8, !dbg !1613, !tbaa !928
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1614, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 1, !dbg !1615
  store i8* %5, i8** %cur, align 8, !dbg !1616, !tbaa !937
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1617, !tbaa !894
  %buf6 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 0, !dbg !1618
  %9 = load i8*, i8** %buf6, align 8, !dbg !1618, !tbaa !941
  %add.ptr = getelementptr i8, i8* %9, i64 8192, !dbg !1619
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1620, !tbaa !894
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 3, !dbg !1621
  store i8* %add.ptr, i8** %end, align 8, !dbg !1622, !tbaa !933
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1623, !tbaa !894
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1624, !tbaa !894
  %fp7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 6, !dbg !1625
  store %struct._IO_FILE* %11, %struct._IO_FILE** %fp7, align 8, !dbg !1626, !tbaa !977
  %13 = load i8*, i8** %ps1.addr, align 8, !dbg !1627, !tbaa !894
  %14 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1628, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 12, !dbg !1629
  store i8* %13, i8** %prompt, align 8, !dbg !1630, !tbaa !1008
  %15 = load i8*, i8** %ps2.addr, align 8, !dbg !1631, !tbaa !894
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1632, !tbaa !894
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 13, !dbg !1633
  store i8* %15, i8** %nextprompt, align 8, !dbg !1634, !tbaa !1004
  %17 = load i8*, i8** %enc.addr, align 8, !dbg !1635, !tbaa !894
  %cmp8 = icmp ne i8* %17, null, !dbg !1637
  br i1 %cmp8, label %if.then.9, label %if.end.17, !dbg !1638

if.then.9:                                        ; preds = %if.end.4
  %18 = load i8*, i8** %enc.addr, align 8, !dbg !1639, !tbaa !894
  %call10 = call i64 @strlen(i8* %18) #9, !dbg !1641
  %add = add i64 %call10, 1, !dbg !1642
  %call11 = call i8* @PyMem_Malloc(i64 %add), !dbg !1643
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1644, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 24, !dbg !1645
  store i8* %call11, i8** %encoding, align 8, !dbg !1646, !tbaa !1051
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1647, !tbaa !894
  %encoding12 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 24, !dbg !1649
  %21 = load i8*, i8** %encoding12, align 8, !dbg !1649, !tbaa !1051
  %tobool = icmp ne i8* %21, null, !dbg !1647
  br i1 %tobool, label %if.end.14, label %if.then.13, !dbg !1650

if.then.13:                                       ; preds = %if.then.9
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1651, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %22), !dbg !1653
  store %struct.tok_state* null, %struct.tok_state** %retval, !dbg !1654
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1654

if.end.14:                                        ; preds = %if.then.9
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1655, !tbaa !894
  %encoding15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 24, !dbg !1656
  %24 = load i8*, i8** %encoding15, align 8, !dbg !1656, !tbaa !1051
  %25 = load i8*, i8** %enc.addr, align 8, !dbg !1657, !tbaa !894
  %call16 = call i8* @strcpy(i8* %24, i8* %25) #2, !dbg !1658
  %26 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1659, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 21, !dbg !1660
  store i32 2, i32* %decoding_state, align 4, !dbg !1661, !tbaa !1035
  br label %if.end.17, !dbg !1662

if.end.17:                                        ; preds = %if.end.14, %if.end.4
  %27 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !1663, !tbaa !894
  store %struct.tok_state* %27, %struct.tok_state** %retval, !dbg !1664
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1664

cleanup:                                          ; preds = %if.end.17, %if.then.13, %if.then.3, %if.then
  %28 = bitcast %struct.tok_state** %tok to i8*, !dbg !1665
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1665
  %29 = load %struct.tok_state*, %struct.tok_state** %retval, !dbg !1665
  ret %struct.tok_state* %29, !dbg !1665
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyToken_OneChar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !484, metadata !898), !dbg !1666
  %0 = load i32, i32* %c.addr, align 4, !dbg !1667, !tbaa !900
  br label %NodeBlock.55

NodeBlock.55:                                     ; preds = %entry
  %Pivot.56 = icmp slt i32 %0, 59
  br i1 %Pivot.56, label %NodeBlock.21, label %NodeBlock.53

NodeBlock.53:                                     ; preds = %NodeBlock.55
  %Pivot.54 = icmp slt i32 %0, 93
  br i1 %Pivot.54, label %NodeBlock.37, label %NodeBlock.51

NodeBlock.51:                                     ; preds = %NodeBlock.53
  %Pivot.52 = icmp slt i32 %0, 124
  br i1 %Pivot.52, label %NodeBlock.43, label %NodeBlock.49

NodeBlock.49:                                     ; preds = %NodeBlock.51
  %Pivot.50 = icmp slt i32 %0, 125
  br i1 %Pivot.50, label %sw.bb.11, label %NodeBlock.47

NodeBlock.47:                                     ; preds = %NodeBlock.49
  %Pivot.48 = icmp slt i32 %0, 126
  br i1 %Pivot.48, label %sw.bb.19, label %LeafBlock.45

LeafBlock.45:                                     ; preds = %NodeBlock.47
  %SwitchLeaf46 = icmp eq i32 %0, 126
  br i1 %SwitchLeaf46, label %sw.bb.21, label %NewDefault

NodeBlock.43:                                     ; preds = %NodeBlock.51
  %Pivot.44 = icmp slt i32 %0, 94
  br i1 %Pivot.44, label %sw.bb.3, label %NodeBlock.41

NodeBlock.41:                                     ; preds = %NodeBlock.43
  %Pivot.42 = icmp slt i32 %0, 123
  br i1 %Pivot.42, label %LeafBlock.39, label %sw.bb.18

LeafBlock.39:                                     ; preds = %NodeBlock.41
  %SwitchLeaf40 = icmp eq i32 %0, 94
  br i1 %SwitchLeaf40, label %sw.bb.20, label %NewDefault

NodeBlock.37:                                     ; preds = %NodeBlock.53
  %Pivot.38 = icmp slt i32 %0, 62
  br i1 %Pivot.38, label %NodeBlock.25, label %NodeBlock.35

NodeBlock.35:                                     ; preds = %NodeBlock.37
  %Pivot.36 = icmp slt i32 %0, 64
  br i1 %Pivot.36, label %LeafBlock.27, label %NodeBlock.33

NodeBlock.33:                                     ; preds = %NodeBlock.35
  %Pivot.34 = icmp slt i32 %0, 91
  br i1 %Pivot.34, label %LeafBlock.29, label %LeafBlock.31

LeafBlock.31:                                     ; preds = %NodeBlock.33
  %SwitchLeaf32 = icmp eq i32 %0, 91
  br i1 %SwitchLeaf32, label %sw.bb.2, label %NewDefault

LeafBlock.29:                                     ; preds = %NodeBlock.33
  %SwitchLeaf30 = icmp eq i32 %0, 64
  br i1 %SwitchLeaf30, label %sw.bb.22, label %NewDefault

LeafBlock.27:                                     ; preds = %NodeBlock.35
  %SwitchLeaf28 = icmp eq i32 %0, 62
  br i1 %SwitchLeaf28, label %sw.bb.14, label %NewDefault

NodeBlock.25:                                     ; preds = %NodeBlock.37
  %Pivot.26 = icmp slt i32 %0, 60
  br i1 %Pivot.26, label %sw.bb.6, label %NodeBlock.23

NodeBlock.23:                                     ; preds = %NodeBlock.25
  %Pivot.24 = icmp slt i32 %0, 61
  br i1 %Pivot.24, label %sw.bb.13, label %sw.bb.15

NodeBlock.21:                                     ; preds = %NodeBlock.55
  %Pivot.22 = icmp slt i32 %0, 43
  br i1 %Pivot.22, label %NodeBlock.7, label %NodeBlock.19

NodeBlock.19:                                     ; preds = %NodeBlock.21
  %Pivot.20 = icmp slt i32 %0, 46
  br i1 %Pivot.20, label %NodeBlock.11, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %0, 47
  br i1 %Pivot.18, label %sw.bb.16, label %NodeBlock.15

NodeBlock.15:                                     ; preds = %NodeBlock.17
  %Pivot.16 = icmp slt i32 %0, 58
  br i1 %Pivot.16, label %LeafBlock.13, label %sw.bb.4

LeafBlock.13:                                     ; preds = %NodeBlock.15
  %SwitchLeaf14 = icmp eq i32 %0, 47
  br i1 %SwitchLeaf14, label %sw.bb.10, label %NewDefault

NodeBlock.11:                                     ; preds = %NodeBlock.19
  %Pivot.12 = icmp slt i32 %0, 44
  br i1 %Pivot.12, label %sw.bb.7, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 45
  br i1 %Pivot.10, label %sw.bb.5, label %sw.bb.8

NodeBlock.7:                                      ; preds = %NodeBlock.21
  %Pivot.8 = icmp slt i32 %0, 40
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %0, 41
  br i1 %Pivot.6, label %sw.bb, label %NodeBlock.3

NodeBlock.3:                                      ; preds = %NodeBlock.5
  %Pivot.4 = icmp slt i32 %0, 42
  br i1 %Pivot.4, label %sw.bb.1, label %sw.bb.9

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %0, 38
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 38
  br i1 %SwitchLeaf2, label %sw.bb.12, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 37
  br i1 %SwitchLeaf, label %sw.bb.17, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.5
  store i32 7, i32* %retval, !dbg !1668
  br label %return, !dbg !1668

sw.bb.1:                                          ; preds = %NodeBlock.3
  store i32 8, i32* %retval, !dbg !1670
  br label %return, !dbg !1670

sw.bb.2:                                          ; preds = %LeafBlock.31
  store i32 9, i32* %retval, !dbg !1671
  br label %return, !dbg !1671

sw.bb.3:                                          ; preds = %NodeBlock.43
  store i32 10, i32* %retval, !dbg !1672
  br label %return, !dbg !1672

sw.bb.4:                                          ; preds = %NodeBlock.15
  store i32 11, i32* %retval, !dbg !1673
  br label %return, !dbg !1673

sw.bb.5:                                          ; preds = %NodeBlock.9
  store i32 12, i32* %retval, !dbg !1674
  br label %return, !dbg !1674

sw.bb.6:                                          ; preds = %NodeBlock.25
  store i32 13, i32* %retval, !dbg !1675
  br label %return, !dbg !1675

sw.bb.7:                                          ; preds = %NodeBlock.11
  store i32 14, i32* %retval, !dbg !1676
  br label %return, !dbg !1676

sw.bb.8:                                          ; preds = %NodeBlock.9
  store i32 15, i32* %retval, !dbg !1677
  br label %return, !dbg !1677

sw.bb.9:                                          ; preds = %NodeBlock.3
  store i32 16, i32* %retval, !dbg !1678
  br label %return, !dbg !1678

sw.bb.10:                                         ; preds = %LeafBlock.13
  store i32 17, i32* %retval, !dbg !1679
  br label %return, !dbg !1679

sw.bb.11:                                         ; preds = %NodeBlock.49
  store i32 18, i32* %retval, !dbg !1680
  br label %return, !dbg !1680

sw.bb.12:                                         ; preds = %LeafBlock.1
  store i32 19, i32* %retval, !dbg !1681
  br label %return, !dbg !1681

sw.bb.13:                                         ; preds = %NodeBlock.23
  store i32 20, i32* %retval, !dbg !1682
  br label %return, !dbg !1682

sw.bb.14:                                         ; preds = %LeafBlock.27
  store i32 21, i32* %retval, !dbg !1683
  br label %return, !dbg !1683

sw.bb.15:                                         ; preds = %NodeBlock.23
  store i32 22, i32* %retval, !dbg !1684
  br label %return, !dbg !1684

sw.bb.16:                                         ; preds = %NodeBlock.17
  store i32 23, i32* %retval, !dbg !1685
  br label %return, !dbg !1685

sw.bb.17:                                         ; preds = %LeafBlock
  store i32 24, i32* %retval, !dbg !1686
  br label %return, !dbg !1686

sw.bb.18:                                         ; preds = %NodeBlock.41
  store i32 25, i32* %retval, !dbg !1687
  br label %return, !dbg !1687

sw.bb.19:                                         ; preds = %NodeBlock.47
  store i32 26, i32* %retval, !dbg !1688
  br label %return, !dbg !1688

sw.bb.20:                                         ; preds = %LeafBlock.39
  store i32 32, i32* %retval, !dbg !1689
  br label %return, !dbg !1689

sw.bb.21:                                         ; preds = %LeafBlock.45
  store i32 31, i32* %retval, !dbg !1690
  br label %return, !dbg !1690

sw.bb.22:                                         ; preds = %LeafBlock.29
  store i32 49, i32* %retval, !dbg !1691
  br label %return, !dbg !1691

NewDefault:                                       ; preds = %LeafBlock.45, %LeafBlock.39, %LeafBlock.31, %LeafBlock.29, %LeafBlock.27, %LeafBlock.13, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  store i32 52, i32* %retval, !dbg !1692
  br label %return, !dbg !1692

return:                                           ; preds = %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval, !dbg !1693
  ret i32 %1, !dbg !1693
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_TwoChars(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c1.addr, metadata !489, metadata !898), !dbg !1694
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c2.addr, metadata !490, metadata !898), !dbg !1695
  %0 = load i32, i32* %c1.addr, align 4, !dbg !1696, !tbaa !900
  br label %NodeBlock.33

NodeBlock.33:                                     ; preds = %entry
  %Pivot.34 = icmp slt i32 %0, 47
  br i1 %Pivot.34, label %NodeBlock.13, label %NodeBlock.31

NodeBlock.31:                                     ; preds = %NodeBlock.33
  %Pivot.32 = icmp slt i32 %0, 62
  br i1 %Pivot.32, label %NodeBlock.19, label %NodeBlock.29

NodeBlock.29:                                     ; preds = %NodeBlock.31
  %Pivot.30 = icmp slt i32 %0, 94
  br i1 %Pivot.30, label %LeafBlock.21, label %NodeBlock.27

NodeBlock.27:                                     ; preds = %NodeBlock.29
  %Pivot.28 = icmp slt i32 %0, 124
  br i1 %Pivot.28, label %LeafBlock.23, label %LeafBlock.25

LeafBlock.25:                                     ; preds = %NodeBlock.27
  %SwitchLeaf26 = icmp eq i32 %0, 124
  br i1 %SwitchLeaf26, label %sw.bb.29, label %NewDefault

LeafBlock.23:                                     ; preds = %NodeBlock.27
  %SwitchLeaf24 = icmp eq i32 %0, 94
  br i1 %SwitchLeaf24, label %sw.bb.38, label %NewDefault

LeafBlock.21:                                     ; preds = %NodeBlock.29
  %SwitchLeaf22 = icmp eq i32 %0, 62
  br i1 %SwitchLeaf22, label %sw.bb.10, label %NewDefault

NodeBlock.19:                                     ; preds = %NodeBlock.31
  %Pivot.20 = icmp slt i32 %0, 60
  br i1 %Pivot.20, label %LeafBlock.15, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %0, 61
  br i1 %Pivot.18, label %sw.bb.5, label %sw.bb

LeafBlock.15:                                     ; preds = %NodeBlock.19
  %SwitchLeaf16 = icmp eq i32 %0, 47
  br i1 %SwitchLeaf16, label %sw.bb.25, label %NewDefault

NodeBlock.13:                                     ; preds = %NodeBlock.33
  %Pivot.14 = icmp slt i32 %0, 42
  br i1 %Pivot.14, label %NodeBlock.3, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %0, 43
  br i1 %Pivot.12, label %sw.bb.21, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 45
  br i1 %Pivot.10, label %LeafBlock.5, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock.9
  %SwitchLeaf8 = icmp eq i32 %0, 45
  br i1 %SwitchLeaf8, label %sw.bb.17, label %NewDefault

LeafBlock.5:                                      ; preds = %NodeBlock.9
  %SwitchLeaf6 = icmp eq i32 %0, 43
  br i1 %SwitchLeaf6, label %sw.bb.14, label %NewDefault

NodeBlock.3:                                      ; preds = %NodeBlock.13
  %Pivot.4 = icmp slt i32 %0, 37
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %0, 38
  br i1 %Pivot, label %sw.bb.32, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 38
  br i1 %SwitchLeaf2, label %sw.bb.35, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %0, 33
  br i1 %SwitchLeaf, label %sw.bb.2, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.17
  %1 = load i32, i32* %c2.addr, align 4, !dbg !1697, !tbaa !900
  br label %LeafBlock.36

LeafBlock.36:                                     ; preds = %sw.bb
  %SwitchLeaf37 = icmp eq i32 %1, 61
  br i1 %SwitchLeaf37, label %sw.bb.1, label %NewDefault.35

sw.bb.1:                                          ; preds = %LeafBlock.36
  store i32 27, i32* %retval, !dbg !1699
  br label %return, !dbg !1699

NewDefault.35:                                    ; preds = %LeafBlock.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault.35
  br label %sw.epilog.41, !dbg !1701

sw.bb.2:                                          ; preds = %LeafBlock
  %2 = load i32, i32* %c2.addr, align 4, !dbg !1702, !tbaa !900
  br label %LeafBlock.39

LeafBlock.39:                                     ; preds = %sw.bb.2
  %SwitchLeaf40 = icmp eq i32 %2, 61
  br i1 %SwitchLeaf40, label %sw.bb.3, label %NewDefault.38

sw.bb.3:                                          ; preds = %LeafBlock.39
  store i32 28, i32* %retval, !dbg !1703
  br label %return, !dbg !1703

NewDefault.38:                                    ; preds = %LeafBlock.39
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %NewDefault.38
  br label %sw.epilog.41, !dbg !1705

sw.bb.5:                                          ; preds = %NodeBlock.17
  %3 = load i32, i32* %c2.addr, align 4, !dbg !1706, !tbaa !900
  br label %NodeBlock.48

NodeBlock.48:                                     ; preds = %sw.bb.5
  %Pivot.49 = icmp slt i32 %3, 61
  br i1 %Pivot.49, label %LeafBlock.42, label %NodeBlock.46

NodeBlock.46:                                     ; preds = %NodeBlock.48
  %Pivot.47 = icmp slt i32 %3, 62
  br i1 %Pivot.47, label %sw.bb.7, label %LeafBlock.44

LeafBlock.44:                                     ; preds = %NodeBlock.46
  %SwitchLeaf45 = icmp eq i32 %3, 62
  br i1 %SwitchLeaf45, label %sw.bb.6, label %NewDefault.41

LeafBlock.42:                                     ; preds = %NodeBlock.48
  %SwitchLeaf43 = icmp eq i32 %3, 60
  br i1 %SwitchLeaf43, label %sw.bb.8, label %NewDefault.41

sw.bb.6:                                          ; preds = %LeafBlock.44
  store i32 28, i32* %retval, !dbg !1707
  br label %return, !dbg !1707

sw.bb.7:                                          ; preds = %NodeBlock.46
  store i32 29, i32* %retval, !dbg !1709
  br label %return, !dbg !1709

sw.bb.8:                                          ; preds = %LeafBlock.42
  store i32 33, i32* %retval, !dbg !1710
  br label %return, !dbg !1710

NewDefault.41:                                    ; preds = %LeafBlock.44, %LeafBlock.42
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %NewDefault.41
  br label %sw.epilog.41, !dbg !1711

sw.bb.10:                                         ; preds = %LeafBlock.21
  %4 = load i32, i32* %c2.addr, align 4, !dbg !1712, !tbaa !900
  br label %NodeBlock.55

NodeBlock.55:                                     ; preds = %sw.bb.10
  %Pivot.56 = icmp slt i32 %4, 62
  br i1 %Pivot.56, label %LeafBlock.51, label %LeafBlock.53

LeafBlock.53:                                     ; preds = %NodeBlock.55
  %SwitchLeaf54 = icmp eq i32 %4, 62
  br i1 %SwitchLeaf54, label %sw.bb.12, label %NewDefault.50

LeafBlock.51:                                     ; preds = %NodeBlock.55
  %SwitchLeaf52 = icmp eq i32 %4, 61
  br i1 %SwitchLeaf52, label %sw.bb.11, label %NewDefault.50

sw.bb.11:                                         ; preds = %LeafBlock.51
  store i32 30, i32* %retval, !dbg !1713
  br label %return, !dbg !1713

sw.bb.12:                                         ; preds = %LeafBlock.53
  store i32 34, i32* %retval, !dbg !1715
  br label %return, !dbg !1715

NewDefault.50:                                    ; preds = %LeafBlock.53, %LeafBlock.51
  br label %sw.epilog.13

sw.epilog.13:                                     ; preds = %NewDefault.50
  br label %sw.epilog.41, !dbg !1716

sw.bb.14:                                         ; preds = %LeafBlock.5
  %5 = load i32, i32* %c2.addr, align 4, !dbg !1717, !tbaa !900
  br label %LeafBlock.58

LeafBlock.58:                                     ; preds = %sw.bb.14
  %SwitchLeaf59 = icmp eq i32 %5, 61
  br i1 %SwitchLeaf59, label %sw.bb.15, label %NewDefault.57

sw.bb.15:                                         ; preds = %LeafBlock.58
  store i32 36, i32* %retval, !dbg !1718
  br label %return, !dbg !1718

NewDefault.57:                                    ; preds = %LeafBlock.58
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %NewDefault.57
  br label %sw.epilog.41, !dbg !1720

sw.bb.17:                                         ; preds = %LeafBlock.7
  %6 = load i32, i32* %c2.addr, align 4, !dbg !1721, !tbaa !900
  br label %NodeBlock.65

NodeBlock.65:                                     ; preds = %sw.bb.17
  %Pivot.66 = icmp slt i32 %6, 62
  br i1 %Pivot.66, label %LeafBlock.61, label %LeafBlock.63

LeafBlock.63:                                     ; preds = %NodeBlock.65
  %SwitchLeaf64 = icmp eq i32 %6, 62
  br i1 %SwitchLeaf64, label %sw.bb.19, label %NewDefault.60

LeafBlock.61:                                     ; preds = %NodeBlock.65
  %SwitchLeaf62 = icmp eq i32 %6, 61
  br i1 %SwitchLeaf62, label %sw.bb.18, label %NewDefault.60

sw.bb.18:                                         ; preds = %LeafBlock.61
  store i32 37, i32* %retval, !dbg !1722
  br label %return, !dbg !1722

sw.bb.19:                                         ; preds = %LeafBlock.63
  store i32 50, i32* %retval, !dbg !1724
  br label %return, !dbg !1724

NewDefault.60:                                    ; preds = %LeafBlock.63, %LeafBlock.61
  br label %sw.epilog.20

sw.epilog.20:                                     ; preds = %NewDefault.60
  br label %sw.epilog.41, !dbg !1725

sw.bb.21:                                         ; preds = %NodeBlock.11
  %7 = load i32, i32* %c2.addr, align 4, !dbg !1726, !tbaa !900
  br label %NodeBlock.72

NodeBlock.72:                                     ; preds = %sw.bb.21
  %Pivot.73 = icmp slt i32 %7, 61
  br i1 %Pivot.73, label %LeafBlock.68, label %LeafBlock.70

LeafBlock.70:                                     ; preds = %NodeBlock.72
  %SwitchLeaf71 = icmp eq i32 %7, 61
  br i1 %SwitchLeaf71, label %sw.bb.23, label %NewDefault.67

LeafBlock.68:                                     ; preds = %NodeBlock.72
  %SwitchLeaf69 = icmp eq i32 %7, 42
  br i1 %SwitchLeaf69, label %sw.bb.22, label %NewDefault.67

sw.bb.22:                                         ; preds = %LeafBlock.68
  store i32 35, i32* %retval, !dbg !1727
  br label %return, !dbg !1727

sw.bb.23:                                         ; preds = %LeafBlock.70
  store i32 38, i32* %retval, !dbg !1729
  br label %return, !dbg !1729

NewDefault.67:                                    ; preds = %LeafBlock.70, %LeafBlock.68
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %NewDefault.67
  br label %sw.epilog.41, !dbg !1730

sw.bb.25:                                         ; preds = %LeafBlock.15
  %8 = load i32, i32* %c2.addr, align 4, !dbg !1731, !tbaa !900
  br label %NodeBlock.79

NodeBlock.79:                                     ; preds = %sw.bb.25
  %Pivot.80 = icmp slt i32 %8, 61
  br i1 %Pivot.80, label %LeafBlock.75, label %LeafBlock.77

LeafBlock.77:                                     ; preds = %NodeBlock.79
  %SwitchLeaf78 = icmp eq i32 %8, 61
  br i1 %SwitchLeaf78, label %sw.bb.27, label %NewDefault.74

LeafBlock.75:                                     ; preds = %NodeBlock.79
  %SwitchLeaf76 = icmp eq i32 %8, 47
  br i1 %SwitchLeaf76, label %sw.bb.26, label %NewDefault.74

sw.bb.26:                                         ; preds = %LeafBlock.75
  store i32 47, i32* %retval, !dbg !1732
  br label %return, !dbg !1732

sw.bb.27:                                         ; preds = %LeafBlock.77
  store i32 39, i32* %retval, !dbg !1734
  br label %return, !dbg !1734

NewDefault.74:                                    ; preds = %LeafBlock.77, %LeafBlock.75
  br label %sw.epilog.28

sw.epilog.28:                                     ; preds = %NewDefault.74
  br label %sw.epilog.41, !dbg !1735

sw.bb.29:                                         ; preds = %LeafBlock.25
  %9 = load i32, i32* %c2.addr, align 4, !dbg !1736, !tbaa !900
  br label %LeafBlock.82

LeafBlock.82:                                     ; preds = %sw.bb.29
  %SwitchLeaf83 = icmp eq i32 %9, 61
  br i1 %SwitchLeaf83, label %sw.bb.30, label %NewDefault.81

sw.bb.30:                                         ; preds = %LeafBlock.82
  store i32 42, i32* %retval, !dbg !1737
  br label %return, !dbg !1737

NewDefault.81:                                    ; preds = %LeafBlock.82
  br label %sw.epilog.31

sw.epilog.31:                                     ; preds = %NewDefault.81
  br label %sw.epilog.41, !dbg !1739

sw.bb.32:                                         ; preds = %NodeBlock
  %10 = load i32, i32* %c2.addr, align 4, !dbg !1740, !tbaa !900
  br label %LeafBlock.85

LeafBlock.85:                                     ; preds = %sw.bb.32
  %SwitchLeaf86 = icmp eq i32 %10, 61
  br i1 %SwitchLeaf86, label %sw.bb.33, label %NewDefault.84

sw.bb.33:                                         ; preds = %LeafBlock.85
  store i32 40, i32* %retval, !dbg !1741
  br label %return, !dbg !1741

NewDefault.84:                                    ; preds = %LeafBlock.85
  br label %sw.epilog.34

sw.epilog.34:                                     ; preds = %NewDefault.84
  br label %sw.epilog.41, !dbg !1743

sw.bb.35:                                         ; preds = %LeafBlock.1
  %11 = load i32, i32* %c2.addr, align 4, !dbg !1744, !tbaa !900
  br label %LeafBlock.88

LeafBlock.88:                                     ; preds = %sw.bb.35
  %SwitchLeaf89 = icmp eq i32 %11, 61
  br i1 %SwitchLeaf89, label %sw.bb.36, label %NewDefault.87

sw.bb.36:                                         ; preds = %LeafBlock.88
  store i32 41, i32* %retval, !dbg !1745
  br label %return, !dbg !1745

NewDefault.87:                                    ; preds = %LeafBlock.88
  br label %sw.epilog.37

sw.epilog.37:                                     ; preds = %NewDefault.87
  br label %sw.epilog.41, !dbg !1747

sw.bb.38:                                         ; preds = %LeafBlock.23
  %12 = load i32, i32* %c2.addr, align 4, !dbg !1748, !tbaa !900
  br label %LeafBlock.91

LeafBlock.91:                                     ; preds = %sw.bb.38
  %SwitchLeaf92 = icmp eq i32 %12, 61
  br i1 %SwitchLeaf92, label %sw.bb.39, label %NewDefault.90

sw.bb.39:                                         ; preds = %LeafBlock.91
  store i32 43, i32* %retval, !dbg !1749
  br label %return, !dbg !1749

NewDefault.90:                                    ; preds = %LeafBlock.91
  br label %sw.epilog.40

sw.epilog.40:                                     ; preds = %NewDefault.90
  br label %sw.epilog.41, !dbg !1751

NewDefault:                                       ; preds = %LeafBlock.25, %LeafBlock.23, %LeafBlock.21, %LeafBlock.15, %LeafBlock.7, %LeafBlock.5, %LeafBlock.1, %LeafBlock
  br label %sw.epilog.41

sw.epilog.41:                                     ; preds = %NewDefault, %sw.epilog.40, %sw.epilog.37, %sw.epilog.34, %sw.epilog.31, %sw.epilog.28, %sw.epilog.24, %sw.epilog.20, %sw.epilog.16, %sw.epilog.13, %sw.epilog.9, %sw.epilog.4, %sw.epilog
  store i32 52, i32* %retval, !dbg !1752
  br label %return, !dbg !1752

return:                                           ; preds = %sw.epilog.41, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.26, %sw.bb.23, %sw.bb.22, %sw.bb.19, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.11, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.3, %sw.bb.1
  %13 = load i32, i32* %retval, !dbg !1753
  ret i32 %13, !dbg !1753
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_ThreeChars(i32 %c1, i32 %c2, i32 %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %c3.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c1.addr, metadata !495, metadata !898), !dbg !1754
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c2.addr, metadata !496, metadata !898), !dbg !1755
  store i32 %c3, i32* %c3.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c3.addr, metadata !497, metadata !898), !dbg !1756
  %0 = load i32, i32* %c1.addr, align 4, !dbg !1757, !tbaa !900
  br label %NodeBlock.11

NodeBlock.11:                                     ; preds = %entry
  %Pivot.12 = icmp slt i32 %0, 47
  br i1 %Pivot.12, label %NodeBlock, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 60
  br i1 %Pivot.10, label %LeafBlock.1, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 62
  br i1 %Pivot.8, label %LeafBlock.3, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 62
  br i1 %SwitchLeaf6, label %sw.bb.4, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.7
  %SwitchLeaf4 = icmp eq i32 %0, 60
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock.9
  %SwitchLeaf2 = icmp eq i32 %0, 47
  br i1 %SwitchLeaf2, label %sw.bb.14, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.11
  %Pivot = icmp slt i32 %0, 46
  br i1 %Pivot, label %LeafBlock, label %sw.bb.19

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 42
  br i1 %SwitchLeaf, label %sw.bb.9, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.3
  %1 = load i32, i32* %c2.addr, align 4, !dbg !1758, !tbaa !900
  br label %LeafBlock.14

LeafBlock.14:                                     ; preds = %sw.bb
  %SwitchLeaf15 = icmp eq i32 %1, 60
  br i1 %SwitchLeaf15, label %sw.bb.1, label %NewDefault.13

sw.bb.1:                                          ; preds = %LeafBlock.14
  %2 = load i32, i32* %c3.addr, align 4, !dbg !1760, !tbaa !900
  br label %LeafBlock.17

LeafBlock.17:                                     ; preds = %sw.bb.1
  %SwitchLeaf18 = icmp eq i32 %2, 61
  br i1 %SwitchLeaf18, label %sw.bb.2, label %NewDefault.16

sw.bb.2:                                          ; preds = %LeafBlock.17
  store i32 44, i32* %retval, !dbg !1762
  br label %return, !dbg !1762

NewDefault.16:                                    ; preds = %LeafBlock.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault.16
  br label %sw.epilog.3, !dbg !1764

NewDefault.13:                                    ; preds = %LeafBlock.14
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %NewDefault.13, %sw.epilog
  br label %sw.epilog.24, !dbg !1765

sw.bb.4:                                          ; preds = %LeafBlock.5
  %3 = load i32, i32* %c2.addr, align 4, !dbg !1766, !tbaa !900
  br label %LeafBlock.20

LeafBlock.20:                                     ; preds = %sw.bb.4
  %SwitchLeaf21 = icmp eq i32 %3, 62
  br i1 %SwitchLeaf21, label %sw.bb.5, label %NewDefault.19

sw.bb.5:                                          ; preds = %LeafBlock.20
  %4 = load i32, i32* %c3.addr, align 4, !dbg !1767, !tbaa !900
  br label %LeafBlock.23

LeafBlock.23:                                     ; preds = %sw.bb.5
  %SwitchLeaf24 = icmp eq i32 %4, 61
  br i1 %SwitchLeaf24, label %sw.bb.6, label %NewDefault.22

sw.bb.6:                                          ; preds = %LeafBlock.23
  store i32 45, i32* %retval, !dbg !1769
  br label %return, !dbg !1769

NewDefault.22:                                    ; preds = %LeafBlock.23
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %NewDefault.22
  br label %sw.epilog.8, !dbg !1771

NewDefault.19:                                    ; preds = %LeafBlock.20
  br label %sw.epilog.8

sw.epilog.8:                                      ; preds = %NewDefault.19, %sw.epilog.7
  br label %sw.epilog.24, !dbg !1772

sw.bb.9:                                          ; preds = %LeafBlock
  %5 = load i32, i32* %c2.addr, align 4, !dbg !1773, !tbaa !900
  br label %LeafBlock.26

LeafBlock.26:                                     ; preds = %sw.bb.9
  %SwitchLeaf27 = icmp eq i32 %5, 42
  br i1 %SwitchLeaf27, label %sw.bb.10, label %NewDefault.25

sw.bb.10:                                         ; preds = %LeafBlock.26
  %6 = load i32, i32* %c3.addr, align 4, !dbg !1774, !tbaa !900
  br label %LeafBlock.29

LeafBlock.29:                                     ; preds = %sw.bb.10
  %SwitchLeaf30 = icmp eq i32 %6, 61
  br i1 %SwitchLeaf30, label %sw.bb.11, label %NewDefault.28

sw.bb.11:                                         ; preds = %LeafBlock.29
  store i32 46, i32* %retval, !dbg !1776
  br label %return, !dbg !1776

NewDefault.28:                                    ; preds = %LeafBlock.29
  br label %sw.epilog.12

sw.epilog.12:                                     ; preds = %NewDefault.28
  br label %sw.epilog.13, !dbg !1778

NewDefault.25:                                    ; preds = %LeafBlock.26
  br label %sw.epilog.13

sw.epilog.13:                                     ; preds = %NewDefault.25, %sw.epilog.12
  br label %sw.epilog.24, !dbg !1779

sw.bb.14:                                         ; preds = %LeafBlock.1
  %7 = load i32, i32* %c2.addr, align 4, !dbg !1780, !tbaa !900
  br label %LeafBlock.32

LeafBlock.32:                                     ; preds = %sw.bb.14
  %SwitchLeaf33 = icmp eq i32 %7, 47
  br i1 %SwitchLeaf33, label %sw.bb.15, label %NewDefault.31

sw.bb.15:                                         ; preds = %LeafBlock.32
  %8 = load i32, i32* %c3.addr, align 4, !dbg !1781, !tbaa !900
  br label %LeafBlock.35

LeafBlock.35:                                     ; preds = %sw.bb.15
  %SwitchLeaf36 = icmp eq i32 %8, 61
  br i1 %SwitchLeaf36, label %sw.bb.16, label %NewDefault.34

sw.bb.16:                                         ; preds = %LeafBlock.35
  store i32 48, i32* %retval, !dbg !1783
  br label %return, !dbg !1783

NewDefault.34:                                    ; preds = %LeafBlock.35
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %NewDefault.34
  br label %sw.epilog.18, !dbg !1785

NewDefault.31:                                    ; preds = %LeafBlock.32
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %NewDefault.31, %sw.epilog.17
  br label %sw.epilog.24, !dbg !1786

sw.bb.19:                                         ; preds = %NodeBlock
  %9 = load i32, i32* %c2.addr, align 4, !dbg !1787, !tbaa !900
  br label %LeafBlock.38

LeafBlock.38:                                     ; preds = %sw.bb.19
  %SwitchLeaf39 = icmp eq i32 %9, 46
  br i1 %SwitchLeaf39, label %sw.bb.20, label %NewDefault.37

sw.bb.20:                                         ; preds = %LeafBlock.38
  %10 = load i32, i32* %c3.addr, align 4, !dbg !1788, !tbaa !900
  br label %LeafBlock.41

LeafBlock.41:                                     ; preds = %sw.bb.20
  %SwitchLeaf42 = icmp eq i32 %10, 46
  br i1 %SwitchLeaf42, label %sw.bb.21, label %NewDefault.40

sw.bb.21:                                         ; preds = %LeafBlock.41
  store i32 51, i32* %retval, !dbg !1790
  br label %return, !dbg !1790

NewDefault.40:                                    ; preds = %LeafBlock.41
  br label %sw.epilog.22

sw.epilog.22:                                     ; preds = %NewDefault.40
  br label %sw.epilog.23, !dbg !1792

NewDefault.37:                                    ; preds = %LeafBlock.38
  br label %sw.epilog.23

sw.epilog.23:                                     ; preds = %NewDefault.37, %sw.epilog.22
  br label %sw.epilog.24, !dbg !1793

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %NewDefault, %sw.epilog.23, %sw.epilog.18, %sw.epilog.13, %sw.epilog.8, %sw.epilog.3
  store i32 52, i32* %retval, !dbg !1794
  br label %return, !dbg !1794

return:                                           ; preds = %sw.epilog.24, %sw.bb.21, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.2
  %11 = load i32, i32* %retval, !dbg !1795
  ret i32 %11, !dbg !1795
}

; Function Attrs: nounwind uwtable
define i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** %p_start, i8** %p_end) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %p_start.addr = alloca i8**, align 8
  %p_end.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !503, metadata !898), !dbg !1796
  store i8** %p_start, i8*** %p_start.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_start.addr, metadata !504, metadata !898), !dbg !1797
  store i8** %p_end, i8*** %p_end.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_end.addr, metadata !505, metadata !898), !dbg !1798
  %0 = bitcast i32* %result to i8*, !dbg !1799
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1799
  call void @llvm.dbg.declare(metadata i32* %result, metadata !506, metadata !898), !dbg !1800
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1801, !tbaa !894
  %2 = load i8**, i8*** %p_start.addr, align 8, !dbg !1802, !tbaa !894
  %3 = load i8**, i8*** %p_end.addr, align 8, !dbg !1803, !tbaa !894
  %call = call i32 @tok_get(%struct.tok_state* %1, i8** %2, i8** %3), !dbg !1804
  store i32 %call, i32* %result, align 4, !dbg !1800, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1805, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 22, !dbg !1807
  %5 = load i32, i32* %decoding_erred, align 4, !dbg !1807, !tbaa !1039
  %tobool = icmp ne i32 %5, 0, !dbg !1805
  br i1 %tobool, label %if.then, label %if.end, !dbg !1808

if.then:                                          ; preds = %entry
  store i32 53, i32* %result, align 4, !dbg !1809, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1811, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 5, !dbg !1812
  store i32 22, i32* %done, align 4, !dbg !1813, !tbaa !973
  br label %if.end, !dbg !1814

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %result, align 4, !dbg !1815, !tbaa !900
  %8 = bitcast i32* %result to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !1816
  ret i32 %7, !dbg !1817
}

; Function Attrs: nounwind uwtable
define internal i32 @tok_get(%struct.tok_state* %tok, i8** %p_start, i8** %p_end) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %p_start.addr = alloca i8**, align 8
  %p_end.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %blankline = alloca i32, align 4
  %nonascii = alloca i32, align 4
  %col = alloca i32, align 4
  %altcol = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %saw_b = alloca i32, align 4
  %saw_r = alloca i32, align 4
  %saw_u = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %quote = alloca i32, align 4
  %quote_size = alloca i32, align 4
  %end_quote_size = alloca i32, align 4
  %c2 = alloca i32, align 4
  %token = alloca i32, align 4
  %c3 = alloca i32, align 4
  %token3 = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !705, metadata !898), !dbg !1818
  store i8** %p_start, i8*** %p_start.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_start.addr, metadata !706, metadata !898), !dbg !1819
  store i8** %p_end, i8*** %p_end.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_end.addr, metadata !707, metadata !898), !dbg !1820
  %0 = bitcast i32* %c to i8*, !dbg !1821
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1821
  call void @llvm.dbg.declare(metadata i32* %c, metadata !708, metadata !898), !dbg !1822
  %1 = bitcast i32* %blankline to i8*, !dbg !1823
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1823
  call void @llvm.dbg.declare(metadata i32* %blankline, metadata !709, metadata !898), !dbg !1824
  %2 = bitcast i32* %nonascii to i8*, !dbg !1823
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1823
  call void @llvm.dbg.declare(metadata i32* %nonascii, metadata !710, metadata !898), !dbg !1825
  %3 = load i8**, i8*** %p_end.addr, align 8, !dbg !1826, !tbaa !894
  store i8* null, i8** %3, align 8, !dbg !1827, !tbaa !894
  %4 = load i8**, i8*** %p_start.addr, align 8, !dbg !1828, !tbaa !894
  store i8* null, i8** %4, align 8, !dbg !1829, !tbaa !894
  br label %nextline, !dbg !1830

nextline:                                         ; preds = %if.then.248, %entry
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1831, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 4, !dbg !1832
  store i8* null, i8** %start, align 8, !dbg !1833, !tbaa !957
  store i32 0, i32* %blankline, align 4, !dbg !1834, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1835, !tbaa !894
  %atbol = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 10, !dbg !1836
  %7 = load i32, i32* %atbol, align 4, !dbg !1836, !tbaa !996
  %tobool = icmp ne i32 %7, 0, !dbg !1835
  br i1 %tobool, label %if.then, label %if.end.113, !dbg !1837

if.then:                                          ; preds = %nextline
  %8 = bitcast i32* %col to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1838
  call void @llvm.dbg.declare(metadata i32* %col, metadata !711, metadata !898), !dbg !1839
  store i32 0, i32* %col, align 4, !dbg !1839, !tbaa !900
  %9 = bitcast i32* %altcol to i8*, !dbg !1840
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !1840
  call void @llvm.dbg.declare(metadata i32* %altcol, metadata !714, metadata !898), !dbg !1841
  store i32 0, i32* %altcol, align 4, !dbg !1841, !tbaa !900
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1842, !tbaa !894
  %atbol1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 10, !dbg !1843
  store i32 0, i32* %atbol1, align 4, !dbg !1844, !tbaa !996
  br label %for.cond, !dbg !1845

for.cond:                                         ; preds = %if.end.16, %if.then
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1846, !tbaa !894
  %call = call i32 @tok_nextc(%struct.tok_state* %11), !dbg !1850
  store i32 %call, i32* %c, align 4, !dbg !1851, !tbaa !900
  %12 = load i32, i32* %c, align 4, !dbg !1852, !tbaa !900
  %cmp = icmp eq i32 %12, 32, !dbg !1854
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1855

if.then.2:                                        ; preds = %for.cond
  %13 = load i32, i32* %col, align 4, !dbg !1856, !tbaa !900
  %inc = add i32 %13, 1, !dbg !1856
  store i32 %inc, i32* %col, align 4, !dbg !1856, !tbaa !900
  %14 = load i32, i32* %altcol, align 4, !dbg !1857, !tbaa !900
  %inc3 = add i32 %14, 1, !dbg !1857
  store i32 %inc3, i32* %altcol, align 4, !dbg !1857, !tbaa !900
  br label %if.end.16, !dbg !1858

if.else:                                          ; preds = %for.cond
  %15 = load i32, i32* %c, align 4, !dbg !1859, !tbaa !900
  %cmp4 = icmp eq i32 %15, 9, !dbg !1861
  br i1 %cmp4, label %if.then.5, label %if.else.11, !dbg !1862

if.then.5:                                        ; preds = %if.else
  %16 = load i32, i32* %col, align 4, !dbg !1863, !tbaa !900
  %17 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1865, !tbaa !894
  %tabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 7, !dbg !1866
  %18 = load i32, i32* %tabsize, align 4, !dbg !1866, !tbaa !985
  %div = sdiv i32 %16, %18, !dbg !1867
  %add = add i32 %div, 1, !dbg !1868
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1869, !tbaa !894
  %tabsize6 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 7, !dbg !1870
  %20 = load i32, i32* %tabsize6, align 4, !dbg !1870, !tbaa !985
  %mul = mul i32 %add, %20, !dbg !1871
  store i32 %mul, i32* %col, align 4, !dbg !1872, !tbaa !900
  %21 = load i32, i32* %altcol, align 4, !dbg !1873, !tbaa !900
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1874, !tbaa !894
  %alttabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 19, !dbg !1875
  %23 = load i32, i32* %alttabsize, align 4, !dbg !1875, !tbaa !1028
  %div7 = sdiv i32 %21, %23, !dbg !1876
  %add8 = add i32 %div7, 1, !dbg !1877
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1878, !tbaa !894
  %alttabsize9 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 19, !dbg !1879
  %25 = load i32, i32* %alttabsize9, align 4, !dbg !1879, !tbaa !1028
  %mul10 = mul i32 %add8, %25, !dbg !1880
  store i32 %mul10, i32* %altcol, align 4, !dbg !1881, !tbaa !900
  br label %if.end.15, !dbg !1882

if.else.11:                                       ; preds = %if.else
  %26 = load i32, i32* %c, align 4, !dbg !1883, !tbaa !900
  %cmp12 = icmp eq i32 %26, 12, !dbg !1885
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !1886

if.then.13:                                       ; preds = %if.else.11
  store i32 0, i32* %altcol, align 4, !dbg !1887, !tbaa !900
  store i32 0, i32* %col, align 4, !dbg !1888, !tbaa !900
  br label %if.end, !dbg !1889

if.else.14:                                       ; preds = %if.else.11
  br label %for.end, !dbg !1890

if.end:                                           ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.2
  br label %for.cond, !dbg !1891

for.end:                                          ; preds = %if.else.14
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1892, !tbaa !894
  %28 = load i32, i32* %c, align 4, !dbg !1893, !tbaa !900
  call void @tok_backup(%struct.tok_state* %27, i32 %28), !dbg !1894
  %29 = load i32, i32* %c, align 4, !dbg !1895, !tbaa !900
  %cmp17 = icmp eq i32 %29, 35, !dbg !1897
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false, !dbg !1898

lor.lhs.false:                                    ; preds = %for.end
  %30 = load i32, i32* %c, align 4, !dbg !1899, !tbaa !900
  %cmp18 = icmp eq i32 %30, 10, !dbg !1901
  br i1 %cmp18, label %if.then.19, label %if.end.27, !dbg !1902

if.then.19:                                       ; preds = %lor.lhs.false, %for.end
  %31 = load i32, i32* %col, align 4, !dbg !1903, !tbaa !900
  %cmp20 = icmp eq i32 %31, 0, !dbg !1906
  br i1 %cmp20, label %land.lhs.true, label %if.else.25, !dbg !1907

land.lhs.true:                                    ; preds = %if.then.19
  %32 = load i32, i32* %c, align 4, !dbg !1908, !tbaa !900
  %cmp21 = icmp eq i32 %32, 10, !dbg !1910
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25, !dbg !1911

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1912, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 12, !dbg !1914
  %34 = load i8*, i8** %prompt, align 8, !dbg !1914, !tbaa !1008
  %cmp23 = icmp ne i8* %34, null, !dbg !1915
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1916

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %blankline, align 4, !dbg !1917, !tbaa !900
  br label %if.end.26, !dbg !1918

if.else.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.then.19
  store i32 1, i32* %blankline, align 4, !dbg !1919, !tbaa !900
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27, !dbg !1920

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  %35 = load i32, i32* %blankline, align 4, !dbg !1921, !tbaa !900
  %tobool28 = icmp ne i32 %35, 0, !dbg !1921
  br i1 %tobool28, label %if.end.111, label %land.lhs.true.29, !dbg !1923

land.lhs.true.29:                                 ; preds = %if.end.27
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1924, !tbaa !894
  %level = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 15, !dbg !1926
  %37 = load i32, i32* %level, align 4, !dbg !1926, !tbaa !1016
  %cmp30 = icmp eq i32 %37, 0, !dbg !1927
  br i1 %cmp30, label %if.then.31, label %if.end.111, !dbg !1928

if.then.31:                                       ; preds = %land.lhs.true.29
  %38 = load i32, i32* %col, align 4, !dbg !1929, !tbaa !900
  %39 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1932, !tbaa !894
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %39, i32 0, i32 8, !dbg !1933
  %40 = load i32, i32* %indent, align 4, !dbg !1933, !tbaa !989
  %idxprom = sext i32 %40 to i64, !dbg !1934
  %41 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1934, !tbaa !894
  %indstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %41, i32 0, i32 9, !dbg !1935
  %arrayidx = getelementptr [100 x i32], [100 x i32]* %indstack, i32 0, i64 %idxprom, !dbg !1934
  %42 = load i32, i32* %arrayidx, align 4, !dbg !1934, !tbaa !900
  %cmp32 = icmp eq i32 %38, %42, !dbg !1936
  br i1 %cmp32, label %if.then.33, label %if.else.44, !dbg !1937

if.then.33:                                       ; preds = %if.then.31
  %43 = load i32, i32* %altcol, align 4, !dbg !1938, !tbaa !900
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1941, !tbaa !894
  %indent34 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %44, i32 0, i32 8, !dbg !1942
  %45 = load i32, i32* %indent34, align 4, !dbg !1942, !tbaa !989
  %idxprom35 = sext i32 %45 to i64, !dbg !1943
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1943, !tbaa !894
  %altindstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %46, i32 0, i32 20, !dbg !1944
  %arrayidx36 = getelementptr [100 x i32], [100 x i32]* %altindstack, i32 0, i64 %idxprom35, !dbg !1943
  %47 = load i32, i32* %arrayidx36, align 4, !dbg !1943, !tbaa !900
  %cmp37 = icmp ne i32 %43, %47, !dbg !1945
  br i1 %cmp37, label %if.then.38, label %if.end.43, !dbg !1946

if.then.38:                                       ; preds = %if.then.33
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1947, !tbaa !894
  %call39 = call i32 @indenterror(%struct.tok_state* %48), !dbg !1950
  %tobool40 = icmp ne i32 %call39, 0, !dbg !1950
  br i1 %tobool40, label %if.then.41, label %if.end.42, !dbg !1951

if.then.41:                                       ; preds = %if.then.38
  store i32 53, i32* %retval, !dbg !1952
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1952

if.end.42:                                        ; preds = %if.then.38
  br label %if.end.43, !dbg !1953

if.end.43:                                        ; preds = %if.end.42, %if.then.33
  br label %if.end.110, !dbg !1954

if.else.44:                                       ; preds = %if.then.31
  %49 = load i32, i32* %col, align 4, !dbg !1955, !tbaa !900
  %50 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1957, !tbaa !894
  %indent45 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %50, i32 0, i32 8, !dbg !1958
  %51 = load i32, i32* %indent45, align 4, !dbg !1958, !tbaa !989
  %idxprom46 = sext i32 %51 to i64, !dbg !1959
  %52 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1959, !tbaa !894
  %indstack47 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %52, i32 0, i32 9, !dbg !1960
  %arrayidx48 = getelementptr [100 x i32], [100 x i32]* %indstack47, i32 0, i64 %idxprom46, !dbg !1959
  %53 = load i32, i32* %arrayidx48, align 4, !dbg !1959, !tbaa !900
  %cmp49 = icmp sgt i32 %49, %53, !dbg !1961
  br i1 %cmp49, label %if.then.50, label %if.else.77, !dbg !1962

if.then.50:                                       ; preds = %if.else.44
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1963, !tbaa !894
  %indent51 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %54, i32 0, i32 8, !dbg !1966
  %55 = load i32, i32* %indent51, align 4, !dbg !1966, !tbaa !989
  %add52 = add i32 %55, 1, !dbg !1967
  %cmp53 = icmp sge i32 %add52, 100, !dbg !1968
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !1969

if.then.54:                                       ; preds = %if.then.50
  %56 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1970, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %56, i32 0, i32 5, !dbg !1972
  store i32 20, i32* %done, align 4, !dbg !1973, !tbaa !973
  %57 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1974, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %57, i32 0, i32 2, !dbg !1975
  %58 = load i8*, i8** %inp, align 8, !dbg !1975, !tbaa !928
  %59 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1976, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %59, i32 0, i32 1, !dbg !1977
  store i8* %58, i8** %cur, align 8, !dbg !1978, !tbaa !937
  store i32 53, i32* %retval, !dbg !1979
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1979

if.end.55:                                        ; preds = %if.then.50
  %60 = load i32, i32* %altcol, align 4, !dbg !1980, !tbaa !900
  %61 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1982, !tbaa !894
  %indent56 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %61, i32 0, i32 8, !dbg !1983
  %62 = load i32, i32* %indent56, align 4, !dbg !1983, !tbaa !989
  %idxprom57 = sext i32 %62 to i64, !dbg !1984
  %63 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1984, !tbaa !894
  %altindstack58 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %63, i32 0, i32 20, !dbg !1985
  %arrayidx59 = getelementptr [100 x i32], [100 x i32]* %altindstack58, i32 0, i64 %idxprom57, !dbg !1984
  %64 = load i32, i32* %arrayidx59, align 4, !dbg !1984, !tbaa !900
  %cmp60 = icmp sle i32 %60, %64, !dbg !1986
  br i1 %cmp60, label %if.then.61, label %if.end.66, !dbg !1987

if.then.61:                                       ; preds = %if.end.55
  %65 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1988, !tbaa !894
  %call62 = call i32 @indenterror(%struct.tok_state* %65), !dbg !1991
  %tobool63 = icmp ne i32 %call62, 0, !dbg !1991
  br i1 %tobool63, label %if.then.64, label %if.end.65, !dbg !1992

if.then.64:                                       ; preds = %if.then.61
  store i32 53, i32* %retval, !dbg !1993
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1993

if.end.65:                                        ; preds = %if.then.61
  br label %if.end.66, !dbg !1994

if.end.66:                                        ; preds = %if.end.65, %if.end.55
  %66 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1995, !tbaa !894
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %66, i32 0, i32 11, !dbg !1996
  %67 = load i32, i32* %pendin, align 4, !dbg !1997, !tbaa !1000
  %inc67 = add i32 %67, 1, !dbg !1997
  store i32 %inc67, i32* %pendin, align 4, !dbg !1997, !tbaa !1000
  %68 = load i32, i32* %col, align 4, !dbg !1998, !tbaa !900
  %69 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1999, !tbaa !894
  %indent68 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %69, i32 0, i32 8, !dbg !2000
  %70 = load i32, i32* %indent68, align 4, !dbg !2001, !tbaa !989
  %inc69 = add i32 %70, 1, !dbg !2001
  store i32 %inc69, i32* %indent68, align 4, !dbg !2001, !tbaa !989
  %idxprom70 = sext i32 %inc69 to i64, !dbg !2002
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2002, !tbaa !894
  %indstack71 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %71, i32 0, i32 9, !dbg !2003
  %arrayidx72 = getelementptr [100 x i32], [100 x i32]* %indstack71, i32 0, i64 %idxprom70, !dbg !2002
  store i32 %68, i32* %arrayidx72, align 4, !dbg !2004, !tbaa !900
  %72 = load i32, i32* %altcol, align 4, !dbg !2005, !tbaa !900
  %73 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2006, !tbaa !894
  %indent73 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %73, i32 0, i32 8, !dbg !2007
  %74 = load i32, i32* %indent73, align 4, !dbg !2007, !tbaa !989
  %idxprom74 = sext i32 %74 to i64, !dbg !2008
  %75 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2008, !tbaa !894
  %altindstack75 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %75, i32 0, i32 20, !dbg !2009
  %arrayidx76 = getelementptr [100 x i32], [100 x i32]* %altindstack75, i32 0, i64 %idxprom74, !dbg !2008
  store i32 %72, i32* %arrayidx76, align 4, !dbg !2010, !tbaa !900
  br label %if.end.109, !dbg !2011

if.else.77:                                       ; preds = %if.else.44
  br label %while.cond, !dbg !2012

while.cond:                                       ; preds = %while.body, %if.else.77
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2014, !tbaa !894
  %indent78 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %76, i32 0, i32 8, !dbg !2017
  %77 = load i32, i32* %indent78, align 4, !dbg !2017, !tbaa !989
  %cmp79 = icmp sgt i32 %77, 0, !dbg !2018
  br i1 %cmp79, label %land.rhs, label %land.end, !dbg !2019

land.rhs:                                         ; preds = %while.cond
  %78 = load i32, i32* %col, align 4, !dbg !2020, !tbaa !900
  %79 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2021, !tbaa !894
  %indent80 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %79, i32 0, i32 8, !dbg !2022
  %80 = load i32, i32* %indent80, align 4, !dbg !2022, !tbaa !989
  %idxprom81 = sext i32 %80 to i64, !dbg !2023
  %81 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2023, !tbaa !894
  %indstack82 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %81, i32 0, i32 9, !dbg !2024
  %arrayidx83 = getelementptr [100 x i32], [100 x i32]* %indstack82, i32 0, i64 %idxprom81, !dbg !2023
  %82 = load i32, i32* %arrayidx83, align 4, !dbg !2023, !tbaa !900
  %cmp84 = icmp slt i32 %78, %82, !dbg !2025
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %83 = phi i1 [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %83, label %while.body, label %while.end, !dbg !2026

while.body:                                       ; preds = %land.end
  %84 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2028, !tbaa !894
  %pendin85 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %84, i32 0, i32 11, !dbg !2030
  %85 = load i32, i32* %pendin85, align 4, !dbg !2031, !tbaa !1000
  %dec = add i32 %85, -1, !dbg !2031
  store i32 %dec, i32* %pendin85, align 4, !dbg !2031, !tbaa !1000
  %86 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2032, !tbaa !894
  %indent86 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %86, i32 0, i32 8, !dbg !2033
  %87 = load i32, i32* %indent86, align 4, !dbg !2034, !tbaa !989
  %dec87 = add i32 %87, -1, !dbg !2034
  store i32 %dec87, i32* %indent86, align 4, !dbg !2034, !tbaa !989
  br label %while.cond, !dbg !2012

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %col, align 4, !dbg !2035, !tbaa !900
  %89 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2037, !tbaa !894
  %indent88 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %89, i32 0, i32 8, !dbg !2038
  %90 = load i32, i32* %indent88, align 4, !dbg !2038, !tbaa !989
  %idxprom89 = sext i32 %90 to i64, !dbg !2039
  %91 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2039, !tbaa !894
  %indstack90 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %91, i32 0, i32 9, !dbg !2040
  %arrayidx91 = getelementptr [100 x i32], [100 x i32]* %indstack90, i32 0, i64 %idxprom89, !dbg !2039
  %92 = load i32, i32* %arrayidx91, align 4, !dbg !2039, !tbaa !900
  %cmp92 = icmp ne i32 %88, %92, !dbg !2041
  br i1 %cmp92, label %if.then.93, label %if.end.97, !dbg !2042

if.then.93:                                       ; preds = %while.end
  %93 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2043, !tbaa !894
  %done94 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %93, i32 0, i32 5, !dbg !2045
  store i32 21, i32* %done94, align 4, !dbg !2046, !tbaa !973
  %94 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2047, !tbaa !894
  %inp95 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %94, i32 0, i32 2, !dbg !2048
  %95 = load i8*, i8** %inp95, align 8, !dbg !2048, !tbaa !928
  %96 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2049, !tbaa !894
  %cur96 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %96, i32 0, i32 1, !dbg !2050
  store i8* %95, i8** %cur96, align 8, !dbg !2051, !tbaa !937
  store i32 53, i32* %retval, !dbg !2052
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2052

if.end.97:                                        ; preds = %while.end
  %97 = load i32, i32* %altcol, align 4, !dbg !2053, !tbaa !900
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2055, !tbaa !894
  %indent98 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 8, !dbg !2056
  %99 = load i32, i32* %indent98, align 4, !dbg !2056, !tbaa !989
  %idxprom99 = sext i32 %99 to i64, !dbg !2057
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2057, !tbaa !894
  %altindstack100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 20, !dbg !2058
  %arrayidx101 = getelementptr [100 x i32], [100 x i32]* %altindstack100, i32 0, i64 %idxprom99, !dbg !2057
  %101 = load i32, i32* %arrayidx101, align 4, !dbg !2057, !tbaa !900
  %cmp102 = icmp ne i32 %97, %101, !dbg !2059
  br i1 %cmp102, label %if.then.103, label %if.end.108, !dbg !2060

if.then.103:                                      ; preds = %if.end.97
  %102 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2061, !tbaa !894
  %call104 = call i32 @indenterror(%struct.tok_state* %102), !dbg !2064
  %tobool105 = icmp ne i32 %call104, 0, !dbg !2064
  br i1 %tobool105, label %if.then.106, label %if.end.107, !dbg !2065

if.then.106:                                      ; preds = %if.then.103
  store i32 53, i32* %retval, !dbg !2066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2066

if.end.107:                                       ; preds = %if.then.103
  br label %if.end.108, !dbg !2067

if.end.108:                                       ; preds = %if.end.107, %if.end.97
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.66
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.43
  br label %if.end.111, !dbg !2068

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.29, %if.end.27
  store i32 0, i32* %cleanup.dest.slot, !dbg !2069
  br label %cleanup, !dbg !2069

cleanup:                                          ; preds = %if.end.111, %if.then.106, %if.then.93, %if.then.64, %if.then.54, %if.then.41
  %103 = bitcast i32* %altcol to i8*, !dbg !2070
  call void @llvm.lifetime.end(i64 4, i8* %103) #2, !dbg !2070
  %104 = bitcast i32* %col to i8*, !dbg !2070
  call void @llvm.lifetime.end(i64 4, i8* %104) #2, !dbg !2070
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.113, !dbg !2072

if.end.113:                                       ; preds = %cleanup.cont, %nextline
  %105 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2073, !tbaa !894
  %cur114 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %105, i32 0, i32 1, !dbg !2074
  %106 = load i8*, i8** %cur114, align 8, !dbg !2074, !tbaa !937
  %107 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2075, !tbaa !894
  %start115 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %107, i32 0, i32 4, !dbg !2076
  store i8* %106, i8** %start115, align 8, !dbg !2077, !tbaa !957
  %108 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2078, !tbaa !894
  %pendin116 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %108, i32 0, i32 11, !dbg !2080
  %109 = load i32, i32* %pendin116, align 4, !dbg !2080, !tbaa !1000
  %cmp117 = icmp ne i32 %109, 0, !dbg !2081
  br i1 %cmp117, label %if.then.118, label %if.end.127, !dbg !2082

if.then.118:                                      ; preds = %if.end.113
  %110 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2083, !tbaa !894
  %pendin119 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %110, i32 0, i32 11, !dbg !2086
  %111 = load i32, i32* %pendin119, align 4, !dbg !2086, !tbaa !1000
  %cmp120 = icmp slt i32 %111, 0, !dbg !2087
  br i1 %cmp120, label %if.then.121, label %if.else.124, !dbg !2088

if.then.121:                                      ; preds = %if.then.118
  %112 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2089, !tbaa !894
  %pendin122 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %112, i32 0, i32 11, !dbg !2091
  %113 = load i32, i32* %pendin122, align 4, !dbg !2092, !tbaa !1000
  %inc123 = add i32 %113, 1, !dbg !2092
  store i32 %inc123, i32* %pendin122, align 4, !dbg !2092, !tbaa !1000
  store i32 6, i32* %retval, !dbg !2093
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2093

if.else.124:                                      ; preds = %if.then.118
  %114 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2094, !tbaa !894
  %pendin125 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %114, i32 0, i32 11, !dbg !2096
  %115 = load i32, i32* %pendin125, align 4, !dbg !2097, !tbaa !1000
  %dec126 = add i32 %115, -1, !dbg !2097
  store i32 %dec126, i32* %pendin125, align 4, !dbg !2097, !tbaa !1000
  store i32 5, i32* %retval, !dbg !2098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2098

if.end.127:                                       ; preds = %if.end.113
  br label %again, !dbg !2099

again:                                            ; preds = %if.end.578, %if.end.127
  %116 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2101, !tbaa !894
  %start128 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %116, i32 0, i32 4, !dbg !2102
  store i8* null, i8** %start128, align 8, !dbg !2103, !tbaa !957
  br label %do.body, !dbg !2104

do.body:                                          ; preds = %lor.end, %again
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2105, !tbaa !894
  %call129 = call i32 @tok_nextc(%struct.tok_state* %117), !dbg !2107
  store i32 %call129, i32* %c, align 4, !dbg !2108, !tbaa !900
  br label %do.cond, !dbg !2109

do.cond:                                          ; preds = %do.body
  %118 = load i32, i32* %c, align 4, !dbg !2110, !tbaa !900
  %cmp130 = icmp eq i32 %118, 32, !dbg !2112
  br i1 %cmp130, label %lor.end, label %lor.lhs.false.131, !dbg !2113

lor.lhs.false.131:                                ; preds = %do.cond
  %119 = load i32, i32* %c, align 4, !dbg !2114, !tbaa !900
  %cmp132 = icmp eq i32 %119, 9, !dbg !2116
  br i1 %cmp132, label %lor.end, label %lor.rhs, !dbg !2117

lor.rhs:                                          ; preds = %lor.lhs.false.131
  %120 = load i32, i32* %c, align 4, !dbg !2118, !tbaa !900
  %cmp133 = icmp eq i32 %120, 12, !dbg !2120
  br label %lor.end, !dbg !2117

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.131, %do.cond
  %121 = phi i1 [ true, %lor.lhs.false.131 ], [ true, %do.cond ], [ %cmp133, %lor.rhs ]
  br i1 %121, label %do.body, label %do.end, !dbg !2121

do.end:                                           ; preds = %lor.end
  %122 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2125, !tbaa !894
  %cur134 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %122, i32 0, i32 1, !dbg !2126
  %123 = load i8*, i8** %cur134, align 8, !dbg !2126, !tbaa !937
  %add.ptr = getelementptr i8, i8* %123, i64 -1, !dbg !2127
  %124 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2128, !tbaa !894
  %start135 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %124, i32 0, i32 4, !dbg !2129
  store i8* %add.ptr, i8** %start135, align 8, !dbg !2130, !tbaa !957
  %125 = load i32, i32* %c, align 4, !dbg !2131, !tbaa !900
  %cmp136 = icmp eq i32 %125, 35, !dbg !2133
  br i1 %cmp136, label %if.then.137, label %if.end.146, !dbg !2134

if.then.137:                                      ; preds = %do.end
  br label %while.cond.138, !dbg !2135

while.cond.138:                                   ; preds = %while.body.143, %if.then.137
  %126 = load i32, i32* %c, align 4, !dbg !2136, !tbaa !900
  %cmp139 = icmp ne i32 %126, -1, !dbg !2139
  br i1 %cmp139, label %land.rhs.140, label %land.end.142, !dbg !2140

land.rhs.140:                                     ; preds = %while.cond.138
  %127 = load i32, i32* %c, align 4, !dbg !2141, !tbaa !900
  %cmp141 = icmp ne i32 %127, 10, !dbg !2143
  br label %land.end.142

land.end.142:                                     ; preds = %land.rhs.140, %while.cond.138
  %128 = phi i1 [ false, %while.cond.138 ], [ %cmp141, %land.rhs.140 ]
  br i1 %128, label %while.body.143, label %while.end.145, !dbg !2144

while.body.143:                                   ; preds = %land.end.142
  %129 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2146, !tbaa !894
  %call144 = call i32 @tok_nextc(%struct.tok_state* %129), !dbg !2147
  store i32 %call144, i32* %c, align 4, !dbg !2148, !tbaa !900
  br label %while.cond.138, !dbg !2135

while.end.145:                                    ; preds = %land.end.142
  br label %if.end.146, !dbg !2149

if.end.146:                                       ; preds = %while.end.145, %do.end
  %130 = load i32, i32* %c, align 4, !dbg !2151, !tbaa !900
  %cmp147 = icmp eq i32 %130, -1, !dbg !2153
  br i1 %cmp147, label %if.then.148, label %if.end.151, !dbg !2154

if.then.148:                                      ; preds = %if.end.146
  %131 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2155, !tbaa !894
  %done149 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %131, i32 0, i32 5, !dbg !2157
  %132 = load i32, i32* %done149, align 4, !dbg !2157, !tbaa !973
  %cmp150 = icmp eq i32 %132, 11, !dbg !2158
  %cond = select i1 %cmp150, i32 0, i32 53, !dbg !2155
  store i32 %cond, i32* %retval, !dbg !2159
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2159

if.end.151:                                       ; preds = %if.end.146
  store i32 0, i32* %nonascii, align 4, !dbg !2160, !tbaa !900
  %133 = load i32, i32* %c, align 4, !dbg !2161, !tbaa !900
  %cmp152 = icmp sge i32 %133, 97, !dbg !2162
  br i1 %cmp152, label %land.lhs.true.153, label %lor.lhs.false.155, !dbg !2163

land.lhs.true.153:                                ; preds = %if.end.151
  %134 = load i32, i32* %c, align 4, !dbg !2164, !tbaa !900
  %cmp154 = icmp sle i32 %134, 122, !dbg !2166
  br i1 %cmp154, label %if.then.163, label %lor.lhs.false.155, !dbg !2167

lor.lhs.false.155:                                ; preds = %land.lhs.true.153, %if.end.151
  %135 = load i32, i32* %c, align 4, !dbg !2168, !tbaa !900
  %cmp156 = icmp sge i32 %135, 65, !dbg !2171
  br i1 %cmp156, label %land.lhs.true.157, label %lor.lhs.false.159, !dbg !2172

land.lhs.true.157:                                ; preds = %lor.lhs.false.155
  %136 = load i32, i32* %c, align 4, !dbg !2173, !tbaa !900
  %cmp158 = icmp sle i32 %136, 90, !dbg !2175
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false.159, !dbg !2176

lor.lhs.false.159:                                ; preds = %land.lhs.true.157, %lor.lhs.false.155
  %137 = load i32, i32* %c, align 4, !dbg !2177, !tbaa !900
  %cmp160 = icmp eq i32 %137, 95, !dbg !2180
  br i1 %cmp160, label %if.then.163, label %lor.lhs.false.161, !dbg !2181

lor.lhs.false.161:                                ; preds = %lor.lhs.false.159
  %138 = load i32, i32* %c, align 4, !dbg !2182, !tbaa !900
  %cmp162 = icmp sge i32 %138, 128, !dbg !2184
  br i1 %cmp162, label %if.then.163, label %if.end.240, !dbg !2185

if.then.163:                                      ; preds = %lor.lhs.false.161, %lor.lhs.false.159, %land.lhs.true.157, %land.lhs.true.153
  %139 = bitcast i32* %saw_b to i8*, !dbg !2186
  call void @llvm.lifetime.start(i64 4, i8* %139) #2, !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %saw_b, metadata !715, metadata !898), !dbg !2187
  store i32 0, i32* %saw_b, align 4, !dbg !2187, !tbaa !900
  %140 = bitcast i32* %saw_r to i8*, !dbg !2186
  call void @llvm.lifetime.start(i64 4, i8* %140) #2, !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %saw_r, metadata !718, metadata !898), !dbg !2188
  store i32 0, i32* %saw_r, align 4, !dbg !2188, !tbaa !900
  %141 = bitcast i32* %saw_u to i8*, !dbg !2186
  call void @llvm.lifetime.start(i64 4, i8* %141) #2, !dbg !2186
  call void @llvm.dbg.declare(metadata i32* %saw_u, metadata !719, metadata !898), !dbg !2189
  store i32 0, i32* %saw_u, align 4, !dbg !2189, !tbaa !900
  br label %while.cond.164, !dbg !2190

while.cond.164:                                   ; preds = %if.end.203, %if.then.163
  br label %while.body.165, !dbg !2191

while.body.165:                                   ; preds = %while.cond.164
  %142 = load i32, i32* %saw_b, align 4, !dbg !2194, !tbaa !900
  %tobool166 = icmp ne i32 %142, 0, !dbg !2194
  br i1 %tobool166, label %if.else.174, label %lor.lhs.false.167, !dbg !2197

lor.lhs.false.167:                                ; preds = %while.body.165
  %143 = load i32, i32* %saw_u, align 4, !dbg !2198, !tbaa !900
  %tobool168 = icmp ne i32 %143, 0, !dbg !2198
  br i1 %tobool168, label %if.else.174, label %land.lhs.true.169, !dbg !2200

land.lhs.true.169:                                ; preds = %lor.lhs.false.167
  %144 = load i32, i32* %c, align 4, !dbg !2201, !tbaa !900
  %cmp170 = icmp eq i32 %144, 98, !dbg !2203
  br i1 %cmp170, label %if.then.173, label %lor.lhs.false.171, !dbg !2204

lor.lhs.false.171:                                ; preds = %land.lhs.true.169
  %145 = load i32, i32* %c, align 4, !dbg !2205, !tbaa !900
  %cmp172 = icmp eq i32 %145, 66, !dbg !2207
  br i1 %cmp172, label %if.then.173, label %if.else.174, !dbg !2208

if.then.173:                                      ; preds = %lor.lhs.false.171, %land.lhs.true.169
  store i32 1, i32* %saw_b, align 4, !dbg !2209, !tbaa !900
  br label %if.end.197, !dbg !2210

if.else.174:                                      ; preds = %lor.lhs.false.171, %lor.lhs.false.167, %while.body.165
  %146 = load i32, i32* %saw_b, align 4, !dbg !2211, !tbaa !900
  %tobool175 = icmp ne i32 %146, 0, !dbg !2211
  br i1 %tobool175, label %if.else.185, label %lor.lhs.false.176, !dbg !2213

lor.lhs.false.176:                                ; preds = %if.else.174
  %147 = load i32, i32* %saw_u, align 4, !dbg !2214, !tbaa !900
  %tobool177 = icmp ne i32 %147, 0, !dbg !2214
  br i1 %tobool177, label %if.else.185, label %lor.lhs.false.178, !dbg !2216

lor.lhs.false.178:                                ; preds = %lor.lhs.false.176
  %148 = load i32, i32* %saw_r, align 4, !dbg !2217, !tbaa !900
  %tobool179 = icmp ne i32 %148, 0, !dbg !2217
  br i1 %tobool179, label %if.else.185, label %land.lhs.true.180, !dbg !2219

land.lhs.true.180:                                ; preds = %lor.lhs.false.178
  %149 = load i32, i32* %c, align 4, !dbg !2220, !tbaa !900
  %cmp181 = icmp eq i32 %149, 117, !dbg !2222
  br i1 %cmp181, label %if.then.184, label %lor.lhs.false.182, !dbg !2223

lor.lhs.false.182:                                ; preds = %land.lhs.true.180
  %150 = load i32, i32* %c, align 4, !dbg !2224, !tbaa !900
  %cmp183 = icmp eq i32 %150, 85, !dbg !2226
  br i1 %cmp183, label %if.then.184, label %if.else.185, !dbg !2227

if.then.184:                                      ; preds = %lor.lhs.false.182, %land.lhs.true.180
  store i32 1, i32* %saw_u, align 4, !dbg !2228, !tbaa !900
  br label %if.end.196, !dbg !2229

if.else.185:                                      ; preds = %lor.lhs.false.182, %lor.lhs.false.178, %lor.lhs.false.176, %if.else.174
  %151 = load i32, i32* %saw_r, align 4, !dbg !2230, !tbaa !900
  %tobool186 = icmp ne i32 %151, 0, !dbg !2230
  br i1 %tobool186, label %if.else.194, label %lor.lhs.false.187, !dbg !2232

lor.lhs.false.187:                                ; preds = %if.else.185
  %152 = load i32, i32* %saw_u, align 4, !dbg !2233, !tbaa !900
  %tobool188 = icmp ne i32 %152, 0, !dbg !2233
  br i1 %tobool188, label %if.else.194, label %land.lhs.true.189, !dbg !2235

land.lhs.true.189:                                ; preds = %lor.lhs.false.187
  %153 = load i32, i32* %c, align 4, !dbg !2236, !tbaa !900
  %cmp190 = icmp eq i32 %153, 114, !dbg !2238
  br i1 %cmp190, label %if.then.193, label %lor.lhs.false.191, !dbg !2239

lor.lhs.false.191:                                ; preds = %land.lhs.true.189
  %154 = load i32, i32* %c, align 4, !dbg !2240, !tbaa !900
  %cmp192 = icmp eq i32 %154, 82, !dbg !2242
  br i1 %cmp192, label %if.then.193, label %if.else.194, !dbg !2243

if.then.193:                                      ; preds = %lor.lhs.false.191, %land.lhs.true.189
  store i32 1, i32* %saw_r, align 4, !dbg !2244, !tbaa !900
  br label %if.end.195, !dbg !2245

if.else.194:                                      ; preds = %lor.lhs.false.191, %lor.lhs.false.187, %if.else.185
  br label %while.end.204, !dbg !2246

if.end.195:                                       ; preds = %if.then.193
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.184
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.173
  %155 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2247, !tbaa !894
  %call198 = call i32 @tok_nextc(%struct.tok_state* %155), !dbg !2248
  store i32 %call198, i32* %c, align 4, !dbg !2249, !tbaa !900
  %156 = load i32, i32* %c, align 4, !dbg !2250, !tbaa !900
  %cmp199 = icmp eq i32 %156, 34, !dbg !2252
  br i1 %cmp199, label %if.then.202, label %lor.lhs.false.200, !dbg !2253

lor.lhs.false.200:                                ; preds = %if.end.197
  %157 = load i32, i32* %c, align 4, !dbg !2254, !tbaa !900
  %cmp201 = icmp eq i32 %157, 39, !dbg !2256
  br i1 %cmp201, label %if.then.202, label %if.end.203, !dbg !2257

if.then.202:                                      ; preds = %lor.lhs.false.200, %if.end.197
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2258

if.end.203:                                       ; preds = %lor.lhs.false.200
  br label %while.cond.164, !dbg !2190

while.end.204:                                    ; preds = %if.else.194
  br label %while.cond.205, !dbg !2259

while.cond.205:                                   ; preds = %if.end.225, %while.end.204
  %158 = load i32, i32* %c, align 4, !dbg !2260, !tbaa !900
  %cmp206 = icmp sge i32 %158, 97, !dbg !2262
  br i1 %cmp206, label %land.lhs.true.207, label %lor.lhs.false.209, !dbg !2263

land.lhs.true.207:                                ; preds = %while.cond.205
  %159 = load i32, i32* %c, align 4, !dbg !2264, !tbaa !900
  %cmp208 = icmp sle i32 %159, 122, !dbg !2266
  br i1 %cmp208, label %lor.end.221, label %lor.lhs.false.209, !dbg !2267

lor.lhs.false.209:                                ; preds = %land.lhs.true.207, %while.cond.205
  %160 = load i32, i32* %c, align 4, !dbg !2268, !tbaa !900
  %cmp210 = icmp sge i32 %160, 65, !dbg !2271
  br i1 %cmp210, label %land.lhs.true.211, label %lor.lhs.false.213, !dbg !2272

land.lhs.true.211:                                ; preds = %lor.lhs.false.209
  %161 = load i32, i32* %c, align 4, !dbg !2273, !tbaa !900
  %cmp212 = icmp sle i32 %161, 90, !dbg !2275
  br i1 %cmp212, label %lor.end.221, label %lor.lhs.false.213, !dbg !2276

lor.lhs.false.213:                                ; preds = %land.lhs.true.211, %lor.lhs.false.209
  %162 = load i32, i32* %c, align 4, !dbg !2277, !tbaa !900
  %cmp214 = icmp sge i32 %162, 48, !dbg !2280
  br i1 %cmp214, label %land.lhs.true.215, label %lor.lhs.false.217, !dbg !2281

land.lhs.true.215:                                ; preds = %lor.lhs.false.213
  %163 = load i32, i32* %c, align 4, !dbg !2282, !tbaa !900
  %cmp216 = icmp sle i32 %163, 57, !dbg !2284
  br i1 %cmp216, label %lor.end.221, label %lor.lhs.false.217, !dbg !2285

lor.lhs.false.217:                                ; preds = %land.lhs.true.215, %lor.lhs.false.213
  %164 = load i32, i32* %c, align 4, !dbg !2286, !tbaa !900
  %cmp218 = icmp eq i32 %164, 95, !dbg !2289
  br i1 %cmp218, label %lor.end.221, label %lor.rhs.219, !dbg !2290

lor.rhs.219:                                      ; preds = %lor.lhs.false.217
  %165 = load i32, i32* %c, align 4, !dbg !2291, !tbaa !900
  %cmp220 = icmp sge i32 %165, 128, !dbg !2293
  br label %lor.end.221, !dbg !2290

lor.end.221:                                      ; preds = %lor.rhs.219, %lor.lhs.false.217, %land.lhs.true.215, %land.lhs.true.211, %land.lhs.true.207
  %166 = phi i1 [ true, %lor.lhs.false.217 ], [ true, %land.lhs.true.215 ], [ true, %land.lhs.true.211 ], [ true, %land.lhs.true.207 ], [ %cmp220, %lor.rhs.219 ]
  br i1 %166, label %while.body.222, label %while.end.227, !dbg !2294

while.body.222:                                   ; preds = %lor.end.221
  %167 = load i32, i32* %c, align 4, !dbg !2300, !tbaa !900
  %cmp223 = icmp sge i32 %167, 128, !dbg !2303
  br i1 %cmp223, label %if.then.224, label %if.end.225, !dbg !2304

if.then.224:                                      ; preds = %while.body.222
  store i32 1, i32* %nonascii, align 4, !dbg !2305, !tbaa !900
  br label %if.end.225, !dbg !2306

if.end.225:                                       ; preds = %if.then.224, %while.body.222
  %168 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2307, !tbaa !894
  %call226 = call i32 @tok_nextc(%struct.tok_state* %168), !dbg !2308
  store i32 %call226, i32* %c, align 4, !dbg !2309, !tbaa !900
  br label %while.cond.205, !dbg !2259

while.end.227:                                    ; preds = %lor.end.221
  %169 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2310, !tbaa !894
  %170 = load i32, i32* %c, align 4, !dbg !2311, !tbaa !900
  call void @tok_backup(%struct.tok_state* %169, i32 %170), !dbg !2312
  %171 = load i32, i32* %nonascii, align 4, !dbg !2313, !tbaa !900
  %tobool228 = icmp ne i32 %171, 0, !dbg !2313
  br i1 %tobool228, label %land.lhs.true.229, label %if.end.234, !dbg !2315

land.lhs.true.229:                                ; preds = %while.end.227
  %172 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2316, !tbaa !894
  %call230 = call i32 @verify_identifier(%struct.tok_state* %172), !dbg !2317
  %tobool231 = icmp ne i32 %call230, 0, !dbg !2317
  br i1 %tobool231, label %if.end.234, label %if.then.232, !dbg !2318

if.then.232:                                      ; preds = %land.lhs.true.229
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2319, !tbaa !894
  %done233 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 5, !dbg !2321
  store i32 26, i32* %done233, align 4, !dbg !2322, !tbaa !973
  store i32 53, i32* %retval, !dbg !2323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2323

if.end.234:                                       ; preds = %land.lhs.true.229, %while.end.227
  %174 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2324, !tbaa !894
  %start235 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %174, i32 0, i32 4, !dbg !2325
  %175 = load i8*, i8** %start235, align 8, !dbg !2325, !tbaa !957
  %176 = load i8**, i8*** %p_start.addr, align 8, !dbg !2326, !tbaa !894
  store i8* %175, i8** %176, align 8, !dbg !2327, !tbaa !894
  %177 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2328, !tbaa !894
  %cur236 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %177, i32 0, i32 1, !dbg !2329
  %178 = load i8*, i8** %cur236, align 8, !dbg !2329, !tbaa !937
  %179 = load i8**, i8*** %p_end.addr, align 8, !dbg !2330, !tbaa !894
  store i8* %178, i8** %179, align 8, !dbg !2331, !tbaa !894
  store i32 1, i32* %retval, !dbg !2332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2332

cleanup.237:                                      ; preds = %if.end.234, %if.then.232, %if.then.202
  %180 = bitcast i32* %saw_u to i8*, !dbg !2333
  call void @llvm.lifetime.end(i64 4, i8* %180) #2, !dbg !2333
  %181 = bitcast i32* %saw_r to i8*, !dbg !2333
  call void @llvm.lifetime.end(i64 4, i8* %181) #2, !dbg !2333
  %182 = bitcast i32* %saw_b to i8*, !dbg !2333
  call void @llvm.lifetime.end(i64 4, i8* %182) #2, !dbg !2333
  %cleanup.dest500 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.237
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest500, 14
  br i1 %SwitchLeaf3, label %letter_quote, label %NewDefault.1

if.end.240:                                       ; preds = %lor.lhs.false.161
  %183 = load i32, i32* %c, align 4, !dbg !2334, !tbaa !900
  %cmp241 = icmp eq i32 %183, 10, !dbg !2336
  br i1 %cmp241, label %if.then.242, label %if.end.253, !dbg !2337

if.then.242:                                      ; preds = %if.end.240
  %184 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2338, !tbaa !894
  %atbol243 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %184, i32 0, i32 10, !dbg !2340
  store i32 1, i32* %atbol243, align 4, !dbg !2341, !tbaa !996
  %185 = load i32, i32* %blankline, align 4, !dbg !2342, !tbaa !900
  %tobool244 = icmp ne i32 %185, 0, !dbg !2342
  br i1 %tobool244, label %if.then.248, label %lor.lhs.false.245, !dbg !2344

lor.lhs.false.245:                                ; preds = %if.then.242
  %186 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2345, !tbaa !894
  %level246 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %186, i32 0, i32 15, !dbg !2347
  %187 = load i32, i32* %level246, align 4, !dbg !2347, !tbaa !1016
  %cmp247 = icmp sgt i32 %187, 0, !dbg !2348
  br i1 %cmp247, label %if.then.248, label %if.end.249, !dbg !2349

if.then.248:                                      ; preds = %lor.lhs.false.245, %if.then.242
  br label %nextline, !dbg !2350

if.end.249:                                       ; preds = %lor.lhs.false.245
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2351, !tbaa !894
  %start250 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %188, i32 0, i32 4, !dbg !2352
  %189 = load i8*, i8** %start250, align 8, !dbg !2352, !tbaa !957
  %190 = load i8**, i8*** %p_start.addr, align 8, !dbg !2353, !tbaa !894
  store i8* %189, i8** %190, align 8, !dbg !2354, !tbaa !894
  %191 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2355, !tbaa !894
  %cur251 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %191, i32 0, i32 1, !dbg !2356
  %192 = load i8*, i8** %cur251, align 8, !dbg !2356, !tbaa !937
  %add.ptr252 = getelementptr i8, i8* %192, i64 -1, !dbg !2357
  %193 = load i8**, i8*** %p_end.addr, align 8, !dbg !2358, !tbaa !894
  store i8* %add.ptr252, i8** %193, align 8, !dbg !2359, !tbaa !894
  %194 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2360, !tbaa !894
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %194, i32 0, i32 25, !dbg !2361
  store i32 0, i32* %cont_line, align 4, !dbg !2362, !tbaa !1055
  store i32 4, i32* %retval, !dbg !2363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2363

if.end.253:                                       ; preds = %if.end.240
  %195 = load i32, i32* %c, align 4, !dbg !2364, !tbaa !900
  %cmp254 = icmp eq i32 %195, 46, !dbg !2366
  br i1 %cmp254, label %if.then.255, label %if.end.279, !dbg !2367

if.then.255:                                      ; preds = %if.end.253
  %196 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2368, !tbaa !894
  %call256 = call i32 @tok_nextc(%struct.tok_state* %196), !dbg !2370
  store i32 %call256, i32* %c, align 4, !dbg !2371, !tbaa !900
  %197 = load i32, i32* %c, align 4, !dbg !2372, !tbaa !900
  %idxprom257 = sext i32 %197 to i64, !dbg !2374
  %call258 = call i16** @__ctype_b_loc() #1, !dbg !2375
  %198 = load i16*, i16** %call258, align 8, !dbg !2376, !tbaa !894
  %arrayidx259 = getelementptr i16, i16* %198, i64 %idxprom257, !dbg !2374
  %199 = load i16, i16* %arrayidx259, align 2, !dbg !2374, !tbaa !2377
  %conv = zext i16 %199 to i32, !dbg !2374
  %and = and i32 %conv, 2048, !dbg !2379
  %tobool260 = icmp ne i32 %and, 0, !dbg !2379
  br i1 %tobool260, label %if.then.261, label %if.else.262, !dbg !2380

if.then.261:                                      ; preds = %if.then.255
  br label %fraction, !dbg !2381

if.else.262:                                      ; preds = %if.then.255
  %200 = load i32, i32* %c, align 4, !dbg !2383, !tbaa !900
  %cmp263 = icmp eq i32 %200, 46, !dbg !2385
  br i1 %cmp263, label %if.then.265, label %if.else.274, !dbg !2386

if.then.265:                                      ; preds = %if.else.262
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2387, !tbaa !894
  %call266 = call i32 @tok_nextc(%struct.tok_state* %201), !dbg !2389
  store i32 %call266, i32* %c, align 4, !dbg !2390, !tbaa !900
  %202 = load i32, i32* %c, align 4, !dbg !2391, !tbaa !900
  %cmp267 = icmp eq i32 %202, 46, !dbg !2393
  br i1 %cmp267, label %if.then.269, label %if.else.272, !dbg !2394

if.then.269:                                      ; preds = %if.then.265
  %203 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2395, !tbaa !894
  %start270 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %203, i32 0, i32 4, !dbg !2397
  %204 = load i8*, i8** %start270, align 8, !dbg !2397, !tbaa !957
  %205 = load i8**, i8*** %p_start.addr, align 8, !dbg !2398, !tbaa !894
  store i8* %204, i8** %205, align 8, !dbg !2399, !tbaa !894
  %206 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2400, !tbaa !894
  %cur271 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %206, i32 0, i32 1, !dbg !2401
  %207 = load i8*, i8** %cur271, align 8, !dbg !2401, !tbaa !937
  %208 = load i8**, i8*** %p_end.addr, align 8, !dbg !2402, !tbaa !894
  store i8* %207, i8** %208, align 8, !dbg !2403, !tbaa !894
  store i32 51, i32* %retval, !dbg !2404
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2404

if.else.272:                                      ; preds = %if.then.265
  %209 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2405, !tbaa !894
  %210 = load i32, i32* %c, align 4, !dbg !2407, !tbaa !900
  call void @tok_backup(%struct.tok_state* %209, i32 %210), !dbg !2408
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.272
  %211 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2409, !tbaa !894
  call void @tok_backup(%struct.tok_state* %211, i32 46), !dbg !2410
  br label %if.end.275, !dbg !2411

if.else.274:                                      ; preds = %if.else.262
  %212 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2412, !tbaa !894
  %213 = load i32, i32* %c, align 4, !dbg !2414, !tbaa !900
  call void @tok_backup(%struct.tok_state* %212, i32 %213), !dbg !2415
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.274, %if.end.273
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275
  %214 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2416, !tbaa !894
  %start277 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %214, i32 0, i32 4, !dbg !2417
  %215 = load i8*, i8** %start277, align 8, !dbg !2417, !tbaa !957
  %216 = load i8**, i8*** %p_start.addr, align 8, !dbg !2418, !tbaa !894
  store i8* %215, i8** %216, align 8, !dbg !2419, !tbaa !894
  %217 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2420, !tbaa !894
  %cur278 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %217, i32 0, i32 1, !dbg !2421
  %218 = load i8*, i8** %cur278, align 8, !dbg !2421, !tbaa !937
  %219 = load i8**, i8*** %p_end.addr, align 8, !dbg !2422, !tbaa !894
  store i8* %218, i8** %219, align 8, !dbg !2423, !tbaa !894
  store i32 23, i32* %retval, !dbg !2424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2424

if.end.279:                                       ; preds = %if.end.253
  %220 = load i32, i32* %c, align 4, !dbg !2425, !tbaa !900
  %idxprom280 = sext i32 %220 to i64, !dbg !2426
  %call281 = call i16** @__ctype_b_loc() #1, !dbg !2427
  %221 = load i16*, i16** %call281, align 8, !dbg !2428, !tbaa !894
  %arrayidx282 = getelementptr i16, i16* %221, i64 %idxprom280, !dbg !2426
  %222 = load i16, i16* %arrayidx282, align 2, !dbg !2426, !tbaa !2377
  %conv283 = zext i16 %222 to i32, !dbg !2426
  %and284 = and i32 %conv283, 2048, !dbg !2429
  %tobool285 = icmp ne i32 %and284, 0, !dbg !2429
  br i1 %tobool285, label %if.then.286, label %if.end.499, !dbg !2430

if.then.286:                                      ; preds = %if.end.279
  %223 = load i32, i32* %c, align 4, !dbg !2431, !tbaa !900
  %cmp287 = icmp eq i32 %223, 48, !dbg !2432
  br i1 %cmp287, label %if.then.289, label %if.else.428, !dbg !2433

if.then.289:                                      ; preds = %if.then.286
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2434, !tbaa !894
  %call290 = call i32 @tok_nextc(%struct.tok_state* %224), !dbg !2435
  store i32 %call290, i32* %c, align 4, !dbg !2436, !tbaa !900
  %225 = load i32, i32* %c, align 4, !dbg !2437, !tbaa !900
  %cmp291 = icmp eq i32 %225, 46, !dbg !2439
  br i1 %cmp291, label %if.then.293, label %if.end.294, !dbg !2440

if.then.293:                                      ; preds = %if.then.289
  br label %fraction, !dbg !2441

if.end.294:                                       ; preds = %if.then.289
  %226 = load i32, i32* %c, align 4, !dbg !2442, !tbaa !900
  %cmp295 = icmp eq i32 %226, 106, !dbg !2444
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false.297, !dbg !2445

lor.lhs.false.297:                                ; preds = %if.end.294
  %227 = load i32, i32* %c, align 4, !dbg !2446, !tbaa !900
  %cmp298 = icmp eq i32 %227, 74, !dbg !2448
  br i1 %cmp298, label %if.then.300, label %if.end.301, !dbg !2449

if.then.300:                                      ; preds = %lor.lhs.false.297, %if.end.294
  br label %imaginary, !dbg !2450

if.end.301:                                       ; preds = %lor.lhs.false.297
  %228 = load i32, i32* %c, align 4, !dbg !2451, !tbaa !900
  %cmp302 = icmp eq i32 %228, 120, !dbg !2452
  br i1 %cmp302, label %if.then.307, label %lor.lhs.false.304, !dbg !2453

lor.lhs.false.304:                                ; preds = %if.end.301
  %229 = load i32, i32* %c, align 4, !dbg !2454, !tbaa !900
  %cmp305 = icmp eq i32 %229, 88, !dbg !2456
  br i1 %cmp305, label %if.then.307, label %if.else.328, !dbg !2457

if.then.307:                                      ; preds = %lor.lhs.false.304, %if.end.301
  %230 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2458, !tbaa !894
  %call308 = call i32 @tok_nextc(%struct.tok_state* %230), !dbg !2460
  store i32 %call308, i32* %c, align 4, !dbg !2461, !tbaa !900
  %231 = load i32, i32* %c, align 4, !dbg !2462, !tbaa !900
  %idxprom309 = sext i32 %231 to i64, !dbg !2464
  %call310 = call i16** @__ctype_b_loc() #1, !dbg !2465
  %232 = load i16*, i16** %call310, align 8, !dbg !2466, !tbaa !894
  %arrayidx311 = getelementptr i16, i16* %232, i64 %idxprom309, !dbg !2464
  %233 = load i16, i16* %arrayidx311, align 2, !dbg !2464, !tbaa !2377
  %conv312 = zext i16 %233 to i32, !dbg !2464
  %and313 = and i32 %conv312, 4096, !dbg !2467
  %tobool314 = icmp ne i32 %and313, 0, !dbg !2467
  br i1 %tobool314, label %if.end.317, label %if.then.315, !dbg !2468

if.then.315:                                      ; preds = %if.then.307
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2469, !tbaa !894
  %done316 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %234, i32 0, i32 5, !dbg !2471
  store i32 13, i32* %done316, align 4, !dbg !2472, !tbaa !973
  %235 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2473, !tbaa !894
  %236 = load i32, i32* %c, align 4, !dbg !2474, !tbaa !900
  call void @tok_backup(%struct.tok_state* %235, i32 %236), !dbg !2475
  store i32 53, i32* %retval, !dbg !2476
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2476

if.end.317:                                       ; preds = %if.then.307
  br label %do.body.318, !dbg !2477

do.body.318:                                      ; preds = %do.cond.320, %if.end.317
  %237 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2478, !tbaa !894
  %call319 = call i32 @tok_nextc(%struct.tok_state* %237), !dbg !2480
  store i32 %call319, i32* %c, align 4, !dbg !2481, !tbaa !900
  br label %do.cond.320, !dbg !2482

do.cond.320:                                      ; preds = %do.body.318
  %238 = load i32, i32* %c, align 4, !dbg !2483, !tbaa !900
  %idxprom321 = sext i32 %238 to i64, !dbg !2485
  %call322 = call i16** @__ctype_b_loc() #1, !dbg !2486
  %239 = load i16*, i16** %call322, align 8, !dbg !2487, !tbaa !894
  %arrayidx323 = getelementptr i16, i16* %239, i64 %idxprom321, !dbg !2485
  %240 = load i16, i16* %arrayidx323, align 2, !dbg !2485, !tbaa !2377
  %conv324 = zext i16 %240 to i32, !dbg !2485
  %and325 = and i32 %conv324, 4096, !dbg !2488
  %tobool326 = icmp ne i32 %and325, 0, !dbg !2482
  br i1 %tobool326, label %do.body.318, label %do.end.327, !dbg !2482

do.end.327:                                       ; preds = %do.cond.320
  br label %if.end.427, !dbg !2489

if.else.328:                                      ; preds = %lor.lhs.false.304
  %241 = load i32, i32* %c, align 4, !dbg !2490, !tbaa !900
  %cmp329 = icmp eq i32 %241, 111, !dbg !2491
  br i1 %cmp329, label %if.then.334, label %lor.lhs.false.331, !dbg !2492

lor.lhs.false.331:                                ; preds = %if.else.328
  %242 = load i32, i32* %c, align 4, !dbg !2493, !tbaa !900
  %cmp332 = icmp eq i32 %242, 79, !dbg !2495
  br i1 %cmp332, label %if.then.334, label %if.else.354, !dbg !2496

if.then.334:                                      ; preds = %lor.lhs.false.331, %if.else.328
  %243 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2497, !tbaa !894
  %call335 = call i32 @tok_nextc(%struct.tok_state* %243), !dbg !2499
  store i32 %call335, i32* %c, align 4, !dbg !2500, !tbaa !900
  %244 = load i32, i32* %c, align 4, !dbg !2501, !tbaa !900
  %cmp336 = icmp slt i32 %244, 48, !dbg !2503
  br i1 %cmp336, label %if.then.341, label %lor.lhs.false.338, !dbg !2504

lor.lhs.false.338:                                ; preds = %if.then.334
  %245 = load i32, i32* %c, align 4, !dbg !2505, !tbaa !900
  %cmp339 = icmp sge i32 %245, 56, !dbg !2507
  br i1 %cmp339, label %if.then.341, label %if.end.343, !dbg !2508

if.then.341:                                      ; preds = %lor.lhs.false.338, %if.then.334
  %246 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2509, !tbaa !894
  %done342 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %246, i32 0, i32 5, !dbg !2511
  store i32 13, i32* %done342, align 4, !dbg !2512, !tbaa !973
  %247 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2513, !tbaa !894
  %248 = load i32, i32* %c, align 4, !dbg !2514, !tbaa !900
  call void @tok_backup(%struct.tok_state* %247, i32 %248), !dbg !2515
  store i32 53, i32* %retval, !dbg !2516
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2516

if.end.343:                                       ; preds = %lor.lhs.false.338
  br label %do.body.344, !dbg !2517

do.body.344:                                      ; preds = %land.end.352, %if.end.343
  %249 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2518, !tbaa !894
  %call345 = call i32 @tok_nextc(%struct.tok_state* %249), !dbg !2520
  store i32 %call345, i32* %c, align 4, !dbg !2521, !tbaa !900
  br label %do.cond.346, !dbg !2522

do.cond.346:                                      ; preds = %do.body.344
  %250 = load i32, i32* %c, align 4, !dbg !2523, !tbaa !900
  %cmp347 = icmp sle i32 48, %250, !dbg !2525
  br i1 %cmp347, label %land.rhs.349, label %land.end.352, !dbg !2526

land.rhs.349:                                     ; preds = %do.cond.346
  %251 = load i32, i32* %c, align 4, !dbg !2527, !tbaa !900
  %cmp350 = icmp slt i32 %251, 56, !dbg !2529
  br label %land.end.352

land.end.352:                                     ; preds = %land.rhs.349, %do.cond.346
  %252 = phi i1 [ false, %do.cond.346 ], [ %cmp350, %land.rhs.349 ]
  br i1 %252, label %do.body.344, label %do.end.353, !dbg !2530

do.end.353:                                       ; preds = %land.end.352
  br label %if.end.426, !dbg !2532

if.else.354:                                      ; preds = %lor.lhs.false.331
  %253 = load i32, i32* %c, align 4, !dbg !2533, !tbaa !900
  %cmp355 = icmp eq i32 %253, 98, !dbg !2534
  br i1 %cmp355, label %if.then.360, label %lor.lhs.false.357, !dbg !2535

lor.lhs.false.357:                                ; preds = %if.else.354
  %254 = load i32, i32* %c, align 4, !dbg !2536, !tbaa !900
  %cmp358 = icmp eq i32 %254, 66, !dbg !2538
  br i1 %cmp358, label %if.then.360, label %if.else.380, !dbg !2539

if.then.360:                                      ; preds = %lor.lhs.false.357, %if.else.354
  %255 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2540, !tbaa !894
  %call361 = call i32 @tok_nextc(%struct.tok_state* %255), !dbg !2542
  store i32 %call361, i32* %c, align 4, !dbg !2543, !tbaa !900
  %256 = load i32, i32* %c, align 4, !dbg !2544, !tbaa !900
  %cmp362 = icmp ne i32 %256, 48, !dbg !2546
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.369, !dbg !2547

land.lhs.true.364:                                ; preds = %if.then.360
  %257 = load i32, i32* %c, align 4, !dbg !2548, !tbaa !900
  %cmp365 = icmp ne i32 %257, 49, !dbg !2550
  br i1 %cmp365, label %if.then.367, label %if.end.369, !dbg !2551

if.then.367:                                      ; preds = %land.lhs.true.364
  %258 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2552, !tbaa !894
  %done368 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %258, i32 0, i32 5, !dbg !2554
  store i32 13, i32* %done368, align 4, !dbg !2555, !tbaa !973
  %259 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2556, !tbaa !894
  %260 = load i32, i32* %c, align 4, !dbg !2557, !tbaa !900
  call void @tok_backup(%struct.tok_state* %259, i32 %260), !dbg !2558
  store i32 53, i32* %retval, !dbg !2559
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2559

if.end.369:                                       ; preds = %land.lhs.true.364, %if.then.360
  br label %do.body.370, !dbg !2560

do.body.370:                                      ; preds = %lor.end.378, %if.end.369
  %261 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2561, !tbaa !894
  %call371 = call i32 @tok_nextc(%struct.tok_state* %261), !dbg !2563
  store i32 %call371, i32* %c, align 4, !dbg !2564, !tbaa !900
  br label %do.cond.372, !dbg !2565

do.cond.372:                                      ; preds = %do.body.370
  %262 = load i32, i32* %c, align 4, !dbg !2566, !tbaa !900
  %cmp373 = icmp eq i32 %262, 48, !dbg !2568
  br i1 %cmp373, label %lor.end.378, label %lor.rhs.375, !dbg !2569

lor.rhs.375:                                      ; preds = %do.cond.372
  %263 = load i32, i32* %c, align 4, !dbg !2570, !tbaa !900
  %cmp376 = icmp eq i32 %263, 49, !dbg !2572
  br label %lor.end.378, !dbg !2569

lor.end.378:                                      ; preds = %lor.rhs.375, %do.cond.372
  %264 = phi i1 [ true, %do.cond.372 ], [ %cmp376, %lor.rhs.375 ]
  br i1 %264, label %do.body.370, label %do.end.379, !dbg !2573

do.end.379:                                       ; preds = %lor.end.378
  br label %if.end.425, !dbg !2576

if.else.380:                                      ; preds = %lor.lhs.false.357
  %265 = bitcast i32* %nonzero to i8*, !dbg !2577
  call void @llvm.lifetime.start(i64 4, i8* %265) #2, !dbg !2577
  call void @llvm.dbg.declare(metadata i32* %nonzero, metadata !720, metadata !898), !dbg !2578
  store i32 0, i32* %nonzero, align 4, !dbg !2578, !tbaa !900
  br label %while.cond.381, !dbg !2579

while.cond.381:                                   ; preds = %while.body.384, %if.else.380
  %266 = load i32, i32* %c, align 4, !dbg !2580, !tbaa !900
  %cmp382 = icmp eq i32 %266, 48, !dbg !2583
  br i1 %cmp382, label %while.body.384, label %while.end.386, !dbg !2579

while.body.384:                                   ; preds = %while.cond.381
  %267 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2584, !tbaa !894
  %call385 = call i32 @tok_nextc(%struct.tok_state* %267), !dbg !2585
  store i32 %call385, i32* %c, align 4, !dbg !2586, !tbaa !900
  br label %while.cond.381, !dbg !2579

while.end.386:                                    ; preds = %while.cond.381
  br label %while.cond.387, !dbg !2587

while.cond.387:                                   ; preds = %while.body.394, %while.end.386
  %268 = load i32, i32* %c, align 4, !dbg !2588, !tbaa !900
  %idxprom388 = sext i32 %268 to i64, !dbg !2589
  %call389 = call i16** @__ctype_b_loc() #1, !dbg !2590
  %269 = load i16*, i16** %call389, align 8, !dbg !2591, !tbaa !894
  %arrayidx390 = getelementptr i16, i16* %269, i64 %idxprom388, !dbg !2589
  %270 = load i16, i16* %arrayidx390, align 2, !dbg !2589, !tbaa !2377
  %conv391 = zext i16 %270 to i32, !dbg !2589
  %and392 = and i32 %conv391, 2048, !dbg !2592
  %tobool393 = icmp ne i32 %and392, 0, !dbg !2587
  br i1 %tobool393, label %while.body.394, label %while.end.396, !dbg !2587

while.body.394:                                   ; preds = %while.cond.387
  store i32 1, i32* %nonzero, align 4, !dbg !2593, !tbaa !900
  %271 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2595, !tbaa !894
  %call395 = call i32 @tok_nextc(%struct.tok_state* %271), !dbg !2596
  store i32 %call395, i32* %c, align 4, !dbg !2597, !tbaa !900
  br label %while.cond.387, !dbg !2587

while.end.396:                                    ; preds = %while.cond.387
  %272 = load i32, i32* %c, align 4, !dbg !2598, !tbaa !900
  %cmp397 = icmp eq i32 %272, 46, !dbg !2600
  br i1 %cmp397, label %if.then.399, label %if.else.400, !dbg !2601

if.then.399:                                      ; preds = %while.end.396
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2602

if.else.400:                                      ; preds = %while.end.396
  %273 = load i32, i32* %c, align 4, !dbg !2603, !tbaa !900
  %cmp401 = icmp eq i32 %273, 101, !dbg !2605
  br i1 %cmp401, label %if.then.406, label %lor.lhs.false.403, !dbg !2606

lor.lhs.false.403:                                ; preds = %if.else.400
  %274 = load i32, i32* %c, align 4, !dbg !2607, !tbaa !900
  %cmp404 = icmp eq i32 %274, 69, !dbg !2609
  br i1 %cmp404, label %if.then.406, label %if.else.407, !dbg !2610

if.then.406:                                      ; preds = %lor.lhs.false.403, %if.else.400
  store i32 29, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2611

if.else.407:                                      ; preds = %lor.lhs.false.403
  %275 = load i32, i32* %c, align 4, !dbg !2612, !tbaa !900
  %cmp408 = icmp eq i32 %275, 106, !dbg !2614
  br i1 %cmp408, label %if.then.413, label %lor.lhs.false.410, !dbg !2615

lor.lhs.false.410:                                ; preds = %if.else.407
  %276 = load i32, i32* %c, align 4, !dbg !2616, !tbaa !900
  %cmp411 = icmp eq i32 %276, 74, !dbg !2618
  br i1 %cmp411, label %if.then.413, label %if.else.414, !dbg !2619

if.then.413:                                      ; preds = %lor.lhs.false.410, %if.else.407
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2620

if.else.414:                                      ; preds = %lor.lhs.false.410
  %277 = load i32, i32* %nonzero, align 4, !dbg !2621, !tbaa !900
  %tobool415 = icmp ne i32 %277, 0, !dbg !2621
  br i1 %tobool415, label %if.then.416, label %if.end.418, !dbg !2623

if.then.416:                                      ; preds = %if.else.414
  %278 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2624, !tbaa !894
  %done417 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %278, i32 0, i32 5, !dbg !2626
  store i32 13, i32* %done417, align 4, !dbg !2627, !tbaa !973
  %279 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2628, !tbaa !894
  %280 = load i32, i32* %c, align 4, !dbg !2629, !tbaa !900
  call void @tok_backup(%struct.tok_state* %279, i32 %280), !dbg !2630
  store i32 53, i32* %retval, !dbg !2631
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2631

if.end.418:                                       ; preds = %if.else.414
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420
  store i32 0, i32* %cleanup.dest.slot, !dbg !2632
  br label %cleanup.422, !dbg !2632

cleanup.422:                                      ; preds = %if.end.421, %if.then.416, %if.then.413, %if.then.406, %if.then.399
  %281 = bitcast i32* %nonzero to i8*, !dbg !2633
  call void @llvm.lifetime.end(i64 4, i8* %281) #2, !dbg !2633
  %cleanup.dest.423 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock.13

NodeBlock.13:                                     ; preds = %cleanup.422
  %Pivot.14 = icmp slt i32 %cleanup.dest.423, 18
  br i1 %Pivot.14, label %NodeBlock, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %cleanup.dest.423, 29
  br i1 %Pivot.12, label %LeafBlock.7, label %LeafBlock.9

LeafBlock.9:                                      ; preds = %NodeBlock.11
  %SwitchLeaf10 = icmp eq i32 %cleanup.dest.423, 29
  br i1 %SwitchLeaf10, label %exponent, label %NewDefault.4

LeafBlock.7:                                      ; preds = %NodeBlock.11
  %SwitchLeaf8 = icmp eq i32 %cleanup.dest.423, 18
  br i1 %SwitchLeaf8, label %imaginary, label %NewDefault.4

NodeBlock:                                        ; preds = %NodeBlock.13
  %Pivot = icmp slt i32 %cleanup.dest.423, 17
  br i1 %Pivot, label %LeafBlock.5, label %fraction

LeafBlock.5:                                      ; preds = %NodeBlock
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.423, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.424, label %NewDefault.4

cleanup.cont.424:                                 ; preds = %LeafBlock.5
  br label %if.end.425

if.end.425:                                       ; preds = %cleanup.cont.424, %do.end.379
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %do.end.353
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %do.end.327
  br label %if.end.496, !dbg !2634

if.else.428:                                      ; preds = %if.then.286
  br label %do.body.429, !dbg !2635

do.body.429:                                      ; preds = %do.cond.431, %if.else.428
  %282 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2637, !tbaa !894
  %call430 = call i32 @tok_nextc(%struct.tok_state* %282), !dbg !2639
  store i32 %call430, i32* %c, align 4, !dbg !2640, !tbaa !900
  br label %do.cond.431, !dbg !2641

do.cond.431:                                      ; preds = %do.body.429
  %283 = load i32, i32* %c, align 4, !dbg !2642, !tbaa !900
  %idxprom432 = sext i32 %283 to i64, !dbg !2644
  %call433 = call i16** @__ctype_b_loc() #1, !dbg !2645
  %284 = load i16*, i16** %call433, align 8, !dbg !2646, !tbaa !894
  %arrayidx434 = getelementptr i16, i16* %284, i64 %idxprom432, !dbg !2644
  %285 = load i16, i16* %arrayidx434, align 2, !dbg !2644, !tbaa !2377
  %conv435 = zext i16 %285 to i32, !dbg !2644
  %and436 = and i32 %conv435, 2048, !dbg !2647
  %tobool437 = icmp ne i32 %and436, 0, !dbg !2641
  br i1 %tobool437, label %do.body.429, label %do.end.438, !dbg !2641

do.end.438:                                       ; preds = %do.cond.431
  %286 = load i32, i32* %c, align 4, !dbg !2648, !tbaa !900
  %cmp439 = icmp eq i32 %286, 46, !dbg !2651
  br i1 %cmp439, label %if.then.441, label %if.end.452, !dbg !2652

if.then.441:                                      ; preds = %do.end.438
  br label %fraction, !dbg !2653

fraction:                                         ; preds = %NodeBlock, %if.then.441, %if.then.293, %if.then.261
  br label %do.body.442, !dbg !2655

do.body.442:                                      ; preds = %do.cond.444, %fraction
  %287 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2657, !tbaa !894
  %call443 = call i32 @tok_nextc(%struct.tok_state* %287), !dbg !2659
  store i32 %call443, i32* %c, align 4, !dbg !2660, !tbaa !900
  br label %do.cond.444, !dbg !2661

do.cond.444:                                      ; preds = %do.body.442
  %288 = load i32, i32* %c, align 4, !dbg !2662, !tbaa !900
  %idxprom445 = sext i32 %288 to i64, !dbg !2664
  %call446 = call i16** @__ctype_b_loc() #1, !dbg !2665
  %289 = load i16*, i16** %call446, align 8, !dbg !2666, !tbaa !894
  %arrayidx447 = getelementptr i16, i16* %289, i64 %idxprom445, !dbg !2664
  %290 = load i16, i16* %arrayidx447, align 2, !dbg !2664, !tbaa !2377
  %conv448 = zext i16 %290 to i32, !dbg !2664
  %and449 = and i32 %conv448, 2048, !dbg !2667
  %tobool450 = icmp ne i32 %and449, 0, !dbg !2661
  br i1 %tobool450, label %do.body.442, label %do.end.451, !dbg !2661

do.end.451:                                       ; preds = %do.cond.444
  br label %if.end.452, !dbg !2668

if.end.452:                                       ; preds = %do.end.451, %do.end.438
  %291 = load i32, i32* %c, align 4, !dbg !2669, !tbaa !900
  %cmp453 = icmp eq i32 %291, 101, !dbg !2671
  br i1 %cmp453, label %if.then.458, label %lor.lhs.false.455, !dbg !2672

lor.lhs.false.455:                                ; preds = %if.end.452
  %292 = load i32, i32* %c, align 4, !dbg !2673, !tbaa !900
  %cmp456 = icmp eq i32 %292, 69, !dbg !2675
  br i1 %cmp456, label %if.then.458, label %if.end.487, !dbg !2676

if.then.458:                                      ; preds = %lor.lhs.false.455, %if.end.452
  br label %exponent, !dbg !2677

exponent:                                         ; preds = %LeafBlock.9, %if.then.458
  %293 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2680, !tbaa !894
  %call459 = call i32 @tok_nextc(%struct.tok_state* %293), !dbg !2682
  store i32 %call459, i32* %c, align 4, !dbg !2683, !tbaa !900
  %294 = load i32, i32* %c, align 4, !dbg !2684, !tbaa !900
  %cmp460 = icmp eq i32 %294, 43, !dbg !2686
  br i1 %cmp460, label %if.then.465, label %lor.lhs.false.462, !dbg !2687

lor.lhs.false.462:                                ; preds = %exponent
  %295 = load i32, i32* %c, align 4, !dbg !2688, !tbaa !900
  %cmp463 = icmp eq i32 %295, 45, !dbg !2690
  br i1 %cmp463, label %if.then.465, label %if.end.467, !dbg !2691

if.then.465:                                      ; preds = %lor.lhs.false.462, %exponent
  %296 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2692, !tbaa !894
  %call466 = call i32 @tok_nextc(%struct.tok_state* %296), !dbg !2693
  store i32 %call466, i32* %c, align 4, !dbg !2694, !tbaa !900
  br label %if.end.467, !dbg !2695

if.end.467:                                       ; preds = %if.then.465, %lor.lhs.false.462
  %297 = load i32, i32* %c, align 4, !dbg !2696, !tbaa !900
  %idxprom468 = sext i32 %297 to i64, !dbg !2698
  %call469 = call i16** @__ctype_b_loc() #1, !dbg !2699
  %298 = load i16*, i16** %call469, align 8, !dbg !2700, !tbaa !894
  %arrayidx470 = getelementptr i16, i16* %298, i64 %idxprom468, !dbg !2698
  %299 = load i16, i16* %arrayidx470, align 2, !dbg !2698, !tbaa !2377
  %conv471 = zext i16 %299 to i32, !dbg !2698
  %and472 = and i32 %conv471, 2048, !dbg !2701
  %tobool473 = icmp ne i32 %and472, 0, !dbg !2701
  br i1 %tobool473, label %if.end.476, label %if.then.474, !dbg !2702

if.then.474:                                      ; preds = %if.end.467
  %300 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2703, !tbaa !894
  %done475 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %300, i32 0, i32 5, !dbg !2705
  store i32 13, i32* %done475, align 4, !dbg !2706, !tbaa !973
  %301 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2707, !tbaa !894
  %302 = load i32, i32* %c, align 4, !dbg !2708, !tbaa !900
  call void @tok_backup(%struct.tok_state* %301, i32 %302), !dbg !2709
  store i32 53, i32* %retval, !dbg !2710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2710

if.end.476:                                       ; preds = %if.end.467
  br label %do.body.477, !dbg !2711

do.body.477:                                      ; preds = %do.cond.479, %if.end.476
  %303 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2712, !tbaa !894
  %call478 = call i32 @tok_nextc(%struct.tok_state* %303), !dbg !2714
  store i32 %call478, i32* %c, align 4, !dbg !2715, !tbaa !900
  br label %do.cond.479, !dbg !2716

do.cond.479:                                      ; preds = %do.body.477
  %304 = load i32, i32* %c, align 4, !dbg !2717, !tbaa !900
  %idxprom480 = sext i32 %304 to i64, !dbg !2719
  %call481 = call i16** @__ctype_b_loc() #1, !dbg !2720
  %305 = load i16*, i16** %call481, align 8, !dbg !2721, !tbaa !894
  %arrayidx482 = getelementptr i16, i16* %305, i64 %idxprom480, !dbg !2719
  %306 = load i16, i16* %arrayidx482, align 2, !dbg !2719, !tbaa !2377
  %conv483 = zext i16 %306 to i32, !dbg !2719
  %and484 = and i32 %conv483, 2048, !dbg !2722
  %tobool485 = icmp ne i32 %and484, 0, !dbg !2716
  br i1 %tobool485, label %do.body.477, label %do.end.486, !dbg !2716

do.end.486:                                       ; preds = %do.cond.479
  br label %if.end.487, !dbg !2723

if.end.487:                                       ; preds = %do.end.486, %lor.lhs.false.455
  %307 = load i32, i32* %c, align 4, !dbg !2724, !tbaa !900
  %cmp488 = icmp eq i32 %307, 106, !dbg !2726
  br i1 %cmp488, label %if.then.493, label %lor.lhs.false.490, !dbg !2727

lor.lhs.false.490:                                ; preds = %if.end.487
  %308 = load i32, i32* %c, align 4, !dbg !2728, !tbaa !900
  %cmp491 = icmp eq i32 %308, 74, !dbg !2730
  br i1 %cmp491, label %if.then.493, label %if.end.495, !dbg !2731

if.then.493:                                      ; preds = %lor.lhs.false.490, %if.end.487
  br label %imaginary, !dbg !2732

imaginary:                                        ; preds = %LeafBlock.7, %if.then.493, %if.then.300
  %309 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2735, !tbaa !894
  %call494 = call i32 @tok_nextc(%struct.tok_state* %309), !dbg !2736
  store i32 %call494, i32* %c, align 4, !dbg !2737, !tbaa !900
  br label %if.end.495, !dbg !2738

if.end.495:                                       ; preds = %imaginary, %lor.lhs.false.490
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.end.427
  %310 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2739, !tbaa !894
  %311 = load i32, i32* %c, align 4, !dbg !2740, !tbaa !900
  call void @tok_backup(%struct.tok_state* %310, i32 %311), !dbg !2741
  %312 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2742, !tbaa !894
  %start497 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %312, i32 0, i32 4, !dbg !2743
  %313 = load i8*, i8** %start497, align 8, !dbg !2743, !tbaa !957
  %314 = load i8**, i8*** %p_start.addr, align 8, !dbg !2744, !tbaa !894
  store i8* %313, i8** %314, align 8, !dbg !2745, !tbaa !894
  %315 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2746, !tbaa !894
  %cur498 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %315, i32 0, i32 1, !dbg !2747
  %316 = load i8*, i8** %cur498, align 8, !dbg !2747, !tbaa !937
  %317 = load i8**, i8*** %p_end.addr, align 8, !dbg !2748, !tbaa !894
  store i8* %316, i8** %317, align 8, !dbg !2749, !tbaa !894
  store i32 2, i32* %retval, !dbg !2750
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2750

if.end.499:                                       ; preds = %if.end.279
  br label %letter_quote, !dbg !2751

letter_quote:                                     ; preds = %LeafBlock.2, %if.end.499
  %318 = load i32, i32* %c, align 4, !dbg !2753, !tbaa !900
  %cmp501 = icmp eq i32 %318, 39, !dbg !2754
  br i1 %cmp501, label %if.then.506, label %lor.lhs.false.503, !dbg !2755

lor.lhs.false.503:                                ; preds = %letter_quote
  %319 = load i32, i32* %c, align 4, !dbg !2756, !tbaa !900
  %cmp504 = icmp eq i32 %319, 34, !dbg !2758
  br i1 %cmp504, label %if.then.506, label %if.end.567, !dbg !2759

if.then.506:                                      ; preds = %lor.lhs.false.503, %letter_quote
  %320 = bitcast i32* %quote to i8*, !dbg !2760
  call void @llvm.lifetime.start(i64 4, i8* %320) #2, !dbg !2760
  call void @llvm.dbg.declare(metadata i32* %quote, metadata !729, metadata !898), !dbg !2761
  %321 = load i32, i32* %c, align 4, !dbg !2762, !tbaa !900
  store i32 %321, i32* %quote, align 4, !dbg !2761, !tbaa !900
  %322 = bitcast i32* %quote_size to i8*, !dbg !2763
  call void @llvm.lifetime.start(i64 4, i8* %322) #2, !dbg !2763
  call void @llvm.dbg.declare(metadata i32* %quote_size, metadata !732, metadata !898), !dbg !2764
  store i32 1, i32* %quote_size, align 4, !dbg !2764, !tbaa !900
  %323 = bitcast i32* %end_quote_size to i8*, !dbg !2765
  call void @llvm.lifetime.start(i64 4, i8* %323) #2, !dbg !2765
  call void @llvm.dbg.declare(metadata i32* %end_quote_size, metadata !733, metadata !898), !dbg !2766
  store i32 0, i32* %end_quote_size, align 4, !dbg !2766, !tbaa !900
  %324 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2767, !tbaa !894
  %call507 = call i32 @tok_nextc(%struct.tok_state* %324), !dbg !2768
  store i32 %call507, i32* %c, align 4, !dbg !2769, !tbaa !900
  %325 = load i32, i32* %c, align 4, !dbg !2770, !tbaa !900
  %326 = load i32, i32* %quote, align 4, !dbg !2772, !tbaa !900
  %cmp508 = icmp eq i32 %325, %326, !dbg !2773
  br i1 %cmp508, label %if.then.510, label %if.end.517, !dbg !2774

if.then.510:                                      ; preds = %if.then.506
  %327 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2775, !tbaa !894
  %call511 = call i32 @tok_nextc(%struct.tok_state* %327), !dbg !2777
  store i32 %call511, i32* %c, align 4, !dbg !2778, !tbaa !900
  %328 = load i32, i32* %c, align 4, !dbg !2779, !tbaa !900
  %329 = load i32, i32* %quote, align 4, !dbg !2781, !tbaa !900
  %cmp512 = icmp eq i32 %328, %329, !dbg !2782
  br i1 %cmp512, label %if.then.514, label %if.else.515, !dbg !2783

if.then.514:                                      ; preds = %if.then.510
  store i32 3, i32* %quote_size, align 4, !dbg !2784, !tbaa !900
  br label %if.end.516, !dbg !2785

if.else.515:                                      ; preds = %if.then.510
  store i32 1, i32* %end_quote_size, align 4, !dbg !2786, !tbaa !900
  br label %if.end.516

if.end.516:                                       ; preds = %if.else.515, %if.then.514
  br label %if.end.517, !dbg !2787

if.end.517:                                       ; preds = %if.end.516, %if.then.506
  %330 = load i32, i32* %c, align 4, !dbg !2788, !tbaa !900
  %331 = load i32, i32* %quote, align 4, !dbg !2790, !tbaa !900
  %cmp518 = icmp ne i32 %330, %331, !dbg !2791
  br i1 %cmp518, label %if.then.520, label %if.end.521, !dbg !2792

if.then.520:                                      ; preds = %if.end.517
  %332 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2793, !tbaa !894
  %333 = load i32, i32* %c, align 4, !dbg !2794, !tbaa !900
  call void @tok_backup(%struct.tok_state* %332, i32 %333), !dbg !2795
  br label %if.end.521, !dbg !2795

if.end.521:                                       ; preds = %if.then.520, %if.end.517
  br label %while.cond.522, !dbg !2796

while.cond.522:                                   ; preds = %if.end.560, %if.end.521
  %334 = load i32, i32* %end_quote_size, align 4, !dbg !2797, !tbaa !900
  %335 = load i32, i32* %quote_size, align 4, !dbg !2800, !tbaa !900
  %cmp523 = icmp ne i32 %334, %335, !dbg !2801
  br i1 %cmp523, label %while.body.525, label %while.end.561, !dbg !2796

while.body.525:                                   ; preds = %while.cond.522
  %336 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2802, !tbaa !894
  %call526 = call i32 @tok_nextc(%struct.tok_state* %336), !dbg !2804
  store i32 %call526, i32* %c, align 4, !dbg !2805, !tbaa !900
  %337 = load i32, i32* %c, align 4, !dbg !2806, !tbaa !900
  %cmp527 = icmp eq i32 %337, -1, !dbg !2808
  br i1 %cmp527, label %if.then.529, label %if.end.539, !dbg !2809

if.then.529:                                      ; preds = %while.body.525
  %338 = load i32, i32* %quote_size, align 4, !dbg !2810, !tbaa !900
  %cmp530 = icmp eq i32 %338, 3, !dbg !2813
  br i1 %cmp530, label %if.then.532, label %if.else.534, !dbg !2814

if.then.532:                                      ; preds = %if.then.529
  %339 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2815, !tbaa !894
  %done533 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %339, i32 0, i32 5, !dbg !2816
  store i32 23, i32* %done533, align 4, !dbg !2817, !tbaa !973
  br label %if.end.536, !dbg !2815

if.else.534:                                      ; preds = %if.then.529
  %340 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2818, !tbaa !894
  %done535 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %340, i32 0, i32 5, !dbg !2819
  store i32 24, i32* %done535, align 4, !dbg !2820, !tbaa !973
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.534, %if.then.532
  %341 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2821, !tbaa !894
  %inp537 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %341, i32 0, i32 2, !dbg !2822
  %342 = load i8*, i8** %inp537, align 8, !dbg !2822, !tbaa !928
  %343 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2823, !tbaa !894
  %cur538 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %343, i32 0, i32 1, !dbg !2824
  store i8* %342, i8** %cur538, align 8, !dbg !2825, !tbaa !937
  store i32 53, i32* %retval, !dbg !2826
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2826

if.end.539:                                       ; preds = %while.body.525
  %344 = load i32, i32* %quote_size, align 4, !dbg !2827, !tbaa !900
  %cmp540 = icmp eq i32 %344, 1, !dbg !2829
  br i1 %cmp540, label %land.lhs.true.542, label %if.end.549, !dbg !2830

land.lhs.true.542:                                ; preds = %if.end.539
  %345 = load i32, i32* %c, align 4, !dbg !2831, !tbaa !900
  %cmp543 = icmp eq i32 %345, 10, !dbg !2833
  br i1 %cmp543, label %if.then.545, label %if.end.549, !dbg !2834

if.then.545:                                      ; preds = %land.lhs.true.542
  %346 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2835, !tbaa !894
  %done546 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %346, i32 0, i32 5, !dbg !2837
  store i32 24, i32* %done546, align 4, !dbg !2838, !tbaa !973
  %347 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2839, !tbaa !894
  %inp547 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %347, i32 0, i32 2, !dbg !2840
  %348 = load i8*, i8** %inp547, align 8, !dbg !2840, !tbaa !928
  %349 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2841, !tbaa !894
  %cur548 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %349, i32 0, i32 1, !dbg !2842
  store i8* %348, i8** %cur548, align 8, !dbg !2843, !tbaa !937
  store i32 53, i32* %retval, !dbg !2844
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2844

if.end.549:                                       ; preds = %land.lhs.true.542, %if.end.539
  %350 = load i32, i32* %c, align 4, !dbg !2845, !tbaa !900
  %351 = load i32, i32* %quote, align 4, !dbg !2847, !tbaa !900
  %cmp550 = icmp eq i32 %350, %351, !dbg !2848
  br i1 %cmp550, label %if.then.552, label %if.else.554, !dbg !2849

if.then.552:                                      ; preds = %if.end.549
  %352 = load i32, i32* %end_quote_size, align 4, !dbg !2850, !tbaa !900
  %add553 = add i32 %352, 1, !dbg !2850
  store i32 %add553, i32* %end_quote_size, align 4, !dbg !2850, !tbaa !900
  br label %if.end.560, !dbg !2851

if.else.554:                                      ; preds = %if.end.549
  store i32 0, i32* %end_quote_size, align 4, !dbg !2852, !tbaa !900
  %353 = load i32, i32* %c, align 4, !dbg !2854, !tbaa !900
  %cmp555 = icmp eq i32 %353, 92, !dbg !2856
  br i1 %cmp555, label %if.then.557, label %if.end.559, !dbg !2857

if.then.557:                                      ; preds = %if.else.554
  %354 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2858, !tbaa !894
  %call558 = call i32 @tok_nextc(%struct.tok_state* %354), !dbg !2859
  store i32 %call558, i32* %c, align 4, !dbg !2860, !tbaa !900
  br label %if.end.559, !dbg !2861

if.end.559:                                       ; preds = %if.then.557, %if.else.554
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %if.then.552
  br label %while.cond.522, !dbg !2796

while.end.561:                                    ; preds = %while.cond.522
  %355 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2862, !tbaa !894
  %start562 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %355, i32 0, i32 4, !dbg !2863
  %356 = load i8*, i8** %start562, align 8, !dbg !2863, !tbaa !957
  %357 = load i8**, i8*** %p_start.addr, align 8, !dbg !2864, !tbaa !894
  store i8* %356, i8** %357, align 8, !dbg !2865, !tbaa !894
  %358 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2866, !tbaa !894
  %cur563 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %358, i32 0, i32 1, !dbg !2867
  %359 = load i8*, i8** %cur563, align 8, !dbg !2867, !tbaa !937
  %360 = load i8**, i8*** %p_end.addr, align 8, !dbg !2868, !tbaa !894
  store i8* %359, i8** %360, align 8, !dbg !2869, !tbaa !894
  store i32 3, i32* %retval, !dbg !2870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2870

cleanup.564:                                      ; preds = %while.end.561, %if.then.545, %if.end.536
  %361 = bitcast i32* %end_quote_size to i8*, !dbg !2871
  call void @llvm.lifetime.end(i64 4, i8* %361) #2, !dbg !2871
  %362 = bitcast i32* %quote_size to i8*, !dbg !2871
  call void @llvm.lifetime.end(i64 4, i8* %362) #2, !dbg !2871
  %363 = bitcast i32* %quote to i8*, !dbg !2871
  call void @llvm.lifetime.end(i64 4, i8* %363) #2, !dbg !2871
  br label %cleanup.610

if.end.567:                                       ; preds = %lor.lhs.false.503
  %364 = load i32, i32* %c, align 4, !dbg !2872, !tbaa !900
  %cmp568 = icmp eq i32 %364, 92, !dbg !2874
  br i1 %cmp568, label %if.then.570, label %if.end.580, !dbg !2875

if.then.570:                                      ; preds = %if.end.567
  %365 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2876, !tbaa !894
  %call571 = call i32 @tok_nextc(%struct.tok_state* %365), !dbg !2878
  store i32 %call571, i32* %c, align 4, !dbg !2879, !tbaa !900
  %366 = load i32, i32* %c, align 4, !dbg !2880, !tbaa !900
  %cmp572 = icmp ne i32 %366, 10, !dbg !2882
  br i1 %cmp572, label %if.then.574, label %if.end.578, !dbg !2883

if.then.574:                                      ; preds = %if.then.570
  %367 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2884, !tbaa !894
  %done575 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %367, i32 0, i32 5, !dbg !2886
  store i32 25, i32* %done575, align 4, !dbg !2887, !tbaa !973
  %368 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2888, !tbaa !894
  %inp576 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %368, i32 0, i32 2, !dbg !2889
  %369 = load i8*, i8** %inp576, align 8, !dbg !2889, !tbaa !928
  %370 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2890, !tbaa !894
  %cur577 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %370, i32 0, i32 1, !dbg !2891
  store i8* %369, i8** %cur577, align 8, !dbg !2892, !tbaa !937
  store i32 53, i32* %retval, !dbg !2893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2893

if.end.578:                                       ; preds = %if.then.570
  %371 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2894, !tbaa !894
  %cont_line579 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %371, i32 0, i32 25, !dbg !2895
  store i32 1, i32* %cont_line579, align 4, !dbg !2896, !tbaa !1055
  br label %again, !dbg !2897

if.end.580:                                       ; preds = %if.end.567
  %372 = bitcast i32* %c2 to i8*, !dbg !2898
  call void @llvm.lifetime.start(i64 4, i8* %372) #2, !dbg !2898
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !734, metadata !898), !dbg !2899
  %373 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2900, !tbaa !894
  %call581 = call i32 @tok_nextc(%struct.tok_state* %373), !dbg !2901
  store i32 %call581, i32* %c2, align 4, !dbg !2899, !tbaa !900
  %374 = bitcast i32* %token to i8*, !dbg !2902
  call void @llvm.lifetime.start(i64 4, i8* %374) #2, !dbg !2902
  call void @llvm.dbg.declare(metadata i32* %token, metadata !736, metadata !898), !dbg !2903
  %375 = load i32, i32* %c, align 4, !dbg !2904, !tbaa !900
  %376 = load i32, i32* %c2, align 4, !dbg !2905, !tbaa !900
  %call582 = call i32 @PyToken_TwoChars(i32 %375, i32 %376), !dbg !2906
  store i32 %call582, i32* %token, align 4, !dbg !2903, !tbaa !900
  %377 = load i32, i32* %token, align 4, !dbg !2907, !tbaa !900
  %cmp583 = icmp ne i32 %377, 52, !dbg !2908
  br i1 %cmp583, label %if.then.585, label %if.end.597, !dbg !2909

if.then.585:                                      ; preds = %if.end.580
  %378 = bitcast i32* %c3 to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 4, i8* %378) #2, !dbg !2910
  call void @llvm.dbg.declare(metadata i32* %c3, metadata !737, metadata !898), !dbg !2911
  %379 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2912, !tbaa !894
  %call586 = call i32 @tok_nextc(%struct.tok_state* %379), !dbg !2913
  store i32 %call586, i32* %c3, align 4, !dbg !2911, !tbaa !900
  %380 = bitcast i32* %token3 to i8*, !dbg !2914
  call void @llvm.lifetime.start(i64 4, i8* %380) #2, !dbg !2914
  call void @llvm.dbg.declare(metadata i32* %token3, metadata !740, metadata !898), !dbg !2915
  %381 = load i32, i32* %c, align 4, !dbg !2916, !tbaa !900
  %382 = load i32, i32* %c2, align 4, !dbg !2917, !tbaa !900
  %383 = load i32, i32* %c3, align 4, !dbg !2918, !tbaa !900
  %call587 = call i32 @PyToken_ThreeChars(i32 %381, i32 %382, i32 %383), !dbg !2919
  store i32 %call587, i32* %token3, align 4, !dbg !2915, !tbaa !900
  %384 = load i32, i32* %token3, align 4, !dbg !2920, !tbaa !900
  %cmp588 = icmp ne i32 %384, 52, !dbg !2922
  br i1 %cmp588, label %if.then.590, label %if.else.591, !dbg !2923

if.then.590:                                      ; preds = %if.then.585
  %385 = load i32, i32* %token3, align 4, !dbg !2924, !tbaa !900
  store i32 %385, i32* %token, align 4, !dbg !2926, !tbaa !900
  br label %if.end.592, !dbg !2927

if.else.591:                                      ; preds = %if.then.585
  %386 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2928, !tbaa !894
  %387 = load i32, i32* %c3, align 4, !dbg !2930, !tbaa !900
  call void @tok_backup(%struct.tok_state* %386, i32 %387), !dbg !2931
  br label %if.end.592

if.end.592:                                       ; preds = %if.else.591, %if.then.590
  %388 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2932, !tbaa !894
  %start593 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %388, i32 0, i32 4, !dbg !2933
  %389 = load i8*, i8** %start593, align 8, !dbg !2933, !tbaa !957
  %390 = load i8**, i8*** %p_start.addr, align 8, !dbg !2934, !tbaa !894
  store i8* %389, i8** %390, align 8, !dbg !2935, !tbaa !894
  %391 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2936, !tbaa !894
  %cur594 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %391, i32 0, i32 1, !dbg !2937
  %392 = load i8*, i8** %cur594, align 8, !dbg !2937, !tbaa !937
  %393 = load i8**, i8*** %p_end.addr, align 8, !dbg !2938, !tbaa !894
  store i8* %392, i8** %393, align 8, !dbg !2939, !tbaa !894
  %394 = load i32, i32* %token, align 4, !dbg !2940, !tbaa !900
  store i32 %394, i32* %retval, !dbg !2941
  store i32 1, i32* %cleanup.dest.slot
  %395 = bitcast i32* %token3 to i8*, !dbg !2942
  call void @llvm.lifetime.end(i64 4, i8* %395) #2, !dbg !2942
  %396 = bitcast i32* %c3 to i8*, !dbg !2942
  call void @llvm.lifetime.end(i64 4, i8* %396) #2, !dbg !2942
  br label %cleanup.598

if.end.597:                                       ; preds = %if.end.580
  %397 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2943, !tbaa !894
  %398 = load i32, i32* %c2, align 4, !dbg !2944, !tbaa !900
  call void @tok_backup(%struct.tok_state* %397, i32 %398), !dbg !2945
  store i32 0, i32* %cleanup.dest.slot, !dbg !2946
  br label %cleanup.598, !dbg !2946

cleanup.598:                                      ; preds = %if.end.597, %if.end.592
  %399 = bitcast i32* %token to i8*, !dbg !2947
  call void @llvm.lifetime.end(i64 4, i8* %399) #2, !dbg !2947
  %400 = bitcast i32* %c2 to i8*, !dbg !2947
  call void @llvm.lifetime.end(i64 4, i8* %400) #2, !dbg !2947
  %cleanup.dest.600 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.16

LeafBlock.16:                                     ; preds = %cleanup.598
  %SwitchLeaf17 = icmp eq i32 %cleanup.dest.600, 0
  br i1 %SwitchLeaf17, label %cleanup.cont.601, label %NewDefault.15

cleanup.cont.601:                                 ; preds = %LeafBlock.16
  %401 = load i32, i32* %c, align 4, !dbg !2948, !tbaa !900
  br label %NodeBlock.39

NodeBlock.39:                                     ; preds = %cleanup.cont.601
  %Pivot.40 = icmp slt i32 %401, 93
  br i1 %Pivot.40, label %NodeBlock.27, label %NodeBlock.37

NodeBlock.37:                                     ; preds = %NodeBlock.39
  %Pivot.38 = icmp slt i32 %401, 123
  br i1 %Pivot.38, label %LeafBlock.29, label %NodeBlock.35

NodeBlock.35:                                     ; preds = %NodeBlock.37
  %Pivot.36 = icmp slt i32 %401, 125
  br i1 %Pivot.36, label %LeafBlock.31, label %LeafBlock.33

LeafBlock.33:                                     ; preds = %NodeBlock.35
  %SwitchLeaf34 = icmp eq i32 %401, 125
  br i1 %SwitchLeaf34, label %sw.bb.604, label %NewDefault.18

LeafBlock.31:                                     ; preds = %NodeBlock.35
  %SwitchLeaf32 = icmp eq i32 %401, 123
  br i1 %SwitchLeaf32, label %sw.bb, label %NewDefault.18

LeafBlock.29:                                     ; preds = %NodeBlock.37
  %SwitchLeaf30 = icmp eq i32 %401, 93
  br i1 %SwitchLeaf30, label %sw.bb.604, label %NewDefault.18

NodeBlock.27:                                     ; preds = %NodeBlock.39
  %Pivot.28 = icmp slt i32 %401, 41
  br i1 %Pivot.28, label %LeafBlock.19, label %NodeBlock.25

NodeBlock.25:                                     ; preds = %NodeBlock.27
  %Pivot.26 = icmp slt i32 %401, 91
  br i1 %Pivot.26, label %LeafBlock.21, label %LeafBlock.23

LeafBlock.23:                                     ; preds = %NodeBlock.25
  %SwitchLeaf24 = icmp eq i32 %401, 91
  br i1 %SwitchLeaf24, label %sw.bb, label %NewDefault.18

LeafBlock.21:                                     ; preds = %NodeBlock.25
  %SwitchLeaf22 = icmp eq i32 %401, 41
  br i1 %SwitchLeaf22, label %sw.bb.604, label %NewDefault.18

LeafBlock.19:                                     ; preds = %NodeBlock.27
  %SwitchLeaf20 = icmp eq i32 %401, 40
  br i1 %SwitchLeaf20, label %sw.bb, label %NewDefault.18

sw.bb:                                            ; preds = %LeafBlock.31, %LeafBlock.23, %LeafBlock.19
  %402 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2949, !tbaa !894
  %level602 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %402, i32 0, i32 15, !dbg !2951
  %403 = load i32, i32* %level602, align 4, !dbg !2952, !tbaa !1016
  %inc603 = add i32 %403, 1, !dbg !2952
  store i32 %inc603, i32* %level602, align 4, !dbg !2952, !tbaa !1016
  br label %sw.epilog, !dbg !2953

sw.bb.604:                                        ; preds = %LeafBlock.33, %LeafBlock.29, %LeafBlock.21
  %404 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2954, !tbaa !894
  %level605 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %404, i32 0, i32 15, !dbg !2955
  %405 = load i32, i32* %level605, align 4, !dbg !2956, !tbaa !1016
  %dec606 = add i32 %405, -1, !dbg !2956
  store i32 %dec606, i32* %level605, align 4, !dbg !2956, !tbaa !1016
  br label %sw.epilog, !dbg !2957

NewDefault.18:                                    ; preds = %LeafBlock.33, %LeafBlock.31, %LeafBlock.29, %LeafBlock.23, %LeafBlock.21, %LeafBlock.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault.18, %sw.bb.604, %sw.bb
  %406 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2958, !tbaa !894
  %start607 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %406, i32 0, i32 4, !dbg !2959
  %407 = load i8*, i8** %start607, align 8, !dbg !2959, !tbaa !957
  %408 = load i8**, i8*** %p_start.addr, align 8, !dbg !2960, !tbaa !894
  store i8* %407, i8** %408, align 8, !dbg !2961, !tbaa !894
  %409 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2962, !tbaa !894
  %cur608 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %409, i32 0, i32 1, !dbg !2963
  %410 = load i8*, i8** %cur608, align 8, !dbg !2963, !tbaa !937
  %411 = load i8**, i8*** %p_end.addr, align 8, !dbg !2964, !tbaa !894
  store i8* %410, i8** %411, align 8, !dbg !2965, !tbaa !894
  %412 = load i32, i32* %c, align 4, !dbg !2966, !tbaa !900
  %call609 = call i32 @PyToken_OneChar(i32 %412), !dbg !2967
  store i32 %call609, i32* %retval, !dbg !2968
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2968

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.610

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.610

NewDefault.4:                                     ; preds = %LeafBlock.9, %LeafBlock.7, %LeafBlock.5
  br label %cleanup.610

NewDefault.15:                                    ; preds = %LeafBlock.16
  br label %cleanup.610

cleanup.610:                                      ; preds = %NewDefault.15, %NewDefault.4, %NewDefault.1, %NewDefault, %sw.epilog, %if.then.574, %cleanup.564, %if.end.496, %if.then.474, %if.then.367, %if.then.341, %if.then.315, %if.end.276, %if.then.269, %if.end.249, %if.then.148, %if.else.124, %if.then.121
  %413 = bitcast i32* %nonascii to i8*, !dbg !2969
  call void @llvm.lifetime.end(i64 4, i8* %413) #2, !dbg !2969
  %414 = bitcast i32* %blankline to i8*, !dbg !2969
  call void @llvm.lifetime.end(i64 4, i8* %414) #2, !dbg !2969
  %415 = bitcast i32* %c to i8*, !dbg !2969
  call void @llvm.lifetime.end(i64 4, i8* %415) #2, !dbg !2969
  %416 = load i32, i32* %retval, !dbg !2969
  ret i32 %416, !dbg !2969
}

; Function Attrs: nounwind uwtable
define i8* @PyTokenizer_FindEncodingFilename(i32 %fd, %struct._object* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %filename.addr = alloca %struct._object*, align 8
  %tok = alloca %struct.tok_state*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %p_start = alloca i8*, align 8
  %p_end = alloca i8*, align 8
  %encoding = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !511, metadata !898), !dbg !2970
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !512, metadata !898), !dbg !2971
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !2972
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2972
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !513, metadata !898), !dbg !2973
  %1 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !2974
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2974
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !514, metadata !898), !dbg !2975
  %2 = bitcast i8** %p_start to i8*, !dbg !2976
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2976
  call void @llvm.dbg.declare(metadata i8** %p_start, metadata !515, metadata !898), !dbg !2977
  store i8* null, i8** %p_start, align 8, !dbg !2977, !tbaa !894
  %3 = bitcast i8** %p_end to i8*, !dbg !2976
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2976
  call void @llvm.dbg.declare(metadata i8** %p_end, metadata !516, metadata !898), !dbg !2978
  store i8* null, i8** %p_end, align 8, !dbg !2978, !tbaa !894
  %4 = bitcast i8** %encoding to i8*, !dbg !2976
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2976
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !517, metadata !898), !dbg !2979
  store i8* null, i8** %encoding, align 8, !dbg !2979, !tbaa !894
  %5 = load i32, i32* %fd.addr, align 4, !dbg !2980, !tbaa !900
  %call = call i32 @_Py_dup(i32 %5), !dbg !2981
  store i32 %call, i32* %fd.addr, align 4, !dbg !2982, !tbaa !900
  %6 = load i32, i32* %fd.addr, align 4, !dbg !2983, !tbaa !900
  %cmp = icmp slt i32 %6, 0, !dbg !2985
  br i1 %cmp, label %if.then, label %if.end, !dbg !2986

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !2987
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2987

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %fd.addr, align 4, !dbg !2989, !tbaa !900
  %call1 = call %struct._IO_FILE* @fdopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)) #2, !dbg !2990
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !2991, !tbaa !894
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !2992, !tbaa !894
  %cmp2 = icmp eq %struct._IO_FILE* %8, null, !dbg !2994
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2995

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval, !dbg !2996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2996

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !2998, !tbaa !894
  %call5 = call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %9, i8* null, i8* null, i8* null), !dbg !2999
  store %struct.tok_state* %call5, %struct.tok_state** %tok, align 8, !dbg !3000, !tbaa !894
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3001, !tbaa !894
  %cmp6 = icmp eq %struct.tok_state* %10, null, !dbg !3003
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !3004

if.then.7:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3005, !tbaa !894
  %call8 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !3007
  store i8* null, i8** %retval, !dbg !3008
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3008

if.end.9:                                         ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3009, !tbaa !894
  %cmp10 = icmp ne %struct._object* %12, null, !dbg !3011
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !3012

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3013, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3015
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3016, !tbaa !1277
  %inc = add i64 %14, 1, !dbg !3016
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3016, !tbaa !1277
  %15 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3017, !tbaa !894
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3018, !tbaa !894
  %filename12 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 16, !dbg !3019
  store %struct._object* %15, %struct._object** %filename12, align 8, !dbg !3020, !tbaa !1059
  br label %if.end.20, !dbg !3021

if.else:                                          ; preds = %if.end.9
  %call13 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !3022
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3024, !tbaa !894
  %filename14 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 16, !dbg !3025
  store %struct._object* %call13, %struct._object** %filename14, align 8, !dbg !3026, !tbaa !1059
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3027, !tbaa !894
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 16, !dbg !3029
  %19 = load %struct._object*, %struct._object** %filename15, align 8, !dbg !3029, !tbaa !1059
  %cmp16 = icmp eq %struct._object* %19, null, !dbg !3030
  br i1 %cmp16, label %if.then.17, label %if.end.19, !dbg !3031

if.then.17:                                       ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3032, !tbaa !894
  %call18 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !3034
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3035, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %21), !dbg !3036
  %22 = load i8*, i8** %encoding, align 8, !dbg !3037, !tbaa !894
  store i8* %22, i8** %retval, !dbg !3038
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3038

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  br label %while.cond, !dbg !3039

while.cond:                                       ; preds = %while.body, %if.end.20
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3040, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 14, !dbg !3043
  %24 = load i32, i32* %lineno, align 4, !dbg !3043, !tbaa !1012
  %cmp21 = icmp slt i32 %24, 2, !dbg !3044
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !3045

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3046, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 5, !dbg !3048
  %26 = load i32, i32* %done, align 4, !dbg !3048, !tbaa !973
  %cmp22 = icmp eq i32 %26, 10, !dbg !3049
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %27, label %while.body, label %while.end, !dbg !3050

while.body:                                       ; preds = %land.end
  %28 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3052, !tbaa !894
  %call23 = call i32 @PyTokenizer_Get(%struct.tok_state* %28, i8** %p_start, i8** %p_end), !dbg !3054
  br label %while.cond, !dbg !3039

while.end:                                        ; preds = %land.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3055, !tbaa !894
  %call24 = call i32 @fclose(%struct._IO_FILE* %29), !dbg !3056
  %30 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3057, !tbaa !894
  %encoding25 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 24, !dbg !3059
  %31 = load i8*, i8** %encoding25, align 8, !dbg !3059, !tbaa !1051
  %tobool = icmp ne i8* %31, null, !dbg !3057
  br i1 %tobool, label %if.then.26, label %if.end.35, !dbg !3060

if.then.26:                                       ; preds = %while.end
  %32 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3061, !tbaa !894
  %encoding27 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 24, !dbg !3063
  %33 = load i8*, i8** %encoding27, align 8, !dbg !3063, !tbaa !1051
  %call28 = call i64 @strlen(i8* %33) #9, !dbg !3064
  %add = add i64 %call28, 1, !dbg !3065
  %call29 = call i8* @PyMem_Malloc(i64 %add), !dbg !3066
  store i8* %call29, i8** %encoding, align 8, !dbg !3067, !tbaa !894
  %34 = load i8*, i8** %encoding, align 8, !dbg !3068, !tbaa !894
  %tobool30 = icmp ne i8* %34, null, !dbg !3068
  br i1 %tobool30, label %if.then.31, label %if.end.34, !dbg !3070

if.then.31:                                       ; preds = %if.then.26
  %35 = load i8*, i8** %encoding, align 8, !dbg !3071, !tbaa !894
  %36 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3072, !tbaa !894
  %encoding32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 24, !dbg !3073
  %37 = load i8*, i8** %encoding32, align 8, !dbg !3073, !tbaa !1051
  %call33 = call i8* @strcpy(i8* %35, i8* %37) #2, !dbg !3074
  br label %if.end.34, !dbg !3074

if.end.34:                                        ; preds = %if.then.31, %if.then.26
  br label %if.end.35, !dbg !3075

if.end.35:                                        ; preds = %if.end.34, %while.end
  %38 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3076, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %38), !dbg !3077
  %39 = load i8*, i8** %encoding, align 8, !dbg !3078, !tbaa !894
  store i8* %39, i8** %retval, !dbg !3079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3079

cleanup:                                          ; preds = %if.end.35, %if.then.17, %if.then.7, %if.then.3, %if.then
  %40 = bitcast i8** %encoding to i8*, !dbg !3080
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3080
  %41 = bitcast i8** %p_end to i8*, !dbg !3080
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3080
  %42 = bitcast i8** %p_start to i8*, !dbg !3080
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3080
  %43 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !3080
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3080
  %44 = bitcast %struct.tok_state** %tok to i8*, !dbg !3080
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3080
  %45 = load i8*, i8** %retval, !dbg !3080
  ret i8* %45, !dbg !3080
}

declare i32 @_Py_dup(i32) #3

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @PyTokenizer_FindEncoding(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !522, metadata !898), !dbg !3081
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3082, !tbaa !900
  %call = call i8* @PyTokenizer_FindEncodingFilename(i32 %0, %struct._object* null), !dbg !3083
  ret i8* %call, !dbg !3084
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_bom(i32 (%struct.tok_state*)* %get_char, void (i32, %struct.tok_state*)* %unget_char, i32 (%struct.tok_state*, i8*)* %set_readline, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %get_char.addr = alloca i32 (%struct.tok_state*)*, align 8
  %unget_char.addr = alloca void (i32, %struct.tok_state*)*, align 8
  %set_readline.addr = alloca i32 (%struct.tok_state*, i8*)*, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %ch1 = alloca i32, align 4
  %ch2 = alloca i32, align 4
  %ch3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 (%struct.tok_state*)* %get_char, i32 (%struct.tok_state*)** %get_char.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*)** %get_char.addr, metadata !556, metadata !898), !dbg !3085
  store void (i32, %struct.tok_state*)* %unget_char, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata void (i32, %struct.tok_state*)** %unget_char.addr, metadata !557, metadata !898), !dbg !3086
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*, i8*)** %set_readline.addr, metadata !558, metadata !898), !dbg !3087
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !559, metadata !898), !dbg !3088
  %0 = bitcast i32* %ch1 to i8*, !dbg !3089
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3089
  call void @llvm.dbg.declare(metadata i32* %ch1, metadata !560, metadata !898), !dbg !3090
  %1 = bitcast i32* %ch2 to i8*, !dbg !3089
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3089
  call void @llvm.dbg.declare(metadata i32* %ch2, metadata !561, metadata !898), !dbg !3091
  %2 = bitcast i32* %ch3 to i8*, !dbg !3089
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3089
  call void @llvm.dbg.declare(metadata i32* %ch3, metadata !562, metadata !898), !dbg !3092
  %3 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3093, !tbaa !894
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3094, !tbaa !894
  %call = call i32 %3(%struct.tok_state* %4), !dbg !3093
  store i32 %call, i32* %ch1, align 4, !dbg !3095, !tbaa !900
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3096, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 21, !dbg !3097
  store i32 1, i32* %decoding_state, align 4, !dbg !3098, !tbaa !1035
  %6 = load i32, i32* %ch1, align 4, !dbg !3099, !tbaa !900
  %cmp = icmp eq i32 %6, -1, !dbg !3101
  br i1 %cmp, label %if.then, label %if.else, !dbg !3102

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !3103
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3103

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %ch1, align 4, !dbg !3105, !tbaa !900
  %cmp1 = icmp eq i32 %7, 239, !dbg !3107
  br i1 %cmp1, label %if.then.2, label %if.else.10, !dbg !3108

if.then.2:                                        ; preds = %if.else
  %8 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3109, !tbaa !894
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3111, !tbaa !894
  %call3 = call i32 %8(%struct.tok_state* %9), !dbg !3109
  store i32 %call3, i32* %ch2, align 4, !dbg !3112, !tbaa !900
  %10 = load i32, i32* %ch2, align 4, !dbg !3113, !tbaa !900
  %cmp4 = icmp ne i32 %10, 187, !dbg !3115
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !3116

if.then.5:                                        ; preds = %if.then.2
  %11 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3117, !tbaa !894
  %12 = load i32, i32* %ch2, align 4, !dbg !3119, !tbaa !900
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3120, !tbaa !894
  call void %11(i32 %12, %struct.tok_state* %13), !dbg !3117
  %14 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3121, !tbaa !894
  %15 = load i32, i32* %ch1, align 4, !dbg !3122, !tbaa !900
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3123, !tbaa !894
  call void %14(i32 %15, %struct.tok_state* %16), !dbg !3121
  store i32 1, i32* %retval, !dbg !3124
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3124

if.end:                                           ; preds = %if.then.2
  %17 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3125, !tbaa !894
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3126, !tbaa !894
  %call6 = call i32 %17(%struct.tok_state* %18), !dbg !3125
  store i32 %call6, i32* %ch3, align 4, !dbg !3127, !tbaa !900
  %19 = load i32, i32* %ch3, align 4, !dbg !3128, !tbaa !900
  %cmp7 = icmp ne i32 %19, 191, !dbg !3130
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3131

if.then.8:                                        ; preds = %if.end
  %20 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3132, !tbaa !894
  %21 = load i32, i32* %ch3, align 4, !dbg !3134, !tbaa !900
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3135, !tbaa !894
  call void %20(i32 %21, %struct.tok_state* %22), !dbg !3132
  %23 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3136, !tbaa !894
  %24 = load i32, i32* %ch2, align 4, !dbg !3137, !tbaa !900
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3138, !tbaa !894
  call void %23(i32 %24, %struct.tok_state* %25), !dbg !3136
  %26 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3139, !tbaa !894
  %27 = load i32, i32* %ch1, align 4, !dbg !3140, !tbaa !900
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3141, !tbaa !894
  call void %26(i32 %27, %struct.tok_state* %28), !dbg !3139
  store i32 1, i32* %retval, !dbg !3142
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3142

if.end.9:                                         ; preds = %if.end
  br label %if.end.11, !dbg !3143

if.else.10:                                       ; preds = %if.else
  %29 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3144, !tbaa !894
  %30 = load i32, i32* %ch1, align 4, !dbg !3146, !tbaa !900
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3147, !tbaa !894
  call void %29(i32 %30, %struct.tok_state* %31), !dbg !3144
  store i32 1, i32* %retval, !dbg !3148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3148

if.end.11:                                        ; preds = %if.end.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11
  %32 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3149, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 24, !dbg !3151
  %33 = load i8*, i8** %encoding, align 8, !dbg !3151, !tbaa !1051
  %cmp13 = icmp ne i8* %33, null, !dbg !3152
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !3153

if.then.14:                                       ; preds = %if.end.12
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3154, !tbaa !894
  %encoding15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24, !dbg !3155
  %35 = load i8*, i8** %encoding15, align 8, !dbg !3155, !tbaa !1051
  call void @PyMem_Free(i8* %35), !dbg !3156
  br label %if.end.16, !dbg !3156

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3157, !tbaa !894
  %call17 = call i8* @new_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i64 5, %struct.tok_state* %36), !dbg !3158
  %37 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3159, !tbaa !894
  %encoding18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %37, i32 0, i32 24, !dbg !3160
  store i8* %call17, i8** %encoding18, align 8, !dbg !3161, !tbaa !1051
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3162, !tbaa !894
  %encoding19 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 24, !dbg !3164
  %39 = load i8*, i8** %encoding19, align 8, !dbg !3164, !tbaa !1051
  %tobool = icmp ne i8* %39, null, !dbg !3162
  br i1 %tobool, label %if.end.21, label %if.then.20, !dbg !3165

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %retval, !dbg !3166
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3166

if.end.21:                                        ; preds = %if.end.16
  store i32 1, i32* %retval, !dbg !3167
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3167

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.else.10, %if.then.8, %if.then.5, %if.then
  %40 = bitcast i32* %ch3 to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 4, i8* %40) #2, !dbg !3168
  %41 = bitcast i32* %ch2 to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !3168
  %42 = bitcast i32* %ch1 to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 4, i8* %42) #2, !dbg !3168
  %43 = load i32, i32* %retval, !dbg !3168
  ret i32 %43, !dbg !3168
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !573, metadata !898), !dbg !3169
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3170, !tbaa !894
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30, !dbg !3171
  %1 = load i8*, i8** %str, align 8, !dbg !3172, !tbaa !1104
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !3172
  store i8* %incdec.ptr, i8** %str, align 8, !dbg !3172, !tbaa !1104
  %2 = load i8, i8* %1, align 1, !dbg !3173, !tbaa !1146
  %conv = sext i8 %2 to i32, !dbg !3174
  %and = and i32 %conv, 255, !dbg !3175
  %conv1 = trunc i32 %and to i8, !dbg !3176
  %conv2 = zext i8 %conv1 to i32, !dbg !3177
  ret i32 %conv2, !dbg !3178
}

; Function Attrs: nounwind uwtable
define internal void @buf_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !576, metadata !898), !dbg !3179
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !577, metadata !898), !dbg !3180
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3181, !tbaa !894
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30, !dbg !3182
  %1 = load i8*, i8** %str, align 8, !dbg !3183, !tbaa !1104
  %incdec.ptr = getelementptr i8, i8* %1, i32 -1, !dbg !3183
  store i8* %incdec.ptr, i8** %str, align 8, !dbg !3183, !tbaa !1104
  ret void, !dbg !3184
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_setreadl(%struct.tok_state* %tok, i8* %enc) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %enc.addr = alloca i8*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !580, metadata !898), !dbg !3185
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !581, metadata !898), !dbg !3186
  %0 = load i8*, i8** %enc.addr, align 8, !dbg !3187, !tbaa !894
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3188, !tbaa !894
  %enc1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 29, !dbg !3189
  store i8* %0, i8** %enc1, align 8, !dbg !3190, !tbaa !1047
  ret i32 1, !dbg !3191
}

; Function Attrs: nounwind uwtable
define internal i8* @error_ret(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !586, metadata !898), !dbg !3192
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3193, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 22, !dbg !3194
  store i32 1, i32* %decoding_erred, align 4, !dbg !3195, !tbaa !1039
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3196, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6, !dbg !3198
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3198, !tbaa !977
  %cmp = icmp ne %struct._IO_FILE* %2, null, !dbg !3199
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3200

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3201, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0, !dbg !3203
  %4 = load i8*, i8** %buf, align 8, !dbg !3203, !tbaa !941
  %cmp1 = icmp ne i8* %4, null, !dbg !3204
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3205

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3206, !tbaa !894
  %buf2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 0, !dbg !3207
  %6 = load i8*, i8** %buf2, align 8, !dbg !3207, !tbaa !941
  call void @PyMem_Free(i8* %6), !dbg !3208
  br label %if.end, !dbg !3208

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3209, !tbaa !894
  %buf3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 0, !dbg !3210
  store i8* null, i8** %buf3, align 8, !dbg !3211, !tbaa !941
  ret i8* null, !dbg !3212
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @translate_into_utf8(i8* %str, i8* %enc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %enc.addr = alloca i8*, align 8
  %utf8 = alloca %struct._object*, align 8
  %buf = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !591, metadata !898), !dbg !3213
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !592, metadata !898), !dbg !3214
  %0 = bitcast %struct._object** %utf8 to i8*, !dbg !3215
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct._object** %utf8, metadata !593, metadata !898), !dbg !3216
  %1 = bitcast %struct._object** %buf to i8*, !dbg !3217
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3217
  call void @llvm.dbg.declare(metadata %struct._object** %buf, metadata !594, metadata !898), !dbg !3218
  %2 = load i8*, i8** %str.addr, align 8, !dbg !3219, !tbaa !894
  %3 = load i8*, i8** %str.addr, align 8, !dbg !3220, !tbaa !894
  %call = call i64 @strlen(i8* %3) #9, !dbg !3221
  %4 = load i8*, i8** %enc.addr, align 8, !dbg !3222, !tbaa !894
  %call1 = call %struct._object* @PyUnicode_Decode(i8* %2, i64 %call, i8* %4, i8* null), !dbg !3223
  store %struct._object* %call1, %struct._object** %buf, align 8, !dbg !3218, !tbaa !894
  %5 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3224, !tbaa !894
  %cmp = icmp eq %struct._object* %5, null, !dbg !3226
  br i1 %cmp, label %if.then, label %if.end, !dbg !3227

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3228

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3229, !tbaa !894
  %call2 = call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %6), !dbg !3230
  store %struct._object* %call2, %struct._object** %utf8, align 8, !dbg !3231, !tbaa !894
  br label %do.body, !dbg !3232

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3233
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3233
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !595, metadata !898), !dbg !3235
  %8 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3236, !tbaa !894
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !3235, !tbaa !894
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3237, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3239
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !3240, !tbaa !1277
  %dec = add i64 %10, -1, !dbg !3240
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3240, !tbaa !1277
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3241
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3242

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !3243

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3245, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3247
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3247, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !3248
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3248, !tbaa !1289
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3249, !tbaa !894
  call void %13(%struct._object* %14), !dbg !3250
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3251
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3251
  br label %do.cond, !dbg !3253

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !3254

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !3256, !tbaa !894
  store %struct._object* %16, %struct._object** %retval, !dbg !3257
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3257

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %buf to i8*, !dbg !3258
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3258
  %18 = bitcast %struct._object** %utf8 to i8*, !dbg !3258
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3258
  %19 = load %struct._object*, %struct._object** %retval, !dbg !3258
  ret %struct._object* %19, !dbg !3258
}

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @check_coding_spec(i8* %line, i64 %size, %struct.tok_state* %tok, i32 (%struct.tok_state*, i8*)* %set_readline) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %set_readline.addr = alloca i32 (%struct.tok_state*, i8*)*, align 8
  %cs = alloca i8*, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i64, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  %__s1_len97 = alloca i64, align 8
  %__s2_len99 = alloca i64, align 8
  %tmp100 = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !601, metadata !898), !dbg !3259
  store i64 %size, i64* %size.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !602, metadata !898), !dbg !3260
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !603, metadata !898), !dbg !3261
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*, i8*)** %set_readline.addr, metadata !604, metadata !898), !dbg !3262
  %0 = bitcast i8** %cs to i8*, !dbg !3263
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3263
  call void @llvm.dbg.declare(metadata i8** %cs, metadata !605, metadata !898), !dbg !3264
  %1 = bitcast i32* %r to i8*, !dbg !3265
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3265
  call void @llvm.dbg.declare(metadata i32* %r, metadata !606, metadata !898), !dbg !3266
  store i32 1, i32* %r, align 4, !dbg !3266, !tbaa !900
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3267, !tbaa !894
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 25, !dbg !3269
  %3 = load i32, i32* %cont_line, align 4, !dbg !3269, !tbaa !1055
  %tobool = icmp ne i32 %3, 0, !dbg !3267
  br i1 %tobool, label %if.then, label %if.end, !dbg !3270

if.then:                                          ; preds = %entry
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3271, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 23, !dbg !3273
  store i32 1, i32* %read_coding_spec, align 4, !dbg !3274, !tbaa !1043
  store i32 1, i32* %retval, !dbg !3275
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3275

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %line.addr, align 8, !dbg !3276, !tbaa !894
  %6 = load i64, i64* %size.addr, align 8, !dbg !3278, !tbaa !1484
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3279, !tbaa !894
  %call = call i32 @get_coding_spec(i8* %5, i8** %cs, i64 %6, %struct.tok_state* %7), !dbg !3280
  %tobool1 = icmp ne i32 %call, 0, !dbg !3280
  br i1 %tobool1, label %if.end.3, label %if.then.2, !dbg !3281

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !3282
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3282

if.end.3:                                         ; preds = %if.end
  %8 = load i8*, i8** %cs, align 8, !dbg !3283, !tbaa !894
  %tobool4 = icmp ne i8* %8, null, !dbg !3283
  br i1 %tobool4, label %if.end.35, label %if.then.5, !dbg !3284

if.then.5:                                        ; preds = %if.end.3
  %9 = bitcast i64* %i to i8*, !dbg !3285
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3285
  call void @llvm.dbg.declare(metadata i64* %i, metadata !607, metadata !898), !dbg !3286
  store i64 0, i64* %i, align 8, !dbg !3287, !tbaa !1484
  br label %for.cond, !dbg !3289

for.cond:                                         ; preds = %for.inc, %if.then.5
  %10 = load i64, i64* %i, align 8, !dbg !3290, !tbaa !1484
  %11 = load i64, i64* %size.addr, align 8, !dbg !3294, !tbaa !1484
  %cmp = icmp slt i64 %10, %11, !dbg !3295
  br i1 %cmp, label %for.body, label %for.end, !dbg !3296

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8, !dbg !3297, !tbaa !1484
  %13 = load i8*, i8** %line.addr, align 8, !dbg !3300, !tbaa !894
  %arrayidx = getelementptr i8, i8* %13, i64 %12, !dbg !3300
  %14 = load i8, i8* %arrayidx, align 1, !dbg !3300, !tbaa !1146
  %conv = sext i8 %14 to i32, !dbg !3300
  %cmp6 = icmp eq i32 %conv, 35, !dbg !3301
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false, !dbg !3302

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i64, i64* %i, align 8, !dbg !3303, !tbaa !1484
  %16 = load i8*, i8** %line.addr, align 8, !dbg !3305, !tbaa !894
  %arrayidx8 = getelementptr i8, i8* %16, i64 %15, !dbg !3305
  %17 = load i8, i8* %arrayidx8, align 1, !dbg !3305, !tbaa !1146
  %conv9 = sext i8 %17 to i32, !dbg !3305
  %cmp10 = icmp eq i32 %conv9, 10, !dbg !3306
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.12, !dbg !3307

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load i64, i64* %i, align 8, !dbg !3308, !tbaa !1484
  %19 = load i8*, i8** %line.addr, align 8, !dbg !3310, !tbaa !894
  %arrayidx13 = getelementptr i8, i8* %19, i64 %18, !dbg !3310
  %20 = load i8, i8* %arrayidx13, align 1, !dbg !3310, !tbaa !1146
  %conv14 = sext i8 %20 to i32, !dbg !3310
  %cmp15 = icmp eq i32 %conv14, 13, !dbg !3311
  br i1 %cmp15, label %if.then.17, label %if.end.18, !dbg !3312

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %for.body
  br label %for.end, !dbg !3313

if.end.18:                                        ; preds = %lor.lhs.false.12
  %21 = load i64, i64* %i, align 8, !dbg !3314, !tbaa !1484
  %22 = load i8*, i8** %line.addr, align 8, !dbg !3316, !tbaa !894
  %arrayidx19 = getelementptr i8, i8* %22, i64 %21, !dbg !3316
  %23 = load i8, i8* %arrayidx19, align 1, !dbg !3316, !tbaa !1146
  %conv20 = sext i8 %23 to i32, !dbg !3316
  %cmp21 = icmp ne i32 %conv20, 32, !dbg !3317
  br i1 %cmp21, label %land.lhs.true, label %if.end.34, !dbg !3318

land.lhs.true:                                    ; preds = %if.end.18
  %24 = load i64, i64* %i, align 8, !dbg !3319, !tbaa !1484
  %25 = load i8*, i8** %line.addr, align 8, !dbg !3321, !tbaa !894
  %arrayidx23 = getelementptr i8, i8* %25, i64 %24, !dbg !3321
  %26 = load i8, i8* %arrayidx23, align 1, !dbg !3321, !tbaa !1146
  %conv24 = sext i8 %26 to i32, !dbg !3321
  %cmp25 = icmp ne i32 %conv24, 9, !dbg !3322
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.34, !dbg !3323

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %i, align 8, !dbg !3324, !tbaa !1484
  %28 = load i8*, i8** %line.addr, align 8, !dbg !3326, !tbaa !894
  %arrayidx28 = getelementptr i8, i8* %28, i64 %27, !dbg !3326
  %29 = load i8, i8* %arrayidx28, align 1, !dbg !3326, !tbaa !1146
  %conv29 = sext i8 %29 to i32, !dbg !3326
  %cmp30 = icmp ne i32 %conv29, 12, !dbg !3327
  br i1 %cmp30, label %if.then.32, label %if.end.34, !dbg !3328

if.then.32:                                       ; preds = %land.lhs.true.27
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3329, !tbaa !894
  %read_coding_spec33 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 23, !dbg !3331
  store i32 1, i32* %read_coding_spec33, align 4, !dbg !3332, !tbaa !1043
  br label %for.end, !dbg !3333

if.end.34:                                        ; preds = %land.lhs.true.27, %land.lhs.true, %if.end.18
  br label %for.inc, !dbg !3334

for.inc:                                          ; preds = %if.end.34
  %31 = load i64, i64* %i, align 8, !dbg !3335, !tbaa !1484
  %inc = add i64 %31, 1, !dbg !3335
  store i64 %inc, i64* %i, align 8, !dbg !3335, !tbaa !1484
  br label %for.cond, !dbg !3336

for.end:                                          ; preds = %if.then.32, %if.then.17, %for.cond
  store i32 1, i32* %retval, !dbg !3337
  store i32 1, i32* %cleanup.dest.slot
  %32 = bitcast i64* %i to i8*, !dbg !3338
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3338
  br label %cleanup

if.end.35:                                        ; preds = %if.end.3
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3339, !tbaa !894
  %read_coding_spec36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 23, !dbg !3340
  store i32 1, i32* %read_coding_spec36, align 4, !dbg !3341, !tbaa !1043
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3342, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24, !dbg !3343
  %35 = load i8*, i8** %encoding, align 8, !dbg !3343, !tbaa !1051
  %cmp37 = icmp eq i8* %35, null, !dbg !3344
  br i1 %cmp37, label %if.then.39, label %if.else.95, !dbg !3345

if.then.39:                                       ; preds = %if.end.35
  %36 = bitcast i64* %__s1_len to i8*, !dbg !3346
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !3346
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !610, metadata !898), !dbg !3347
  %37 = bitcast i64* %__s2_len to i8*, !dbg !3346
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !3346
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !615, metadata !898), !dbg !3348
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true.40, label %cond.false, !dbg !3349

land.lhs.true.40:                                 ; preds = %if.then.39
  store i64 5, i64* %__s2_len, align 8, !dbg !3350, !tbaa !1484
  %38 = load i64, i64* %__s2_len, align 8, !dbg !3352, !tbaa !1484
  %cmp41 = icmp ult i64 %38, 4, !dbg !3353
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !3354

cond.true:                                        ; preds = %land.lhs.true.40
  %39 = bitcast i8** %__s1 to i8*, !dbg !3355
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !3355
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !616, metadata !898), !dbg !3357
  %40 = load i8*, i8** %cs, align 8, !dbg !3358, !tbaa !894
  store i8* %40, i8** %__s1, align 8, !dbg !3357, !tbaa !894
  %41 = bitcast i32* %__result to i8*, !dbg !3359
  call void @llvm.lifetime.start(i64 4, i8* %41) #2, !dbg !3359
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !618, metadata !898), !dbg !3360
  %42 = load i8*, i8** %__s1, align 8, !dbg !3361, !tbaa !894
  %arrayidx45 = getelementptr i8, i8* %42, i64 0, !dbg !3361
  %43 = load i8, i8* %arrayidx45, align 1, !dbg !3361, !tbaa !1146
  %conv46 = zext i8 %43 to i32, !dbg !3361
  %44 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), align 1, !dbg !3362, !tbaa !1146
  %conv47 = zext i8 %44 to i32, !dbg !3362
  %sub = sub i32 %conv46, %conv47, !dbg !3363
  store i32 %sub, i32* %__result, align 4, !dbg !3360, !tbaa !900
  %45 = load i64, i64* %__s2_len, align 8, !dbg !3364, !tbaa !1484
  %cmp48 = icmp ugt i64 %45, 0, !dbg !3366
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.80, !dbg !3367

land.lhs.true.50:                                 ; preds = %cond.true
  %46 = load i32, i32* %__result, align 4, !dbg !3368, !tbaa !900
  %cmp51 = icmp eq i32 %46, 0, !dbg !3370
  br i1 %cmp51, label %if.then.53, label %if.end.80, !dbg !3371

if.then.53:                                       ; preds = %land.lhs.true.50
  %47 = load i8*, i8** %__s1, align 8, !dbg !3372, !tbaa !894
  %arrayidx54 = getelementptr i8, i8* %47, i64 1, !dbg !3372
  %48 = load i8, i8* %arrayidx54, align 1, !dbg !3372, !tbaa !1146
  %conv55 = zext i8 %48 to i32, !dbg !3372
  %49 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1), align 1, !dbg !3375, !tbaa !1146
  %conv56 = zext i8 %49 to i32, !dbg !3375
  %sub57 = sub i32 %conv55, %conv56, !dbg !3376
  store i32 %sub57, i32* %__result, align 4, !dbg !3377, !tbaa !900
  %50 = load i64, i64* %__s2_len, align 8, !dbg !3378, !tbaa !1484
  %cmp58 = icmp ugt i64 %50, 1, !dbg !3380
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.79, !dbg !3381

land.lhs.true.60:                                 ; preds = %if.then.53
  %51 = load i32, i32* %__result, align 4, !dbg !3382, !tbaa !900
  %cmp61 = icmp eq i32 %51, 0, !dbg !3384
  br i1 %cmp61, label %if.then.63, label %if.end.79, !dbg !3385

if.then.63:                                       ; preds = %land.lhs.true.60
  %52 = load i8*, i8** %__s1, align 8, !dbg !3386, !tbaa !894
  %arrayidx64 = getelementptr i8, i8* %52, i64 2, !dbg !3386
  %53 = load i8, i8* %arrayidx64, align 1, !dbg !3386, !tbaa !1146
  %conv65 = zext i8 %53 to i32, !dbg !3386
  %54 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 2), align 1, !dbg !3389, !tbaa !1146
  %conv66 = zext i8 %54 to i32, !dbg !3389
  %sub67 = sub i32 %conv65, %conv66, !dbg !3390
  store i32 %sub67, i32* %__result, align 4, !dbg !3391, !tbaa !900
  %55 = load i64, i64* %__s2_len, align 8, !dbg !3392, !tbaa !1484
  %cmp68 = icmp ugt i64 %55, 2, !dbg !3394
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.78, !dbg !3395

land.lhs.true.70:                                 ; preds = %if.then.63
  %56 = load i32, i32* %__result, align 4, !dbg !3396, !tbaa !900
  %cmp71 = icmp eq i32 %56, 0, !dbg !3398
  br i1 %cmp71, label %if.then.73, label %if.end.78, !dbg !3399

if.then.73:                                       ; preds = %land.lhs.true.70
  %57 = load i8*, i8** %__s1, align 8, !dbg !3400, !tbaa !894
  %arrayidx74 = getelementptr i8, i8* %57, i64 3, !dbg !3400
  %58 = load i8, i8* %arrayidx74, align 1, !dbg !3400, !tbaa !1146
  %conv75 = zext i8 %58 to i32, !dbg !3400
  %59 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 3), align 1, !dbg !3402, !tbaa !1146
  %conv76 = zext i8 %59 to i32, !dbg !3402
  %sub77 = sub i32 %conv75, %conv76, !dbg !3403
  store i32 %sub77, i32* %__result, align 4, !dbg !3404, !tbaa !900
  br label %if.end.78, !dbg !3405

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.70, %if.then.63
  br label %if.end.79, !dbg !3406

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.60, %if.then.53
  br label %if.end.80, !dbg !3410

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.50, %cond.true
  %60 = load i32, i32* %__result, align 4, !dbg !3414, !tbaa !900
  store i32 %60, i32* %tmp81, !dbg !3418, !tbaa !900
  %61 = bitcast i32* %__result to i8*, !dbg !3419
  call void @llvm.lifetime.end(i64 4, i8* %61) #2, !dbg !3419
  %62 = bitcast i8** %__s1 to i8*, !dbg !3419
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !3419
  %63 = load i32, i32* %tmp81, !dbg !3420, !tbaa !900
  br label %cond.end, !dbg !3354

cond.false:                                       ; preds = %land.lhs.true.40, %if.then.39
  %64 = load i8*, i8** %cs, align 8, !dbg !3421, !tbaa !894
  %call82 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #2, !dbg !3424
  br label %cond.end, !dbg !3354

cond.end:                                         ; preds = %cond.false, %if.end.80
  %cond = phi i32 [ %63, %if.end.80 ], [ %call82, %cond.false ], !dbg !3354
  store i32 %cond, i32* %tmp, !dbg !3425, !tbaa !900
  %65 = bitcast i64* %__s2_len to i8*, !dbg !3428
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !3428
  %66 = bitcast i64* %__s1_len to i8*, !dbg !3428
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3428
  %67 = load i32, i32* %tmp, !dbg !3429, !tbaa !900
  %cmp83 = icmp eq i32 %67, 0, !dbg !3430
  br i1 %cmp83, label %if.then.85, label %if.else, !dbg !3431

if.then.85:                                       ; preds = %cond.end
  %68 = load i8*, i8** %cs, align 8, !dbg !3432, !tbaa !894
  %69 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3434, !tbaa !894
  %encoding86 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %69, i32 0, i32 24, !dbg !3435
  store i8* %68, i8** %encoding86, align 8, !dbg !3436, !tbaa !1051
  br label %if.end.94, !dbg !3437

if.else:                                          ; preds = %cond.end
  %70 = load i32 (%struct.tok_state*, i8*)*, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !dbg !3438, !tbaa !894
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3440, !tbaa !894
  %72 = load i8*, i8** %cs, align 8, !dbg !3441, !tbaa !894
  %call87 = call i32 %70(%struct.tok_state* %71, i8* %72), !dbg !3438
  store i32 %call87, i32* %r, align 4, !dbg !3442, !tbaa !900
  %73 = load i32, i32* %r, align 4, !dbg !3443, !tbaa !900
  %tobool88 = icmp ne i32 %73, 0, !dbg !3443
  br i1 %tobool88, label %if.then.89, label %if.else.91, !dbg !3445

if.then.89:                                       ; preds = %if.else
  %74 = load i8*, i8** %cs, align 8, !dbg !3446, !tbaa !894
  %75 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3448, !tbaa !894
  %encoding90 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %75, i32 0, i32 24, !dbg !3449
  store i8* %74, i8** %encoding90, align 8, !dbg !3450, !tbaa !1051
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3451, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %76, i32 0, i32 21, !dbg !3452
  store i32 2, i32* %decoding_state, align 4, !dbg !3453, !tbaa !1035
  br label %if.end.93, !dbg !3454

if.else.91:                                       ; preds = %if.else
  %77 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !3455, !tbaa !894
  %78 = load i8*, i8** %cs, align 8, !dbg !3457, !tbaa !894
  %call92 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8* %78), !dbg !3458
  %79 = load i8*, i8** %cs, align 8, !dbg !3459, !tbaa !894
  call void @PyMem_Free(i8* %79), !dbg !3460
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.85
  br label %if.end.109, !dbg !3461

if.else.95:                                       ; preds = %if.end.35
  %80 = bitcast i64* %__s1_len97 to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !3462
  call void @llvm.dbg.declare(metadata i64* %__s1_len97, metadata !619, metadata !898), !dbg !3463
  %81 = bitcast i64* %__s2_len99 to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !3462
  call void @llvm.dbg.declare(metadata i64* %__s2_len99, metadata !622, metadata !898), !dbg !3464
  %82 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3465, !tbaa !894
  %encoding101 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %82, i32 0, i32 24, !dbg !3466
  %83 = load i8*, i8** %encoding101, align 8, !dbg !3466, !tbaa !1051
  %84 = load i8*, i8** %cs, align 8, !dbg !3467, !tbaa !894
  %call102 = call i32 @strcmp(i8* %83, i8* %84) #2, !dbg !3468
  store i32 %call102, i32* %tmp100, !dbg !3462, !tbaa !900
  %85 = bitcast i64* %__s2_len99 to i8*, !dbg !3469
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !3469
  %86 = bitcast i64* %__s1_len97 to i8*, !dbg !3469
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !3469
  %87 = load i32, i32* %tmp100, !dbg !3470, !tbaa !900
  %cmp103 = icmp eq i32 %87, 0, !dbg !3471
  %conv104 = zext i1 %cmp103 to i32, !dbg !3471
  store i32 %conv104, i32* %r, align 4, !dbg !3472, !tbaa !900
  %88 = load i32, i32* %r, align 4, !dbg !3473, !tbaa !900
  %tobool105 = icmp ne i32 %88, 0, !dbg !3473
  br i1 %tobool105, label %if.end.108, label %if.then.106, !dbg !3475

if.then.106:                                      ; preds = %if.else.95
  %89 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !3476, !tbaa !894
  %90 = load i8*, i8** %cs, align 8, !dbg !3477, !tbaa !894
  %call107 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8* %90), !dbg !3478
  br label %if.end.108, !dbg !3478

if.end.108:                                       ; preds = %if.then.106, %if.else.95
  %91 = load i8*, i8** %cs, align 8, !dbg !3479, !tbaa !894
  call void @PyMem_Free(i8* %91), !dbg !3480
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.94
  %92 = load i32, i32* %r, align 4, !dbg !3481, !tbaa !900
  store i32 %92, i32* %retval, !dbg !3482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3482

cleanup:                                          ; preds = %if.end.109, %for.end, %if.then.2, %if.then
  %93 = bitcast i32* %r to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 4, i8* %93) #2, !dbg !3483
  %94 = bitcast i8** %cs to i8*, !dbg !3483
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !3483
  %95 = load i32, i32* %retval, !dbg !3483
  ret i32 %95, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal i8* @new_string(i8* %s, i64 %len, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %result = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !567, metadata !898), !dbg !3484
  store i64 %len, i64* %len.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !568, metadata !898), !dbg !3485
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !569, metadata !898), !dbg !3486
  %0 = bitcast i8** %result to i8*, !dbg !3487
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3487
  call void @llvm.dbg.declare(metadata i8** %result, metadata !570, metadata !898), !dbg !3488
  %1 = load i64, i64* %len.addr, align 8, !dbg !3489, !tbaa !1484
  %add = add i64 %1, 1, !dbg !3490
  %call = call i8* @PyMem_Malloc(i64 %add), !dbg !3491
  store i8* %call, i8** %result, align 8, !dbg !3488, !tbaa !894
  %2 = load i8*, i8** %result, align 8, !dbg !3492, !tbaa !894
  %tobool = icmp ne i8* %2, null, !dbg !3492
  br i1 %tobool, label %if.end, label %if.then, !dbg !3494

if.then:                                          ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3495, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 5, !dbg !3497
  store i32 15, i32* %done, align 4, !dbg !3498, !tbaa !973
  store i8* null, i8** %retval, !dbg !3499
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3499

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %result, align 8, !dbg !3500, !tbaa !894
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3501, !tbaa !894
  %6 = load i64, i64* %len.addr, align 8, !dbg !3502, !tbaa !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %6, i32 1, i1 false), !dbg !3503
  %7 = load i64, i64* %len.addr, align 8, !dbg !3504, !tbaa !1484
  %8 = load i8*, i8** %result, align 8, !dbg !3505, !tbaa !894
  %arrayidx = getelementptr i8, i8* %8, i64 %7, !dbg !3505
  store i8 0, i8* %arrayidx, align 1, !dbg !3506, !tbaa !1146
  %9 = load i8*, i8** %result, align 8, !dbg !3507, !tbaa !894
  store i8* %9, i8** %retval, !dbg !3508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3508

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i8** %result to i8*, !dbg !3509
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3509
  %11 = load i8*, i8** %retval, !dbg !3509
  ret i8* %11, !dbg !3509
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #3

declare %struct._object* @PyUnicode_AsUTF8String(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_coding_spec(i8* %s, i8** %spec, i64 %size, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %spec.addr = alloca i8**, align 8
  %size.addr = alloca i64, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %t = alloca i8*, align 8
  %begin = alloca i8*, align 8
  %r = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !627, metadata !898), !dbg !3510
  store i8** %spec, i8*** %spec.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %spec.addr, metadata !628, metadata !898), !dbg !3511
  store i64 %size, i64* %size.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !629, metadata !898), !dbg !3512
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !630, metadata !898), !dbg !3513
  %0 = bitcast i64* %i to i8*, !dbg !3514
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3514
  call void @llvm.dbg.declare(metadata i64* %i, metadata !631, metadata !898), !dbg !3515
  %1 = load i8**, i8*** %spec.addr, align 8, !dbg !3516, !tbaa !894
  store i8* null, i8** %1, align 8, !dbg !3517, !tbaa !894
  store i64 0, i64* %i, align 8, !dbg !3518, !tbaa !1484
  br label %for.cond, !dbg !3520

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !dbg !3521, !tbaa !1484
  %3 = load i64, i64* %size.addr, align 8, !dbg !3525, !tbaa !1484
  %sub = sub i64 %3, 6, !dbg !3526
  %cmp = icmp slt i64 %2, %sub, !dbg !3527
  br i1 %cmp, label %for.body, label %for.end, !dbg !3528

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8, !dbg !3529, !tbaa !1484
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3532, !tbaa !894
  %arrayidx = getelementptr i8, i8* %5, i64 %4, !dbg !3532
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3532, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !3532
  %cmp1 = icmp eq i32 %conv, 35, !dbg !3533
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3534

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3535

if.end:                                           ; preds = %for.body
  %7 = load i64, i64* %i, align 8, !dbg !3536, !tbaa !1484
  %8 = load i8*, i8** %s.addr, align 8, !dbg !3538, !tbaa !894
  %arrayidx3 = getelementptr i8, i8* %8, i64 %7, !dbg !3538
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !3538, !tbaa !1146
  %conv4 = sext i8 %9 to i32, !dbg !3538
  %cmp5 = icmp ne i32 %conv4, 32, !dbg !3539
  br i1 %cmp5, label %land.lhs.true, label %if.end.17, !dbg !3540

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, i64* %i, align 8, !dbg !3541, !tbaa !1484
  %11 = load i8*, i8** %s.addr, align 8, !dbg !3543, !tbaa !894
  %arrayidx7 = getelementptr i8, i8* %11, i64 %10, !dbg !3543
  %12 = load i8, i8* %arrayidx7, align 1, !dbg !3543, !tbaa !1146
  %conv8 = sext i8 %12 to i32, !dbg !3543
  %cmp9 = icmp ne i32 %conv8, 9, !dbg !3544
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.17, !dbg !3545

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %13 = load i64, i64* %i, align 8, !dbg !3546, !tbaa !1484
  %14 = load i8*, i8** %s.addr, align 8, !dbg !3548, !tbaa !894
  %arrayidx12 = getelementptr i8, i8* %14, i64 %13, !dbg !3548
  %15 = load i8, i8* %arrayidx12, align 1, !dbg !3548, !tbaa !1146
  %conv13 = sext i8 %15 to i32, !dbg !3548
  %cmp14 = icmp ne i32 %conv13, 12, !dbg !3549
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !3550

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval, !dbg !3551
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !3551

if.end.17:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  br label %for.inc, !dbg !3552

for.inc:                                          ; preds = %if.end.17
  %16 = load i64, i64* %i, align 8, !dbg !3553, !tbaa !1484
  %inc = add i64 %16, 1, !dbg !3553
  store i64 %inc, i64* %i, align 8, !dbg !3553, !tbaa !1484
  br label %for.cond, !dbg !3554

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond.18, !dbg !3555

for.cond.18:                                      ; preds = %for.inc.93, %for.end
  %17 = load i64, i64* %i, align 8, !dbg !3556, !tbaa !1484
  %18 = load i64, i64* %size.addr, align 8, !dbg !3559, !tbaa !1484
  %sub19 = sub i64 %18, 6, !dbg !3560
  %cmp20 = icmp slt i64 %17, %sub19, !dbg !3561
  br i1 %cmp20, label %for.body.22, label %for.end.95, !dbg !3562

for.body.22:                                      ; preds = %for.cond.18
  %19 = bitcast i8** %t to i8*, !dbg !3563
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !3563
  call void @llvm.dbg.declare(metadata i8** %t, metadata !632, metadata !898), !dbg !3564
  %20 = load i8*, i8** %s.addr, align 8, !dbg !3565, !tbaa !894
  %21 = load i64, i64* %i, align 8, !dbg !3566, !tbaa !1484
  %add.ptr = getelementptr i8, i8* %20, i64 %21, !dbg !3567
  store i8* %add.ptr, i8** %t, align 8, !dbg !3564, !tbaa !894
  %22 = load i8*, i8** %t, align 8, !dbg !3568, !tbaa !894
  %call = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i64 6) #9, !dbg !3569
  %cmp23 = icmp eq i32 %call, 0, !dbg !3570
  br i1 %cmp23, label %if.then.25, label %if.end.89, !dbg !3571

if.then.25:                                       ; preds = %for.body.22
  %23 = bitcast i8** %begin to i8*, !dbg !3572
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3572
  call void @llvm.dbg.declare(metadata i8** %begin, metadata !636, metadata !898), !dbg !3573
  store i8* null, i8** %begin, align 8, !dbg !3573, !tbaa !894
  %24 = load i8*, i8** %t, align 8, !dbg !3574, !tbaa !894
  %add.ptr26 = getelementptr i8, i8* %24, i64 6, !dbg !3574
  store i8* %add.ptr26, i8** %t, align 8, !dbg !3574, !tbaa !894
  %25 = load i8*, i8** %t, align 8, !dbg !3575, !tbaa !894
  %arrayidx27 = getelementptr i8, i8* %25, i64 0, !dbg !3575
  %26 = load i8, i8* %arrayidx27, align 1, !dbg !3575, !tbaa !1146
  %conv28 = sext i8 %26 to i32, !dbg !3575
  %cmp29 = icmp ne i32 %conv28, 58, !dbg !3577
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.37, !dbg !3578

land.lhs.true.31:                                 ; preds = %if.then.25
  %27 = load i8*, i8** %t, align 8, !dbg !3579, !tbaa !894
  %arrayidx32 = getelementptr i8, i8* %27, i64 0, !dbg !3579
  %28 = load i8, i8* %arrayidx32, align 1, !dbg !3579, !tbaa !1146
  %conv33 = sext i8 %28 to i32, !dbg !3579
  %cmp34 = icmp ne i32 %conv33, 61, !dbg !3581
  br i1 %cmp34, label %if.then.36, label %if.end.37, !dbg !3582

if.then.36:                                       ; preds = %land.lhs.true.31
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !3583

if.end.37:                                        ; preds = %land.lhs.true.31, %if.then.25
  br label %do.body, !dbg !3584

do.body:                                          ; preds = %lor.end, %if.end.37
  %29 = load i8*, i8** %t, align 8, !dbg !3585, !tbaa !894
  %incdec.ptr = getelementptr i8, i8* %29, i32 1, !dbg !3585
  store i8* %incdec.ptr, i8** %t, align 8, !dbg !3585, !tbaa !894
  br label %do.cond, !dbg !3587

do.cond:                                          ; preds = %do.body
  %30 = load i8*, i8** %t, align 8, !dbg !3588, !tbaa !894
  %arrayidx38 = getelementptr i8, i8* %30, i64 0, !dbg !3588
  %31 = load i8, i8* %arrayidx38, align 1, !dbg !3588, !tbaa !1146
  %conv39 = sext i8 %31 to i32, !dbg !3588
  %cmp40 = icmp eq i32 %conv39, 32, !dbg !3590
  br i1 %cmp40, label %lor.end, label %lor.rhs, !dbg !3591

lor.rhs:                                          ; preds = %do.cond
  %32 = load i8*, i8** %t, align 8, !dbg !3592, !tbaa !894
  %arrayidx42 = getelementptr i8, i8* %32, i64 0, !dbg !3592
  %33 = load i8, i8* %arrayidx42, align 1, !dbg !3592, !tbaa !1146
  %conv43 = sext i8 %33 to i32, !dbg !3592
  %cmp44 = icmp eq i32 %conv43, 9, !dbg !3594
  br label %lor.end, !dbg !3591

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %34 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %34, label %do.body, label %do.end, !dbg !3595

do.end:                                           ; preds = %lor.end
  %35 = load i8*, i8** %t, align 8, !dbg !3598, !tbaa !894
  store i8* %35, i8** %begin, align 8, !dbg !3599, !tbaa !894
  br label %while.cond, !dbg !3600

while.cond:                                       ; preds = %while.body, %do.end
  %36 = load i8*, i8** %t, align 8, !dbg !3601, !tbaa !894
  %arrayidx46 = getelementptr i8, i8* %36, i64 0, !dbg !3601
  %37 = load i8, i8* %arrayidx46, align 1, !dbg !3601, !tbaa !1146
  %conv47 = sext i8 %37 to i32, !dbg !3603
  %and = and i32 %conv47, 255, !dbg !3604
  %conv48 = trunc i32 %and to i8, !dbg !3605
  %idxprom = zext i8 %conv48 to i64, !dbg !3606
  %arrayidx49 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !3606
  %38 = load i32, i32* %arrayidx49, align 4, !dbg !3606, !tbaa !900
  %and50 = and i32 %38, 7, !dbg !3607
  %tobool = icmp ne i32 %and50, 0, !dbg !3607
  br i1 %tobool, label %lor.end.65, label %lor.lhs.false, !dbg !3608

lor.lhs.false:                                    ; preds = %while.cond
  %39 = load i8*, i8** %t, align 8, !dbg !3609, !tbaa !894
  %arrayidx51 = getelementptr i8, i8* %39, i64 0, !dbg !3609
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !3609, !tbaa !1146
  %conv52 = sext i8 %40 to i32, !dbg !3609
  %cmp53 = icmp eq i32 %conv52, 45, !dbg !3610
  br i1 %cmp53, label %lor.end.65, label %lor.lhs.false.55, !dbg !3611

lor.lhs.false.55:                                 ; preds = %lor.lhs.false
  %41 = load i8*, i8** %t, align 8, !dbg !3612, !tbaa !894
  %arrayidx56 = getelementptr i8, i8* %41, i64 0, !dbg !3612
  %42 = load i8, i8* %arrayidx56, align 1, !dbg !3612, !tbaa !1146
  %conv57 = sext i8 %42 to i32, !dbg !3612
  %cmp58 = icmp eq i32 %conv57, 95, !dbg !3613
  br i1 %cmp58, label %lor.end.65, label %lor.rhs.60, !dbg !3614

lor.rhs.60:                                       ; preds = %lor.lhs.false.55
  %43 = load i8*, i8** %t, align 8, !dbg !3615, !tbaa !894
  %arrayidx61 = getelementptr i8, i8* %43, i64 0, !dbg !3615
  %44 = load i8, i8* %arrayidx61, align 1, !dbg !3615, !tbaa !1146
  %conv62 = sext i8 %44 to i32, !dbg !3615
  %cmp63 = icmp eq i32 %conv62, 46, !dbg !3617
  br label %lor.end.65, !dbg !3614

lor.end.65:                                       ; preds = %lor.rhs.60, %lor.lhs.false.55, %lor.lhs.false, %while.cond
  %45 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp63, %lor.rhs.60 ]
  br i1 %45, label %while.body, label %while.end, !dbg !3618

while.body:                                       ; preds = %lor.end.65
  %46 = load i8*, i8** %t, align 8, !dbg !3619, !tbaa !894
  %incdec.ptr66 = getelementptr i8, i8* %46, i32 1, !dbg !3619
  store i8* %incdec.ptr66, i8** %t, align 8, !dbg !3619, !tbaa !894
  br label %while.cond, !dbg !3600

while.end:                                        ; preds = %lor.end.65
  %47 = load i8*, i8** %begin, align 8, !dbg !3620, !tbaa !894
  %48 = load i8*, i8** %t, align 8, !dbg !3621, !tbaa !894
  %cmp67 = icmp ult i8* %47, %48, !dbg !3622
  br i1 %cmp67, label %if.then.69, label %if.end.85, !dbg !3623

if.then.69:                                       ; preds = %while.end
  %49 = bitcast i8** %r to i8*, !dbg !3624
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3624
  call void @llvm.dbg.declare(metadata i8** %r, metadata !639, metadata !898), !dbg !3625
  %50 = load i8*, i8** %begin, align 8, !dbg !3626, !tbaa !894
  %51 = load i8*, i8** %t, align 8, !dbg !3627, !tbaa !894
  %52 = load i8*, i8** %begin, align 8, !dbg !3628, !tbaa !894
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64, !dbg !3629
  %sub.ptr.rhs.cast = ptrtoint i8* %52 to i64, !dbg !3629
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3629
  %53 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3630, !tbaa !894
  %call70 = call i8* @new_string(i8* %50, i64 %sub.ptr.sub, %struct.tok_state* %53), !dbg !3631
  store i8* %call70, i8** %r, align 8, !dbg !3625, !tbaa !894
  %54 = bitcast i8** %q to i8*, !dbg !3632
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !3632
  call void @llvm.dbg.declare(metadata i8** %q, metadata !642, metadata !898), !dbg !3633
  %55 = load i8*, i8** %r, align 8, !dbg !3634, !tbaa !894
  %tobool71 = icmp ne i8* %55, null, !dbg !3634
  br i1 %tobool71, label %if.end.73, label %if.then.72, !dbg !3636

if.then.72:                                       ; preds = %if.then.69
  store i32 0, i32* %retval, !dbg !3637
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3637

if.end.73:                                        ; preds = %if.then.69
  %56 = load i8*, i8** %r, align 8, !dbg !3638, !tbaa !894
  %call74 = call i8* @get_normal_name(i8* %56), !dbg !3639
  store i8* %call74, i8** %q, align 8, !dbg !3640, !tbaa !894
  %57 = load i8*, i8** %r, align 8, !dbg !3641, !tbaa !894
  %58 = load i8*, i8** %q, align 8, !dbg !3643, !tbaa !894
  %cmp75 = icmp ne i8* %57, %58, !dbg !3644
  br i1 %cmp75, label %if.then.77, label %if.end.83, !dbg !3645

if.then.77:                                       ; preds = %if.end.73
  %59 = load i8*, i8** %r, align 8, !dbg !3646, !tbaa !894
  call void @PyMem_Free(i8* %59), !dbg !3648
  %60 = load i8*, i8** %q, align 8, !dbg !3649, !tbaa !894
  %61 = load i8*, i8** %q, align 8, !dbg !3650, !tbaa !894
  %call78 = call i64 @strlen(i8* %61) #9, !dbg !3651
  %62 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3652, !tbaa !894
  %call79 = call i8* @new_string(i8* %60, i64 %call78, %struct.tok_state* %62), !dbg !3653
  store i8* %call79, i8** %r, align 8, !dbg !3654, !tbaa !894
  %63 = load i8*, i8** %r, align 8, !dbg !3655, !tbaa !894
  %tobool80 = icmp ne i8* %63, null, !dbg !3655
  br i1 %tobool80, label %if.end.82, label %if.then.81, !dbg !3657

if.then.81:                                       ; preds = %if.then.77
  store i32 0, i32* %retval, !dbg !3658
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3658

if.end.82:                                        ; preds = %if.then.77
  br label %if.end.83, !dbg !3659

if.end.83:                                        ; preds = %if.end.82, %if.end.73
  %64 = load i8*, i8** %r, align 8, !dbg !3660, !tbaa !894
  %65 = load i8**, i8*** %spec.addr, align 8, !dbg !3661, !tbaa !894
  store i8* %64, i8** %65, align 8, !dbg !3662, !tbaa !894
  store i32 0, i32* %cleanup.dest.slot, !dbg !3663
  br label %cleanup, !dbg !3663

cleanup:                                          ; preds = %if.end.83, %if.then.81, %if.then.72
  %66 = bitcast i8** %q to i8*, !dbg !3664
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3664
  %67 = bitcast i8** %r to i8*, !dbg !3664
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !3664
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.85, !dbg !3666

if.end.85:                                        ; preds = %cleanup.cont, %while.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !3667
  br label %cleanup.86, !dbg !3667

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.86

cleanup.86:                                       ; preds = %NewDefault, %if.end.85, %if.then.36
  %68 = bitcast i8** %begin to i8*, !dbg !3668
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3668
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.86
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.87, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.88, label %NewDefault.1

cleanup.cont.88:                                  ; preds = %LeafBlock.2
  br label %if.end.89, !dbg !3670

if.end.89:                                        ; preds = %cleanup.cont.88, %for.body.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !3671
  br label %cleanup.90, !dbg !3671

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.90

cleanup.90:                                       ; preds = %NewDefault.1, %if.end.89
  %69 = bitcast i8** %t to i8*, !dbg !3672
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !3672
  %cleanup.dest.91 = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.90
  %Pivot = icmp slt i32 %cleanup.dest.91, 7
  br i1 %Pivot, label %LeafBlock.5, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock
  %SwitchLeaf8 = icmp eq i32 %cleanup.dest.91, 7
  br i1 %SwitchLeaf8, label %for.inc.93, label %NewDefault.4

LeafBlock.5:                                      ; preds = %NodeBlock
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.91, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.92, label %NewDefault.4

cleanup.cont.92:                                  ; preds = %LeafBlock.5
  br label %for.inc.93, !dbg !3673

for.inc.93:                                       ; preds = %LeafBlock.7, %cleanup.cont.92
  %70 = load i64, i64* %i, align 8, !dbg !3674, !tbaa !1484
  %inc94 = add i64 %70, 1, !dbg !3674
  store i64 %inc94, i64* %i, align 8, !dbg !3674, !tbaa !1484
  br label %for.cond.18, !dbg !3675

for.end.95:                                       ; preds = %for.cond.18
  store i32 1, i32* %retval, !dbg !3676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !3676

NewDefault.4:                                     ; preds = %LeafBlock.7, %LeafBlock.5
  br label %cleanup.96

cleanup.96:                                       ; preds = %NewDefault.4, %for.end.95, %if.then.16
  %71 = bitcast i64* %i to i8*, !dbg !3677
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !3677
  %72 = load i32, i32* %retval, !dbg !3677
  ret i32 %72, !dbg !3677
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i8* @get_normal_name(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %buf = alloca [13 x i8], align 1
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %__s1_len70 = alloca i64, align 8
  %__s2_len72 = alloca i64, align 8
  %tmp73 = alloca i32, align 4
  %__s179 = alloca i8*, align 8
  %__result82 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %__s1_len130 = alloca i64, align 8
  %__s2_len132 = alloca i64, align 8
  %tmp133 = alloca i32, align 4
  %__s1139 = alloca i8*, align 8
  %__result142 = alloca i32, align 4
  %tmp180 = alloca i32, align 4
  %__s1_len190 = alloca i64, align 8
  %__s2_len192 = alloca i64, align 8
  %tmp193 = alloca i32, align 4
  %__s1199 = alloca i8*, align 8
  %__result202 = alloca i32, align 4
  %tmp240 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !647, metadata !898), !dbg !3678
  %0 = bitcast [13 x i8]* %buf to i8*, !dbg !3679
  call void @llvm.lifetime.start(i64 13, i8* %0) #2, !dbg !3679
  call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !648, metadata !898), !dbg !3680
  %1 = bitcast i32* %i to i8*, !dbg !3681
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3681
  call void @llvm.dbg.declare(metadata i32* %i, metadata !652, metadata !898), !dbg !3682
  store i32 0, i32* %i, align 4, !dbg !3683, !tbaa !900
  br label %for.cond, !dbg !3684

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3685, !tbaa !900
  %cmp = icmp slt i32 %2, 12, !dbg !3688
  br i1 %cmp, label %for.body, label %for.end, !dbg !3689

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %c to i8*, !dbg !3690
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3690
  call void @llvm.dbg.declare(metadata i32* %c, metadata !653, metadata !898), !dbg !3691
  %4 = load i32, i32* %i, align 4, !dbg !3692, !tbaa !900
  %idxprom = sext i32 %4 to i64, !dbg !3693
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3693, !tbaa !894
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !3693
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3693, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !3693
  store i32 %conv, i32* %c, align 4, !dbg !3691, !tbaa !900
  %7 = load i32, i32* %c, align 4, !dbg !3694, !tbaa !900
  %cmp1 = icmp eq i32 %7, 0, !dbg !3695
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3696

if.then:                                          ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3697

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %c, align 4, !dbg !3698, !tbaa !900
  %cmp3 = icmp eq i32 %8, 95, !dbg !3699
  br i1 %cmp3, label %if.then.5, label %if.else.8, !dbg !3700

if.then.5:                                        ; preds = %if.else
  %9 = load i32, i32* %i, align 4, !dbg !3701, !tbaa !900
  %idxprom6 = sext i32 %9 to i64, !dbg !3702
  %arrayidx7 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom6, !dbg !3702
  store i8 45, i8* %arrayidx7, align 1, !dbg !3703, !tbaa !1146
  br label %if.end, !dbg !3702

if.else.8:                                        ; preds = %if.else
  %10 = bitcast i32* %__res to i8*, !dbg !3704
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !3704
  call void @llvm.dbg.declare(metadata i32* %__res, metadata !657, metadata !898), !dbg !3705
  %11 = load i32, i32* %c, align 4, !dbg !3706, !tbaa !900
  %call = call i32 @tolower(i32 %11) #2, !dbg !3710
  store i32 %call, i32* %__res, align 4, !dbg !3711, !tbaa !900
  %12 = load i32, i32* %__res, align 4, !dbg !3712, !tbaa !900
  store i32 %12, i32* %tmp, !dbg !3713, !tbaa !900
  %13 = bitcast i32* %__res to i8*, !dbg !3714
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !3714
  %14 = load i32, i32* %tmp, !dbg !3715, !tbaa !900
  %conv9 = trunc i32 %14 to i8, !dbg !3716
  %15 = load i32, i32* %i, align 4, !dbg !3717, !tbaa !900
  %idxprom10 = sext i32 %15 to i64, !dbg !3718
  %arrayidx11 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom10, !dbg !3718
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !3719, !tbaa !1146
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !3720
  br label %cleanup, !dbg !3720

cleanup:                                          ; preds = %if.end.12, %if.then
  %16 = bitcast i32* %c to i8*, !dbg !3721
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !3721
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 2
  br i1 %SwitchLeaf, label %for.end, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %for.inc, !dbg !3722

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, i32* %i, align 4, !dbg !3723, !tbaa !900
  %inc = add i32 %17, 1, !dbg !3723
  store i32 %inc, i32* %i, align 4, !dbg !3723, !tbaa !900
  br label %for.cond, !dbg !3724

for.end:                                          ; preds = %LeafBlock, %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !3725, !tbaa !900
  %idxprom13 = sext i32 %18 to i64, !dbg !3726
  %arrayidx14 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom13, !dbg !3726
  store i8 0, i8* %arrayidx14, align 1, !dbg !3727, !tbaa !1146
  %19 = bitcast i64* %__s1_len to i8*, !dbg !3728
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !3728
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !661, metadata !898), !dbg !3729
  %20 = bitcast i64* %__s2_len to i8*, !dbg !3728
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3728
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !664, metadata !898), !dbg !3730
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !3731

land.lhs.true:                                    ; preds = %for.end
  store i64 5, i64* %__s2_len, align 8, !dbg !3732, !tbaa !1484
  %21 = load i64, i64* %__s2_len, align 8, !dbg !3734, !tbaa !1484
  %cmp18 = icmp ult i64 %21, 4, !dbg !3735
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !3736

cond.true:                                        ; preds = %land.lhs.true
  %22 = bitcast i8** %__s1 to i8*, !dbg !3737
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !3737
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !665, metadata !898), !dbg !3739
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3740
  store i8* %arraydecay, i8** %__s1, align 8, !dbg !3739, !tbaa !894
  %23 = bitcast i32* %__result to i8*, !dbg !3741
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !3741
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !667, metadata !898), !dbg !3742
  %24 = load i8*, i8** %__s1, align 8, !dbg !3743, !tbaa !894
  %arrayidx22 = getelementptr i8, i8* %24, i64 0, !dbg !3743
  %25 = load i8, i8* %arrayidx22, align 1, !dbg !3743, !tbaa !1146
  %conv23 = zext i8 %25 to i32, !dbg !3743
  %26 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), align 1, !dbg !3744, !tbaa !1146
  %conv24 = zext i8 %26 to i32, !dbg !3744
  %sub = sub i32 %conv23, %conv24, !dbg !3745
  store i32 %sub, i32* %__result, align 4, !dbg !3742, !tbaa !900
  %27 = load i64, i64* %__s2_len, align 8, !dbg !3746, !tbaa !1484
  %cmp25 = icmp ugt i64 %27, 0, !dbg !3748
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.57, !dbg !3749

land.lhs.true.27:                                 ; preds = %cond.true
  %28 = load i32, i32* %__result, align 4, !dbg !3750, !tbaa !900
  %cmp28 = icmp eq i32 %28, 0, !dbg !3752
  br i1 %cmp28, label %if.then.30, label %if.end.57, !dbg !3753

if.then.30:                                       ; preds = %land.lhs.true.27
  %29 = load i8*, i8** %__s1, align 8, !dbg !3754, !tbaa !894
  %arrayidx31 = getelementptr i8, i8* %29, i64 1, !dbg !3754
  %30 = load i8, i8* %arrayidx31, align 1, !dbg !3754, !tbaa !1146
  %conv32 = zext i8 %30 to i32, !dbg !3754
  %31 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1), align 1, !dbg !3757, !tbaa !1146
  %conv33 = zext i8 %31 to i32, !dbg !3757
  %sub34 = sub i32 %conv32, %conv33, !dbg !3758
  store i32 %sub34, i32* %__result, align 4, !dbg !3759, !tbaa !900
  %32 = load i64, i64* %__s2_len, align 8, !dbg !3760, !tbaa !1484
  %cmp35 = icmp ugt i64 %32, 1, !dbg !3762
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.56, !dbg !3763

land.lhs.true.37:                                 ; preds = %if.then.30
  %33 = load i32, i32* %__result, align 4, !dbg !3764, !tbaa !900
  %cmp38 = icmp eq i32 %33, 0, !dbg !3766
  br i1 %cmp38, label %if.then.40, label %if.end.56, !dbg !3767

if.then.40:                                       ; preds = %land.lhs.true.37
  %34 = load i8*, i8** %__s1, align 8, !dbg !3768, !tbaa !894
  %arrayidx41 = getelementptr i8, i8* %34, i64 2, !dbg !3768
  %35 = load i8, i8* %arrayidx41, align 1, !dbg !3768, !tbaa !1146
  %conv42 = zext i8 %35 to i32, !dbg !3768
  %36 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 2), align 1, !dbg !3771, !tbaa !1146
  %conv43 = zext i8 %36 to i32, !dbg !3771
  %sub44 = sub i32 %conv42, %conv43, !dbg !3772
  store i32 %sub44, i32* %__result, align 4, !dbg !3773, !tbaa !900
  %37 = load i64, i64* %__s2_len, align 8, !dbg !3774, !tbaa !1484
  %cmp45 = icmp ugt i64 %37, 2, !dbg !3776
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.55, !dbg !3777

land.lhs.true.47:                                 ; preds = %if.then.40
  %38 = load i32, i32* %__result, align 4, !dbg !3778, !tbaa !900
  %cmp48 = icmp eq i32 %38, 0, !dbg !3780
  br i1 %cmp48, label %if.then.50, label %if.end.55, !dbg !3781

if.then.50:                                       ; preds = %land.lhs.true.47
  %39 = load i8*, i8** %__s1, align 8, !dbg !3782, !tbaa !894
  %arrayidx51 = getelementptr i8, i8* %39, i64 3, !dbg !3782
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !3782, !tbaa !1146
  %conv52 = zext i8 %40 to i32, !dbg !3782
  %41 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 3), align 1, !dbg !3784, !tbaa !1146
  %conv53 = zext i8 %41 to i32, !dbg !3784
  %sub54 = sub i32 %conv52, %conv53, !dbg !3785
  store i32 %sub54, i32* %__result, align 4, !dbg !3786, !tbaa !900
  br label %if.end.55, !dbg !3787

if.end.55:                                        ; preds = %if.then.50, %land.lhs.true.47, %if.then.40
  br label %if.end.56, !dbg !3788

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.37, %if.then.30
  br label %if.end.57, !dbg !3792

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.27, %cond.true
  %42 = load i32, i32* %__result, align 4, !dbg !3796, !tbaa !900
  store i32 %42, i32* %tmp58, !dbg !3800, !tbaa !900
  %43 = bitcast i32* %__result to i8*, !dbg !3801
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !3801
  %44 = bitcast i8** %__s1 to i8*, !dbg !3801
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3801
  %45 = load i32, i32* %tmp58, !dbg !3802, !tbaa !900
  br label %cond.end, !dbg !3736

cond.false:                                       ; preds = %land.lhs.true, %for.end
  %arraydecay59 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3803
  %call60 = call i32 @strcmp(i8* %arraydecay59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #2, !dbg !3806
  br label %cond.end, !dbg !3736

cond.end:                                         ; preds = %cond.false, %if.end.57
  %cond = phi i32 [ %45, %if.end.57 ], [ %call60, %cond.false ], !dbg !3736
  store i32 %cond, i32* %tmp17, !dbg !3807, !tbaa !900
  %46 = bitcast i64* %__s2_len to i8*, !dbg !3810
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3810
  %47 = bitcast i64* %__s1_len to i8*, !dbg !3810
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3810
  %48 = load i32, i32* %tmp17, !dbg !3811, !tbaa !900
  %cmp61 = icmp eq i32 %48, 0, !dbg !3812
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false, !dbg !3813

lor.lhs.false:                                    ; preds = %cond.end
  %arraydecay63 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3814
  %call64 = call i32 @strncmp(i8* %arraydecay63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i64 6) #9, !dbg !3815
  %cmp65 = icmp eq i32 %call64, 0, !dbg !3816
  br i1 %cmp65, label %if.then.67, label %if.else.68, !dbg !3817

if.then.67:                                       ; preds = %lor.lhs.false, %cond.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8** %retval, !dbg !3818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !3818

if.else.68:                                       ; preds = %lor.lhs.false
  %49 = bitcast i64* %__s1_len70 to i8*, !dbg !3819
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3819
  call void @llvm.dbg.declare(metadata i64* %__s1_len70, metadata !668, metadata !898), !dbg !3820
  %50 = bitcast i64* %__s2_len72 to i8*, !dbg !3819
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !3819
  call void @llvm.dbg.declare(metadata i64* %__s2_len72, metadata !671, metadata !898), !dbg !3821
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.62 to i64)), i64 1), label %land.lhs.true.74, label %cond.false.121, !dbg !3822

land.lhs.true.74:                                 ; preds = %if.else.68
  store i64 7, i64* %__s2_len72, align 8, !dbg !3823, !tbaa !1484
  %51 = load i64, i64* %__s2_len72, align 8, !dbg !3825, !tbaa !1484
  %cmp75 = icmp ult i64 %51, 4, !dbg !3826
  br i1 %cmp75, label %cond.true.77, label %cond.false.121, !dbg !3827

cond.true.77:                                     ; preds = %land.lhs.true.74
  %52 = bitcast i8** %__s179 to i8*, !dbg !3828
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !3828
  call void @llvm.dbg.declare(metadata i8** %__s179, metadata !672, metadata !898), !dbg !3830
  %arraydecay80 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3831
  store i8* %arraydecay80, i8** %__s179, align 8, !dbg !3830, !tbaa !894
  %53 = bitcast i32* %__result82 to i8*, !dbg !3832
  call void @llvm.lifetime.start(i64 4, i8* %53) #2, !dbg !3832
  call void @llvm.dbg.declare(metadata i32* %__result82, metadata !674, metadata !898), !dbg !3833
  %54 = load i8*, i8** %__s179, align 8, !dbg !3834, !tbaa !894
  %arrayidx83 = getelementptr i8, i8* %54, i64 0, !dbg !3834
  %55 = load i8, i8* %arrayidx83, align 1, !dbg !3834, !tbaa !1146
  %conv84 = zext i8 %55 to i32, !dbg !3834
  %56 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), align 1, !dbg !3835, !tbaa !1146
  %conv85 = zext i8 %56 to i32, !dbg !3835
  %sub86 = sub i32 %conv84, %conv85, !dbg !3836
  store i32 %sub86, i32* %__result82, align 4, !dbg !3833, !tbaa !900
  %57 = load i64, i64* %__s2_len72, align 8, !dbg !3837, !tbaa !1484
  %cmp87 = icmp ugt i64 %57, 0, !dbg !3839
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.119, !dbg !3840

land.lhs.true.89:                                 ; preds = %cond.true.77
  %58 = load i32, i32* %__result82, align 4, !dbg !3841, !tbaa !900
  %cmp90 = icmp eq i32 %58, 0, !dbg !3843
  br i1 %cmp90, label %if.then.92, label %if.end.119, !dbg !3844

if.then.92:                                       ; preds = %land.lhs.true.89
  %59 = load i8*, i8** %__s179, align 8, !dbg !3845, !tbaa !894
  %arrayidx93 = getelementptr i8, i8* %59, i64 1, !dbg !3845
  %60 = load i8, i8* %arrayidx93, align 1, !dbg !3845, !tbaa !1146
  %conv94 = zext i8 %60 to i32, !dbg !3845
  %61 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 1), align 1, !dbg !3848, !tbaa !1146
  %conv95 = zext i8 %61 to i32, !dbg !3848
  %sub96 = sub i32 %conv94, %conv95, !dbg !3849
  store i32 %sub96, i32* %__result82, align 4, !dbg !3850, !tbaa !900
  %62 = load i64, i64* %__s2_len72, align 8, !dbg !3851, !tbaa !1484
  %cmp97 = icmp ugt i64 %62, 1, !dbg !3853
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.118, !dbg !3854

land.lhs.true.99:                                 ; preds = %if.then.92
  %63 = load i32, i32* %__result82, align 4, !dbg !3855, !tbaa !900
  %cmp100 = icmp eq i32 %63, 0, !dbg !3857
  br i1 %cmp100, label %if.then.102, label %if.end.118, !dbg !3858

if.then.102:                                      ; preds = %land.lhs.true.99
  %64 = load i8*, i8** %__s179, align 8, !dbg !3859, !tbaa !894
  %arrayidx103 = getelementptr i8, i8* %64, i64 2, !dbg !3859
  %65 = load i8, i8* %arrayidx103, align 1, !dbg !3859, !tbaa !1146
  %conv104 = zext i8 %65 to i32, !dbg !3859
  %66 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 2), align 1, !dbg !3862, !tbaa !1146
  %conv105 = zext i8 %66 to i32, !dbg !3862
  %sub106 = sub i32 %conv104, %conv105, !dbg !3863
  store i32 %sub106, i32* %__result82, align 4, !dbg !3864, !tbaa !900
  %67 = load i64, i64* %__s2_len72, align 8, !dbg !3865, !tbaa !1484
  %cmp107 = icmp ugt i64 %67, 2, !dbg !3867
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.117, !dbg !3868

land.lhs.true.109:                                ; preds = %if.then.102
  %68 = load i32, i32* %__result82, align 4, !dbg !3869, !tbaa !900
  %cmp110 = icmp eq i32 %68, 0, !dbg !3871
  br i1 %cmp110, label %if.then.112, label %if.end.117, !dbg !3872

if.then.112:                                      ; preds = %land.lhs.true.109
  %69 = load i8*, i8** %__s179, align 8, !dbg !3873, !tbaa !894
  %arrayidx113 = getelementptr i8, i8* %69, i64 3, !dbg !3873
  %70 = load i8, i8* %arrayidx113, align 1, !dbg !3873, !tbaa !1146
  %conv114 = zext i8 %70 to i32, !dbg !3873
  %71 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 3), align 1, !dbg !3875, !tbaa !1146
  %conv115 = zext i8 %71 to i32, !dbg !3875
  %sub116 = sub i32 %conv114, %conv115, !dbg !3876
  store i32 %sub116, i32* %__result82, align 4, !dbg !3877, !tbaa !900
  br label %if.end.117, !dbg !3878

if.end.117:                                       ; preds = %if.then.112, %land.lhs.true.109, %if.then.102
  br label %if.end.118, !dbg !3879

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.99, %if.then.92
  br label %if.end.119, !dbg !3883

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.89, %cond.true.77
  %72 = load i32, i32* %__result82, align 4, !dbg !3887, !tbaa !900
  store i32 %72, i32* %tmp120, !dbg !3891, !tbaa !900
  %73 = bitcast i32* %__result82 to i8*, !dbg !3892
  call void @llvm.lifetime.end(i64 4, i8* %73) #2, !dbg !3892
  %74 = bitcast i8** %__s179 to i8*, !dbg !3892
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3892
  %75 = load i32, i32* %tmp120, !dbg !3893, !tbaa !900
  br label %cond.end.124, !dbg !3827

cond.false.121:                                   ; preds = %land.lhs.true.74, %if.else.68
  %arraydecay122 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3894
  %call123 = call i32 @strcmp(i8* %arraydecay122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)) #2, !dbg !3897
  br label %cond.end.124, !dbg !3827

cond.end.124:                                     ; preds = %cond.false.121, %if.end.119
  %cond125 = phi i32 [ %75, %if.end.119 ], [ %call123, %cond.false.121 ], !dbg !3827
  store i32 %cond125, i32* %tmp73, !dbg !3898, !tbaa !900
  %76 = bitcast i64* %__s2_len72 to i8*, !dbg !3901
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3901
  %77 = bitcast i64* %__s1_len70 to i8*, !dbg !3901
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3901
  %78 = load i32, i32* %tmp73, !dbg !3902, !tbaa !900
  %cmp126 = icmp eq i32 %78, 0, !dbg !3903
  br i1 %cmp126, label %if.then.263, label %lor.lhs.false.128, !dbg !3904

lor.lhs.false.128:                                ; preds = %cond.end.124
  %79 = bitcast i64* %__s1_len130 to i8*, !dbg !3905
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !3905
  call void @llvm.dbg.declare(metadata i64* %__s1_len130, metadata !675, metadata !898), !dbg !3906
  %80 = bitcast i64* %__s2_len132 to i8*, !dbg !3905
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !3905
  call void @llvm.dbg.declare(metadata i64* %__s2_len132, metadata !677, metadata !898), !dbg !3907
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.63 to i64)), i64 1), label %land.lhs.true.134, label %cond.false.181, !dbg !3908

land.lhs.true.134:                                ; preds = %lor.lhs.false.128
  store i64 10, i64* %__s2_len132, align 8, !dbg !3909, !tbaa !1484
  %81 = load i64, i64* %__s2_len132, align 8, !dbg !3911, !tbaa !1484
  %cmp135 = icmp ult i64 %81, 4, !dbg !3912
  br i1 %cmp135, label %cond.true.137, label %cond.false.181, !dbg !3913

cond.true.137:                                    ; preds = %land.lhs.true.134
  %82 = bitcast i8** %__s1139 to i8*, !dbg !3914
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !3914
  call void @llvm.dbg.declare(metadata i8** %__s1139, metadata !678, metadata !898), !dbg !3916
  %arraydecay140 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3917
  store i8* %arraydecay140, i8** %__s1139, align 8, !dbg !3916, !tbaa !894
  %83 = bitcast i32* %__result142 to i8*, !dbg !3918
  call void @llvm.lifetime.start(i64 4, i8* %83) #2, !dbg !3918
  call void @llvm.dbg.declare(metadata i32* %__result142, metadata !680, metadata !898), !dbg !3919
  %84 = load i8*, i8** %__s1139, align 8, !dbg !3920, !tbaa !894
  %arrayidx143 = getelementptr i8, i8* %84, i64 0, !dbg !3920
  %85 = load i8, i8* %arrayidx143, align 1, !dbg !3920, !tbaa !1146
  %conv144 = zext i8 %85 to i32, !dbg !3920
  %86 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), align 1, !dbg !3921, !tbaa !1146
  %conv145 = zext i8 %86 to i32, !dbg !3921
  %sub146 = sub i32 %conv144, %conv145, !dbg !3922
  store i32 %sub146, i32* %__result142, align 4, !dbg !3919, !tbaa !900
  %87 = load i64, i64* %__s2_len132, align 8, !dbg !3923, !tbaa !1484
  %cmp147 = icmp ugt i64 %87, 0, !dbg !3925
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.179, !dbg !3926

land.lhs.true.149:                                ; preds = %cond.true.137
  %88 = load i32, i32* %__result142, align 4, !dbg !3927, !tbaa !900
  %cmp150 = icmp eq i32 %88, 0, !dbg !3929
  br i1 %cmp150, label %if.then.152, label %if.end.179, !dbg !3930

if.then.152:                                      ; preds = %land.lhs.true.149
  %89 = load i8*, i8** %__s1139, align 8, !dbg !3931, !tbaa !894
  %arrayidx153 = getelementptr i8, i8* %89, i64 1, !dbg !3931
  %90 = load i8, i8* %arrayidx153, align 1, !dbg !3931, !tbaa !1146
  %conv154 = zext i8 %90 to i32, !dbg !3931
  %91 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 1), align 1, !dbg !3934, !tbaa !1146
  %conv155 = zext i8 %91 to i32, !dbg !3934
  %sub156 = sub i32 %conv154, %conv155, !dbg !3935
  store i32 %sub156, i32* %__result142, align 4, !dbg !3936, !tbaa !900
  %92 = load i64, i64* %__s2_len132, align 8, !dbg !3937, !tbaa !1484
  %cmp157 = icmp ugt i64 %92, 1, !dbg !3939
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.178, !dbg !3940

land.lhs.true.159:                                ; preds = %if.then.152
  %93 = load i32, i32* %__result142, align 4, !dbg !3941, !tbaa !900
  %cmp160 = icmp eq i32 %93, 0, !dbg !3943
  br i1 %cmp160, label %if.then.162, label %if.end.178, !dbg !3944

if.then.162:                                      ; preds = %land.lhs.true.159
  %94 = load i8*, i8** %__s1139, align 8, !dbg !3945, !tbaa !894
  %arrayidx163 = getelementptr i8, i8* %94, i64 2, !dbg !3945
  %95 = load i8, i8* %arrayidx163, align 1, !dbg !3945, !tbaa !1146
  %conv164 = zext i8 %95 to i32, !dbg !3945
  %96 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 2), align 1, !dbg !3948, !tbaa !1146
  %conv165 = zext i8 %96 to i32, !dbg !3948
  %sub166 = sub i32 %conv164, %conv165, !dbg !3949
  store i32 %sub166, i32* %__result142, align 4, !dbg !3950, !tbaa !900
  %97 = load i64, i64* %__s2_len132, align 8, !dbg !3951, !tbaa !1484
  %cmp167 = icmp ugt i64 %97, 2, !dbg !3953
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.177, !dbg !3954

land.lhs.true.169:                                ; preds = %if.then.162
  %98 = load i32, i32* %__result142, align 4, !dbg !3955, !tbaa !900
  %cmp170 = icmp eq i32 %98, 0, !dbg !3957
  br i1 %cmp170, label %if.then.172, label %if.end.177, !dbg !3958

if.then.172:                                      ; preds = %land.lhs.true.169
  %99 = load i8*, i8** %__s1139, align 8, !dbg !3959, !tbaa !894
  %arrayidx173 = getelementptr i8, i8* %99, i64 3, !dbg !3959
  %100 = load i8, i8* %arrayidx173, align 1, !dbg !3959, !tbaa !1146
  %conv174 = zext i8 %100 to i32, !dbg !3959
  %101 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 3), align 1, !dbg !3961, !tbaa !1146
  %conv175 = zext i8 %101 to i32, !dbg !3961
  %sub176 = sub i32 %conv174, %conv175, !dbg !3962
  store i32 %sub176, i32* %__result142, align 4, !dbg !3963, !tbaa !900
  br label %if.end.177, !dbg !3964

if.end.177:                                       ; preds = %if.then.172, %land.lhs.true.169, %if.then.162
  br label %if.end.178, !dbg !3965

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.159, %if.then.152
  br label %if.end.179, !dbg !3969

if.end.179:                                       ; preds = %if.end.178, %land.lhs.true.149, %cond.true.137
  %102 = load i32, i32* %__result142, align 4, !dbg !3973, !tbaa !900
  store i32 %102, i32* %tmp180, !dbg !3977, !tbaa !900
  %103 = bitcast i32* %__result142 to i8*, !dbg !3978
  call void @llvm.lifetime.end(i64 4, i8* %103) #2, !dbg !3978
  %104 = bitcast i8** %__s1139 to i8*, !dbg !3978
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !3978
  %105 = load i32, i32* %tmp180, !dbg !3979, !tbaa !900
  br label %cond.end.184, !dbg !3913

cond.false.181:                                   ; preds = %land.lhs.true.134, %lor.lhs.false.128
  %arraydecay182 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3980
  %call183 = call i32 @strcmp(i8* %arraydecay182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0)) #2, !dbg !3983
  br label %cond.end.184, !dbg !3913

cond.end.184:                                     ; preds = %cond.false.181, %if.end.179
  %cond185 = phi i32 [ %105, %if.end.179 ], [ %call183, %cond.false.181 ], !dbg !3913
  store i32 %cond185, i32* %tmp133, !dbg !3984, !tbaa !900
  %106 = bitcast i64* %__s2_len132 to i8*, !dbg !3987
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !3987
  %107 = bitcast i64* %__s1_len130 to i8*, !dbg !3987
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !3987
  %108 = load i32, i32* %tmp133, !dbg !3988, !tbaa !900
  %cmp186 = icmp eq i32 %108, 0, !dbg !3989
  br i1 %cmp186, label %if.then.263, label %lor.lhs.false.188, !dbg !3990

lor.lhs.false.188:                                ; preds = %cond.end.184
  %109 = bitcast i64* %__s1_len190 to i8*, !dbg !3991
  call void @llvm.lifetime.start(i64 8, i8* %109) #2, !dbg !3991
  call void @llvm.dbg.declare(metadata i64* %__s1_len190, metadata !681, metadata !898), !dbg !3992
  %110 = bitcast i64* %__s2_len192 to i8*, !dbg !3991
  call void @llvm.lifetime.start(i64 8, i8* %110) #2, !dbg !3991
  call void @llvm.dbg.declare(metadata i64* %__s2_len192, metadata !683, metadata !898), !dbg !3993
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 1) to i64), i64 ptrtoint ([12 x i8]* @.str.64 to i64)), i64 1), label %land.lhs.true.194, label %cond.false.241, !dbg !3994

land.lhs.true.194:                                ; preds = %lor.lhs.false.188
  store i64 11, i64* %__s2_len192, align 8, !dbg !3995, !tbaa !1484
  %111 = load i64, i64* %__s2_len192, align 8, !dbg !3997, !tbaa !1484
  %cmp195 = icmp ult i64 %111, 4, !dbg !3998
  br i1 %cmp195, label %cond.true.197, label %cond.false.241, !dbg !3999

cond.true.197:                                    ; preds = %land.lhs.true.194
  %112 = bitcast i8** %__s1199 to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !4000
  call void @llvm.dbg.declare(metadata i8** %__s1199, metadata !684, metadata !898), !dbg !4002
  %arraydecay200 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4003
  store i8* %arraydecay200, i8** %__s1199, align 8, !dbg !4002, !tbaa !894
  %113 = bitcast i32* %__result202 to i8*, !dbg !4004
  call void @llvm.lifetime.start(i64 4, i8* %113) #2, !dbg !4004
  call void @llvm.dbg.declare(metadata i32* %__result202, metadata !686, metadata !898), !dbg !4005
  %114 = load i8*, i8** %__s1199, align 8, !dbg !4006, !tbaa !894
  %arrayidx203 = getelementptr i8, i8* %114, i64 0, !dbg !4006
  %115 = load i8, i8* %arrayidx203, align 1, !dbg !4006, !tbaa !1146
  %conv204 = zext i8 %115 to i32, !dbg !4006
  %116 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), align 1, !dbg !4007, !tbaa !1146
  %conv205 = zext i8 %116 to i32, !dbg !4007
  %sub206 = sub i32 %conv204, %conv205, !dbg !4008
  store i32 %sub206, i32* %__result202, align 4, !dbg !4005, !tbaa !900
  %117 = load i64, i64* %__s2_len192, align 8, !dbg !4009, !tbaa !1484
  %cmp207 = icmp ugt i64 %117, 0, !dbg !4011
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.239, !dbg !4012

land.lhs.true.209:                                ; preds = %cond.true.197
  %118 = load i32, i32* %__result202, align 4, !dbg !4013, !tbaa !900
  %cmp210 = icmp eq i32 %118, 0, !dbg !4015
  br i1 %cmp210, label %if.then.212, label %if.end.239, !dbg !4016

if.then.212:                                      ; preds = %land.lhs.true.209
  %119 = load i8*, i8** %__s1199, align 8, !dbg !4017, !tbaa !894
  %arrayidx213 = getelementptr i8, i8* %119, i64 1, !dbg !4017
  %120 = load i8, i8* %arrayidx213, align 1, !dbg !4017, !tbaa !1146
  %conv214 = zext i8 %120 to i32, !dbg !4017
  %121 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 1), align 1, !dbg !4020, !tbaa !1146
  %conv215 = zext i8 %121 to i32, !dbg !4020
  %sub216 = sub i32 %conv214, %conv215, !dbg !4021
  store i32 %sub216, i32* %__result202, align 4, !dbg !4022, !tbaa !900
  %122 = load i64, i64* %__s2_len192, align 8, !dbg !4023, !tbaa !1484
  %cmp217 = icmp ugt i64 %122, 1, !dbg !4025
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.238, !dbg !4026

land.lhs.true.219:                                ; preds = %if.then.212
  %123 = load i32, i32* %__result202, align 4, !dbg !4027, !tbaa !900
  %cmp220 = icmp eq i32 %123, 0, !dbg !4029
  br i1 %cmp220, label %if.then.222, label %if.end.238, !dbg !4030

if.then.222:                                      ; preds = %land.lhs.true.219
  %124 = load i8*, i8** %__s1199, align 8, !dbg !4031, !tbaa !894
  %arrayidx223 = getelementptr i8, i8* %124, i64 2, !dbg !4031
  %125 = load i8, i8* %arrayidx223, align 1, !dbg !4031, !tbaa !1146
  %conv224 = zext i8 %125 to i32, !dbg !4031
  %126 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 2), align 1, !dbg !4034, !tbaa !1146
  %conv225 = zext i8 %126 to i32, !dbg !4034
  %sub226 = sub i32 %conv224, %conv225, !dbg !4035
  store i32 %sub226, i32* %__result202, align 4, !dbg !4036, !tbaa !900
  %127 = load i64, i64* %__s2_len192, align 8, !dbg !4037, !tbaa !1484
  %cmp227 = icmp ugt i64 %127, 2, !dbg !4039
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.237, !dbg !4040

land.lhs.true.229:                                ; preds = %if.then.222
  %128 = load i32, i32* %__result202, align 4, !dbg !4041, !tbaa !900
  %cmp230 = icmp eq i32 %128, 0, !dbg !4043
  br i1 %cmp230, label %if.then.232, label %if.end.237, !dbg !4044

if.then.232:                                      ; preds = %land.lhs.true.229
  %129 = load i8*, i8** %__s1199, align 8, !dbg !4045, !tbaa !894
  %arrayidx233 = getelementptr i8, i8* %129, i64 3, !dbg !4045
  %130 = load i8, i8* %arrayidx233, align 1, !dbg !4045, !tbaa !1146
  %conv234 = zext i8 %130 to i32, !dbg !4045
  %131 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 3), align 1, !dbg !4047, !tbaa !1146
  %conv235 = zext i8 %131 to i32, !dbg !4047
  %sub236 = sub i32 %conv234, %conv235, !dbg !4048
  store i32 %sub236, i32* %__result202, align 4, !dbg !4049, !tbaa !900
  br label %if.end.237, !dbg !4050

if.end.237:                                       ; preds = %if.then.232, %land.lhs.true.229, %if.then.222
  br label %if.end.238, !dbg !4051

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.219, %if.then.212
  br label %if.end.239, !dbg !4055

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.209, %cond.true.197
  %132 = load i32, i32* %__result202, align 4, !dbg !4059, !tbaa !900
  store i32 %132, i32* %tmp240, !dbg !4063, !tbaa !900
  %133 = bitcast i32* %__result202 to i8*, !dbg !4064
  call void @llvm.lifetime.end(i64 4, i8* %133) #2, !dbg !4064
  %134 = bitcast i8** %__s1199 to i8*, !dbg !4064
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !4064
  %135 = load i32, i32* %tmp240, !dbg !4065, !tbaa !900
  br label %cond.end.244, !dbg !3999

cond.false.241:                                   ; preds = %land.lhs.true.194, %lor.lhs.false.188
  %arraydecay242 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4066
  %call243 = call i32 @strcmp(i8* %arraydecay242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0)) #2, !dbg !4069
  br label %cond.end.244, !dbg !3999

cond.end.244:                                     ; preds = %cond.false.241, %if.end.239
  %cond245 = phi i32 [ %135, %if.end.239 ], [ %call243, %cond.false.241 ], !dbg !3999
  store i32 %cond245, i32* %tmp193, !dbg !4070, !tbaa !900
  %136 = bitcast i64* %__s2_len192 to i8*, !dbg !4073
  call void @llvm.lifetime.end(i64 8, i8* %136) #2, !dbg !4073
  %137 = bitcast i64* %__s1_len190 to i8*, !dbg !4073
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !4073
  %138 = load i32, i32* %tmp193, !dbg !4074, !tbaa !900
  %cmp246 = icmp eq i32 %138, 0, !dbg !4075
  br i1 %cmp246, label %if.then.263, label %lor.lhs.false.248, !dbg !4076

lor.lhs.false.248:                                ; preds = %cond.end.244
  %arraydecay249 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4077
  %call250 = call i32 @strncmp(i8* %arraydecay249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i64 8) #9, !dbg !4078
  %cmp251 = icmp eq i32 %call250, 0, !dbg !4079
  br i1 %cmp251, label %if.then.263, label %lor.lhs.false.253, !dbg !4080

lor.lhs.false.253:                                ; preds = %lor.lhs.false.248
  %arraydecay254 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4081
  %call255 = call i32 @strncmp(i8* %arraydecay254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i64 11) #9, !dbg !4082
  %cmp256 = icmp eq i32 %call255, 0, !dbg !4083
  br i1 %cmp256, label %if.then.263, label %lor.lhs.false.258, !dbg !4084

lor.lhs.false.258:                                ; preds = %lor.lhs.false.253
  %arraydecay259 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4085
  %call260 = call i32 @strncmp(i8* %arraydecay259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i64 12) #9, !dbg !4086
  %cmp261 = icmp eq i32 %call260, 0, !dbg !4087
  br i1 %cmp261, label %if.then.263, label %if.else.264, !dbg !4088

if.then.263:                                      ; preds = %lor.lhs.false.258, %lor.lhs.false.253, %lor.lhs.false.248, %cond.end.244, %cond.end.184, %cond.end.124
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8** %retval, !dbg !4089
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !4089

if.else.264:                                      ; preds = %lor.lhs.false.258
  %139 = load i8*, i8** %s.addr, align 8, !dbg !4090, !tbaa !894
  store i8* %139, i8** %retval, !dbg !4091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !4091

cleanup.265:                                      ; preds = %if.else.264, %if.then.263, %if.then.67
  %140 = bitcast i32* %i to i8*, !dbg !4092
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !4092
  %141 = bitcast [13 x i8]* %buf to i8*, !dbg !4092
  call void @llvm.lifetime.end(i64 13, i8* %141) #2, !dbg !4092
  %142 = load i8*, i8** %retval, !dbg !4092
  ret i8* %142, !dbg !4092
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @tolower(i32 %__c) #6 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !689, metadata !898), !dbg !4093
  %0 = load i32, i32* %__c.addr, align 4, !dbg !4094, !tbaa !900
  %cmp = icmp sge i32 %0, -128, !dbg !4095
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4096

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !dbg !4097, !tbaa !900
  %cmp1 = icmp slt i32 %1, 256, !dbg !4099
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4094

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !dbg !4100, !tbaa !900
  %idxprom = sext i32 %2 to i64, !dbg !4102
  %call = call i32** @__ctype_tolower_loc() #1, !dbg !4103
  %3 = load i32*, i32** %call, align 8, !dbg !4104, !tbaa !894
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !4102
  %4 = load i32, i32* %arrayidx, align 4, !dbg !4102, !tbaa !900
  br label %cond.end, !dbg !4094

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !dbg !4105, !tbaa !900
  br label %cond.end, !dbg !4094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !4094
  ret i32 %cond, !dbg !4108
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #7

declare i8* @PyMem_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @tok_nextc(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %end = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %newtok = alloca i8*, align 8
  %translated = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %buf59 = alloca i8*, align 8
  %u = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %start117 = alloca i64, align 8
  %oldlen = alloca i64, align 8
  %newlen = alloca i64, align 8
  %buf127 = alloca i8*, align 8
  %done192 = alloca i32, align 4
  %cur193 = alloca i64, align 8
  %pt = alloca i8*, align 8
  %curstart = alloca i64, align 8
  %curvalid = alloca i64, align 8
  %newsize = alloca i64, align 8
  %newbuf = alloca i8*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !743, metadata !898), !dbg !4111
  br label %for.cond, !dbg !4112

for.cond:                                         ; preds = %if.end.363, %entry
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4113, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 1, !dbg !4115
  %1 = load i8*, i8** %cur, align 8, !dbg !4115, !tbaa !937
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4116, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 2, !dbg !4117
  %3 = load i8*, i8** %inp, align 8, !dbg !4117, !tbaa !928
  %cmp = icmp ne i8* %1, %3, !dbg !4118
  br i1 %cmp, label %if.then, label %if.end, !dbg !4119

if.then:                                          ; preds = %for.cond
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4120, !tbaa !894
  %cur1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 1, !dbg !4122
  %5 = load i8*, i8** %cur1, align 8, !dbg !4123, !tbaa !937
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !4123
  store i8* %incdec.ptr, i8** %cur1, align 8, !dbg !4123, !tbaa !937
  %6 = load i8, i8* %5, align 1, !dbg !4124, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !4125
  %and = and i32 %conv, 255, !dbg !4126
  %conv2 = trunc i32 %and to i8, !dbg !4127
  %conv3 = zext i8 %conv2 to i32, !dbg !4128
  store i32 %conv3, i32* %retval, !dbg !4129
  br label %return, !dbg !4129

if.end:                                           ; preds = %for.cond
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4130, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 5, !dbg !4132
  %8 = load i32, i32* %done, align 4, !dbg !4132, !tbaa !973
  %cmp4 = icmp ne i32 %8, 10, !dbg !4133
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !4134

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !4135
  br label %return, !dbg !4135

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4136, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 6, !dbg !4137
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4137, !tbaa !977
  %cmp8 = icmp eq %struct._IO_FILE* %10, null, !dbg !4138
  br i1 %cmp8, label %if.then.10, label %if.end.38, !dbg !4139

if.then.10:                                       ; preds = %if.end.7
  %11 = bitcast i8** %end to i8*, !dbg !4140
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4140
  call void @llvm.dbg.declare(metadata i8** %end, metadata !744, metadata !898), !dbg !4141
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4142, !tbaa !894
  %inp11 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 2, !dbg !4143
  %13 = load i8*, i8** %inp11, align 8, !dbg !4143, !tbaa !928
  %call = call i8* @strchr(i8* %13, i32 10) #2, !dbg !4144
  store i8* %call, i8** %end, align 8, !dbg !4141, !tbaa !894
  %14 = load i8*, i8** %end, align 8, !dbg !4145, !tbaa !894
  %cmp12 = icmp ne i8* %14, null, !dbg !4147
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !4148

if.then.14:                                       ; preds = %if.then.10
  %15 = load i8*, i8** %end, align 8, !dbg !4149, !tbaa !894
  %incdec.ptr15 = getelementptr i8, i8* %15, i32 1, !dbg !4149
  store i8* %incdec.ptr15, i8** %end, align 8, !dbg !4149, !tbaa !894
  br label %if.end.24, !dbg !4150

if.else:                                          ; preds = %if.then.10
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4151, !tbaa !894
  %inp16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 2, !dbg !4153
  %17 = load i8*, i8** %inp16, align 8, !dbg !4153, !tbaa !928
  %call17 = call i8* @__rawmemchr(i8* %17, i32 0), !dbg !4154
  store i8* %call17, i8** %end, align 8, !dbg !4155, !tbaa !894
  %18 = load i8*, i8** %end, align 8, !dbg !4156, !tbaa !894
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4158, !tbaa !894
  %inp18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 2, !dbg !4159
  %20 = load i8*, i8** %inp18, align 8, !dbg !4159, !tbaa !928
  %cmp19 = icmp eq i8* %18, %20, !dbg !4160
  br i1 %cmp19, label %if.then.21, label %if.end.23, !dbg !4161

if.then.21:                                       ; preds = %if.else
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4162, !tbaa !894
  %done22 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 5, !dbg !4164
  store i32 11, i32* %done22, align 4, !dbg !4165, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4166
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4166

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4167, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 4, !dbg !4169
  %23 = load i8*, i8** %start, align 8, !dbg !4169, !tbaa !957
  %cmp25 = icmp eq i8* %23, null, !dbg !4170
  br i1 %cmp25, label %if.then.27, label %if.end.29, !dbg !4171

if.then.27:                                       ; preds = %if.end.24
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4172, !tbaa !894
  %cur28 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 1, !dbg !4173
  %25 = load i8*, i8** %cur28, align 8, !dbg !4173, !tbaa !937
  %26 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4174, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 0, !dbg !4175
  store i8* %25, i8** %buf, align 8, !dbg !4176, !tbaa !941
  br label %if.end.29, !dbg !4174

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4177, !tbaa !894
  %cur30 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 1, !dbg !4178
  %28 = load i8*, i8** %cur30, align 8, !dbg !4178, !tbaa !937
  %29 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4179, !tbaa !894
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 26, !dbg !4180
  store i8* %28, i8** %line_start, align 8, !dbg !4181, !tbaa !4182
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4183, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 14, !dbg !4184
  %31 = load i32, i32* %lineno, align 4, !dbg !4185, !tbaa !1012
  %inc = add i32 %31, 1, !dbg !4185
  store i32 %inc, i32* %lineno, align 4, !dbg !4185, !tbaa !1012
  %32 = load i8*, i8** %end, align 8, !dbg !4186, !tbaa !894
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4187, !tbaa !894
  %inp31 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 2, !dbg !4188
  store i8* %32, i8** %inp31, align 8, !dbg !4189, !tbaa !928
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4190, !tbaa !894
  %cur32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 1, !dbg !4191
  %35 = load i8*, i8** %cur32, align 8, !dbg !4192, !tbaa !937
  %incdec.ptr33 = getelementptr i8, i8* %35, i32 1, !dbg !4192
  store i8* %incdec.ptr33, i8** %cur32, align 8, !dbg !4192, !tbaa !937
  %36 = load i8, i8* %35, align 1, !dbg !4193, !tbaa !1146
  %conv34 = sext i8 %36 to i32, !dbg !4194
  %and35 = and i32 %conv34, 255, !dbg !4195
  %conv36 = trunc i32 %and35 to i8, !dbg !4196
  %conv37 = zext i8 %conv36 to i32, !dbg !4197
  store i32 %conv37, i32* %retval, !dbg !4198
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4198

cleanup:                                          ; preds = %if.end.29, %if.then.21
  %37 = bitcast i8** %end to i8*, !dbg !4199
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4199
  br label %return

if.end.38:                                        ; preds = %if.end.7
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4200, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 12, !dbg !4201
  %39 = load i8*, i8** %prompt, align 8, !dbg !4201, !tbaa !1008
  %cmp39 = icmp ne i8* %39, null, !dbg !4202
  br i1 %cmp39, label %if.then.41, label %if.else.191, !dbg !4203

if.then.41:                                       ; preds = %if.end.38
  %40 = bitcast i8** %newtok to i8*, !dbg !4204
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !4204
  call void @llvm.dbg.declare(metadata i8** %newtok, metadata !750, metadata !898), !dbg !4205
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !4206, !tbaa !894
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4207, !tbaa !894
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4208, !tbaa !894
  %prompt42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %43, i32 0, i32 12, !dbg !4209
  %44 = load i8*, i8** %prompt42, align 8, !dbg !4209, !tbaa !1008
  %call43 = call i8* @PyOS_Readline(%struct._IO_FILE* %41, %struct._IO_FILE* %42, i8* %44), !dbg !4210
  store i8* %call43, i8** %newtok, align 8, !dbg !4205, !tbaa !894
  %45 = load i8*, i8** %newtok, align 8, !dbg !4211, !tbaa !894
  %cmp44 = icmp ne i8* %45, null, !dbg !4212
  br i1 %cmp44, label %if.then.46, label %if.end.53, !dbg !4213

if.then.46:                                       ; preds = %if.then.41
  %46 = bitcast i8** %translated to i8*, !dbg !4214
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !4214
  call void @llvm.dbg.declare(metadata i8** %translated, metadata !753, metadata !898), !dbg !4215
  %47 = load i8*, i8** %newtok, align 8, !dbg !4216, !tbaa !894
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4217, !tbaa !894
  %call47 = call i8* @translate_newlines(i8* %47, i32 0, %struct.tok_state* %48), !dbg !4218
  store i8* %call47, i8** %translated, align 8, !dbg !4215, !tbaa !894
  %49 = load i8*, i8** %newtok, align 8, !dbg !4219, !tbaa !894
  call void @PyMem_Free(i8* %49), !dbg !4220
  %50 = load i8*, i8** %translated, align 8, !dbg !4221, !tbaa !894
  %cmp48 = icmp eq i8* %50, null, !dbg !4223
  br i1 %cmp48, label %if.then.50, label %if.end.51, !dbg !4224

if.then.50:                                       ; preds = %if.then.46
  store i32 -1, i32* %retval, !dbg !4225
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52, !dbg !4225

if.end.51:                                        ; preds = %if.then.46
  %51 = load i8*, i8** %translated, align 8, !dbg !4226, !tbaa !894
  store i8* %51, i8** %newtok, align 8, !dbg !4227, !tbaa !894
  store i32 0, i32* %cleanup.dest.slot, !dbg !4228
  br label %cleanup.52, !dbg !4228

cleanup.52:                                       ; preds = %if.end.51, %if.then.50
  %52 = bitcast i8** %translated to i8*, !dbg !4229
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !4229
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup.52
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.53, !dbg !4231

if.end.53:                                        ; preds = %cleanup.cont, %if.then.41
  %53 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4232, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %53, i32 0, i32 24, !dbg !4233
  %54 = load i8*, i8** %encoding, align 8, !dbg !4233, !tbaa !1051
  %tobool = icmp ne i8* %54, null, !dbg !4232
  br i1 %tobool, label %land.lhs.true, label %if.end.95, !dbg !4234

land.lhs.true:                                    ; preds = %if.end.53
  %55 = load i8*, i8** %newtok, align 8, !dbg !4235, !tbaa !894
  %tobool54 = icmp ne i8* %55, null, !dbg !4235
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.95, !dbg !4237

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %56 = load i8*, i8** %newtok, align 8, !dbg !4238, !tbaa !894
  %57 = load i8, i8* %56, align 1, !dbg !4240, !tbaa !1146
  %conv56 = sext i8 %57 to i32, !dbg !4240
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !4240
  br i1 %tobool57, label %if.then.58, label %if.end.95, !dbg !4241

if.then.58:                                       ; preds = %land.lhs.true.55
  %58 = bitcast i64* %buflen to i8*, !dbg !4242
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !4242
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !756, metadata !898), !dbg !4243
  %59 = bitcast i8** %buf59 to i8*, !dbg !4244
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !4244
  call void @llvm.dbg.declare(metadata i8** %buf59, metadata !759, metadata !898), !dbg !4245
  %60 = bitcast %struct._object** %u to i8*, !dbg !4246
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !4246
  call void @llvm.dbg.declare(metadata %struct._object** %u, metadata !760, metadata !898), !dbg !4247
  %61 = load i8*, i8** %newtok, align 8, !dbg !4248, !tbaa !894
  %62 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4249, !tbaa !894
  %encoding60 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %62, i32 0, i32 24, !dbg !4250
  %63 = load i8*, i8** %encoding60, align 8, !dbg !4250, !tbaa !1051
  %call61 = call %struct._object* @translate_into_utf8(i8* %61, i8* %63), !dbg !4251
  store %struct._object* %call61, %struct._object** %u, align 8, !dbg !4247, !tbaa !894
  %64 = load i8*, i8** %newtok, align 8, !dbg !4252, !tbaa !894
  call void @PyMem_Free(i8* %64), !dbg !4253
  %65 = load %struct._object*, %struct._object** %u, align 8, !dbg !4254, !tbaa !894
  %tobool62 = icmp ne %struct._object* %65, null, !dbg !4254
  br i1 %tobool62, label %if.end.65, label %if.then.63, !dbg !4256

if.then.63:                                       ; preds = %if.then.58
  %66 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4257, !tbaa !894
  %done64 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %66, i32 0, i32 5, !dbg !4259
  store i32 22, i32* %done64, align 4, !dbg !4260, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4261
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !4261

if.end.65:                                        ; preds = %if.then.58
  %67 = load %struct._object*, %struct._object** %u, align 8, !dbg !4262, !tbaa !894
  %68 = bitcast %struct._object* %67 to %struct.PyVarObject*, !dbg !4263
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %68, i32 0, i32 1, !dbg !4264
  %69 = load i64, i64* %ob_size, align 8, !dbg !4264, !tbaa !4265
  store i64 %69, i64* %buflen, align 8, !dbg !4266, !tbaa !1484
  %70 = load %struct._object*, %struct._object** %u, align 8, !dbg !4267, !tbaa !894
  %71 = bitcast %struct._object* %70 to %struct.PyBytesObject*, !dbg !4268
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %71, i32 0, i32 2, !dbg !4269
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !4270
  store i8* %arraydecay, i8** %buf59, align 8, !dbg !4271, !tbaa !894
  %72 = load i8*, i8** %buf59, align 8, !dbg !4272, !tbaa !894
  %tobool66 = icmp ne i8* %72, null, !dbg !4272
  br i1 %tobool66, label %if.end.74, label %if.then.67, !dbg !4273

if.then.67:                                       ; preds = %if.end.65
  br label %do.body, !dbg !4274

do.body:                                          ; preds = %if.then.67
  %73 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4275
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !4275
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !761, metadata !898), !dbg !4277
  %74 = load %struct._object*, %struct._object** %u, align 8, !dbg !4278, !tbaa !894
  store %struct._object* %74, %struct._object** %_py_decref_tmp, align 8, !dbg !4277, !tbaa !894
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4279, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !4281
  %76 = load i64, i64* %ob_refcnt, align 8, !dbg !4282, !tbaa !1277
  %dec = add i64 %76, -1, !dbg !4282
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4282, !tbaa !1277
  %cmp68 = icmp ne i64 %dec, 0, !dbg !4283
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !4284

if.then.70:                                       ; preds = %do.body
  br label %if.end.72, !dbg !4285

if.else.71:                                       ; preds = %do.body
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4287, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !4289
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4289, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !4290
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4290, !tbaa !1289
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4291, !tbaa !894
  call void %79(%struct._object* %80), !dbg !4292
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  %81 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4293
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !4293
  br label %do.cond, !dbg !4295

do.cond:                                          ; preds = %if.end.72
  br label %do.end, !dbg !4296

do.end:                                           ; preds = %do.cond
  %82 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4298, !tbaa !894
  %done73 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %82, i32 0, i32 5, !dbg !4299
  store i32 22, i32* %done73, align 4, !dbg !4300, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !4301

if.end.74:                                        ; preds = %if.end.65
  %83 = load i64, i64* %buflen, align 8, !dbg !4302, !tbaa !1484
  %add = add i64 %83, 1, !dbg !4303
  %call75 = call i8* @PyMem_Malloc(i64 %add), !dbg !4304
  store i8* %call75, i8** %newtok, align 8, !dbg !4305, !tbaa !894
  %84 = load i8*, i8** %newtok, align 8, !dbg !4306, !tbaa !894
  %85 = load i8*, i8** %buf59, align 8, !dbg !4307, !tbaa !894
  %call76 = call i8* @strcpy(i8* %84, i8* %85) #2, !dbg !4308
  br label %do.body.77, !dbg !4309

do.body.77:                                       ; preds = %if.end.74
  %86 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !4310
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !4310
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp78, metadata !765, metadata !898), !dbg !4312
  %87 = load %struct._object*, %struct._object** %u, align 8, !dbg !4313, !tbaa !894
  store %struct._object* %87, %struct._object** %_py_decref_tmp78, align 8, !dbg !4312, !tbaa !894
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4314, !tbaa !894
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !4316
  %89 = load i64, i64* %ob_refcnt79, align 8, !dbg !4317, !tbaa !1277
  %dec80 = add i64 %89, -1, !dbg !4317
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !4317, !tbaa !1277
  %cmp81 = icmp ne i64 %dec80, 0, !dbg !4318
  br i1 %cmp81, label %if.then.83, label %if.else.84, !dbg !4319

if.then.83:                                       ; preds = %do.body.77
  br label %if.end.87, !dbg !4320

if.else.84:                                       ; preds = %do.body.77
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4322, !tbaa !894
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !4324
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !4324, !tbaa !1287
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !4325
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !4325, !tbaa !1289
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4326, !tbaa !894
  call void %92(%struct._object* %93), !dbg !4327
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  %94 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !4328
  br label %do.cond.88, !dbg !4330

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !4331

do.end.89:                                        ; preds = %do.cond.88
  store i32 0, i32* %cleanup.dest.slot, !dbg !4333
  br label %cleanup.90, !dbg !4333

cleanup.90:                                       ; preds = %do.end.89, %do.end, %if.then.63
  %95 = bitcast %struct._object** %u to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !4334
  %96 = bitcast i8** %buf59 to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !4334
  %97 = bitcast i64* %buflen to i8*, !dbg !4334
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !4334
  %cleanup.dest.93 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.90
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.93, 0
  br i1 %SwitchLeaf3, label %cleanup.cont.94, label %NewDefault.1

cleanup.cont.94:                                  ; preds = %LeafBlock.2
  br label %if.end.95, !dbg !4335

if.end.95:                                        ; preds = %cleanup.cont.94, %land.lhs.true.55, %land.lhs.true, %if.end.53
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4336, !tbaa !894
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 13, !dbg !4338
  %99 = load i8*, i8** %nextprompt, align 8, !dbg !4338, !tbaa !1004
  %cmp96 = icmp ne i8* %99, null, !dbg !4339
  br i1 %cmp96, label %if.then.98, label %if.end.101, !dbg !4340

if.then.98:                                       ; preds = %if.end.95
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4341, !tbaa !894
  %nextprompt99 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 13, !dbg !4342
  %101 = load i8*, i8** %nextprompt99, align 8, !dbg !4342, !tbaa !1004
  %102 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4343, !tbaa !894
  %prompt100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %102, i32 0, i32 12, !dbg !4344
  store i8* %101, i8** %prompt100, align 8, !dbg !4345, !tbaa !1008
  br label %if.end.101, !dbg !4343

if.end.101:                                       ; preds = %if.then.98, %if.end.95
  %103 = load i8*, i8** %newtok, align 8, !dbg !4346, !tbaa !894
  %cmp102 = icmp eq i8* %103, null, !dbg !4347
  br i1 %cmp102, label %if.then.104, label %if.else.106, !dbg !4348

if.then.104:                                      ; preds = %if.end.101
  %104 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4349, !tbaa !894
  %done105 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %104, i32 0, i32 5, !dbg !4350
  store i32 12, i32* %done105, align 4, !dbg !4351, !tbaa !973
  br label %if.end.187, !dbg !4349

if.else.106:                                      ; preds = %if.end.101
  %105 = load i8*, i8** %newtok, align 8, !dbg !4352, !tbaa !894
  %106 = load i8, i8* %105, align 1, !dbg !4353, !tbaa !1146
  %conv107 = sext i8 %106 to i32, !dbg !4353
  %cmp108 = icmp eq i32 %conv107, 0, !dbg !4354
  br i1 %cmp108, label %if.then.110, label %if.else.112, !dbg !4355

if.then.110:                                      ; preds = %if.else.106
  %107 = load i8*, i8** %newtok, align 8, !dbg !4356, !tbaa !894
  call void @PyMem_Free(i8* %107), !dbg !4358
  %108 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4359, !tbaa !894
  %done111 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %108, i32 0, i32 5, !dbg !4360
  store i32 11, i32* %done111, align 4, !dbg !4361, !tbaa !973
  br label %if.end.186, !dbg !4362

if.else.112:                                      ; preds = %if.else.106
  %109 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4363, !tbaa !894
  %start113 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %109, i32 0, i32 4, !dbg !4364
  %110 = load i8*, i8** %start113, align 8, !dbg !4364, !tbaa !957
  %cmp114 = icmp ne i8* %110, null, !dbg !4365
  br i1 %cmp114, label %if.then.116, label %if.else.163, !dbg !4366

if.then.116:                                      ; preds = %if.else.112
  %111 = bitcast i64* %start117 to i8*, !dbg !4367
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !4367
  call void @llvm.dbg.declare(metadata i64* %start117, metadata !767, metadata !898), !dbg !4368
  %112 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4369, !tbaa !894
  %start118 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %112, i32 0, i32 4, !dbg !4370
  %113 = load i8*, i8** %start118, align 8, !dbg !4370, !tbaa !957
  %114 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4371, !tbaa !894
  %buf119 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %114, i32 0, i32 0, !dbg !4372
  %115 = load i8*, i8** %buf119, align 8, !dbg !4372, !tbaa !941
  %sub.ptr.lhs.cast = ptrtoint i8* %113 to i64, !dbg !4373
  %sub.ptr.rhs.cast = ptrtoint i8* %115 to i64, !dbg !4373
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4373
  store i64 %sub.ptr.sub, i64* %start117, align 8, !dbg !4368, !tbaa !1484
  %116 = bitcast i64* %oldlen to i8*, !dbg !4374
  call void @llvm.lifetime.start(i64 8, i8* %116) #2, !dbg !4374
  call void @llvm.dbg.declare(metadata i64* %oldlen, metadata !772, metadata !898), !dbg !4375
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4376, !tbaa !894
  %cur120 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %117, i32 0, i32 1, !dbg !4377
  %118 = load i8*, i8** %cur120, align 8, !dbg !4377, !tbaa !937
  %119 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4378, !tbaa !894
  %buf121 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %119, i32 0, i32 0, !dbg !4379
  %120 = load i8*, i8** %buf121, align 8, !dbg !4379, !tbaa !941
  %sub.ptr.lhs.cast122 = ptrtoint i8* %118 to i64, !dbg !4380
  %sub.ptr.rhs.cast123 = ptrtoint i8* %120 to i64, !dbg !4380
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123, !dbg !4380
  store i64 %sub.ptr.sub124, i64* %oldlen, align 8, !dbg !4375, !tbaa !1484
  %121 = bitcast i64* %newlen to i8*, !dbg !4381
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !4381
  call void @llvm.dbg.declare(metadata i64* %newlen, metadata !773, metadata !898), !dbg !4382
  %122 = load i64, i64* %oldlen, align 8, !dbg !4383, !tbaa !1484
  %123 = load i8*, i8** %newtok, align 8, !dbg !4384, !tbaa !894
  %call125 = call i64 @strlen(i8* %123) #9, !dbg !4385
  %add126 = add i64 %122, %call125, !dbg !4386
  store i64 %add126, i64* %newlen, align 8, !dbg !4382, !tbaa !1484
  %124 = bitcast i8** %buf127 to i8*, !dbg !4387
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !4387
  call void @llvm.dbg.declare(metadata i8** %buf127, metadata !774, metadata !898), !dbg !4388
  %125 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4389, !tbaa !894
  %buf128 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %125, i32 0, i32 0, !dbg !4390
  %126 = load i8*, i8** %buf128, align 8, !dbg !4390, !tbaa !941
  store i8* %126, i8** %buf127, align 8, !dbg !4388, !tbaa !894
  %127 = load i8*, i8** %buf127, align 8, !dbg !4391, !tbaa !894
  %128 = load i64, i64* %newlen, align 8, !dbg !4392, !tbaa !1484
  %add129 = add i64 %128, 1, !dbg !4393
  %call130 = call i8* @PyMem_Realloc(i8* %127, i64 %add129), !dbg !4394
  store i8* %call130, i8** %buf127, align 8, !dbg !4395, !tbaa !894
  %129 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4396, !tbaa !894
  %lineno131 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %129, i32 0, i32 14, !dbg !4397
  %130 = load i32, i32* %lineno131, align 4, !dbg !4398, !tbaa !1012
  %inc132 = add i32 %130, 1, !dbg !4398
  store i32 %inc132, i32* %lineno131, align 4, !dbg !4398, !tbaa !1012
  %131 = load i8*, i8** %buf127, align 8, !dbg !4399, !tbaa !894
  %cmp133 = icmp eq i8* %131, null, !dbg !4401
  br i1 %cmp133, label %if.then.135, label %if.end.139, !dbg !4402

if.then.135:                                      ; preds = %if.then.116
  %132 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4403, !tbaa !894
  %buf136 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %132, i32 0, i32 0, !dbg !4405
  %133 = load i8*, i8** %buf136, align 8, !dbg !4405, !tbaa !941
  call void @PyMem_Free(i8* %133), !dbg !4406
  %134 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4407, !tbaa !894
  %buf137 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %134, i32 0, i32 0, !dbg !4408
  store i8* null, i8** %buf137, align 8, !dbg !4409, !tbaa !941
  %135 = load i8*, i8** %newtok, align 8, !dbg !4410, !tbaa !894
  call void @PyMem_Free(i8* %135), !dbg !4411
  %136 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4412, !tbaa !894
  %done138 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %136, i32 0, i32 5, !dbg !4413
  store i32 15, i32* %done138, align 4, !dbg !4414, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !4415

if.end.139:                                       ; preds = %if.then.116
  %137 = load i8*, i8** %buf127, align 8, !dbg !4416, !tbaa !894
  %138 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4417, !tbaa !894
  %buf140 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %138, i32 0, i32 0, !dbg !4418
  store i8* %137, i8** %buf140, align 8, !dbg !4419, !tbaa !941
  %139 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4420, !tbaa !894
  %buf141 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %139, i32 0, i32 0, !dbg !4421
  %140 = load i8*, i8** %buf141, align 8, !dbg !4421, !tbaa !941
  %141 = load i64, i64* %oldlen, align 8, !dbg !4422, !tbaa !1484
  %add.ptr = getelementptr i8, i8* %140, i64 %141, !dbg !4423
  %142 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4424, !tbaa !894
  %cur142 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %142, i32 0, i32 1, !dbg !4425
  store i8* %add.ptr, i8** %cur142, align 8, !dbg !4426, !tbaa !937
  %143 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4427, !tbaa !894
  %cur143 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %143, i32 0, i32 1, !dbg !4428
  %144 = load i8*, i8** %cur143, align 8, !dbg !4428, !tbaa !937
  %145 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4429, !tbaa !894
  %line_start144 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %145, i32 0, i32 26, !dbg !4430
  store i8* %144, i8** %line_start144, align 8, !dbg !4431, !tbaa !4182
  %146 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4432, !tbaa !894
  %buf145 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %146, i32 0, i32 0, !dbg !4433
  %147 = load i8*, i8** %buf145, align 8, !dbg !4433, !tbaa !941
  %148 = load i64, i64* %oldlen, align 8, !dbg !4434, !tbaa !1484
  %add.ptr146 = getelementptr i8, i8* %147, i64 %148, !dbg !4435
  %149 = load i8*, i8** %newtok, align 8, !dbg !4436, !tbaa !894
  %call147 = call i8* @strcpy(i8* %add.ptr146, i8* %149) #2, !dbg !4437
  %150 = load i8*, i8** %newtok, align 8, !dbg !4438, !tbaa !894
  call void @PyMem_Free(i8* %150), !dbg !4439
  %151 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4440, !tbaa !894
  %buf148 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %151, i32 0, i32 0, !dbg !4441
  %152 = load i8*, i8** %buf148, align 8, !dbg !4441, !tbaa !941
  %153 = load i64, i64* %newlen, align 8, !dbg !4442, !tbaa !1484
  %add.ptr149 = getelementptr i8, i8* %152, i64 %153, !dbg !4443
  %154 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4444, !tbaa !894
  %inp150 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %154, i32 0, i32 2, !dbg !4445
  store i8* %add.ptr149, i8** %inp150, align 8, !dbg !4446, !tbaa !928
  %155 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4447, !tbaa !894
  %inp151 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %155, i32 0, i32 2, !dbg !4448
  %156 = load i8*, i8** %inp151, align 8, !dbg !4448, !tbaa !928
  %add.ptr152 = getelementptr i8, i8* %156, i64 1, !dbg !4449
  %157 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4450, !tbaa !894
  %end153 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %157, i32 0, i32 3, !dbg !4451
  store i8* %add.ptr152, i8** %end153, align 8, !dbg !4452, !tbaa !933
  %158 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4453, !tbaa !894
  %buf154 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %158, i32 0, i32 0, !dbg !4454
  %159 = load i8*, i8** %buf154, align 8, !dbg !4454, !tbaa !941
  %160 = load i64, i64* %start117, align 8, !dbg !4455, !tbaa !1484
  %add.ptr155 = getelementptr i8, i8* %159, i64 %160, !dbg !4456
  %161 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4457, !tbaa !894
  %start156 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %161, i32 0, i32 4, !dbg !4458
  store i8* %add.ptr155, i8** %start156, align 8, !dbg !4459, !tbaa !957
  store i32 0, i32* %cleanup.dest.slot, !dbg !4460
  br label %cleanup.157, !dbg !4460

cleanup.157:                                      ; preds = %if.end.139, %if.then.135
  %162 = bitcast i8** %buf127 to i8*, !dbg !4461
  call void @llvm.lifetime.end(i64 8, i8* %162) #2, !dbg !4461
  %163 = bitcast i64* %newlen to i8*, !dbg !4461
  call void @llvm.lifetime.end(i64 8, i8* %163) #2, !dbg !4461
  %164 = bitcast i64* %oldlen to i8*, !dbg !4461
  call void @llvm.lifetime.end(i64 8, i8* %164) #2, !dbg !4461
  %165 = bitcast i64* %start117 to i8*, !dbg !4461
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !4461
  %cleanup.dest.161 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.5

LeafBlock.5:                                      ; preds = %cleanup.157
  %SwitchLeaf6 = icmp eq i32 %cleanup.dest.161, 0
  br i1 %SwitchLeaf6, label %cleanup.cont.162, label %NewDefault.4

cleanup.cont.162:                                 ; preds = %LeafBlock.5
  br label %if.end.185, !dbg !4463

if.else.163:                                      ; preds = %if.else.112
  %166 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4464, !tbaa !894
  %lineno164 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %166, i32 0, i32 14, !dbg !4466
  %167 = load i32, i32* %lineno164, align 4, !dbg !4467, !tbaa !1012
  %inc165 = add i32 %167, 1, !dbg !4467
  store i32 %inc165, i32* %lineno164, align 4, !dbg !4467, !tbaa !1012
  %168 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4468, !tbaa !894
  %buf166 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %168, i32 0, i32 0, !dbg !4470
  %169 = load i8*, i8** %buf166, align 8, !dbg !4470, !tbaa !941
  %cmp167 = icmp ne i8* %169, null, !dbg !4471
  br i1 %cmp167, label %if.then.169, label %if.end.171, !dbg !4472

if.then.169:                                      ; preds = %if.else.163
  %170 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4473, !tbaa !894
  %buf170 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %170, i32 0, i32 0, !dbg !4474
  %171 = load i8*, i8** %buf170, align 8, !dbg !4474, !tbaa !941
  call void @PyMem_Free(i8* %171), !dbg !4475
  br label %if.end.171, !dbg !4475

if.end.171:                                       ; preds = %if.then.169, %if.else.163
  %172 = load i8*, i8** %newtok, align 8, !dbg !4476, !tbaa !894
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4477, !tbaa !894
  %buf172 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 0, !dbg !4478
  store i8* %172, i8** %buf172, align 8, !dbg !4479, !tbaa !941
  %174 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4480, !tbaa !894
  %buf173 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %174, i32 0, i32 0, !dbg !4481
  %175 = load i8*, i8** %buf173, align 8, !dbg !4481, !tbaa !941
  %176 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4482, !tbaa !894
  %line_start174 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %176, i32 0, i32 26, !dbg !4483
  store i8* %175, i8** %line_start174, align 8, !dbg !4484, !tbaa !4182
  %177 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4485, !tbaa !894
  %buf175 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %177, i32 0, i32 0, !dbg !4486
  %178 = load i8*, i8** %buf175, align 8, !dbg !4486, !tbaa !941
  %179 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4487, !tbaa !894
  %cur176 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %179, i32 0, i32 1, !dbg !4488
  store i8* %178, i8** %cur176, align 8, !dbg !4489, !tbaa !937
  %180 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4490, !tbaa !894
  %buf177 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %180, i32 0, i32 0, !dbg !4491
  %181 = load i8*, i8** %buf177, align 8, !dbg !4491, !tbaa !941
  %182 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4492, !tbaa !894
  %line_start178 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %182, i32 0, i32 26, !dbg !4493
  store i8* %181, i8** %line_start178, align 8, !dbg !4494, !tbaa !4182
  %183 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4495, !tbaa !894
  %buf179 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %183, i32 0, i32 0, !dbg !4496
  %184 = load i8*, i8** %buf179, align 8, !dbg !4496, !tbaa !941
  %call180 = call i8* @__rawmemchr(i8* %184, i32 0), !dbg !4497
  %185 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4498, !tbaa !894
  %inp181 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %185, i32 0, i32 2, !dbg !4499
  store i8* %call180, i8** %inp181, align 8, !dbg !4500, !tbaa !928
  %186 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4501, !tbaa !894
  %inp182 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %186, i32 0, i32 2, !dbg !4502
  %187 = load i8*, i8** %inp182, align 8, !dbg !4502, !tbaa !928
  %add.ptr183 = getelementptr i8, i8* %187, i64 1, !dbg !4503
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4504, !tbaa !894
  %end184 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %188, i32 0, i32 3, !dbg !4505
  store i8* %add.ptr183, i8** %end184, align 8, !dbg !4506, !tbaa !933
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.171, %cleanup.cont.162
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.110
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.104
  store i32 0, i32* %cleanup.dest.slot, !dbg !4507
  br label %cleanup.188, !dbg !4507

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.188

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.188

NewDefault.4:                                     ; preds = %LeafBlock.5
  br label %cleanup.188

cleanup.188:                                      ; preds = %NewDefault.4, %NewDefault.1, %NewDefault, %if.end.187
  %189 = bitcast i8** %newtok to i8*, !dbg !4508
  call void @llvm.lifetime.end(i64 8, i8* %189) #2, !dbg !4508
  %cleanup.dest.189 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup.188
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest.189, 1
  br i1 %SwitchLeaf9, label %return, label %NewDefault.7

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.cont.190

cleanup.cont.190:                                 ; preds = %NewDefault.7
  br label %if.end.351, !dbg !4510

if.else.191:                                      ; preds = %if.end.38
  %190 = bitcast i32* %done192 to i8*, !dbg !4511
  call void @llvm.lifetime.start(i64 4, i8* %190) #2, !dbg !4511
  call void @llvm.dbg.declare(metadata i32* %done192, metadata !775, metadata !898), !dbg !4512
  store i32 0, i32* %done192, align 4, !dbg !4512, !tbaa !900
  %191 = bitcast i64* %cur193 to i8*, !dbg !4513
  call void @llvm.lifetime.start(i64 8, i8* %191) #2, !dbg !4513
  call void @llvm.dbg.declare(metadata i64* %cur193, metadata !777, metadata !898), !dbg !4514
  store i64 0, i64* %cur193, align 8, !dbg !4514, !tbaa !1484
  %192 = bitcast i8** %pt to i8*, !dbg !4515
  call void @llvm.lifetime.start(i64 8, i8* %192) #2, !dbg !4515
  call void @llvm.dbg.declare(metadata i8** %pt, metadata !778, metadata !898), !dbg !4516
  %193 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4517, !tbaa !894
  %start194 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %193, i32 0, i32 4, !dbg !4519
  %194 = load i8*, i8** %start194, align 8, !dbg !4519, !tbaa !957
  %cmp195 = icmp eq i8* %194, null, !dbg !4520
  br i1 %cmp195, label %if.then.197, label %if.else.236, !dbg !4521

if.then.197:                                      ; preds = %if.else.191
  %195 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4522, !tbaa !894
  %buf198 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %195, i32 0, i32 0, !dbg !4525
  %196 = load i8*, i8** %buf198, align 8, !dbg !4525, !tbaa !941
  %cmp199 = icmp eq i8* %196, null, !dbg !4526
  br i1 %cmp199, label %if.then.201, label %if.end.213, !dbg !4527

if.then.201:                                      ; preds = %if.then.197
  %call202 = call i8* @PyMem_Malloc(i64 8192), !dbg !4528
  %197 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4530, !tbaa !894
  %buf203 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %197, i32 0, i32 0, !dbg !4531
  store i8* %call202, i8** %buf203, align 8, !dbg !4532, !tbaa !941
  %198 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4533, !tbaa !894
  %buf204 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %198, i32 0, i32 0, !dbg !4535
  %199 = load i8*, i8** %buf204, align 8, !dbg !4535, !tbaa !941
  %cmp205 = icmp eq i8* %199, null, !dbg !4536
  br i1 %cmp205, label %if.then.207, label %if.end.209, !dbg !4537

if.then.207:                                      ; preds = %if.then.201
  %200 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4538, !tbaa !894
  %done208 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %200, i32 0, i32 5, !dbg !4540
  store i32 15, i32* %done208, align 4, !dbg !4541, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4542
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346, !dbg !4542

if.end.209:                                       ; preds = %if.then.201
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4543, !tbaa !894
  %buf210 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %201, i32 0, i32 0, !dbg !4544
  %202 = load i8*, i8** %buf210, align 8, !dbg !4544, !tbaa !941
  %add.ptr211 = getelementptr i8, i8* %202, i64 8192, !dbg !4545
  %203 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4546, !tbaa !894
  %end212 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %203, i32 0, i32 3, !dbg !4547
  store i8* %add.ptr211, i8** %end212, align 8, !dbg !4548, !tbaa !933
  br label %if.end.213, !dbg !4549

if.end.213:                                       ; preds = %if.end.209, %if.then.197
  %204 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4550, !tbaa !894
  %buf214 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %204, i32 0, i32 0, !dbg !4552
  %205 = load i8*, i8** %buf214, align 8, !dbg !4552, !tbaa !941
  %206 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4553, !tbaa !894
  %end215 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %206, i32 0, i32 3, !dbg !4554
  %207 = load i8*, i8** %end215, align 8, !dbg !4554, !tbaa !933
  %208 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4555, !tbaa !894
  %buf216 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %208, i32 0, i32 0, !dbg !4556
  %209 = load i8*, i8** %buf216, align 8, !dbg !4556, !tbaa !941
  %sub.ptr.lhs.cast217 = ptrtoint i8* %207 to i64, !dbg !4557
  %sub.ptr.rhs.cast218 = ptrtoint i8* %209 to i64, !dbg !4557
  %sub.ptr.sub219 = sub i64 %sub.ptr.lhs.cast217, %sub.ptr.rhs.cast218, !dbg !4557
  %conv220 = trunc i64 %sub.ptr.sub219 to i32, !dbg !4558
  %210 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4559, !tbaa !894
  %call221 = call i8* @decoding_fgets(i8* %205, i32 %conv220, %struct.tok_state* %210), !dbg !4560
  %cmp222 = icmp eq i8* %call221, null, !dbg !4561
  br i1 %cmp222, label %if.then.224, label %if.else.226, !dbg !4562

if.then.224:                                      ; preds = %if.end.213
  %211 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4563, !tbaa !894
  %done225 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %211, i32 0, i32 5, !dbg !4565
  store i32 11, i32* %done225, align 4, !dbg !4566, !tbaa !973
  store i32 1, i32* %done192, align 4, !dbg !4567, !tbaa !900
  br label %if.end.235, !dbg !4568

if.else.226:                                      ; preds = %if.end.213
  %212 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4569, !tbaa !894
  %done227 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %212, i32 0, i32 5, !dbg !4571
  store i32 10, i32* %done227, align 4, !dbg !4572, !tbaa !973
  %213 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4573, !tbaa !894
  %buf228 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %213, i32 0, i32 0, !dbg !4574
  %214 = load i8*, i8** %buf228, align 8, !dbg !4574, !tbaa !941
  %call229 = call i8* @__rawmemchr(i8* %214, i32 0), !dbg !4575
  %215 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4576, !tbaa !894
  %inp230 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %215, i32 0, i32 2, !dbg !4577
  store i8* %call229, i8** %inp230, align 8, !dbg !4578, !tbaa !928
  %216 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4579, !tbaa !894
  %inp231 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %216, i32 0, i32 2, !dbg !4580
  %217 = load i8*, i8** %inp231, align 8, !dbg !4580, !tbaa !928
  %arrayidx = getelementptr i8, i8* %217, i64 -1, !dbg !4579
  %218 = load i8, i8* %arrayidx, align 1, !dbg !4579, !tbaa !1146
  %conv232 = sext i8 %218 to i32, !dbg !4579
  %cmp233 = icmp eq i32 %conv232, 10, !dbg !4581
  %conv234 = zext i1 %cmp233 to i32, !dbg !4581
  store i32 %conv234, i32* %done192, align 4, !dbg !4582, !tbaa !900
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.226, %if.then.224
  br label %if.end.249, !dbg !4583

if.else.236:                                      ; preds = %if.else.191
  %219 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4584, !tbaa !894
  %cur237 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %219, i32 0, i32 1, !dbg !4586
  %220 = load i8*, i8** %cur237, align 8, !dbg !4586, !tbaa !937
  %221 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4587, !tbaa !894
  %buf238 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %221, i32 0, i32 0, !dbg !4588
  %222 = load i8*, i8** %buf238, align 8, !dbg !4588, !tbaa !941
  %sub.ptr.lhs.cast239 = ptrtoint i8* %220 to i64, !dbg !4589
  %sub.ptr.rhs.cast240 = ptrtoint i8* %222 to i64, !dbg !4589
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240, !dbg !4589
  store i64 %sub.ptr.sub241, i64* %cur193, align 8, !dbg !4590, !tbaa !1484
  %223 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4591, !tbaa !894
  %call242 = call i32 @decoding_feof(%struct.tok_state* %223), !dbg !4593
  %tobool243 = icmp ne i32 %call242, 0, !dbg !4593
  br i1 %tobool243, label %if.then.244, label %if.else.246, !dbg !4594

if.then.244:                                      ; preds = %if.else.236
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4595, !tbaa !894
  %done245 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %224, i32 0, i32 5, !dbg !4597
  store i32 11, i32* %done245, align 4, !dbg !4598, !tbaa !973
  store i32 1, i32* %done192, align 4, !dbg !4599, !tbaa !900
  br label %if.end.248, !dbg !4600

if.else.246:                                      ; preds = %if.else.236
  %225 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4601, !tbaa !894
  %done247 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %225, i32 0, i32 5, !dbg !4602
  store i32 10, i32* %done247, align 4, !dbg !4603, !tbaa !973
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.246, %if.then.244
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.235
  %226 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4604, !tbaa !894
  %lineno250 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %226, i32 0, i32 14, !dbg !4605
  %227 = load i32, i32* %lineno250, align 4, !dbg !4606, !tbaa !1012
  %inc251 = add i32 %227, 1, !dbg !4606
  store i32 %inc251, i32* %lineno250, align 4, !dbg !4606, !tbaa !1012
  br label %while.cond, !dbg !4607

while.cond:                                       ; preds = %cleanup.cont.322, %if.end.249
  %228 = load i32, i32* %done192, align 4, !dbg !4608, !tbaa !900
  %tobool252 = icmp ne i32 %228, 0, !dbg !4611
  %lnot = xor i1 %tobool252, true, !dbg !4611
  br i1 %lnot, label %while.body, label %while.end, !dbg !4607

while.body:                                       ; preds = %while.cond
  %229 = bitcast i64* %curstart to i8*, !dbg !4612
  call void @llvm.lifetime.start(i64 8, i8* %229) #2, !dbg !4612
  call void @llvm.dbg.declare(metadata i64* %curstart, metadata !779, metadata !898), !dbg !4613
  %230 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4614, !tbaa !894
  %start253 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %230, i32 0, i32 4, !dbg !4615
  %231 = load i8*, i8** %start253, align 8, !dbg !4615, !tbaa !957
  %cmp254 = icmp eq i8* %231, null, !dbg !4616
  br i1 %cmp254, label %cond.true, label %cond.false, !dbg !4614

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !4617

cond.false:                                       ; preds = %while.body
  %232 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4619, !tbaa !894
  %start256 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %232, i32 0, i32 4, !dbg !4620
  %233 = load i8*, i8** %start256, align 8, !dbg !4620, !tbaa !957
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4621, !tbaa !894
  %buf257 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %234, i32 0, i32 0, !dbg !4622
  %235 = load i8*, i8** %buf257, align 8, !dbg !4622, !tbaa !941
  %sub.ptr.lhs.cast258 = ptrtoint i8* %233 to i64, !dbg !4623
  %sub.ptr.rhs.cast259 = ptrtoint i8* %235 to i64, !dbg !4623
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259, !dbg !4623
  br label %cond.end, !dbg !4614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub.ptr.sub260, %cond.false ], !dbg !4614
  store i64 %cond, i64* %curstart, align 8, !dbg !4624, !tbaa !1484
  %236 = bitcast i64* %curvalid to i8*, !dbg !4627
  call void @llvm.lifetime.start(i64 8, i8* %236) #2, !dbg !4627
  call void @llvm.dbg.declare(metadata i64* %curvalid, metadata !781, metadata !898), !dbg !4628
  %237 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4629, !tbaa !894
  %inp261 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %237, i32 0, i32 2, !dbg !4630
  %238 = load i8*, i8** %inp261, align 8, !dbg !4630, !tbaa !928
  %239 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4631, !tbaa !894
  %buf262 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %239, i32 0, i32 0, !dbg !4632
  %240 = load i8*, i8** %buf262, align 8, !dbg !4632, !tbaa !941
  %sub.ptr.lhs.cast263 = ptrtoint i8* %238 to i64, !dbg !4633
  %sub.ptr.rhs.cast264 = ptrtoint i8* %240 to i64, !dbg !4633
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast263, %sub.ptr.rhs.cast264, !dbg !4633
  store i64 %sub.ptr.sub265, i64* %curvalid, align 8, !dbg !4628, !tbaa !1484
  %241 = bitcast i64* %newsize to i8*, !dbg !4634
  call void @llvm.lifetime.start(i64 8, i8* %241) #2, !dbg !4634
  call void @llvm.dbg.declare(metadata i64* %newsize, metadata !782, metadata !898), !dbg !4635
  %242 = load i64, i64* %curvalid, align 8, !dbg !4636, !tbaa !1484
  %add266 = add i64 %242, 8192, !dbg !4637
  store i64 %add266, i64* %newsize, align 8, !dbg !4635, !tbaa !1484
  %243 = bitcast i8** %newbuf to i8*, !dbg !4638
  call void @llvm.lifetime.start(i64 8, i8* %243) #2, !dbg !4638
  call void @llvm.dbg.declare(metadata i8** %newbuf, metadata !783, metadata !898), !dbg !4639
  %244 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4640, !tbaa !894
  %buf267 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %244, i32 0, i32 0, !dbg !4641
  %245 = load i8*, i8** %buf267, align 8, !dbg !4641, !tbaa !941
  store i8* %245, i8** %newbuf, align 8, !dbg !4639, !tbaa !894
  %246 = load i8*, i8** %newbuf, align 8, !dbg !4642, !tbaa !894
  %247 = load i64, i64* %newsize, align 8, !dbg !4643, !tbaa !1484
  %call268 = call i8* @PyMem_Realloc(i8* %246, i64 %247), !dbg !4644
  store i8* %call268, i8** %newbuf, align 8, !dbg !4645, !tbaa !894
  %248 = load i8*, i8** %newbuf, align 8, !dbg !4646, !tbaa !894
  %cmp269 = icmp eq i8* %248, null, !dbg !4648
  br i1 %cmp269, label %if.then.271, label %if.end.275, !dbg !4649

if.then.271:                                      ; preds = %cond.end
  %249 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4650, !tbaa !894
  %done272 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %249, i32 0, i32 5, !dbg !4652
  store i32 15, i32* %done272, align 4, !dbg !4653, !tbaa !973
  %250 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4654, !tbaa !894
  %inp273 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %250, i32 0, i32 2, !dbg !4655
  %251 = load i8*, i8** %inp273, align 8, !dbg !4655, !tbaa !928
  %252 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4656, !tbaa !894
  %cur274 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %252, i32 0, i32 1, !dbg !4657
  store i8* %251, i8** %cur274, align 8, !dbg !4658, !tbaa !937
  store i32 -1, i32* %retval, !dbg !4659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.317, !dbg !4659

if.end.275:                                       ; preds = %cond.end
  %253 = load i8*, i8** %newbuf, align 8, !dbg !4660, !tbaa !894
  %254 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4661, !tbaa !894
  %buf276 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %254, i32 0, i32 0, !dbg !4662
  store i8* %253, i8** %buf276, align 8, !dbg !4663, !tbaa !941
  %255 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4664, !tbaa !894
  %buf277 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %255, i32 0, i32 0, !dbg !4665
  %256 = load i8*, i8** %buf277, align 8, !dbg !4665, !tbaa !941
  %257 = load i64, i64* %curvalid, align 8, !dbg !4666, !tbaa !1484
  %add.ptr278 = getelementptr i8, i8* %256, i64 %257, !dbg !4667
  %258 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4668, !tbaa !894
  %inp279 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %258, i32 0, i32 2, !dbg !4669
  store i8* %add.ptr278, i8** %inp279, align 8, !dbg !4670, !tbaa !928
  %259 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4671, !tbaa !894
  %buf280 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %259, i32 0, i32 0, !dbg !4672
  %260 = load i8*, i8** %buf280, align 8, !dbg !4672, !tbaa !941
  %261 = load i64, i64* %newsize, align 8, !dbg !4673, !tbaa !1484
  %add.ptr281 = getelementptr i8, i8* %260, i64 %261, !dbg !4674
  %262 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4675, !tbaa !894
  %end282 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %262, i32 0, i32 3, !dbg !4676
  store i8* %add.ptr281, i8** %end282, align 8, !dbg !4677, !tbaa !933
  %263 = load i64, i64* %curstart, align 8, !dbg !4678, !tbaa !1484
  %cmp283 = icmp slt i64 %263, 0, !dbg !4679
  br i1 %cmp283, label %cond.true.285, label %cond.false.286, !dbg !4678

cond.true.285:                                    ; preds = %if.end.275
  br label %cond.end.289, !dbg !4680

cond.false.286:                                   ; preds = %if.end.275
  %264 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4681, !tbaa !894
  %buf287 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %264, i32 0, i32 0, !dbg !4682
  %265 = load i8*, i8** %buf287, align 8, !dbg !4682, !tbaa !941
  %266 = load i64, i64* %curstart, align 8, !dbg !4683, !tbaa !1484
  %add.ptr288 = getelementptr i8, i8* %265, i64 %266, !dbg !4684
  br label %cond.end.289, !dbg !4678

cond.end.289:                                     ; preds = %cond.false.286, %cond.true.285
  %cond290 = phi i8* [ null, %cond.true.285 ], [ %add.ptr288, %cond.false.286 ], !dbg !4678
  %267 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4685, !tbaa !894
  %start291 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %267, i32 0, i32 4, !dbg !4686
  store i8* %cond290, i8** %start291, align 8, !dbg !4687, !tbaa !957
  %268 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4688, !tbaa !894
  %inp292 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %268, i32 0, i32 2, !dbg !4690
  %269 = load i8*, i8** %inp292, align 8, !dbg !4690, !tbaa !928
  %270 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4691, !tbaa !894
  %end293 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %270, i32 0, i32 3, !dbg !4692
  %271 = load i8*, i8** %end293, align 8, !dbg !4692, !tbaa !933
  %272 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4693, !tbaa !894
  %inp294 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %272, i32 0, i32 2, !dbg !4694
  %273 = load i8*, i8** %inp294, align 8, !dbg !4694, !tbaa !928
  %sub.ptr.lhs.cast295 = ptrtoint i8* %271 to i64, !dbg !4695
  %sub.ptr.rhs.cast296 = ptrtoint i8* %273 to i64, !dbg !4695
  %sub.ptr.sub297 = sub i64 %sub.ptr.lhs.cast295, %sub.ptr.rhs.cast296, !dbg !4695
  %conv298 = trunc i64 %sub.ptr.sub297 to i32, !dbg !4696
  %274 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4697, !tbaa !894
  %call299 = call i8* @decoding_fgets(i8* %269, i32 %conv298, %struct.tok_state* %274), !dbg !4698
  %cmp300 = icmp eq i8* %call299, null, !dbg !4699
  br i1 %cmp300, label %if.then.302, label %if.end.308, !dbg !4700

if.then.302:                                      ; preds = %cond.end.289
  %275 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4701, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %275, i32 0, i32 22, !dbg !4704
  %276 = load i32, i32* %decoding_erred, align 4, !dbg !4704, !tbaa !1039
  %tobool303 = icmp ne i32 %276, 0, !dbg !4701
  br i1 %tobool303, label %if.then.304, label %if.end.305, !dbg !4705

if.then.304:                                      ; preds = %if.then.302
  store i32 -1, i32* %retval, !dbg !4706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.317, !dbg !4706

if.end.305:                                       ; preds = %if.then.302
  %277 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4707, !tbaa !894
  %inp306 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %277, i32 0, i32 2, !dbg !4708
  %278 = load i8*, i8** %inp306, align 8, !dbg !4708, !tbaa !928
  %call307 = call i8* @strcpy(i8* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #2, !dbg !4709
  br label %if.end.308, !dbg !4710

if.end.308:                                       ; preds = %if.end.305, %cond.end.289
  %279 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4711, !tbaa !894
  %inp309 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %279, i32 0, i32 2, !dbg !4712
  %280 = load i8*, i8** %inp309, align 8, !dbg !4712, !tbaa !928
  %call310 = call i8* @__rawmemchr(i8* %280, i32 0), !dbg !4713
  %281 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4714, !tbaa !894
  %inp311 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %281, i32 0, i32 2, !dbg !4715
  store i8* %call310, i8** %inp311, align 8, !dbg !4716, !tbaa !928
  %282 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4717, !tbaa !894
  %inp312 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %282, i32 0, i32 2, !dbg !4718
  %283 = load i8*, i8** %inp312, align 8, !dbg !4718, !tbaa !928
  %arrayidx313 = getelementptr i8, i8* %283, i64 -1, !dbg !4717
  %284 = load i8, i8* %arrayidx313, align 1, !dbg !4717, !tbaa !1146
  %conv314 = sext i8 %284 to i32, !dbg !4717
  %cmp315 = icmp eq i32 %conv314, 10, !dbg !4719
  %conv316 = zext i1 %cmp315 to i32, !dbg !4719
  store i32 %conv316, i32* %done192, align 4, !dbg !4720, !tbaa !900
  store i32 0, i32* %cleanup.dest.slot, !dbg !4721
  br label %cleanup.317, !dbg !4721

cleanup.317:                                      ; preds = %if.end.308, %if.then.304, %if.then.271
  %285 = bitcast i8** %newbuf to i8*, !dbg !4722
  call void @llvm.lifetime.end(i64 8, i8* %285) #2, !dbg !4722
  %286 = bitcast i64* %newsize to i8*, !dbg !4722
  call void @llvm.lifetime.end(i64 8, i8* %286) #2, !dbg !4722
  %287 = bitcast i64* %curvalid to i8*, !dbg !4722
  call void @llvm.lifetime.end(i64 8, i8* %287) #2, !dbg !4722
  %288 = bitcast i64* %curstart to i8*, !dbg !4722
  call void @llvm.lifetime.end(i64 8, i8* %288) #2, !dbg !4722
  %cleanup.dest.321 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.11

LeafBlock.11:                                     ; preds = %cleanup.317
  %SwitchLeaf12 = icmp eq i32 %cleanup.dest.321, 0
  br i1 %SwitchLeaf12, label %cleanup.cont.322, label %NewDefault.10

cleanup.cont.322:                                 ; preds = %LeafBlock.11
  br label %while.cond, !dbg !4607

while.end:                                        ; preds = %while.cond
  %289 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4723, !tbaa !894
  %buf323 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %289, i32 0, i32 0, !dbg !4725
  %290 = load i8*, i8** %buf323, align 8, !dbg !4725, !tbaa !941
  %cmp324 = icmp ne i8* %290, null, !dbg !4726
  br i1 %cmp324, label %if.then.326, label %if.end.345, !dbg !4727

if.then.326:                                      ; preds = %while.end
  %291 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4728, !tbaa !894
  %buf327 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %291, i32 0, i32 0, !dbg !4730
  %292 = load i8*, i8** %buf327, align 8, !dbg !4730, !tbaa !941
  %293 = load i64, i64* %cur193, align 8, !dbg !4731, !tbaa !1484
  %add.ptr328 = getelementptr i8, i8* %292, i64 %293, !dbg !4732
  %294 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4733, !tbaa !894
  %cur329 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %294, i32 0, i32 1, !dbg !4734
  store i8* %add.ptr328, i8** %cur329, align 8, !dbg !4735, !tbaa !937
  %295 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4736, !tbaa !894
  %cur330 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %295, i32 0, i32 1, !dbg !4737
  %296 = load i8*, i8** %cur330, align 8, !dbg !4737, !tbaa !937
  %297 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4738, !tbaa !894
  %line_start331 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %297, i32 0, i32 26, !dbg !4739
  store i8* %296, i8** %line_start331, align 8, !dbg !4740, !tbaa !4182
  %298 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4741, !tbaa !894
  %inp332 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %298, i32 0, i32 2, !dbg !4742
  %299 = load i8*, i8** %inp332, align 8, !dbg !4742, !tbaa !928
  %add.ptr333 = getelementptr i8, i8* %299, i64 -2, !dbg !4743
  store i8* %add.ptr333, i8** %pt, align 8, !dbg !4744, !tbaa !894
  %300 = load i8*, i8** %pt, align 8, !dbg !4745, !tbaa !894
  %301 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4747, !tbaa !894
  %buf334 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %301, i32 0, i32 0, !dbg !4748
  %302 = load i8*, i8** %buf334, align 8, !dbg !4748, !tbaa !941
  %cmp335 = icmp uge i8* %300, %302, !dbg !4749
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.344, !dbg !4750

land.lhs.true.337:                                ; preds = %if.then.326
  %303 = load i8*, i8** %pt, align 8, !dbg !4751, !tbaa !894
  %304 = load i8, i8* %303, align 1, !dbg !4753, !tbaa !1146
  %conv338 = sext i8 %304 to i32, !dbg !4753
  %cmp339 = icmp eq i32 %conv338, 13, !dbg !4754
  br i1 %cmp339, label %if.then.341, label %if.end.344, !dbg !4755

if.then.341:                                      ; preds = %land.lhs.true.337
  %305 = load i8*, i8** %pt, align 8, !dbg !4756, !tbaa !894
  %incdec.ptr342 = getelementptr i8, i8* %305, i32 1, !dbg !4756
  store i8* %incdec.ptr342, i8** %pt, align 8, !dbg !4756, !tbaa !894
  store i8 10, i8* %305, align 1, !dbg !4758, !tbaa !1146
  %306 = load i8*, i8** %pt, align 8, !dbg !4759, !tbaa !894
  store i8 0, i8* %306, align 1, !dbg !4760, !tbaa !1146
  %307 = load i8*, i8** %pt, align 8, !dbg !4761, !tbaa !894
  %308 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4762, !tbaa !894
  %inp343 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %308, i32 0, i32 2, !dbg !4763
  store i8* %307, i8** %inp343, align 8, !dbg !4764, !tbaa !928
  br label %if.end.344, !dbg !4765

if.end.344:                                       ; preds = %if.then.341, %land.lhs.true.337, %if.then.326
  br label %if.end.345, !dbg !4766

if.end.345:                                       ; preds = %if.end.344, %while.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !4767
  br label %cleanup.346, !dbg !4767

NewDefault.10:                                    ; preds = %LeafBlock.11
  br label %cleanup.346

cleanup.346:                                      ; preds = %NewDefault.10, %if.end.345, %if.then.207
  %309 = bitcast i8** %pt to i8*, !dbg !4768
  call void @llvm.lifetime.end(i64 8, i8* %309) #2, !dbg !4768
  %310 = bitcast i64* %cur193 to i8*, !dbg !4768
  call void @llvm.lifetime.end(i64 8, i8* %310) #2, !dbg !4768
  %311 = bitcast i32* %done192 to i8*, !dbg !4768
  call void @llvm.lifetime.end(i64 4, i8* %311) #2, !dbg !4768
  %cleanup.dest.349 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.14

LeafBlock.14:                                     ; preds = %cleanup.346
  %SwitchLeaf15 = icmp eq i32 %cleanup.dest.349, 1
  br i1 %SwitchLeaf15, label %return, label %NewDefault.13

NewDefault.13:                                    ; preds = %LeafBlock.14
  br label %cleanup.cont.350

cleanup.cont.350:                                 ; preds = %NewDefault.13
  br label %if.end.351

if.end.351:                                       ; preds = %cleanup.cont.350, %cleanup.cont.190
  %312 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4769, !tbaa !894
  %done352 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %312, i32 0, i32 5, !dbg !4771
  %313 = load i32, i32* %done352, align 4, !dbg !4771, !tbaa !973
  %cmp353 = icmp ne i32 %313, 10, !dbg !4772
  br i1 %cmp353, label %if.then.355, label %if.end.363, !dbg !4773

if.then.355:                                      ; preds = %if.end.351
  %314 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4774, !tbaa !894
  %prompt356 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %314, i32 0, i32 12, !dbg !4777
  %315 = load i8*, i8** %prompt356, align 8, !dbg !4777, !tbaa !1008
  %cmp357 = icmp ne i8* %315, null, !dbg !4778
  br i1 %cmp357, label %if.then.359, label %if.end.360, !dbg !4779

if.then.359:                                      ; preds = %if.then.355
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)), !dbg !4780
  br label %if.end.360, !dbg !4780

if.end.360:                                       ; preds = %if.then.359, %if.then.355
  %316 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4781, !tbaa !894
  %inp361 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %316, i32 0, i32 2, !dbg !4782
  %317 = load i8*, i8** %inp361, align 8, !dbg !4782, !tbaa !928
  %318 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4783, !tbaa !894
  %cur362 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %318, i32 0, i32 1, !dbg !4784
  store i8* %317, i8** %cur362, align 8, !dbg !4785, !tbaa !937
  store i32 -1, i32* %retval, !dbg !4786
  br label %return, !dbg !4786

if.end.363:                                       ; preds = %if.end.351
  br label %for.cond, !dbg !4787

return:                                           ; preds = %LeafBlock.14, %LeafBlock.8, %if.end.360, %cleanup, %if.then.6, %if.then
  %319 = load i32, i32* %retval, !dbg !4788
  ret i32 %319, !dbg !4788
}

; Function Attrs: nounwind uwtable
define internal void @tok_backup(%struct.tok_state* %tok, i32 %c) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %c.addr = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !865, metadata !898), !dbg !4789
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !866, metadata !898), !dbg !4790
  %0 = load i32, i32* %c.addr, align 4, !dbg !4791, !tbaa !900
  %cmp = icmp ne i32 %0, -1, !dbg !4793
  br i1 %cmp, label %if.then, label %if.end.10, !dbg !4794

if.then:                                          ; preds = %entry
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4795, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 1, !dbg !4798
  %2 = load i8*, i8** %cur, align 8, !dbg !4799, !tbaa !937
  %incdec.ptr = getelementptr i8, i8* %2, i32 -1, !dbg !4799
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !4799, !tbaa !937
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4800, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0, !dbg !4801
  %4 = load i8*, i8** %buf, align 8, !dbg !4801, !tbaa !941
  %cmp1 = icmp ult i8* %incdec.ptr, %4, !dbg !4802
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !4803

if.then.2:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0)) #10, !dbg !4804
  unreachable, !dbg !4804

if.end:                                           ; preds = %if.then
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4805, !tbaa !894
  %cur3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1, !dbg !4807
  %6 = load i8*, i8** %cur3, align 8, !dbg !4807, !tbaa !937
  %7 = load i8, i8* %6, align 1, !dbg !4808, !tbaa !1146
  %conv = sext i8 %7 to i32, !dbg !4808
  %8 = load i32, i32* %c.addr, align 4, !dbg !4809, !tbaa !900
  %cmp4 = icmp ne i32 %conv, %8, !dbg !4810
  br i1 %cmp4, label %if.then.6, label %if.end.9, !dbg !4811

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %c.addr, align 4, !dbg !4812, !tbaa !900
  %conv7 = trunc i32 %9 to i8, !dbg !4812
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4813, !tbaa !894
  %cur8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 1, !dbg !4814
  %11 = load i8*, i8** %cur8, align 8, !dbg !4814, !tbaa !937
  store i8 %conv7, i8* %11, align 1, !dbg !4815, !tbaa !1146
  br label %if.end.9, !dbg !4816

if.end.9:                                         ; preds = %if.then.6, %if.end
  br label %if.end.10, !dbg !4817

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void, !dbg !4818
}

; Function Attrs: nounwind uwtable
define internal i32 @indenterror(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !869, metadata !898), !dbg !4819
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4820, !tbaa !894
  %alterror = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 18, !dbg !4822
  %1 = load i32, i32* %alterror, align 4, !dbg !4822, !tbaa !1024
  %tobool = icmp ne i32 %1, 0, !dbg !4820
  br i1 %tobool, label %if.then, label %if.end, !dbg !4823

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4824, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 5, !dbg !4826
  store i32 18, i32* %done, align 4, !dbg !4827, !tbaa !973
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4828, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 2, !dbg !4829
  %4 = load i8*, i8** %inp, align 8, !dbg !4829, !tbaa !928
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4830, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1, !dbg !4831
  store i8* %4, i8** %cur, align 8, !dbg !4832, !tbaa !937
  store i32 1, i32* %retval, !dbg !4833
  br label %return, !dbg !4833

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4834, !tbaa !894
  %altwarning = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 17, !dbg !4836
  %7 = load i32, i32* %altwarning, align 4, !dbg !4836, !tbaa !1020
  %tobool1 = icmp ne i32 %7, 0, !dbg !4834
  br i1 %tobool1, label %if.then.2, label %if.end.4, !dbg !4837

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4838, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 16, !dbg !4840
  %9 = load %struct._object*, %struct._object** %filename, align 8, !dbg !4840, !tbaa !1059
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i32 0, i32 0), %struct._object* %9), !dbg !4841
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4842, !tbaa !894
  %altwarning3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 17, !dbg !4843
  store i32 0, i32* %altwarning3, align 4, !dbg !4844, !tbaa !1020
  br label %if.end.4, !dbg !4845

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %retval, !dbg !4846
  br label %return, !dbg !4846

return:                                           ; preds = %if.end.4, %if.then
  %11 = load i32, i32* %retval, !dbg !4847
  ret i32 %11, !dbg !4847
}

; Function Attrs: nounwind uwtable
define internal i32 @verify_identifier(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %s = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !872, metadata !898), !dbg !4848
  %0 = bitcast %struct._object** %s to i8*, !dbg !4849
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4849
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !873, metadata !898), !dbg !4850
  %1 = bitcast i32* %result to i8*, !dbg !4851
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4851
  call void @llvm.dbg.declare(metadata i32* %result, metadata !874, metadata !898), !dbg !4852
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4853, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 4, !dbg !4854
  %3 = load i8*, i8** %start, align 8, !dbg !4854, !tbaa !957
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4855, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 1, !dbg !4856
  %5 = load i8*, i8** %cur, align 8, !dbg !4856, !tbaa !937
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4857, !tbaa !894
  %start1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 4, !dbg !4858
  %7 = load i8*, i8** %start1, align 8, !dbg !4858, !tbaa !957
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !4859
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !4859
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4859
  %call = call %struct._object* @PyUnicode_DecodeUTF8(i8* %3, i64 %sub.ptr.sub, i8* null), !dbg !4860
  store %struct._object* %call, %struct._object** %s, align 8, !dbg !4861, !tbaa !894
  %8 = load %struct._object*, %struct._object** %s, align 8, !dbg !4862, !tbaa !894
  %cmp = icmp eq %struct._object* %8, null, !dbg !4864
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4865

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._object*, %struct._object** %s, align 8, !dbg !4866, !tbaa !894
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*, !dbg !4868
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3, !dbg !4869
  %11 = bitcast %struct.anon* %state to i32*, !dbg !4870
  %bf.load = load i32, i32* %11, align 4, !dbg !4870
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !4870
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4870
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4871
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4871

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !4872

cond.false:                                       ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** %s, align 8, !dbg !4874, !tbaa !894
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %12), !dbg !4876
  br label %cond.end, !dbg !4871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ], !dbg !4871
  %cmp3 = icmp eq i32 %cond, -1, !dbg !4877
  br i1 %cmp3, label %if.then, label %if.end.8, !dbg !4880

if.then:                                          ; preds = %cond.end, %entry
  %13 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !4881, !tbaa !894
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %13), !dbg !4884
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4884
  br i1 %tobool5, label %if.then.6, label %if.else, !dbg !4885

if.then.6:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !4886
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4888, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 5, !dbg !4889
  store i32 26, i32* %done, align 4, !dbg !4890, !tbaa !973
  br label %if.end, !dbg !4891

if.else:                                          ; preds = %if.then
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4892, !tbaa !894
  %done7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 5, !dbg !4894
  store i32 17, i32* %done7, align 4, !dbg !4895, !tbaa !973
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  store i32 0, i32* %retval, !dbg !4896
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4896

if.end.8:                                         ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %s, align 8, !dbg !4897, !tbaa !894
  %call9 = call i32 @PyUnicode_IsIdentifier(%struct._object* %16), !dbg !4898
  store i32 %call9, i32* %result, align 4, !dbg !4899, !tbaa !900
  br label %do.body, !dbg !4900

do.body:                                          ; preds = %if.end.8
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4901
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !4901
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !875, metadata !898), !dbg !4903
  %18 = load %struct._object*, %struct._object** %s, align 8, !dbg !4904, !tbaa !894
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !4903, !tbaa !894
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4905, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !4907
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !4908, !tbaa !1277
  %dec = add i64 %20, -1, !dbg !4908
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4908, !tbaa !1277
  %cmp10 = icmp ne i64 %dec, 0, !dbg !4909
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !4910

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !4911

if.else.12:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4913, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !4915
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4915, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !4916
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4916, !tbaa !1289
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4917, !tbaa !894
  call void %23(%struct._object* %24), !dbg !4918
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4919
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !4919
  br label %do.cond, !dbg !4921

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !4922

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %result, align 4, !dbg !4924, !tbaa !900
  %cmp14 = icmp eq i32 %26, 0, !dbg !4926
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !4927

if.then.15:                                       ; preds = %do.end
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4928, !tbaa !894
  %done16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 5, !dbg !4929
  store i32 26, i32* %done16, align 4, !dbg !4930, !tbaa !973
  br label %if.end.17, !dbg !4928

if.end.17:                                        ; preds = %if.then.15, %do.end
  %28 = load i32, i32* %result, align 4, !dbg !4931, !tbaa !900
  store i32 %28, i32* %retval, !dbg !4932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4932

cleanup:                                          ; preds = %if.end.17, %if.end
  %29 = bitcast i32* %result to i8*, !dbg !4933
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !4933
  %30 = bitcast %struct._object** %s to i8*, !dbg !4933
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !4933
  %31 = load i32, i32* %retval, !dbg !4933
  ret i32 %31, !dbg !4933
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

declare i8* @__rawmemchr(i8*, i32) #3

declare i8* @PyOS_Readline(%struct._IO_FILE*, %struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @decoding_fgets(i8* %s, i32 %size, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %line = alloca i8*, align 8
  %badchar = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !788, metadata !898), !dbg !4934
  store i32 %size, i32* %size.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !789, metadata !898), !dbg !4935
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !790, metadata !898), !dbg !4936
  %0 = bitcast i8** %line to i8*, !dbg !4937
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4937
  call void @llvm.dbg.declare(metadata i8** %line, metadata !791, metadata !898), !dbg !4938
  store i8* null, i8** %line, align 8, !dbg !4938, !tbaa !894
  %1 = bitcast i32* %badchar to i8*, !dbg !4939
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4939
  call void @llvm.dbg.declare(metadata i32* %badchar, metadata !792, metadata !898), !dbg !4940
  store i32 0, i32* %badchar, align 4, !dbg !4940, !tbaa !900
  br label %for.cond, !dbg !4941

for.cond:                                         ; preds = %if.end.10, %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4942, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 21, !dbg !4947
  %3 = load i32, i32* %decoding_state, align 4, !dbg !4947, !tbaa !1035
  %cmp = icmp eq i32 %3, 2, !dbg !4948
  br i1 %cmp, label %if.then, label %if.else, !dbg !4949

if.then:                                          ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8, !dbg !4950, !tbaa !894
  %5 = load i32, i32* %size.addr, align 4, !dbg !4952, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4953, !tbaa !894
  %call = call i8* @fp_readl(i8* %4, i32 %5, %struct.tok_state* %6), !dbg !4954
  store i8* %call, i8** %line, align 8, !dbg !4955, !tbaa !894
  br label %for.end, !dbg !4956

if.else:                                          ; preds = %for.cond
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4957, !tbaa !894
  %decoding_state1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 21, !dbg !4959
  %8 = load i32, i32* %decoding_state1, align 4, !dbg !4959, !tbaa !1035
  %cmp2 = icmp eq i32 %8, 1, !dbg !4960
  br i1 %cmp2, label %if.then.3, label %if.else.5, !dbg !4961

if.then.3:                                        ; preds = %if.else
  %9 = load i8*, i8** %s.addr, align 8, !dbg !4962, !tbaa !894
  %10 = load i32, i32* %size.addr, align 4, !dbg !4964, !tbaa !900
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4965, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 6, !dbg !4966
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4966, !tbaa !977
  %call4 = call i8* @Py_UniversalNewlineFgets(i8* %9, i32 %10, %struct._IO_FILE* %12, %struct._object* null), !dbg !4967
  store i8* %call4, i8** %line, align 8, !dbg !4968, !tbaa !894
  br label %for.end, !dbg !4969

if.else.5:                                        ; preds = %if.else
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4970, !tbaa !894
  %call6 = call i32 @check_bom(i32 (%struct.tok_state*)* @fp_getc, void (i32, %struct.tok_state*)* @fp_ungetc, i32 (%struct.tok_state*, i8*)* @fp_setreadl, %struct.tok_state* %13), !dbg !4973
  %tobool = icmp ne i32 %call6, 0, !dbg !4973
  br i1 %tobool, label %if.end, label %if.then.7, !dbg !4974

if.then.7:                                        ; preds = %if.else.5
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4975, !tbaa !894
  %call8 = call i8* @error_ret(%struct.tok_state* %14), !dbg !4976
  store i8* %call8, i8** %retval, !dbg !4977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4977

if.end:                                           ; preds = %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  br label %for.cond, !dbg !4978

for.end:                                          ; preds = %if.then.3, %if.then
  %15 = load i8*, i8** %line, align 8, !dbg !4979, !tbaa !894
  %cmp11 = icmp ne i8* %15, null, !dbg !4981
  br i1 %cmp11, label %land.lhs.true, label %if.end.22, !dbg !4982

land.lhs.true:                                    ; preds = %for.end
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4983, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 14, !dbg !4985
  %17 = load i32, i32* %lineno, align 4, !dbg !4985, !tbaa !1012
  %cmp12 = icmp slt i32 %17, 2, !dbg !4986
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.22, !dbg !4987

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4988, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 23, !dbg !4990
  %19 = load i32, i32* %read_coding_spec, align 4, !dbg !4990, !tbaa !1043
  %tobool14 = icmp ne i32 %19, 0, !dbg !4991
  br i1 %tobool14, label %if.end.22, label %if.then.15, !dbg !4992

if.then.15:                                       ; preds = %land.lhs.true.13
  %20 = load i8*, i8** %line, align 8, !dbg !4993, !tbaa !894
  %21 = load i8*, i8** %line, align 8, !dbg !4996, !tbaa !894
  %call16 = call i64 @strlen(i8* %21) #9, !dbg !4997
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4998, !tbaa !894
  %call17 = call i32 @check_coding_spec(i8* %20, i64 %call16, %struct.tok_state* %22, i32 (%struct.tok_state*, i8*)* @fp_setreadl), !dbg !4999
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4999
  br i1 %tobool18, label %if.end.21, label %if.then.19, !dbg !5000

if.then.19:                                       ; preds = %if.then.15
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5001, !tbaa !894
  %call20 = call i8* @error_ret(%struct.tok_state* %23), !dbg !5003
  store i8* %call20, i8** %retval, !dbg !5004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5004

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.22, !dbg !5005

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.13, %land.lhs.true, %for.end
  %24 = load i8*, i8** %line, align 8, !dbg !5006, !tbaa !894
  %tobool23 = icmp ne i8* %24, null, !dbg !5006
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.34, !dbg !5007

land.lhs.true.24:                                 ; preds = %if.end.22
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5008, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 24, !dbg !5010
  %26 = load i8*, i8** %encoding, align 8, !dbg !5010, !tbaa !1051
  %tobool25 = icmp ne i8* %26, null, !dbg !5011
  br i1 %tobool25, label %if.end.34, label %if.then.26, !dbg !5012

if.then.26:                                       ; preds = %land.lhs.true.24
  %27 = bitcast i8** %c to i8*, !dbg !5013
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !5013
  call void @llvm.dbg.declare(metadata i8** %c, metadata !793, metadata !898), !dbg !5014
  %28 = bitcast i32* %length to i8*, !dbg !5015
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !5015
  call void @llvm.dbg.declare(metadata i32* %length, metadata !796, metadata !898), !dbg !5016
  %29 = load i8*, i8** %line, align 8, !dbg !5017, !tbaa !894
  store i8* %29, i8** %c, align 8, !dbg !5019, !tbaa !894
  br label %for.cond.27, !dbg !5020

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %30 = load i8*, i8** %c, align 8, !dbg !5021, !tbaa !894
  %31 = load i8, i8* %30, align 1, !dbg !5025, !tbaa !1146
  %tobool28 = icmp ne i8 %31, 0, !dbg !5026
  br i1 %tobool28, label %for.body, label %for.end.33, !dbg !5026

for.body:                                         ; preds = %for.cond.27
  %32 = load i8*, i8** %c, align 8, !dbg !5027, !tbaa !894
  %call29 = call i32 @valid_utf8(i8* %32), !dbg !5029
  store i32 %call29, i32* %length, align 4, !dbg !5030, !tbaa !900
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5030
  br i1 %tobool30, label %if.end.32, label %if.then.31, !dbg !5031

if.then.31:                                       ; preds = %for.body
  %33 = load i8*, i8** %c, align 8, !dbg !5032, !tbaa !894
  %34 = load i8, i8* %33, align 1, !dbg !5034, !tbaa !1146
  %conv = zext i8 %34 to i32, !dbg !5034
  store i32 %conv, i32* %badchar, align 4, !dbg !5035, !tbaa !900
  br label %for.end.33, !dbg !5036

if.end.32:                                        ; preds = %for.body
  br label %for.inc, !dbg !5037

for.inc:                                          ; preds = %if.end.32
  %35 = load i32, i32* %length, align 4, !dbg !5039, !tbaa !900
  %36 = load i8*, i8** %c, align 8, !dbg !5040, !tbaa !894
  %idx.ext = sext i32 %35 to i64, !dbg !5040
  %add.ptr = getelementptr i8, i8* %36, i64 %idx.ext, !dbg !5040
  store i8* %add.ptr, i8** %c, align 8, !dbg !5040, !tbaa !894
  br label %for.cond.27, !dbg !5041

for.end.33:                                       ; preds = %if.then.31, %for.cond.27
  %37 = bitcast i32* %length to i8*, !dbg !5042
  call void @llvm.lifetime.end(i64 4, i8* %37) #2, !dbg !5042
  %38 = bitcast i8** %c to i8*, !dbg !5042
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !5042
  br label %if.end.34, !dbg !5043

if.end.34:                                        ; preds = %for.end.33, %land.lhs.true.24, %if.end.22
  %39 = load i32, i32* %badchar, align 4, !dbg !5044, !tbaa !900
  %tobool35 = icmp ne i32 %39, 0, !dbg !5044
  br i1 %tobool35, label %if.then.36, label %if.end.40, !dbg !5046

if.then.36:                                       ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !5047, !tbaa !894
  %41 = load i32, i32* %badchar, align 4, !dbg !5049, !tbaa !900
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5050, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %42, i32 0, i32 16, !dbg !5051
  %43 = load %struct._object*, %struct._object** %filename, align 8, !dbg !5051, !tbaa !1059
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5052, !tbaa !894
  %lineno37 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %44, i32 0, i32 14, !dbg !5053
  %45 = load i32, i32* %lineno37, align 4, !dbg !5053, !tbaa !1012
  %add = add i32 %45, 1, !dbg !5054
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %40, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.69, i32 0, i32 0), i32 %41, %struct._object* %43, i32 %add), !dbg !5055
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5056, !tbaa !894
  %call39 = call i8* @error_ret(%struct.tok_state* %46), !dbg !5057
  store i8* %call39, i8** %retval, !dbg !5058
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5058

if.end.40:                                        ; preds = %if.end.34
  %47 = load i8*, i8** %line, align 8, !dbg !5059, !tbaa !894
  store i8* %47, i8** %retval, !dbg !5060
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5060

cleanup:                                          ; preds = %if.end.40, %if.then.36, %if.then.19, %if.then.7
  %48 = bitcast i32* %badchar to i8*, !dbg !5061
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !5061
  %49 = bitcast i8** %line to i8*, !dbg !5061
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !5061
  %50 = load i8*, i8** %retval, !dbg !5061
  ret i8* %50, !dbg !5061
}

; Function Attrs: nounwind uwtable
define internal i32 @decoding_feof(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %buf = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !857, metadata !898), !dbg !5062
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5063, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 21, !dbg !5064
  %1 = load i32, i32* %decoding_state, align 4, !dbg !5064, !tbaa !1035
  %cmp = icmp ne i32 %1, 2, !dbg !5065
  br i1 %cmp, label %if.then, label %if.else, !dbg !5066

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5067, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 6, !dbg !5069
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5069, !tbaa !977
  %call = call i32 @feof(%struct._IO_FILE* %3) #2, !dbg !5070
  store i32 %call, i32* %retval, !dbg !5071
  br label %return, !dbg !5071

if.else:                                          ; preds = %entry
  %4 = bitcast %struct._object** %buf to i8*, !dbg !5072
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5072
  call void @llvm.dbg.declare(metadata %struct._object** %buf, metadata !858, metadata !898), !dbg !5073
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5074, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 28, !dbg !5075
  %6 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !5075, !tbaa !1067
  store %struct._object* %6, %struct._object** %buf, align 8, !dbg !5073, !tbaa !894
  %7 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5076, !tbaa !894
  %cmp1 = icmp eq %struct._object* %7, null, !dbg !5078
  br i1 %cmp1, label %if.then.2, label %if.end.9, !dbg !5079

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5080, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 27, !dbg !5082
  %9 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5082, !tbaa !1063
  %call3 = call %struct._object* @PyObject_CallObject(%struct._object* %9, %struct._object* null), !dbg !5083
  store %struct._object* %call3, %struct._object** %buf, align 8, !dbg !5084, !tbaa !894
  %10 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5085, !tbaa !894
  %cmp4 = icmp eq %struct._object* %10, null, !dbg !5087
  br i1 %cmp4, label %if.then.5, label %if.else.7, !dbg !5088

if.then.5:                                        ; preds = %if.then.2
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5089, !tbaa !894
  %call6 = call i8* @error_ret(%struct.tok_state* %11), !dbg !5091
  store i32 1, i32* %retval, !dbg !5092
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5092

if.else.7:                                        ; preds = %if.then.2
  %12 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5093, !tbaa !894
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5095, !tbaa !894
  %decoding_buffer8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 28, !dbg !5096
  store %struct._object* %12, %struct._object** %decoding_buffer8, align 8, !dbg !5097, !tbaa !1067
  br label %if.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.9, !dbg !5098

if.end.9:                                         ; preds = %if.end, %if.else
  %14 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5099, !tbaa !894
  %call10 = call i64 @PyObject_Size(%struct._object* %14), !dbg !5100
  %cmp11 = icmp eq i64 %call10, 0, !dbg !5101
  %conv = zext i1 %cmp11 to i32, !dbg !5101
  store i32 %conv, i32* %retval, !dbg !5102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5102

cleanup:                                          ; preds = %if.end.9, %if.then.5
  %15 = bitcast %struct._object** %buf to i8*, !dbg !5103
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !5103
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %16 = load i32, i32* %retval, !dbg !5104
  ret i32 %16, !dbg !5104
}

declare void @PySys_WriteStderr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @fp_readl(i8* %s, i32 %size, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %bufobj = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !799, metadata !898), !dbg !5105
  store i32 %size, i32* %size.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !800, metadata !898), !dbg !5106
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !801, metadata !898), !dbg !5107
  %0 = bitcast %struct._object** %bufobj to i8*, !dbg !5108
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5108
  call void @llvm.dbg.declare(metadata %struct._object** %bufobj, metadata !802, metadata !898), !dbg !5109
  %1 = bitcast i8** %buf to i8*, !dbg !5110
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5110
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !803, metadata !898), !dbg !5111
  %2 = bitcast i64* %buflen to i8*, !dbg !5112
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5112
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !804, metadata !898), !dbg !5113
  %3 = load i32, i32* %size.addr, align 4, !dbg !5114, !tbaa !900
  %dec = add i32 %3, -1, !dbg !5114
  store i32 %dec, i32* %size.addr, align 4, !dbg !5114, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5115, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 28, !dbg !5117
  %5 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !5117, !tbaa !1067
  %tobool = icmp ne %struct._object* %5, null, !dbg !5115
  br i1 %tobool, label %if.then, label %if.else, !dbg !5118

if.then:                                          ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5119, !tbaa !894
  %decoding_buffer1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 28, !dbg !5121
  %7 = load %struct._object*, %struct._object** %decoding_buffer1, align 8, !dbg !5121, !tbaa !1067
  store %struct._object* %7, %struct._object** %bufobj, align 8, !dbg !5122, !tbaa !894
  %8 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5123, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5124
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5125, !tbaa !1277
  %inc = add i64 %9, 1, !dbg !5125
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !5125, !tbaa !1277
  br label %if.end.3, !dbg !5126

if.else:                                          ; preds = %entry
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5127, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 27, !dbg !5129
  %11 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5129, !tbaa !1063
  %call = call %struct._object* @PyObject_CallObject(%struct._object* %11, %struct._object* null), !dbg !5130
  store %struct._object* %call, %struct._object** %bufobj, align 8, !dbg !5131, !tbaa !894
  %12 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5132, !tbaa !894
  %cmp = icmp eq %struct._object* %12, null, !dbg !5134
  br i1 %cmp, label %if.then.2, label %if.end, !dbg !5135

if.then.2:                                        ; preds = %if.else
  br label %error, !dbg !5136

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5137, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5139
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5139, !tbaa !1287
  %cmp4 = icmp eq %struct._typeobject* %14, @PyUnicode_Type, !dbg !5140
  br i1 %cmp4, label %if.then.5, label %if.else.10, !dbg !5141

if.then.5:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5142, !tbaa !894
  %call6 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %15, i64* %buflen), !dbg !5144
  store i8* %call6, i8** %buf, align 8, !dbg !5145, !tbaa !894
  %16 = load i8*, i8** %buf, align 8, !dbg !5146, !tbaa !894
  %cmp7 = icmp eq i8* %16, null, !dbg !5148
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !5149

if.then.8:                                        ; preds = %if.then.5
  br label %error, !dbg !5150

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.15, !dbg !5152

if.else.10:                                       ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5153, !tbaa !894
  %call11 = call i8* @PyByteArray_AsString(%struct._object* %17), !dbg !5155
  store i8* %call11, i8** %buf, align 8, !dbg !5156, !tbaa !894
  %18 = load i8*, i8** %buf, align 8, !dbg !5157, !tbaa !894
  %cmp12 = icmp eq i8* %18, null, !dbg !5159
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !5160

if.then.13:                                       ; preds = %if.else.10
  br label %error, !dbg !5161

if.end.14:                                        ; preds = %if.else.10
  %19 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5163, !tbaa !894
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*, !dbg !5164
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1, !dbg !5165
  %21 = load i64, i64* %ob_size, align 8, !dbg !5165, !tbaa !4265
  store i64 %21, i64* %buflen, align 8, !dbg !5166, !tbaa !1484
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.9
  br label %do.body, !dbg !5167

do.body:                                          ; preds = %if.end.15
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5168
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !5168
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !805, metadata !898), !dbg !5170
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5171, !tbaa !894
  %decoding_buffer16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 28, !dbg !5172
  %24 = load %struct._object*, %struct._object** %decoding_buffer16, align 8, !dbg !5172, !tbaa !1067
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5170, !tbaa !894
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5173, !tbaa !894
  %cmp17 = icmp ne %struct._object* %25, null, !dbg !5174
  br i1 %cmp17, label %if.then.18, label %if.end.27, !dbg !5175

if.then.18:                                       ; preds = %do.body
  br label %do.body.19, !dbg !5176

do.body.19:                                       ; preds = %if.then.18
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5178
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !5178
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !807, metadata !898), !dbg !5180
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5181, !tbaa !894
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !5180, !tbaa !894
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5182, !tbaa !894
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !5184
  %29 = load i64, i64* %ob_refcnt20, align 8, !dbg !5185, !tbaa !1277
  %dec21 = add i64 %29, -1, !dbg !5185
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !5185, !tbaa !1277
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !5186
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !5187

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.26, !dbg !5188

if.else.24:                                       ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5190, !tbaa !894
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !5192
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !5192, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !5193
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5193, !tbaa !1289
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5194, !tbaa !894
  call void %32(%struct._object* %33), !dbg !5195
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5196
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !5196
  br label %do.cond, !dbg !5198

do.cond:                                          ; preds = %if.end.26
  br label %do.end, !dbg !5199

do.end:                                           ; preds = %do.cond
  br label %if.end.27, !dbg !5201

if.end.27:                                        ; preds = %do.end, %do.body
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5203
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !5203
  br label %do.cond.28, !dbg !5206

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !5207

do.end.29:                                        ; preds = %do.cond.28
  %36 = load i64, i64* %buflen, align 8, !dbg !5209, !tbaa !1484
  %37 = load i32, i32* %size.addr, align 4, !dbg !5211, !tbaa !900
  %conv = sext i32 %37 to i64, !dbg !5211
  %cmp30 = icmp sgt i64 %36, %conv, !dbg !5212
  br i1 %cmp30, label %if.then.32, label %if.else.42, !dbg !5213

if.then.32:                                       ; preds = %do.end.29
  %38 = load i8*, i8** %buf, align 8, !dbg !5214, !tbaa !894
  %39 = load i32, i32* %size.addr, align 4, !dbg !5216, !tbaa !900
  %idx.ext = sext i32 %39 to i64, !dbg !5217
  %add.ptr = getelementptr i8, i8* %38, i64 %idx.ext, !dbg !5217
  %40 = load i64, i64* %buflen, align 8, !dbg !5218, !tbaa !1484
  %41 = load i32, i32* %size.addr, align 4, !dbg !5219, !tbaa !900
  %conv33 = sext i32 %41 to i64, !dbg !5219
  %sub = sub i64 %40, %conv33, !dbg !5220
  %call34 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub), !dbg !5221
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5222, !tbaa !894
  %decoding_buffer35 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %42, i32 0, i32 28, !dbg !5223
  store %struct._object* %call34, %struct._object** %decoding_buffer35, align 8, !dbg !5224, !tbaa !1067
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5225, !tbaa !894
  %decoding_buffer36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %43, i32 0, i32 28, !dbg !5227
  %44 = load %struct._object*, %struct._object** %decoding_buffer36, align 8, !dbg !5227, !tbaa !1067
  %cmp37 = icmp eq %struct._object* %44, null, !dbg !5228
  br i1 %cmp37, label %if.then.39, label %if.end.40, !dbg !5229

if.then.39:                                       ; preds = %if.then.32
  br label %error, !dbg !5230

if.end.40:                                        ; preds = %if.then.32
  %45 = load i32, i32* %size.addr, align 4, !dbg !5231, !tbaa !900
  %conv41 = sext i32 %45 to i64, !dbg !5231
  store i64 %conv41, i64* %buflen, align 8, !dbg !5232, !tbaa !1484
  br label %if.end.44, !dbg !5233

if.else.42:                                       ; preds = %do.end.29
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5234, !tbaa !894
  %decoding_buffer43 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %46, i32 0, i32 28, !dbg !5235
  store %struct._object* null, %struct._object** %decoding_buffer43, align 8, !dbg !5236, !tbaa !1067
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.end.40
  %47 = load i8*, i8** %s.addr, align 8, !dbg !5237, !tbaa !894
  %48 = load i8*, i8** %buf, align 8, !dbg !5238, !tbaa !894
  %49 = load i64, i64* %buflen, align 8, !dbg !5239, !tbaa !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 %49, i32 1, i1 false), !dbg !5240
  %50 = load i64, i64* %buflen, align 8, !dbg !5241, !tbaa !1484
  %51 = load i8*, i8** %s.addr, align 8, !dbg !5242, !tbaa !894
  %arrayidx = getelementptr i8, i8* %51, i64 %50, !dbg !5242
  store i8 0, i8* %arrayidx, align 1, !dbg !5243, !tbaa !1146
  %52 = load i64, i64* %buflen, align 8, !dbg !5244, !tbaa !1484
  %cmp45 = icmp eq i64 %52, 0, !dbg !5246
  br i1 %cmp45, label %if.then.47, label %if.end.48, !dbg !5247

if.then.47:                                       ; preds = %if.end.44
  store i8* null, i8** %s.addr, align 8, !dbg !5248, !tbaa !894
  br label %if.end.48, !dbg !5249

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  br label %do.body.49, !dbg !5250

do.body.49:                                       ; preds = %if.end.48
  %53 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5251
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !5251
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !810, metadata !898), !dbg !5253
  %54 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5254, !tbaa !894
  store %struct._object* %54, %struct._object** %_py_decref_tmp50, align 8, !dbg !5253, !tbaa !894
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5255, !tbaa !894
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !5257
  %56 = load i64, i64* %ob_refcnt51, align 8, !dbg !5258, !tbaa !1277
  %dec52 = add i64 %56, -1, !dbg !5258
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !5258, !tbaa !1277
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !5259
  br i1 %cmp53, label %if.then.55, label %if.else.56, !dbg !5260

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59, !dbg !5261

if.else.56:                                       ; preds = %do.body.49
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5263, !tbaa !894
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !5265
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !5265, !tbaa !1287
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !5266
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !5266, !tbaa !1289
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5267, !tbaa !894
  call void %59(%struct._object* %60), !dbg !5268
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %61 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5269
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !5269
  br label %do.cond.60, !dbg !5271

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !5272

do.end.61:                                        ; preds = %do.cond.60
  %62 = load i8*, i8** %s.addr, align 8, !dbg !5274, !tbaa !894
  store i8* %62, i8** %retval, !dbg !5275
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5275

error:                                            ; preds = %if.then.39, %if.then.13, %if.then.8, %if.then.2
  br label %do.body.62, !dbg !5276

do.body.62:                                       ; preds = %error
  %63 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !5277
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !5277
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp63, metadata !812, metadata !898), !dbg !5279
  %64 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5280, !tbaa !894
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5279, !tbaa !894
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5281, !tbaa !894
  %cmp64 = icmp ne %struct._object* %65, null, !dbg !5282
  br i1 %cmp64, label %if.then.66, label %if.end.80, !dbg !5283

if.then.66:                                       ; preds = %do.body.62
  br label %do.body.67, !dbg !5284

do.body.67:                                       ; preds = %if.then.66
  %66 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !5286
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !5286
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !814, metadata !898), !dbg !5288
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5289, !tbaa !894
  store %struct._object* %67, %struct._object** %_py_decref_tmp68, align 8, !dbg !5288, !tbaa !894
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5290, !tbaa !894
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !5292
  %69 = load i64, i64* %ob_refcnt69, align 8, !dbg !5293, !tbaa !1277
  %dec70 = add i64 %69, -1, !dbg !5293
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !5293, !tbaa !1277
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !5294
  br i1 %cmp71, label %if.then.73, label %if.else.74, !dbg !5295

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77, !dbg !5296

if.else.74:                                       ; preds = %do.body.67
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5298, !tbaa !894
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !5300
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !5300, !tbaa !1287
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !5301
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !5301, !tbaa !1289
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5302, !tbaa !894
  call void %72(%struct._object* %73), !dbg !5303
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %74 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !5304
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !5304
  br label %do.cond.78, !dbg !5306

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !5307

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80, !dbg !5309

if.end.80:                                        ; preds = %do.end.79, %do.body.62
  %75 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !5311
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !5311
  br label %do.cond.81, !dbg !5312

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !5313

do.end.82:                                        ; preds = %do.cond.81
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5315, !tbaa !894
  %call83 = call i8* @error_ret(%struct.tok_state* %76), !dbg !5316
  store i8* %call83, i8** %retval, !dbg !5317
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5317

cleanup:                                          ; preds = %do.end.82, %do.end.61
  %77 = bitcast i64* %buflen to i8*, !dbg !5318
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !5318
  %78 = bitcast i8** %buf to i8*, !dbg !5318
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !5318
  %79 = bitcast %struct._object** %bufobj to i8*, !dbg !5318
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !5318
  %80 = load i8*, i8** %retval, !dbg !5318
  ret i8* %80, !dbg !5318
}

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fp_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !819, metadata !898), !dbg !5319
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5320, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 6, !dbg !5321
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5321, !tbaa !977
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1), !dbg !5322
  ret i32 %call, !dbg !5323
}

; Function Attrs: nounwind uwtable
define internal void @fp_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !822, metadata !898), !dbg !5324
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !823, metadata !898), !dbg !5325
  %0 = load i32, i32* %c.addr, align 4, !dbg !5326, !tbaa !900
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5327, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6, !dbg !5328
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5328, !tbaa !977
  %call = call i32 @ungetc(i32 %0, %struct._IO_FILE* %2), !dbg !5329
  ret void, !dbg !5330
}

; Function Attrs: nounwind uwtable
define internal i32 @fp_setreadl(%struct.tok_state* %tok, i8* %enc) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %enc.addr = alloca i8*, align 8
  %readline = alloca %struct._object*, align 8
  %stream = alloca %struct._object*, align 8
  %io = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %pos = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !826, metadata !898), !dbg !5331
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !827, metadata !898), !dbg !5332
  %0 = bitcast %struct._object** %readline to i8*, !dbg !5333
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5333
  call void @llvm.dbg.declare(metadata %struct._object** %readline, metadata !828, metadata !898), !dbg !5334
  store %struct._object* null, %struct._object** %readline, align 8, !dbg !5334, !tbaa !894
  %1 = bitcast %struct._object** %stream to i8*, !dbg !5333
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5333
  call void @llvm.dbg.declare(metadata %struct._object** %stream, metadata !829, metadata !898), !dbg !5335
  store %struct._object* null, %struct._object** %stream, align 8, !dbg !5335, !tbaa !894
  %2 = bitcast %struct._object** %io to i8*, !dbg !5333
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5333
  call void @llvm.dbg.declare(metadata %struct._object** %io, metadata !830, metadata !898), !dbg !5336
  store %struct._object* null, %struct._object** %io, align 8, !dbg !5336, !tbaa !894
  %3 = bitcast i32* %fd to i8*, !dbg !5337
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !5337
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !831, metadata !898), !dbg !5338
  %4 = bitcast i64* %pos to i8*, !dbg !5339
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5339
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !832, metadata !898), !dbg !5340
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)), !dbg !5341
  store %struct._object* %call, %struct._object** %io, align 8, !dbg !5342, !tbaa !894
  %5 = load %struct._object*, %struct._object** %io, align 8, !dbg !5343, !tbaa !894
  %cmp = icmp eq %struct._object* %5, null, !dbg !5345
  br i1 %cmp, label %if.then, label %if.end, !dbg !5346

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !5347

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5348, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 6, !dbg !5349
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5349, !tbaa !977
  %call1 = call i32 @fileno(%struct._IO_FILE* %7) #2, !dbg !5350
  store i32 %call1, i32* %fd, align 4, !dbg !5351, !tbaa !900
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5352, !tbaa !894
  %fp2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 6, !dbg !5353
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8, !dbg !5353, !tbaa !977
  %call3 = call i64 @ftell(%struct._IO_FILE* %9), !dbg !5354
  store i64 %call3, i64* %pos, align 8, !dbg !5355, !tbaa !1484
  %10 = load i64, i64* %pos, align 8, !dbg !5356, !tbaa !1484
  %cmp4 = icmp eq i64 %10, -1, !dbg !5358
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false, !dbg !5359

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %fd, align 4, !dbg !5360, !tbaa !900
  %12 = load i64, i64* %pos, align 8, !dbg !5361, !tbaa !1484
  %cmp5 = icmp sgt i64 %12, 0, !dbg !5362
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5361

cond.true:                                        ; preds = %lor.lhs.false
  %13 = load i64, i64* %pos, align 8, !dbg !5363, !tbaa !1484
  %sub = sub i64 %13, 1, !dbg !5365
  br label %cond.end, !dbg !5361

cond.false:                                       ; preds = %lor.lhs.false
  %14 = load i64, i64* %pos, align 8, !dbg !5366, !tbaa !1484
  br label %cond.end, !dbg !5361

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %14, %cond.false ], !dbg !5361
  %call6 = call i64 @lseek64(i32 %11, i64 %cond, i32 0) #2, !dbg !5368
  %cmp7 = icmp eq i64 %call6, -1, !dbg !5371
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !5372

if.then.8:                                        ; preds = %cond.end, %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !5373, !tbaa !894
  %call9 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %15, i8* null), !dbg !5375
  br label %cleanup, !dbg !5376

if.end.10:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %io, align 8, !dbg !5377, !tbaa !894
  %17 = load i32, i32* %fd, align 4, !dbg !5378, !tbaa !900
  %18 = load i8*, i8** %enc.addr, align 8, !dbg !5379, !tbaa !894
  %call11 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %16, %struct._Py_Identifier* @fp_setreadl.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 -1, i8* %18, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)), !dbg !5380
  store %struct._object* %call11, %struct._object** %stream, align 8, !dbg !5381, !tbaa !894
  %19 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5382, !tbaa !894
  %cmp12 = icmp eq %struct._object* %19, null, !dbg !5384
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !5385

if.then.13:                                       ; preds = %if.end.10
  br label %cleanup, !dbg !5386

if.end.14:                                        ; preds = %if.end.10
  br label %do.body, !dbg !5387

do.body:                                          ; preds = %if.end.14
  %20 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5388
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !5388
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !833, metadata !898), !dbg !5390
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5391, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 27, !dbg !5392
  %22 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5392, !tbaa !1063
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5390, !tbaa !894
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5393, !tbaa !894
  %cmp15 = icmp ne %struct._object* %23, null, !dbg !5394
  br i1 %cmp15, label %if.then.16, label %if.end.21, !dbg !5395

if.then.16:                                       ; preds = %do.body
  br label %do.body.17, !dbg !5396

do.body.17:                                       ; preds = %if.then.16
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5398
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !5398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !835, metadata !898), !dbg !5400
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5401, !tbaa !894
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !5400, !tbaa !894
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5402, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !5404
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !5405, !tbaa !1277
  %dec = add i64 %27, -1, !dbg !5405
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5405, !tbaa !1277
  %cmp18 = icmp ne i64 %dec, 0, !dbg !5406
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !5407

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.20, !dbg !5408

if.else:                                          ; preds = %do.body.17
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5410, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !5412
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5412, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !5413
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5413, !tbaa !1289
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5414, !tbaa !894
  call void %30(%struct._object* %31), !dbg !5415
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5416
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !5416
  br label %do.cond, !dbg !5418

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !5419

do.end:                                           ; preds = %do.cond
  br label %if.end.21, !dbg !5421

if.end.21:                                        ; preds = %do.end, %do.body
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5423
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !5423
  br label %do.cond.22, !dbg !5426

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !5427

do.end.23:                                        ; preds = %do.cond.22
  %34 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5429, !tbaa !894
  %call24 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %34, %struct._Py_Identifier* @fp_setreadl.PyId_readline), !dbg !5430
  store %struct._object* %call24, %struct._object** %readline, align 8, !dbg !5431, !tbaa !894
  %35 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5432, !tbaa !894
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5433, !tbaa !894
  %decoding_readline25 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 27, !dbg !5434
  store %struct._object* %35, %struct._object** %decoding_readline25, align 8, !dbg !5435, !tbaa !1063
  %37 = load i64, i64* %pos, align 8, !dbg !5436, !tbaa !1484
  %cmp26 = icmp sgt i64 %37, 0, !dbg !5438
  br i1 %cmp26, label %if.then.27, label %if.end.32, !dbg !5439

if.then.27:                                       ; preds = %do.end.23
  %38 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5440, !tbaa !894
  %call28 = call %struct._object* @PyObject_CallObject(%struct._object* %38, %struct._object* null), !dbg !5443
  %cmp29 = icmp eq %struct._object* %call28, null, !dbg !5444
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !5445

if.then.30:                                       ; preds = %if.then.27
  store %struct._object* null, %struct._object** %readline, align 8, !dbg !5446, !tbaa !894
  br label %cleanup, !dbg !5448

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32, !dbg !5449

if.end.32:                                        ; preds = %if.end.31, %do.end.23
  br label %cleanup, !dbg !5450

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.then.13, %if.then.8, %if.then
  br label %do.body.33, !dbg !5452

do.body.33:                                       ; preds = %cleanup
  %39 = bitcast %struct._object** %_py_xdecref_tmp34 to i8*, !dbg !5453
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !5453
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp34, metadata !838, metadata !898), !dbg !5455
  %40 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5456, !tbaa !894
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5455, !tbaa !894
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5457, !tbaa !894
  %cmp35 = icmp ne %struct._object* %41, null, !dbg !5458
  br i1 %cmp35, label %if.then.36, label %if.end.49, !dbg !5459

if.then.36:                                       ; preds = %do.body.33
  br label %do.body.37, !dbg !5460

do.body.37:                                       ; preds = %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !5462
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !5462
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !840, metadata !898), !dbg !5464
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5465, !tbaa !894
  store %struct._object* %43, %struct._object** %_py_decref_tmp38, align 8, !dbg !5464, !tbaa !894
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5466, !tbaa !894
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !5468
  %45 = load i64, i64* %ob_refcnt39, align 8, !dbg !5469, !tbaa !1277
  %dec40 = add i64 %45, -1, !dbg !5469
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !5469, !tbaa !1277
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !5470
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !5471

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !5472

if.else.43:                                       ; preds = %do.body.37
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5474, !tbaa !894
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !5476
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !5476, !tbaa !1287
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !5477
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !5477, !tbaa !1289
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5478, !tbaa !894
  call void %48(%struct._object* %49), !dbg !5479
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %50 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !5480
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !5480
  br label %do.cond.47, !dbg !5482

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !5483

do.end.48:                                        ; preds = %do.cond.47
  br label %if.end.49, !dbg !5485

if.end.49:                                        ; preds = %do.end.48, %do.body.33
  %51 = bitcast %struct._object** %_py_xdecref_tmp34 to i8*, !dbg !5487
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !5487
  br label %do.cond.50, !dbg !5488

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !5489

do.end.51:                                        ; preds = %do.cond.50
  br label %do.body.52, !dbg !5491

do.body.52:                                       ; preds = %do.end.51
  %52 = bitcast %struct._object** %_py_xdecref_tmp53 to i8*, !dbg !5492
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !5492
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp53, metadata !843, metadata !898), !dbg !5494
  %53 = load %struct._object*, %struct._object** %io, align 8, !dbg !5495, !tbaa !894
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5494, !tbaa !894
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5496, !tbaa !894
  %cmp54 = icmp ne %struct._object* %54, null, !dbg !5497
  br i1 %cmp54, label %if.then.55, label %if.end.68, !dbg !5498

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56, !dbg !5499

do.body.56:                                       ; preds = %if.then.55
  %55 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !5501
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !5501
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !845, metadata !898), !dbg !5503
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5504, !tbaa !894
  store %struct._object* %56, %struct._object** %_py_decref_tmp57, align 8, !dbg !5503, !tbaa !894
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5505, !tbaa !894
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !5507
  %58 = load i64, i64* %ob_refcnt58, align 8, !dbg !5508, !tbaa !1277
  %dec59 = add i64 %58, -1, !dbg !5508
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !5508, !tbaa !1277
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !5509
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !5510

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !5511

if.else.62:                                       ; preds = %do.body.56
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5513, !tbaa !894
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !5515
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !5515, !tbaa !1287
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !5516
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !5516, !tbaa !1289
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5517, !tbaa !894
  call void %61(%struct._object* %62), !dbg !5518
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %63 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !5519
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !5519
  br label %do.cond.66, !dbg !5521

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !5522

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68, !dbg !5524

if.end.68:                                        ; preds = %do.end.67, %do.body.52
  %64 = bitcast %struct._object** %_py_xdecref_tmp53 to i8*, !dbg !5526
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !5526
  br label %do.cond.69, !dbg !5527

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !5528

do.end.70:                                        ; preds = %do.cond.69
  %65 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5530, !tbaa !894
  %cmp71 = icmp ne %struct._object* %65, null, !dbg !5531
  %conv = zext i1 %cmp71 to i32, !dbg !5531
  %66 = bitcast i64* %pos to i8*, !dbg !5532
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !5532
  %67 = bitcast i32* %fd to i8*, !dbg !5532
  call void @llvm.lifetime.end(i64 4, i8* %67) #2, !dbg !5532
  %68 = bitcast %struct._object** %io to i8*, !dbg !5532
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !5532
  %69 = bitcast %struct._object** %stream to i8*, !dbg !5532
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !5532
  %70 = bitcast %struct._object** %readline to i8*, !dbg !5532
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !5532
  ret i32 %conv, !dbg !5533
}

; Function Attrs: nounwind uwtable
define internal i32 @valid_utf8(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %expected = alloca i32, align 4
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %s, i8** %s.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !852, metadata !898), !dbg !5534
  %0 = bitcast i32* %expected to i8*, !dbg !5535
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !5535
  call void @llvm.dbg.declare(metadata i32* %expected, metadata !853, metadata !898), !dbg !5536
  store i32 0, i32* %expected, align 4, !dbg !5536, !tbaa !900
  %1 = bitcast i32* %length to i8*, !dbg !5537
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !5537
  call void @llvm.dbg.declare(metadata i32* %length, metadata !854, metadata !898), !dbg !5538
  %2 = load i8*, i8** %s.addr, align 8, !dbg !5539, !tbaa !894
  %3 = load i8, i8* %2, align 1, !dbg !5541, !tbaa !1146
  %conv = zext i8 %3 to i32, !dbg !5541
  %cmp = icmp slt i32 %conv, 128, !dbg !5542
  br i1 %cmp, label %if.then, label %if.end, !dbg !5543

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !5544
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5544

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !5545, !tbaa !894
  %5 = load i8, i8* %4, align 1, !dbg !5547, !tbaa !1146
  %conv2 = zext i8 %5 to i32, !dbg !5547
  %cmp3 = icmp slt i32 %conv2, 192, !dbg !5548
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !5549

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !5550
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5550

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8, !dbg !5551, !tbaa !894
  %7 = load i8, i8* %6, align 1, !dbg !5553, !tbaa !1146
  %conv7 = zext i8 %7 to i32, !dbg !5553
  %cmp8 = icmp slt i32 %conv7, 224, !dbg !5554
  br i1 %cmp8, label %if.then.10, label %if.else, !dbg !5555

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %expected, align 4, !dbg !5556, !tbaa !900
  br label %if.end.23, !dbg !5557

if.else:                                          ; preds = %if.end.6
  %8 = load i8*, i8** %s.addr, align 8, !dbg !5558, !tbaa !894
  %9 = load i8, i8* %8, align 1, !dbg !5560, !tbaa !1146
  %conv11 = zext i8 %9 to i32, !dbg !5560
  %cmp12 = icmp slt i32 %conv11, 240, !dbg !5561
  br i1 %cmp12, label %if.then.14, label %if.else.15, !dbg !5562

if.then.14:                                       ; preds = %if.else
  store i32 2, i32* %expected, align 4, !dbg !5563, !tbaa !900
  br label %if.end.22, !dbg !5564

if.else.15:                                       ; preds = %if.else
  %10 = load i8*, i8** %s.addr, align 8, !dbg !5565, !tbaa !894
  %11 = load i8, i8* %10, align 1, !dbg !5567, !tbaa !1146
  %conv16 = zext i8 %11 to i32, !dbg !5567
  %cmp17 = icmp slt i32 %conv16, 248, !dbg !5568
  br i1 %cmp17, label %if.then.19, label %if.else.20, !dbg !5569

if.then.19:                                       ; preds = %if.else.15
  store i32 3, i32* %expected, align 4, !dbg !5570, !tbaa !900
  br label %if.end.21, !dbg !5571

if.else.20:                                       ; preds = %if.else.15
  store i32 0, i32* %retval, !dbg !5572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5572

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  %12 = load i32, i32* %expected, align 4, !dbg !5573, !tbaa !900
  %add = add i32 %12, 1, !dbg !5574
  store i32 %add, i32* %length, align 4, !dbg !5575, !tbaa !900
  br label %for.cond, !dbg !5576

for.cond:                                         ; preds = %for.inc, %if.end.23
  %13 = load i32, i32* %expected, align 4, !dbg !5577, !tbaa !900
  %tobool = icmp ne i32 %13, 0, !dbg !5582
  br i1 %tobool, label %for.body, label %for.end, !dbg !5582

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %expected, align 4, !dbg !5583, !tbaa !900
  %idxprom = sext i32 %14 to i64, !dbg !5585
  %15 = load i8*, i8** %s.addr, align 8, !dbg !5585, !tbaa !894
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !5585
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5585, !tbaa !1146
  %conv24 = zext i8 %16 to i32, !dbg !5585
  %cmp25 = icmp slt i32 %conv24, 128, !dbg !5586
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false, !dbg !5587

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %expected, align 4, !dbg !5588, !tbaa !900
  %idxprom27 = sext i32 %17 to i64, !dbg !5590
  %18 = load i8*, i8** %s.addr, align 8, !dbg !5590, !tbaa !894
  %arrayidx28 = getelementptr i8, i8* %18, i64 %idxprom27, !dbg !5590
  %19 = load i8, i8* %arrayidx28, align 1, !dbg !5590, !tbaa !1146
  %conv29 = zext i8 %19 to i32, !dbg !5590
  %cmp30 = icmp sge i32 %conv29, 192, !dbg !5591
  br i1 %cmp30, label %if.then.32, label %if.end.33, !dbg !5592

if.then.32:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval, !dbg !5593
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5593

if.end.33:                                        ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5594

for.inc:                                          ; preds = %if.end.33
  %20 = load i32, i32* %expected, align 4, !dbg !5596, !tbaa !900
  %dec = add i32 %20, -1, !dbg !5596
  store i32 %dec, i32* %expected, align 4, !dbg !5596, !tbaa !900
  br label %for.cond, !dbg !5597

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %length, align 4, !dbg !5598, !tbaa !900
  store i32 %21, i32* %retval, !dbg !5599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5599

cleanup:                                          ; preds = %for.end, %if.then.32, %if.else.20, %if.then.5, %if.then
  %22 = bitcast i32* %length to i8*, !dbg !5600
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !5600
  %23 = bitcast i32* %expected to i8*, !dbg !5600
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !5600
  %24 = load i32, i32* %retval, !dbg !5600
  ret i32 %24, !dbg !5600
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i8* @PyByteArray_AsString(%struct._object*) #3

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare i64 @ftell(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #4

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i64 @PyObject_Size(%struct._object*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #8

declare void @PySys_FormatStderr(i8*, ...) #3

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PyErr_Clear() #3

declare i32 @PyUnicode_IsIdentifier(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!891, !892}
!llvm.ident = !{!893}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !24, subprograms: !437, globals: !877)
!1 = !DIFile(filename: "tokenizer.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "decoding_state", file: !4, line: 15, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Parser/tokenizer.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "STATE_INIT", value: 0)
!7 = !DIEnumerator(name: "STATE_RAW", value: 1)
!8 = !DIEnumerator(name: "STATE_NORMAL", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 47, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!30 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !30, line: 105, size: 128, align: 64, elements: !32)
!32 = !{!33, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !31, file: !30, line: 107, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !35, line: 177, baseType: !36)
!35 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !37, line: 102, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !39, line: 181, baseType: !40)
!39 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!70 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!116 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!302 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!404 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!420 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!437 = !{!438, !446, !451, !460, !480, !485, !491, !498, !507, !518, !523, !528, !543, !563, !571, !574, !578, !582, !587, !597, !623, !643, !687, !690, !703, !741, !784, !797, !817, !820, !824, !848, !855, !861, !867, !870}
!438 = !DISubprogram(name: "PyTokenizer_FromString", scope: !439, file: !439, line: 798, type: !440, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (i8*, i32)* @PyTokenizer_FromString, variables: !442)
!439 = !DIFile(filename: "Parser/tokenizer.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!440 = !DISubroutineType(types: !441)
!441 = !{!364, !52, !66}
!442 = !{!443, !444, !445}
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !438, file: !439, line: 798, type: !52)
!444 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !438, file: !439, line: 798, type: !66)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !438, file: !439, line: 800, type: !364)
!446 = !DISubprogram(name: "PyTokenizer_FromUTF8", scope: !439, file: !439, line: 815, type: !440, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (i8*, i32)* @PyTokenizer_FromUTF8, variables: !447)
!447 = !{!448, !449, !450}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !446, file: !439, line: 815, type: !52)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !446, file: !439, line: 815, type: !66)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !446, file: !439, line: 817, type: !364)
!451 = !DISubprogram(name: "PyTokenizer_FromFile", scope: !439, file: !439, line: 846, type: !452, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* (%struct._IO_FILE*, i8*, i8*, i8*)* @PyTokenizer_FromFile, variables: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!364, !67, !52, !52, !52}
!454 = !{!455, !456, !457, !458, !459}
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !451, file: !439, line: 846, type: !67)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !451, file: !439, line: 846, type: !52)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 3, scope: !451, file: !439, line: 847, type: !52)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 4, scope: !451, file: !439, line: 847, type: !52)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !451, file: !439, line: 849, type: !364)
!460 = !DISubprogram(name: "PyTokenizer_Free", scope: !439, file: !439, line: 879, type: !461, isLocal: false, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tok_state*)* @PyTokenizer_Free, variables: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !364}
!463 = !{!464, !465, !467, !470, !472, !475, !477}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !460, file: !439, line: 879, type: !364)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !466, file: !439, line: 884, type: !28)
!466 = distinct !DILexicalBlock(scope: !460, file: !439, line: 884, column: 8)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !439, line: 884, type: !28)
!468 = distinct !DILexicalBlock(scope: !469, file: !439, line: 884, column: 114)
!469 = distinct !DILexicalBlock(scope: !466, file: !439, line: 884, column: 80)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !471, file: !439, line: 885, type: !28)
!471 = distinct !DILexicalBlock(scope: !460, file: !439, line: 885, column: 8)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !439, line: 885, type: !28)
!473 = distinct !DILexicalBlock(scope: !474, file: !439, line: 885, column: 112)
!474 = distinct !DILexicalBlock(scope: !471, file: !439, line: 885, column: 78)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !476, file: !439, line: 886, type: !28)
!476 = distinct !DILexicalBlock(scope: !460, file: !439, line: 886, column: 8)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !439, line: 886, type: !28)
!478 = distinct !DILexicalBlock(scope: !479, file: !439, line: 886, column: 105)
!479 = distinct !DILexicalBlock(scope: !476, file: !439, line: 886, column: 71)
!480 = !DISubprogram(name: "PyToken_OneChar", scope: !439, file: !439, line: 1109, type: !481, isLocal: false, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @PyToken_OneChar, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!66, !66}
!483 = !{!484}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !480, file: !439, line: 1109, type: !66)
!485 = !DISubprogram(name: "PyToken_TwoChars", scope: !439, file: !439, line: 1141, type: !486, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @PyToken_TwoChars, variables: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!66, !66, !66}
!488 = !{!489, !490}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !485, file: !439, line: 1141, type: !66)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2", arg: 2, scope: !485, file: !439, line: 1141, type: !66)
!491 = !DISubprogram(name: "PyToken_ThreeChars", scope: !439, file: !439, line: 1215, type: !492, isLocal: false, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32)* @PyToken_ThreeChars, variables: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!66, !66, !66, !66}
!494 = !{!495, !496, !497}
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c1", arg: 1, scope: !491, file: !439, line: 1215, type: !66)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c2", arg: 2, scope: !491, file: !439, line: 1215, type: !66)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c3", arg: 3, scope: !491, file: !439, line: 1215, type: !66)
!498 = !DISubprogram(name: "PyTokenizer_Get", scope: !439, file: !439, line: 1727, type: !499, isLocal: false, isDefinition: true, scopeLine: 1728, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8**, i8**)* @PyTokenizer_Get, variables: !502)
!499 = !DISubroutineType(types: !500)
!500 = !{!66, !364, !501, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !498, file: !439, line: 1727, type: !364)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_start", arg: 2, scope: !498, file: !439, line: 1727, type: !501)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_end", arg: 3, scope: !498, file: !439, line: 1727, type: !501)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !498, file: !439, line: 1729, type: !66)
!507 = !DISubprogram(name: "PyTokenizer_FindEncodingFilename", scope: !439, file: !439, line: 1748, type: !508, isLocal: false, isDefinition: true, scopeLine: 1749, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32, %struct._object*)* @PyTokenizer_FindEncodingFilename, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!26, !66, !28}
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !507, file: !439, line: 1748, type: !66)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !507, file: !439, line: 1748, type: !28)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !507, file: !439, line: 1750, type: !364)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !507, file: !439, line: 1751, type: !67)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p_start", scope: !507, file: !439, line: 1752, type: !26)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p_end", scope: !507, file: !439, line: 1752, type: !26)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !507, file: !439, line: 1752, type: !26)
!518 = !DISubprogram(name: "PyTokenizer_FindEncoding", scope: !439, file: !439, line: 1800, type: !519, isLocal: false, isDefinition: true, scopeLine: 1801, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @PyTokenizer_FindEncoding, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!26, !66}
!521 = !{!522}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !518, file: !439, line: 1800, type: !66)
!523 = !DISubprogram(name: "tok_new", scope: !439, file: !439, line: 113, type: !524, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: %struct.tok_state* ()* @tok_new, variables: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!364}
!526 = !{!527}
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !523, file: !439, line: 115, type: !364)
!528 = !DISubprogram(name: "decode_str", scope: !439, file: !439, line: 738, type: !529, isLocal: true, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.tok_state*)* @decode_str, variables: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!52, !52, !66, !364}
!531 = !{!532, !533, !534, !535, !536, !537, !538, !542}
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 1, scope: !528, file: !439, line: 738, type: !52)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "single", arg: 2, scope: !528, file: !439, line: 738, type: !66)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !528, file: !439, line: 738, type: !364)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !528, file: !439, line: 740, type: !28)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !528, file: !439, line: 741, type: !52)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !528, file: !439, line: 742, type: !52)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newl", scope: !528, file: !439, line: 743, type: !539)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, align: 64, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 2)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lineno", scope: !528, file: !439, line: 744, type: !66)
!543 = !DISubprogram(name: "check_bom", scope: !439, file: !439, line: 339, type: !544, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.tok_state*)*, void (i32, %struct.tok_state*)*, i32 (%struct.tok_state*, i8*)*, %struct.tok_state*)* @check_bom, variables: !555)
!544 = !DISubroutineType(types: !545)
!545 = !{!66, !546, !549, !552, !364}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!66, !364}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !66, !364}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!66, !364, !52}
!555 = !{!556, !557, !558, !559, !560, !561, !562}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "get_char", arg: 1, scope: !543, file: !439, line: 339, type: !546)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unget_char", arg: 2, scope: !543, file: !439, line: 340, type: !549)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set_readline", arg: 3, scope: !543, file: !439, line: 341, type: !552)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 4, scope: !543, file: !439, line: 342, type: !364)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch1", scope: !543, file: !439, line: 344, type: !66)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch2", scope: !543, file: !439, line: 344, type: !66)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch3", scope: !543, file: !439, line: 344, type: !66)
!563 = !DISubprogram(name: "new_string", scope: !439, file: !439, line: 150, type: !564, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i64, %struct.tok_state*)* @new_string, variables: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!26, !52, !34, !364}
!566 = !{!567, !568, !569, !570}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !563, file: !439, line: 150, type: !52)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !563, file: !439, line: 150, type: !34)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !563, file: !439, line: 150, type: !364)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !563, file: !439, line: 152, type: !26)
!571 = !DISubprogram(name: "buf_getc", scope: !439, file: !439, line: 656, type: !547, isLocal: true, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @buf_getc, variables: !572)
!572 = !{!573}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !571, file: !439, line: 656, type: !364)
!574 = !DISubprogram(name: "buf_ungetc", scope: !439, file: !439, line: 663, type: !550, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.tok_state*)* @buf_ungetc, variables: !575)
!575 = !{!576, !577}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !574, file: !439, line: 663, type: !66)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !574, file: !439, line: 663, type: !364)
!578 = !DISubprogram(name: "buf_setreadl", scope: !439, file: !439, line: 672, type: !553, isLocal: true, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8*)* @buf_setreadl, variables: !579)
!579 = !{!580, !581}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !578, file: !439, line: 672, type: !364)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !578, file: !439, line: 672, type: !52)
!582 = !DISubprogram(name: "error_ret", scope: !439, file: !439, line: 185, type: !583, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.tok_state*)* @error_ret, variables: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!26, !364}
!585 = !{!586}
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !582, file: !439, line: 185, type: !364)
!587 = !DISubprogram(name: "translate_into_utf8", scope: !439, file: !439, line: 681, type: !588, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*)* @translate_into_utf8, variables: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!28, !52, !52}
!590 = !{!591, !592, !593, !594, !595}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !587, file: !439, line: 681, type: !52)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !587, file: !439, line: 681, type: !52)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "utf8", scope: !587, file: !439, line: 682, type: !28)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !587, file: !439, line: 683, type: !28)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !439, line: 687, type: !28)
!596 = distinct !DILexicalBlock(scope: !587, file: !439, line: 687, column: 8)
!597 = !DISubprogram(name: "check_coding_spec", scope: !439, file: !439, line: 280, type: !598, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, %struct.tok_state*, i32 (%struct.tok_state*, i8*)*)* @check_coding_spec, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{!66, !52, !34, !364, !552}
!600 = !{!601, !602, !603, !604, !605, !606, !607, !610, !615, !616, !618, !619, !622}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !597, file: !439, line: 280, type: !52)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !597, file: !439, line: 280, type: !34)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !597, file: !439, line: 280, type: !364)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "set_readline", arg: 4, scope: !597, file: !439, line: 281, type: !552)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cs", scope: !597, file: !439, line: 283, type: !26)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !597, file: !439, line: 284, type: !66)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !608, file: !439, line: 294, type: !34)
!608 = distinct !DILexicalBlock(scope: !609, file: !439, line: 293, column: 14)
!609 = distinct !DILexicalBlock(scope: !597, file: !439, line: 293, column: 9)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !611, file: !439, line: 310, type: !115)
!611 = distinct !DILexicalBlock(scope: !612, file: !439, line: 310, column: 28)
!612 = distinct !DILexicalBlock(scope: !613, file: !439, line: 310, column: 13)
!613 = distinct !DILexicalBlock(scope: !614, file: !439, line: 308, column: 38)
!614 = distinct !DILexicalBlock(scope: !597, file: !439, line: 308, column: 9)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !611, file: !439, line: 310, type: !115)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !617, file: !439, line: 310, type: !413)
!617 = distinct !DILexicalBlock(scope: !611, file: !439, line: 310, column: 1538)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !617, file: !439, line: 310, type: !66)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !620, file: !439, line: 325, type: !115)
!620 = distinct !DILexicalBlock(scope: !621, file: !439, line: 325, column: 29)
!621 = distinct !DILexicalBlock(scope: !614, file: !439, line: 324, column: 12)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !620, file: !439, line: 325, type: !115)
!623 = !DISubprogram(name: "get_coding_spec", scope: !439, file: !439, line: 227, type: !624, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8**, i64, %struct.tok_state*)* @get_coding_spec, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!66, !52, !501, !34, !364}
!626 = !{!627, !628, !629, !630, !631, !632, !636, !639, !642}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !623, file: !439, line: 227, type: !52)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spec", arg: 2, scope: !623, file: !439, line: 227, type: !501)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !623, file: !439, line: 227, type: !34)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 4, scope: !623, file: !439, line: 227, type: !364)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !623, file: !439, line: 229, type: !34)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !633, file: !439, line: 240, type: !52)
!633 = distinct !DILexicalBlock(scope: !634, file: !439, line: 239, column: 31)
!634 = distinct !DILexicalBlock(scope: !635, file: !439, line: 239, column: 5)
!635 = distinct !DILexicalBlock(scope: !623, file: !439, line: 239, column: 5)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "begin", scope: !637, file: !439, line: 242, type: !52)
!637 = distinct !DILexicalBlock(scope: !638, file: !439, line: 241, column: 2320)
!638 = distinct !DILexicalBlock(scope: !633, file: !439, line: 241, column: 13)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !640, file: !439, line: 256, type: !26)
!640 = distinct !DILexicalBlock(scope: !641, file: !439, line: 255, column: 28)
!641 = distinct !DILexicalBlock(scope: !637, file: !439, line: 255, column: 17)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !640, file: !439, line: 257, type: !26)
!643 = !DISubprogram(name: "get_normal_name", scope: !439, file: !439, line: 196, type: !644, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @get_normal_name, variables: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!26, !26}
!646 = !{!647, !648, !652, !653, !657, !661, !664, !665, !667, !668, !671, !672, !674, !675, !677, !678, !680, !681, !683, !684, !686}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !643, file: !439, line: 196, type: !26)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !643, file: !439, line: 198, type: !649)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 104, align: 8, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 13)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !643, file: !439, line: 199, type: !66)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !654, file: !439, line: 201, type: !66)
!654 = distinct !DILexicalBlock(scope: !655, file: !439, line: 200, column: 30)
!655 = distinct !DILexicalBlock(scope: !656, file: !439, line: 200, column: 5)
!656 = distinct !DILexicalBlock(scope: !643, file: !439, line: 200, column: 5)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !658, file: !439, line: 207, type: !66)
!658 = distinct !DILexicalBlock(scope: !659, file: !439, line: 207, column: 38)
!659 = distinct !DILexicalBlock(scope: !660, file: !439, line: 204, column: 18)
!660 = distinct !DILexicalBlock(scope: !654, file: !439, line: 202, column: 13)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !662, file: !439, line: 210, type: !115)
!662 = distinct !DILexicalBlock(scope: !663, file: !439, line: 210, column: 24)
!663 = distinct !DILexicalBlock(scope: !643, file: !439, line: 210, column: 9)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !662, file: !439, line: 210, type: !115)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !666, file: !439, line: 210, type: !413)
!666 = distinct !DILexicalBlock(scope: !662, file: !439, line: 210, column: 1552)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !666, file: !439, line: 210, type: !66)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !669, file: !439, line: 213, type: !115)
!669 = distinct !DILexicalBlock(scope: !670, file: !439, line: 213, column: 29)
!670 = distinct !DILexicalBlock(scope: !663, file: !439, line: 213, column: 14)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !669, file: !439, line: 213, type: !115)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !673, file: !439, line: 213, type: !413)
!673 = distinct !DILexicalBlock(scope: !669, file: !439, line: 213, column: 1587)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !673, file: !439, line: 213, type: !66)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !676, file: !439, line: 214, type: !115)
!676 = distinct !DILexicalBlock(scope: !670, file: !439, line: 214, column: 29)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !676, file: !439, line: 214, type: !115)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !679, file: !439, line: 214, type: !413)
!679 = distinct !DILexicalBlock(scope: !676, file: !439, line: 214, column: 1632)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !679, file: !439, line: 214, type: !66)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !682, file: !439, line: 215, type: !115)
!682 = distinct !DILexicalBlock(scope: !670, file: !439, line: 215, column: 29)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !682, file: !439, line: 215, type: !115)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !685, file: !439, line: 215, type: !413)
!685 = distinct !DILexicalBlock(scope: !682, file: !439, line: 215, column: 1647)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !685, file: !439, line: 215, type: !66)
!687 = !DISubprogram(name: "tolower", scope: !10, file: !10, line: 216, type: !481, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tolower, variables: !688)
!688 = !{!689}
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__c", arg: 1, scope: !687, file: !10, line: 216, type: !66)
!690 = !DISubprogram(name: "translate_newlines", scope: !439, file: !439, line: 693, type: !691, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.tok_state*)* @translate_newlines, variables: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!26, !52, !66, !364}
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !690, file: !439, line: 693, type: !52)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exec_input", arg: 2, scope: !690, file: !439, line: 693, type: !66)
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !690, file: !439, line: 693, type: !364)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "skip_next_lf", scope: !690, file: !439, line: 694, type: !66)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "needed_length", scope: !690, file: !439, line: 695, type: !115)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final_length", scope: !690, file: !439, line: 695, type: !115)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !690, file: !439, line: 696, type: !26)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !690, file: !439, line: 696, type: !26)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !690, file: !439, line: 697, type: !27)
!703 = !DISubprogram(name: "tok_get", scope: !439, file: !439, line: 1325, type: !499, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8**, i8**)* @tok_get, variables: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !714, !715, !718, !719, !720, !729, !732, !733, !734, !736, !737, !740}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !703, file: !439, line: 1325, type: !364)
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_start", arg: 2, scope: !703, file: !439, line: 1325, type: !501)
!707 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_end", arg: 3, scope: !703, file: !439, line: 1325, type: !501)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !703, file: !439, line: 1327, type: !66)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blankline", scope: !703, file: !439, line: 1328, type: !66)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nonascii", scope: !703, file: !439, line: 1328, type: !66)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !712, file: !439, line: 1337, type: !66)
!712 = distinct !DILexicalBlock(scope: !713, file: !439, line: 1336, column: 21)
!713 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1336, column: 9)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "altcol", scope: !712, file: !439, line: 1338, type: !66)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_b", scope: !716, file: !439, line: 1449, type: !66)
!716 = distinct !DILexicalBlock(scope: !717, file: !439, line: 1447, column: 88)
!717 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1447, column: 9)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_r", scope: !716, file: !439, line: 1449, type: !66)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saw_u", scope: !716, file: !439, line: 1449, type: !66)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nonzero", scope: !721, file: !439, line: 1563, type: !66)
!721 = distinct !DILexicalBlock(scope: !722, file: !439, line: 1562, column: 18)
!722 = distinct !DILexicalBlock(scope: !723, file: !439, line: 1550, column: 22)
!723 = distinct !DILexicalBlock(scope: !724, file: !439, line: 1538, column: 22)
!724 = distinct !DILexicalBlock(scope: !725, file: !439, line: 1525, column: 17)
!725 = distinct !DILexicalBlock(scope: !726, file: !439, line: 1518, column: 23)
!726 = distinct !DILexicalBlock(scope: !727, file: !439, line: 1518, column: 13)
!727 = distinct !DILexicalBlock(scope: !728, file: !439, line: 1517, column: 77)
!728 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1517, column: 9)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote", scope: !730, file: !439, line: 1629, type: !66)
!730 = distinct !DILexicalBlock(scope: !731, file: !439, line: 1628, column: 32)
!731 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1628, column: 9)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote_size", scope: !730, file: !439, line: 1630, type: !66)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end_quote_size", scope: !730, file: !439, line: 1631, type: !66)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !735, file: !439, line: 1689, type: !66)
!735 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1688, column: 5)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "token", scope: !735, file: !439, line: 1690, type: !66)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c3", scope: !738, file: !439, line: 1692, type: !66)
!738 = distinct !DILexicalBlock(scope: !739, file: !439, line: 1691, column: 26)
!739 = distinct !DILexicalBlock(scope: !735, file: !439, line: 1691, column: 13)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "token3", scope: !738, file: !439, line: 1693, type: !66)
!741 = !DISubprogram(name: "tok_nextc", scope: !439, file: !439, line: 898, type: !547, isLocal: true, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @tok_nextc, variables: !742)
!742 = !{!743, !744, !750, !753, !756, !759, !760, !761, !765, !767, !772, !773, !774, !775, !777, !778, !779, !781, !782, !783}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !741, file: !439, line: 898, type: !364)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !745, file: !439, line: 907, type: !26)
!745 = distinct !DILexicalBlock(scope: !746, file: !439, line: 906, column: 36)
!746 = distinct !DILexicalBlock(scope: !747, file: !439, line: 906, column: 13)
!747 = distinct !DILexicalBlock(scope: !748, file: !439, line: 900, column: 14)
!748 = distinct !DILexicalBlock(scope: !749, file: !439, line: 900, column: 5)
!749 = distinct !DILexicalBlock(scope: !741, file: !439, line: 900, column: 5)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newtok", scope: !751, file: !439, line: 925, type: !26)
!751 = distinct !DILexicalBlock(scope: !752, file: !439, line: 924, column: 40)
!752 = distinct !DILexicalBlock(scope: !747, file: !439, line: 924, column: 13)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "translated", scope: !754, file: !439, line: 928, type: !26)
!754 = distinct !DILexicalBlock(scope: !755, file: !439, line: 927, column: 39)
!755 = distinct !DILexicalBlock(scope: !751, file: !439, line: 927, column: 17)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !757, file: !439, line: 936, type: !34)
!757 = distinct !DILexicalBlock(scope: !758, file: !439, line: 934, column: 53)
!758 = distinct !DILexicalBlock(scope: !751, file: !439, line: 934, column: 17)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !757, file: !439, line: 937, type: !52)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !757, file: !439, line: 938, type: !28)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !762, file: !439, line: 947, type: !28)
!762 = distinct !DILexicalBlock(scope: !763, file: !439, line: 947, column: 24)
!763 = distinct !DILexicalBlock(scope: !764, file: !439, line: 946, column: 27)
!764 = distinct !DILexicalBlock(scope: !757, file: !439, line: 946, column: 21)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !439, line: 953, type: !28)
!766 = distinct !DILexicalBlock(scope: !757, file: !439, line: 953, column: 20)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !768, file: !439, line: 965, type: !115)
!768 = distinct !DILexicalBlock(scope: !769, file: !439, line: 964, column: 48)
!769 = distinct !DILexicalBlock(scope: !770, file: !439, line: 964, column: 22)
!770 = distinct !DILexicalBlock(scope: !771, file: !439, line: 960, column: 22)
!771 = distinct !DILexicalBlock(scope: !751, file: !439, line: 958, column: 17)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldlen", scope: !768, file: !439, line: 966, type: !115)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newlen", scope: !768, file: !439, line: 967, type: !115)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !768, file: !439, line: 968, type: !26)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "done", scope: !776, file: !439, line: 1000, type: !66)
!776 = distinct !DILexicalBlock(scope: !752, file: !439, line: 999, column: 14)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !776, file: !439, line: 1001, type: !34)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !776, file: !439, line: 1002, type: !26)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curstart", scope: !780, file: !439, line: 1036, type: !34)
!780 = distinct !DILexicalBlock(scope: !776, file: !439, line: 1035, column: 27)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curvalid", scope: !780, file: !439, line: 1038, type: !34)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newsize", scope: !780, file: !439, line: 1039, type: !34)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newbuf", scope: !780, file: !439, line: 1040, type: !26)
!784 = !DISubprogram(name: "decoding_fgets", scope: !439, file: !439, line: 577, type: !785, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.tok_state*)* @decoding_fgets, variables: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!26, !26, !66, !364}
!787 = !{!788, !789, !790, !791, !792, !793, !796}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !784, file: !439, line: 577, type: !26)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !784, file: !439, line: 577, type: !66)
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !784, file: !439, line: 577, type: !364)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !784, file: !439, line: 579, type: !26)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "badchar", scope: !784, file: !439, line: 580, type: !66)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !794, file: !439, line: 610, type: !416)
!794 = distinct !DILexicalBlock(scope: !795, file: !439, line: 609, column: 33)
!795 = distinct !DILexicalBlock(scope: !784, file: !439, line: 609, column: 9)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !794, file: !439, line: 611, type: !66)
!797 = !DISubprogram(name: "fp_readl", scope: !439, file: !439, line: 416, type: !785, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.tok_state*)* @fp_readl, variables: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !807, !810, !812, !814}
!799 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !797, file: !439, line: 416, type: !26)
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !797, file: !439, line: 416, type: !66)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 3, scope: !797, file: !439, line: 416, type: !364)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufobj", scope: !797, file: !439, line: 418, type: !28)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !797, file: !439, line: 419, type: !52)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !797, file: !439, line: 420, type: !34)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !806, file: !439, line: 452, type: !28)
!806 = distinct !DILexicalBlock(scope: !797, file: !439, line: 452, column: 8)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !439, line: 452, type: !28)
!808 = distinct !DILexicalBlock(scope: !809, file: !439, line: 452, column: 112)
!809 = distinct !DILexicalBlock(scope: !806, file: !439, line: 452, column: 78)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !811, file: !439, line: 468, type: !28)
!811 = distinct !DILexicalBlock(scope: !797, file: !439, line: 468, column: 8)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !813, file: !439, line: 472, type: !28)
!813 = distinct !DILexicalBlock(scope: !797, file: !439, line: 472, column: 8)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !439, line: 472, type: !28)
!815 = distinct !DILexicalBlock(scope: !816, file: !439, line: 472, column: 98)
!816 = distinct !DILexicalBlock(scope: !813, file: !439, line: 472, column: 64)
!817 = !DISubprogram(name: "fp_getc", scope: !439, file: !439, line: 535, type: !547, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @fp_getc, variables: !818)
!818 = !{!819}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !817, file: !439, line: 535, type: !364)
!820 = !DISubprogram(name: "fp_ungetc", scope: !439, file: !439, line: 541, type: !550, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.tok_state*)* @fp_ungetc, variables: !821)
!821 = !{!822, !823}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !820, file: !439, line: 541, type: !66)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !820, file: !439, line: 541, type: !364)
!824 = !DISubprogram(name: "fp_setreadl", scope: !439, file: !439, line: 487, type: !553, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*, i8*)* @fp_setreadl, variables: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !835, !838, !840, !843, !845}
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !824, file: !439, line: 487, type: !364)
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 2, scope: !824, file: !439, line: 487, type: !52)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "readline", scope: !824, file: !439, line: 489, type: !28)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stream", scope: !824, file: !439, line: 489, type: !28)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "io", scope: !824, file: !439, line: 489, type: !28)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !824, file: !439, line: 492, type: !66)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !824, file: !439, line: 493, type: !40)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !834, file: !439, line: 517, type: !28)
!834 = distinct !DILexicalBlock(scope: !824, file: !439, line: 517, column: 8)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !439, line: 517, type: !28)
!836 = distinct !DILexicalBlock(scope: !837, file: !439, line: 517, column: 114)
!837 = distinct !DILexicalBlock(scope: !834, file: !439, line: 517, column: 80)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !839, file: !439, line: 528, type: !28)
!839 = distinct !DILexicalBlock(scope: !824, file: !439, line: 528, column: 8)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !841, file: !439, line: 528, type: !28)
!841 = distinct !DILexicalBlock(scope: !842, file: !439, line: 528, column: 98)
!842 = distinct !DILexicalBlock(scope: !839, file: !439, line: 528, column: 64)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !844, file: !439, line: 529, type: !28)
!844 = distinct !DILexicalBlock(scope: !824, file: !439, line: 529, column: 8)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !846, file: !439, line: 529, type: !28)
!846 = distinct !DILexicalBlock(scope: !847, file: !439, line: 529, column: 94)
!847 = distinct !DILexicalBlock(scope: !844, file: !439, line: 529, column: 60)
!848 = !DISubprogram(name: "valid_utf8", scope: !439, file: !439, line: 548, type: !849, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @valid_utf8, variables: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!66, !413}
!851 = !{!852, !853, !854}
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !848, file: !439, line: 548, type: !413)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "expected", scope: !848, file: !439, line: 550, type: !66)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !848, file: !439, line: 551, type: !66)
!855 = !DISubprogram(name: "decoding_feof", scope: !439, file: !439, line: 634, type: !547, isLocal: true, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @decoding_feof, variables: !856)
!856 = !{!857, !858}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !855, file: !439, line: 634, type: !364)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !859, file: !439, line: 639, type: !28)
!859 = distinct !DILexicalBlock(scope: !860, file: !439, line: 638, column: 12)
!860 = distinct !DILexicalBlock(scope: !855, file: !439, line: 636, column: 9)
!861 = !DISubprogram(name: "tok_backup", scope: !439, file: !439, line: 1095, type: !862, isLocal: true, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tok_state*, i32)* @tok_backup, variables: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !364, !66}
!864 = !{!865, !866}
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !861, file: !439, line: 1095, type: !364)
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !861, file: !439, line: 1095, type: !66)
!867 = !DISubprogram(name: "indenterror", scope: !439, file: !439, line: 1273, type: !547, isLocal: true, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @indenterror, variables: !868)
!868 = !{!869}
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !867, file: !439, line: 1273, type: !364)
!870 = !DISubprogram(name: "verify_identifier", scope: !439, file: !439, line: 1300, type: !547, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tok_state*)* @verify_identifier, variables: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !870, file: !439, line: 1300, type: !364)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !870, file: !439, line: 1302, type: !28)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !870, file: !439, line: 1303, type: !66)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !876, file: !439, line: 1315, type: !28)
!876 = distinct !DILexicalBlock(scope: !870, file: !439, line: 1315, column: 8)
!877 = !{!878, !882, !890}
!878 = !DIGlobalVariable(name: "_PyParser_TokenNames", scope: !0, file: !439, line: 50, type: !879, isLocal: false, isDefinition: true, variable: [55 x i8*]* @_PyParser_TokenNames)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3520, align: 64, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 55)
!882 = !DIGlobalVariable(name: "PyId_open", scope: !824, file: !439, line: 490, type: !883, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fp_setreadl.PyId_open)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !30, line: 144, baseType: !884)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !30, line: 140, size: 192, align: 64, elements: !885)
!885 = !{!886, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !30, line: 141, baseType: !887, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !884, file: !30, line: 142, baseType: !52, size: 64, align: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !884, file: !30, line: 143, baseType: !28, size: 64, align: 64, offset: 128)
!890 = !DIGlobalVariable(name: "PyId_readline", scope: !824, file: !439, line: 491, type: !883, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @fp_setreadl.PyId_readline)
!891 = !{i32 2, !"Dwarf Version", i32 4}
!892 = !{i32 2, !"Debug Info Version", i32 3}
!893 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!894 = !{!895, !895, i64 0}
!895 = !{!"any pointer", !896, i64 0}
!896 = !{!"omnipotent char", !897, i64 0}
!897 = !{!"Simple C/C++ TBAA"}
!898 = !DIExpression()
!899 = !DILocation(line: 798, column: 36, scope: !438)
!900 = !{!901, !901, i64 0}
!901 = !{!"int", !896, i64 0}
!902 = !DILocation(line: 798, column: 45, scope: !438)
!903 = !DILocation(line: 800, column: 5, scope: !438)
!904 = !DILocation(line: 800, column: 23, scope: !438)
!905 = !DILocation(line: 800, column: 29, scope: !438)
!906 = !DILocation(line: 801, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !438, file: !439, line: 801, column: 9)
!908 = !DILocation(line: 801, column: 13, scope: !907)
!909 = !DILocation(line: 801, column: 9, scope: !438)
!910 = !DILocation(line: 802, column: 9, scope: !907)
!911 = !DILocation(line: 803, column: 22, scope: !438)
!912 = !DILocation(line: 803, column: 27, scope: !438)
!913 = !DILocation(line: 803, column: 39, scope: !438)
!914 = !DILocation(line: 803, column: 11, scope: !438)
!915 = !DILocation(line: 803, column: 9, scope: !438)
!916 = !DILocation(line: 804, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !438, file: !439, line: 804, column: 9)
!918 = !DILocation(line: 804, column: 13, scope: !917)
!919 = !DILocation(line: 804, column: 9, scope: !438)
!920 = !DILocation(line: 805, column: 26, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !439, line: 804, column: 28)
!922 = !DILocation(line: 805, column: 9, scope: !921)
!923 = !DILocation(line: 806, column: 9, scope: !921)
!924 = !DILocation(line: 810, column: 56, scope: !438)
!925 = !DILocation(line: 810, column: 38, scope: !438)
!926 = !DILocation(line: 810, column: 43, scope: !438)
!927 = !DILocation(line: 810, column: 47, scope: !438)
!928 = !{!929, !895, i64 16}
!929 = !{!"tok_state", !895, i64 0, !895, i64 8, !895, i64 16, !895, i64 24, !895, i64 32, !901, i64 40, !895, i64 48, !901, i64 56, !901, i64 60, !896, i64 64, !901, i64 464, !901, i64 468, !895, i64 472, !895, i64 480, !901, i64 488, !901, i64 492, !895, i64 496, !901, i64 504, !901, i64 508, !901, i64 512, !896, i64 516, !896, i64 916, !901, i64 920, !901, i64 924, !895, i64 928, !901, i64 936, !895, i64 944, !895, i64 952, !895, i64 960, !895, i64 968, !895, i64 976, !895, i64 984}
!930 = !DILocation(line: 810, column: 27, scope: !438)
!931 = !DILocation(line: 810, column: 32, scope: !438)
!932 = !DILocation(line: 810, column: 36, scope: !438)
!933 = !{!929, !895, i64 24}
!934 = !DILocation(line: 810, column: 16, scope: !438)
!935 = !DILocation(line: 810, column: 21, scope: !438)
!936 = !DILocation(line: 810, column: 25, scope: !438)
!937 = !{!929, !895, i64 8}
!938 = !DILocation(line: 810, column: 5, scope: !438)
!939 = !DILocation(line: 810, column: 10, scope: !438)
!940 = !DILocation(line: 810, column: 14, scope: !438)
!941 = !{!929, !895, i64 0}
!942 = !DILocation(line: 811, column: 12, scope: !438)
!943 = !DILocation(line: 811, column: 5, scope: !438)
!944 = !DILocation(line: 812, column: 1, scope: !438)
!945 = !DILocation(line: 115, column: 5, scope: !523)
!946 = !DILocation(line: 115, column: 23, scope: !523)
!947 = !DILocation(line: 115, column: 49, scope: !523)
!948 = !DILocation(line: 115, column: 29, scope: !523)
!949 = !DILocation(line: 117, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !523, file: !439, line: 117, column: 9)
!951 = !DILocation(line: 117, column: 13, scope: !950)
!952 = !DILocation(line: 117, column: 9, scope: !523)
!953 = !DILocation(line: 118, column: 9, scope: !950)
!954 = !DILocation(line: 119, column: 49, scope: !523)
!955 = !DILocation(line: 119, column: 54, scope: !523)
!956 = !DILocation(line: 119, column: 60, scope: !523)
!957 = !{!929, !895, i64 32}
!958 = !DILocation(line: 119, column: 38, scope: !523)
!959 = !DILocation(line: 119, column: 43, scope: !523)
!960 = !DILocation(line: 119, column: 47, scope: !523)
!961 = !DILocation(line: 119, column: 27, scope: !523)
!962 = !DILocation(line: 119, column: 32, scope: !523)
!963 = !DILocation(line: 119, column: 36, scope: !523)
!964 = !DILocation(line: 119, column: 16, scope: !523)
!965 = !DILocation(line: 119, column: 21, scope: !523)
!966 = !DILocation(line: 119, column: 25, scope: !523)
!967 = !DILocation(line: 119, column: 5, scope: !523)
!968 = !DILocation(line: 119, column: 10, scope: !523)
!969 = !DILocation(line: 119, column: 14, scope: !523)
!970 = !DILocation(line: 120, column: 5, scope: !523)
!971 = !DILocation(line: 120, column: 10, scope: !523)
!972 = !DILocation(line: 120, column: 15, scope: !523)
!973 = !{!929, !901, i64 40}
!974 = !DILocation(line: 121, column: 5, scope: !523)
!975 = !DILocation(line: 121, column: 10, scope: !523)
!976 = !DILocation(line: 121, column: 13, scope: !523)
!977 = !{!929, !895, i64 48}
!978 = !DILocation(line: 122, column: 5, scope: !523)
!979 = !DILocation(line: 122, column: 10, scope: !523)
!980 = !DILocation(line: 122, column: 16, scope: !523)
!981 = !{!929, !895, i64 984}
!982 = !DILocation(line: 123, column: 5, scope: !523)
!983 = !DILocation(line: 123, column: 10, scope: !523)
!984 = !DILocation(line: 123, column: 18, scope: !523)
!985 = !{!929, !901, i64 56}
!986 = !DILocation(line: 124, column: 5, scope: !523)
!987 = !DILocation(line: 124, column: 10, scope: !523)
!988 = !DILocation(line: 124, column: 17, scope: !523)
!989 = !{!929, !901, i64 60}
!990 = !DILocation(line: 125, column: 5, scope: !523)
!991 = !DILocation(line: 125, column: 10, scope: !523)
!992 = !DILocation(line: 125, column: 22, scope: !523)
!993 = !DILocation(line: 126, column: 5, scope: !523)
!994 = !DILocation(line: 126, column: 10, scope: !523)
!995 = !DILocation(line: 126, column: 16, scope: !523)
!996 = !{!929, !901, i64 464}
!997 = !DILocation(line: 127, column: 5, scope: !523)
!998 = !DILocation(line: 127, column: 10, scope: !523)
!999 = !DILocation(line: 127, column: 17, scope: !523)
!1000 = !{!929, !901, i64 468}
!1001 = !DILocation(line: 128, column: 19, scope: !523)
!1002 = !DILocation(line: 128, column: 24, scope: !523)
!1003 = !DILocation(line: 128, column: 35, scope: !523)
!1004 = !{!929, !895, i64 480}
!1005 = !DILocation(line: 128, column: 5, scope: !523)
!1006 = !DILocation(line: 128, column: 10, scope: !523)
!1007 = !DILocation(line: 128, column: 17, scope: !523)
!1008 = !{!929, !895, i64 472}
!1009 = !DILocation(line: 129, column: 5, scope: !523)
!1010 = !DILocation(line: 129, column: 10, scope: !523)
!1011 = !DILocation(line: 129, column: 17, scope: !523)
!1012 = !{!929, !901, i64 488}
!1013 = !DILocation(line: 130, column: 5, scope: !523)
!1014 = !DILocation(line: 130, column: 10, scope: !523)
!1015 = !DILocation(line: 130, column: 16, scope: !523)
!1016 = !{!929, !901, i64 492}
!1017 = !DILocation(line: 131, column: 5, scope: !523)
!1018 = !DILocation(line: 131, column: 10, scope: !523)
!1019 = !DILocation(line: 131, column: 21, scope: !523)
!1020 = !{!929, !901, i64 504}
!1021 = !DILocation(line: 132, column: 5, scope: !523)
!1022 = !DILocation(line: 132, column: 10, scope: !523)
!1023 = !DILocation(line: 132, column: 19, scope: !523)
!1024 = !{!929, !901, i64 508}
!1025 = !DILocation(line: 133, column: 5, scope: !523)
!1026 = !DILocation(line: 133, column: 10, scope: !523)
!1027 = !DILocation(line: 133, column: 21, scope: !523)
!1028 = !{!929, !901, i64 512}
!1029 = !DILocation(line: 134, column: 5, scope: !523)
!1030 = !DILocation(line: 134, column: 10, scope: !523)
!1031 = !DILocation(line: 134, column: 25, scope: !523)
!1032 = !DILocation(line: 135, column: 5, scope: !523)
!1033 = !DILocation(line: 135, column: 10, scope: !523)
!1034 = !DILocation(line: 135, column: 25, scope: !523)
!1035 = !{!929, !896, i64 916}
!1036 = !DILocation(line: 136, column: 5, scope: !523)
!1037 = !DILocation(line: 136, column: 10, scope: !523)
!1038 = !DILocation(line: 136, column: 25, scope: !523)
!1039 = !{!929, !901, i64 920}
!1040 = !DILocation(line: 137, column: 5, scope: !523)
!1041 = !DILocation(line: 137, column: 10, scope: !523)
!1042 = !DILocation(line: 137, column: 27, scope: !523)
!1043 = !{!929, !901, i64 924}
!1044 = !DILocation(line: 138, column: 5, scope: !523)
!1045 = !DILocation(line: 138, column: 10, scope: !523)
!1046 = !DILocation(line: 138, column: 14, scope: !523)
!1047 = !{!929, !895, i64 968}
!1048 = !DILocation(line: 139, column: 5, scope: !523)
!1049 = !DILocation(line: 139, column: 10, scope: !523)
!1050 = !DILocation(line: 139, column: 19, scope: !523)
!1051 = !{!929, !895, i64 928}
!1052 = !DILocation(line: 140, column: 5, scope: !523)
!1053 = !DILocation(line: 140, column: 10, scope: !523)
!1054 = !DILocation(line: 140, column: 20, scope: !523)
!1055 = !{!929, !901, i64 936}
!1056 = !DILocation(line: 142, column: 5, scope: !523)
!1057 = !DILocation(line: 142, column: 10, scope: !523)
!1058 = !DILocation(line: 142, column: 19, scope: !523)
!1059 = !{!929, !895, i64 496}
!1060 = !DILocation(line: 143, column: 5, scope: !523)
!1061 = !DILocation(line: 143, column: 10, scope: !523)
!1062 = !DILocation(line: 143, column: 28, scope: !523)
!1063 = !{!929, !895, i64 952}
!1064 = !DILocation(line: 144, column: 5, scope: !523)
!1065 = !DILocation(line: 144, column: 10, scope: !523)
!1066 = !DILocation(line: 144, column: 26, scope: !523)
!1067 = !{!929, !895, i64 960}
!1068 = !DILocation(line: 146, column: 12, scope: !523)
!1069 = !DILocation(line: 146, column: 5, scope: !523)
!1070 = !DILocation(line: 147, column: 1, scope: !523)
!1071 = !DILocation(line: 738, column: 24, scope: !528)
!1072 = !DILocation(line: 738, column: 35, scope: !528)
!1073 = !DILocation(line: 738, column: 61, scope: !528)
!1074 = !DILocation(line: 740, column: 5, scope: !528)
!1075 = !DILocation(line: 740, column: 15, scope: !528)
!1076 = !DILocation(line: 741, column: 5, scope: !528)
!1077 = !DILocation(line: 741, column: 17, scope: !528)
!1078 = !DILocation(line: 742, column: 5, scope: !528)
!1079 = !DILocation(line: 742, column: 17, scope: !528)
!1080 = !DILocation(line: 743, column: 5, scope: !528)
!1081 = !DILocation(line: 743, column: 17, scope: !528)
!1082 = !DILocation(line: 744, column: 5, scope: !528)
!1083 = !DILocation(line: 744, column: 9, scope: !528)
!1084 = !DILocation(line: 745, column: 43, scope: !528)
!1085 = !DILocation(line: 745, column: 50, scope: !528)
!1086 = !DILocation(line: 745, column: 58, scope: !528)
!1087 = !DILocation(line: 745, column: 24, scope: !528)
!1088 = !DILocation(line: 745, column: 22, scope: !528)
!1089 = !DILocation(line: 745, column: 5, scope: !528)
!1090 = !DILocation(line: 745, column: 10, scope: !528)
!1091 = !DILocation(line: 745, column: 16, scope: !528)
!1092 = !DILocation(line: 746, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !528, file: !439, line: 746, column: 9)
!1094 = !DILocation(line: 746, column: 13, scope: !1093)
!1095 = !DILocation(line: 746, column: 9, scope: !528)
!1096 = !DILocation(line: 747, column: 9, scope: !1093)
!1097 = !DILocation(line: 748, column: 5, scope: !528)
!1098 = !DILocation(line: 748, column: 10, scope: !528)
!1099 = !DILocation(line: 748, column: 14, scope: !528)
!1100 = !DILocation(line: 749, column: 16, scope: !528)
!1101 = !DILocation(line: 749, column: 5, scope: !528)
!1102 = !DILocation(line: 749, column: 10, scope: !528)
!1103 = !DILocation(line: 749, column: 14, scope: !528)
!1104 = !{!929, !895, i64 976}
!1105 = !DILocation(line: 750, column: 56, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !528, file: !439, line: 750, column: 9)
!1107 = !DILocation(line: 750, column: 10, scope: !1106)
!1108 = !DILocation(line: 750, column: 9, scope: !528)
!1109 = !DILocation(line: 751, column: 26, scope: !1106)
!1110 = !DILocation(line: 751, column: 16, scope: !1106)
!1111 = !DILocation(line: 751, column: 9, scope: !1106)
!1112 = !DILocation(line: 752, column: 11, scope: !528)
!1113 = !DILocation(line: 752, column: 16, scope: !528)
!1114 = !DILocation(line: 752, column: 9, scope: !528)
!1115 = !DILocation(line: 754, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !528, file: !439, line: 754, column: 9)
!1117 = !DILocation(line: 754, column: 14, scope: !1116)
!1118 = !DILocation(line: 754, column: 18, scope: !1116)
!1119 = !DILocation(line: 754, column: 9, scope: !528)
!1120 = !DILocation(line: 755, column: 36, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !439, line: 754, column: 33)
!1122 = !DILocation(line: 755, column: 41, scope: !1121)
!1123 = !DILocation(line: 755, column: 46, scope: !1121)
!1124 = !DILocation(line: 755, column: 16, scope: !1121)
!1125 = !DILocation(line: 755, column: 14, scope: !1121)
!1126 = !DILocation(line: 756, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !439, line: 756, column: 13)
!1128 = !DILocation(line: 756, column: 18, scope: !1127)
!1129 = !DILocation(line: 756, column: 13, scope: !1121)
!1130 = !DILocation(line: 757, column: 30, scope: !1127)
!1131 = !DILocation(line: 757, column: 20, scope: !1127)
!1132 = !DILocation(line: 757, column: 13, scope: !1127)
!1133 = !DILocation(line: 758, column: 32, scope: !1121)
!1134 = !DILocation(line: 758, column: 15, scope: !1121)
!1135 = !DILocation(line: 758, column: 13, scope: !1121)
!1136 = !DILocation(line: 759, column: 5, scope: !1121)
!1137 = !DILocation(line: 760, column: 14, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !528, file: !439, line: 760, column: 5)
!1139 = !DILocation(line: 760, column: 12, scope: !1138)
!1140 = !DILocation(line: 760, column: 10, scope: !1138)
!1141 = !DILocation(line: 761, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !439, line: 761, column: 13)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !439, line: 760, column: 25)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !439, line: 760, column: 5)
!1145 = !DILocation(line: 761, column: 13, scope: !1142)
!1146 = !{!896, !896, i64 0}
!1147 = !DILocation(line: 761, column: 16, scope: !1142)
!1148 = !DILocation(line: 761, column: 13, scope: !1143)
!1149 = !DILocation(line: 761, column: 25, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1142, file: !439, discriminator: 1)
!1151 = !DILocation(line: 762, column: 19, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !439, line: 762, column: 18)
!1153 = !DILocation(line: 762, column: 18, scope: !1152)
!1154 = !DILocation(line: 762, column: 21, scope: !1152)
!1155 = !DILocation(line: 762, column: 18, scope: !1142)
!1156 = !DILocation(line: 764, column: 28, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !439, line: 762, column: 30)
!1158 = !DILocation(line: 764, column: 18, scope: !1157)
!1159 = !DILocation(line: 764, column: 13, scope: !1157)
!1160 = !DILocation(line: 764, column: 26, scope: !1157)
!1161 = !DILocation(line: 765, column: 19, scope: !1157)
!1162 = !DILocation(line: 766, column: 17, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !439, line: 766, column: 17)
!1164 = !DILocation(line: 766, column: 24, scope: !1163)
!1165 = !DILocation(line: 766, column: 17, scope: !1157)
!1166 = !DILocation(line: 766, column: 30, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1163, file: !439, discriminator: 1)
!1168 = !DILocation(line: 767, column: 9, scope: !1157)
!1169 = !DILocation(line: 768, column: 5, scope: !1143)
!1170 = !DILocation(line: 760, column: 21, scope: !1144)
!1171 = !DILocation(line: 760, column: 5, scope: !1144)
!1172 = !DILocation(line: 769, column: 5, scope: !528)
!1173 = !DILocation(line: 769, column: 10, scope: !528)
!1174 = !DILocation(line: 769, column: 14, scope: !528)
!1175 = !DILocation(line: 772, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !528, file: !439, line: 772, column: 9)
!1177 = !DILocation(line: 772, column: 9, scope: !528)
!1178 = !DILocation(line: 773, column: 32, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !439, line: 773, column: 13)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !439, line: 772, column: 18)
!1181 = !DILocation(line: 773, column: 37, scope: !1179)
!1182 = !DILocation(line: 773, column: 47, scope: !1179)
!1183 = !DILocation(line: 773, column: 45, scope: !1179)
!1184 = !DILocation(line: 773, column: 52, scope: !1179)
!1185 = !DILocation(line: 773, column: 14, scope: !1179)
!1186 = !DILocation(line: 773, column: 13, scope: !1180)
!1187 = !DILocation(line: 774, column: 30, scope: !1179)
!1188 = !DILocation(line: 774, column: 20, scope: !1179)
!1189 = !DILocation(line: 774, column: 13, scope: !1179)
!1190 = !DILocation(line: 775, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !439, line: 775, column: 13)
!1192 = !DILocation(line: 775, column: 18, scope: !1191)
!1193 = !DILocation(line: 775, column: 22, scope: !1191)
!1194 = !DILocation(line: 775, column: 36, scope: !1191)
!1195 = !DILocation(line: 775, column: 40, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1191, file: !439, discriminator: 1)
!1197 = !DILocation(line: 775, column: 45, scope: !1191)
!1198 = !DILocation(line: 775, column: 40, scope: !1191)
!1199 = !DILocation(line: 775, column: 62, scope: !1191)
!1200 = !DILocation(line: 775, column: 65, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1191, file: !439, discriminator: 2)
!1202 = !DILocation(line: 775, column: 13, scope: !1180)
!1203 = !DILocation(line: 776, column: 36, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !439, line: 776, column: 17)
!1205 = distinct !DILexicalBlock(scope: !1191, file: !439, line: 775, column: 74)
!1206 = !DILocation(line: 776, column: 43, scope: !1204)
!1207 = !DILocation(line: 776, column: 47, scope: !1204)
!1208 = !DILocation(line: 776, column: 57, scope: !1204)
!1209 = !DILocation(line: 776, column: 55, scope: !1204)
!1210 = !DILocation(line: 777, column: 36, scope: !1204)
!1211 = !DILocation(line: 776, column: 18, scope: !1204)
!1212 = !DILocation(line: 776, column: 17, scope: !1205)
!1213 = !DILocation(line: 778, column: 34, scope: !1204)
!1214 = !DILocation(line: 778, column: 24, scope: !1204)
!1215 = !DILocation(line: 778, column: 17, scope: !1204)
!1216 = !DILocation(line: 779, column: 9, scope: !1205)
!1217 = !DILocation(line: 780, column: 5, scope: !1180)
!1218 = !DILocation(line: 781, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !528, file: !439, line: 781, column: 9)
!1220 = !DILocation(line: 781, column: 14, scope: !1219)
!1221 = !DILocation(line: 781, column: 18, scope: !1219)
!1222 = !DILocation(line: 781, column: 9, scope: !528)
!1223 = !DILocation(line: 783, column: 36, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !439, line: 781, column: 33)
!1225 = !DILocation(line: 783, column: 41, scope: !1224)
!1226 = !DILocation(line: 783, column: 46, scope: !1224)
!1227 = !DILocation(line: 783, column: 16, scope: !1224)
!1228 = !DILocation(line: 783, column: 14, scope: !1224)
!1229 = !DILocation(line: 784, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1224, file: !439, line: 784, column: 13)
!1231 = !DILocation(line: 784, column: 18, scope: !1230)
!1232 = !DILocation(line: 784, column: 13, scope: !1224)
!1233 = !DILocation(line: 785, column: 30, scope: !1230)
!1234 = !DILocation(line: 785, column: 20, scope: !1230)
!1235 = !DILocation(line: 785, column: 13, scope: !1230)
!1236 = !DILocation(line: 786, column: 50, scope: !1224)
!1237 = !DILocation(line: 786, column: 32, scope: !1224)
!1238 = !DILocation(line: 786, column: 58, scope: !1224)
!1239 = !DILocation(line: 786, column: 30, scope: !1224)
!1240 = !DILocation(line: 786, column: 13, scope: !1224)
!1241 = !DILocation(line: 787, column: 5, scope: !1224)
!1242 = !DILocation(line: 789, column: 28, scope: !528)
!1243 = !DILocation(line: 789, column: 5, scope: !528)
!1244 = !DILocation(line: 789, column: 10, scope: !528)
!1245 = !DILocation(line: 789, column: 26, scope: !528)
!1246 = !DILocation(line: 790, column: 12, scope: !528)
!1247 = !DILocation(line: 790, column: 5, scope: !528)
!1248 = !DILocation(line: 791, column: 1, scope: !528)
!1249 = !DILocation(line: 879, column: 36, scope: !460)
!1250 = !DILocation(line: 881, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !460, file: !439, line: 881, column: 9)
!1252 = !DILocation(line: 881, column: 14, scope: !1251)
!1253 = !DILocation(line: 881, column: 23, scope: !1251)
!1254 = !DILocation(line: 881, column: 9, scope: !460)
!1255 = !DILocation(line: 882, column: 20, scope: !1251)
!1256 = !DILocation(line: 882, column: 25, scope: !1251)
!1257 = !DILocation(line: 882, column: 9, scope: !1251)
!1258 = !DILocation(line: 884, column: 5, scope: !460)
!1259 = !DILocation(line: 884, column: 10, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !466, file: !439, discriminator: 1)
!1261 = !DILocation(line: 884, column: 20, scope: !466)
!1262 = !DILocation(line: 884, column: 51, scope: !466)
!1263 = !DILocation(line: 884, column: 56, scope: !466)
!1264 = !DILocation(line: 884, column: 80, scope: !469)
!1265 = !DILocation(line: 884, column: 96, scope: !469)
!1266 = !DILocation(line: 884, column: 80, scope: !466)
!1267 = !DILocation(line: 884, column: 111, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !469, file: !439, discriminator: 2)
!1269 = !DILocation(line: 884, column: 116, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !468, file: !439, discriminator: 4)
!1271 = !DILocation(line: 884, column: 126, scope: !468)
!1272 = !DILocation(line: 884, column: 156, scope: !468)
!1273 = !DILocation(line: 884, column: 182, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !468, file: !439, line: 884, column: 179)
!1275 = !DILocation(line: 884, column: 199, scope: !1274)
!1276 = !DILocation(line: 884, column: 179, scope: !1274)
!1277 = !{!1278, !1279, i64 0}
!1278 = !{!"_object", !1279, i64 0, !895, i64 8}
!1279 = !{!"long", !896, i64 0}
!1280 = !DILocation(line: 884, column: 209, scope: !1274)
!1281 = !DILocation(line: 884, column: 179, scope: !468)
!1282 = !DILocation(line: 884, column: 179, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !468, file: !439, discriminator: 5)
!1284 = !DILocation(line: 884, column: 240, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1274, file: !439, discriminator: 6)
!1286 = !DILocation(line: 884, column: 258, scope: !1274)
!1287 = !{!1278, !895, i64 8}
!1288 = !DILocation(line: 884, column: 268, scope: !1274)
!1289 = !{!1290, !895, i64 48}
!1290 = !{!"_typeobject", !1291, i64 0, !895, i64 24, !1279, i64 32, !1279, i64 40, !895, i64 48, !895, i64 56, !895, i64 64, !895, i64 72, !895, i64 80, !895, i64 88, !895, i64 96, !895, i64 104, !895, i64 112, !895, i64 120, !895, i64 128, !895, i64 136, !895, i64 144, !895, i64 152, !895, i64 160, !1279, i64 168, !895, i64 176, !895, i64 184, !895, i64 192, !895, i64 200, !1279, i64 208, !895, i64 216, !895, i64 224, !895, i64 232, !895, i64 240, !895, i64 248, !895, i64 256, !895, i64 264, !895, i64 272, !895, i64 280, !1279, i64 288, !895, i64 296, !895, i64 304, !895, i64 312, !895, i64 320, !895, i64 328, !895, i64 336, !895, i64 344, !895, i64 352, !895, i64 360, !895, i64 368, !895, i64 376, !901, i64 384, !895, i64 392}
!1291 = !{!"", !1278, i64 0, !1279, i64 16}
!1292 = !DILocation(line: 884, column: 293, scope: !1274)
!1293 = !DILocation(line: 884, column: 224, scope: !1274)
!1294 = !DILocation(line: 884, column: 312, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !469, file: !439, discriminator: 7)
!1296 = !DILocation(line: 884, column: 312, scope: !468)
!1297 = !DILocation(line: 884, column: 312, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !468, file: !439, discriminator: 8)
!1299 = !DILocation(line: 884, column: 312, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !468, file: !439, discriminator: 9)
!1301 = !DILocation(line: 884, column: 325, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !439, discriminator: 10)
!1303 = !DILexicalBlockFile(scope: !460, file: !439, discriminator: 3)
!1304 = !DILocation(line: 884, column: 325, scope: !466)
!1305 = !DILocation(line: 885, column: 5, scope: !460)
!1306 = !DILocation(line: 885, column: 10, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !471, file: !439, discriminator: 1)
!1308 = !DILocation(line: 885, column: 20, scope: !471)
!1309 = !DILocation(line: 885, column: 51, scope: !471)
!1310 = !DILocation(line: 885, column: 56, scope: !471)
!1311 = !DILocation(line: 885, column: 78, scope: !474)
!1312 = !DILocation(line: 885, column: 94, scope: !474)
!1313 = !DILocation(line: 885, column: 78, scope: !471)
!1314 = !DILocation(line: 885, column: 109, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !474, file: !439, discriminator: 2)
!1316 = !DILocation(line: 885, column: 114, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !473, file: !439, discriminator: 4)
!1318 = !DILocation(line: 885, column: 124, scope: !473)
!1319 = !DILocation(line: 885, column: 154, scope: !473)
!1320 = !DILocation(line: 885, column: 180, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !473, file: !439, line: 885, column: 177)
!1322 = !DILocation(line: 885, column: 197, scope: !1321)
!1323 = !DILocation(line: 885, column: 177, scope: !1321)
!1324 = !DILocation(line: 885, column: 207, scope: !1321)
!1325 = !DILocation(line: 885, column: 177, scope: !473)
!1326 = !DILocation(line: 885, column: 177, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !473, file: !439, discriminator: 5)
!1328 = !DILocation(line: 885, column: 238, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1321, file: !439, discriminator: 6)
!1330 = !DILocation(line: 885, column: 256, scope: !1321)
!1331 = !DILocation(line: 885, column: 266, scope: !1321)
!1332 = !DILocation(line: 885, column: 291, scope: !1321)
!1333 = !DILocation(line: 885, column: 222, scope: !1321)
!1334 = !DILocation(line: 885, column: 310, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !474, file: !439, discriminator: 7)
!1336 = !DILocation(line: 885, column: 310, scope: !473)
!1337 = !DILocation(line: 885, column: 310, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !473, file: !439, discriminator: 8)
!1339 = !DILocation(line: 885, column: 310, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !473, file: !439, discriminator: 9)
!1341 = !DILocation(line: 885, column: 323, scope: !1302)
!1342 = !DILocation(line: 885, column: 323, scope: !471)
!1343 = !DILocation(line: 886, column: 5, scope: !460)
!1344 = !DILocation(line: 886, column: 10, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !476, file: !439, discriminator: 1)
!1346 = !DILocation(line: 886, column: 20, scope: !476)
!1347 = !DILocation(line: 886, column: 51, scope: !476)
!1348 = !DILocation(line: 886, column: 56, scope: !476)
!1349 = !DILocation(line: 886, column: 71, scope: !479)
!1350 = !DILocation(line: 886, column: 87, scope: !479)
!1351 = !DILocation(line: 886, column: 71, scope: !476)
!1352 = !DILocation(line: 886, column: 102, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !479, file: !439, discriminator: 2)
!1354 = !DILocation(line: 886, column: 107, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !478, file: !439, discriminator: 4)
!1356 = !DILocation(line: 886, column: 117, scope: !478)
!1357 = !DILocation(line: 886, column: 147, scope: !478)
!1358 = !DILocation(line: 886, column: 173, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !478, file: !439, line: 886, column: 170)
!1360 = !DILocation(line: 886, column: 190, scope: !1359)
!1361 = !DILocation(line: 886, column: 170, scope: !1359)
!1362 = !DILocation(line: 886, column: 200, scope: !1359)
!1363 = !DILocation(line: 886, column: 170, scope: !478)
!1364 = !DILocation(line: 886, column: 170, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !478, file: !439, discriminator: 5)
!1366 = !DILocation(line: 886, column: 231, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1359, file: !439, discriminator: 6)
!1368 = !DILocation(line: 886, column: 249, scope: !1359)
!1369 = !DILocation(line: 886, column: 259, scope: !1359)
!1370 = !DILocation(line: 886, column: 284, scope: !1359)
!1371 = !DILocation(line: 886, column: 215, scope: !1359)
!1372 = !DILocation(line: 886, column: 303, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !479, file: !439, discriminator: 7)
!1374 = !DILocation(line: 886, column: 303, scope: !478)
!1375 = !DILocation(line: 886, column: 303, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !478, file: !439, discriminator: 8)
!1377 = !DILocation(line: 886, column: 303, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !478, file: !439, discriminator: 9)
!1379 = !DILocation(line: 886, column: 316, scope: !1302)
!1380 = !DILocation(line: 886, column: 316, scope: !476)
!1381 = !DILocation(line: 888, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !460, file: !439, line: 888, column: 9)
!1383 = !DILocation(line: 888, column: 14, scope: !1382)
!1384 = !DILocation(line: 888, column: 17, scope: !1382)
!1385 = !DILocation(line: 888, column: 31, scope: !1382)
!1386 = !DILocation(line: 888, column: 34, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1382, file: !439, discriminator: 1)
!1388 = !DILocation(line: 888, column: 39, scope: !1382)
!1389 = !DILocation(line: 888, column: 43, scope: !1382)
!1390 = !DILocation(line: 888, column: 9, scope: !460)
!1391 = !DILocation(line: 889, column: 20, scope: !1382)
!1392 = !DILocation(line: 889, column: 25, scope: !1382)
!1393 = !DILocation(line: 889, column: 9, scope: !1382)
!1394 = !DILocation(line: 890, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !460, file: !439, line: 890, column: 9)
!1396 = !DILocation(line: 890, column: 14, scope: !1395)
!1397 = !DILocation(line: 890, column: 9, scope: !460)
!1398 = !DILocation(line: 891, column: 28, scope: !1395)
!1399 = !DILocation(line: 891, column: 33, scope: !1395)
!1400 = !DILocation(line: 891, column: 9, scope: !1395)
!1401 = !DILocation(line: 892, column: 16, scope: !460)
!1402 = !DILocation(line: 892, column: 5, scope: !460)
!1403 = !DILocation(line: 893, column: 1, scope: !460)
!1404 = !DILocation(line: 815, column: 34, scope: !446)
!1405 = !DILocation(line: 815, column: 43, scope: !446)
!1406 = !DILocation(line: 817, column: 5, scope: !446)
!1407 = !DILocation(line: 817, column: 23, scope: !446)
!1408 = !DILocation(line: 817, column: 29, scope: !446)
!1409 = !DILocation(line: 818, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !446, file: !439, line: 818, column: 9)
!1411 = !DILocation(line: 818, column: 13, scope: !1410)
!1412 = !DILocation(line: 818, column: 9, scope: !446)
!1413 = !DILocation(line: 819, column: 9, scope: !1410)
!1414 = !DILocation(line: 821, column: 43, scope: !446)
!1415 = !DILocation(line: 821, column: 48, scope: !446)
!1416 = !DILocation(line: 821, column: 60, scope: !446)
!1417 = !DILocation(line: 821, column: 24, scope: !446)
!1418 = !DILocation(line: 821, column: 22, scope: !446)
!1419 = !DILocation(line: 821, column: 5, scope: !446)
!1420 = !DILocation(line: 821, column: 10, scope: !446)
!1421 = !DILocation(line: 821, column: 16, scope: !446)
!1422 = !DILocation(line: 823, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !446, file: !439, line: 823, column: 9)
!1424 = !DILocation(line: 823, column: 13, scope: !1423)
!1425 = !DILocation(line: 823, column: 9, scope: !446)
!1426 = !DILocation(line: 824, column: 26, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !439, line: 823, column: 28)
!1428 = !DILocation(line: 824, column: 9, scope: !1427)
!1429 = !DILocation(line: 825, column: 9, scope: !1427)
!1430 = !DILocation(line: 827, column: 5, scope: !446)
!1431 = !DILocation(line: 827, column: 10, scope: !446)
!1432 = !DILocation(line: 827, column: 25, scope: !446)
!1433 = !DILocation(line: 828, column: 5, scope: !446)
!1434 = !DILocation(line: 828, column: 10, scope: !446)
!1435 = !DILocation(line: 828, column: 27, scope: !446)
!1436 = !DILocation(line: 829, column: 5, scope: !446)
!1437 = !DILocation(line: 829, column: 10, scope: !446)
!1438 = !DILocation(line: 829, column: 14, scope: !446)
!1439 = !DILocation(line: 830, column: 16, scope: !446)
!1440 = !DILocation(line: 830, column: 5, scope: !446)
!1441 = !DILocation(line: 830, column: 10, scope: !446)
!1442 = !DILocation(line: 830, column: 14, scope: !446)
!1443 = !DILocation(line: 831, column: 29, scope: !446)
!1444 = !DILocation(line: 831, column: 5, scope: !446)
!1445 = !DILocation(line: 831, column: 10, scope: !446)
!1446 = !DILocation(line: 831, column: 19, scope: !446)
!1447 = !DILocation(line: 832, column: 10, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !446, file: !439, line: 832, column: 9)
!1449 = !DILocation(line: 832, column: 15, scope: !1448)
!1450 = !DILocation(line: 832, column: 9, scope: !446)
!1451 = !DILocation(line: 833, column: 26, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !439, line: 832, column: 25)
!1453 = !DILocation(line: 833, column: 9, scope: !1452)
!1454 = !DILocation(line: 834, column: 9, scope: !1452)
!1455 = !DILocation(line: 836, column: 12, scope: !446)
!1456 = !DILocation(line: 836, column: 17, scope: !446)
!1457 = !DILocation(line: 836, column: 5, scope: !446)
!1458 = !DILocation(line: 839, column: 56, scope: !446)
!1459 = !DILocation(line: 839, column: 38, scope: !446)
!1460 = !DILocation(line: 839, column: 43, scope: !446)
!1461 = !DILocation(line: 839, column: 47, scope: !446)
!1462 = !DILocation(line: 839, column: 27, scope: !446)
!1463 = !DILocation(line: 839, column: 32, scope: !446)
!1464 = !DILocation(line: 839, column: 36, scope: !446)
!1465 = !DILocation(line: 839, column: 16, scope: !446)
!1466 = !DILocation(line: 839, column: 21, scope: !446)
!1467 = !DILocation(line: 839, column: 25, scope: !446)
!1468 = !DILocation(line: 839, column: 5, scope: !446)
!1469 = !DILocation(line: 839, column: 10, scope: !446)
!1470 = !DILocation(line: 839, column: 14, scope: !446)
!1471 = !DILocation(line: 840, column: 12, scope: !446)
!1472 = !DILocation(line: 840, column: 5, scope: !446)
!1473 = !DILocation(line: 841, column: 1, scope: !446)
!1474 = !DILocation(line: 693, column: 32, scope: !690)
!1475 = !DILocation(line: 693, column: 39, scope: !690)
!1476 = !DILocation(line: 693, column: 69, scope: !690)
!1477 = !DILocation(line: 694, column: 5, scope: !690)
!1478 = !DILocation(line: 694, column: 9, scope: !690)
!1479 = !DILocation(line: 695, column: 5, scope: !690)
!1480 = !DILocation(line: 695, column: 12, scope: !690)
!1481 = !DILocation(line: 695, column: 35, scope: !690)
!1482 = !DILocation(line: 695, column: 28, scope: !690)
!1483 = !DILocation(line: 695, column: 38, scope: !690)
!1484 = !{!1279, !1279, i64 0}
!1485 = !DILocation(line: 695, column: 43, scope: !690)
!1486 = !DILocation(line: 696, column: 5, scope: !690)
!1487 = !DILocation(line: 696, column: 11, scope: !690)
!1488 = !DILocation(line: 696, column: 17, scope: !690)
!1489 = !DILocation(line: 697, column: 5, scope: !690)
!1490 = !DILocation(line: 697, column: 10, scope: !690)
!1491 = !DILocation(line: 698, column: 24, scope: !690)
!1492 = !DILocation(line: 698, column: 11, scope: !690)
!1493 = !DILocation(line: 698, column: 9, scope: !690)
!1494 = !DILocation(line: 699, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !690, file: !439, line: 699, column: 9)
!1496 = !DILocation(line: 699, column: 13, scope: !1495)
!1497 = !DILocation(line: 699, column: 9, scope: !690)
!1498 = !DILocation(line: 700, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !439, line: 699, column: 28)
!1500 = !DILocation(line: 700, column: 14, scope: !1499)
!1501 = !DILocation(line: 700, column: 19, scope: !1499)
!1502 = !DILocation(line: 701, column: 9, scope: !1499)
!1503 = !DILocation(line: 703, column: 20, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !690, file: !439, line: 703, column: 5)
!1505 = !DILocation(line: 703, column: 18, scope: !1504)
!1506 = !DILocation(line: 703, column: 10, scope: !1504)
!1507 = !DILocation(line: 703, column: 26, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !439, discriminator: 2)
!1509 = !DILexicalBlockFile(scope: !1510, file: !439, discriminator: 1)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !439, line: 703, column: 5)
!1511 = !DILocation(line: 703, column: 25, scope: !1510)
!1512 = !DILocation(line: 703, column: 5, scope: !1504)
!1513 = !DILocation(line: 704, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !439, line: 703, column: 45)
!1515 = !DILocation(line: 704, column: 13, scope: !1514)
!1516 = !DILocation(line: 704, column: 11, scope: !1514)
!1517 = !DILocation(line: 705, column: 13, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !439, line: 705, column: 13)
!1519 = !DILocation(line: 705, column: 13, scope: !1514)
!1520 = !DILocation(line: 706, column: 26, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !439, line: 705, column: 27)
!1522 = !DILocation(line: 707, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1521, file: !439, line: 707, column: 17)
!1524 = !DILocation(line: 707, column: 19, scope: !1523)
!1525 = !DILocation(line: 707, column: 17, scope: !1521)
!1526 = !DILocation(line: 708, column: 22, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !439, line: 707, column: 28)
!1528 = !DILocation(line: 708, column: 21, scope: !1527)
!1529 = !DILocation(line: 708, column: 19, scope: !1527)
!1530 = !DILocation(line: 709, column: 22, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !439, line: 709, column: 21)
!1532 = !DILocation(line: 709, column: 21, scope: !1527)
!1533 = !DILocation(line: 710, column: 21, scope: !1531)
!1534 = !DILocation(line: 711, column: 13, scope: !1527)
!1535 = !DILocation(line: 712, column: 9, scope: !1521)
!1536 = !DILocation(line: 713, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1514, file: !439, line: 713, column: 13)
!1538 = !DILocation(line: 713, column: 15, scope: !1537)
!1539 = !DILocation(line: 713, column: 13, scope: !1514)
!1540 = !DILocation(line: 714, column: 26, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !439, line: 713, column: 24)
!1542 = !DILocation(line: 715, column: 15, scope: !1541)
!1543 = !DILocation(line: 716, column: 9, scope: !1541)
!1544 = !DILocation(line: 717, column: 20, scope: !1514)
!1545 = !DILocation(line: 717, column: 10, scope: !1514)
!1546 = !DILocation(line: 717, column: 18, scope: !1514)
!1547 = !DILocation(line: 718, column: 5, scope: !1514)
!1548 = !DILocation(line: 703, column: 30, scope: !1510)
!1549 = !DILocation(line: 703, column: 41, scope: !1510)
!1550 = !DILocation(line: 703, column: 5, scope: !1510)
!1551 = !DILocation(line: 721, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !690, file: !439, line: 721, column: 9)
!1553 = !DILocation(line: 721, column: 20, scope: !1552)
!1554 = !DILocation(line: 721, column: 23, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1552, file: !439, discriminator: 1)
!1556 = !DILocation(line: 721, column: 25, scope: !1552)
!1557 = !DILocation(line: 721, column: 9, scope: !690)
!1558 = !DILocation(line: 722, column: 10, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !439, line: 721, column: 34)
!1560 = !DILocation(line: 722, column: 18, scope: !1559)
!1561 = !DILocation(line: 723, column: 16, scope: !1559)
!1562 = !DILocation(line: 724, column: 5, scope: !1559)
!1563 = !DILocation(line: 725, column: 6, scope: !690)
!1564 = !DILocation(line: 725, column: 14, scope: !690)
!1565 = !DILocation(line: 726, column: 20, scope: !690)
!1566 = !DILocation(line: 726, column: 30, scope: !690)
!1567 = !DILocation(line: 726, column: 28, scope: !690)
!1568 = !DILocation(line: 726, column: 34, scope: !690)
!1569 = !DILocation(line: 726, column: 18, scope: !690)
!1570 = !DILocation(line: 727, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !690, file: !439, line: 727, column: 9)
!1572 = !DILocation(line: 727, column: 24, scope: !1571)
!1573 = !DILocation(line: 727, column: 22, scope: !1571)
!1574 = !DILocation(line: 727, column: 38, scope: !1571)
!1575 = !DILocation(line: 727, column: 41, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1571, file: !439, discriminator: 1)
!1577 = !DILocation(line: 727, column: 9, scope: !690)
!1578 = !DILocation(line: 729, column: 29, scope: !1571)
!1579 = !DILocation(line: 729, column: 34, scope: !1571)
!1580 = !DILocation(line: 729, column: 15, scope: !1571)
!1581 = !DILocation(line: 729, column: 13, scope: !1571)
!1582 = !DILocation(line: 729, column: 9, scope: !1571)
!1583 = !DILocation(line: 730, column: 12, scope: !690)
!1584 = !DILocation(line: 730, column: 5, scope: !690)
!1585 = !DILocation(line: 731, column: 1, scope: !690)
!1586 = !DILocation(line: 846, column: 28, scope: !451)
!1587 = !DILocation(line: 846, column: 44, scope: !451)
!1588 = !DILocation(line: 847, column: 34, scope: !451)
!1589 = !DILocation(line: 847, column: 51, scope: !451)
!1590 = !DILocation(line: 849, column: 5, scope: !451)
!1591 = !DILocation(line: 849, column: 23, scope: !451)
!1592 = !DILocation(line: 849, column: 29, scope: !451)
!1593 = !DILocation(line: 850, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !451, file: !439, line: 850, column: 9)
!1595 = !DILocation(line: 850, column: 13, scope: !1594)
!1596 = !DILocation(line: 850, column: 9, scope: !451)
!1597 = !DILocation(line: 851, column: 9, scope: !1594)
!1598 = !DILocation(line: 852, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !451, file: !439, line: 852, column: 9)
!1600 = !DILocation(line: 852, column: 10, scope: !1599)
!1601 = !DILocation(line: 852, column: 15, scope: !1599)
!1602 = !DILocation(line: 852, column: 19, scope: !1599)
!1603 = !DILocation(line: 852, column: 49, scope: !1599)
!1604 = !DILocation(line: 852, column: 9, scope: !451)
!1605 = !DILocation(line: 853, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !439, line: 852, column: 64)
!1607 = !DILocation(line: 853, column: 9, scope: !1606)
!1608 = !DILocation(line: 854, column: 9, scope: !1606)
!1609 = !DILocation(line: 856, column: 27, scope: !451)
!1610 = !DILocation(line: 856, column: 32, scope: !451)
!1611 = !DILocation(line: 856, column: 16, scope: !451)
!1612 = !DILocation(line: 856, column: 21, scope: !451)
!1613 = !DILocation(line: 856, column: 25, scope: !451)
!1614 = !DILocation(line: 856, column: 5, scope: !451)
!1615 = !DILocation(line: 856, column: 10, scope: !451)
!1616 = !DILocation(line: 856, column: 14, scope: !451)
!1617 = !DILocation(line: 857, column: 16, scope: !451)
!1618 = !DILocation(line: 857, column: 21, scope: !451)
!1619 = !DILocation(line: 857, column: 25, scope: !451)
!1620 = !DILocation(line: 857, column: 5, scope: !451)
!1621 = !DILocation(line: 857, column: 10, scope: !451)
!1622 = !DILocation(line: 857, column: 14, scope: !451)
!1623 = !DILocation(line: 858, column: 15, scope: !451)
!1624 = !DILocation(line: 858, column: 5, scope: !451)
!1625 = !DILocation(line: 858, column: 10, scope: !451)
!1626 = !DILocation(line: 858, column: 13, scope: !451)
!1627 = !DILocation(line: 859, column: 19, scope: !451)
!1628 = !DILocation(line: 859, column: 5, scope: !451)
!1629 = !DILocation(line: 859, column: 10, scope: !451)
!1630 = !DILocation(line: 859, column: 17, scope: !451)
!1631 = !DILocation(line: 860, column: 23, scope: !451)
!1632 = !DILocation(line: 860, column: 5, scope: !451)
!1633 = !DILocation(line: 860, column: 10, scope: !451)
!1634 = !DILocation(line: 860, column: 21, scope: !451)
!1635 = !DILocation(line: 861, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !451, file: !439, line: 861, column: 9)
!1637 = !DILocation(line: 861, column: 13, scope: !1636)
!1638 = !DILocation(line: 861, column: 9, scope: !451)
!1639 = !DILocation(line: 864, column: 45, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !439, line: 861, column: 28)
!1641 = !DILocation(line: 864, column: 38, scope: !1640)
!1642 = !DILocation(line: 864, column: 49, scope: !1640)
!1643 = !DILocation(line: 864, column: 25, scope: !1640)
!1644 = !DILocation(line: 864, column: 9, scope: !1640)
!1645 = !DILocation(line: 864, column: 14, scope: !1640)
!1646 = !DILocation(line: 864, column: 23, scope: !1640)
!1647 = !DILocation(line: 865, column: 14, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !439, line: 865, column: 13)
!1649 = !DILocation(line: 865, column: 19, scope: !1648)
!1650 = !DILocation(line: 865, column: 13, scope: !1640)
!1651 = !DILocation(line: 866, column: 30, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !439, line: 865, column: 29)
!1653 = !DILocation(line: 866, column: 13, scope: !1652)
!1654 = !DILocation(line: 867, column: 13, scope: !1652)
!1655 = !DILocation(line: 869, column: 16, scope: !1640)
!1656 = !DILocation(line: 869, column: 21, scope: !1640)
!1657 = !DILocation(line: 869, column: 31, scope: !1640)
!1658 = !DILocation(line: 869, column: 9, scope: !1640)
!1659 = !DILocation(line: 870, column: 9, scope: !1640)
!1660 = !DILocation(line: 870, column: 14, scope: !1640)
!1661 = !DILocation(line: 870, column: 29, scope: !1640)
!1662 = !DILocation(line: 871, column: 5, scope: !1640)
!1663 = !DILocation(line: 872, column: 12, scope: !451)
!1664 = !DILocation(line: 872, column: 5, scope: !451)
!1665 = !DILocation(line: 873, column: 1, scope: !451)
!1666 = !DILocation(line: 1109, column: 21, scope: !480)
!1667 = !DILocation(line: 1111, column: 13, scope: !480)
!1668 = !DILocation(line: 1112, column: 15, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !480, file: !439, line: 1111, column: 16)
!1670 = !DILocation(line: 1113, column: 15, scope: !1669)
!1671 = !DILocation(line: 1114, column: 15, scope: !1669)
!1672 = !DILocation(line: 1115, column: 15, scope: !1669)
!1673 = !DILocation(line: 1116, column: 15, scope: !1669)
!1674 = !DILocation(line: 1117, column: 15, scope: !1669)
!1675 = !DILocation(line: 1118, column: 15, scope: !1669)
!1676 = !DILocation(line: 1119, column: 15, scope: !1669)
!1677 = !DILocation(line: 1120, column: 15, scope: !1669)
!1678 = !DILocation(line: 1121, column: 15, scope: !1669)
!1679 = !DILocation(line: 1122, column: 15, scope: !1669)
!1680 = !DILocation(line: 1123, column: 15, scope: !1669)
!1681 = !DILocation(line: 1124, column: 15, scope: !1669)
!1682 = !DILocation(line: 1125, column: 15, scope: !1669)
!1683 = !DILocation(line: 1126, column: 15, scope: !1669)
!1684 = !DILocation(line: 1127, column: 15, scope: !1669)
!1685 = !DILocation(line: 1128, column: 15, scope: !1669)
!1686 = !DILocation(line: 1129, column: 15, scope: !1669)
!1687 = !DILocation(line: 1130, column: 15, scope: !1669)
!1688 = !DILocation(line: 1131, column: 15, scope: !1669)
!1689 = !DILocation(line: 1132, column: 15, scope: !1669)
!1690 = !DILocation(line: 1133, column: 15, scope: !1669)
!1691 = !DILocation(line: 1134, column: 15, scope: !1669)
!1692 = !DILocation(line: 1135, column: 14, scope: !1669)
!1693 = !DILocation(line: 1137, column: 1, scope: !480)
!1694 = !DILocation(line: 1141, column: 22, scope: !485)
!1695 = !DILocation(line: 1141, column: 30, scope: !485)
!1696 = !DILocation(line: 1143, column: 13, scope: !485)
!1697 = !DILocation(line: 1145, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !485, file: !439, line: 1143, column: 17)
!1699 = !DILocation(line: 1146, column: 19, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1145, column: 21)
!1701 = !DILocation(line: 1148, column: 9, scope: !1698)
!1702 = !DILocation(line: 1150, column: 17, scope: !1698)
!1703 = !DILocation(line: 1151, column: 19, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1150, column: 21)
!1705 = !DILocation(line: 1153, column: 9, scope: !1698)
!1706 = !DILocation(line: 1155, column: 17, scope: !1698)
!1707 = !DILocation(line: 1156, column: 19, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1155, column: 21)
!1709 = !DILocation(line: 1157, column: 19, scope: !1708)
!1710 = !DILocation(line: 1158, column: 19, scope: !1708)
!1711 = !DILocation(line: 1160, column: 9, scope: !1698)
!1712 = !DILocation(line: 1162, column: 17, scope: !1698)
!1713 = !DILocation(line: 1163, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1162, column: 21)
!1715 = !DILocation(line: 1164, column: 19, scope: !1714)
!1716 = !DILocation(line: 1166, column: 9, scope: !1698)
!1717 = !DILocation(line: 1168, column: 17, scope: !1698)
!1718 = !DILocation(line: 1169, column: 19, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1168, column: 21)
!1720 = !DILocation(line: 1171, column: 9, scope: !1698)
!1721 = !DILocation(line: 1173, column: 17, scope: !1698)
!1722 = !DILocation(line: 1174, column: 19, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1173, column: 21)
!1724 = !DILocation(line: 1175, column: 19, scope: !1723)
!1725 = !DILocation(line: 1177, column: 9, scope: !1698)
!1726 = !DILocation(line: 1179, column: 17, scope: !1698)
!1727 = !DILocation(line: 1180, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1179, column: 21)
!1729 = !DILocation(line: 1181, column: 19, scope: !1728)
!1730 = !DILocation(line: 1183, column: 9, scope: !1698)
!1731 = !DILocation(line: 1185, column: 17, scope: !1698)
!1732 = !DILocation(line: 1186, column: 19, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1185, column: 21)
!1734 = !DILocation(line: 1187, column: 19, scope: !1733)
!1735 = !DILocation(line: 1189, column: 9, scope: !1698)
!1736 = !DILocation(line: 1191, column: 17, scope: !1698)
!1737 = !DILocation(line: 1192, column: 19, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1191, column: 21)
!1739 = !DILocation(line: 1194, column: 9, scope: !1698)
!1740 = !DILocation(line: 1196, column: 17, scope: !1698)
!1741 = !DILocation(line: 1197, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1196, column: 21)
!1743 = !DILocation(line: 1199, column: 9, scope: !1698)
!1744 = !DILocation(line: 1201, column: 17, scope: !1698)
!1745 = !DILocation(line: 1202, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1201, column: 21)
!1747 = !DILocation(line: 1204, column: 9, scope: !1698)
!1748 = !DILocation(line: 1206, column: 17, scope: !1698)
!1749 = !DILocation(line: 1207, column: 19, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1698, file: !439, line: 1206, column: 21)
!1751 = !DILocation(line: 1209, column: 9, scope: !1698)
!1752 = !DILocation(line: 1211, column: 5, scope: !485)
!1753 = !DILocation(line: 1212, column: 1, scope: !485)
!1754 = !DILocation(line: 1215, column: 24, scope: !491)
!1755 = !DILocation(line: 1215, column: 32, scope: !491)
!1756 = !DILocation(line: 1215, column: 40, scope: !491)
!1757 = !DILocation(line: 1217, column: 13, scope: !491)
!1758 = !DILocation(line: 1219, column: 17, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !491, file: !439, line: 1217, column: 17)
!1760 = !DILocation(line: 1221, column: 21, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1759, file: !439, line: 1219, column: 21)
!1762 = !DILocation(line: 1223, column: 17, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1761, file: !439, line: 1221, column: 25)
!1764 = !DILocation(line: 1225, column: 13, scope: !1761)
!1765 = !DILocation(line: 1227, column: 9, scope: !1759)
!1766 = !DILocation(line: 1229, column: 17, scope: !1759)
!1767 = !DILocation(line: 1231, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1759, file: !439, line: 1229, column: 21)
!1769 = !DILocation(line: 1233, column: 17, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1768, file: !439, line: 1231, column: 25)
!1771 = !DILocation(line: 1235, column: 13, scope: !1768)
!1772 = !DILocation(line: 1237, column: 9, scope: !1759)
!1773 = !DILocation(line: 1239, column: 17, scope: !1759)
!1774 = !DILocation(line: 1241, column: 21, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1759, file: !439, line: 1239, column: 21)
!1776 = !DILocation(line: 1243, column: 17, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1775, file: !439, line: 1241, column: 25)
!1778 = !DILocation(line: 1245, column: 13, scope: !1775)
!1779 = !DILocation(line: 1247, column: 9, scope: !1759)
!1780 = !DILocation(line: 1249, column: 17, scope: !1759)
!1781 = !DILocation(line: 1251, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1759, file: !439, line: 1249, column: 21)
!1783 = !DILocation(line: 1253, column: 17, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1782, file: !439, line: 1251, column: 25)
!1785 = !DILocation(line: 1255, column: 13, scope: !1782)
!1786 = !DILocation(line: 1257, column: 9, scope: !1759)
!1787 = !DILocation(line: 1259, column: 17, scope: !1759)
!1788 = !DILocation(line: 1261, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1759, file: !439, line: 1259, column: 21)
!1790 = !DILocation(line: 1263, column: 17, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1789, file: !439, line: 1261, column: 25)
!1792 = !DILocation(line: 1265, column: 13, scope: !1789)
!1793 = !DILocation(line: 1267, column: 9, scope: !1759)
!1794 = !DILocation(line: 1269, column: 5, scope: !491)
!1795 = !DILocation(line: 1270, column: 1, scope: !491)
!1796 = !DILocation(line: 1727, column: 35, scope: !498)
!1797 = !DILocation(line: 1727, column: 47, scope: !498)
!1798 = !DILocation(line: 1727, column: 63, scope: !498)
!1799 = !DILocation(line: 1729, column: 5, scope: !498)
!1800 = !DILocation(line: 1729, column: 9, scope: !498)
!1801 = !DILocation(line: 1729, column: 26, scope: !498)
!1802 = !DILocation(line: 1729, column: 31, scope: !498)
!1803 = !DILocation(line: 1729, column: 40, scope: !498)
!1804 = !DILocation(line: 1729, column: 18, scope: !498)
!1805 = !DILocation(line: 1730, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !498, file: !439, line: 1730, column: 9)
!1807 = !DILocation(line: 1730, column: 14, scope: !1806)
!1808 = !DILocation(line: 1730, column: 9, scope: !498)
!1809 = !DILocation(line: 1731, column: 16, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !439, line: 1730, column: 30)
!1811 = !DILocation(line: 1732, column: 9, scope: !1810)
!1812 = !DILocation(line: 1732, column: 14, scope: !1810)
!1813 = !DILocation(line: 1732, column: 19, scope: !1810)
!1814 = !DILocation(line: 1733, column: 5, scope: !1810)
!1815 = !DILocation(line: 1734, column: 12, scope: !498)
!1816 = !DILocation(line: 1735, column: 1, scope: !498)
!1817 = !DILocation(line: 1734, column: 5, scope: !498)
!1818 = !DILocation(line: 1325, column: 27, scope: !703)
!1819 = !DILocation(line: 1325, column: 39, scope: !703)
!1820 = !DILocation(line: 1325, column: 55, scope: !703)
!1821 = !DILocation(line: 1327, column: 5, scope: !703)
!1822 = !DILocation(line: 1327, column: 9, scope: !703)
!1823 = !DILocation(line: 1328, column: 5, scope: !703)
!1824 = !DILocation(line: 1328, column: 9, scope: !703)
!1825 = !DILocation(line: 1328, column: 20, scope: !703)
!1826 = !DILocation(line: 1330, column: 17, scope: !703)
!1827 = !DILocation(line: 1330, column: 23, scope: !703)
!1828 = !DILocation(line: 1330, column: 6, scope: !703)
!1829 = !DILocation(line: 1330, column: 14, scope: !703)
!1830 = !DILocation(line: 1330, column: 5, scope: !703)
!1831 = !DILocation(line: 1332, column: 5, scope: !703)
!1832 = !DILocation(line: 1332, column: 10, scope: !703)
!1833 = !DILocation(line: 1332, column: 16, scope: !703)
!1834 = !DILocation(line: 1333, column: 15, scope: !703)
!1835 = !DILocation(line: 1336, column: 9, scope: !713)
!1836 = !DILocation(line: 1336, column: 14, scope: !713)
!1837 = !DILocation(line: 1336, column: 9, scope: !703)
!1838 = !DILocation(line: 1337, column: 9, scope: !712)
!1839 = !DILocation(line: 1337, column: 13, scope: !712)
!1840 = !DILocation(line: 1338, column: 9, scope: !712)
!1841 = !DILocation(line: 1338, column: 13, scope: !712)
!1842 = !DILocation(line: 1339, column: 9, scope: !712)
!1843 = !DILocation(line: 1339, column: 14, scope: !712)
!1844 = !DILocation(line: 1339, column: 20, scope: !712)
!1845 = !DILocation(line: 1340, column: 9, scope: !712)
!1846 = !DILocation(line: 1341, column: 27, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !439, line: 1340, column: 18)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !439, line: 1340, column: 9)
!1849 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1340, column: 9)
!1850 = !DILocation(line: 1341, column: 17, scope: !1847)
!1851 = !DILocation(line: 1341, column: 15, scope: !1847)
!1852 = !DILocation(line: 1342, column: 17, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !439, line: 1342, column: 17)
!1854 = !DILocation(line: 1342, column: 19, scope: !1853)
!1855 = !DILocation(line: 1342, column: 17, scope: !1847)
!1856 = !DILocation(line: 1343, column: 20, scope: !1853)
!1857 = !DILocation(line: 1343, column: 30, scope: !1853)
!1858 = !DILocation(line: 1343, column: 17, scope: !1853)
!1859 = !DILocation(line: 1344, column: 22, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !439, line: 1344, column: 22)
!1861 = !DILocation(line: 1344, column: 24, scope: !1860)
!1862 = !DILocation(line: 1344, column: 22, scope: !1853)
!1863 = !DILocation(line: 1345, column: 24, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !439, line: 1344, column: 33)
!1865 = !DILocation(line: 1345, column: 28, scope: !1864)
!1866 = !DILocation(line: 1345, column: 33, scope: !1864)
!1867 = !DILocation(line: 1345, column: 27, scope: !1864)
!1868 = !DILocation(line: 1345, column: 41, scope: !1864)
!1869 = !DILocation(line: 1345, column: 48, scope: !1864)
!1870 = !DILocation(line: 1345, column: 53, scope: !1864)
!1871 = !DILocation(line: 1345, column: 46, scope: !1864)
!1872 = !DILocation(line: 1345, column: 21, scope: !1864)
!1873 = !DILocation(line: 1346, column: 27, scope: !1864)
!1874 = !DILocation(line: 1346, column: 34, scope: !1864)
!1875 = !DILocation(line: 1346, column: 39, scope: !1864)
!1876 = !DILocation(line: 1346, column: 33, scope: !1864)
!1877 = !DILocation(line: 1346, column: 50, scope: !1864)
!1878 = !DILocation(line: 1347, column: 23, scope: !1864)
!1879 = !DILocation(line: 1347, column: 28, scope: !1864)
!1880 = !DILocation(line: 1347, column: 21, scope: !1864)
!1881 = !DILocation(line: 1346, column: 24, scope: !1864)
!1882 = !DILocation(line: 1348, column: 13, scope: !1864)
!1883 = !DILocation(line: 1349, column: 22, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1860, file: !439, line: 1349, column: 22)
!1885 = !DILocation(line: 1349, column: 24, scope: !1884)
!1886 = !DILocation(line: 1349, column: 22, scope: !1860)
!1887 = !DILocation(line: 1350, column: 30, scope: !1884)
!1888 = !DILocation(line: 1350, column: 21, scope: !1884)
!1889 = !DILocation(line: 1350, column: 17, scope: !1884)
!1890 = !DILocation(line: 1352, column: 17, scope: !1884)
!1891 = !DILocation(line: 1340, column: 9, scope: !1848)
!1892 = !DILocation(line: 1354, column: 20, scope: !712)
!1893 = !DILocation(line: 1354, column: 25, scope: !712)
!1894 = !DILocation(line: 1354, column: 9, scope: !712)
!1895 = !DILocation(line: 1355, column: 13, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1355, column: 13)
!1897 = !DILocation(line: 1355, column: 15, scope: !1896)
!1898 = !DILocation(line: 1355, column: 22, scope: !1896)
!1899 = !DILocation(line: 1355, column: 25, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1896, file: !439, discriminator: 1)
!1901 = !DILocation(line: 1355, column: 27, scope: !1896)
!1902 = !DILocation(line: 1355, column: 13, scope: !712)
!1903 = !DILocation(line: 1361, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !439, line: 1361, column: 17)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !439, line: 1355, column: 36)
!1906 = !DILocation(line: 1361, column: 21, scope: !1904)
!1907 = !DILocation(line: 1361, column: 26, scope: !1904)
!1908 = !DILocation(line: 1361, column: 29, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1904, file: !439, discriminator: 1)
!1910 = !DILocation(line: 1361, column: 31, scope: !1904)
!1911 = !DILocation(line: 1361, column: 39, scope: !1904)
!1912 = !DILocation(line: 1361, column: 42, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1904, file: !439, discriminator: 2)
!1914 = !DILocation(line: 1361, column: 47, scope: !1904)
!1915 = !DILocation(line: 1361, column: 54, scope: !1904)
!1916 = !DILocation(line: 1361, column: 17, scope: !1905)
!1917 = !DILocation(line: 1362, column: 27, scope: !1904)
!1918 = !DILocation(line: 1362, column: 17, scope: !1904)
!1919 = !DILocation(line: 1364, column: 27, scope: !1904)
!1920 = !DILocation(line: 1367, column: 9, scope: !1905)
!1921 = !DILocation(line: 1368, column: 14, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1368, column: 13)
!1923 = !DILocation(line: 1368, column: 24, scope: !1922)
!1924 = !DILocation(line: 1368, column: 27, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1922, file: !439, discriminator: 1)
!1926 = !DILocation(line: 1368, column: 32, scope: !1922)
!1927 = !DILocation(line: 1368, column: 38, scope: !1922)
!1928 = !DILocation(line: 1368, column: 13, scope: !712)
!1929 = !DILocation(line: 1369, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !439, line: 1369, column: 17)
!1931 = distinct !DILexicalBlock(scope: !1922, file: !439, line: 1368, column: 44)
!1932 = !DILocation(line: 1369, column: 38, scope: !1930)
!1933 = !DILocation(line: 1369, column: 43, scope: !1930)
!1934 = !DILocation(line: 1369, column: 24, scope: !1930)
!1935 = !DILocation(line: 1369, column: 29, scope: !1930)
!1936 = !DILocation(line: 1369, column: 21, scope: !1930)
!1937 = !DILocation(line: 1369, column: 17, scope: !1931)
!1938 = !DILocation(line: 1371, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !439, line: 1371, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !439, line: 1369, column: 52)
!1941 = !DILocation(line: 1371, column: 48, scope: !1939)
!1942 = !DILocation(line: 1371, column: 53, scope: !1939)
!1943 = !DILocation(line: 1371, column: 31, scope: !1939)
!1944 = !DILocation(line: 1371, column: 36, scope: !1939)
!1945 = !DILocation(line: 1371, column: 28, scope: !1939)
!1946 = !DILocation(line: 1371, column: 21, scope: !1940)
!1947 = !DILocation(line: 1372, column: 37, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !439, line: 1372, column: 25)
!1949 = distinct !DILexicalBlock(scope: !1939, file: !439, line: 1371, column: 62)
!1950 = !DILocation(line: 1372, column: 25, scope: !1948)
!1951 = !DILocation(line: 1372, column: 25, scope: !1949)
!1952 = !DILocation(line: 1373, column: 25, scope: !1948)
!1953 = !DILocation(line: 1374, column: 17, scope: !1949)
!1954 = !DILocation(line: 1375, column: 13, scope: !1940)
!1955 = !DILocation(line: 1376, column: 22, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1930, file: !439, line: 1376, column: 22)
!1957 = !DILocation(line: 1376, column: 42, scope: !1956)
!1958 = !DILocation(line: 1376, column: 47, scope: !1956)
!1959 = !DILocation(line: 1376, column: 28, scope: !1956)
!1960 = !DILocation(line: 1376, column: 33, scope: !1956)
!1961 = !DILocation(line: 1376, column: 26, scope: !1956)
!1962 = !DILocation(line: 1376, column: 22, scope: !1930)
!1963 = !DILocation(line: 1378, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !439, line: 1378, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !439, line: 1376, column: 56)
!1966 = !DILocation(line: 1378, column: 26, scope: !1964)
!1967 = !DILocation(line: 1378, column: 32, scope: !1964)
!1968 = !DILocation(line: 1378, column: 35, scope: !1964)
!1969 = !DILocation(line: 1378, column: 21, scope: !1965)
!1970 = !DILocation(line: 1379, column: 21, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !439, line: 1378, column: 43)
!1972 = !DILocation(line: 1379, column: 26, scope: !1971)
!1973 = !DILocation(line: 1379, column: 31, scope: !1971)
!1974 = !DILocation(line: 1380, column: 32, scope: !1971)
!1975 = !DILocation(line: 1380, column: 37, scope: !1971)
!1976 = !DILocation(line: 1380, column: 21, scope: !1971)
!1977 = !DILocation(line: 1380, column: 26, scope: !1971)
!1978 = !DILocation(line: 1380, column: 30, scope: !1971)
!1979 = !DILocation(line: 1381, column: 21, scope: !1971)
!1980 = !DILocation(line: 1383, column: 21, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1965, file: !439, line: 1383, column: 21)
!1982 = !DILocation(line: 1383, column: 48, scope: !1981)
!1983 = !DILocation(line: 1383, column: 53, scope: !1981)
!1984 = !DILocation(line: 1383, column: 31, scope: !1981)
!1985 = !DILocation(line: 1383, column: 36, scope: !1981)
!1986 = !DILocation(line: 1383, column: 28, scope: !1981)
!1987 = !DILocation(line: 1383, column: 21, scope: !1965)
!1988 = !DILocation(line: 1384, column: 37, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !439, line: 1384, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1981, file: !439, line: 1383, column: 62)
!1991 = !DILocation(line: 1384, column: 25, scope: !1989)
!1992 = !DILocation(line: 1384, column: 25, scope: !1990)
!1993 = !DILocation(line: 1385, column: 25, scope: !1989)
!1994 = !DILocation(line: 1386, column: 17, scope: !1990)
!1995 = !DILocation(line: 1387, column: 17, scope: !1965)
!1996 = !DILocation(line: 1387, column: 22, scope: !1965)
!1997 = !DILocation(line: 1387, column: 28, scope: !1965)
!1998 = !DILocation(line: 1388, column: 48, scope: !1965)
!1999 = !DILocation(line: 1388, column: 33, scope: !1965)
!2000 = !DILocation(line: 1388, column: 38, scope: !1965)
!2001 = !DILocation(line: 1388, column: 31, scope: !1965)
!2002 = !DILocation(line: 1388, column: 17, scope: !1965)
!2003 = !DILocation(line: 1388, column: 22, scope: !1965)
!2004 = !DILocation(line: 1388, column: 46, scope: !1965)
!2005 = !DILocation(line: 1389, column: 49, scope: !1965)
!2006 = !DILocation(line: 1389, column: 34, scope: !1965)
!2007 = !DILocation(line: 1389, column: 39, scope: !1965)
!2008 = !DILocation(line: 1389, column: 17, scope: !1965)
!2009 = !DILocation(line: 1389, column: 22, scope: !1965)
!2010 = !DILocation(line: 1389, column: 47, scope: !1965)
!2011 = !DILocation(line: 1390, column: 13, scope: !1965)
!2012 = !DILocation(line: 1393, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1956, file: !439, line: 1391, column: 18)
!2014 = !DILocation(line: 1393, column: 24, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !439, discriminator: 3)
!2016 = !DILexicalBlockFile(scope: !2013, file: !439, discriminator: 1)
!2017 = !DILocation(line: 1393, column: 29, scope: !2013)
!2018 = !DILocation(line: 1393, column: 36, scope: !2013)
!2019 = !DILocation(line: 1393, column: 40, scope: !2013)
!2020 = !DILocation(line: 1394, column: 21, scope: !2013)
!2021 = !DILocation(line: 1394, column: 41, scope: !2013)
!2022 = !DILocation(line: 1394, column: 46, scope: !2013)
!2023 = !DILocation(line: 1394, column: 27, scope: !2013)
!2024 = !DILocation(line: 1394, column: 32, scope: !2013)
!2025 = !DILocation(line: 1394, column: 25, scope: !2013)
!2026 = !DILocation(line: 1393, column: 17, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2013, file: !439, discriminator: 2)
!2028 = !DILocation(line: 1395, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2013, file: !439, line: 1394, column: 55)
!2030 = !DILocation(line: 1395, column: 26, scope: !2029)
!2031 = !DILocation(line: 1395, column: 32, scope: !2029)
!2032 = !DILocation(line: 1396, column: 21, scope: !2029)
!2033 = !DILocation(line: 1396, column: 26, scope: !2029)
!2034 = !DILocation(line: 1396, column: 32, scope: !2029)
!2035 = !DILocation(line: 1398, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2013, file: !439, line: 1398, column: 21)
!2037 = !DILocation(line: 1398, column: 42, scope: !2036)
!2038 = !DILocation(line: 1398, column: 47, scope: !2036)
!2039 = !DILocation(line: 1398, column: 28, scope: !2036)
!2040 = !DILocation(line: 1398, column: 33, scope: !2036)
!2041 = !DILocation(line: 1398, column: 25, scope: !2036)
!2042 = !DILocation(line: 1398, column: 21, scope: !2013)
!2043 = !DILocation(line: 1399, column: 21, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2036, file: !439, line: 1398, column: 56)
!2045 = !DILocation(line: 1399, column: 26, scope: !2044)
!2046 = !DILocation(line: 1399, column: 31, scope: !2044)
!2047 = !DILocation(line: 1400, column: 32, scope: !2044)
!2048 = !DILocation(line: 1400, column: 37, scope: !2044)
!2049 = !DILocation(line: 1400, column: 21, scope: !2044)
!2050 = !DILocation(line: 1400, column: 26, scope: !2044)
!2051 = !DILocation(line: 1400, column: 30, scope: !2044)
!2052 = !DILocation(line: 1401, column: 21, scope: !2044)
!2053 = !DILocation(line: 1403, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2013, file: !439, line: 1403, column: 21)
!2055 = !DILocation(line: 1403, column: 48, scope: !2054)
!2056 = !DILocation(line: 1403, column: 53, scope: !2054)
!2057 = !DILocation(line: 1403, column: 31, scope: !2054)
!2058 = !DILocation(line: 1403, column: 36, scope: !2054)
!2059 = !DILocation(line: 1403, column: 28, scope: !2054)
!2060 = !DILocation(line: 1403, column: 21, scope: !2013)
!2061 = !DILocation(line: 1404, column: 37, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !439, line: 1404, column: 25)
!2063 = distinct !DILexicalBlock(scope: !2054, file: !439, line: 1403, column: 62)
!2064 = !DILocation(line: 1404, column: 25, scope: !2062)
!2065 = !DILocation(line: 1404, column: 25, scope: !2063)
!2066 = !DILocation(line: 1405, column: 25, scope: !2062)
!2067 = !DILocation(line: 1406, column: 17, scope: !2063)
!2068 = !DILocation(line: 1408, column: 9, scope: !1931)
!2069 = !DILocation(line: 1409, column: 5, scope: !713)
!2070 = !DILocation(line: 1409, column: 5, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !713, file: !439, discriminator: 1)
!2072 = !DILocation(line: 1409, column: 5, scope: !712)
!2073 = !DILocation(line: 1411, column: 18, scope: !703)
!2074 = !DILocation(line: 1411, column: 23, scope: !703)
!2075 = !DILocation(line: 1411, column: 5, scope: !703)
!2076 = !DILocation(line: 1411, column: 10, scope: !703)
!2077 = !DILocation(line: 1411, column: 16, scope: !703)
!2078 = !DILocation(line: 1414, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1414, column: 9)
!2080 = !DILocation(line: 1414, column: 14, scope: !2079)
!2081 = !DILocation(line: 1414, column: 21, scope: !2079)
!2082 = !DILocation(line: 1414, column: 9, scope: !703)
!2083 = !DILocation(line: 1415, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !439, line: 1415, column: 13)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !439, line: 1414, column: 27)
!2086 = !DILocation(line: 1415, column: 18, scope: !2084)
!2087 = !DILocation(line: 1415, column: 25, scope: !2084)
!2088 = !DILocation(line: 1415, column: 13, scope: !2085)
!2089 = !DILocation(line: 1416, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !439, line: 1415, column: 30)
!2091 = !DILocation(line: 1416, column: 18, scope: !2090)
!2092 = !DILocation(line: 1416, column: 24, scope: !2090)
!2093 = !DILocation(line: 1417, column: 13, scope: !2090)
!2094 = !DILocation(line: 1420, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2084, file: !439, line: 1419, column: 14)
!2096 = !DILocation(line: 1420, column: 18, scope: !2095)
!2097 = !DILocation(line: 1420, column: 24, scope: !2095)
!2098 = !DILocation(line: 1421, column: 13, scope: !2095)
!2099 = !DILocation(line: 1414, column: 24, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2079, file: !439, discriminator: 1)
!2101 = !DILocation(line: 1426, column: 5, scope: !703)
!2102 = !DILocation(line: 1426, column: 10, scope: !703)
!2103 = !DILocation(line: 1426, column: 16, scope: !703)
!2104 = !DILocation(line: 1428, column: 5, scope: !703)
!2105 = !DILocation(line: 1429, column: 23, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1428, column: 8)
!2107 = !DILocation(line: 1429, column: 13, scope: !2106)
!2108 = !DILocation(line: 1429, column: 11, scope: !2106)
!2109 = !DILocation(line: 1430, column: 5, scope: !2106)
!2110 = !DILocation(line: 1430, column: 14, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 1)
!2112 = !DILocation(line: 1430, column: 16, scope: !703)
!2113 = !DILocation(line: 1430, column: 23, scope: !703)
!2114 = !DILocation(line: 1430, column: 26, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 3)
!2116 = !DILocation(line: 1430, column: 28, scope: !703)
!2117 = !DILocation(line: 1430, column: 36, scope: !703)
!2118 = !DILocation(line: 1430, column: 39, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 5)
!2120 = !DILocation(line: 1430, column: 41, scope: !703)
!2121 = !DILocation(line: 1430, column: 5, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !439, discriminator: 6)
!2123 = !DILexicalBlockFile(scope: !2124, file: !439, discriminator: 4)
!2124 = !DILexicalBlockFile(scope: !2106, file: !439, discriminator: 2)
!2125 = !DILocation(line: 1433, column: 18, scope: !703)
!2126 = !DILocation(line: 1433, column: 23, scope: !703)
!2127 = !DILocation(line: 1433, column: 27, scope: !703)
!2128 = !DILocation(line: 1433, column: 5, scope: !703)
!2129 = !DILocation(line: 1433, column: 10, scope: !703)
!2130 = !DILocation(line: 1433, column: 16, scope: !703)
!2131 = !DILocation(line: 1436, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1436, column: 9)
!2133 = !DILocation(line: 1436, column: 11, scope: !2132)
!2134 = !DILocation(line: 1436, column: 9, scope: !703)
!2135 = !DILocation(line: 1437, column: 9, scope: !2132)
!2136 = !DILocation(line: 1437, column: 16, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !439, discriminator: 5)
!2138 = !DILexicalBlockFile(scope: !2132, file: !439, discriminator: 1)
!2139 = !DILocation(line: 1437, column: 18, scope: !2132)
!2140 = !DILocation(line: 1437, column: 26, scope: !2132)
!2141 = !DILocation(line: 1437, column: 29, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2132, file: !439, discriminator: 2)
!2143 = !DILocation(line: 1437, column: 31, scope: !2132)
!2144 = !DILocation(line: 1437, column: 9, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2132, file: !439, discriminator: 3)
!2146 = !DILocation(line: 1438, column: 27, scope: !2132)
!2147 = !DILocation(line: 1438, column: 17, scope: !2132)
!2148 = !DILocation(line: 1438, column: 15, scope: !2132)
!2149 = !DILocation(line: 1437, column: 9, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2132, file: !439, discriminator: 4)
!2151 = !DILocation(line: 1441, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1441, column: 9)
!2153 = !DILocation(line: 1441, column: 11, scope: !2152)
!2154 = !DILocation(line: 1441, column: 9, scope: !703)
!2155 = !DILocation(line: 1442, column: 16, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !439, line: 1441, column: 20)
!2157 = !DILocation(line: 1442, column: 21, scope: !2156)
!2158 = !DILocation(line: 1442, column: 26, scope: !2156)
!2159 = !DILocation(line: 1442, column: 9, scope: !2156)
!2160 = !DILocation(line: 1446, column: 14, scope: !703)
!2161 = !DILocation(line: 1447, column: 12, scope: !717)
!2162 = !DILocation(line: 1447, column: 14, scope: !717)
!2163 = !DILocation(line: 1447, column: 21, scope: !717)
!2164 = !DILocation(line: 1447, column: 24, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 1)
!2166 = !DILocation(line: 1447, column: 26, scope: !717)
!2167 = !DILocation(line: 1447, column: 34, scope: !717)
!2168 = !DILocation(line: 1447, column: 38, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2170, file: !439, discriminator: 3)
!2170 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 2)
!2171 = !DILocation(line: 1447, column: 40, scope: !717)
!2172 = !DILocation(line: 1447, column: 47, scope: !717)
!2173 = !DILocation(line: 1447, column: 50, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 4)
!2175 = !DILocation(line: 1447, column: 52, scope: !717)
!2176 = !DILocation(line: 1447, column: 60, scope: !717)
!2177 = !DILocation(line: 1447, column: 63, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !439, discriminator: 6)
!2179 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 5)
!2180 = !DILocation(line: 1447, column: 65, scope: !717)
!2181 = !DILocation(line: 1447, column: 72, scope: !717)
!2182 = !DILocation(line: 1447, column: 76, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 7)
!2184 = !DILocation(line: 1447, column: 78, scope: !717)
!2185 = !DILocation(line: 1447, column: 9, scope: !703)
!2186 = !DILocation(line: 1449, column: 9, scope: !716)
!2187 = !DILocation(line: 1449, column: 13, scope: !716)
!2188 = !DILocation(line: 1449, column: 24, scope: !716)
!2189 = !DILocation(line: 1449, column: 35, scope: !716)
!2190 = !DILocation(line: 1450, column: 9, scope: !716)
!2191 = !DILocation(line: 1450, column: 9, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !439, discriminator: 2)
!2193 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 1)
!2194 = !DILocation(line: 1451, column: 19, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !439, line: 1451, column: 17)
!2196 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1450, column: 19)
!2197 = !DILocation(line: 1451, column: 25, scope: !2195)
!2198 = !DILocation(line: 1451, column: 28, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2195, file: !439, discriminator: 1)
!2200 = !DILocation(line: 1451, column: 35, scope: !2195)
!2201 = !DILocation(line: 1451, column: 39, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2195, file: !439, discriminator: 2)
!2203 = !DILocation(line: 1451, column: 41, scope: !2195)
!2204 = !DILocation(line: 1451, column: 48, scope: !2195)
!2205 = !DILocation(line: 1451, column: 51, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2195, file: !439, discriminator: 3)
!2207 = !DILocation(line: 1451, column: 53, scope: !2195)
!2208 = !DILocation(line: 1451, column: 17, scope: !2196)
!2209 = !DILocation(line: 1452, column: 23, scope: !2195)
!2210 = !DILocation(line: 1452, column: 17, scope: !2195)
!2211 = !DILocation(line: 1455, column: 24, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2195, file: !439, line: 1455, column: 22)
!2213 = !DILocation(line: 1455, column: 30, scope: !2212)
!2214 = !DILocation(line: 1455, column: 33, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2212, file: !439, discriminator: 1)
!2216 = !DILocation(line: 1455, column: 39, scope: !2212)
!2217 = !DILocation(line: 1455, column: 42, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2212, file: !439, discriminator: 2)
!2219 = !DILocation(line: 1455, column: 49, scope: !2212)
!2220 = !DILocation(line: 1455, column: 53, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2212, file: !439, discriminator: 3)
!2222 = !DILocation(line: 1455, column: 55, scope: !2212)
!2223 = !DILocation(line: 1455, column: 62, scope: !2212)
!2224 = !DILocation(line: 1455, column: 65, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2212, file: !439, discriminator: 4)
!2226 = !DILocation(line: 1455, column: 67, scope: !2212)
!2227 = !DILocation(line: 1455, column: 22, scope: !2195)
!2228 = !DILocation(line: 1456, column: 23, scope: !2212)
!2229 = !DILocation(line: 1456, column: 17, scope: !2212)
!2230 = !DILocation(line: 1458, column: 24, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2212, file: !439, line: 1458, column: 22)
!2232 = !DILocation(line: 1458, column: 30, scope: !2231)
!2233 = !DILocation(line: 1458, column: 33, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2231, file: !439, discriminator: 1)
!2235 = !DILocation(line: 1458, column: 40, scope: !2231)
!2236 = !DILocation(line: 1458, column: 44, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2231, file: !439, discriminator: 2)
!2238 = !DILocation(line: 1458, column: 46, scope: !2231)
!2239 = !DILocation(line: 1458, column: 53, scope: !2231)
!2240 = !DILocation(line: 1458, column: 56, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2231, file: !439, discriminator: 3)
!2242 = !DILocation(line: 1458, column: 58, scope: !2231)
!2243 = !DILocation(line: 1458, column: 22, scope: !2212)
!2244 = !DILocation(line: 1459, column: 23, scope: !2231)
!2245 = !DILocation(line: 1459, column: 17, scope: !2231)
!2246 = !DILocation(line: 1461, column: 17, scope: !2231)
!2247 = !DILocation(line: 1462, column: 27, scope: !2196)
!2248 = !DILocation(line: 1462, column: 17, scope: !2196)
!2249 = !DILocation(line: 1462, column: 15, scope: !2196)
!2250 = !DILocation(line: 1463, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2196, file: !439, line: 1463, column: 17)
!2252 = !DILocation(line: 1463, column: 19, scope: !2251)
!2253 = !DILocation(line: 1463, column: 26, scope: !2251)
!2254 = !DILocation(line: 1463, column: 29, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2251, file: !439, discriminator: 1)
!2256 = !DILocation(line: 1463, column: 31, scope: !2251)
!2257 = !DILocation(line: 1463, column: 17, scope: !2196)
!2258 = !DILocation(line: 1464, column: 17, scope: !2251)
!2259 = !DILocation(line: 1466, column: 9, scope: !716)
!2260 = !DILocation(line: 1466, column: 19, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2193, file: !439, discriminator: 17)
!2262 = !DILocation(line: 1466, column: 21, scope: !716)
!2263 = !DILocation(line: 1466, column: 28, scope: !716)
!2264 = !DILocation(line: 1466, column: 31, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 2)
!2266 = !DILocation(line: 1466, column: 33, scope: !716)
!2267 = !DILocation(line: 1466, column: 41, scope: !716)
!2268 = !DILocation(line: 1466, column: 45, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2270, file: !439, discriminator: 5)
!2270 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 3)
!2271 = !DILocation(line: 1466, column: 47, scope: !716)
!2272 = !DILocation(line: 1466, column: 54, scope: !716)
!2273 = !DILocation(line: 1466, column: 57, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 6)
!2275 = !DILocation(line: 1466, column: 59, scope: !716)
!2276 = !DILocation(line: 1466, column: 67, scope: !716)
!2277 = !DILocation(line: 1466, column: 71, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !439, discriminator: 9)
!2279 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 7)
!2280 = !DILocation(line: 1466, column: 73, scope: !716)
!2281 = !DILocation(line: 1466, column: 80, scope: !716)
!2282 = !DILocation(line: 1466, column: 83, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 10)
!2284 = !DILocation(line: 1466, column: 85, scope: !716)
!2285 = !DILocation(line: 1466, column: 93, scope: !716)
!2286 = !DILocation(line: 1466, column: 96, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2288, file: !439, discriminator: 13)
!2288 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 11)
!2289 = !DILocation(line: 1466, column: 98, scope: !716)
!2290 = !DILocation(line: 1466, column: 105, scope: !716)
!2291 = !DILocation(line: 1466, column: 109, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 15)
!2293 = !DILocation(line: 1466, column: 111, scope: !716)
!2294 = !DILocation(line: 1466, column: 9, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !439, discriminator: 16)
!2296 = !DILexicalBlockFile(scope: !2297, file: !439, discriminator: 14)
!2297 = !DILexicalBlockFile(scope: !2298, file: !439, discriminator: 12)
!2298 = !DILexicalBlockFile(scope: !2299, file: !439, discriminator: 8)
!2299 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 4)
!2300 = !DILocation(line: 1467, column: 17, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !439, line: 1467, column: 17)
!2302 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1466, column: 121)
!2303 = !DILocation(line: 1467, column: 19, scope: !2301)
!2304 = !DILocation(line: 1467, column: 17, scope: !2302)
!2305 = !DILocation(line: 1468, column: 26, scope: !2301)
!2306 = !DILocation(line: 1468, column: 17, scope: !2301)
!2307 = !DILocation(line: 1469, column: 27, scope: !2302)
!2308 = !DILocation(line: 1469, column: 17, scope: !2302)
!2309 = !DILocation(line: 1469, column: 15, scope: !2302)
!2310 = !DILocation(line: 1471, column: 20, scope: !716)
!2311 = !DILocation(line: 1471, column: 25, scope: !716)
!2312 = !DILocation(line: 1471, column: 9, scope: !716)
!2313 = !DILocation(line: 1472, column: 13, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1472, column: 13)
!2315 = !DILocation(line: 1472, column: 22, scope: !2314)
!2316 = !DILocation(line: 1473, column: 32, scope: !2314)
!2317 = !DILocation(line: 1473, column: 14, scope: !2314)
!2318 = !DILocation(line: 1472, column: 13, scope: !716)
!2319 = !DILocation(line: 1474, column: 13, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !439, line: 1473, column: 38)
!2321 = !DILocation(line: 1474, column: 18, scope: !2320)
!2322 = !DILocation(line: 1474, column: 23, scope: !2320)
!2323 = !DILocation(line: 1475, column: 13, scope: !2320)
!2324 = !DILocation(line: 1477, column: 20, scope: !716)
!2325 = !DILocation(line: 1477, column: 25, scope: !716)
!2326 = !DILocation(line: 1477, column: 10, scope: !716)
!2327 = !DILocation(line: 1477, column: 18, scope: !716)
!2328 = !DILocation(line: 1478, column: 18, scope: !716)
!2329 = !DILocation(line: 1478, column: 23, scope: !716)
!2330 = !DILocation(line: 1478, column: 10, scope: !716)
!2331 = !DILocation(line: 1478, column: 16, scope: !716)
!2332 = !DILocation(line: 1479, column: 9, scope: !716)
!2333 = !DILocation(line: 1480, column: 5, scope: !717)
!2334 = !DILocation(line: 1483, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1483, column: 9)
!2336 = !DILocation(line: 1483, column: 11, scope: !2335)
!2337 = !DILocation(line: 1483, column: 9, scope: !703)
!2338 = !DILocation(line: 1484, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !439, line: 1483, column: 20)
!2340 = !DILocation(line: 1484, column: 14, scope: !2339)
!2341 = !DILocation(line: 1484, column: 20, scope: !2339)
!2342 = !DILocation(line: 1485, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !439, line: 1485, column: 13)
!2344 = !DILocation(line: 1485, column: 23, scope: !2343)
!2345 = !DILocation(line: 1485, column: 26, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2343, file: !439, discriminator: 1)
!2347 = !DILocation(line: 1485, column: 31, scope: !2343)
!2348 = !DILocation(line: 1485, column: 37, scope: !2343)
!2349 = !DILocation(line: 1485, column: 13, scope: !2339)
!2350 = !DILocation(line: 1486, column: 13, scope: !2343)
!2351 = !DILocation(line: 1487, column: 20, scope: !2339)
!2352 = !DILocation(line: 1487, column: 25, scope: !2339)
!2353 = !DILocation(line: 1487, column: 10, scope: !2339)
!2354 = !DILocation(line: 1487, column: 18, scope: !2339)
!2355 = !DILocation(line: 1488, column: 18, scope: !2339)
!2356 = !DILocation(line: 1488, column: 23, scope: !2339)
!2357 = !DILocation(line: 1488, column: 27, scope: !2339)
!2358 = !DILocation(line: 1488, column: 10, scope: !2339)
!2359 = !DILocation(line: 1488, column: 16, scope: !2339)
!2360 = !DILocation(line: 1489, column: 9, scope: !2339)
!2361 = !DILocation(line: 1489, column: 14, scope: !2339)
!2362 = !DILocation(line: 1489, column: 24, scope: !2339)
!2363 = !DILocation(line: 1490, column: 9, scope: !2339)
!2364 = !DILocation(line: 1494, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1494, column: 9)
!2366 = !DILocation(line: 1494, column: 11, scope: !2365)
!2367 = !DILocation(line: 1494, column: 9, scope: !703)
!2368 = !DILocation(line: 1495, column: 23, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !439, line: 1494, column: 19)
!2370 = !DILocation(line: 1495, column: 13, scope: !2369)
!2371 = !DILocation(line: 1495, column: 11, scope: !2369)
!2372 = !DILocation(line: 1496, column: 42, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !439, line: 1496, column: 13)
!2374 = !DILocation(line: 1496, column: 14, scope: !2373)
!2375 = !DILocation(line: 1496, column: 16, scope: !2373)
!2376 = !DILocation(line: 1496, column: 15, scope: !2373)
!2377 = !{!2378, !2378, i64 0}
!2378 = !{!"short", !896, i64 0}
!2379 = !DILocation(line: 1496, column: 47, scope: !2373)
!2380 = !DILocation(line: 1496, column: 13, scope: !2369)
!2381 = !DILocation(line: 1497, column: 13, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2373, file: !439, line: 1496, column: 81)
!2383 = !DILocation(line: 1498, column: 20, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !439, line: 1498, column: 20)
!2385 = !DILocation(line: 1498, column: 22, scope: !2384)
!2386 = !DILocation(line: 1498, column: 20, scope: !2373)
!2387 = !DILocation(line: 1499, column: 27, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !439, line: 1498, column: 30)
!2389 = !DILocation(line: 1499, column: 17, scope: !2388)
!2390 = !DILocation(line: 1499, column: 15, scope: !2388)
!2391 = !DILocation(line: 1500, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !439, line: 1500, column: 17)
!2393 = !DILocation(line: 1500, column: 19, scope: !2392)
!2394 = !DILocation(line: 1500, column: 17, scope: !2388)
!2395 = !DILocation(line: 1501, column: 28, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !439, line: 1500, column: 27)
!2397 = !DILocation(line: 1501, column: 33, scope: !2396)
!2398 = !DILocation(line: 1501, column: 18, scope: !2396)
!2399 = !DILocation(line: 1501, column: 26, scope: !2396)
!2400 = !DILocation(line: 1502, column: 26, scope: !2396)
!2401 = !DILocation(line: 1502, column: 31, scope: !2396)
!2402 = !DILocation(line: 1502, column: 18, scope: !2396)
!2403 = !DILocation(line: 1502, column: 24, scope: !2396)
!2404 = !DILocation(line: 1503, column: 17, scope: !2396)
!2405 = !DILocation(line: 1505, column: 28, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2392, file: !439, line: 1504, column: 20)
!2407 = !DILocation(line: 1505, column: 33, scope: !2406)
!2408 = !DILocation(line: 1505, column: 17, scope: !2406)
!2409 = !DILocation(line: 1507, column: 24, scope: !2388)
!2410 = !DILocation(line: 1507, column: 13, scope: !2388)
!2411 = !DILocation(line: 1508, column: 9, scope: !2388)
!2412 = !DILocation(line: 1509, column: 24, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2384, file: !439, line: 1508, column: 16)
!2414 = !DILocation(line: 1509, column: 29, scope: !2413)
!2415 = !DILocation(line: 1509, column: 13, scope: !2413)
!2416 = !DILocation(line: 1511, column: 20, scope: !2369)
!2417 = !DILocation(line: 1511, column: 25, scope: !2369)
!2418 = !DILocation(line: 1511, column: 10, scope: !2369)
!2419 = !DILocation(line: 1511, column: 18, scope: !2369)
!2420 = !DILocation(line: 1512, column: 18, scope: !2369)
!2421 = !DILocation(line: 1512, column: 23, scope: !2369)
!2422 = !DILocation(line: 1512, column: 10, scope: !2369)
!2423 = !DILocation(line: 1512, column: 16, scope: !2369)
!2424 = !DILocation(line: 1513, column: 9, scope: !2369)
!2425 = !DILocation(line: 1517, column: 38, scope: !728)
!2426 = !DILocation(line: 1517, column: 10, scope: !728)
!2427 = !DILocation(line: 1517, column: 12, scope: !728)
!2428 = !DILocation(line: 1517, column: 11, scope: !728)
!2429 = !DILocation(line: 1517, column: 43, scope: !728)
!2430 = !DILocation(line: 1517, column: 9, scope: !703)
!2431 = !DILocation(line: 1518, column: 13, scope: !726)
!2432 = !DILocation(line: 1518, column: 15, scope: !726)
!2433 = !DILocation(line: 1518, column: 13, scope: !727)
!2434 = !DILocation(line: 1520, column: 27, scope: !725)
!2435 = !DILocation(line: 1520, column: 17, scope: !725)
!2436 = !DILocation(line: 1520, column: 15, scope: !725)
!2437 = !DILocation(line: 1521, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !725, file: !439, line: 1521, column: 17)
!2439 = !DILocation(line: 1521, column: 19, scope: !2438)
!2440 = !DILocation(line: 1521, column: 17, scope: !725)
!2441 = !DILocation(line: 1522, column: 17, scope: !2438)
!2442 = !DILocation(line: 1523, column: 17, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !725, file: !439, line: 1523, column: 17)
!2444 = !DILocation(line: 1523, column: 19, scope: !2443)
!2445 = !DILocation(line: 1523, column: 26, scope: !2443)
!2446 = !DILocation(line: 1523, column: 29, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2443, file: !439, discriminator: 1)
!2448 = !DILocation(line: 1523, column: 31, scope: !2443)
!2449 = !DILocation(line: 1523, column: 17, scope: !725)
!2450 = !DILocation(line: 1524, column: 17, scope: !2443)
!2451 = !DILocation(line: 1525, column: 17, scope: !724)
!2452 = !DILocation(line: 1525, column: 19, scope: !724)
!2453 = !DILocation(line: 1525, column: 26, scope: !724)
!2454 = !DILocation(line: 1525, column: 29, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !724, file: !439, discriminator: 1)
!2456 = !DILocation(line: 1525, column: 31, scope: !724)
!2457 = !DILocation(line: 1525, column: 17, scope: !725)
!2458 = !DILocation(line: 1528, column: 31, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !724, file: !439, line: 1525, column: 39)
!2460 = !DILocation(line: 1528, column: 21, scope: !2459)
!2461 = !DILocation(line: 1528, column: 19, scope: !2459)
!2462 = !DILocation(line: 1529, column: 51, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !439, line: 1529, column: 21)
!2464 = !DILocation(line: 1529, column: 23, scope: !2463)
!2465 = !DILocation(line: 1529, column: 25, scope: !2463)
!2466 = !DILocation(line: 1529, column: 24, scope: !2463)
!2467 = !DILocation(line: 1529, column: 56, scope: !2463)
!2468 = !DILocation(line: 1529, column: 21, scope: !2459)
!2469 = !DILocation(line: 1530, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2463, file: !439, line: 1529, column: 91)
!2471 = !DILocation(line: 1530, column: 26, scope: !2470)
!2472 = !DILocation(line: 1530, column: 31, scope: !2470)
!2473 = !DILocation(line: 1531, column: 32, scope: !2470)
!2474 = !DILocation(line: 1531, column: 37, scope: !2470)
!2475 = !DILocation(line: 1531, column: 21, scope: !2470)
!2476 = !DILocation(line: 1532, column: 21, scope: !2470)
!2477 = !DILocation(line: 1534, column: 17, scope: !2459)
!2478 = !DILocation(line: 1535, column: 35, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2459, file: !439, line: 1534, column: 20)
!2480 = !DILocation(line: 1535, column: 25, scope: !2479)
!2481 = !DILocation(line: 1535, column: 23, scope: !2479)
!2482 = !DILocation(line: 1536, column: 17, scope: !2479)
!2483 = !DILocation(line: 1536, column: 55, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2459, file: !439, discriminator: 1)
!2485 = !DILocation(line: 1536, column: 27, scope: !2459)
!2486 = !DILocation(line: 1536, column: 29, scope: !2459)
!2487 = !DILocation(line: 1536, column: 28, scope: !2459)
!2488 = !DILocation(line: 1536, column: 60, scope: !2459)
!2489 = !DILocation(line: 1537, column: 13, scope: !2459)
!2490 = !DILocation(line: 1538, column: 22, scope: !723)
!2491 = !DILocation(line: 1538, column: 24, scope: !723)
!2492 = !DILocation(line: 1538, column: 31, scope: !723)
!2493 = !DILocation(line: 1538, column: 34, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !723, file: !439, discriminator: 1)
!2495 = !DILocation(line: 1538, column: 36, scope: !723)
!2496 = !DILocation(line: 1538, column: 22, scope: !724)
!2497 = !DILocation(line: 1540, column: 31, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !723, file: !439, line: 1538, column: 44)
!2499 = !DILocation(line: 1540, column: 21, scope: !2498)
!2500 = !DILocation(line: 1540, column: 19, scope: !2498)
!2501 = !DILocation(line: 1541, column: 21, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !439, line: 1541, column: 21)
!2503 = !DILocation(line: 1541, column: 23, scope: !2502)
!2504 = !DILocation(line: 1541, column: 29, scope: !2502)
!2505 = !DILocation(line: 1541, column: 32, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2502, file: !439, discriminator: 1)
!2507 = !DILocation(line: 1541, column: 34, scope: !2502)
!2508 = !DILocation(line: 1541, column: 21, scope: !2498)
!2509 = !DILocation(line: 1542, column: 21, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2502, file: !439, line: 1541, column: 42)
!2511 = !DILocation(line: 1542, column: 26, scope: !2510)
!2512 = !DILocation(line: 1542, column: 31, scope: !2510)
!2513 = !DILocation(line: 1543, column: 32, scope: !2510)
!2514 = !DILocation(line: 1543, column: 37, scope: !2510)
!2515 = !DILocation(line: 1543, column: 21, scope: !2510)
!2516 = !DILocation(line: 1544, column: 21, scope: !2510)
!2517 = !DILocation(line: 1546, column: 17, scope: !2498)
!2518 = !DILocation(line: 1547, column: 35, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2498, file: !439, line: 1546, column: 20)
!2520 = !DILocation(line: 1547, column: 25, scope: !2519)
!2521 = !DILocation(line: 1547, column: 23, scope: !2519)
!2522 = !DILocation(line: 1548, column: 17, scope: !2519)
!2523 = !DILocation(line: 1548, column: 33, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2498, file: !439, discriminator: 1)
!2525 = !DILocation(line: 1548, column: 30, scope: !2498)
!2526 = !DILocation(line: 1548, column: 35, scope: !2498)
!2527 = !DILocation(line: 1548, column: 38, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2498, file: !439, discriminator: 2)
!2529 = !DILocation(line: 1548, column: 40, scope: !2498)
!2530 = !DILocation(line: 1548, column: 17, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2519, file: !439, discriminator: 3)
!2532 = !DILocation(line: 1549, column: 13, scope: !2498)
!2533 = !DILocation(line: 1550, column: 22, scope: !722)
!2534 = !DILocation(line: 1550, column: 24, scope: !722)
!2535 = !DILocation(line: 1550, column: 31, scope: !722)
!2536 = !DILocation(line: 1550, column: 34, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !722, file: !439, discriminator: 1)
!2538 = !DILocation(line: 1550, column: 36, scope: !722)
!2539 = !DILocation(line: 1550, column: 22, scope: !723)
!2540 = !DILocation(line: 1552, column: 31, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !722, file: !439, line: 1550, column: 44)
!2542 = !DILocation(line: 1552, column: 21, scope: !2541)
!2543 = !DILocation(line: 1552, column: 19, scope: !2541)
!2544 = !DILocation(line: 1553, column: 21, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !439, line: 1553, column: 21)
!2546 = !DILocation(line: 1553, column: 23, scope: !2545)
!2547 = !DILocation(line: 1553, column: 30, scope: !2545)
!2548 = !DILocation(line: 1553, column: 33, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2545, file: !439, discriminator: 1)
!2550 = !DILocation(line: 1553, column: 35, scope: !2545)
!2551 = !DILocation(line: 1553, column: 21, scope: !2541)
!2552 = !DILocation(line: 1554, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !439, line: 1553, column: 43)
!2554 = !DILocation(line: 1554, column: 26, scope: !2553)
!2555 = !DILocation(line: 1554, column: 31, scope: !2553)
!2556 = !DILocation(line: 1555, column: 32, scope: !2553)
!2557 = !DILocation(line: 1555, column: 37, scope: !2553)
!2558 = !DILocation(line: 1555, column: 21, scope: !2553)
!2559 = !DILocation(line: 1556, column: 21, scope: !2553)
!2560 = !DILocation(line: 1558, column: 17, scope: !2541)
!2561 = !DILocation(line: 1559, column: 35, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2541, file: !439, line: 1558, column: 20)
!2563 = !DILocation(line: 1559, column: 25, scope: !2562)
!2564 = !DILocation(line: 1559, column: 23, scope: !2562)
!2565 = !DILocation(line: 1560, column: 17, scope: !2562)
!2566 = !DILocation(line: 1560, column: 26, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2541, file: !439, discriminator: 1)
!2568 = !DILocation(line: 1560, column: 28, scope: !2541)
!2569 = !DILocation(line: 1560, column: 35, scope: !2541)
!2570 = !DILocation(line: 1560, column: 38, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2541, file: !439, discriminator: 3)
!2572 = !DILocation(line: 1560, column: 40, scope: !2541)
!2573 = !DILocation(line: 1560, column: 17, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2575, file: !439, discriminator: 4)
!2575 = !DILexicalBlockFile(scope: !2562, file: !439, discriminator: 2)
!2576 = !DILocation(line: 1561, column: 13, scope: !2541)
!2577 = !DILocation(line: 1563, column: 17, scope: !721)
!2578 = !DILocation(line: 1563, column: 21, scope: !721)
!2579 = !DILocation(line: 1566, column: 17, scope: !721)
!2580 = !DILocation(line: 1566, column: 24, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2582, file: !439, discriminator: 2)
!2582 = !DILexicalBlockFile(scope: !721, file: !439, discriminator: 1)
!2583 = !DILocation(line: 1566, column: 26, scope: !721)
!2584 = !DILocation(line: 1567, column: 35, scope: !721)
!2585 = !DILocation(line: 1567, column: 25, scope: !721)
!2586 = !DILocation(line: 1567, column: 23, scope: !721)
!2587 = !DILocation(line: 1568, column: 17, scope: !721)
!2588 = !DILocation(line: 1568, column: 53, scope: !2581)
!2589 = !DILocation(line: 1568, column: 25, scope: !721)
!2590 = !DILocation(line: 1568, column: 27, scope: !721)
!2591 = !DILocation(line: 1568, column: 26, scope: !721)
!2592 = !DILocation(line: 1568, column: 58, scope: !721)
!2593 = !DILocation(line: 1569, column: 29, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !721, file: !439, line: 1568, column: 92)
!2595 = !DILocation(line: 1570, column: 35, scope: !2594)
!2596 = !DILocation(line: 1570, column: 25, scope: !2594)
!2597 = !DILocation(line: 1570, column: 23, scope: !2594)
!2598 = !DILocation(line: 1572, column: 21, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !721, file: !439, line: 1572, column: 21)
!2600 = !DILocation(line: 1572, column: 23, scope: !2599)
!2601 = !DILocation(line: 1572, column: 21, scope: !721)
!2602 = !DILocation(line: 1573, column: 21, scope: !2599)
!2603 = !DILocation(line: 1574, column: 26, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !439, line: 1574, column: 26)
!2605 = !DILocation(line: 1574, column: 28, scope: !2604)
!2606 = !DILocation(line: 1574, column: 35, scope: !2604)
!2607 = !DILocation(line: 1574, column: 38, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2604, file: !439, discriminator: 1)
!2609 = !DILocation(line: 1574, column: 40, scope: !2604)
!2610 = !DILocation(line: 1574, column: 26, scope: !2599)
!2611 = !DILocation(line: 1575, column: 21, scope: !2604)
!2612 = !DILocation(line: 1576, column: 26, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2604, file: !439, line: 1576, column: 26)
!2614 = !DILocation(line: 1576, column: 28, scope: !2613)
!2615 = !DILocation(line: 1576, column: 35, scope: !2613)
!2616 = !DILocation(line: 1576, column: 38, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2613, file: !439, discriminator: 1)
!2618 = !DILocation(line: 1576, column: 40, scope: !2613)
!2619 = !DILocation(line: 1576, column: 26, scope: !2604)
!2620 = !DILocation(line: 1577, column: 21, scope: !2613)
!2621 = !DILocation(line: 1578, column: 26, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2613, file: !439, line: 1578, column: 26)
!2623 = !DILocation(line: 1578, column: 26, scope: !2613)
!2624 = !DILocation(line: 1579, column: 21, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !439, line: 1578, column: 35)
!2626 = !DILocation(line: 1579, column: 26, scope: !2625)
!2627 = !DILocation(line: 1579, column: 31, scope: !2625)
!2628 = !DILocation(line: 1580, column: 32, scope: !2625)
!2629 = !DILocation(line: 1580, column: 37, scope: !2625)
!2630 = !DILocation(line: 1580, column: 21, scope: !2625)
!2631 = !DILocation(line: 1581, column: 21, scope: !2625)
!2632 = !DILocation(line: 1583, column: 13, scope: !722)
!2633 = !DILocation(line: 1583, column: 13, scope: !2537)
!2634 = !DILocation(line: 1584, column: 9, scope: !725)
!2635 = !DILocation(line: 1587, column: 13, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !726, file: !439, line: 1585, column: 14)
!2637 = !DILocation(line: 1588, column: 31, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !439, line: 1587, column: 16)
!2639 = !DILocation(line: 1588, column: 21, scope: !2638)
!2640 = !DILocation(line: 1588, column: 19, scope: !2638)
!2641 = !DILocation(line: 1589, column: 13, scope: !2638)
!2642 = !DILocation(line: 1589, column: 51, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2636, file: !439, discriminator: 1)
!2644 = !DILocation(line: 1589, column: 23, scope: !2636)
!2645 = !DILocation(line: 1589, column: 25, scope: !2636)
!2646 = !DILocation(line: 1589, column: 24, scope: !2636)
!2647 = !DILocation(line: 1589, column: 56, scope: !2636)
!2648 = !DILocation(line: 1592, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !439, line: 1592, column: 21)
!2650 = distinct !DILexicalBlock(scope: !2636, file: !439, line: 1590, column: 13)
!2651 = !DILocation(line: 1592, column: 23, scope: !2649)
!2652 = !DILocation(line: 1592, column: 21, scope: !2650)
!2653 = !DILocation(line: 1592, column: 31, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2649, file: !439, discriminator: 1)
!2655 = !DILocation(line: 1595, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2649, file: !439, line: 1592, column: 31)
!2657 = !DILocation(line: 1596, column: 39, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !439, line: 1595, column: 24)
!2659 = !DILocation(line: 1596, column: 29, scope: !2658)
!2660 = !DILocation(line: 1596, column: 27, scope: !2658)
!2661 = !DILocation(line: 1597, column: 21, scope: !2658)
!2662 = !DILocation(line: 1597, column: 59, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2656, file: !439, discriminator: 1)
!2664 = !DILocation(line: 1597, column: 31, scope: !2656)
!2665 = !DILocation(line: 1597, column: 33, scope: !2656)
!2666 = !DILocation(line: 1597, column: 32, scope: !2656)
!2667 = !DILocation(line: 1597, column: 64, scope: !2656)
!2668 = !DILocation(line: 1598, column: 17, scope: !2656)
!2669 = !DILocation(line: 1599, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2650, file: !439, line: 1599, column: 21)
!2671 = !DILocation(line: 1599, column: 23, scope: !2670)
!2672 = !DILocation(line: 1599, column: 30, scope: !2670)
!2673 = !DILocation(line: 1599, column: 33, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2670, file: !439, discriminator: 2)
!2675 = !DILocation(line: 1599, column: 35, scope: !2670)
!2676 = !DILocation(line: 1599, column: 21, scope: !2650)
!2677 = !DILocation(line: 1599, column: 43, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !439, discriminator: 3)
!2679 = !DILexicalBlockFile(scope: !2670, file: !439, discriminator: 1)
!2680 = !DILocation(line: 1602, column: 35, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2670, file: !439, line: 1599, column: 43)
!2682 = !DILocation(line: 1602, column: 25, scope: !2681)
!2683 = !DILocation(line: 1602, column: 23, scope: !2681)
!2684 = !DILocation(line: 1603, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !439, line: 1603, column: 25)
!2686 = !DILocation(line: 1603, column: 27, scope: !2685)
!2687 = !DILocation(line: 1603, column: 34, scope: !2685)
!2688 = !DILocation(line: 1603, column: 37, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2685, file: !439, discriminator: 1)
!2690 = !DILocation(line: 1603, column: 39, scope: !2685)
!2691 = !DILocation(line: 1603, column: 25, scope: !2681)
!2692 = !DILocation(line: 1604, column: 39, scope: !2685)
!2693 = !DILocation(line: 1604, column: 29, scope: !2685)
!2694 = !DILocation(line: 1604, column: 27, scope: !2685)
!2695 = !DILocation(line: 1604, column: 25, scope: !2685)
!2696 = !DILocation(line: 1605, column: 55, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2681, file: !439, line: 1605, column: 25)
!2698 = !DILocation(line: 1605, column: 27, scope: !2697)
!2699 = !DILocation(line: 1605, column: 29, scope: !2697)
!2700 = !DILocation(line: 1605, column: 28, scope: !2697)
!2701 = !DILocation(line: 1605, column: 60, scope: !2697)
!2702 = !DILocation(line: 1605, column: 25, scope: !2681)
!2703 = !DILocation(line: 1606, column: 25, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2697, file: !439, line: 1605, column: 94)
!2705 = !DILocation(line: 1606, column: 30, scope: !2704)
!2706 = !DILocation(line: 1606, column: 35, scope: !2704)
!2707 = !DILocation(line: 1607, column: 36, scope: !2704)
!2708 = !DILocation(line: 1607, column: 41, scope: !2704)
!2709 = !DILocation(line: 1607, column: 25, scope: !2704)
!2710 = !DILocation(line: 1608, column: 25, scope: !2704)
!2711 = !DILocation(line: 1610, column: 21, scope: !2681)
!2712 = !DILocation(line: 1611, column: 39, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2681, file: !439, line: 1610, column: 24)
!2714 = !DILocation(line: 1611, column: 29, scope: !2713)
!2715 = !DILocation(line: 1611, column: 27, scope: !2713)
!2716 = !DILocation(line: 1612, column: 21, scope: !2713)
!2717 = !DILocation(line: 1612, column: 59, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2681, file: !439, discriminator: 1)
!2719 = !DILocation(line: 1612, column: 31, scope: !2681)
!2720 = !DILocation(line: 1612, column: 33, scope: !2681)
!2721 = !DILocation(line: 1612, column: 32, scope: !2681)
!2722 = !DILocation(line: 1612, column: 64, scope: !2681)
!2723 = !DILocation(line: 1613, column: 17, scope: !2681)
!2724 = !DILocation(line: 1614, column: 21, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2650, file: !439, line: 1614, column: 21)
!2726 = !DILocation(line: 1614, column: 23, scope: !2725)
!2727 = !DILocation(line: 1614, column: 30, scope: !2725)
!2728 = !DILocation(line: 1614, column: 33, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2725, file: !439, discriminator: 2)
!2730 = !DILocation(line: 1614, column: 35, scope: !2725)
!2731 = !DILocation(line: 1614, column: 21, scope: !2650)
!2732 = !DILocation(line: 1614, column: 21, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2734, file: !439, discriminator: 3)
!2734 = !DILexicalBlockFile(scope: !2650, file: !439, discriminator: 1)
!2735 = !DILocation(line: 1617, column: 35, scope: !2725)
!2736 = !DILocation(line: 1617, column: 25, scope: !2725)
!2737 = !DILocation(line: 1617, column: 23, scope: !2725)
!2738 = !DILocation(line: 1617, column: 21, scope: !2725)
!2739 = !DILocation(line: 1620, column: 20, scope: !727)
!2740 = !DILocation(line: 1620, column: 25, scope: !727)
!2741 = !DILocation(line: 1620, column: 9, scope: !727)
!2742 = !DILocation(line: 1621, column: 20, scope: !727)
!2743 = !DILocation(line: 1621, column: 25, scope: !727)
!2744 = !DILocation(line: 1621, column: 10, scope: !727)
!2745 = !DILocation(line: 1621, column: 18, scope: !727)
!2746 = !DILocation(line: 1622, column: 18, scope: !727)
!2747 = !DILocation(line: 1622, column: 23, scope: !727)
!2748 = !DILocation(line: 1622, column: 10, scope: !727)
!2749 = !DILocation(line: 1622, column: 16, scope: !727)
!2750 = !DILocation(line: 1623, column: 9, scope: !727)
!2751 = !DILocation(line: 1517, column: 74, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !728, file: !439, discriminator: 1)
!2753 = !DILocation(line: 1628, column: 9, scope: !731)
!2754 = !DILocation(line: 1628, column: 11, scope: !731)
!2755 = !DILocation(line: 1628, column: 19, scope: !731)
!2756 = !DILocation(line: 1628, column: 22, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !731, file: !439, discriminator: 1)
!2758 = !DILocation(line: 1628, column: 24, scope: !731)
!2759 = !DILocation(line: 1628, column: 9, scope: !703)
!2760 = !DILocation(line: 1629, column: 9, scope: !730)
!2761 = !DILocation(line: 1629, column: 13, scope: !730)
!2762 = !DILocation(line: 1629, column: 21, scope: !730)
!2763 = !DILocation(line: 1630, column: 9, scope: !730)
!2764 = !DILocation(line: 1630, column: 13, scope: !730)
!2765 = !DILocation(line: 1631, column: 9, scope: !730)
!2766 = !DILocation(line: 1631, column: 13, scope: !730)
!2767 = !DILocation(line: 1634, column: 23, scope: !730)
!2768 = !DILocation(line: 1634, column: 13, scope: !730)
!2769 = !DILocation(line: 1634, column: 11, scope: !730)
!2770 = !DILocation(line: 1635, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1635, column: 13)
!2772 = !DILocation(line: 1635, column: 18, scope: !2771)
!2773 = !DILocation(line: 1635, column: 15, scope: !2771)
!2774 = !DILocation(line: 1635, column: 13, scope: !730)
!2775 = !DILocation(line: 1636, column: 27, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !439, line: 1635, column: 25)
!2777 = !DILocation(line: 1636, column: 17, scope: !2776)
!2778 = !DILocation(line: 1636, column: 15, scope: !2776)
!2779 = !DILocation(line: 1637, column: 17, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !439, line: 1637, column: 17)
!2781 = !DILocation(line: 1637, column: 22, scope: !2780)
!2782 = !DILocation(line: 1637, column: 19, scope: !2780)
!2783 = !DILocation(line: 1637, column: 17, scope: !2776)
!2784 = !DILocation(line: 1638, column: 28, scope: !2780)
!2785 = !DILocation(line: 1638, column: 17, scope: !2780)
!2786 = !DILocation(line: 1640, column: 32, scope: !2780)
!2787 = !DILocation(line: 1641, column: 9, scope: !2776)
!2788 = !DILocation(line: 1642, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1642, column: 13)
!2790 = !DILocation(line: 1642, column: 18, scope: !2789)
!2791 = !DILocation(line: 1642, column: 15, scope: !2789)
!2792 = !DILocation(line: 1642, column: 13, scope: !730)
!2793 = !DILocation(line: 1643, column: 24, scope: !2789)
!2794 = !DILocation(line: 1643, column: 29, scope: !2789)
!2795 = !DILocation(line: 1643, column: 13, scope: !2789)
!2796 = !DILocation(line: 1646, column: 9, scope: !730)
!2797 = !DILocation(line: 1646, column: 16, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2799, file: !439, discriminator: 2)
!2799 = !DILexicalBlockFile(scope: !730, file: !439, discriminator: 1)
!2800 = !DILocation(line: 1646, column: 34, scope: !730)
!2801 = !DILocation(line: 1646, column: 31, scope: !730)
!2802 = !DILocation(line: 1647, column: 27, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1646, column: 46)
!2804 = !DILocation(line: 1647, column: 17, scope: !2803)
!2805 = !DILocation(line: 1647, column: 15, scope: !2803)
!2806 = !DILocation(line: 1648, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !439, line: 1648, column: 17)
!2808 = !DILocation(line: 1648, column: 19, scope: !2807)
!2809 = !DILocation(line: 1648, column: 17, scope: !2803)
!2810 = !DILocation(line: 1649, column: 21, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !439, line: 1649, column: 21)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !439, line: 1648, column: 28)
!2813 = !DILocation(line: 1649, column: 32, scope: !2811)
!2814 = !DILocation(line: 1649, column: 21, scope: !2812)
!2815 = !DILocation(line: 1650, column: 21, scope: !2811)
!2816 = !DILocation(line: 1650, column: 26, scope: !2811)
!2817 = !DILocation(line: 1650, column: 31, scope: !2811)
!2818 = !DILocation(line: 1652, column: 21, scope: !2811)
!2819 = !DILocation(line: 1652, column: 26, scope: !2811)
!2820 = !DILocation(line: 1652, column: 31, scope: !2811)
!2821 = !DILocation(line: 1653, column: 28, scope: !2812)
!2822 = !DILocation(line: 1653, column: 33, scope: !2812)
!2823 = !DILocation(line: 1653, column: 17, scope: !2812)
!2824 = !DILocation(line: 1653, column: 22, scope: !2812)
!2825 = !DILocation(line: 1653, column: 26, scope: !2812)
!2826 = !DILocation(line: 1654, column: 17, scope: !2812)
!2827 = !DILocation(line: 1656, column: 17, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2803, file: !439, line: 1656, column: 17)
!2829 = !DILocation(line: 1656, column: 28, scope: !2828)
!2830 = !DILocation(line: 1656, column: 33, scope: !2828)
!2831 = !DILocation(line: 1656, column: 36, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2828, file: !439, discriminator: 1)
!2833 = !DILocation(line: 1656, column: 38, scope: !2828)
!2834 = !DILocation(line: 1656, column: 17, scope: !2803)
!2835 = !DILocation(line: 1657, column: 17, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2828, file: !439, line: 1656, column: 47)
!2837 = !DILocation(line: 1657, column: 22, scope: !2836)
!2838 = !DILocation(line: 1657, column: 27, scope: !2836)
!2839 = !DILocation(line: 1658, column: 28, scope: !2836)
!2840 = !DILocation(line: 1658, column: 33, scope: !2836)
!2841 = !DILocation(line: 1658, column: 17, scope: !2836)
!2842 = !DILocation(line: 1658, column: 22, scope: !2836)
!2843 = !DILocation(line: 1658, column: 26, scope: !2836)
!2844 = !DILocation(line: 1659, column: 17, scope: !2836)
!2845 = !DILocation(line: 1661, column: 17, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2803, file: !439, line: 1661, column: 17)
!2847 = !DILocation(line: 1661, column: 22, scope: !2846)
!2848 = !DILocation(line: 1661, column: 19, scope: !2846)
!2849 = !DILocation(line: 1661, column: 17, scope: !2803)
!2850 = !DILocation(line: 1662, column: 32, scope: !2846)
!2851 = !DILocation(line: 1662, column: 17, scope: !2846)
!2852 = !DILocation(line: 1664, column: 32, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !439, line: 1663, column: 18)
!2854 = !DILocation(line: 1665, column: 21, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2853, file: !439, line: 1665, column: 21)
!2856 = !DILocation(line: 1665, column: 23, scope: !2855)
!2857 = !DILocation(line: 1665, column: 21, scope: !2853)
!2858 = !DILocation(line: 1666, column: 31, scope: !2855)
!2859 = !DILocation(line: 1666, column: 21, scope: !2855)
!2860 = !DILocation(line: 1666, column: 19, scope: !2855)
!2861 = !DILocation(line: 1666, column: 17, scope: !2855)
!2862 = !DILocation(line: 1670, column: 20, scope: !730)
!2863 = !DILocation(line: 1670, column: 25, scope: !730)
!2864 = !DILocation(line: 1670, column: 10, scope: !730)
!2865 = !DILocation(line: 1670, column: 18, scope: !730)
!2866 = !DILocation(line: 1671, column: 18, scope: !730)
!2867 = !DILocation(line: 1671, column: 23, scope: !730)
!2868 = !DILocation(line: 1671, column: 10, scope: !730)
!2869 = !DILocation(line: 1671, column: 16, scope: !730)
!2870 = !DILocation(line: 1672, column: 9, scope: !730)
!2871 = !DILocation(line: 1673, column: 5, scope: !731)
!2872 = !DILocation(line: 1676, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1676, column: 9)
!2874 = !DILocation(line: 1676, column: 11, scope: !2873)
!2875 = !DILocation(line: 1676, column: 9, scope: !703)
!2876 = !DILocation(line: 1677, column: 23, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !439, line: 1676, column: 20)
!2878 = !DILocation(line: 1677, column: 13, scope: !2877)
!2879 = !DILocation(line: 1677, column: 11, scope: !2877)
!2880 = !DILocation(line: 1678, column: 13, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !439, line: 1678, column: 13)
!2882 = !DILocation(line: 1678, column: 15, scope: !2881)
!2883 = !DILocation(line: 1678, column: 13, scope: !2877)
!2884 = !DILocation(line: 1679, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !439, line: 1678, column: 24)
!2886 = !DILocation(line: 1679, column: 18, scope: !2885)
!2887 = !DILocation(line: 1679, column: 23, scope: !2885)
!2888 = !DILocation(line: 1680, column: 24, scope: !2885)
!2889 = !DILocation(line: 1680, column: 29, scope: !2885)
!2890 = !DILocation(line: 1680, column: 13, scope: !2885)
!2891 = !DILocation(line: 1680, column: 18, scope: !2885)
!2892 = !DILocation(line: 1680, column: 22, scope: !2885)
!2893 = !DILocation(line: 1681, column: 13, scope: !2885)
!2894 = !DILocation(line: 1683, column: 9, scope: !2877)
!2895 = !DILocation(line: 1683, column: 14, scope: !2877)
!2896 = !DILocation(line: 1683, column: 24, scope: !2877)
!2897 = !DILocation(line: 1684, column: 9, scope: !2877)
!2898 = !DILocation(line: 1689, column: 9, scope: !735)
!2899 = !DILocation(line: 1689, column: 13, scope: !735)
!2900 = !DILocation(line: 1689, column: 28, scope: !735)
!2901 = !DILocation(line: 1689, column: 18, scope: !735)
!2902 = !DILocation(line: 1690, column: 9, scope: !735)
!2903 = !DILocation(line: 1690, column: 13, scope: !735)
!2904 = !DILocation(line: 1690, column: 38, scope: !735)
!2905 = !DILocation(line: 1690, column: 41, scope: !735)
!2906 = !DILocation(line: 1690, column: 21, scope: !735)
!2907 = !DILocation(line: 1691, column: 13, scope: !739)
!2908 = !DILocation(line: 1691, column: 19, scope: !739)
!2909 = !DILocation(line: 1691, column: 13, scope: !735)
!2910 = !DILocation(line: 1692, column: 13, scope: !738)
!2911 = !DILocation(line: 1692, column: 17, scope: !738)
!2912 = !DILocation(line: 1692, column: 32, scope: !738)
!2913 = !DILocation(line: 1692, column: 22, scope: !738)
!2914 = !DILocation(line: 1693, column: 13, scope: !738)
!2915 = !DILocation(line: 1693, column: 17, scope: !738)
!2916 = !DILocation(line: 1693, column: 45, scope: !738)
!2917 = !DILocation(line: 1693, column: 48, scope: !738)
!2918 = !DILocation(line: 1693, column: 52, scope: !738)
!2919 = !DILocation(line: 1693, column: 26, scope: !738)
!2920 = !DILocation(line: 1694, column: 17, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !738, file: !439, line: 1694, column: 17)
!2922 = !DILocation(line: 1694, column: 24, scope: !2921)
!2923 = !DILocation(line: 1694, column: 17, scope: !738)
!2924 = !DILocation(line: 1695, column: 25, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !439, line: 1694, column: 31)
!2926 = !DILocation(line: 1695, column: 23, scope: !2925)
!2927 = !DILocation(line: 1696, column: 13, scope: !2925)
!2928 = !DILocation(line: 1697, column: 28, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !439, line: 1696, column: 20)
!2930 = !DILocation(line: 1697, column: 33, scope: !2929)
!2931 = !DILocation(line: 1697, column: 17, scope: !2929)
!2932 = !DILocation(line: 1699, column: 24, scope: !738)
!2933 = !DILocation(line: 1699, column: 29, scope: !738)
!2934 = !DILocation(line: 1699, column: 14, scope: !738)
!2935 = !DILocation(line: 1699, column: 22, scope: !738)
!2936 = !DILocation(line: 1700, column: 22, scope: !738)
!2937 = !DILocation(line: 1700, column: 27, scope: !738)
!2938 = !DILocation(line: 1700, column: 14, scope: !738)
!2939 = !DILocation(line: 1700, column: 20, scope: !738)
!2940 = !DILocation(line: 1701, column: 20, scope: !738)
!2941 = !DILocation(line: 1701, column: 13, scope: !738)
!2942 = !DILocation(line: 1702, column: 9, scope: !739)
!2943 = !DILocation(line: 1703, column: 20, scope: !735)
!2944 = !DILocation(line: 1703, column: 25, scope: !735)
!2945 = !DILocation(line: 1703, column: 9, scope: !735)
!2946 = !DILocation(line: 1704, column: 5, scope: !703)
!2947 = !DILocation(line: 1704, column: 5, scope: !2111)
!2948 = !DILocation(line: 1707, column: 13, scope: !703)
!2949 = !DILocation(line: 1711, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1707, column: 16)
!2951 = !DILocation(line: 1711, column: 14, scope: !2950)
!2952 = !DILocation(line: 1711, column: 19, scope: !2950)
!2953 = !DILocation(line: 1712, column: 9, scope: !2950)
!2954 = !DILocation(line: 1716, column: 9, scope: !2950)
!2955 = !DILocation(line: 1716, column: 14, scope: !2950)
!2956 = !DILocation(line: 1716, column: 19, scope: !2950)
!2957 = !DILocation(line: 1717, column: 9, scope: !2950)
!2958 = !DILocation(line: 1721, column: 16, scope: !703)
!2959 = !DILocation(line: 1721, column: 21, scope: !703)
!2960 = !DILocation(line: 1721, column: 6, scope: !703)
!2961 = !DILocation(line: 1721, column: 14, scope: !703)
!2962 = !DILocation(line: 1722, column: 14, scope: !703)
!2963 = !DILocation(line: 1722, column: 19, scope: !703)
!2964 = !DILocation(line: 1722, column: 6, scope: !703)
!2965 = !DILocation(line: 1722, column: 12, scope: !703)
!2966 = !DILocation(line: 1723, column: 28, scope: !703)
!2967 = !DILocation(line: 1723, column: 12, scope: !703)
!2968 = !DILocation(line: 1723, column: 5, scope: !703)
!2969 = !DILocation(line: 1724, column: 1, scope: !703)
!2970 = !DILocation(line: 1748, column: 38, scope: !507)
!2971 = !DILocation(line: 1748, column: 52, scope: !507)
!2972 = !DILocation(line: 1750, column: 5, scope: !507)
!2973 = !DILocation(line: 1750, column: 23, scope: !507)
!2974 = !DILocation(line: 1751, column: 5, scope: !507)
!2975 = !DILocation(line: 1751, column: 11, scope: !507)
!2976 = !DILocation(line: 1752, column: 5, scope: !507)
!2977 = !DILocation(line: 1752, column: 11, scope: !507)
!2978 = !DILocation(line: 1752, column: 34, scope: !507)
!2979 = !DILocation(line: 1752, column: 55, scope: !507)
!2980 = !DILocation(line: 1755, column: 18, scope: !507)
!2981 = !DILocation(line: 1755, column: 10, scope: !507)
!2982 = !DILocation(line: 1755, column: 8, scope: !507)
!2983 = !DILocation(line: 1759, column: 9, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1759, column: 9)
!2985 = !DILocation(line: 1759, column: 12, scope: !2984)
!2986 = !DILocation(line: 1759, column: 9, scope: !507)
!2987 = !DILocation(line: 1760, column: 9, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !439, line: 1759, column: 17)
!2989 = !DILocation(line: 1763, column: 17, scope: !507)
!2990 = !DILocation(line: 1763, column: 10, scope: !507)
!2991 = !DILocation(line: 1763, column: 8, scope: !507)
!2992 = !DILocation(line: 1764, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1764, column: 9)
!2994 = !DILocation(line: 1764, column: 12, scope: !2993)
!2995 = !DILocation(line: 1764, column: 9, scope: !507)
!2996 = !DILocation(line: 1765, column: 9, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !439, line: 1764, column: 27)
!2998 = !DILocation(line: 1767, column: 32, scope: !507)
!2999 = !DILocation(line: 1767, column: 11, scope: !507)
!3000 = !DILocation(line: 1767, column: 9, scope: !507)
!3001 = !DILocation(line: 1768, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1768, column: 9)
!3003 = !DILocation(line: 1768, column: 13, scope: !3002)
!3004 = !DILocation(line: 1768, column: 9, scope: !507)
!3005 = !DILocation(line: 1769, column: 16, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !439, line: 1768, column: 28)
!3007 = !DILocation(line: 1769, column: 9, scope: !3006)
!3008 = !DILocation(line: 1770, column: 9, scope: !3006)
!3009 = !DILocation(line: 1773, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1773, column: 9)
!3011 = !DILocation(line: 1773, column: 18, scope: !3010)
!3012 = !DILocation(line: 1773, column: 9, scope: !507)
!3013 = !DILocation(line: 1774, column: 25, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !439, line: 1773, column: 33)
!3015 = !DILocation(line: 1774, column: 37, scope: !3014)
!3016 = !DILocation(line: 1774, column: 46, scope: !3014)
!3017 = !DILocation(line: 1775, column: 25, scope: !3014)
!3018 = !DILocation(line: 1775, column: 9, scope: !3014)
!3019 = !DILocation(line: 1775, column: 14, scope: !3014)
!3020 = !DILocation(line: 1775, column: 23, scope: !3014)
!3021 = !DILocation(line: 1776, column: 5, scope: !3014)
!3022 = !DILocation(line: 1778, column: 25, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3010, file: !439, line: 1777, column: 10)
!3024 = !DILocation(line: 1778, column: 9, scope: !3023)
!3025 = !DILocation(line: 1778, column: 14, scope: !3023)
!3026 = !DILocation(line: 1778, column: 23, scope: !3023)
!3027 = !DILocation(line: 1779, column: 13, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !439, line: 1779, column: 13)
!3029 = !DILocation(line: 1779, column: 18, scope: !3028)
!3030 = !DILocation(line: 1779, column: 27, scope: !3028)
!3031 = !DILocation(line: 1779, column: 13, scope: !3023)
!3032 = !DILocation(line: 1780, column: 20, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3028, file: !439, line: 1779, column: 42)
!3034 = !DILocation(line: 1780, column: 13, scope: !3033)
!3035 = !DILocation(line: 1781, column: 30, scope: !3033)
!3036 = !DILocation(line: 1781, column: 13, scope: !3033)
!3037 = !DILocation(line: 1782, column: 20, scope: !3033)
!3038 = !DILocation(line: 1782, column: 13, scope: !3033)
!3039 = !DILocation(line: 1786, column: 5, scope: !507)
!3040 = !DILocation(line: 1786, column: 12, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3042, file: !439, discriminator: 4)
!3042 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 1)
!3043 = !DILocation(line: 1786, column: 17, scope: !507)
!3044 = !DILocation(line: 1786, column: 24, scope: !507)
!3045 = !DILocation(line: 1786, column: 28, scope: !507)
!3046 = !DILocation(line: 1786, column: 31, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 2)
!3048 = !DILocation(line: 1786, column: 36, scope: !507)
!3049 = !DILocation(line: 1786, column: 41, scope: !507)
!3050 = !DILocation(line: 1786, column: 5, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 3)
!3052 = !DILocation(line: 1787, column: 25, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1786, column: 48)
!3054 = !DILocation(line: 1787, column: 9, scope: !3053)
!3055 = !DILocation(line: 1789, column: 12, scope: !507)
!3056 = !DILocation(line: 1789, column: 5, scope: !507)
!3057 = !DILocation(line: 1790, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1790, column: 9)
!3059 = !DILocation(line: 1790, column: 14, scope: !3058)
!3060 = !DILocation(line: 1790, column: 9, scope: !507)
!3061 = !DILocation(line: 1791, column: 48, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !439, line: 1790, column: 24)
!3063 = !DILocation(line: 1791, column: 53, scope: !3062)
!3064 = !DILocation(line: 1791, column: 41, scope: !3062)
!3065 = !DILocation(line: 1791, column: 63, scope: !3062)
!3066 = !DILocation(line: 1791, column: 28, scope: !3062)
!3067 = !DILocation(line: 1791, column: 18, scope: !3062)
!3068 = !DILocation(line: 1792, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3062, file: !439, line: 1792, column: 13)
!3070 = !DILocation(line: 1792, column: 13, scope: !3062)
!3071 = !DILocation(line: 1793, column: 16, scope: !3069)
!3072 = !DILocation(line: 1793, column: 26, scope: !3069)
!3073 = !DILocation(line: 1793, column: 31, scope: !3069)
!3074 = !DILocation(line: 1793, column: 9, scope: !3069)
!3075 = !DILocation(line: 1794, column: 5, scope: !3062)
!3076 = !DILocation(line: 1795, column: 22, scope: !507)
!3077 = !DILocation(line: 1795, column: 5, scope: !507)
!3078 = !DILocation(line: 1796, column: 12, scope: !507)
!3079 = !DILocation(line: 1796, column: 5, scope: !507)
!3080 = !DILocation(line: 1797, column: 1, scope: !507)
!3081 = !DILocation(line: 1800, column: 30, scope: !518)
!3082 = !DILocation(line: 1802, column: 45, scope: !518)
!3083 = !DILocation(line: 1802, column: 12, scope: !518)
!3084 = !DILocation(line: 1802, column: 5, scope: !518)
!3085 = !DILocation(line: 339, column: 15, scope: !543)
!3086 = !DILocation(line: 340, column: 16, scope: !543)
!3087 = !DILocation(line: 341, column: 15, scope: !543)
!3088 = !DILocation(line: 342, column: 29, scope: !543)
!3089 = !DILocation(line: 344, column: 5, scope: !543)
!3090 = !DILocation(line: 344, column: 9, scope: !543)
!3091 = !DILocation(line: 344, column: 14, scope: !543)
!3092 = !DILocation(line: 344, column: 19, scope: !543)
!3093 = !DILocation(line: 345, column: 11, scope: !543)
!3094 = !DILocation(line: 345, column: 20, scope: !543)
!3095 = !DILocation(line: 345, column: 9, scope: !543)
!3096 = !DILocation(line: 346, column: 5, scope: !543)
!3097 = !DILocation(line: 346, column: 10, scope: !543)
!3098 = !DILocation(line: 346, column: 25, scope: !543)
!3099 = !DILocation(line: 347, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !543, file: !439, line: 347, column: 9)
!3101 = !DILocation(line: 347, column: 13, scope: !3100)
!3102 = !DILocation(line: 347, column: 9, scope: !543)
!3103 = !DILocation(line: 348, column: 9, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !439, line: 347, column: 22)
!3105 = !DILocation(line: 349, column: 16, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !439, line: 349, column: 16)
!3107 = !DILocation(line: 349, column: 20, scope: !3106)
!3108 = !DILocation(line: 349, column: 16, scope: !3100)
!3109 = !DILocation(line: 350, column: 15, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !439, line: 349, column: 29)
!3111 = !DILocation(line: 350, column: 24, scope: !3110)
!3112 = !DILocation(line: 350, column: 13, scope: !3110)
!3113 = !DILocation(line: 351, column: 13, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !439, line: 351, column: 13)
!3115 = !DILocation(line: 351, column: 17, scope: !3114)
!3116 = !DILocation(line: 351, column: 13, scope: !3110)
!3117 = !DILocation(line: 352, column: 13, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !439, line: 351, column: 26)
!3119 = !DILocation(line: 352, column: 24, scope: !3118)
!3120 = !DILocation(line: 352, column: 29, scope: !3118)
!3121 = !DILocation(line: 353, column: 13, scope: !3118)
!3122 = !DILocation(line: 353, column: 24, scope: !3118)
!3123 = !DILocation(line: 353, column: 29, scope: !3118)
!3124 = !DILocation(line: 354, column: 13, scope: !3118)
!3125 = !DILocation(line: 356, column: 15, scope: !3110)
!3126 = !DILocation(line: 356, column: 24, scope: !3110)
!3127 = !DILocation(line: 356, column: 13, scope: !3110)
!3128 = !DILocation(line: 357, column: 13, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3110, file: !439, line: 357, column: 13)
!3130 = !DILocation(line: 357, column: 17, scope: !3129)
!3131 = !DILocation(line: 357, column: 13, scope: !3110)
!3132 = !DILocation(line: 358, column: 13, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !439, line: 357, column: 26)
!3134 = !DILocation(line: 358, column: 24, scope: !3133)
!3135 = !DILocation(line: 358, column: 29, scope: !3133)
!3136 = !DILocation(line: 359, column: 13, scope: !3133)
!3137 = !DILocation(line: 359, column: 24, scope: !3133)
!3138 = !DILocation(line: 359, column: 29, scope: !3133)
!3139 = !DILocation(line: 360, column: 13, scope: !3133)
!3140 = !DILocation(line: 360, column: 24, scope: !3133)
!3141 = !DILocation(line: 360, column: 29, scope: !3133)
!3142 = !DILocation(line: 361, column: 13, scope: !3133)
!3143 = !DILocation(line: 387, column: 5, scope: !3110)
!3144 = !DILocation(line: 388, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3106, file: !439, line: 387, column: 12)
!3146 = !DILocation(line: 388, column: 20, scope: !3145)
!3147 = !DILocation(line: 388, column: 25, scope: !3145)
!3148 = !DILocation(line: 389, column: 9, scope: !3145)
!3149 = !DILocation(line: 391, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !543, file: !439, line: 391, column: 9)
!3151 = !DILocation(line: 391, column: 14, scope: !3150)
!3152 = !DILocation(line: 391, column: 23, scope: !3150)
!3153 = !DILocation(line: 391, column: 9, scope: !543)
!3154 = !DILocation(line: 392, column: 20, scope: !3150)
!3155 = !DILocation(line: 392, column: 25, scope: !3150)
!3156 = !DILocation(line: 392, column: 9, scope: !3150)
!3157 = !DILocation(line: 393, column: 44, scope: !543)
!3158 = !DILocation(line: 393, column: 21, scope: !543)
!3159 = !DILocation(line: 393, column: 5, scope: !543)
!3160 = !DILocation(line: 393, column: 10, scope: !543)
!3161 = !DILocation(line: 393, column: 19, scope: !543)
!3162 = !DILocation(line: 394, column: 10, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !543, file: !439, line: 394, column: 9)
!3164 = !DILocation(line: 394, column: 15, scope: !3163)
!3165 = !DILocation(line: 394, column: 9, scope: !543)
!3166 = !DILocation(line: 395, column: 9, scope: !3163)
!3167 = !DILocation(line: 397, column: 5, scope: !543)
!3168 = !DILocation(line: 398, column: 1, scope: !543)
!3169 = !DILocation(line: 656, column: 28, scope: !571)
!3170 = !DILocation(line: 657, column: 31, scope: !571)
!3171 = !DILocation(line: 657, column: 36, scope: !571)
!3172 = !DILocation(line: 657, column: 39, scope: !571)
!3173 = !DILocation(line: 657, column: 30, scope: !571)
!3174 = !DILocation(line: 657, column: 29, scope: !571)
!3175 = !DILocation(line: 657, column: 43, scope: !571)
!3176 = !DILocation(line: 657, column: 13, scope: !571)
!3177 = !DILocation(line: 657, column: 12, scope: !571)
!3178 = !DILocation(line: 657, column: 5, scope: !571)
!3179 = !DILocation(line: 663, column: 16, scope: !574)
!3180 = !DILocation(line: 663, column: 37, scope: !574)
!3181 = !DILocation(line: 664, column: 5, scope: !574)
!3182 = !DILocation(line: 664, column: 10, scope: !574)
!3183 = !DILocation(line: 664, column: 13, scope: !574)
!3184 = !DILocation(line: 666, column: 1, scope: !574)
!3185 = !DILocation(line: 672, column: 32, scope: !578)
!3186 = !DILocation(line: 672, column: 49, scope: !578)
!3187 = !DILocation(line: 673, column: 16, scope: !578)
!3188 = !DILocation(line: 673, column: 5, scope: !578)
!3189 = !DILocation(line: 673, column: 10, scope: !578)
!3190 = !DILocation(line: 673, column: 14, scope: !578)
!3191 = !DILocation(line: 674, column: 5, scope: !578)
!3192 = !DILocation(line: 185, column: 29, scope: !582)
!3193 = !DILocation(line: 187, column: 5, scope: !582)
!3194 = !DILocation(line: 187, column: 10, scope: !582)
!3195 = !DILocation(line: 187, column: 25, scope: !582)
!3196 = !DILocation(line: 188, column: 9, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !582, file: !439, line: 188, column: 9)
!3198 = !DILocation(line: 188, column: 14, scope: !3197)
!3199 = !DILocation(line: 188, column: 17, scope: !3197)
!3200 = !DILocation(line: 188, column: 31, scope: !3197)
!3201 = !DILocation(line: 188, column: 34, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3197, file: !439, discriminator: 1)
!3203 = !DILocation(line: 188, column: 39, scope: !3197)
!3204 = !DILocation(line: 188, column: 43, scope: !3197)
!3205 = !DILocation(line: 188, column: 9, scope: !582)
!3206 = !DILocation(line: 189, column: 20, scope: !3197)
!3207 = !DILocation(line: 189, column: 25, scope: !3197)
!3208 = !DILocation(line: 189, column: 9, scope: !3197)
!3209 = !DILocation(line: 190, column: 5, scope: !582)
!3210 = !DILocation(line: 190, column: 10, scope: !582)
!3211 = !DILocation(line: 190, column: 14, scope: !582)
!3212 = !DILocation(line: 191, column: 5, scope: !582)
!3213 = !DILocation(line: 681, column: 33, scope: !587)
!3214 = !DILocation(line: 681, column: 50, scope: !587)
!3215 = !DILocation(line: 682, column: 5, scope: !587)
!3216 = !DILocation(line: 682, column: 15, scope: !587)
!3217 = !DILocation(line: 683, column: 5, scope: !587)
!3218 = !DILocation(line: 683, column: 15, scope: !587)
!3219 = !DILocation(line: 683, column: 38, scope: !587)
!3220 = !DILocation(line: 683, column: 50, scope: !587)
!3221 = !DILocation(line: 683, column: 43, scope: !587)
!3222 = !DILocation(line: 683, column: 56, scope: !587)
!3223 = !DILocation(line: 683, column: 21, scope: !587)
!3224 = !DILocation(line: 684, column: 9, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !587, file: !439, line: 684, column: 9)
!3226 = !DILocation(line: 684, column: 13, scope: !3225)
!3227 = !DILocation(line: 684, column: 9, scope: !587)
!3228 = !DILocation(line: 685, column: 9, scope: !3225)
!3229 = !DILocation(line: 686, column: 35, scope: !587)
!3230 = !DILocation(line: 686, column: 12, scope: !587)
!3231 = !DILocation(line: 686, column: 10, scope: !587)
!3232 = !DILocation(line: 687, column: 5, scope: !587)
!3233 = !DILocation(line: 687, column: 10, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 1)
!3235 = !DILocation(line: 687, column: 20, scope: !596)
!3236 = !DILocation(line: 687, column: 50, scope: !596)
!3237 = !DILocation(line: 687, column: 64, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !596, file: !439, line: 687, column: 61)
!3239 = !DILocation(line: 687, column: 81, scope: !3238)
!3240 = !DILocation(line: 687, column: 61, scope: !3238)
!3241 = !DILocation(line: 687, column: 91, scope: !3238)
!3242 = !DILocation(line: 687, column: 61, scope: !596)
!3243 = !DILocation(line: 687, column: 61, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 2)
!3245 = !DILocation(line: 687, column: 122, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3238, file: !439, discriminator: 3)
!3247 = !DILocation(line: 687, column: 140, scope: !3238)
!3248 = !DILocation(line: 687, column: 150, scope: !3238)
!3249 = !DILocation(line: 687, column: 175, scope: !3238)
!3250 = !DILocation(line: 687, column: 106, scope: !3238)
!3251 = !DILocation(line: 687, column: 194, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !587, file: !439, discriminator: 4)
!3253 = !DILocation(line: 687, column: 194, scope: !596)
!3254 = !DILocation(line: 687, column: 194, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 5)
!3256 = !DILocation(line: 688, column: 12, scope: !587)
!3257 = !DILocation(line: 688, column: 5, scope: !587)
!3258 = !DILocation(line: 689, column: 1, scope: !587)
!3259 = !DILocation(line: 280, column: 31, scope: !597)
!3260 = !DILocation(line: 280, column: 48, scope: !597)
!3261 = !DILocation(line: 280, column: 72, scope: !597)
!3262 = !DILocation(line: 281, column: 23, scope: !597)
!3263 = !DILocation(line: 283, column: 5, scope: !597)
!3264 = !DILocation(line: 283, column: 11, scope: !597)
!3265 = !DILocation(line: 284, column: 5, scope: !597)
!3266 = !DILocation(line: 284, column: 9, scope: !597)
!3267 = !DILocation(line: 286, column: 9, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !597, file: !439, line: 286, column: 9)
!3269 = !DILocation(line: 286, column: 14, scope: !3268)
!3270 = !DILocation(line: 286, column: 9, scope: !597)
!3271 = !DILocation(line: 288, column: 9, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !439, line: 286, column: 25)
!3273 = !DILocation(line: 288, column: 14, scope: !3272)
!3274 = !DILocation(line: 288, column: 31, scope: !3272)
!3275 = !DILocation(line: 289, column: 9, scope: !3272)
!3276 = !DILocation(line: 291, column: 26, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !597, file: !439, line: 291, column: 9)
!3278 = !DILocation(line: 291, column: 37, scope: !3277)
!3279 = !DILocation(line: 291, column: 43, scope: !3277)
!3280 = !DILocation(line: 291, column: 10, scope: !3277)
!3281 = !DILocation(line: 291, column: 9, scope: !597)
!3282 = !DILocation(line: 292, column: 9, scope: !3277)
!3283 = !DILocation(line: 293, column: 10, scope: !609)
!3284 = !DILocation(line: 293, column: 9, scope: !597)
!3285 = !DILocation(line: 294, column: 9, scope: !608)
!3286 = !DILocation(line: 294, column: 20, scope: !608)
!3287 = !DILocation(line: 295, column: 16, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !608, file: !439, line: 295, column: 9)
!3289 = !DILocation(line: 295, column: 14, scope: !3288)
!3290 = !DILocation(line: 295, column: 21, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3292, file: !439, discriminator: 2)
!3292 = !DILexicalBlockFile(scope: !3293, file: !439, discriminator: 1)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !439, line: 295, column: 9)
!3294 = !DILocation(line: 295, column: 25, scope: !3293)
!3295 = !DILocation(line: 295, column: 23, scope: !3293)
!3296 = !DILocation(line: 295, column: 9, scope: !3288)
!3297 = !DILocation(line: 296, column: 22, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !439, line: 296, column: 17)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !439, line: 295, column: 36)
!3300 = !DILocation(line: 296, column: 17, scope: !3298)
!3301 = !DILocation(line: 296, column: 25, scope: !3298)
!3302 = !DILocation(line: 296, column: 32, scope: !3298)
!3303 = !DILocation(line: 296, column: 40, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3298, file: !439, discriminator: 1)
!3305 = !DILocation(line: 296, column: 35, scope: !3298)
!3306 = !DILocation(line: 296, column: 43, scope: !3298)
!3307 = !DILocation(line: 296, column: 51, scope: !3298)
!3308 = !DILocation(line: 296, column: 59, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3298, file: !439, discriminator: 2)
!3310 = !DILocation(line: 296, column: 54, scope: !3298)
!3311 = !DILocation(line: 296, column: 62, scope: !3298)
!3312 = !DILocation(line: 296, column: 17, scope: !3299)
!3313 = !DILocation(line: 297, column: 17, scope: !3298)
!3314 = !DILocation(line: 298, column: 22, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3299, file: !439, line: 298, column: 17)
!3316 = !DILocation(line: 298, column: 17, scope: !3315)
!3317 = !DILocation(line: 298, column: 25, scope: !3315)
!3318 = !DILocation(line: 298, column: 32, scope: !3315)
!3319 = !DILocation(line: 298, column: 40, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3315, file: !439, discriminator: 1)
!3321 = !DILocation(line: 298, column: 35, scope: !3315)
!3322 = !DILocation(line: 298, column: 43, scope: !3315)
!3323 = !DILocation(line: 298, column: 51, scope: !3315)
!3324 = !DILocation(line: 298, column: 59, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3315, file: !439, discriminator: 2)
!3326 = !DILocation(line: 298, column: 54, scope: !3315)
!3327 = !DILocation(line: 298, column: 62, scope: !3315)
!3328 = !DILocation(line: 298, column: 17, scope: !3299)
!3329 = !DILocation(line: 301, column: 17, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3315, file: !439, line: 298, column: 73)
!3331 = !DILocation(line: 301, column: 22, scope: !3330)
!3332 = !DILocation(line: 301, column: 39, scope: !3330)
!3333 = !DILocation(line: 302, column: 17, scope: !3330)
!3334 = !DILocation(line: 304, column: 9, scope: !3299)
!3335 = !DILocation(line: 295, column: 32, scope: !3293)
!3336 = !DILocation(line: 295, column: 9, scope: !3293)
!3337 = !DILocation(line: 305, column: 9, scope: !608)
!3338 = !DILocation(line: 306, column: 5, scope: !609)
!3339 = !DILocation(line: 307, column: 5, scope: !597)
!3340 = !DILocation(line: 307, column: 10, scope: !597)
!3341 = !DILocation(line: 307, column: 27, scope: !597)
!3342 = !DILocation(line: 308, column: 9, scope: !614)
!3343 = !DILocation(line: 308, column: 14, scope: !614)
!3344 = !DILocation(line: 308, column: 23, scope: !614)
!3345 = !DILocation(line: 308, column: 9, scope: !597)
!3346 = !DILocation(line: 310, column: 30, scope: !611)
!3347 = !DILocation(line: 310, column: 37, scope: !611)
!3348 = !DILocation(line: 310, column: 47, scope: !611)
!3349 = !DILocation(line: 310, column: 1339, scope: !611)
!3350 = !DILocation(line: 310, column: 1352, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 1)
!3352 = !DILocation(line: 310, column: 1372, scope: !611)
!3353 = !DILocation(line: 310, column: 1381, scope: !611)
!3354 = !DILocation(line: 310, column: 1226, scope: !611)
!3355 = !DILocation(line: 310, column: 1540, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !617, file: !439, discriminator: 3)
!3357 = !DILocation(line: 310, column: 1561, scope: !617)
!3358 = !DILocation(line: 310, column: 1608, scope: !617)
!3359 = !DILocation(line: 310, column: 1613, scope: !617)
!3360 = !DILocation(line: 310, column: 1626, scope: !617)
!3361 = !DILocation(line: 310, column: 1637, scope: !617)
!3362 = !DILocation(line: 310, column: 1647, scope: !617)
!3363 = !DILocation(line: 310, column: 1645, scope: !617)
!3364 = !DILocation(line: 310, column: 1706, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !617, file: !439, line: 310, column: 1706)
!3366 = !DILocation(line: 310, column: 1715, scope: !3365)
!3367 = !DILocation(line: 310, column: 1719, scope: !3365)
!3368 = !DILocation(line: 310, column: 1722, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3365, file: !439, discriminator: 5)
!3370 = !DILocation(line: 310, column: 1731, scope: !3365)
!3371 = !DILocation(line: 310, column: 1706, scope: !617)
!3372 = !DILocation(line: 310, column: 1751, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3374, file: !439, discriminator: 7)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !439, line: 310, column: 1737)
!3375 = !DILocation(line: 310, column: 1761, scope: !3374)
!3376 = !DILocation(line: 310, column: 1759, scope: !3374)
!3377 = !DILocation(line: 310, column: 1748, scope: !3374)
!3378 = !DILocation(line: 310, column: 1821, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3374, file: !439, line: 310, column: 1821)
!3380 = !DILocation(line: 310, column: 1830, scope: !3379)
!3381 = !DILocation(line: 310, column: 1834, scope: !3379)
!3382 = !DILocation(line: 310, column: 1837, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3379, file: !439, discriminator: 9)
!3384 = !DILocation(line: 310, column: 1846, scope: !3379)
!3385 = !DILocation(line: 310, column: 1821, scope: !3374)
!3386 = !DILocation(line: 310, column: 1866, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3388, file: !439, discriminator: 11)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !439, line: 310, column: 1852)
!3389 = !DILocation(line: 310, column: 1876, scope: !3388)
!3390 = !DILocation(line: 310, column: 1874, scope: !3388)
!3391 = !DILocation(line: 310, column: 1863, scope: !3388)
!3392 = !DILocation(line: 310, column: 1936, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3388, file: !439, line: 310, column: 1936)
!3394 = !DILocation(line: 310, column: 1945, scope: !3393)
!3395 = !DILocation(line: 310, column: 1949, scope: !3393)
!3396 = !DILocation(line: 310, column: 1952, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3393, file: !439, discriminator: 13)
!3398 = !DILocation(line: 310, column: 1961, scope: !3393)
!3399 = !DILocation(line: 310, column: 1936, scope: !3388)
!3400 = !DILocation(line: 310, column: 1979, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3393, file: !439, discriminator: 15)
!3402 = !DILocation(line: 310, column: 1989, scope: !3393)
!3403 = !DILocation(line: 310, column: 1987, scope: !3393)
!3404 = !DILocation(line: 310, column: 1976, scope: !3393)
!3405 = !DILocation(line: 310, column: 1967, scope: !3393)
!3406 = !DILocation(line: 310, column: 2045, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3408, file: !439, discriminator: 17)
!3408 = !DILexicalBlockFile(scope: !3409, file: !439, discriminator: 16)
!3409 = !DILexicalBlockFile(scope: !3388, file: !439, discriminator: 14)
!3410 = !DILocation(line: 310, column: 2047, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !439, discriminator: 18)
!3412 = !DILexicalBlockFile(scope: !3413, file: !439, discriminator: 12)
!3413 = !DILexicalBlockFile(scope: !3374, file: !439, discriminator: 10)
!3414 = !DILocation(line: 310, column: 2049, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3416, file: !439, discriminator: 19)
!3416 = !DILexicalBlockFile(scope: !3417, file: !439, discriminator: 8)
!3417 = !DILexicalBlockFile(scope: !617, file: !439, discriminator: 6)
!3418 = !DILocation(line: 310, column: 1734, scope: !3365)
!3419 = !DILocation(line: 310, column: 2059, scope: !611)
!3420 = !DILocation(line: 310, column: 2059, scope: !617)
!3421 = !DILocation(line: 310, column: 2084, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3423, file: !439, discriminator: 4)
!3423 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 2)
!3424 = !DILocation(line: 310, column: 2066, scope: !611)
!3425 = !DILocation(line: 310, column: 30, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3427, file: !439, discriminator: 21)
!3427 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 20)
!3428 = !DILocation(line: 310, column: 2101, scope: !612)
!3429 = !DILocation(line: 310, column: 2101, scope: !611)
!3430 = !DILocation(line: 310, column: 2104, scope: !612)
!3431 = !DILocation(line: 310, column: 13, scope: !613)
!3432 = !DILocation(line: 311, column: 29, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !612, file: !439, line: 310, column: 2110)
!3434 = !DILocation(line: 311, column: 13, scope: !3433)
!3435 = !DILocation(line: 311, column: 18, scope: !3433)
!3436 = !DILocation(line: 311, column: 27, scope: !3433)
!3437 = !DILocation(line: 312, column: 9, scope: !3433)
!3438 = !DILocation(line: 313, column: 17, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !612, file: !439, line: 312, column: 16)
!3440 = !DILocation(line: 313, column: 30, scope: !3439)
!3441 = !DILocation(line: 313, column: 35, scope: !3439)
!3442 = !DILocation(line: 313, column: 15, scope: !3439)
!3443 = !DILocation(line: 314, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !439, line: 314, column: 17)
!3445 = !DILocation(line: 314, column: 17, scope: !3439)
!3446 = !DILocation(line: 315, column: 33, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !439, line: 314, column: 20)
!3448 = !DILocation(line: 315, column: 17, scope: !3447)
!3449 = !DILocation(line: 315, column: 22, scope: !3447)
!3450 = !DILocation(line: 315, column: 31, scope: !3447)
!3451 = !DILocation(line: 316, column: 17, scope: !3447)
!3452 = !DILocation(line: 316, column: 22, scope: !3447)
!3453 = !DILocation(line: 316, column: 37, scope: !3447)
!3454 = !DILocation(line: 317, column: 13, scope: !3447)
!3455 = !DILocation(line: 319, column: 30, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3444, file: !439, line: 318, column: 18)
!3457 = !DILocation(line: 320, column: 54, scope: !3456)
!3458 = !DILocation(line: 319, column: 17, scope: !3456)
!3459 = !DILocation(line: 321, column: 28, scope: !3456)
!3460 = !DILocation(line: 321, column: 17, scope: !3456)
!3461 = !DILocation(line: 324, column: 5, scope: !613)
!3462 = !DILocation(line: 325, column: 31, scope: !620)
!3463 = !DILocation(line: 325, column: 38, scope: !620)
!3464 = !DILocation(line: 325, column: 48, scope: !620)
!3465 = !DILocation(line: 325, column: 2199, scope: !620)
!3466 = !DILocation(line: 325, column: 2204, scope: !620)
!3467 = !DILocation(line: 325, column: 2214, scope: !620)
!3468 = !DILocation(line: 325, column: 2181, scope: !620)
!3469 = !DILocation(line: 325, column: 2222, scope: !621)
!3470 = !DILocation(line: 325, column: 2222, scope: !620)
!3471 = !DILocation(line: 325, column: 2225, scope: !621)
!3472 = !DILocation(line: 325, column: 11, scope: !621)
!3473 = !DILocation(line: 326, column: 14, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !621, file: !439, line: 326, column: 13)
!3475 = !DILocation(line: 326, column: 13, scope: !621)
!3476 = !DILocation(line: 327, column: 26, scope: !3474)
!3477 = !DILocation(line: 328, column: 59, scope: !3474)
!3478 = !DILocation(line: 327, column: 13, scope: !3474)
!3479 = !DILocation(line: 329, column: 20, scope: !621)
!3480 = !DILocation(line: 329, column: 9, scope: !621)
!3481 = !DILocation(line: 331, column: 12, scope: !597)
!3482 = !DILocation(line: 331, column: 5, scope: !597)
!3483 = !DILocation(line: 332, column: 1, scope: !597)
!3484 = !DILocation(line: 150, column: 24, scope: !563)
!3485 = !DILocation(line: 150, column: 38, scope: !563)
!3486 = !DILocation(line: 150, column: 61, scope: !563)
!3487 = !DILocation(line: 152, column: 5, scope: !563)
!3488 = !DILocation(line: 152, column: 11, scope: !563)
!3489 = !DILocation(line: 152, column: 41, scope: !563)
!3490 = !DILocation(line: 152, column: 45, scope: !563)
!3491 = !DILocation(line: 152, column: 28, scope: !563)
!3492 = !DILocation(line: 153, column: 10, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !563, file: !439, line: 153, column: 9)
!3494 = !DILocation(line: 153, column: 9, scope: !563)
!3495 = !DILocation(line: 154, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !439, line: 153, column: 18)
!3497 = !DILocation(line: 154, column: 14, scope: !3496)
!3498 = !DILocation(line: 154, column: 19, scope: !3496)
!3499 = !DILocation(line: 155, column: 9, scope: !3496)
!3500 = !DILocation(line: 157, column: 12, scope: !563)
!3501 = !DILocation(line: 157, column: 20, scope: !563)
!3502 = !DILocation(line: 157, column: 23, scope: !563)
!3503 = !DILocation(line: 157, column: 5, scope: !563)
!3504 = !DILocation(line: 158, column: 12, scope: !563)
!3505 = !DILocation(line: 158, column: 5, scope: !563)
!3506 = !DILocation(line: 158, column: 17, scope: !563)
!3507 = !DILocation(line: 159, column: 12, scope: !563)
!3508 = !DILocation(line: 159, column: 5, scope: !563)
!3509 = !DILocation(line: 160, column: 1, scope: !563)
!3510 = !DILocation(line: 227, column: 29, scope: !623)
!3511 = !DILocation(line: 227, column: 39, scope: !623)
!3512 = !DILocation(line: 227, column: 56, scope: !623)
!3513 = !DILocation(line: 227, column: 80, scope: !623)
!3514 = !DILocation(line: 229, column: 5, scope: !623)
!3515 = !DILocation(line: 229, column: 16, scope: !623)
!3516 = !DILocation(line: 230, column: 6, scope: !623)
!3517 = !DILocation(line: 230, column: 11, scope: !623)
!3518 = !DILocation(line: 233, column: 12, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !623, file: !439, line: 233, column: 5)
!3520 = !DILocation(line: 233, column: 10, scope: !3519)
!3521 = !DILocation(line: 233, column: 17, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3523, file: !439, discriminator: 2)
!3523 = !DILexicalBlockFile(scope: !3524, file: !439, discriminator: 1)
!3524 = distinct !DILexicalBlock(scope: !3519, file: !439, line: 233, column: 5)
!3525 = !DILocation(line: 233, column: 21, scope: !3524)
!3526 = !DILocation(line: 233, column: 26, scope: !3524)
!3527 = !DILocation(line: 233, column: 19, scope: !3524)
!3528 = !DILocation(line: 233, column: 5, scope: !3519)
!3529 = !DILocation(line: 234, column: 15, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !439, line: 234, column: 13)
!3531 = distinct !DILexicalBlock(scope: !3524, file: !439, line: 233, column: 36)
!3532 = !DILocation(line: 234, column: 13, scope: !3530)
!3533 = !DILocation(line: 234, column: 18, scope: !3530)
!3534 = !DILocation(line: 234, column: 13, scope: !3531)
!3535 = !DILocation(line: 235, column: 13, scope: !3530)
!3536 = !DILocation(line: 236, column: 15, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3531, file: !439, line: 236, column: 13)
!3538 = !DILocation(line: 236, column: 13, scope: !3537)
!3539 = !DILocation(line: 236, column: 18, scope: !3537)
!3540 = !DILocation(line: 236, column: 25, scope: !3537)
!3541 = !DILocation(line: 236, column: 30, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3537, file: !439, discriminator: 1)
!3543 = !DILocation(line: 236, column: 28, scope: !3537)
!3544 = !DILocation(line: 236, column: 33, scope: !3537)
!3545 = !DILocation(line: 236, column: 41, scope: !3537)
!3546 = !DILocation(line: 236, column: 46, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3537, file: !439, discriminator: 2)
!3548 = !DILocation(line: 236, column: 44, scope: !3537)
!3549 = !DILocation(line: 236, column: 49, scope: !3537)
!3550 = !DILocation(line: 236, column: 13, scope: !3531)
!3551 = !DILocation(line: 237, column: 13, scope: !3537)
!3552 = !DILocation(line: 238, column: 5, scope: !3531)
!3553 = !DILocation(line: 233, column: 32, scope: !3524)
!3554 = !DILocation(line: 233, column: 5, scope: !3524)
!3555 = !DILocation(line: 239, column: 5, scope: !623)
!3556 = !DILocation(line: 239, column: 12, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3558, file: !439, discriminator: 2)
!3558 = !DILexicalBlockFile(scope: !634, file: !439, discriminator: 1)
!3559 = !DILocation(line: 239, column: 16, scope: !634)
!3560 = !DILocation(line: 239, column: 21, scope: !634)
!3561 = !DILocation(line: 239, column: 14, scope: !634)
!3562 = !DILocation(line: 239, column: 5, scope: !635)
!3563 = !DILocation(line: 240, column: 9, scope: !633)
!3564 = !DILocation(line: 240, column: 21, scope: !633)
!3565 = !DILocation(line: 240, column: 25, scope: !633)
!3566 = !DILocation(line: 240, column: 29, scope: !633)
!3567 = !DILocation(line: 240, column: 27, scope: !633)
!3568 = !DILocation(line: 241, column: 2296, scope: !638)
!3569 = !DILocation(line: 241, column: 2287, scope: !638)
!3570 = !DILocation(line: 241, column: 2314, scope: !638)
!3571 = !DILocation(line: 241, column: 13, scope: !633)
!3572 = !DILocation(line: 242, column: 13, scope: !637)
!3573 = !DILocation(line: 242, column: 25, scope: !637)
!3574 = !DILocation(line: 243, column: 15, scope: !637)
!3575 = !DILocation(line: 244, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !637, file: !439, line: 244, column: 17)
!3577 = !DILocation(line: 244, column: 22, scope: !3576)
!3578 = !DILocation(line: 244, column: 29, scope: !3576)
!3579 = !DILocation(line: 244, column: 32, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3576, file: !439, discriminator: 1)
!3581 = !DILocation(line: 244, column: 37, scope: !3576)
!3582 = !DILocation(line: 244, column: 17, scope: !637)
!3583 = !DILocation(line: 245, column: 17, scope: !3576)
!3584 = !DILocation(line: 246, column: 13, scope: !637)
!3585 = !DILocation(line: 247, column: 18, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !637, file: !439, line: 246, column: 16)
!3587 = !DILocation(line: 248, column: 13, scope: !3586)
!3588 = !DILocation(line: 248, column: 22, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 1)
!3590 = !DILocation(line: 248, column: 27, scope: !637)
!3591 = !DILocation(line: 248, column: 37, scope: !637)
!3592 = !DILocation(line: 248, column: 40, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 3)
!3594 = !DILocation(line: 248, column: 45, scope: !637)
!3595 = !DILocation(line: 248, column: 13, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3597, file: !439, discriminator: 4)
!3597 = !DILexicalBlockFile(scope: !3586, file: !439, discriminator: 2)
!3598 = !DILocation(line: 250, column: 21, scope: !637)
!3599 = !DILocation(line: 250, column: 19, scope: !637)
!3600 = !DILocation(line: 251, column: 13, scope: !637)
!3601 = !DILocation(line: 251, column: 55, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3589, file: !439, discriminator: 3)
!3603 = !DILocation(line: 251, column: 54, scope: !637)
!3604 = !DILocation(line: 251, column: 61, scope: !637)
!3605 = !DILocation(line: 251, column: 38, scope: !637)
!3606 = !DILocation(line: 251, column: 21, scope: !637)
!3607 = !DILocation(line: 251, column: 71, scope: !637)
!3608 = !DILocation(line: 251, column: 93, scope: !637)
!3609 = !DILocation(line: 252, column: 20, scope: !637)
!3610 = !DILocation(line: 252, column: 25, scope: !637)
!3611 = !DILocation(line: 252, column: 32, scope: !637)
!3612 = !DILocation(line: 252, column: 35, scope: !3589)
!3613 = !DILocation(line: 252, column: 40, scope: !637)
!3614 = !DILocation(line: 252, column: 47, scope: !637)
!3615 = !DILocation(line: 252, column: 50, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 2)
!3617 = !DILocation(line: 252, column: 55, scope: !637)
!3618 = !DILocation(line: 251, column: 13, scope: !3616)
!3619 = !DILocation(line: 253, column: 18, scope: !637)
!3620 = !DILocation(line: 255, column: 17, scope: !641)
!3621 = !DILocation(line: 255, column: 25, scope: !641)
!3622 = !DILocation(line: 255, column: 23, scope: !641)
!3623 = !DILocation(line: 255, column: 17, scope: !637)
!3624 = !DILocation(line: 256, column: 17, scope: !640)
!3625 = !DILocation(line: 256, column: 23, scope: !640)
!3626 = !DILocation(line: 256, column: 38, scope: !640)
!3627 = !DILocation(line: 256, column: 45, scope: !640)
!3628 = !DILocation(line: 256, column: 49, scope: !640)
!3629 = !DILocation(line: 256, column: 47, scope: !640)
!3630 = !DILocation(line: 256, column: 56, scope: !640)
!3631 = !DILocation(line: 256, column: 27, scope: !640)
!3632 = !DILocation(line: 257, column: 17, scope: !640)
!3633 = !DILocation(line: 257, column: 23, scope: !640)
!3634 = !DILocation(line: 258, column: 22, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !640, file: !439, line: 258, column: 21)
!3636 = !DILocation(line: 258, column: 21, scope: !640)
!3637 = !DILocation(line: 259, column: 21, scope: !3635)
!3638 = !DILocation(line: 260, column: 37, scope: !640)
!3639 = !DILocation(line: 260, column: 21, scope: !640)
!3640 = !DILocation(line: 260, column: 19, scope: !640)
!3641 = !DILocation(line: 261, column: 21, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !640, file: !439, line: 261, column: 21)
!3643 = !DILocation(line: 261, column: 26, scope: !3642)
!3644 = !DILocation(line: 261, column: 23, scope: !3642)
!3645 = !DILocation(line: 261, column: 21, scope: !640)
!3646 = !DILocation(line: 262, column: 32, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !439, line: 261, column: 29)
!3648 = !DILocation(line: 262, column: 21, scope: !3647)
!3649 = !DILocation(line: 263, column: 36, scope: !3647)
!3650 = !DILocation(line: 263, column: 46, scope: !3647)
!3651 = !DILocation(line: 263, column: 39, scope: !3647)
!3652 = !DILocation(line: 263, column: 50, scope: !3647)
!3653 = !DILocation(line: 263, column: 25, scope: !3647)
!3654 = !DILocation(line: 263, column: 23, scope: !3647)
!3655 = !DILocation(line: 264, column: 26, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3647, file: !439, line: 264, column: 25)
!3657 = !DILocation(line: 264, column: 25, scope: !3647)
!3658 = !DILocation(line: 265, column: 25, scope: !3656)
!3659 = !DILocation(line: 266, column: 17, scope: !3647)
!3660 = !DILocation(line: 267, column: 25, scope: !640)
!3661 = !DILocation(line: 267, column: 18, scope: !640)
!3662 = !DILocation(line: 267, column: 23, scope: !640)
!3663 = !DILocation(line: 268, column: 13, scope: !641)
!3664 = !DILocation(line: 268, column: 13, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !641, file: !439, discriminator: 1)
!3666 = !DILocation(line: 268, column: 13, scope: !640)
!3667 = !DILocation(line: 269, column: 9, scope: !638)
!3668 = !DILocation(line: 269, column: 9, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !638, file: !439, discriminator: 1)
!3670 = !DILocation(line: 269, column: 9, scope: !637)
!3671 = !DILocation(line: 270, column: 5, scope: !634)
!3672 = !DILocation(line: 270, column: 5, scope: !3558)
!3673 = !DILocation(line: 270, column: 5, scope: !633)
!3674 = !DILocation(line: 239, column: 27, scope: !634)
!3675 = !DILocation(line: 239, column: 5, scope: !634)
!3676 = !DILocation(line: 271, column: 5, scope: !623)
!3677 = !DILocation(line: 272, column: 1, scope: !623)
!3678 = !DILocation(line: 196, column: 23, scope: !643)
!3679 = !DILocation(line: 198, column: 5, scope: !643)
!3680 = !DILocation(line: 198, column: 10, scope: !643)
!3681 = !DILocation(line: 199, column: 5, scope: !643)
!3682 = !DILocation(line: 199, column: 9, scope: !643)
!3683 = !DILocation(line: 200, column: 12, scope: !656)
!3684 = !DILocation(line: 200, column: 10, scope: !656)
!3685 = !DILocation(line: 200, column: 17, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !439, discriminator: 2)
!3687 = !DILexicalBlockFile(scope: !655, file: !439, discriminator: 1)
!3688 = !DILocation(line: 200, column: 19, scope: !655)
!3689 = !DILocation(line: 200, column: 5, scope: !656)
!3690 = !DILocation(line: 201, column: 9, scope: !654)
!3691 = !DILocation(line: 201, column: 13, scope: !654)
!3692 = !DILocation(line: 201, column: 19, scope: !654)
!3693 = !DILocation(line: 201, column: 17, scope: !654)
!3694 = !DILocation(line: 202, column: 13, scope: !660)
!3695 = !DILocation(line: 202, column: 15, scope: !660)
!3696 = !DILocation(line: 202, column: 13, scope: !654)
!3697 = !DILocation(line: 203, column: 13, scope: !660)
!3698 = !DILocation(line: 204, column: 18, scope: !659)
!3699 = !DILocation(line: 204, column: 20, scope: !659)
!3700 = !DILocation(line: 204, column: 18, scope: !660)
!3701 = !DILocation(line: 205, column: 17, scope: !659)
!3702 = !DILocation(line: 205, column: 13, scope: !659)
!3703 = !DILocation(line: 205, column: 20, scope: !659)
!3704 = !DILocation(line: 207, column: 40, scope: !658)
!3705 = !DILocation(line: 207, column: 44, scope: !658)
!3706 = !DILocation(line: 207, column: 216, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !439, line: 207, column: 77)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !439, line: 207, column: 71)
!3709 = distinct !DILexicalBlock(scope: !658, file: !439, line: 207, column: 55)
!3710 = !DILocation(line: 207, column: 207, scope: !3707)
!3711 = !DILocation(line: 207, column: 205, scope: !3707)
!3712 = !DILocation(line: 207, column: 273, scope: !658)
!3713 = !DILocation(line: 207, column: 68, scope: !3709)
!3714 = !DILocation(line: 207, column: 280, scope: !659)
!3715 = !DILocation(line: 207, column: 280, scope: !658)
!3716 = !DILocation(line: 207, column: 22, scope: !659)
!3717 = !DILocation(line: 207, column: 17, scope: !659)
!3718 = !DILocation(line: 207, column: 13, scope: !659)
!3719 = !DILocation(line: 207, column: 20, scope: !659)
!3720 = !DILocation(line: 208, column: 5, scope: !655)
!3721 = !DILocation(line: 208, column: 5, scope: !3687)
!3722 = !DILocation(line: 208, column: 5, scope: !654)
!3723 = !DILocation(line: 200, column: 26, scope: !655)
!3724 = !DILocation(line: 200, column: 5, scope: !655)
!3725 = !DILocation(line: 209, column: 9, scope: !643)
!3726 = !DILocation(line: 209, column: 5, scope: !643)
!3727 = !DILocation(line: 209, column: 12, scope: !643)
!3728 = !DILocation(line: 210, column: 26, scope: !662)
!3729 = !DILocation(line: 210, column: 33, scope: !662)
!3730 = !DILocation(line: 210, column: 43, scope: !662)
!3731 = !DILocation(line: 210, column: 1349, scope: !662)
!3732 = !DILocation(line: 210, column: 1362, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 1)
!3734 = !DILocation(line: 210, column: 1382, scope: !662)
!3735 = !DILocation(line: 210, column: 1391, scope: !662)
!3736 = !DILocation(line: 210, column: 1236, scope: !662)
!3737 = !DILocation(line: 210, column: 1554, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !666, file: !439, discriminator: 3)
!3739 = !DILocation(line: 210, column: 1575, scope: !666)
!3740 = !DILocation(line: 210, column: 1621, scope: !666)
!3741 = !DILocation(line: 210, column: 1628, scope: !666)
!3742 = !DILocation(line: 210, column: 1641, scope: !666)
!3743 = !DILocation(line: 210, column: 1652, scope: !666)
!3744 = !DILocation(line: 210, column: 1662, scope: !666)
!3745 = !DILocation(line: 210, column: 1660, scope: !666)
!3746 = !DILocation(line: 210, column: 1721, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !666, file: !439, line: 210, column: 1721)
!3748 = !DILocation(line: 210, column: 1730, scope: !3747)
!3749 = !DILocation(line: 210, column: 1734, scope: !3747)
!3750 = !DILocation(line: 210, column: 1737, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3747, file: !439, discriminator: 5)
!3752 = !DILocation(line: 210, column: 1746, scope: !3747)
!3753 = !DILocation(line: 210, column: 1721, scope: !666)
!3754 = !DILocation(line: 210, column: 1766, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3756, file: !439, discriminator: 7)
!3756 = distinct !DILexicalBlock(scope: !3747, file: !439, line: 210, column: 1752)
!3757 = !DILocation(line: 210, column: 1776, scope: !3756)
!3758 = !DILocation(line: 210, column: 1774, scope: !3756)
!3759 = !DILocation(line: 210, column: 1763, scope: !3756)
!3760 = !DILocation(line: 210, column: 1836, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3756, file: !439, line: 210, column: 1836)
!3762 = !DILocation(line: 210, column: 1845, scope: !3761)
!3763 = !DILocation(line: 210, column: 1849, scope: !3761)
!3764 = !DILocation(line: 210, column: 1852, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3761, file: !439, discriminator: 9)
!3766 = !DILocation(line: 210, column: 1861, scope: !3761)
!3767 = !DILocation(line: 210, column: 1836, scope: !3756)
!3768 = !DILocation(line: 210, column: 1881, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3770, file: !439, discriminator: 11)
!3770 = distinct !DILexicalBlock(scope: !3761, file: !439, line: 210, column: 1867)
!3771 = !DILocation(line: 210, column: 1891, scope: !3770)
!3772 = !DILocation(line: 210, column: 1889, scope: !3770)
!3773 = !DILocation(line: 210, column: 1878, scope: !3770)
!3774 = !DILocation(line: 210, column: 1951, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3770, file: !439, line: 210, column: 1951)
!3776 = !DILocation(line: 210, column: 1960, scope: !3775)
!3777 = !DILocation(line: 210, column: 1964, scope: !3775)
!3778 = !DILocation(line: 210, column: 1967, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !3775, file: !439, discriminator: 13)
!3780 = !DILocation(line: 210, column: 1976, scope: !3775)
!3781 = !DILocation(line: 210, column: 1951, scope: !3770)
!3782 = !DILocation(line: 210, column: 1994, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3775, file: !439, discriminator: 15)
!3784 = !DILocation(line: 210, column: 2004, scope: !3775)
!3785 = !DILocation(line: 210, column: 2002, scope: !3775)
!3786 = !DILocation(line: 210, column: 1991, scope: !3775)
!3787 = !DILocation(line: 210, column: 1982, scope: !3775)
!3788 = !DILocation(line: 210, column: 2060, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3790, file: !439, discriminator: 17)
!3790 = !DILexicalBlockFile(scope: !3791, file: !439, discriminator: 16)
!3791 = !DILexicalBlockFile(scope: !3770, file: !439, discriminator: 14)
!3792 = !DILocation(line: 210, column: 2062, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3794, file: !439, discriminator: 18)
!3794 = !DILexicalBlockFile(scope: !3795, file: !439, discriminator: 12)
!3795 = !DILexicalBlockFile(scope: !3756, file: !439, discriminator: 10)
!3796 = !DILocation(line: 210, column: 2064, scope: !3797)
!3797 = !DILexicalBlockFile(scope: !3798, file: !439, discriminator: 19)
!3798 = !DILexicalBlockFile(scope: !3799, file: !439, discriminator: 8)
!3799 = !DILexicalBlockFile(scope: !666, file: !439, discriminator: 6)
!3800 = !DILocation(line: 210, column: 1749, scope: !3747)
!3801 = !DILocation(line: 210, column: 2074, scope: !662)
!3802 = !DILocation(line: 210, column: 2074, scope: !666)
!3803 = !DILocation(line: 210, column: 2099, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3805, file: !439, discriminator: 4)
!3805 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 2)
!3806 = !DILocation(line: 210, column: 2081, scope: !662)
!3807 = !DILocation(line: 210, column: 26, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3809, file: !439, discriminator: 21)
!3809 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 20)
!3810 = !DILocation(line: 210, column: 2117, scope: !663)
!3811 = !DILocation(line: 210, column: 2117, scope: !662)
!3812 = !DILocation(line: 210, column: 2120, scope: !663)
!3813 = !DILocation(line: 210, column: 2125, scope: !663)
!3814 = !DILocation(line: 211, column: 2336, scope: !663)
!3815 = !DILocation(line: 211, column: 2327, scope: !663)
!3816 = !DILocation(line: 211, column: 2356, scope: !663)
!3817 = !DILocation(line: 210, column: 9, scope: !643)
!3818 = !DILocation(line: 212, column: 9, scope: !663)
!3819 = !DILocation(line: 213, column: 31, scope: !669)
!3820 = !DILocation(line: 213, column: 38, scope: !669)
!3821 = !DILocation(line: 213, column: 48, scope: !669)
!3822 = !DILocation(line: 213, column: 1380, scope: !669)
!3823 = !DILocation(line: 213, column: 1393, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 1)
!3825 = !DILocation(line: 213, column: 1415, scope: !669)
!3826 = !DILocation(line: 213, column: 1424, scope: !669)
!3827 = !DILocation(line: 213, column: 1261, scope: !669)
!3828 = !DILocation(line: 213, column: 1589, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !673, file: !439, discriminator: 3)
!3830 = !DILocation(line: 213, column: 1610, scope: !673)
!3831 = !DILocation(line: 213, column: 1656, scope: !673)
!3832 = !DILocation(line: 213, column: 1663, scope: !673)
!3833 = !DILocation(line: 213, column: 1676, scope: !673)
!3834 = !DILocation(line: 213, column: 1687, scope: !673)
!3835 = !DILocation(line: 213, column: 1697, scope: !673)
!3836 = !DILocation(line: 213, column: 1695, scope: !673)
!3837 = !DILocation(line: 213, column: 1758, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !673, file: !439, line: 213, column: 1758)
!3839 = !DILocation(line: 213, column: 1767, scope: !3838)
!3840 = !DILocation(line: 213, column: 1771, scope: !3838)
!3841 = !DILocation(line: 213, column: 1774, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3838, file: !439, discriminator: 5)
!3843 = !DILocation(line: 213, column: 1783, scope: !3838)
!3844 = !DILocation(line: 213, column: 1758, scope: !673)
!3845 = !DILocation(line: 213, column: 1803, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !3847, file: !439, discriminator: 7)
!3847 = distinct !DILexicalBlock(scope: !3838, file: !439, line: 213, column: 1789)
!3848 = !DILocation(line: 213, column: 1813, scope: !3847)
!3849 = !DILocation(line: 213, column: 1811, scope: !3847)
!3850 = !DILocation(line: 213, column: 1800, scope: !3847)
!3851 = !DILocation(line: 213, column: 1875, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3847, file: !439, line: 213, column: 1875)
!3853 = !DILocation(line: 213, column: 1884, scope: !3852)
!3854 = !DILocation(line: 213, column: 1888, scope: !3852)
!3855 = !DILocation(line: 213, column: 1891, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3852, file: !439, discriminator: 9)
!3857 = !DILocation(line: 213, column: 1900, scope: !3852)
!3858 = !DILocation(line: 213, column: 1875, scope: !3847)
!3859 = !DILocation(line: 213, column: 1920, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3861, file: !439, discriminator: 11)
!3861 = distinct !DILexicalBlock(scope: !3852, file: !439, line: 213, column: 1906)
!3862 = !DILocation(line: 213, column: 1930, scope: !3861)
!3863 = !DILocation(line: 213, column: 1928, scope: !3861)
!3864 = !DILocation(line: 213, column: 1917, scope: !3861)
!3865 = !DILocation(line: 213, column: 1992, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !439, line: 213, column: 1992)
!3867 = !DILocation(line: 213, column: 2001, scope: !3866)
!3868 = !DILocation(line: 213, column: 2005, scope: !3866)
!3869 = !DILocation(line: 213, column: 2008, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3866, file: !439, discriminator: 13)
!3871 = !DILocation(line: 213, column: 2017, scope: !3866)
!3872 = !DILocation(line: 213, column: 1992, scope: !3861)
!3873 = !DILocation(line: 213, column: 2035, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3866, file: !439, discriminator: 15)
!3875 = !DILocation(line: 213, column: 2045, scope: !3866)
!3876 = !DILocation(line: 213, column: 2043, scope: !3866)
!3877 = !DILocation(line: 213, column: 2032, scope: !3866)
!3878 = !DILocation(line: 213, column: 2023, scope: !3866)
!3879 = !DILocation(line: 213, column: 2103, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3881, file: !439, discriminator: 17)
!3881 = !DILexicalBlockFile(scope: !3882, file: !439, discriminator: 16)
!3882 = !DILexicalBlockFile(scope: !3861, file: !439, discriminator: 14)
!3883 = !DILocation(line: 213, column: 2105, scope: !3884)
!3884 = !DILexicalBlockFile(scope: !3885, file: !439, discriminator: 18)
!3885 = !DILexicalBlockFile(scope: !3886, file: !439, discriminator: 12)
!3886 = !DILexicalBlockFile(scope: !3847, file: !439, discriminator: 10)
!3887 = !DILocation(line: 213, column: 2107, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3889, file: !439, discriminator: 19)
!3889 = !DILexicalBlockFile(scope: !3890, file: !439, discriminator: 8)
!3890 = !DILexicalBlockFile(scope: !673, file: !439, discriminator: 6)
!3891 = !DILocation(line: 213, column: 1786, scope: !3838)
!3892 = !DILocation(line: 213, column: 2117, scope: !669)
!3893 = !DILocation(line: 213, column: 2117, scope: !673)
!3894 = !DILocation(line: 213, column: 2142, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3896, file: !439, discriminator: 4)
!3896 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 2)
!3897 = !DILocation(line: 213, column: 2124, scope: !669)
!3898 = !DILocation(line: 213, column: 31, scope: !3899)
!3899 = !DILexicalBlockFile(scope: !3900, file: !439, discriminator: 21)
!3900 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 20)
!3901 = !DILocation(line: 213, column: 2162, scope: !670)
!3902 = !DILocation(line: 213, column: 2162, scope: !669)
!3903 = !DILocation(line: 213, column: 2165, scope: !670)
!3904 = !DILocation(line: 213, column: 2170, scope: !670)
!3905 = !DILocation(line: 214, column: 31, scope: !676)
!3906 = !DILocation(line: 214, column: 38, scope: !676)
!3907 = !DILocation(line: 214, column: 48, scope: !676)
!3908 = !DILocation(line: 214, column: 1419, scope: !676)
!3909 = !DILocation(line: 214, column: 1432, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 1)
!3911 = !DILocation(line: 214, column: 1457, scope: !676)
!3912 = !DILocation(line: 214, column: 1466, scope: !676)
!3913 = !DILocation(line: 214, column: 1291, scope: !676)
!3914 = !DILocation(line: 214, column: 1634, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !679, file: !439, discriminator: 3)
!3916 = !DILocation(line: 214, column: 1655, scope: !679)
!3917 = !DILocation(line: 214, column: 1701, scope: !679)
!3918 = !DILocation(line: 214, column: 1708, scope: !679)
!3919 = !DILocation(line: 214, column: 1721, scope: !679)
!3920 = !DILocation(line: 214, column: 1732, scope: !679)
!3921 = !DILocation(line: 214, column: 1742, scope: !679)
!3922 = !DILocation(line: 214, column: 1740, scope: !679)
!3923 = !DILocation(line: 214, column: 1806, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !679, file: !439, line: 214, column: 1806)
!3925 = !DILocation(line: 214, column: 1815, scope: !3924)
!3926 = !DILocation(line: 214, column: 1819, scope: !3924)
!3927 = !DILocation(line: 214, column: 1822, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3924, file: !439, discriminator: 5)
!3929 = !DILocation(line: 214, column: 1831, scope: !3924)
!3930 = !DILocation(line: 214, column: 1806, scope: !679)
!3931 = !DILocation(line: 214, column: 1851, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3933, file: !439, discriminator: 7)
!3933 = distinct !DILexicalBlock(scope: !3924, file: !439, line: 214, column: 1837)
!3934 = !DILocation(line: 214, column: 1861, scope: !3933)
!3935 = !DILocation(line: 214, column: 1859, scope: !3933)
!3936 = !DILocation(line: 214, column: 1848, scope: !3933)
!3937 = !DILocation(line: 214, column: 1926, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3933, file: !439, line: 214, column: 1926)
!3939 = !DILocation(line: 214, column: 1935, scope: !3938)
!3940 = !DILocation(line: 214, column: 1939, scope: !3938)
!3941 = !DILocation(line: 214, column: 1942, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3938, file: !439, discriminator: 9)
!3943 = !DILocation(line: 214, column: 1951, scope: !3938)
!3944 = !DILocation(line: 214, column: 1926, scope: !3933)
!3945 = !DILocation(line: 214, column: 1971, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3947, file: !439, discriminator: 11)
!3947 = distinct !DILexicalBlock(scope: !3938, file: !439, line: 214, column: 1957)
!3948 = !DILocation(line: 214, column: 1981, scope: !3947)
!3949 = !DILocation(line: 214, column: 1979, scope: !3947)
!3950 = !DILocation(line: 214, column: 1968, scope: !3947)
!3951 = !DILocation(line: 214, column: 2046, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3947, file: !439, line: 214, column: 2046)
!3953 = !DILocation(line: 214, column: 2055, scope: !3952)
!3954 = !DILocation(line: 214, column: 2059, scope: !3952)
!3955 = !DILocation(line: 214, column: 2062, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3952, file: !439, discriminator: 13)
!3957 = !DILocation(line: 214, column: 2071, scope: !3952)
!3958 = !DILocation(line: 214, column: 2046, scope: !3947)
!3959 = !DILocation(line: 214, column: 2089, scope: !3960)
!3960 = !DILexicalBlockFile(scope: !3952, file: !439, discriminator: 15)
!3961 = !DILocation(line: 214, column: 2099, scope: !3952)
!3962 = !DILocation(line: 214, column: 2097, scope: !3952)
!3963 = !DILocation(line: 214, column: 2086, scope: !3952)
!3964 = !DILocation(line: 214, column: 2077, scope: !3952)
!3965 = !DILocation(line: 214, column: 2160, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3967, file: !439, discriminator: 17)
!3967 = !DILexicalBlockFile(scope: !3968, file: !439, discriminator: 16)
!3968 = !DILexicalBlockFile(scope: !3947, file: !439, discriminator: 14)
!3969 = !DILocation(line: 214, column: 2162, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3971, file: !439, discriminator: 18)
!3971 = !DILexicalBlockFile(scope: !3972, file: !439, discriminator: 12)
!3972 = !DILexicalBlockFile(scope: !3933, file: !439, discriminator: 10)
!3973 = !DILocation(line: 214, column: 2164, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3975, file: !439, discriminator: 19)
!3975 = !DILexicalBlockFile(scope: !3976, file: !439, discriminator: 8)
!3976 = !DILexicalBlockFile(scope: !679, file: !439, discriminator: 6)
!3977 = !DILocation(line: 214, column: 1834, scope: !3924)
!3978 = !DILocation(line: 214, column: 2174, scope: !676)
!3979 = !DILocation(line: 214, column: 2174, scope: !679)
!3980 = !DILocation(line: 214, column: 2199, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3982, file: !439, discriminator: 4)
!3982 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 2)
!3983 = !DILocation(line: 214, column: 2181, scope: !676)
!3984 = !DILocation(line: 214, column: 31, scope: !3985)
!3985 = !DILexicalBlockFile(scope: !3986, file: !439, discriminator: 21)
!3986 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 20)
!3987 = !DILocation(line: 214, column: 2222, scope: !670)
!3988 = !DILocation(line: 214, column: 2222, scope: !676)
!3989 = !DILocation(line: 214, column: 2225, scope: !670)
!3990 = !DILocation(line: 214, column: 2230, scope: !670)
!3991 = !DILocation(line: 215, column: 31, scope: !682)
!3992 = !DILocation(line: 215, column: 38, scope: !682)
!3993 = !DILocation(line: 215, column: 48, scope: !682)
!3994 = !DILocation(line: 215, column: 1432, scope: !682)
!3995 = !DILocation(line: 215, column: 1445, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 1)
!3997 = !DILocation(line: 215, column: 1471, scope: !682)
!3998 = !DILocation(line: 215, column: 1480, scope: !682)
!3999 = !DILocation(line: 215, column: 1301, scope: !682)
!4000 = !DILocation(line: 215, column: 1649, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !685, file: !439, discriminator: 3)
!4002 = !DILocation(line: 215, column: 1670, scope: !685)
!4003 = !DILocation(line: 215, column: 1716, scope: !685)
!4004 = !DILocation(line: 215, column: 1723, scope: !685)
!4005 = !DILocation(line: 215, column: 1736, scope: !685)
!4006 = !DILocation(line: 215, column: 1747, scope: !685)
!4007 = !DILocation(line: 215, column: 1757, scope: !685)
!4008 = !DILocation(line: 215, column: 1755, scope: !685)
!4009 = !DILocation(line: 215, column: 1822, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !685, file: !439, line: 215, column: 1822)
!4011 = !DILocation(line: 215, column: 1831, scope: !4010)
!4012 = !DILocation(line: 215, column: 1835, scope: !4010)
!4013 = !DILocation(line: 215, column: 1838, scope: !4014)
!4014 = !DILexicalBlockFile(scope: !4010, file: !439, discriminator: 5)
!4015 = !DILocation(line: 215, column: 1847, scope: !4010)
!4016 = !DILocation(line: 215, column: 1822, scope: !685)
!4017 = !DILocation(line: 215, column: 1867, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4019, file: !439, discriminator: 7)
!4019 = distinct !DILexicalBlock(scope: !4010, file: !439, line: 215, column: 1853)
!4020 = !DILocation(line: 215, column: 1877, scope: !4019)
!4021 = !DILocation(line: 215, column: 1875, scope: !4019)
!4022 = !DILocation(line: 215, column: 1864, scope: !4019)
!4023 = !DILocation(line: 215, column: 1943, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4019, file: !439, line: 215, column: 1943)
!4025 = !DILocation(line: 215, column: 1952, scope: !4024)
!4026 = !DILocation(line: 215, column: 1956, scope: !4024)
!4027 = !DILocation(line: 215, column: 1959, scope: !4028)
!4028 = !DILexicalBlockFile(scope: !4024, file: !439, discriminator: 9)
!4029 = !DILocation(line: 215, column: 1968, scope: !4024)
!4030 = !DILocation(line: 215, column: 1943, scope: !4019)
!4031 = !DILocation(line: 215, column: 1988, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4033, file: !439, discriminator: 11)
!4033 = distinct !DILexicalBlock(scope: !4024, file: !439, line: 215, column: 1974)
!4034 = !DILocation(line: 215, column: 1998, scope: !4033)
!4035 = !DILocation(line: 215, column: 1996, scope: !4033)
!4036 = !DILocation(line: 215, column: 1985, scope: !4033)
!4037 = !DILocation(line: 215, column: 2064, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !439, line: 215, column: 2064)
!4039 = !DILocation(line: 215, column: 2073, scope: !4038)
!4040 = !DILocation(line: 215, column: 2077, scope: !4038)
!4041 = !DILocation(line: 215, column: 2080, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4038, file: !439, discriminator: 13)
!4043 = !DILocation(line: 215, column: 2089, scope: !4038)
!4044 = !DILocation(line: 215, column: 2064, scope: !4033)
!4045 = !DILocation(line: 215, column: 2107, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !4038, file: !439, discriminator: 15)
!4047 = !DILocation(line: 215, column: 2117, scope: !4038)
!4048 = !DILocation(line: 215, column: 2115, scope: !4038)
!4049 = !DILocation(line: 215, column: 2104, scope: !4038)
!4050 = !DILocation(line: 215, column: 2095, scope: !4038)
!4051 = !DILocation(line: 215, column: 2179, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !4053, file: !439, discriminator: 17)
!4053 = !DILexicalBlockFile(scope: !4054, file: !439, discriminator: 16)
!4054 = !DILexicalBlockFile(scope: !4033, file: !439, discriminator: 14)
!4055 = !DILocation(line: 215, column: 2181, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4057, file: !439, discriminator: 18)
!4057 = !DILexicalBlockFile(scope: !4058, file: !439, discriminator: 12)
!4058 = !DILexicalBlockFile(scope: !4019, file: !439, discriminator: 10)
!4059 = !DILocation(line: 215, column: 2183, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4061, file: !439, discriminator: 19)
!4061 = !DILexicalBlockFile(scope: !4062, file: !439, discriminator: 8)
!4062 = !DILexicalBlockFile(scope: !685, file: !439, discriminator: 6)
!4063 = !DILocation(line: 215, column: 1850, scope: !4010)
!4064 = !DILocation(line: 215, column: 2193, scope: !682)
!4065 = !DILocation(line: 215, column: 2193, scope: !685)
!4066 = !DILocation(line: 215, column: 2218, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4068, file: !439, discriminator: 4)
!4068 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 2)
!4069 = !DILocation(line: 215, column: 2200, scope: !682)
!4070 = !DILocation(line: 215, column: 31, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4072, file: !439, discriminator: 21)
!4072 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 20)
!4073 = !DILocation(line: 215, column: 2242, scope: !670)
!4074 = !DILocation(line: 215, column: 2242, scope: !682)
!4075 = !DILocation(line: 215, column: 2245, scope: !670)
!4076 = !DILocation(line: 215, column: 2250, scope: !670)
!4077 = !DILocation(line: 216, column: 2385, scope: !670)
!4078 = !DILocation(line: 216, column: 2376, scope: !670)
!4079 = !DILocation(line: 216, column: 2407, scope: !670)
!4080 = !DILocation(line: 216, column: 2412, scope: !670)
!4081 = !DILocation(line: 217, column: 2454, scope: !670)
!4082 = !DILocation(line: 217, column: 2445, scope: !670)
!4083 = !DILocation(line: 217, column: 2480, scope: !670)
!4084 = !DILocation(line: 217, column: 2485, scope: !670)
!4085 = !DILocation(line: 218, column: 2476, scope: !670)
!4086 = !DILocation(line: 218, column: 2467, scope: !670)
!4087 = !DILocation(line: 218, column: 2503, scope: !670)
!4088 = !DILocation(line: 213, column: 14, scope: !663)
!4089 = !DILocation(line: 219, column: 9, scope: !670)
!4090 = !DILocation(line: 221, column: 16, scope: !670)
!4091 = !DILocation(line: 221, column: 9, scope: !670)
!4092 = !DILocation(line: 222, column: 1, scope: !643)
!4093 = !DILocation(line: 216, column: 45, scope: !687)
!4094 = !DILocation(line: 218, column: 10, scope: !687)
!4095 = !DILocation(line: 218, column: 14, scope: !687)
!4096 = !DILocation(line: 218, column: 22, scope: !687)
!4097 = !DILocation(line: 218, column: 25, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 1)
!4099 = !DILocation(line: 218, column: 29, scope: !687)
!4100 = !DILocation(line: 218, column: 63, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 3)
!4102 = !DILocation(line: 218, column: 37, scope: !687)
!4103 = !DILocation(line: 218, column: 39, scope: !687)
!4104 = !DILocation(line: 218, column: 38, scope: !687)
!4105 = !DILocation(line: 218, column: 70, scope: !4106)
!4106 = !DILexicalBlockFile(scope: !4107, file: !10, discriminator: 4)
!4107 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 2)
!4108 = !DILocation(line: 218, column: 3, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4110, file: !10, discriminator: 6)
!4110 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 5)
!4111 = !DILocation(line: 898, column: 29, scope: !741)
!4112 = !DILocation(line: 900, column: 5, scope: !741)
!4113 = !DILocation(line: 901, column: 13, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !747, file: !439, line: 901, column: 13)
!4115 = !DILocation(line: 901, column: 18, scope: !4114)
!4116 = !DILocation(line: 901, column: 25, scope: !4114)
!4117 = !DILocation(line: 901, column: 30, scope: !4114)
!4118 = !DILocation(line: 901, column: 22, scope: !4114)
!4119 = !DILocation(line: 901, column: 13, scope: !747)
!4120 = !DILocation(line: 902, column: 39, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4114, file: !439, line: 901, column: 35)
!4122 = !DILocation(line: 902, column: 44, scope: !4121)
!4123 = !DILocation(line: 902, column: 47, scope: !4121)
!4124 = !DILocation(line: 902, column: 38, scope: !4121)
!4125 = !DILocation(line: 902, column: 37, scope: !4121)
!4126 = !DILocation(line: 902, column: 51, scope: !4121)
!4127 = !DILocation(line: 902, column: 21, scope: !4121)
!4128 = !DILocation(line: 902, column: 20, scope: !4121)
!4129 = !DILocation(line: 902, column: 13, scope: !4121)
!4130 = !DILocation(line: 904, column: 13, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !747, file: !439, line: 904, column: 13)
!4132 = !DILocation(line: 904, column: 18, scope: !4131)
!4133 = !DILocation(line: 904, column: 23, scope: !4131)
!4134 = !DILocation(line: 904, column: 13, scope: !747)
!4135 = !DILocation(line: 905, column: 13, scope: !4131)
!4136 = !DILocation(line: 906, column: 13, scope: !746)
!4137 = !DILocation(line: 906, column: 18, scope: !746)
!4138 = !DILocation(line: 906, column: 21, scope: !746)
!4139 = !DILocation(line: 906, column: 13, scope: !747)
!4140 = !DILocation(line: 907, column: 13, scope: !745)
!4141 = !DILocation(line: 907, column: 19, scope: !745)
!4142 = !DILocation(line: 907, column: 183, scope: !745)
!4143 = !DILocation(line: 907, column: 188, scope: !745)
!4144 = !DILocation(line: 907, column: 165, scope: !745)
!4145 = !DILocation(line: 908, column: 17, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !745, file: !439, line: 908, column: 17)
!4147 = !DILocation(line: 908, column: 21, scope: !4146)
!4148 = !DILocation(line: 908, column: 17, scope: !745)
!4149 = !DILocation(line: 909, column: 20, scope: !4146)
!4150 = !DILocation(line: 909, column: 17, scope: !4146)
!4151 = !DILocation(line: 911, column: 145, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4146, file: !439, line: 910, column: 18)
!4153 = !DILocation(line: 911, column: 150, scope: !4152)
!4154 = !DILocation(line: 911, column: 132, scope: !4152)
!4155 = !DILocation(line: 911, column: 21, scope: !4152)
!4156 = !DILocation(line: 912, column: 21, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4152, file: !439, line: 912, column: 21)
!4158 = !DILocation(line: 912, column: 28, scope: !4157)
!4159 = !DILocation(line: 912, column: 33, scope: !4157)
!4160 = !DILocation(line: 912, column: 25, scope: !4157)
!4161 = !DILocation(line: 912, column: 21, scope: !4152)
!4162 = !DILocation(line: 913, column: 21, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4157, file: !439, line: 912, column: 38)
!4164 = !DILocation(line: 913, column: 26, scope: !4163)
!4165 = !DILocation(line: 913, column: 31, scope: !4163)
!4166 = !DILocation(line: 914, column: 21, scope: !4163)
!4167 = !DILocation(line: 917, column: 17, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !745, file: !439, line: 917, column: 17)
!4169 = !DILocation(line: 917, column: 22, scope: !4168)
!4170 = !DILocation(line: 917, column: 28, scope: !4168)
!4171 = !DILocation(line: 917, column: 17, scope: !745)
!4172 = !DILocation(line: 918, column: 28, scope: !4168)
!4173 = !DILocation(line: 918, column: 33, scope: !4168)
!4174 = !DILocation(line: 918, column: 17, scope: !4168)
!4175 = !DILocation(line: 918, column: 22, scope: !4168)
!4176 = !DILocation(line: 918, column: 26, scope: !4168)
!4177 = !DILocation(line: 919, column: 31, scope: !745)
!4178 = !DILocation(line: 919, column: 36, scope: !745)
!4179 = !DILocation(line: 919, column: 13, scope: !745)
!4180 = !DILocation(line: 919, column: 18, scope: !745)
!4181 = !DILocation(line: 919, column: 29, scope: !745)
!4182 = !{!929, !895, i64 944}
!4183 = !DILocation(line: 920, column: 13, scope: !745)
!4184 = !DILocation(line: 920, column: 18, scope: !745)
!4185 = !DILocation(line: 920, column: 24, scope: !745)
!4186 = !DILocation(line: 921, column: 24, scope: !745)
!4187 = !DILocation(line: 921, column: 13, scope: !745)
!4188 = !DILocation(line: 921, column: 18, scope: !745)
!4189 = !DILocation(line: 921, column: 22, scope: !745)
!4190 = !DILocation(line: 922, column: 39, scope: !745)
!4191 = !DILocation(line: 922, column: 44, scope: !745)
!4192 = !DILocation(line: 922, column: 47, scope: !745)
!4193 = !DILocation(line: 922, column: 38, scope: !745)
!4194 = !DILocation(line: 922, column: 37, scope: !745)
!4195 = !DILocation(line: 922, column: 51, scope: !745)
!4196 = !DILocation(line: 922, column: 21, scope: !745)
!4197 = !DILocation(line: 922, column: 20, scope: !745)
!4198 = !DILocation(line: 922, column: 13, scope: !745)
!4199 = !DILocation(line: 923, column: 9, scope: !746)
!4200 = !DILocation(line: 924, column: 13, scope: !752)
!4201 = !DILocation(line: 924, column: 18, scope: !752)
!4202 = !DILocation(line: 924, column: 25, scope: !752)
!4203 = !DILocation(line: 924, column: 13, scope: !747)
!4204 = !DILocation(line: 925, column: 13, scope: !751)
!4205 = !DILocation(line: 925, column: 19, scope: !751)
!4206 = !DILocation(line: 925, column: 42, scope: !751)
!4207 = !DILocation(line: 925, column: 49, scope: !751)
!4208 = !DILocation(line: 925, column: 57, scope: !751)
!4209 = !DILocation(line: 925, column: 62, scope: !751)
!4210 = !DILocation(line: 925, column: 28, scope: !751)
!4211 = !DILocation(line: 927, column: 17, scope: !755)
!4212 = !DILocation(line: 927, column: 24, scope: !755)
!4213 = !DILocation(line: 927, column: 17, scope: !751)
!4214 = !DILocation(line: 928, column: 17, scope: !754)
!4215 = !DILocation(line: 928, column: 23, scope: !754)
!4216 = !DILocation(line: 928, column: 55, scope: !754)
!4217 = !DILocation(line: 928, column: 66, scope: !754)
!4218 = !DILocation(line: 928, column: 36, scope: !754)
!4219 = !DILocation(line: 929, column: 28, scope: !754)
!4220 = !DILocation(line: 929, column: 17, scope: !754)
!4221 = !DILocation(line: 930, column: 21, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !754, file: !439, line: 930, column: 21)
!4223 = !DILocation(line: 930, column: 32, scope: !4222)
!4224 = !DILocation(line: 930, column: 21, scope: !754)
!4225 = !DILocation(line: 931, column: 21, scope: !4222)
!4226 = !DILocation(line: 932, column: 26, scope: !754)
!4227 = !DILocation(line: 932, column: 24, scope: !754)
!4228 = !DILocation(line: 933, column: 13, scope: !755)
!4229 = !DILocation(line: 933, column: 13, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !755, file: !439, discriminator: 1)
!4231 = !DILocation(line: 933, column: 13, scope: !754)
!4232 = !DILocation(line: 934, column: 17, scope: !758)
!4233 = !DILocation(line: 934, column: 22, scope: !758)
!4234 = !DILocation(line: 934, column: 31, scope: !758)
!4235 = !DILocation(line: 934, column: 34, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !758, file: !439, discriminator: 1)
!4237 = !DILocation(line: 934, column: 41, scope: !758)
!4238 = !DILocation(line: 934, column: 45, scope: !4239)
!4239 = !DILexicalBlockFile(scope: !758, file: !439, discriminator: 2)
!4240 = !DILocation(line: 934, column: 44, scope: !758)
!4241 = !DILocation(line: 934, column: 17, scope: !751)
!4242 = !DILocation(line: 936, column: 17, scope: !757)
!4243 = !DILocation(line: 936, column: 28, scope: !757)
!4244 = !DILocation(line: 937, column: 17, scope: !757)
!4245 = !DILocation(line: 937, column: 29, scope: !757)
!4246 = !DILocation(line: 938, column: 17, scope: !757)
!4247 = !DILocation(line: 938, column: 27, scope: !757)
!4248 = !DILocation(line: 938, column: 51, scope: !757)
!4249 = !DILocation(line: 938, column: 59, scope: !757)
!4250 = !DILocation(line: 938, column: 64, scope: !757)
!4251 = !DILocation(line: 938, column: 31, scope: !757)
!4252 = !DILocation(line: 939, column: 28, scope: !757)
!4253 = !DILocation(line: 939, column: 17, scope: !757)
!4254 = !DILocation(line: 940, column: 22, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !757, file: !439, line: 940, column: 21)
!4256 = !DILocation(line: 940, column: 21, scope: !757)
!4257 = !DILocation(line: 941, column: 21, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4255, file: !439, line: 940, column: 25)
!4259 = !DILocation(line: 941, column: 26, scope: !4258)
!4260 = !DILocation(line: 941, column: 31, scope: !4258)
!4261 = !DILocation(line: 942, column: 21, scope: !4258)
!4262 = !DILocation(line: 944, column: 57, scope: !757)
!4263 = !DILocation(line: 944, column: 42, scope: !757)
!4264 = !DILocation(line: 944, column: 62, scope: !757)
!4265 = !{!1291, !1279, i64 16}
!4266 = !DILocation(line: 944, column: 24, scope: !757)
!4267 = !DILocation(line: 945, column: 58, scope: !757)
!4268 = !DILocation(line: 945, column: 40, scope: !757)
!4269 = !DILocation(line: 945, column: 63, scope: !757)
!4270 = !DILocation(line: 945, column: 38, scope: !757)
!4271 = !DILocation(line: 945, column: 21, scope: !757)
!4272 = !DILocation(line: 946, column: 22, scope: !764)
!4273 = !DILocation(line: 946, column: 21, scope: !757)
!4274 = !DILocation(line: 947, column: 21, scope: !763)
!4275 = !DILocation(line: 947, column: 26, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 1)
!4277 = !DILocation(line: 947, column: 36, scope: !762)
!4278 = !DILocation(line: 947, column: 66, scope: !762)
!4279 = !DILocation(line: 947, column: 78, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !762, file: !439, line: 947, column: 75)
!4281 = !DILocation(line: 947, column: 95, scope: !4280)
!4282 = !DILocation(line: 947, column: 75, scope: !4280)
!4283 = !DILocation(line: 947, column: 105, scope: !4280)
!4284 = !DILocation(line: 947, column: 75, scope: !762)
!4285 = !DILocation(line: 947, column: 75, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 2)
!4287 = !DILocation(line: 947, column: 136, scope: !4288)
!4288 = !DILexicalBlockFile(scope: !4280, file: !439, discriminator: 3)
!4289 = !DILocation(line: 947, column: 154, scope: !4280)
!4290 = !DILocation(line: 947, column: 164, scope: !4280)
!4291 = !DILocation(line: 947, column: 189, scope: !4280)
!4292 = !DILocation(line: 947, column: 120, scope: !4280)
!4293 = !DILocation(line: 947, column: 208, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !763, file: !439, discriminator: 4)
!4295 = !DILocation(line: 947, column: 208, scope: !762)
!4296 = !DILocation(line: 947, column: 208, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 5)
!4298 = !DILocation(line: 948, column: 21, scope: !763)
!4299 = !DILocation(line: 948, column: 26, scope: !763)
!4300 = !DILocation(line: 948, column: 31, scope: !763)
!4301 = !DILocation(line: 949, column: 21, scope: !763)
!4302 = !DILocation(line: 951, column: 39, scope: !757)
!4303 = !DILocation(line: 951, column: 45, scope: !757)
!4304 = !DILocation(line: 951, column: 26, scope: !757)
!4305 = !DILocation(line: 951, column: 24, scope: !757)
!4306 = !DILocation(line: 952, column: 24, scope: !757)
!4307 = !DILocation(line: 952, column: 32, scope: !757)
!4308 = !DILocation(line: 952, column: 17, scope: !757)
!4309 = !DILocation(line: 953, column: 17, scope: !757)
!4310 = !DILocation(line: 953, column: 22, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 1)
!4312 = !DILocation(line: 953, column: 32, scope: !766)
!4313 = !DILocation(line: 953, column: 62, scope: !766)
!4314 = !DILocation(line: 953, column: 74, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !766, file: !439, line: 953, column: 71)
!4316 = !DILocation(line: 953, column: 91, scope: !4315)
!4317 = !DILocation(line: 953, column: 71, scope: !4315)
!4318 = !DILocation(line: 953, column: 101, scope: !4315)
!4319 = !DILocation(line: 953, column: 71, scope: !766)
!4320 = !DILocation(line: 953, column: 71, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 2)
!4322 = !DILocation(line: 953, column: 132, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4315, file: !439, discriminator: 3)
!4324 = !DILocation(line: 953, column: 150, scope: !4315)
!4325 = !DILocation(line: 953, column: 160, scope: !4315)
!4326 = !DILocation(line: 953, column: 185, scope: !4315)
!4327 = !DILocation(line: 953, column: 116, scope: !4315)
!4328 = !DILocation(line: 953, column: 204, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !757, file: !439, discriminator: 4)
!4330 = !DILocation(line: 953, column: 204, scope: !766)
!4331 = !DILocation(line: 953, column: 204, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 5)
!4333 = !DILocation(line: 954, column: 13, scope: !758)
!4334 = !DILocation(line: 954, column: 13, scope: !4236)
!4335 = !DILocation(line: 954, column: 13, scope: !757)
!4336 = !DILocation(line: 956, column: 17, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !751, file: !439, line: 956, column: 17)
!4338 = !DILocation(line: 956, column: 22, scope: !4337)
!4339 = !DILocation(line: 956, column: 33, scope: !4337)
!4340 = !DILocation(line: 956, column: 17, scope: !751)
!4341 = !DILocation(line: 957, column: 31, scope: !4337)
!4342 = !DILocation(line: 957, column: 36, scope: !4337)
!4343 = !DILocation(line: 957, column: 17, scope: !4337)
!4344 = !DILocation(line: 957, column: 22, scope: !4337)
!4345 = !DILocation(line: 957, column: 29, scope: !4337)
!4346 = !DILocation(line: 958, column: 17, scope: !771)
!4347 = !DILocation(line: 958, column: 24, scope: !771)
!4348 = !DILocation(line: 958, column: 17, scope: !751)
!4349 = !DILocation(line: 959, column: 17, scope: !771)
!4350 = !DILocation(line: 959, column: 22, scope: !771)
!4351 = !DILocation(line: 959, column: 27, scope: !771)
!4352 = !DILocation(line: 960, column: 23, scope: !770)
!4353 = !DILocation(line: 960, column: 22, scope: !770)
!4354 = !DILocation(line: 960, column: 30, scope: !770)
!4355 = !DILocation(line: 960, column: 22, scope: !771)
!4356 = !DILocation(line: 961, column: 28, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !770, file: !439, line: 960, column: 39)
!4358 = !DILocation(line: 961, column: 17, scope: !4357)
!4359 = !DILocation(line: 962, column: 17, scope: !4357)
!4360 = !DILocation(line: 962, column: 22, scope: !4357)
!4361 = !DILocation(line: 962, column: 27, scope: !4357)
!4362 = !DILocation(line: 963, column: 13, scope: !4357)
!4363 = !DILocation(line: 964, column: 22, scope: !769)
!4364 = !DILocation(line: 964, column: 27, scope: !769)
!4365 = !DILocation(line: 964, column: 33, scope: !769)
!4366 = !DILocation(line: 964, column: 22, scope: !770)
!4367 = !DILocation(line: 965, column: 17, scope: !768)
!4368 = !DILocation(line: 965, column: 24, scope: !768)
!4369 = !DILocation(line: 965, column: 32, scope: !768)
!4370 = !DILocation(line: 965, column: 37, scope: !768)
!4371 = !DILocation(line: 965, column: 45, scope: !768)
!4372 = !DILocation(line: 965, column: 50, scope: !768)
!4373 = !DILocation(line: 965, column: 43, scope: !768)
!4374 = !DILocation(line: 966, column: 17, scope: !768)
!4375 = !DILocation(line: 966, column: 24, scope: !768)
!4376 = !DILocation(line: 966, column: 33, scope: !768)
!4377 = !DILocation(line: 966, column: 38, scope: !768)
!4378 = !DILocation(line: 966, column: 44, scope: !768)
!4379 = !DILocation(line: 966, column: 49, scope: !768)
!4380 = !DILocation(line: 966, column: 42, scope: !768)
!4381 = !DILocation(line: 967, column: 17, scope: !768)
!4382 = !DILocation(line: 967, column: 24, scope: !768)
!4383 = !DILocation(line: 967, column: 33, scope: !768)
!4384 = !DILocation(line: 967, column: 49, scope: !768)
!4385 = !DILocation(line: 967, column: 42, scope: !768)
!4386 = !DILocation(line: 967, column: 40, scope: !768)
!4387 = !DILocation(line: 968, column: 17, scope: !768)
!4388 = !DILocation(line: 968, column: 23, scope: !768)
!4389 = !DILocation(line: 968, column: 29, scope: !768)
!4390 = !DILocation(line: 968, column: 34, scope: !768)
!4391 = !DILocation(line: 969, column: 45, scope: !768)
!4392 = !DILocation(line: 969, column: 50, scope: !768)
!4393 = !DILocation(line: 969, column: 56, scope: !768)
!4394 = !DILocation(line: 969, column: 31, scope: !768)
!4395 = !DILocation(line: 969, column: 21, scope: !768)
!4396 = !DILocation(line: 970, column: 17, scope: !768)
!4397 = !DILocation(line: 970, column: 22, scope: !768)
!4398 = !DILocation(line: 970, column: 28, scope: !768)
!4399 = !DILocation(line: 971, column: 21, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !768, file: !439, line: 971, column: 21)
!4401 = !DILocation(line: 971, column: 25, scope: !4400)
!4402 = !DILocation(line: 971, column: 21, scope: !768)
!4403 = !DILocation(line: 972, column: 32, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4400, file: !439, line: 971, column: 40)
!4405 = !DILocation(line: 972, column: 37, scope: !4404)
!4406 = !DILocation(line: 972, column: 21, scope: !4404)
!4407 = !DILocation(line: 973, column: 21, scope: !4404)
!4408 = !DILocation(line: 973, column: 26, scope: !4404)
!4409 = !DILocation(line: 973, column: 30, scope: !4404)
!4410 = !DILocation(line: 974, column: 32, scope: !4404)
!4411 = !DILocation(line: 974, column: 21, scope: !4404)
!4412 = !DILocation(line: 975, column: 21, scope: !4404)
!4413 = !DILocation(line: 975, column: 26, scope: !4404)
!4414 = !DILocation(line: 975, column: 31, scope: !4404)
!4415 = !DILocation(line: 976, column: 21, scope: !4404)
!4416 = !DILocation(line: 978, column: 28, scope: !768)
!4417 = !DILocation(line: 978, column: 17, scope: !768)
!4418 = !DILocation(line: 978, column: 22, scope: !768)
!4419 = !DILocation(line: 978, column: 26, scope: !768)
!4420 = !DILocation(line: 979, column: 28, scope: !768)
!4421 = !DILocation(line: 979, column: 33, scope: !768)
!4422 = !DILocation(line: 979, column: 39, scope: !768)
!4423 = !DILocation(line: 979, column: 37, scope: !768)
!4424 = !DILocation(line: 979, column: 17, scope: !768)
!4425 = !DILocation(line: 979, column: 22, scope: !768)
!4426 = !DILocation(line: 979, column: 26, scope: !768)
!4427 = !DILocation(line: 980, column: 35, scope: !768)
!4428 = !DILocation(line: 980, column: 40, scope: !768)
!4429 = !DILocation(line: 980, column: 17, scope: !768)
!4430 = !DILocation(line: 980, column: 22, scope: !768)
!4431 = !DILocation(line: 980, column: 33, scope: !768)
!4432 = !DILocation(line: 981, column: 24, scope: !768)
!4433 = !DILocation(line: 981, column: 29, scope: !768)
!4434 = !DILocation(line: 981, column: 35, scope: !768)
!4435 = !DILocation(line: 981, column: 33, scope: !768)
!4436 = !DILocation(line: 981, column: 43, scope: !768)
!4437 = !DILocation(line: 981, column: 17, scope: !768)
!4438 = !DILocation(line: 982, column: 28, scope: !768)
!4439 = !DILocation(line: 982, column: 17, scope: !768)
!4440 = !DILocation(line: 983, column: 28, scope: !768)
!4441 = !DILocation(line: 983, column: 33, scope: !768)
!4442 = !DILocation(line: 983, column: 39, scope: !768)
!4443 = !DILocation(line: 983, column: 37, scope: !768)
!4444 = !DILocation(line: 983, column: 17, scope: !768)
!4445 = !DILocation(line: 983, column: 22, scope: !768)
!4446 = !DILocation(line: 983, column: 26, scope: !768)
!4447 = !DILocation(line: 984, column: 28, scope: !768)
!4448 = !DILocation(line: 984, column: 33, scope: !768)
!4449 = !DILocation(line: 984, column: 37, scope: !768)
!4450 = !DILocation(line: 984, column: 17, scope: !768)
!4451 = !DILocation(line: 984, column: 22, scope: !768)
!4452 = !DILocation(line: 984, column: 26, scope: !768)
!4453 = !DILocation(line: 985, column: 30, scope: !768)
!4454 = !DILocation(line: 985, column: 35, scope: !768)
!4455 = !DILocation(line: 985, column: 41, scope: !768)
!4456 = !DILocation(line: 985, column: 39, scope: !768)
!4457 = !DILocation(line: 985, column: 17, scope: !768)
!4458 = !DILocation(line: 985, column: 22, scope: !768)
!4459 = !DILocation(line: 985, column: 28, scope: !768)
!4460 = !DILocation(line: 986, column: 13, scope: !769)
!4461 = !DILocation(line: 986, column: 13, scope: !4462)
!4462 = !DILexicalBlockFile(scope: !769, file: !439, discriminator: 1)
!4463 = !DILocation(line: 986, column: 13, scope: !768)
!4464 = !DILocation(line: 988, column: 17, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !769, file: !439, line: 987, column: 18)
!4466 = !DILocation(line: 988, column: 22, scope: !4465)
!4467 = !DILocation(line: 988, column: 28, scope: !4465)
!4468 = !DILocation(line: 989, column: 21, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !439, line: 989, column: 21)
!4470 = !DILocation(line: 989, column: 26, scope: !4469)
!4471 = !DILocation(line: 989, column: 30, scope: !4469)
!4472 = !DILocation(line: 989, column: 21, scope: !4465)
!4473 = !DILocation(line: 990, column: 32, scope: !4469)
!4474 = !DILocation(line: 990, column: 37, scope: !4469)
!4475 = !DILocation(line: 990, column: 21, scope: !4469)
!4476 = !DILocation(line: 991, column: 28, scope: !4465)
!4477 = !DILocation(line: 991, column: 17, scope: !4465)
!4478 = !DILocation(line: 991, column: 22, scope: !4465)
!4479 = !DILocation(line: 991, column: 26, scope: !4465)
!4480 = !DILocation(line: 992, column: 35, scope: !4465)
!4481 = !DILocation(line: 992, column: 40, scope: !4465)
!4482 = !DILocation(line: 992, column: 17, scope: !4465)
!4483 = !DILocation(line: 992, column: 22, scope: !4465)
!4484 = !DILocation(line: 992, column: 33, scope: !4465)
!4485 = !DILocation(line: 993, column: 28, scope: !4465)
!4486 = !DILocation(line: 993, column: 33, scope: !4465)
!4487 = !DILocation(line: 993, column: 17, scope: !4465)
!4488 = !DILocation(line: 993, column: 22, scope: !4465)
!4489 = !DILocation(line: 993, column: 26, scope: !4465)
!4490 = !DILocation(line: 994, column: 35, scope: !4465)
!4491 = !DILocation(line: 994, column: 40, scope: !4465)
!4492 = !DILocation(line: 994, column: 17, scope: !4465)
!4493 = !DILocation(line: 994, column: 22, scope: !4465)
!4494 = !DILocation(line: 994, column: 33, scope: !4465)
!4495 = !DILocation(line: 995, column: 150, scope: !4465)
!4496 = !DILocation(line: 995, column: 155, scope: !4465)
!4497 = !DILocation(line: 995, column: 137, scope: !4465)
!4498 = !DILocation(line: 995, column: 17, scope: !4465)
!4499 = !DILocation(line: 995, column: 22, scope: !4465)
!4500 = !DILocation(line: 995, column: 26, scope: !4465)
!4501 = !DILocation(line: 996, column: 28, scope: !4465)
!4502 = !DILocation(line: 996, column: 33, scope: !4465)
!4503 = !DILocation(line: 996, column: 37, scope: !4465)
!4504 = !DILocation(line: 996, column: 17, scope: !4465)
!4505 = !DILocation(line: 996, column: 22, scope: !4465)
!4506 = !DILocation(line: 996, column: 26, scope: !4465)
!4507 = !DILocation(line: 998, column: 9, scope: !752)
!4508 = !DILocation(line: 998, column: 9, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !752, file: !439, discriminator: 1)
!4510 = !DILocation(line: 998, column: 9, scope: !751)
!4511 = !DILocation(line: 1000, column: 13, scope: !776)
!4512 = !DILocation(line: 1000, column: 17, scope: !776)
!4513 = !DILocation(line: 1001, column: 13, scope: !776)
!4514 = !DILocation(line: 1001, column: 24, scope: !776)
!4515 = !DILocation(line: 1002, column: 13, scope: !776)
!4516 = !DILocation(line: 1002, column: 19, scope: !776)
!4517 = !DILocation(line: 1003, column: 17, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !776, file: !439, line: 1003, column: 17)
!4519 = !DILocation(line: 1003, column: 22, scope: !4518)
!4520 = !DILocation(line: 1003, column: 28, scope: !4518)
!4521 = !DILocation(line: 1003, column: 17, scope: !776)
!4522 = !DILocation(line: 1004, column: 21, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !439, line: 1004, column: 21)
!4524 = distinct !DILexicalBlock(scope: !4518, file: !439, line: 1003, column: 43)
!4525 = !DILocation(line: 1004, column: 26, scope: !4523)
!4526 = !DILocation(line: 1004, column: 30, scope: !4523)
!4527 = !DILocation(line: 1004, column: 21, scope: !4524)
!4528 = !DILocation(line: 1006, column: 25, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4523, file: !439, line: 1004, column: 45)
!4530 = !DILocation(line: 1005, column: 21, scope: !4529)
!4531 = !DILocation(line: 1005, column: 26, scope: !4529)
!4532 = !DILocation(line: 1005, column: 30, scope: !4529)
!4533 = !DILocation(line: 1007, column: 25, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4529, file: !439, line: 1007, column: 25)
!4535 = !DILocation(line: 1007, column: 30, scope: !4534)
!4536 = !DILocation(line: 1007, column: 34, scope: !4534)
!4537 = !DILocation(line: 1007, column: 25, scope: !4529)
!4538 = !DILocation(line: 1008, column: 25, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !439, line: 1007, column: 49)
!4540 = !DILocation(line: 1008, column: 30, scope: !4539)
!4541 = !DILocation(line: 1008, column: 35, scope: !4539)
!4542 = !DILocation(line: 1009, column: 25, scope: !4539)
!4543 = !DILocation(line: 1011, column: 32, scope: !4529)
!4544 = !DILocation(line: 1011, column: 37, scope: !4529)
!4545 = !DILocation(line: 1011, column: 41, scope: !4529)
!4546 = !DILocation(line: 1011, column: 21, scope: !4529)
!4547 = !DILocation(line: 1011, column: 26, scope: !4529)
!4548 = !DILocation(line: 1011, column: 30, scope: !4529)
!4549 = !DILocation(line: 1012, column: 17, scope: !4529)
!4550 = !DILocation(line: 1013, column: 36, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4524, file: !439, line: 1013, column: 21)
!4552 = !DILocation(line: 1013, column: 41, scope: !4551)
!4553 = !DILocation(line: 1013, column: 52, scope: !4551)
!4554 = !DILocation(line: 1013, column: 57, scope: !4551)
!4555 = !DILocation(line: 1013, column: 63, scope: !4551)
!4556 = !DILocation(line: 1013, column: 68, scope: !4551)
!4557 = !DILocation(line: 1013, column: 61, scope: !4551)
!4558 = !DILocation(line: 1013, column: 46, scope: !4551)
!4559 = !DILocation(line: 1014, column: 27, scope: !4551)
!4560 = !DILocation(line: 1013, column: 21, scope: !4551)
!4561 = !DILocation(line: 1014, column: 32, scope: !4551)
!4562 = !DILocation(line: 1013, column: 21, scope: !4524)
!4563 = !DILocation(line: 1015, column: 21, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4551, file: !439, line: 1014, column: 47)
!4565 = !DILocation(line: 1015, column: 26, scope: !4564)
!4566 = !DILocation(line: 1015, column: 31, scope: !4564)
!4567 = !DILocation(line: 1016, column: 26, scope: !4564)
!4568 = !DILocation(line: 1017, column: 17, scope: !4564)
!4569 = !DILocation(line: 1019, column: 21, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4551, file: !439, line: 1018, column: 22)
!4571 = !DILocation(line: 1019, column: 26, scope: !4570)
!4572 = !DILocation(line: 1019, column: 31, scope: !4570)
!4573 = !DILocation(line: 1020, column: 154, scope: !4570)
!4574 = !DILocation(line: 1020, column: 159, scope: !4570)
!4575 = !DILocation(line: 1020, column: 141, scope: !4570)
!4576 = !DILocation(line: 1020, column: 21, scope: !4570)
!4577 = !DILocation(line: 1020, column: 26, scope: !4570)
!4578 = !DILocation(line: 1020, column: 30, scope: !4570)
!4579 = !DILocation(line: 1021, column: 28, scope: !4570)
!4580 = !DILocation(line: 1021, column: 33, scope: !4570)
!4581 = !DILocation(line: 1021, column: 41, scope: !4570)
!4582 = !DILocation(line: 1021, column: 26, scope: !4570)
!4583 = !DILocation(line: 1023, column: 13, scope: !4524)
!4584 = !DILocation(line: 1025, column: 23, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4518, file: !439, line: 1024, column: 18)
!4586 = !DILocation(line: 1025, column: 28, scope: !4585)
!4587 = !DILocation(line: 1025, column: 34, scope: !4585)
!4588 = !DILocation(line: 1025, column: 39, scope: !4585)
!4589 = !DILocation(line: 1025, column: 32, scope: !4585)
!4590 = !DILocation(line: 1025, column: 21, scope: !4585)
!4591 = !DILocation(line: 1026, column: 35, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4585, file: !439, line: 1026, column: 21)
!4593 = !DILocation(line: 1026, column: 21, scope: !4592)
!4594 = !DILocation(line: 1026, column: 21, scope: !4585)
!4595 = !DILocation(line: 1027, column: 21, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !439, line: 1026, column: 41)
!4597 = !DILocation(line: 1027, column: 26, scope: !4596)
!4598 = !DILocation(line: 1027, column: 31, scope: !4596)
!4599 = !DILocation(line: 1028, column: 26, scope: !4596)
!4600 = !DILocation(line: 1029, column: 17, scope: !4596)
!4601 = !DILocation(line: 1031, column: 21, scope: !4592)
!4602 = !DILocation(line: 1031, column: 26, scope: !4592)
!4603 = !DILocation(line: 1031, column: 31, scope: !4592)
!4604 = !DILocation(line: 1033, column: 13, scope: !776)
!4605 = !DILocation(line: 1033, column: 18, scope: !776)
!4606 = !DILocation(line: 1033, column: 24, scope: !776)
!4607 = !DILocation(line: 1035, column: 13, scope: !776)
!4608 = !DILocation(line: 1035, column: 21, scope: !4609)
!4609 = !DILexicalBlockFile(scope: !4610, file: !439, discriminator: 2)
!4610 = !DILexicalBlockFile(scope: !776, file: !439, discriminator: 1)
!4611 = !DILocation(line: 1035, column: 20, scope: !776)
!4612 = !DILocation(line: 1036, column: 17, scope: !780)
!4613 = !DILocation(line: 1036, column: 28, scope: !780)
!4614 = !DILocation(line: 1036, column: 39, scope: !780)
!4615 = !DILocation(line: 1036, column: 44, scope: !780)
!4616 = !DILocation(line: 1036, column: 50, scope: !780)
!4617 = !DILocation(line: 1036, column: 39, scope: !4618)
!4618 = !DILexicalBlockFile(scope: !780, file: !439, discriminator: 1)
!4619 = !DILocation(line: 1037, column: 27, scope: !780)
!4620 = !DILocation(line: 1037, column: 32, scope: !780)
!4621 = !DILocation(line: 1037, column: 40, scope: !780)
!4622 = !DILocation(line: 1037, column: 45, scope: !780)
!4623 = !DILocation(line: 1037, column: 38, scope: !780)
!4624 = !DILocation(line: 1036, column: 28, scope: !4625)
!4625 = !DILexicalBlockFile(scope: !4626, file: !439, discriminator: 3)
!4626 = !DILexicalBlockFile(scope: !780, file: !439, discriminator: 2)
!4627 = !DILocation(line: 1038, column: 17, scope: !780)
!4628 = !DILocation(line: 1038, column: 28, scope: !780)
!4629 = !DILocation(line: 1038, column: 39, scope: !780)
!4630 = !DILocation(line: 1038, column: 44, scope: !780)
!4631 = !DILocation(line: 1038, column: 50, scope: !780)
!4632 = !DILocation(line: 1038, column: 55, scope: !780)
!4633 = !DILocation(line: 1038, column: 48, scope: !780)
!4634 = !DILocation(line: 1039, column: 17, scope: !780)
!4635 = !DILocation(line: 1039, column: 28, scope: !780)
!4636 = !DILocation(line: 1039, column: 38, scope: !780)
!4637 = !DILocation(line: 1039, column: 47, scope: !780)
!4638 = !DILocation(line: 1040, column: 17, scope: !780)
!4639 = !DILocation(line: 1040, column: 23, scope: !780)
!4640 = !DILocation(line: 1040, column: 32, scope: !780)
!4641 = !DILocation(line: 1040, column: 37, scope: !780)
!4642 = !DILocation(line: 1041, column: 48, scope: !780)
!4643 = !DILocation(line: 1041, column: 56, scope: !780)
!4644 = !DILocation(line: 1041, column: 34, scope: !780)
!4645 = !DILocation(line: 1041, column: 24, scope: !780)
!4646 = !DILocation(line: 1043, column: 21, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !780, file: !439, line: 1043, column: 21)
!4648 = !DILocation(line: 1043, column: 28, scope: !4647)
!4649 = !DILocation(line: 1043, column: 21, scope: !780)
!4650 = !DILocation(line: 1044, column: 21, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4647, file: !439, line: 1043, column: 43)
!4652 = !DILocation(line: 1044, column: 26, scope: !4651)
!4653 = !DILocation(line: 1044, column: 31, scope: !4651)
!4654 = !DILocation(line: 1045, column: 32, scope: !4651)
!4655 = !DILocation(line: 1045, column: 37, scope: !4651)
!4656 = !DILocation(line: 1045, column: 21, scope: !4651)
!4657 = !DILocation(line: 1045, column: 26, scope: !4651)
!4658 = !DILocation(line: 1045, column: 30, scope: !4651)
!4659 = !DILocation(line: 1046, column: 21, scope: !4651)
!4660 = !DILocation(line: 1048, column: 28, scope: !780)
!4661 = !DILocation(line: 1048, column: 17, scope: !780)
!4662 = !DILocation(line: 1048, column: 22, scope: !780)
!4663 = !DILocation(line: 1048, column: 26, scope: !780)
!4664 = !DILocation(line: 1049, column: 28, scope: !780)
!4665 = !DILocation(line: 1049, column: 33, scope: !780)
!4666 = !DILocation(line: 1049, column: 39, scope: !780)
!4667 = !DILocation(line: 1049, column: 37, scope: !780)
!4668 = !DILocation(line: 1049, column: 17, scope: !780)
!4669 = !DILocation(line: 1049, column: 22, scope: !780)
!4670 = !DILocation(line: 1049, column: 26, scope: !780)
!4671 = !DILocation(line: 1050, column: 28, scope: !780)
!4672 = !DILocation(line: 1050, column: 33, scope: !780)
!4673 = !DILocation(line: 1050, column: 39, scope: !780)
!4674 = !DILocation(line: 1050, column: 37, scope: !780)
!4675 = !DILocation(line: 1050, column: 17, scope: !780)
!4676 = !DILocation(line: 1050, column: 22, scope: !780)
!4677 = !DILocation(line: 1050, column: 26, scope: !780)
!4678 = !DILocation(line: 1051, column: 30, scope: !780)
!4679 = !DILocation(line: 1051, column: 39, scope: !780)
!4680 = !DILocation(line: 1051, column: 30, scope: !4618)
!4681 = !DILocation(line: 1052, column: 26, scope: !780)
!4682 = !DILocation(line: 1052, column: 31, scope: !780)
!4683 = !DILocation(line: 1052, column: 37, scope: !780)
!4684 = !DILocation(line: 1052, column: 35, scope: !780)
!4685 = !DILocation(line: 1051, column: 17, scope: !4625)
!4686 = !DILocation(line: 1051, column: 22, scope: !780)
!4687 = !DILocation(line: 1051, column: 28, scope: !780)
!4688 = !DILocation(line: 1053, column: 36, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !780, file: !439, line: 1053, column: 21)
!4690 = !DILocation(line: 1053, column: 41, scope: !4689)
!4691 = !DILocation(line: 1054, column: 38, scope: !4689)
!4692 = !DILocation(line: 1054, column: 43, scope: !4689)
!4693 = !DILocation(line: 1054, column: 49, scope: !4689)
!4694 = !DILocation(line: 1054, column: 54, scope: !4689)
!4695 = !DILocation(line: 1054, column: 47, scope: !4689)
!4696 = !DILocation(line: 1054, column: 32, scope: !4689)
!4697 = !DILocation(line: 1055, column: 32, scope: !4689)
!4698 = !DILocation(line: 1053, column: 21, scope: !4689)
!4699 = !DILocation(line: 1055, column: 37, scope: !4689)
!4700 = !DILocation(line: 1053, column: 21, scope: !780)
!4701 = !DILocation(line: 1059, column: 25, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !439, line: 1059, column: 25)
!4703 = distinct !DILexicalBlock(scope: !4689, file: !439, line: 1055, column: 52)
!4704 = !DILocation(line: 1059, column: 30, scope: !4702)
!4705 = !DILocation(line: 1059, column: 25, scope: !4703)
!4706 = !DILocation(line: 1060, column: 25, scope: !4702)
!4707 = !DILocation(line: 1063, column: 28, scope: !4703)
!4708 = !DILocation(line: 1063, column: 33, scope: !4703)
!4709 = !DILocation(line: 1063, column: 21, scope: !4703)
!4710 = !DILocation(line: 1064, column: 17, scope: !4703)
!4711 = !DILocation(line: 1065, column: 150, scope: !780)
!4712 = !DILocation(line: 1065, column: 155, scope: !780)
!4713 = !DILocation(line: 1065, column: 137, scope: !780)
!4714 = !DILocation(line: 1065, column: 17, scope: !780)
!4715 = !DILocation(line: 1065, column: 22, scope: !780)
!4716 = !DILocation(line: 1065, column: 26, scope: !780)
!4717 = !DILocation(line: 1066, column: 24, scope: !780)
!4718 = !DILocation(line: 1066, column: 29, scope: !780)
!4719 = !DILocation(line: 1066, column: 37, scope: !780)
!4720 = !DILocation(line: 1066, column: 22, scope: !780)
!4721 = !DILocation(line: 1067, column: 13, scope: !776)
!4722 = !DILocation(line: 1067, column: 13, scope: !4610)
!4723 = !DILocation(line: 1068, column: 17, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !776, file: !439, line: 1068, column: 17)
!4725 = !DILocation(line: 1068, column: 22, scope: !4724)
!4726 = !DILocation(line: 1068, column: 26, scope: !4724)
!4727 = !DILocation(line: 1068, column: 17, scope: !776)
!4728 = !DILocation(line: 1069, column: 28, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4724, file: !439, line: 1068, column: 41)
!4730 = !DILocation(line: 1069, column: 33, scope: !4729)
!4731 = !DILocation(line: 1069, column: 39, scope: !4729)
!4732 = !DILocation(line: 1069, column: 37, scope: !4729)
!4733 = !DILocation(line: 1069, column: 17, scope: !4729)
!4734 = !DILocation(line: 1069, column: 22, scope: !4729)
!4735 = !DILocation(line: 1069, column: 26, scope: !4729)
!4736 = !DILocation(line: 1070, column: 35, scope: !4729)
!4737 = !DILocation(line: 1070, column: 40, scope: !4729)
!4738 = !DILocation(line: 1070, column: 17, scope: !4729)
!4739 = !DILocation(line: 1070, column: 22, scope: !4729)
!4740 = !DILocation(line: 1070, column: 33, scope: !4729)
!4741 = !DILocation(line: 1073, column: 22, scope: !4729)
!4742 = !DILocation(line: 1073, column: 27, scope: !4729)
!4743 = !DILocation(line: 1073, column: 31, scope: !4729)
!4744 = !DILocation(line: 1073, column: 20, scope: !4729)
!4745 = !DILocation(line: 1074, column: 21, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4729, file: !439, line: 1074, column: 21)
!4747 = !DILocation(line: 1074, column: 27, scope: !4746)
!4748 = !DILocation(line: 1074, column: 32, scope: !4746)
!4749 = !DILocation(line: 1074, column: 24, scope: !4746)
!4750 = !DILocation(line: 1074, column: 36, scope: !4746)
!4751 = !DILocation(line: 1074, column: 40, scope: !4752)
!4752 = !DILexicalBlockFile(scope: !4746, file: !439, discriminator: 1)
!4753 = !DILocation(line: 1074, column: 39, scope: !4746)
!4754 = !DILocation(line: 1074, column: 43, scope: !4746)
!4755 = !DILocation(line: 1074, column: 21, scope: !4729)
!4756 = !DILocation(line: 1075, column: 24, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4746, file: !439, line: 1074, column: 52)
!4758 = !DILocation(line: 1075, column: 27, scope: !4757)
!4759 = !DILocation(line: 1076, column: 22, scope: !4757)
!4760 = !DILocation(line: 1076, column: 25, scope: !4757)
!4761 = !DILocation(line: 1077, column: 32, scope: !4757)
!4762 = !DILocation(line: 1077, column: 21, scope: !4757)
!4763 = !DILocation(line: 1077, column: 26, scope: !4757)
!4764 = !DILocation(line: 1077, column: 30, scope: !4757)
!4765 = !DILocation(line: 1078, column: 17, scope: !4757)
!4766 = !DILocation(line: 1079, column: 13, scope: !4729)
!4767 = !DILocation(line: 1080, column: 9, scope: !752)
!4768 = !DILocation(line: 1080, column: 9, scope: !4509)
!4769 = !DILocation(line: 1081, column: 13, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !747, file: !439, line: 1081, column: 13)
!4771 = !DILocation(line: 1081, column: 18, scope: !4770)
!4772 = !DILocation(line: 1081, column: 23, scope: !4770)
!4773 = !DILocation(line: 1081, column: 13, scope: !747)
!4774 = !DILocation(line: 1082, column: 17, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !439, line: 1082, column: 17)
!4776 = distinct !DILexicalBlock(scope: !4770, file: !439, line: 1081, column: 30)
!4777 = !DILocation(line: 1082, column: 22, scope: !4775)
!4778 = !DILocation(line: 1082, column: 29, scope: !4775)
!4779 = !DILocation(line: 1082, column: 17, scope: !4776)
!4780 = !DILocation(line: 1083, column: 17, scope: !4775)
!4781 = !DILocation(line: 1084, column: 24, scope: !4776)
!4782 = !DILocation(line: 1084, column: 29, scope: !4776)
!4783 = !DILocation(line: 1084, column: 13, scope: !4776)
!4784 = !DILocation(line: 1084, column: 18, scope: !4776)
!4785 = !DILocation(line: 1084, column: 22, scope: !4776)
!4786 = !DILocation(line: 1085, column: 13, scope: !4776)
!4787 = !DILocation(line: 900, column: 5, scope: !748)
!4788 = !DILocation(line: 1089, column: 1, scope: !741)
!4789 = !DILocation(line: 1095, column: 30, scope: !861)
!4790 = !DILocation(line: 1095, column: 39, scope: !861)
!4791 = !DILocation(line: 1097, column: 9, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !861, file: !439, line: 1097, column: 9)
!4793 = !DILocation(line: 1097, column: 11, scope: !4792)
!4794 = !DILocation(line: 1097, column: 9, scope: !861)
!4795 = !DILocation(line: 1098, column: 15, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !439, line: 1098, column: 13)
!4797 = distinct !DILexicalBlock(scope: !4792, file: !439, line: 1097, column: 20)
!4798 = !DILocation(line: 1098, column: 20, scope: !4796)
!4799 = !DILocation(line: 1098, column: 13, scope: !4796)
!4800 = !DILocation(line: 1098, column: 26, scope: !4796)
!4801 = !DILocation(line: 1098, column: 31, scope: !4796)
!4802 = !DILocation(line: 1098, column: 24, scope: !4796)
!4803 = !DILocation(line: 1098, column: 13, scope: !4797)
!4804 = !DILocation(line: 1099, column: 13, scope: !4796)
!4805 = !DILocation(line: 1100, column: 14, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4797, file: !439, line: 1100, column: 13)
!4807 = !DILocation(line: 1100, column: 19, scope: !4806)
!4808 = !DILocation(line: 1100, column: 13, scope: !4806)
!4809 = !DILocation(line: 1100, column: 26, scope: !4806)
!4810 = !DILocation(line: 1100, column: 23, scope: !4806)
!4811 = !DILocation(line: 1100, column: 13, scope: !4797)
!4812 = !DILocation(line: 1101, column: 25, scope: !4806)
!4813 = !DILocation(line: 1101, column: 14, scope: !4806)
!4814 = !DILocation(line: 1101, column: 19, scope: !4806)
!4815 = !DILocation(line: 1101, column: 23, scope: !4806)
!4816 = !DILocation(line: 1101, column: 13, scope: !4806)
!4817 = !DILocation(line: 1102, column: 5, scope: !4797)
!4818 = !DILocation(line: 1103, column: 1, scope: !861)
!4819 = !DILocation(line: 1273, column: 31, scope: !867)
!4820 = !DILocation(line: 1275, column: 9, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !867, file: !439, line: 1275, column: 9)
!4822 = !DILocation(line: 1275, column: 14, scope: !4821)
!4823 = !DILocation(line: 1275, column: 9, scope: !867)
!4824 = !DILocation(line: 1276, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4821, file: !439, line: 1275, column: 24)
!4826 = !DILocation(line: 1276, column: 14, scope: !4825)
!4827 = !DILocation(line: 1276, column: 19, scope: !4825)
!4828 = !DILocation(line: 1277, column: 20, scope: !4825)
!4829 = !DILocation(line: 1277, column: 25, scope: !4825)
!4830 = !DILocation(line: 1277, column: 9, scope: !4825)
!4831 = !DILocation(line: 1277, column: 14, scope: !4825)
!4832 = !DILocation(line: 1277, column: 18, scope: !4825)
!4833 = !DILocation(line: 1278, column: 9, scope: !4825)
!4834 = !DILocation(line: 1280, column: 9, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !867, file: !439, line: 1280, column: 9)
!4836 = !DILocation(line: 1280, column: 14, scope: !4835)
!4837 = !DILocation(line: 1280, column: 9, scope: !867)
!4838 = !DILocation(line: 1286, column: 47, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4835, file: !439, line: 1280, column: 26)
!4840 = !DILocation(line: 1286, column: 52, scope: !4839)
!4841 = !DILocation(line: 1285, column: 9, scope: !4839)
!4842 = !DILocation(line: 1288, column: 9, scope: !4839)
!4843 = !DILocation(line: 1288, column: 14, scope: !4839)
!4844 = !DILocation(line: 1288, column: 25, scope: !4839)
!4845 = !DILocation(line: 1289, column: 5, scope: !4839)
!4846 = !DILocation(line: 1290, column: 5, scope: !867)
!4847 = !DILocation(line: 1291, column: 1, scope: !867)
!4848 = !DILocation(line: 1300, column: 37, scope: !870)
!4849 = !DILocation(line: 1302, column: 5, scope: !870)
!4850 = !DILocation(line: 1302, column: 15, scope: !870)
!4851 = !DILocation(line: 1303, column: 5, scope: !870)
!4852 = !DILocation(line: 1303, column: 9, scope: !870)
!4853 = !DILocation(line: 1304, column: 30, scope: !870)
!4854 = !DILocation(line: 1304, column: 35, scope: !870)
!4855 = !DILocation(line: 1304, column: 42, scope: !870)
!4856 = !DILocation(line: 1304, column: 47, scope: !870)
!4857 = !DILocation(line: 1304, column: 53, scope: !870)
!4858 = !DILocation(line: 1304, column: 58, scope: !870)
!4859 = !DILocation(line: 1304, column: 51, scope: !870)
!4860 = !DILocation(line: 1304, column: 9, scope: !870)
!4861 = !DILocation(line: 1304, column: 7, scope: !870)
!4862 = !DILocation(line: 1305, column: 9, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !870, file: !439, line: 1305, column: 9)
!4864 = !DILocation(line: 1305, column: 11, scope: !4863)
!4865 = !DILocation(line: 1305, column: 25, scope: !4863)
!4866 = !DILocation(line: 1305, column: 62, scope: !4867)
!4867 = !DILexicalBlockFile(scope: !4863, file: !439, discriminator: 1)
!4868 = !DILocation(line: 1305, column: 46, scope: !4863)
!4869 = !DILocation(line: 1305, column: 66, scope: !4863)
!4870 = !DILocation(line: 1305, column: 72, scope: !4863)
!4871 = !DILocation(line: 1305, column: 44, scope: !4863)
!4872 = !DILocation(line: 1305, column: 44, scope: !4873)
!4873 = !DILexicalBlockFile(scope: !4863, file: !439, discriminator: 2)
!4874 = !DILocation(line: 1305, column: 115, scope: !4875)
!4875 = !DILexicalBlockFile(scope: !4863, file: !439, discriminator: 3)
!4876 = !DILocation(line: 1305, column: 85, scope: !4863)
!4877 = !DILocation(line: 1305, column: 121, scope: !4878)
!4878 = !DILexicalBlockFile(scope: !4879, file: !439, discriminator: 5)
!4879 = !DILexicalBlockFile(scope: !4863, file: !439, discriminator: 4)
!4880 = !DILocation(line: 1305, column: 9, scope: !870)
!4881 = !DILocation(line: 1306, column: 36, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !439, line: 1306, column: 13)
!4883 = distinct !DILexicalBlock(scope: !4863, file: !439, line: 1305, column: 128)
!4884 = !DILocation(line: 1306, column: 13, scope: !4882)
!4885 = !DILocation(line: 1306, column: 13, scope: !4883)
!4886 = !DILocation(line: 1307, column: 13, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4882, file: !439, line: 1306, column: 63)
!4888 = !DILocation(line: 1308, column: 13, scope: !4887)
!4889 = !DILocation(line: 1308, column: 18, scope: !4887)
!4890 = !DILocation(line: 1308, column: 23, scope: !4887)
!4891 = !DILocation(line: 1309, column: 9, scope: !4887)
!4892 = !DILocation(line: 1310, column: 13, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4882, file: !439, line: 1309, column: 16)
!4894 = !DILocation(line: 1310, column: 18, scope: !4893)
!4895 = !DILocation(line: 1310, column: 23, scope: !4893)
!4896 = !DILocation(line: 1312, column: 9, scope: !4883)
!4897 = !DILocation(line: 1314, column: 37, scope: !870)
!4898 = !DILocation(line: 1314, column: 14, scope: !870)
!4899 = !DILocation(line: 1314, column: 12, scope: !870)
!4900 = !DILocation(line: 1315, column: 5, scope: !870)
!4901 = !DILocation(line: 1315, column: 10, scope: !4902)
!4902 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 1)
!4903 = !DILocation(line: 1315, column: 20, scope: !876)
!4904 = !DILocation(line: 1315, column: 50, scope: !876)
!4905 = !DILocation(line: 1315, column: 62, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !876, file: !439, line: 1315, column: 59)
!4907 = !DILocation(line: 1315, column: 79, scope: !4906)
!4908 = !DILocation(line: 1315, column: 59, scope: !4906)
!4909 = !DILocation(line: 1315, column: 89, scope: !4906)
!4910 = !DILocation(line: 1315, column: 59, scope: !876)
!4911 = !DILocation(line: 1315, column: 59, scope: !4912)
!4912 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 2)
!4913 = !DILocation(line: 1315, column: 120, scope: !4914)
!4914 = !DILexicalBlockFile(scope: !4906, file: !439, discriminator: 3)
!4915 = !DILocation(line: 1315, column: 138, scope: !4906)
!4916 = !DILocation(line: 1315, column: 148, scope: !4906)
!4917 = !DILocation(line: 1315, column: 173, scope: !4906)
!4918 = !DILocation(line: 1315, column: 104, scope: !4906)
!4919 = !DILocation(line: 1315, column: 192, scope: !4920)
!4920 = !DILexicalBlockFile(scope: !870, file: !439, discriminator: 4)
!4921 = !DILocation(line: 1315, column: 192, scope: !876)
!4922 = !DILocation(line: 1315, column: 192, scope: !4923)
!4923 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 5)
!4924 = !DILocation(line: 1316, column: 9, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !870, file: !439, line: 1316, column: 9)
!4926 = !DILocation(line: 1316, column: 16, scope: !4925)
!4927 = !DILocation(line: 1316, column: 9, scope: !870)
!4928 = !DILocation(line: 1317, column: 9, scope: !4925)
!4929 = !DILocation(line: 1317, column: 14, scope: !4925)
!4930 = !DILocation(line: 1317, column: 19, scope: !4925)
!4931 = !DILocation(line: 1318, column: 12, scope: !870)
!4932 = !DILocation(line: 1318, column: 5, scope: !870)
!4933 = !DILocation(line: 1319, column: 1, scope: !870)
!4934 = !DILocation(line: 577, column: 22, scope: !784)
!4935 = !DILocation(line: 577, column: 29, scope: !784)
!4936 = !DILocation(line: 577, column: 53, scope: !784)
!4937 = !DILocation(line: 579, column: 5, scope: !784)
!4938 = !DILocation(line: 579, column: 11, scope: !784)
!4939 = !DILocation(line: 580, column: 5, scope: !784)
!4940 = !DILocation(line: 580, column: 9, scope: !784)
!4941 = !DILocation(line: 581, column: 5, scope: !784)
!4942 = !DILocation(line: 582, column: 13, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !439, line: 582, column: 13)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !439, line: 581, column: 14)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !439, line: 581, column: 5)
!4946 = distinct !DILexicalBlock(scope: !784, file: !439, line: 581, column: 5)
!4947 = !DILocation(line: 582, column: 18, scope: !4943)
!4948 = !DILocation(line: 582, column: 33, scope: !4943)
!4949 = !DILocation(line: 582, column: 13, scope: !4944)
!4950 = !DILocation(line: 585, column: 29, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4943, file: !439, line: 582, column: 50)
!4952 = !DILocation(line: 585, column: 32, scope: !4951)
!4953 = !DILocation(line: 585, column: 38, scope: !4951)
!4954 = !DILocation(line: 585, column: 20, scope: !4951)
!4955 = !DILocation(line: 585, column: 18, scope: !4951)
!4956 = !DILocation(line: 586, column: 13, scope: !4951)
!4957 = !DILocation(line: 587, column: 20, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4943, file: !439, line: 587, column: 20)
!4959 = !DILocation(line: 587, column: 25, scope: !4958)
!4960 = !DILocation(line: 587, column: 40, scope: !4958)
!4961 = !DILocation(line: 587, column: 20, scope: !4943)
!4962 = !DILocation(line: 589, column: 45, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4958, file: !439, line: 587, column: 54)
!4964 = !DILocation(line: 589, column: 48, scope: !4963)
!4965 = !DILocation(line: 590, column: 45, scope: !4963)
!4966 = !DILocation(line: 590, column: 50, scope: !4963)
!4967 = !DILocation(line: 589, column: 20, scope: !4963)
!4968 = !DILocation(line: 589, column: 18, scope: !4963)
!4969 = !DILocation(line: 591, column: 13, scope: !4963)
!4970 = !DILocation(line: 596, column: 61, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !439, line: 596, column: 17)
!4972 = distinct !DILexicalBlock(scope: !4958, file: !439, line: 592, column: 16)
!4973 = !DILocation(line: 596, column: 18, scope: !4971)
!4974 = !DILocation(line: 596, column: 17, scope: !4972)
!4975 = !DILocation(line: 597, column: 34, scope: !4971)
!4976 = !DILocation(line: 597, column: 24, scope: !4971)
!4977 = !DILocation(line: 597, column: 17, scope: !4971)
!4978 = !DILocation(line: 581, column: 5, scope: !4945)
!4979 = !DILocation(line: 601, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !784, file: !439, line: 601, column: 9)
!4981 = !DILocation(line: 601, column: 14, scope: !4980)
!4982 = !DILocation(line: 601, column: 28, scope: !4980)
!4983 = !DILocation(line: 601, column: 31, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !4980, file: !439, discriminator: 1)
!4985 = !DILocation(line: 601, column: 36, scope: !4980)
!4986 = !DILocation(line: 601, column: 43, scope: !4980)
!4987 = !DILocation(line: 601, column: 47, scope: !4980)
!4988 = !DILocation(line: 601, column: 51, scope: !4989)
!4989 = !DILexicalBlockFile(scope: !4980, file: !439, discriminator: 2)
!4990 = !DILocation(line: 601, column: 56, scope: !4980)
!4991 = !DILocation(line: 601, column: 51, scope: !4980)
!4992 = !DILocation(line: 601, column: 9, scope: !784)
!4993 = !DILocation(line: 602, column: 32, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !439, line: 602, column: 13)
!4995 = distinct !DILexicalBlock(scope: !4980, file: !439, line: 601, column: 74)
!4996 = !DILocation(line: 602, column: 45, scope: !4994)
!4997 = !DILocation(line: 602, column: 38, scope: !4994)
!4998 = !DILocation(line: 602, column: 52, scope: !4994)
!4999 = !DILocation(line: 602, column: 14, scope: !4994)
!5000 = !DILocation(line: 602, column: 13, scope: !4995)
!5001 = !DILocation(line: 603, column: 30, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4994, file: !439, line: 602, column: 71)
!5003 = !DILocation(line: 603, column: 20, scope: !5002)
!5004 = !DILocation(line: 603, column: 13, scope: !5002)
!5005 = !DILocation(line: 605, column: 5, scope: !4995)
!5006 = !DILocation(line: 609, column: 9, scope: !795)
!5007 = !DILocation(line: 609, column: 14, scope: !795)
!5008 = !DILocation(line: 609, column: 18, scope: !5009)
!5009 = !DILexicalBlockFile(scope: !795, file: !439, discriminator: 1)
!5010 = !DILocation(line: 609, column: 23, scope: !795)
!5011 = !DILocation(line: 609, column: 18, scope: !795)
!5012 = !DILocation(line: 609, column: 9, scope: !784)
!5013 = !DILocation(line: 610, column: 9, scope: !794)
!5014 = !DILocation(line: 610, column: 24, scope: !794)
!5015 = !DILocation(line: 611, column: 9, scope: !794)
!5016 = !DILocation(line: 611, column: 13, scope: !794)
!5017 = !DILocation(line: 612, column: 35, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !794, file: !439, line: 612, column: 9)
!5019 = !DILocation(line: 612, column: 16, scope: !5018)
!5020 = !DILocation(line: 612, column: 14, scope: !5018)
!5021 = !DILocation(line: 612, column: 42, scope: !5022)
!5022 = !DILexicalBlockFile(scope: !5023, file: !439, discriminator: 2)
!5023 = !DILexicalBlockFile(scope: !5024, file: !439, discriminator: 1)
!5024 = distinct !DILexicalBlock(scope: !5018, file: !439, line: 612, column: 9)
!5025 = !DILocation(line: 612, column: 41, scope: !5024)
!5026 = !DILocation(line: 612, column: 9, scope: !5018)
!5027 = !DILocation(line: 613, column: 39, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !439, line: 613, column: 17)
!5029 = !DILocation(line: 613, column: 28, scope: !5028)
!5030 = !DILocation(line: 613, column: 26, scope: !5028)
!5031 = !DILocation(line: 613, column: 17, scope: !5024)
!5032 = !DILocation(line: 614, column: 28, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !439, line: 613, column: 44)
!5034 = !DILocation(line: 614, column: 27, scope: !5033)
!5035 = !DILocation(line: 614, column: 25, scope: !5033)
!5036 = !DILocation(line: 615, column: 17, scope: !5033)
!5037 = !DILocation(line: 613, column: 41, scope: !5038)
!5038 = !DILexicalBlockFile(scope: !5028, file: !439, discriminator: 1)
!5039 = !DILocation(line: 612, column: 50, scope: !5024)
!5040 = !DILocation(line: 612, column: 47, scope: !5024)
!5041 = !DILocation(line: 612, column: 9, scope: !5024)
!5042 = !DILocation(line: 617, column: 5, scope: !795)
!5043 = !DILocation(line: 617, column: 5, scope: !794)
!5044 = !DILocation(line: 618, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !784, file: !439, line: 618, column: 9)
!5046 = !DILocation(line: 618, column: 9, scope: !784)
!5047 = !DILocation(line: 621, column: 22, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5045, file: !439, line: 618, column: 18)
!5049 = !DILocation(line: 626, column: 17, scope: !5048)
!5050 = !DILocation(line: 626, column: 26, scope: !5048)
!5051 = !DILocation(line: 626, column: 31, scope: !5048)
!5052 = !DILocation(line: 626, column: 41, scope: !5048)
!5053 = !DILocation(line: 626, column: 46, scope: !5048)
!5054 = !DILocation(line: 626, column: 53, scope: !5048)
!5055 = !DILocation(line: 621, column: 9, scope: !5048)
!5056 = !DILocation(line: 627, column: 26, scope: !5048)
!5057 = !DILocation(line: 627, column: 16, scope: !5048)
!5058 = !DILocation(line: 627, column: 9, scope: !5048)
!5059 = !DILocation(line: 630, column: 12, scope: !784)
!5060 = !DILocation(line: 630, column: 5, scope: !784)
!5061 = !DILocation(line: 631, column: 1, scope: !784)
!5062 = !DILocation(line: 634, column: 33, scope: !855)
!5063 = !DILocation(line: 636, column: 9, scope: !860)
!5064 = !DILocation(line: 636, column: 14, scope: !860)
!5065 = !DILocation(line: 636, column: 29, scope: !860)
!5066 = !DILocation(line: 636, column: 9, scope: !855)
!5067 = !DILocation(line: 637, column: 21, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !860, file: !439, line: 636, column: 46)
!5069 = !DILocation(line: 637, column: 26, scope: !5068)
!5070 = !DILocation(line: 637, column: 16, scope: !5068)
!5071 = !DILocation(line: 637, column: 9, scope: !5068)
!5072 = !DILocation(line: 639, column: 9, scope: !859)
!5073 = !DILocation(line: 639, column: 19, scope: !859)
!5074 = !DILocation(line: 639, column: 25, scope: !859)
!5075 = !DILocation(line: 639, column: 30, scope: !859)
!5076 = !DILocation(line: 640, column: 13, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !859, file: !439, line: 640, column: 13)
!5078 = !DILocation(line: 640, column: 17, scope: !5077)
!5079 = !DILocation(line: 640, column: 13, scope: !859)
!5080 = !DILocation(line: 641, column: 39, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5077, file: !439, line: 640, column: 32)
!5082 = !DILocation(line: 641, column: 44, scope: !5081)
!5083 = !DILocation(line: 641, column: 19, scope: !5081)
!5084 = !DILocation(line: 641, column: 17, scope: !5081)
!5085 = !DILocation(line: 642, column: 17, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5081, file: !439, line: 642, column: 17)
!5087 = !DILocation(line: 642, column: 21, scope: !5086)
!5088 = !DILocation(line: 642, column: 17, scope: !5081)
!5089 = !DILocation(line: 643, column: 27, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5086, file: !439, line: 642, column: 36)
!5091 = !DILocation(line: 643, column: 17, scope: !5090)
!5092 = !DILocation(line: 644, column: 17, scope: !5090)
!5093 = !DILocation(line: 646, column: 40, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5086, file: !439, line: 645, column: 20)
!5095 = !DILocation(line: 646, column: 17, scope: !5094)
!5096 = !DILocation(line: 646, column: 22, scope: !5094)
!5097 = !DILocation(line: 646, column: 38, scope: !5094)
!5098 = !DILocation(line: 648, column: 9, scope: !5081)
!5099 = !DILocation(line: 649, column: 30, scope: !859)
!5100 = !DILocation(line: 649, column: 16, scope: !859)
!5101 = !DILocation(line: 649, column: 35, scope: !859)
!5102 = !DILocation(line: 649, column: 9, scope: !859)
!5103 = !DILocation(line: 650, column: 5, scope: !860)
!5104 = !DILocation(line: 651, column: 1, scope: !855)
!5105 = !DILocation(line: 416, column: 16, scope: !797)
!5106 = !DILocation(line: 416, column: 23, scope: !797)
!5107 = !DILocation(line: 416, column: 47, scope: !797)
!5108 = !DILocation(line: 418, column: 5, scope: !797)
!5109 = !DILocation(line: 418, column: 15, scope: !797)
!5110 = !DILocation(line: 419, column: 5, scope: !797)
!5111 = !DILocation(line: 419, column: 17, scope: !797)
!5112 = !DILocation(line: 420, column: 5, scope: !797)
!5113 = !DILocation(line: 420, column: 16, scope: !797)
!5114 = !DILocation(line: 424, column: 9, scope: !797)
!5115 = !DILocation(line: 426, column: 9, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !797, file: !439, line: 426, column: 9)
!5117 = !DILocation(line: 426, column: 14, scope: !5116)
!5118 = !DILocation(line: 426, column: 9, scope: !797)
!5119 = !DILocation(line: 427, column: 18, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5116, file: !439, line: 426, column: 31)
!5121 = !DILocation(line: 427, column: 23, scope: !5120)
!5122 = !DILocation(line: 427, column: 16, scope: !5120)
!5123 = !DILocation(line: 428, column: 25, scope: !5120)
!5124 = !DILocation(line: 428, column: 35, scope: !5120)
!5125 = !DILocation(line: 428, column: 44, scope: !5120)
!5126 = !DILocation(line: 429, column: 5, scope: !5120)
!5127 = !DILocation(line: 432, column: 38, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5116, file: !439, line: 431, column: 5)
!5129 = !DILocation(line: 432, column: 43, scope: !5128)
!5130 = !DILocation(line: 432, column: 18, scope: !5128)
!5131 = !DILocation(line: 432, column: 16, scope: !5128)
!5132 = !DILocation(line: 433, column: 13, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5128, file: !439, line: 433, column: 13)
!5134 = !DILocation(line: 433, column: 20, scope: !5133)
!5135 = !DILocation(line: 433, column: 13, scope: !5128)
!5136 = !DILocation(line: 434, column: 13, scope: !5133)
!5137 = !DILocation(line: 436, column: 24, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !797, file: !439, line: 436, column: 9)
!5139 = !DILocation(line: 436, column: 34, scope: !5138)
!5140 = !DILocation(line: 436, column: 43, scope: !5138)
!5141 = !DILocation(line: 436, column: 9, scope: !797)
!5142 = !DILocation(line: 438, column: 39, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5138, file: !439, line: 437, column: 5)
!5144 = !DILocation(line: 438, column: 15, scope: !5143)
!5145 = !DILocation(line: 438, column: 13, scope: !5143)
!5146 = !DILocation(line: 439, column: 13, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5143, file: !439, line: 439, column: 13)
!5148 = !DILocation(line: 439, column: 17, scope: !5147)
!5149 = !DILocation(line: 439, column: 13, scope: !5143)
!5150 = !DILocation(line: 440, column: 13, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !439, line: 439, column: 32)
!5152 = !DILocation(line: 442, column: 5, scope: !5143)
!5153 = !DILocation(line: 445, column: 36, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5138, file: !439, line: 444, column: 5)
!5155 = !DILocation(line: 445, column: 15, scope: !5154)
!5156 = !DILocation(line: 445, column: 13, scope: !5154)
!5157 = !DILocation(line: 446, column: 13, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5154, file: !439, line: 446, column: 13)
!5159 = !DILocation(line: 446, column: 17, scope: !5158)
!5160 = !DILocation(line: 446, column: 13, scope: !5154)
!5161 = !DILocation(line: 447, column: 13, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5158, file: !439, line: 446, column: 32)
!5163 = !DILocation(line: 449, column: 50, scope: !5154)
!5164 = !DILocation(line: 449, column: 35, scope: !5154)
!5165 = !DILocation(line: 449, column: 60, scope: !5154)
!5166 = !DILocation(line: 449, column: 16, scope: !5154)
!5167 = !DILocation(line: 452, column: 5, scope: !797)
!5168 = !DILocation(line: 452, column: 10, scope: !5169)
!5169 = !DILexicalBlockFile(scope: !806, file: !439, discriminator: 1)
!5170 = !DILocation(line: 452, column: 20, scope: !806)
!5171 = !DILocation(line: 452, column: 51, scope: !806)
!5172 = !DILocation(line: 452, column: 56, scope: !806)
!5173 = !DILocation(line: 452, column: 78, scope: !809)
!5174 = !DILocation(line: 452, column: 94, scope: !809)
!5175 = !DILocation(line: 452, column: 78, scope: !806)
!5176 = !DILocation(line: 452, column: 109, scope: !5177)
!5177 = !DILexicalBlockFile(scope: !809, file: !439, discriminator: 2)
!5178 = !DILocation(line: 452, column: 114, scope: !5179)
!5179 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 4)
!5180 = !DILocation(line: 452, column: 124, scope: !808)
!5181 = !DILocation(line: 452, column: 154, scope: !808)
!5182 = !DILocation(line: 452, column: 180, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !808, file: !439, line: 452, column: 177)
!5184 = !DILocation(line: 452, column: 197, scope: !5183)
!5185 = !DILocation(line: 452, column: 177, scope: !5183)
!5186 = !DILocation(line: 452, column: 207, scope: !5183)
!5187 = !DILocation(line: 452, column: 177, scope: !808)
!5188 = !DILocation(line: 452, column: 177, scope: !5189)
!5189 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 5)
!5190 = !DILocation(line: 452, column: 238, scope: !5191)
!5191 = !DILexicalBlockFile(scope: !5183, file: !439, discriminator: 6)
!5192 = !DILocation(line: 452, column: 256, scope: !5183)
!5193 = !DILocation(line: 452, column: 266, scope: !5183)
!5194 = !DILocation(line: 452, column: 291, scope: !5183)
!5195 = !DILocation(line: 452, column: 222, scope: !5183)
!5196 = !DILocation(line: 452, column: 310, scope: !5197)
!5197 = !DILexicalBlockFile(scope: !809, file: !439, discriminator: 7)
!5198 = !DILocation(line: 452, column: 310, scope: !808)
!5199 = !DILocation(line: 452, column: 310, scope: !5200)
!5200 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 8)
!5201 = !DILocation(line: 452, column: 310, scope: !5202)
!5202 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 9)
!5203 = !DILocation(line: 452, column: 323, scope: !5204)
!5204 = !DILexicalBlockFile(scope: !5205, file: !439, discriminator: 10)
!5205 = !DILexicalBlockFile(scope: !797, file: !439, discriminator: 3)
!5206 = !DILocation(line: 452, column: 323, scope: !806)
!5207 = !DILocation(line: 452, column: 323, scope: !5208)
!5208 = !DILexicalBlockFile(scope: !806, file: !439, discriminator: 11)
!5209 = !DILocation(line: 453, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !797, file: !439, line: 453, column: 9)
!5211 = !DILocation(line: 453, column: 18, scope: !5210)
!5212 = !DILocation(line: 453, column: 16, scope: !5210)
!5213 = !DILocation(line: 453, column: 9, scope: !797)
!5214 = !DILocation(line: 455, column: 62, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5210, file: !439, line: 453, column: 24)
!5216 = !DILocation(line: 455, column: 66, scope: !5215)
!5217 = !DILocation(line: 455, column: 65, scope: !5215)
!5218 = !DILocation(line: 456, column: 58, scope: !5215)
!5219 = !DILocation(line: 456, column: 65, scope: !5215)
!5220 = !DILocation(line: 456, column: 64, scope: !5215)
!5221 = !DILocation(line: 455, column: 32, scope: !5215)
!5222 = !DILocation(line: 455, column: 9, scope: !5215)
!5223 = !DILocation(line: 455, column: 14, scope: !5215)
!5224 = !DILocation(line: 455, column: 30, scope: !5215)
!5225 = !DILocation(line: 457, column: 13, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5215, file: !439, line: 457, column: 13)
!5227 = !DILocation(line: 457, column: 18, scope: !5226)
!5228 = !DILocation(line: 457, column: 34, scope: !5226)
!5229 = !DILocation(line: 457, column: 13, scope: !5215)
!5230 = !DILocation(line: 458, column: 13, scope: !5226)
!5231 = !DILocation(line: 459, column: 18, scope: !5215)
!5232 = !DILocation(line: 459, column: 16, scope: !5215)
!5233 = !DILocation(line: 460, column: 5, scope: !5215)
!5234 = !DILocation(line: 462, column: 9, scope: !5210)
!5235 = !DILocation(line: 462, column: 14, scope: !5210)
!5236 = !DILocation(line: 462, column: 30, scope: !5210)
!5237 = !DILocation(line: 464, column: 12, scope: !797)
!5238 = !DILocation(line: 464, column: 15, scope: !797)
!5239 = !DILocation(line: 464, column: 20, scope: !797)
!5240 = !DILocation(line: 464, column: 5, scope: !797)
!5241 = !DILocation(line: 465, column: 7, scope: !797)
!5242 = !DILocation(line: 465, column: 5, scope: !797)
!5243 = !DILocation(line: 465, column: 15, scope: !797)
!5244 = !DILocation(line: 466, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !797, file: !439, line: 466, column: 9)
!5246 = !DILocation(line: 466, column: 16, scope: !5245)
!5247 = !DILocation(line: 466, column: 9, scope: !797)
!5248 = !DILocation(line: 467, column: 11, scope: !5245)
!5249 = !DILocation(line: 467, column: 9, scope: !5245)
!5250 = !DILocation(line: 468, column: 5, scope: !797)
!5251 = !DILocation(line: 468, column: 10, scope: !5252)
!5252 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 1)
!5253 = !DILocation(line: 468, column: 20, scope: !811)
!5254 = !DILocation(line: 468, column: 50, scope: !811)
!5255 = !DILocation(line: 468, column: 67, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !811, file: !439, line: 468, column: 64)
!5257 = !DILocation(line: 468, column: 84, scope: !5256)
!5258 = !DILocation(line: 468, column: 64, scope: !5256)
!5259 = !DILocation(line: 468, column: 94, scope: !5256)
!5260 = !DILocation(line: 468, column: 64, scope: !811)
!5261 = !DILocation(line: 468, column: 64, scope: !5262)
!5262 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 2)
!5263 = !DILocation(line: 468, column: 125, scope: !5264)
!5264 = !DILexicalBlockFile(scope: !5256, file: !439, discriminator: 3)
!5265 = !DILocation(line: 468, column: 143, scope: !5256)
!5266 = !DILocation(line: 468, column: 153, scope: !5256)
!5267 = !DILocation(line: 468, column: 178, scope: !5256)
!5268 = !DILocation(line: 468, column: 109, scope: !5256)
!5269 = !DILocation(line: 468, column: 197, scope: !5270)
!5270 = !DILexicalBlockFile(scope: !797, file: !439, discriminator: 4)
!5271 = !DILocation(line: 468, column: 197, scope: !811)
!5272 = !DILocation(line: 468, column: 197, scope: !5273)
!5273 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 5)
!5274 = !DILocation(line: 469, column: 12, scope: !797)
!5275 = !DILocation(line: 469, column: 5, scope: !797)
!5276 = !DILocation(line: 472, column: 5, scope: !797)
!5277 = !DILocation(line: 472, column: 10, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !813, file: !439, discriminator: 1)
!5279 = !DILocation(line: 472, column: 20, scope: !813)
!5280 = !DILocation(line: 472, column: 51, scope: !813)
!5281 = !DILocation(line: 472, column: 64, scope: !816)
!5282 = !DILocation(line: 472, column: 80, scope: !816)
!5283 = !DILocation(line: 472, column: 64, scope: !813)
!5284 = !DILocation(line: 472, column: 95, scope: !5285)
!5285 = !DILexicalBlockFile(scope: !816, file: !439, discriminator: 2)
!5286 = !DILocation(line: 472, column: 100, scope: !5287)
!5287 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 4)
!5288 = !DILocation(line: 472, column: 110, scope: !815)
!5289 = !DILocation(line: 472, column: 140, scope: !815)
!5290 = !DILocation(line: 472, column: 166, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !815, file: !439, line: 472, column: 163)
!5292 = !DILocation(line: 472, column: 183, scope: !5291)
!5293 = !DILocation(line: 472, column: 163, scope: !5291)
!5294 = !DILocation(line: 472, column: 193, scope: !5291)
!5295 = !DILocation(line: 472, column: 163, scope: !815)
!5296 = !DILocation(line: 472, column: 163, scope: !5297)
!5297 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 5)
!5298 = !DILocation(line: 472, column: 224, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !5291, file: !439, discriminator: 6)
!5300 = !DILocation(line: 472, column: 242, scope: !5291)
!5301 = !DILocation(line: 472, column: 252, scope: !5291)
!5302 = !DILocation(line: 472, column: 277, scope: !5291)
!5303 = !DILocation(line: 472, column: 208, scope: !5291)
!5304 = !DILocation(line: 472, column: 296, scope: !5305)
!5305 = !DILexicalBlockFile(scope: !816, file: !439, discriminator: 7)
!5306 = !DILocation(line: 472, column: 296, scope: !815)
!5307 = !DILocation(line: 472, column: 296, scope: !5308)
!5308 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 8)
!5309 = !DILocation(line: 472, column: 296, scope: !5310)
!5310 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 9)
!5311 = !DILocation(line: 472, column: 309, scope: !5204)
!5312 = !DILocation(line: 472, column: 309, scope: !813)
!5313 = !DILocation(line: 472, column: 309, scope: !5314)
!5314 = !DILexicalBlockFile(scope: !813, file: !439, discriminator: 11)
!5315 = !DILocation(line: 473, column: 22, scope: !797)
!5316 = !DILocation(line: 473, column: 12, scope: !797)
!5317 = !DILocation(line: 473, column: 5, scope: !797)
!5318 = !DILocation(line: 474, column: 1, scope: !797)
!5319 = !DILocation(line: 535, column: 38, scope: !817)
!5320 = !DILocation(line: 536, column: 22, scope: !817)
!5321 = !DILocation(line: 536, column: 27, scope: !817)
!5322 = !DILocation(line: 536, column: 12, scope: !817)
!5323 = !DILocation(line: 536, column: 5, scope: !817)
!5324 = !DILocation(line: 541, column: 27, scope: !820)
!5325 = !DILocation(line: 541, column: 48, scope: !820)
!5326 = !DILocation(line: 542, column: 12, scope: !820)
!5327 = !DILocation(line: 542, column: 15, scope: !820)
!5328 = !DILocation(line: 542, column: 20, scope: !820)
!5329 = !DILocation(line: 542, column: 5, scope: !820)
!5330 = !DILocation(line: 543, column: 1, scope: !820)
!5331 = !DILocation(line: 487, column: 31, scope: !824)
!5332 = !DILocation(line: 487, column: 48, scope: !824)
!5333 = !DILocation(line: 489, column: 5, scope: !824)
!5334 = !DILocation(line: 489, column: 15, scope: !824)
!5335 = !DILocation(line: 489, column: 39, scope: !824)
!5336 = !DILocation(line: 489, column: 61, scope: !824)
!5337 = !DILocation(line: 492, column: 5, scope: !824)
!5338 = !DILocation(line: 492, column: 9, scope: !824)
!5339 = !DILocation(line: 493, column: 5, scope: !824)
!5340 = !DILocation(line: 493, column: 10, scope: !824)
!5341 = !DILocation(line: 495, column: 10, scope: !824)
!5342 = !DILocation(line: 495, column: 8, scope: !824)
!5343 = !DILocation(line: 496, column: 9, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !824, file: !439, line: 496, column: 9)
!5345 = !DILocation(line: 496, column: 12, scope: !5344)
!5346 = !DILocation(line: 496, column: 9, scope: !824)
!5347 = !DILocation(line: 497, column: 9, scope: !5344)
!5348 = !DILocation(line: 499, column: 17, scope: !824)
!5349 = !DILocation(line: 499, column: 22, scope: !824)
!5350 = !DILocation(line: 499, column: 10, scope: !824)
!5351 = !DILocation(line: 499, column: 8, scope: !824)
!5352 = !DILocation(line: 505, column: 17, scope: !824)
!5353 = !DILocation(line: 505, column: 22, scope: !824)
!5354 = !DILocation(line: 505, column: 11, scope: !824)
!5355 = !DILocation(line: 505, column: 9, scope: !824)
!5356 = !DILocation(line: 506, column: 9, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !824, file: !439, line: 506, column: 9)
!5358 = !DILocation(line: 506, column: 13, scope: !5357)
!5359 = !DILocation(line: 506, column: 19, scope: !5357)
!5360 = !DILocation(line: 507, column: 15, scope: !5357)
!5361 = !DILocation(line: 507, column: 27, scope: !5357)
!5362 = !DILocation(line: 507, column: 31, scope: !5357)
!5363 = !DILocation(line: 507, column: 37, scope: !5364)
!5364 = !DILexicalBlockFile(scope: !5357, file: !439, discriminator: 1)
!5365 = !DILocation(line: 507, column: 41, scope: !5357)
!5366 = !DILocation(line: 507, column: 47, scope: !5367)
!5367 = !DILexicalBlockFile(scope: !5357, file: !439, discriminator: 2)
!5368 = !DILocation(line: 507, column: 9, scope: !5369)
!5369 = !DILexicalBlockFile(scope: !5370, file: !439, discriminator: 4)
!5370 = !DILexicalBlockFile(scope: !5357, file: !439, discriminator: 3)
!5371 = !DILocation(line: 507, column: 56, scope: !5357)
!5372 = !DILocation(line: 506, column: 9, scope: !824)
!5373 = !DILocation(line: 508, column: 40, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5357, file: !439, line: 507, column: 70)
!5375 = !DILocation(line: 508, column: 9, scope: !5374)
!5376 = !DILocation(line: 509, column: 9, scope: !5374)
!5377 = !DILocation(line: 512, column: 37, scope: !824)
!5378 = !DILocation(line: 513, column: 21, scope: !824)
!5379 = !DILocation(line: 513, column: 34, scope: !824)
!5380 = !DILocation(line: 512, column: 14, scope: !824)
!5381 = !DILocation(line: 512, column: 12, scope: !824)
!5382 = !DILocation(line: 514, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !824, file: !439, line: 514, column: 9)
!5384 = !DILocation(line: 514, column: 16, scope: !5383)
!5385 = !DILocation(line: 514, column: 9, scope: !824)
!5386 = !DILocation(line: 515, column: 9, scope: !5383)
!5387 = !DILocation(line: 517, column: 5, scope: !824)
!5388 = !DILocation(line: 517, column: 10, scope: !5389)
!5389 = !DILexicalBlockFile(scope: !834, file: !439, discriminator: 1)
!5390 = !DILocation(line: 517, column: 20, scope: !834)
!5391 = !DILocation(line: 517, column: 51, scope: !834)
!5392 = !DILocation(line: 517, column: 56, scope: !834)
!5393 = !DILocation(line: 517, column: 80, scope: !837)
!5394 = !DILocation(line: 517, column: 96, scope: !837)
!5395 = !DILocation(line: 517, column: 80, scope: !834)
!5396 = !DILocation(line: 517, column: 111, scope: !5397)
!5397 = !DILexicalBlockFile(scope: !837, file: !439, discriminator: 2)
!5398 = !DILocation(line: 517, column: 116, scope: !5399)
!5399 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 4)
!5400 = !DILocation(line: 517, column: 126, scope: !836)
!5401 = !DILocation(line: 517, column: 156, scope: !836)
!5402 = !DILocation(line: 517, column: 182, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !836, file: !439, line: 517, column: 179)
!5404 = !DILocation(line: 517, column: 199, scope: !5403)
!5405 = !DILocation(line: 517, column: 179, scope: !5403)
!5406 = !DILocation(line: 517, column: 209, scope: !5403)
!5407 = !DILocation(line: 517, column: 179, scope: !836)
!5408 = !DILocation(line: 517, column: 179, scope: !5409)
!5409 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 5)
!5410 = !DILocation(line: 517, column: 240, scope: !5411)
!5411 = !DILexicalBlockFile(scope: !5403, file: !439, discriminator: 6)
!5412 = !DILocation(line: 517, column: 258, scope: !5403)
!5413 = !DILocation(line: 517, column: 268, scope: !5403)
!5414 = !DILocation(line: 517, column: 293, scope: !5403)
!5415 = !DILocation(line: 517, column: 224, scope: !5403)
!5416 = !DILocation(line: 517, column: 312, scope: !5417)
!5417 = !DILexicalBlockFile(scope: !837, file: !439, discriminator: 7)
!5418 = !DILocation(line: 517, column: 312, scope: !836)
!5419 = !DILocation(line: 517, column: 312, scope: !5420)
!5420 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 8)
!5421 = !DILocation(line: 517, column: 312, scope: !5422)
!5422 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 9)
!5423 = !DILocation(line: 517, column: 325, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5425, file: !439, discriminator: 10)
!5425 = !DILexicalBlockFile(scope: !824, file: !439, discriminator: 3)
!5426 = !DILocation(line: 517, column: 325, scope: !834)
!5427 = !DILocation(line: 517, column: 325, scope: !5428)
!5428 = !DILexicalBlockFile(scope: !834, file: !439, discriminator: 11)
!5429 = !DILocation(line: 518, column: 36, scope: !824)
!5430 = !DILocation(line: 518, column: 16, scope: !824)
!5431 = !DILocation(line: 518, column: 14, scope: !824)
!5432 = !DILocation(line: 519, column: 30, scope: !824)
!5433 = !DILocation(line: 519, column: 5, scope: !824)
!5434 = !DILocation(line: 519, column: 10, scope: !824)
!5435 = !DILocation(line: 519, column: 28, scope: !824)
!5436 = !DILocation(line: 520, column: 9, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !824, file: !439, line: 520, column: 9)
!5438 = !DILocation(line: 520, column: 13, scope: !5437)
!5439 = !DILocation(line: 520, column: 9, scope: !824)
!5440 = !DILocation(line: 521, column: 33, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !439, line: 521, column: 13)
!5442 = distinct !DILexicalBlock(scope: !5437, file: !439, line: 520, column: 18)
!5443 = !DILocation(line: 521, column: 13, scope: !5441)
!5444 = !DILocation(line: 521, column: 55, scope: !5441)
!5445 = !DILocation(line: 521, column: 13, scope: !5442)
!5446 = !DILocation(line: 522, column: 22, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5441, file: !439, line: 521, column: 70)
!5448 = !DILocation(line: 523, column: 13, scope: !5447)
!5449 = !DILocation(line: 525, column: 5, scope: !5442)
!5450 = !DILocation(line: 520, column: 15, scope: !5451)
!5451 = !DILexicalBlockFile(scope: !5437, file: !439, discriminator: 1)
!5452 = !DILocation(line: 528, column: 5, scope: !824)
!5453 = !DILocation(line: 528, column: 10, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !839, file: !439, discriminator: 1)
!5455 = !DILocation(line: 528, column: 20, scope: !839)
!5456 = !DILocation(line: 528, column: 51, scope: !839)
!5457 = !DILocation(line: 528, column: 64, scope: !842)
!5458 = !DILocation(line: 528, column: 80, scope: !842)
!5459 = !DILocation(line: 528, column: 64, scope: !839)
!5460 = !DILocation(line: 528, column: 95, scope: !5461)
!5461 = !DILexicalBlockFile(scope: !842, file: !439, discriminator: 2)
!5462 = !DILocation(line: 528, column: 100, scope: !5463)
!5463 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 4)
!5464 = !DILocation(line: 528, column: 110, scope: !841)
!5465 = !DILocation(line: 528, column: 140, scope: !841)
!5466 = !DILocation(line: 528, column: 166, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !841, file: !439, line: 528, column: 163)
!5468 = !DILocation(line: 528, column: 183, scope: !5467)
!5469 = !DILocation(line: 528, column: 163, scope: !5467)
!5470 = !DILocation(line: 528, column: 193, scope: !5467)
!5471 = !DILocation(line: 528, column: 163, scope: !841)
!5472 = !DILocation(line: 528, column: 163, scope: !5473)
!5473 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 5)
!5474 = !DILocation(line: 528, column: 224, scope: !5475)
!5475 = !DILexicalBlockFile(scope: !5467, file: !439, discriminator: 6)
!5476 = !DILocation(line: 528, column: 242, scope: !5467)
!5477 = !DILocation(line: 528, column: 252, scope: !5467)
!5478 = !DILocation(line: 528, column: 277, scope: !5467)
!5479 = !DILocation(line: 528, column: 208, scope: !5467)
!5480 = !DILocation(line: 528, column: 296, scope: !5481)
!5481 = !DILexicalBlockFile(scope: !842, file: !439, discriminator: 7)
!5482 = !DILocation(line: 528, column: 296, scope: !841)
!5483 = !DILocation(line: 528, column: 296, scope: !5484)
!5484 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 8)
!5485 = !DILocation(line: 528, column: 296, scope: !5486)
!5486 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 9)
!5487 = !DILocation(line: 528, column: 309, scope: !5424)
!5488 = !DILocation(line: 528, column: 309, scope: !839)
!5489 = !DILocation(line: 528, column: 309, scope: !5490)
!5490 = !DILexicalBlockFile(scope: !839, file: !439, discriminator: 11)
!5491 = !DILocation(line: 529, column: 5, scope: !824)
!5492 = !DILocation(line: 529, column: 10, scope: !5493)
!5493 = !DILexicalBlockFile(scope: !844, file: !439, discriminator: 1)
!5494 = !DILocation(line: 529, column: 20, scope: !844)
!5495 = !DILocation(line: 529, column: 51, scope: !844)
!5496 = !DILocation(line: 529, column: 60, scope: !847)
!5497 = !DILocation(line: 529, column: 76, scope: !847)
!5498 = !DILocation(line: 529, column: 60, scope: !844)
!5499 = !DILocation(line: 529, column: 91, scope: !5500)
!5500 = !DILexicalBlockFile(scope: !847, file: !439, discriminator: 2)
!5501 = !DILocation(line: 529, column: 96, scope: !5502)
!5502 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 4)
!5503 = !DILocation(line: 529, column: 106, scope: !846)
!5504 = !DILocation(line: 529, column: 136, scope: !846)
!5505 = !DILocation(line: 529, column: 162, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !846, file: !439, line: 529, column: 159)
!5507 = !DILocation(line: 529, column: 179, scope: !5506)
!5508 = !DILocation(line: 529, column: 159, scope: !5506)
!5509 = !DILocation(line: 529, column: 189, scope: !5506)
!5510 = !DILocation(line: 529, column: 159, scope: !846)
!5511 = !DILocation(line: 529, column: 159, scope: !5512)
!5512 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 5)
!5513 = !DILocation(line: 529, column: 220, scope: !5514)
!5514 = !DILexicalBlockFile(scope: !5506, file: !439, discriminator: 6)
!5515 = !DILocation(line: 529, column: 238, scope: !5506)
!5516 = !DILocation(line: 529, column: 248, scope: !5506)
!5517 = !DILocation(line: 529, column: 273, scope: !5506)
!5518 = !DILocation(line: 529, column: 204, scope: !5506)
!5519 = !DILocation(line: 529, column: 292, scope: !5520)
!5520 = !DILexicalBlockFile(scope: !847, file: !439, discriminator: 7)
!5521 = !DILocation(line: 529, column: 292, scope: !846)
!5522 = !DILocation(line: 529, column: 292, scope: !5523)
!5523 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 8)
!5524 = !DILocation(line: 529, column: 292, scope: !5525)
!5525 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 9)
!5526 = !DILocation(line: 529, column: 305, scope: !5424)
!5527 = !DILocation(line: 529, column: 305, scope: !844)
!5528 = !DILocation(line: 529, column: 305, scope: !5529)
!5529 = !DILexicalBlockFile(scope: !844, file: !439, discriminator: 11)
!5530 = !DILocation(line: 530, column: 12, scope: !824)
!5531 = !DILocation(line: 530, column: 21, scope: !824)
!5532 = !DILocation(line: 531, column: 1, scope: !824)
!5533 = !DILocation(line: 530, column: 5, scope: !824)
!5534 = !DILocation(line: 548, column: 44, scope: !848)
!5535 = !DILocation(line: 550, column: 5, scope: !848)
!5536 = !DILocation(line: 550, column: 9, scope: !848)
!5537 = !DILocation(line: 551, column: 5, scope: !848)
!5538 = !DILocation(line: 551, column: 9, scope: !848)
!5539 = !DILocation(line: 552, column: 10, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !848, file: !439, line: 552, column: 9)
!5541 = !DILocation(line: 552, column: 9, scope: !5540)
!5542 = !DILocation(line: 552, column: 12, scope: !5540)
!5543 = !DILocation(line: 552, column: 9, scope: !848)
!5544 = !DILocation(line: 554, column: 9, scope: !5540)
!5545 = !DILocation(line: 555, column: 10, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !848, file: !439, line: 555, column: 9)
!5547 = !DILocation(line: 555, column: 9, scope: !5546)
!5548 = !DILocation(line: 555, column: 12, scope: !5546)
!5549 = !DILocation(line: 555, column: 9, scope: !848)
!5550 = !DILocation(line: 557, column: 9, scope: !5546)
!5551 = !DILocation(line: 558, column: 10, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !848, file: !439, line: 558, column: 9)
!5553 = !DILocation(line: 558, column: 9, scope: !5552)
!5554 = !DILocation(line: 558, column: 12, scope: !5552)
!5555 = !DILocation(line: 558, column: 9, scope: !848)
!5556 = !DILocation(line: 559, column: 18, scope: !5552)
!5557 = !DILocation(line: 559, column: 9, scope: !5552)
!5558 = !DILocation(line: 560, column: 15, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5552, file: !439, line: 560, column: 14)
!5560 = !DILocation(line: 560, column: 14, scope: !5559)
!5561 = !DILocation(line: 560, column: 17, scope: !5559)
!5562 = !DILocation(line: 560, column: 14, scope: !5552)
!5563 = !DILocation(line: 561, column: 18, scope: !5559)
!5564 = !DILocation(line: 561, column: 9, scope: !5559)
!5565 = !DILocation(line: 562, column: 15, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5559, file: !439, line: 562, column: 14)
!5567 = !DILocation(line: 562, column: 14, scope: !5566)
!5568 = !DILocation(line: 562, column: 17, scope: !5566)
!5569 = !DILocation(line: 562, column: 14, scope: !5559)
!5570 = !DILocation(line: 563, column: 18, scope: !5566)
!5571 = !DILocation(line: 563, column: 9, scope: !5566)
!5572 = !DILocation(line: 565, column: 9, scope: !5566)
!5573 = !DILocation(line: 566, column: 14, scope: !848)
!5574 = !DILocation(line: 566, column: 23, scope: !848)
!5575 = !DILocation(line: 566, column: 12, scope: !848)
!5576 = !DILocation(line: 567, column: 5, scope: !848)
!5577 = !DILocation(line: 567, column: 12, scope: !5578)
!5578 = !DILexicalBlockFile(scope: !5579, file: !439, discriminator: 2)
!5579 = !DILexicalBlockFile(scope: !5580, file: !439, discriminator: 1)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !439, line: 567, column: 5)
!5581 = distinct !DILexicalBlock(scope: !848, file: !439, line: 567, column: 5)
!5582 = !DILocation(line: 567, column: 5, scope: !5581)
!5583 = !DILocation(line: 568, column: 15, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !439, line: 568, column: 13)
!5585 = !DILocation(line: 568, column: 13, scope: !5584)
!5586 = !DILocation(line: 568, column: 25, scope: !5584)
!5587 = !DILocation(line: 568, column: 32, scope: !5584)
!5588 = !DILocation(line: 568, column: 37, scope: !5589)
!5589 = !DILexicalBlockFile(scope: !5584, file: !439, discriminator: 1)
!5590 = !DILocation(line: 568, column: 35, scope: !5584)
!5591 = !DILocation(line: 568, column: 47, scope: !5584)
!5592 = !DILocation(line: 568, column: 13, scope: !5580)
!5593 = !DILocation(line: 569, column: 13, scope: !5584)
!5594 = !DILocation(line: 568, column: 50, scope: !5595)
!5595 = !DILexicalBlockFile(scope: !5584, file: !439, discriminator: 2)
!5596 = !DILocation(line: 567, column: 30, scope: !5580)
!5597 = !DILocation(line: 567, column: 5, scope: !5580)
!5598 = !DILocation(line: 570, column: 12, scope: !848)
!5599 = !DILocation(line: 570, column: 5, scope: !848)
!5600 = !DILocation(line: 571, column: 1, scope: !848)
