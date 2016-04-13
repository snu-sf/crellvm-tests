; ModuleID = 'irs-onlybc/tokenizer.bc'
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
  switch i32 %0, label %sw.default [
    i32 40, label %sw.bb
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
  ], !dbg !1668

sw.bb:                                            ; preds = %entry
  store i32 7, i32* %retval, !dbg !1669
  br label %return, !dbg !1669

sw.bb.1:                                          ; preds = %entry
  store i32 8, i32* %retval, !dbg !1671
  br label %return, !dbg !1671

sw.bb.2:                                          ; preds = %entry
  store i32 9, i32* %retval, !dbg !1672
  br label %return, !dbg !1672

sw.bb.3:                                          ; preds = %entry
  store i32 10, i32* %retval, !dbg !1673
  br label %return, !dbg !1673

sw.bb.4:                                          ; preds = %entry
  store i32 11, i32* %retval, !dbg !1674
  br label %return, !dbg !1674

sw.bb.5:                                          ; preds = %entry
  store i32 12, i32* %retval, !dbg !1675
  br label %return, !dbg !1675

sw.bb.6:                                          ; preds = %entry
  store i32 13, i32* %retval, !dbg !1676
  br label %return, !dbg !1676

sw.bb.7:                                          ; preds = %entry
  store i32 14, i32* %retval, !dbg !1677
  br label %return, !dbg !1677

sw.bb.8:                                          ; preds = %entry
  store i32 15, i32* %retval, !dbg !1678
  br label %return, !dbg !1678

sw.bb.9:                                          ; preds = %entry
  store i32 16, i32* %retval, !dbg !1679
  br label %return, !dbg !1679

sw.bb.10:                                         ; preds = %entry
  store i32 17, i32* %retval, !dbg !1680
  br label %return, !dbg !1680

sw.bb.11:                                         ; preds = %entry
  store i32 18, i32* %retval, !dbg !1681
  br label %return, !dbg !1681

sw.bb.12:                                         ; preds = %entry
  store i32 19, i32* %retval, !dbg !1682
  br label %return, !dbg !1682

sw.bb.13:                                         ; preds = %entry
  store i32 20, i32* %retval, !dbg !1683
  br label %return, !dbg !1683

sw.bb.14:                                         ; preds = %entry
  store i32 21, i32* %retval, !dbg !1684
  br label %return, !dbg !1684

sw.bb.15:                                         ; preds = %entry
  store i32 22, i32* %retval, !dbg !1685
  br label %return, !dbg !1685

sw.bb.16:                                         ; preds = %entry
  store i32 23, i32* %retval, !dbg !1686
  br label %return, !dbg !1686

sw.bb.17:                                         ; preds = %entry
  store i32 24, i32* %retval, !dbg !1687
  br label %return, !dbg !1687

sw.bb.18:                                         ; preds = %entry
  store i32 25, i32* %retval, !dbg !1688
  br label %return, !dbg !1688

sw.bb.19:                                         ; preds = %entry
  store i32 26, i32* %retval, !dbg !1689
  br label %return, !dbg !1689

sw.bb.20:                                         ; preds = %entry
  store i32 32, i32* %retval, !dbg !1690
  br label %return, !dbg !1690

sw.bb.21:                                         ; preds = %entry
  store i32 31, i32* %retval, !dbg !1691
  br label %return, !dbg !1691

sw.bb.22:                                         ; preds = %entry
  store i32 49, i32* %retval, !dbg !1692
  br label %return, !dbg !1692

sw.default:                                       ; preds = %entry
  store i32 52, i32* %retval, !dbg !1693
  br label %return, !dbg !1693

return:                                           ; preds = %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval, !dbg !1694
  ret i32 %1, !dbg !1694
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_TwoChars(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c1.addr, metadata !489, metadata !898), !dbg !1695
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c2.addr, metadata !490, metadata !898), !dbg !1696
  %0 = load i32, i32* %c1.addr, align 4, !dbg !1697, !tbaa !900
  switch i32 %0, label %sw.epilog.41 [
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
  ], !dbg !1698

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %c2.addr, align 4, !dbg !1699, !tbaa !900
  switch i32 %1, label %sw.epilog [
    i32 61, label %sw.bb.1
  ], !dbg !1701

sw.bb.1:                                          ; preds = %sw.bb
  store i32 27, i32* %retval, !dbg !1702
  br label %return, !dbg !1702

sw.epilog:                                        ; preds = %sw.bb
  br label %sw.epilog.41, !dbg !1704

sw.bb.2:                                          ; preds = %entry
  %2 = load i32, i32* %c2.addr, align 4, !dbg !1705, !tbaa !900
  switch i32 %2, label %sw.epilog.4 [
    i32 61, label %sw.bb.3
  ], !dbg !1706

sw.bb.3:                                          ; preds = %sw.bb.2
  store i32 28, i32* %retval, !dbg !1707
  br label %return, !dbg !1707

sw.epilog.4:                                      ; preds = %sw.bb.2
  br label %sw.epilog.41, !dbg !1709

sw.bb.5:                                          ; preds = %entry
  %3 = load i32, i32* %c2.addr, align 4, !dbg !1710, !tbaa !900
  switch i32 %3, label %sw.epilog.9 [
    i32 62, label %sw.bb.6
    i32 61, label %sw.bb.7
    i32 60, label %sw.bb.8
  ], !dbg !1711

sw.bb.6:                                          ; preds = %sw.bb.5
  store i32 28, i32* %retval, !dbg !1712
  br label %return, !dbg !1712

sw.bb.7:                                          ; preds = %sw.bb.5
  store i32 29, i32* %retval, !dbg !1714
  br label %return, !dbg !1714

sw.bb.8:                                          ; preds = %sw.bb.5
  store i32 33, i32* %retval, !dbg !1715
  br label %return, !dbg !1715

sw.epilog.9:                                      ; preds = %sw.bb.5
  br label %sw.epilog.41, !dbg !1716

sw.bb.10:                                         ; preds = %entry
  %4 = load i32, i32* %c2.addr, align 4, !dbg !1717, !tbaa !900
  switch i32 %4, label %sw.epilog.13 [
    i32 61, label %sw.bb.11
    i32 62, label %sw.bb.12
  ], !dbg !1718

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 30, i32* %retval, !dbg !1719
  br label %return, !dbg !1719

sw.bb.12:                                         ; preds = %sw.bb.10
  store i32 34, i32* %retval, !dbg !1721
  br label %return, !dbg !1721

sw.epilog.13:                                     ; preds = %sw.bb.10
  br label %sw.epilog.41, !dbg !1722

sw.bb.14:                                         ; preds = %entry
  %5 = load i32, i32* %c2.addr, align 4, !dbg !1723, !tbaa !900
  switch i32 %5, label %sw.epilog.16 [
    i32 61, label %sw.bb.15
  ], !dbg !1724

sw.bb.15:                                         ; preds = %sw.bb.14
  store i32 36, i32* %retval, !dbg !1725
  br label %return, !dbg !1725

sw.epilog.16:                                     ; preds = %sw.bb.14
  br label %sw.epilog.41, !dbg !1727

sw.bb.17:                                         ; preds = %entry
  %6 = load i32, i32* %c2.addr, align 4, !dbg !1728, !tbaa !900
  switch i32 %6, label %sw.epilog.20 [
    i32 61, label %sw.bb.18
    i32 62, label %sw.bb.19
  ], !dbg !1729

sw.bb.18:                                         ; preds = %sw.bb.17
  store i32 37, i32* %retval, !dbg !1730
  br label %return, !dbg !1730

sw.bb.19:                                         ; preds = %sw.bb.17
  store i32 50, i32* %retval, !dbg !1732
  br label %return, !dbg !1732

sw.epilog.20:                                     ; preds = %sw.bb.17
  br label %sw.epilog.41, !dbg !1733

sw.bb.21:                                         ; preds = %entry
  %7 = load i32, i32* %c2.addr, align 4, !dbg !1734, !tbaa !900
  switch i32 %7, label %sw.epilog.24 [
    i32 42, label %sw.bb.22
    i32 61, label %sw.bb.23
  ], !dbg !1735

sw.bb.22:                                         ; preds = %sw.bb.21
  store i32 35, i32* %retval, !dbg !1736
  br label %return, !dbg !1736

sw.bb.23:                                         ; preds = %sw.bb.21
  store i32 38, i32* %retval, !dbg !1738
  br label %return, !dbg !1738

sw.epilog.24:                                     ; preds = %sw.bb.21
  br label %sw.epilog.41, !dbg !1739

sw.bb.25:                                         ; preds = %entry
  %8 = load i32, i32* %c2.addr, align 4, !dbg !1740, !tbaa !900
  switch i32 %8, label %sw.epilog.28 [
    i32 47, label %sw.bb.26
    i32 61, label %sw.bb.27
  ], !dbg !1741

sw.bb.26:                                         ; preds = %sw.bb.25
  store i32 47, i32* %retval, !dbg !1742
  br label %return, !dbg !1742

sw.bb.27:                                         ; preds = %sw.bb.25
  store i32 39, i32* %retval, !dbg !1744
  br label %return, !dbg !1744

sw.epilog.28:                                     ; preds = %sw.bb.25
  br label %sw.epilog.41, !dbg !1745

sw.bb.29:                                         ; preds = %entry
  %9 = load i32, i32* %c2.addr, align 4, !dbg !1746, !tbaa !900
  switch i32 %9, label %sw.epilog.31 [
    i32 61, label %sw.bb.30
  ], !dbg !1747

sw.bb.30:                                         ; preds = %sw.bb.29
  store i32 42, i32* %retval, !dbg !1748
  br label %return, !dbg !1748

sw.epilog.31:                                     ; preds = %sw.bb.29
  br label %sw.epilog.41, !dbg !1750

sw.bb.32:                                         ; preds = %entry
  %10 = load i32, i32* %c2.addr, align 4, !dbg !1751, !tbaa !900
  switch i32 %10, label %sw.epilog.34 [
    i32 61, label %sw.bb.33
  ], !dbg !1752

sw.bb.33:                                         ; preds = %sw.bb.32
  store i32 40, i32* %retval, !dbg !1753
  br label %return, !dbg !1753

sw.epilog.34:                                     ; preds = %sw.bb.32
  br label %sw.epilog.41, !dbg !1755

sw.bb.35:                                         ; preds = %entry
  %11 = load i32, i32* %c2.addr, align 4, !dbg !1756, !tbaa !900
  switch i32 %11, label %sw.epilog.37 [
    i32 61, label %sw.bb.36
  ], !dbg !1757

sw.bb.36:                                         ; preds = %sw.bb.35
  store i32 41, i32* %retval, !dbg !1758
  br label %return, !dbg !1758

sw.epilog.37:                                     ; preds = %sw.bb.35
  br label %sw.epilog.41, !dbg !1760

sw.bb.38:                                         ; preds = %entry
  %12 = load i32, i32* %c2.addr, align 4, !dbg !1761, !tbaa !900
  switch i32 %12, label %sw.epilog.40 [
    i32 61, label %sw.bb.39
  ], !dbg !1762

sw.bb.39:                                         ; preds = %sw.bb.38
  store i32 43, i32* %retval, !dbg !1763
  br label %return, !dbg !1763

sw.epilog.40:                                     ; preds = %sw.bb.38
  br label %sw.epilog.41, !dbg !1765

sw.epilog.41:                                     ; preds = %entry, %sw.epilog.40, %sw.epilog.37, %sw.epilog.34, %sw.epilog.31, %sw.epilog.28, %sw.epilog.24, %sw.epilog.20, %sw.epilog.16, %sw.epilog.13, %sw.epilog.9, %sw.epilog.4, %sw.epilog
  store i32 52, i32* %retval, !dbg !1766
  br label %return, !dbg !1766

return:                                           ; preds = %sw.epilog.41, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.26, %sw.bb.23, %sw.bb.22, %sw.bb.19, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.11, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.3, %sw.bb.1
  %13 = load i32, i32* %retval, !dbg !1767
  ret i32 %13, !dbg !1767
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_ThreeChars(i32 %c1, i32 %c2, i32 %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %c3.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c1.addr, metadata !495, metadata !898), !dbg !1768
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c2.addr, metadata !496, metadata !898), !dbg !1769
  store i32 %c3, i32* %c3.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c3.addr, metadata !497, metadata !898), !dbg !1770
  %0 = load i32, i32* %c1.addr, align 4, !dbg !1771, !tbaa !900
  switch i32 %0, label %sw.epilog.24 [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.4
    i32 42, label %sw.bb.9
    i32 47, label %sw.bb.14
    i32 46, label %sw.bb.19
  ], !dbg !1772

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %c2.addr, align 4, !dbg !1773, !tbaa !900
  switch i32 %1, label %sw.epilog.3 [
    i32 60, label %sw.bb.1
  ], !dbg !1775

sw.bb.1:                                          ; preds = %sw.bb
  %2 = load i32, i32* %c3.addr, align 4, !dbg !1776, !tbaa !900
  switch i32 %2, label %sw.epilog [
    i32 61, label %sw.bb.2
  ], !dbg !1778

sw.bb.2:                                          ; preds = %sw.bb.1
  store i32 44, i32* %retval, !dbg !1779
  br label %return, !dbg !1779

sw.epilog:                                        ; preds = %sw.bb.1
  br label %sw.epilog.3, !dbg !1781

sw.epilog.3:                                      ; preds = %sw.bb, %sw.epilog
  br label %sw.epilog.24, !dbg !1782

sw.bb.4:                                          ; preds = %entry
  %3 = load i32, i32* %c2.addr, align 4, !dbg !1783, !tbaa !900
  switch i32 %3, label %sw.epilog.8 [
    i32 62, label %sw.bb.5
  ], !dbg !1784

sw.bb.5:                                          ; preds = %sw.bb.4
  %4 = load i32, i32* %c3.addr, align 4, !dbg !1785, !tbaa !900
  switch i32 %4, label %sw.epilog.7 [
    i32 61, label %sw.bb.6
  ], !dbg !1787

sw.bb.6:                                          ; preds = %sw.bb.5
  store i32 45, i32* %retval, !dbg !1788
  br label %return, !dbg !1788

sw.epilog.7:                                      ; preds = %sw.bb.5
  br label %sw.epilog.8, !dbg !1790

sw.epilog.8:                                      ; preds = %sw.bb.4, %sw.epilog.7
  br label %sw.epilog.24, !dbg !1791

sw.bb.9:                                          ; preds = %entry
  %5 = load i32, i32* %c2.addr, align 4, !dbg !1792, !tbaa !900
  switch i32 %5, label %sw.epilog.13 [
    i32 42, label %sw.bb.10
  ], !dbg !1793

sw.bb.10:                                         ; preds = %sw.bb.9
  %6 = load i32, i32* %c3.addr, align 4, !dbg !1794, !tbaa !900
  switch i32 %6, label %sw.epilog.12 [
    i32 61, label %sw.bb.11
  ], !dbg !1796

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 46, i32* %retval, !dbg !1797
  br label %return, !dbg !1797

sw.epilog.12:                                     ; preds = %sw.bb.10
  br label %sw.epilog.13, !dbg !1799

sw.epilog.13:                                     ; preds = %sw.bb.9, %sw.epilog.12
  br label %sw.epilog.24, !dbg !1800

sw.bb.14:                                         ; preds = %entry
  %7 = load i32, i32* %c2.addr, align 4, !dbg !1801, !tbaa !900
  switch i32 %7, label %sw.epilog.18 [
    i32 47, label %sw.bb.15
  ], !dbg !1802

sw.bb.15:                                         ; preds = %sw.bb.14
  %8 = load i32, i32* %c3.addr, align 4, !dbg !1803, !tbaa !900
  switch i32 %8, label %sw.epilog.17 [
    i32 61, label %sw.bb.16
  ], !dbg !1805

sw.bb.16:                                         ; preds = %sw.bb.15
  store i32 48, i32* %retval, !dbg !1806
  br label %return, !dbg !1806

sw.epilog.17:                                     ; preds = %sw.bb.15
  br label %sw.epilog.18, !dbg !1808

sw.epilog.18:                                     ; preds = %sw.bb.14, %sw.epilog.17
  br label %sw.epilog.24, !dbg !1809

sw.bb.19:                                         ; preds = %entry
  %9 = load i32, i32* %c2.addr, align 4, !dbg !1810, !tbaa !900
  switch i32 %9, label %sw.epilog.23 [
    i32 46, label %sw.bb.20
  ], !dbg !1811

sw.bb.20:                                         ; preds = %sw.bb.19
  %10 = load i32, i32* %c3.addr, align 4, !dbg !1812, !tbaa !900
  switch i32 %10, label %sw.epilog.22 [
    i32 46, label %sw.bb.21
  ], !dbg !1814

sw.bb.21:                                         ; preds = %sw.bb.20
  store i32 51, i32* %retval, !dbg !1815
  br label %return, !dbg !1815

sw.epilog.22:                                     ; preds = %sw.bb.20
  br label %sw.epilog.23, !dbg !1817

sw.epilog.23:                                     ; preds = %sw.bb.19, %sw.epilog.22
  br label %sw.epilog.24, !dbg !1818

sw.epilog.24:                                     ; preds = %entry, %sw.epilog.23, %sw.epilog.18, %sw.epilog.13, %sw.epilog.8, %sw.epilog.3
  store i32 52, i32* %retval, !dbg !1819
  br label %return, !dbg !1819

return:                                           ; preds = %sw.epilog.24, %sw.bb.21, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.2
  %11 = load i32, i32* %retval, !dbg !1820
  ret i32 %11, !dbg !1820
}

; Function Attrs: nounwind uwtable
define i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** %p_start, i8** %p_end) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %p_start.addr = alloca i8**, align 8
  %p_end.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !503, metadata !898), !dbg !1821
  store i8** %p_start, i8*** %p_start.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_start.addr, metadata !504, metadata !898), !dbg !1822
  store i8** %p_end, i8*** %p_end.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_end.addr, metadata !505, metadata !898), !dbg !1823
  %0 = bitcast i32* %result to i8*, !dbg !1824
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1824
  call void @llvm.dbg.declare(metadata i32* %result, metadata !506, metadata !898), !dbg !1825
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1826, !tbaa !894
  %2 = load i8**, i8*** %p_start.addr, align 8, !dbg !1827, !tbaa !894
  %3 = load i8**, i8*** %p_end.addr, align 8, !dbg !1828, !tbaa !894
  %call = call i32 @tok_get(%struct.tok_state* %1, i8** %2, i8** %3), !dbg !1829
  store i32 %call, i32* %result, align 4, !dbg !1825, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1830, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 22, !dbg !1832
  %5 = load i32, i32* %decoding_erred, align 4, !dbg !1832, !tbaa !1039
  %tobool = icmp ne i32 %5, 0, !dbg !1830
  br i1 %tobool, label %if.then, label %if.end, !dbg !1833

if.then:                                          ; preds = %entry
  store i32 53, i32* %result, align 4, !dbg !1834, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1836, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 5, !dbg !1837
  store i32 22, i32* %done, align 4, !dbg !1838, !tbaa !973
  br label %if.end, !dbg !1839

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %result, align 4, !dbg !1840, !tbaa !900
  %8 = bitcast i32* %result to i8*, !dbg !1841
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !1841
  ret i32 %7, !dbg !1842
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
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !705, metadata !898), !dbg !1843
  store i8** %p_start, i8*** %p_start.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_start.addr, metadata !706, metadata !898), !dbg !1844
  store i8** %p_end, i8*** %p_end.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %p_end.addr, metadata !707, metadata !898), !dbg !1845
  %0 = bitcast i32* %c to i8*, !dbg !1846
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1846
  call void @llvm.dbg.declare(metadata i32* %c, metadata !708, metadata !898), !dbg !1847
  %1 = bitcast i32* %blankline to i8*, !dbg !1848
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1848
  call void @llvm.dbg.declare(metadata i32* %blankline, metadata !709, metadata !898), !dbg !1849
  %2 = bitcast i32* %nonascii to i8*, !dbg !1848
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1848
  call void @llvm.dbg.declare(metadata i32* %nonascii, metadata !710, metadata !898), !dbg !1850
  %3 = load i8**, i8*** %p_end.addr, align 8, !dbg !1851, !tbaa !894
  store i8* null, i8** %3, align 8, !dbg !1852, !tbaa !894
  %4 = load i8**, i8*** %p_start.addr, align 8, !dbg !1853, !tbaa !894
  store i8* null, i8** %4, align 8, !dbg !1854, !tbaa !894
  br label %nextline, !dbg !1855

nextline:                                         ; preds = %if.then.248, %entry
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1856, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 4, !dbg !1857
  store i8* null, i8** %start, align 8, !dbg !1858, !tbaa !957
  store i32 0, i32* %blankline, align 4, !dbg !1859, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1860, !tbaa !894
  %atbol = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 10, !dbg !1861
  %7 = load i32, i32* %atbol, align 4, !dbg !1861, !tbaa !996
  %tobool = icmp ne i32 %7, 0, !dbg !1860
  br i1 %tobool, label %if.then, label %if.end.113, !dbg !1862

if.then:                                          ; preds = %nextline
  %8 = bitcast i32* %col to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1863
  call void @llvm.dbg.declare(metadata i32* %col, metadata !711, metadata !898), !dbg !1864
  store i32 0, i32* %col, align 4, !dbg !1864, !tbaa !900
  %9 = bitcast i32* %altcol to i8*, !dbg !1865
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !1865
  call void @llvm.dbg.declare(metadata i32* %altcol, metadata !714, metadata !898), !dbg !1866
  store i32 0, i32* %altcol, align 4, !dbg !1866, !tbaa !900
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1867, !tbaa !894
  %atbol1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 10, !dbg !1868
  store i32 0, i32* %atbol1, align 4, !dbg !1869, !tbaa !996
  br label %for.cond, !dbg !1870

for.cond:                                         ; preds = %if.end.16, %if.then
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1871, !tbaa !894
  %call = call i32 @tok_nextc(%struct.tok_state* %11), !dbg !1875
  store i32 %call, i32* %c, align 4, !dbg !1876, !tbaa !900
  %12 = load i32, i32* %c, align 4, !dbg !1877, !tbaa !900
  %cmp = icmp eq i32 %12, 32, !dbg !1879
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1880

if.then.2:                                        ; preds = %for.cond
  %13 = load i32, i32* %col, align 4, !dbg !1881, !tbaa !900
  %inc = add i32 %13, 1, !dbg !1881
  store i32 %inc, i32* %col, align 4, !dbg !1881, !tbaa !900
  %14 = load i32, i32* %altcol, align 4, !dbg !1882, !tbaa !900
  %inc3 = add i32 %14, 1, !dbg !1882
  store i32 %inc3, i32* %altcol, align 4, !dbg !1882, !tbaa !900
  br label %if.end.16, !dbg !1883

if.else:                                          ; preds = %for.cond
  %15 = load i32, i32* %c, align 4, !dbg !1884, !tbaa !900
  %cmp4 = icmp eq i32 %15, 9, !dbg !1886
  br i1 %cmp4, label %if.then.5, label %if.else.11, !dbg !1887

if.then.5:                                        ; preds = %if.else
  %16 = load i32, i32* %col, align 4, !dbg !1888, !tbaa !900
  %17 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1890, !tbaa !894
  %tabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 7, !dbg !1891
  %18 = load i32, i32* %tabsize, align 4, !dbg !1891, !tbaa !985
  %div = sdiv i32 %16, %18, !dbg !1892
  %add = add i32 %div, 1, !dbg !1893
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1894, !tbaa !894
  %tabsize6 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 7, !dbg !1895
  %20 = load i32, i32* %tabsize6, align 4, !dbg !1895, !tbaa !985
  %mul = mul i32 %add, %20, !dbg !1896
  store i32 %mul, i32* %col, align 4, !dbg !1897, !tbaa !900
  %21 = load i32, i32* %altcol, align 4, !dbg !1898, !tbaa !900
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1899, !tbaa !894
  %alttabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 19, !dbg !1900
  %23 = load i32, i32* %alttabsize, align 4, !dbg !1900, !tbaa !1028
  %div7 = sdiv i32 %21, %23, !dbg !1901
  %add8 = add i32 %div7, 1, !dbg !1902
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1903, !tbaa !894
  %alttabsize9 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 19, !dbg !1904
  %25 = load i32, i32* %alttabsize9, align 4, !dbg !1904, !tbaa !1028
  %mul10 = mul i32 %add8, %25, !dbg !1905
  store i32 %mul10, i32* %altcol, align 4, !dbg !1906, !tbaa !900
  br label %if.end.15, !dbg !1907

if.else.11:                                       ; preds = %if.else
  %26 = load i32, i32* %c, align 4, !dbg !1908, !tbaa !900
  %cmp12 = icmp eq i32 %26, 12, !dbg !1910
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !1911

if.then.13:                                       ; preds = %if.else.11
  store i32 0, i32* %altcol, align 4, !dbg !1912, !tbaa !900
  store i32 0, i32* %col, align 4, !dbg !1913, !tbaa !900
  br label %if.end, !dbg !1914

if.else.14:                                       ; preds = %if.else.11
  br label %for.end, !dbg !1915

if.end:                                           ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.2
  br label %for.cond, !dbg !1916

for.end:                                          ; preds = %if.else.14
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1917, !tbaa !894
  %28 = load i32, i32* %c, align 4, !dbg !1918, !tbaa !900
  call void @tok_backup(%struct.tok_state* %27, i32 %28), !dbg !1919
  %29 = load i32, i32* %c, align 4, !dbg !1920, !tbaa !900
  %cmp17 = icmp eq i32 %29, 35, !dbg !1922
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false, !dbg !1923

lor.lhs.false:                                    ; preds = %for.end
  %30 = load i32, i32* %c, align 4, !dbg !1924, !tbaa !900
  %cmp18 = icmp eq i32 %30, 10, !dbg !1926
  br i1 %cmp18, label %if.then.19, label %if.end.27, !dbg !1927

if.then.19:                                       ; preds = %lor.lhs.false, %for.end
  %31 = load i32, i32* %col, align 4, !dbg !1928, !tbaa !900
  %cmp20 = icmp eq i32 %31, 0, !dbg !1931
  br i1 %cmp20, label %land.lhs.true, label %if.else.25, !dbg !1932

land.lhs.true:                                    ; preds = %if.then.19
  %32 = load i32, i32* %c, align 4, !dbg !1933, !tbaa !900
  %cmp21 = icmp eq i32 %32, 10, !dbg !1935
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25, !dbg !1936

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1937, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 12, !dbg !1939
  %34 = load i8*, i8** %prompt, align 8, !dbg !1939, !tbaa !1008
  %cmp23 = icmp ne i8* %34, null, !dbg !1940
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1941

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %blankline, align 4, !dbg !1942, !tbaa !900
  br label %if.end.26, !dbg !1943

if.else.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.then.19
  store i32 1, i32* %blankline, align 4, !dbg !1944, !tbaa !900
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27, !dbg !1945

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  %35 = load i32, i32* %blankline, align 4, !dbg !1946, !tbaa !900
  %tobool28 = icmp ne i32 %35, 0, !dbg !1946
  br i1 %tobool28, label %if.end.111, label %land.lhs.true.29, !dbg !1948

land.lhs.true.29:                                 ; preds = %if.end.27
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1949, !tbaa !894
  %level = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 15, !dbg !1951
  %37 = load i32, i32* %level, align 4, !dbg !1951, !tbaa !1016
  %cmp30 = icmp eq i32 %37, 0, !dbg !1952
  br i1 %cmp30, label %if.then.31, label %if.end.111, !dbg !1953

if.then.31:                                       ; preds = %land.lhs.true.29
  %38 = load i32, i32* %col, align 4, !dbg !1954, !tbaa !900
  %39 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1957, !tbaa !894
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %39, i32 0, i32 8, !dbg !1958
  %40 = load i32, i32* %indent, align 4, !dbg !1958, !tbaa !989
  %idxprom = sext i32 %40 to i64, !dbg !1959
  %41 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1959, !tbaa !894
  %indstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %41, i32 0, i32 9, !dbg !1960
  %arrayidx = getelementptr [100 x i32], [100 x i32]* %indstack, i32 0, i64 %idxprom, !dbg !1959
  %42 = load i32, i32* %arrayidx, align 4, !dbg !1959, !tbaa !900
  %cmp32 = icmp eq i32 %38, %42, !dbg !1961
  br i1 %cmp32, label %if.then.33, label %if.else.44, !dbg !1962

if.then.33:                                       ; preds = %if.then.31
  %43 = load i32, i32* %altcol, align 4, !dbg !1963, !tbaa !900
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1966, !tbaa !894
  %indent34 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %44, i32 0, i32 8, !dbg !1967
  %45 = load i32, i32* %indent34, align 4, !dbg !1967, !tbaa !989
  %idxprom35 = sext i32 %45 to i64, !dbg !1968
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1968, !tbaa !894
  %altindstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %46, i32 0, i32 20, !dbg !1969
  %arrayidx36 = getelementptr [100 x i32], [100 x i32]* %altindstack, i32 0, i64 %idxprom35, !dbg !1968
  %47 = load i32, i32* %arrayidx36, align 4, !dbg !1968, !tbaa !900
  %cmp37 = icmp ne i32 %43, %47, !dbg !1970
  br i1 %cmp37, label %if.then.38, label %if.end.43, !dbg !1971

if.then.38:                                       ; preds = %if.then.33
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1972, !tbaa !894
  %call39 = call i32 @indenterror(%struct.tok_state* %48), !dbg !1975
  %tobool40 = icmp ne i32 %call39, 0, !dbg !1975
  br i1 %tobool40, label %if.then.41, label %if.end.42, !dbg !1976

if.then.41:                                       ; preds = %if.then.38
  store i32 53, i32* %retval, !dbg !1977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1977

if.end.42:                                        ; preds = %if.then.38
  br label %if.end.43, !dbg !1978

if.end.43:                                        ; preds = %if.end.42, %if.then.33
  br label %if.end.110, !dbg !1979

if.else.44:                                       ; preds = %if.then.31
  %49 = load i32, i32* %col, align 4, !dbg !1980, !tbaa !900
  %50 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1982, !tbaa !894
  %indent45 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %50, i32 0, i32 8, !dbg !1983
  %51 = load i32, i32* %indent45, align 4, !dbg !1983, !tbaa !989
  %idxprom46 = sext i32 %51 to i64, !dbg !1984
  %52 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1984, !tbaa !894
  %indstack47 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %52, i32 0, i32 9, !dbg !1985
  %arrayidx48 = getelementptr [100 x i32], [100 x i32]* %indstack47, i32 0, i64 %idxprom46, !dbg !1984
  %53 = load i32, i32* %arrayidx48, align 4, !dbg !1984, !tbaa !900
  %cmp49 = icmp sgt i32 %49, %53, !dbg !1986
  br i1 %cmp49, label %if.then.50, label %if.else.77, !dbg !1987

if.then.50:                                       ; preds = %if.else.44
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1988, !tbaa !894
  %indent51 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %54, i32 0, i32 8, !dbg !1991
  %55 = load i32, i32* %indent51, align 4, !dbg !1991, !tbaa !989
  %add52 = add i32 %55, 1, !dbg !1992
  %cmp53 = icmp sge i32 %add52, 100, !dbg !1993
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !1994

if.then.54:                                       ; preds = %if.then.50
  %56 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1995, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %56, i32 0, i32 5, !dbg !1997
  store i32 20, i32* %done, align 4, !dbg !1998, !tbaa !973
  %57 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !1999, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %57, i32 0, i32 2, !dbg !2000
  %58 = load i8*, i8** %inp, align 8, !dbg !2000, !tbaa !928
  %59 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2001, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %59, i32 0, i32 1, !dbg !2002
  store i8* %58, i8** %cur, align 8, !dbg !2003, !tbaa !937
  store i32 53, i32* %retval, !dbg !2004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2004

if.end.55:                                        ; preds = %if.then.50
  %60 = load i32, i32* %altcol, align 4, !dbg !2005, !tbaa !900
  %61 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2007, !tbaa !894
  %indent56 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %61, i32 0, i32 8, !dbg !2008
  %62 = load i32, i32* %indent56, align 4, !dbg !2008, !tbaa !989
  %idxprom57 = sext i32 %62 to i64, !dbg !2009
  %63 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2009, !tbaa !894
  %altindstack58 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %63, i32 0, i32 20, !dbg !2010
  %arrayidx59 = getelementptr [100 x i32], [100 x i32]* %altindstack58, i32 0, i64 %idxprom57, !dbg !2009
  %64 = load i32, i32* %arrayidx59, align 4, !dbg !2009, !tbaa !900
  %cmp60 = icmp sle i32 %60, %64, !dbg !2011
  br i1 %cmp60, label %if.then.61, label %if.end.66, !dbg !2012

if.then.61:                                       ; preds = %if.end.55
  %65 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2013, !tbaa !894
  %call62 = call i32 @indenterror(%struct.tok_state* %65), !dbg !2016
  %tobool63 = icmp ne i32 %call62, 0, !dbg !2016
  br i1 %tobool63, label %if.then.64, label %if.end.65, !dbg !2017

if.then.64:                                       ; preds = %if.then.61
  store i32 53, i32* %retval, !dbg !2018
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2018

if.end.65:                                        ; preds = %if.then.61
  br label %if.end.66, !dbg !2019

if.end.66:                                        ; preds = %if.end.65, %if.end.55
  %66 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2020, !tbaa !894
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %66, i32 0, i32 11, !dbg !2021
  %67 = load i32, i32* %pendin, align 4, !dbg !2022, !tbaa !1000
  %inc67 = add i32 %67, 1, !dbg !2022
  store i32 %inc67, i32* %pendin, align 4, !dbg !2022, !tbaa !1000
  %68 = load i32, i32* %col, align 4, !dbg !2023, !tbaa !900
  %69 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2024, !tbaa !894
  %indent68 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %69, i32 0, i32 8, !dbg !2025
  %70 = load i32, i32* %indent68, align 4, !dbg !2026, !tbaa !989
  %inc69 = add i32 %70, 1, !dbg !2026
  store i32 %inc69, i32* %indent68, align 4, !dbg !2026, !tbaa !989
  %idxprom70 = sext i32 %inc69 to i64, !dbg !2027
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2027, !tbaa !894
  %indstack71 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %71, i32 0, i32 9, !dbg !2028
  %arrayidx72 = getelementptr [100 x i32], [100 x i32]* %indstack71, i32 0, i64 %idxprom70, !dbg !2027
  store i32 %68, i32* %arrayidx72, align 4, !dbg !2029, !tbaa !900
  %72 = load i32, i32* %altcol, align 4, !dbg !2030, !tbaa !900
  %73 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2031, !tbaa !894
  %indent73 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %73, i32 0, i32 8, !dbg !2032
  %74 = load i32, i32* %indent73, align 4, !dbg !2032, !tbaa !989
  %idxprom74 = sext i32 %74 to i64, !dbg !2033
  %75 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2033, !tbaa !894
  %altindstack75 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %75, i32 0, i32 20, !dbg !2034
  %arrayidx76 = getelementptr [100 x i32], [100 x i32]* %altindstack75, i32 0, i64 %idxprom74, !dbg !2033
  store i32 %72, i32* %arrayidx76, align 4, !dbg !2035, !tbaa !900
  br label %if.end.109, !dbg !2036

if.else.77:                                       ; preds = %if.else.44
  br label %while.cond, !dbg !2037

while.cond:                                       ; preds = %while.body, %if.else.77
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2039, !tbaa !894
  %indent78 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %76, i32 0, i32 8, !dbg !2042
  %77 = load i32, i32* %indent78, align 4, !dbg !2042, !tbaa !989
  %cmp79 = icmp sgt i32 %77, 0, !dbg !2043
  br i1 %cmp79, label %land.rhs, label %land.end, !dbg !2044

land.rhs:                                         ; preds = %while.cond
  %78 = load i32, i32* %col, align 4, !dbg !2045, !tbaa !900
  %79 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2046, !tbaa !894
  %indent80 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %79, i32 0, i32 8, !dbg !2047
  %80 = load i32, i32* %indent80, align 4, !dbg !2047, !tbaa !989
  %idxprom81 = sext i32 %80 to i64, !dbg !2048
  %81 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2048, !tbaa !894
  %indstack82 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %81, i32 0, i32 9, !dbg !2049
  %arrayidx83 = getelementptr [100 x i32], [100 x i32]* %indstack82, i32 0, i64 %idxprom81, !dbg !2048
  %82 = load i32, i32* %arrayidx83, align 4, !dbg !2048, !tbaa !900
  %cmp84 = icmp slt i32 %78, %82, !dbg !2050
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %83 = phi i1 [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %83, label %while.body, label %while.end, !dbg !2051

while.body:                                       ; preds = %land.end
  %84 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2053, !tbaa !894
  %pendin85 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %84, i32 0, i32 11, !dbg !2055
  %85 = load i32, i32* %pendin85, align 4, !dbg !2056, !tbaa !1000
  %dec = add i32 %85, -1, !dbg !2056
  store i32 %dec, i32* %pendin85, align 4, !dbg !2056, !tbaa !1000
  %86 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2057, !tbaa !894
  %indent86 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %86, i32 0, i32 8, !dbg !2058
  %87 = load i32, i32* %indent86, align 4, !dbg !2059, !tbaa !989
  %dec87 = add i32 %87, -1, !dbg !2059
  store i32 %dec87, i32* %indent86, align 4, !dbg !2059, !tbaa !989
  br label %while.cond, !dbg !2037

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %col, align 4, !dbg !2060, !tbaa !900
  %89 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2062, !tbaa !894
  %indent88 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %89, i32 0, i32 8, !dbg !2063
  %90 = load i32, i32* %indent88, align 4, !dbg !2063, !tbaa !989
  %idxprom89 = sext i32 %90 to i64, !dbg !2064
  %91 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2064, !tbaa !894
  %indstack90 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %91, i32 0, i32 9, !dbg !2065
  %arrayidx91 = getelementptr [100 x i32], [100 x i32]* %indstack90, i32 0, i64 %idxprom89, !dbg !2064
  %92 = load i32, i32* %arrayidx91, align 4, !dbg !2064, !tbaa !900
  %cmp92 = icmp ne i32 %88, %92, !dbg !2066
  br i1 %cmp92, label %if.then.93, label %if.end.97, !dbg !2067

if.then.93:                                       ; preds = %while.end
  %93 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2068, !tbaa !894
  %done94 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %93, i32 0, i32 5, !dbg !2070
  store i32 21, i32* %done94, align 4, !dbg !2071, !tbaa !973
  %94 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2072, !tbaa !894
  %inp95 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %94, i32 0, i32 2, !dbg !2073
  %95 = load i8*, i8** %inp95, align 8, !dbg !2073, !tbaa !928
  %96 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2074, !tbaa !894
  %cur96 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %96, i32 0, i32 1, !dbg !2075
  store i8* %95, i8** %cur96, align 8, !dbg !2076, !tbaa !937
  store i32 53, i32* %retval, !dbg !2077
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2077

if.end.97:                                        ; preds = %while.end
  %97 = load i32, i32* %altcol, align 4, !dbg !2078, !tbaa !900
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2080, !tbaa !894
  %indent98 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 8, !dbg !2081
  %99 = load i32, i32* %indent98, align 4, !dbg !2081, !tbaa !989
  %idxprom99 = sext i32 %99 to i64, !dbg !2082
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2082, !tbaa !894
  %altindstack100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 20, !dbg !2083
  %arrayidx101 = getelementptr [100 x i32], [100 x i32]* %altindstack100, i32 0, i64 %idxprom99, !dbg !2082
  %101 = load i32, i32* %arrayidx101, align 4, !dbg !2082, !tbaa !900
  %cmp102 = icmp ne i32 %97, %101, !dbg !2084
  br i1 %cmp102, label %if.then.103, label %if.end.108, !dbg !2085

if.then.103:                                      ; preds = %if.end.97
  %102 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2086, !tbaa !894
  %call104 = call i32 @indenterror(%struct.tok_state* %102), !dbg !2089
  %tobool105 = icmp ne i32 %call104, 0, !dbg !2089
  br i1 %tobool105, label %if.then.106, label %if.end.107, !dbg !2090

if.then.106:                                      ; preds = %if.then.103
  store i32 53, i32* %retval, !dbg !2091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2091

if.end.107:                                       ; preds = %if.then.103
  br label %if.end.108, !dbg !2092

if.end.108:                                       ; preds = %if.end.107, %if.end.97
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.66
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.43
  br label %if.end.111, !dbg !2093

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.29, %if.end.27
  store i32 0, i32* %cleanup.dest.slot, !dbg !2094
  br label %cleanup, !dbg !2094

cleanup:                                          ; preds = %if.end.111, %if.then.106, %if.then.93, %if.then.64, %if.then.54, %if.then.41
  %103 = bitcast i32* %altcol to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 4, i8* %103) #2, !dbg !2095
  %104 = bitcast i32* %col to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 4, i8* %104) #2, !dbg !2095
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.610 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.113, !dbg !2097

if.end.113:                                       ; preds = %cleanup.cont, %nextline
  %105 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2098, !tbaa !894
  %cur114 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %105, i32 0, i32 1, !dbg !2099
  %106 = load i8*, i8** %cur114, align 8, !dbg !2099, !tbaa !937
  %107 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2100, !tbaa !894
  %start115 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %107, i32 0, i32 4, !dbg !2101
  store i8* %106, i8** %start115, align 8, !dbg !2102, !tbaa !957
  %108 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2103, !tbaa !894
  %pendin116 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %108, i32 0, i32 11, !dbg !2105
  %109 = load i32, i32* %pendin116, align 4, !dbg !2105, !tbaa !1000
  %cmp117 = icmp ne i32 %109, 0, !dbg !2106
  br i1 %cmp117, label %if.then.118, label %if.end.127, !dbg !2107

if.then.118:                                      ; preds = %if.end.113
  %110 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2108, !tbaa !894
  %pendin119 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %110, i32 0, i32 11, !dbg !2111
  %111 = load i32, i32* %pendin119, align 4, !dbg !2111, !tbaa !1000
  %cmp120 = icmp slt i32 %111, 0, !dbg !2112
  br i1 %cmp120, label %if.then.121, label %if.else.124, !dbg !2113

if.then.121:                                      ; preds = %if.then.118
  %112 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2114, !tbaa !894
  %pendin122 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %112, i32 0, i32 11, !dbg !2116
  %113 = load i32, i32* %pendin122, align 4, !dbg !2117, !tbaa !1000
  %inc123 = add i32 %113, 1, !dbg !2117
  store i32 %inc123, i32* %pendin122, align 4, !dbg !2117, !tbaa !1000
  store i32 6, i32* %retval, !dbg !2118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2118

if.else.124:                                      ; preds = %if.then.118
  %114 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2119, !tbaa !894
  %pendin125 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %114, i32 0, i32 11, !dbg !2121
  %115 = load i32, i32* %pendin125, align 4, !dbg !2122, !tbaa !1000
  %dec126 = add i32 %115, -1, !dbg !2122
  store i32 %dec126, i32* %pendin125, align 4, !dbg !2122, !tbaa !1000
  store i32 5, i32* %retval, !dbg !2123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2123

if.end.127:                                       ; preds = %if.end.113
  br label %again, !dbg !2124

again:                                            ; preds = %if.end.578, %if.end.127
  %116 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2126, !tbaa !894
  %start128 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %116, i32 0, i32 4, !dbg !2127
  store i8* null, i8** %start128, align 8, !dbg !2128, !tbaa !957
  br label %do.body, !dbg !2129

do.body:                                          ; preds = %lor.end, %again
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2130, !tbaa !894
  %call129 = call i32 @tok_nextc(%struct.tok_state* %117), !dbg !2132
  store i32 %call129, i32* %c, align 4, !dbg !2133, !tbaa !900
  br label %do.cond, !dbg !2134

do.cond:                                          ; preds = %do.body
  %118 = load i32, i32* %c, align 4, !dbg !2135, !tbaa !900
  %cmp130 = icmp eq i32 %118, 32, !dbg !2137
  br i1 %cmp130, label %lor.end, label %lor.lhs.false.131, !dbg !2138

lor.lhs.false.131:                                ; preds = %do.cond
  %119 = load i32, i32* %c, align 4, !dbg !2139, !tbaa !900
  %cmp132 = icmp eq i32 %119, 9, !dbg !2141
  br i1 %cmp132, label %lor.end, label %lor.rhs, !dbg !2142

lor.rhs:                                          ; preds = %lor.lhs.false.131
  %120 = load i32, i32* %c, align 4, !dbg !2143, !tbaa !900
  %cmp133 = icmp eq i32 %120, 12, !dbg !2145
  br label %lor.end, !dbg !2142

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.131, %do.cond
  %121 = phi i1 [ true, %lor.lhs.false.131 ], [ true, %do.cond ], [ %cmp133, %lor.rhs ]
  br i1 %121, label %do.body, label %do.end, !dbg !2146

do.end:                                           ; preds = %lor.end
  %122 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2150, !tbaa !894
  %cur134 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %122, i32 0, i32 1, !dbg !2151
  %123 = load i8*, i8** %cur134, align 8, !dbg !2151, !tbaa !937
  %add.ptr = getelementptr i8, i8* %123, i64 -1, !dbg !2152
  %124 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2153, !tbaa !894
  %start135 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %124, i32 0, i32 4, !dbg !2154
  store i8* %add.ptr, i8** %start135, align 8, !dbg !2155, !tbaa !957
  %125 = load i32, i32* %c, align 4, !dbg !2156, !tbaa !900
  %cmp136 = icmp eq i32 %125, 35, !dbg !2158
  br i1 %cmp136, label %if.then.137, label %if.end.146, !dbg !2159

if.then.137:                                      ; preds = %do.end
  br label %while.cond.138, !dbg !2160

while.cond.138:                                   ; preds = %while.body.143, %if.then.137
  %126 = load i32, i32* %c, align 4, !dbg !2161, !tbaa !900
  %cmp139 = icmp ne i32 %126, -1, !dbg !2164
  br i1 %cmp139, label %land.rhs.140, label %land.end.142, !dbg !2165

land.rhs.140:                                     ; preds = %while.cond.138
  %127 = load i32, i32* %c, align 4, !dbg !2166, !tbaa !900
  %cmp141 = icmp ne i32 %127, 10, !dbg !2168
  br label %land.end.142

land.end.142:                                     ; preds = %land.rhs.140, %while.cond.138
  %128 = phi i1 [ false, %while.cond.138 ], [ %cmp141, %land.rhs.140 ]
  br i1 %128, label %while.body.143, label %while.end.145, !dbg !2169

while.body.143:                                   ; preds = %land.end.142
  %129 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2171, !tbaa !894
  %call144 = call i32 @tok_nextc(%struct.tok_state* %129), !dbg !2172
  store i32 %call144, i32* %c, align 4, !dbg !2173, !tbaa !900
  br label %while.cond.138, !dbg !2160

while.end.145:                                    ; preds = %land.end.142
  br label %if.end.146, !dbg !2174

if.end.146:                                       ; preds = %while.end.145, %do.end
  %130 = load i32, i32* %c, align 4, !dbg !2176, !tbaa !900
  %cmp147 = icmp eq i32 %130, -1, !dbg !2178
  br i1 %cmp147, label %if.then.148, label %if.end.151, !dbg !2179

if.then.148:                                      ; preds = %if.end.146
  %131 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2180, !tbaa !894
  %done149 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %131, i32 0, i32 5, !dbg !2182
  %132 = load i32, i32* %done149, align 4, !dbg !2182, !tbaa !973
  %cmp150 = icmp eq i32 %132, 11, !dbg !2183
  %cond = select i1 %cmp150, i32 0, i32 53, !dbg !2180
  store i32 %cond, i32* %retval, !dbg !2184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2184

if.end.151:                                       ; preds = %if.end.146
  store i32 0, i32* %nonascii, align 4, !dbg !2185, !tbaa !900
  %133 = load i32, i32* %c, align 4, !dbg !2186, !tbaa !900
  %cmp152 = icmp sge i32 %133, 97, !dbg !2187
  br i1 %cmp152, label %land.lhs.true.153, label %lor.lhs.false.155, !dbg !2188

land.lhs.true.153:                                ; preds = %if.end.151
  %134 = load i32, i32* %c, align 4, !dbg !2189, !tbaa !900
  %cmp154 = icmp sle i32 %134, 122, !dbg !2191
  br i1 %cmp154, label %if.then.163, label %lor.lhs.false.155, !dbg !2192

lor.lhs.false.155:                                ; preds = %land.lhs.true.153, %if.end.151
  %135 = load i32, i32* %c, align 4, !dbg !2193, !tbaa !900
  %cmp156 = icmp sge i32 %135, 65, !dbg !2196
  br i1 %cmp156, label %land.lhs.true.157, label %lor.lhs.false.159, !dbg !2197

land.lhs.true.157:                                ; preds = %lor.lhs.false.155
  %136 = load i32, i32* %c, align 4, !dbg !2198, !tbaa !900
  %cmp158 = icmp sle i32 %136, 90, !dbg !2200
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false.159, !dbg !2201

lor.lhs.false.159:                                ; preds = %land.lhs.true.157, %lor.lhs.false.155
  %137 = load i32, i32* %c, align 4, !dbg !2202, !tbaa !900
  %cmp160 = icmp eq i32 %137, 95, !dbg !2205
  br i1 %cmp160, label %if.then.163, label %lor.lhs.false.161, !dbg !2206

lor.lhs.false.161:                                ; preds = %lor.lhs.false.159
  %138 = load i32, i32* %c, align 4, !dbg !2207, !tbaa !900
  %cmp162 = icmp sge i32 %138, 128, !dbg !2209
  br i1 %cmp162, label %if.then.163, label %if.end.240, !dbg !2210

if.then.163:                                      ; preds = %lor.lhs.false.161, %lor.lhs.false.159, %land.lhs.true.157, %land.lhs.true.153
  %139 = bitcast i32* %saw_b to i8*, !dbg !2211
  call void @llvm.lifetime.start(i64 4, i8* %139) #2, !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %saw_b, metadata !715, metadata !898), !dbg !2212
  store i32 0, i32* %saw_b, align 4, !dbg !2212, !tbaa !900
  %140 = bitcast i32* %saw_r to i8*, !dbg !2211
  call void @llvm.lifetime.start(i64 4, i8* %140) #2, !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %saw_r, metadata !718, metadata !898), !dbg !2213
  store i32 0, i32* %saw_r, align 4, !dbg !2213, !tbaa !900
  %141 = bitcast i32* %saw_u to i8*, !dbg !2211
  call void @llvm.lifetime.start(i64 4, i8* %141) #2, !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %saw_u, metadata !719, metadata !898), !dbg !2214
  store i32 0, i32* %saw_u, align 4, !dbg !2214, !tbaa !900
  br label %while.cond.164, !dbg !2215

while.cond.164:                                   ; preds = %if.end.203, %if.then.163
  br label %while.body.165, !dbg !2216

while.body.165:                                   ; preds = %while.cond.164
  %142 = load i32, i32* %saw_b, align 4, !dbg !2219, !tbaa !900
  %tobool166 = icmp ne i32 %142, 0, !dbg !2219
  br i1 %tobool166, label %if.else.174, label %lor.lhs.false.167, !dbg !2222

lor.lhs.false.167:                                ; preds = %while.body.165
  %143 = load i32, i32* %saw_u, align 4, !dbg !2223, !tbaa !900
  %tobool168 = icmp ne i32 %143, 0, !dbg !2223
  br i1 %tobool168, label %if.else.174, label %land.lhs.true.169, !dbg !2225

land.lhs.true.169:                                ; preds = %lor.lhs.false.167
  %144 = load i32, i32* %c, align 4, !dbg !2226, !tbaa !900
  %cmp170 = icmp eq i32 %144, 98, !dbg !2228
  br i1 %cmp170, label %if.then.173, label %lor.lhs.false.171, !dbg !2229

lor.lhs.false.171:                                ; preds = %land.lhs.true.169
  %145 = load i32, i32* %c, align 4, !dbg !2230, !tbaa !900
  %cmp172 = icmp eq i32 %145, 66, !dbg !2232
  br i1 %cmp172, label %if.then.173, label %if.else.174, !dbg !2233

if.then.173:                                      ; preds = %lor.lhs.false.171, %land.lhs.true.169
  store i32 1, i32* %saw_b, align 4, !dbg !2234, !tbaa !900
  br label %if.end.197, !dbg !2235

if.else.174:                                      ; preds = %lor.lhs.false.171, %lor.lhs.false.167, %while.body.165
  %146 = load i32, i32* %saw_b, align 4, !dbg !2236, !tbaa !900
  %tobool175 = icmp ne i32 %146, 0, !dbg !2236
  br i1 %tobool175, label %if.else.185, label %lor.lhs.false.176, !dbg !2238

lor.lhs.false.176:                                ; preds = %if.else.174
  %147 = load i32, i32* %saw_u, align 4, !dbg !2239, !tbaa !900
  %tobool177 = icmp ne i32 %147, 0, !dbg !2239
  br i1 %tobool177, label %if.else.185, label %lor.lhs.false.178, !dbg !2241

lor.lhs.false.178:                                ; preds = %lor.lhs.false.176
  %148 = load i32, i32* %saw_r, align 4, !dbg !2242, !tbaa !900
  %tobool179 = icmp ne i32 %148, 0, !dbg !2242
  br i1 %tobool179, label %if.else.185, label %land.lhs.true.180, !dbg !2244

land.lhs.true.180:                                ; preds = %lor.lhs.false.178
  %149 = load i32, i32* %c, align 4, !dbg !2245, !tbaa !900
  %cmp181 = icmp eq i32 %149, 117, !dbg !2247
  br i1 %cmp181, label %if.then.184, label %lor.lhs.false.182, !dbg !2248

lor.lhs.false.182:                                ; preds = %land.lhs.true.180
  %150 = load i32, i32* %c, align 4, !dbg !2249, !tbaa !900
  %cmp183 = icmp eq i32 %150, 85, !dbg !2251
  br i1 %cmp183, label %if.then.184, label %if.else.185, !dbg !2252

if.then.184:                                      ; preds = %lor.lhs.false.182, %land.lhs.true.180
  store i32 1, i32* %saw_u, align 4, !dbg !2253, !tbaa !900
  br label %if.end.196, !dbg !2254

if.else.185:                                      ; preds = %lor.lhs.false.182, %lor.lhs.false.178, %lor.lhs.false.176, %if.else.174
  %151 = load i32, i32* %saw_r, align 4, !dbg !2255, !tbaa !900
  %tobool186 = icmp ne i32 %151, 0, !dbg !2255
  br i1 %tobool186, label %if.else.194, label %lor.lhs.false.187, !dbg !2257

lor.lhs.false.187:                                ; preds = %if.else.185
  %152 = load i32, i32* %saw_u, align 4, !dbg !2258, !tbaa !900
  %tobool188 = icmp ne i32 %152, 0, !dbg !2258
  br i1 %tobool188, label %if.else.194, label %land.lhs.true.189, !dbg !2260

land.lhs.true.189:                                ; preds = %lor.lhs.false.187
  %153 = load i32, i32* %c, align 4, !dbg !2261, !tbaa !900
  %cmp190 = icmp eq i32 %153, 114, !dbg !2263
  br i1 %cmp190, label %if.then.193, label %lor.lhs.false.191, !dbg !2264

lor.lhs.false.191:                                ; preds = %land.lhs.true.189
  %154 = load i32, i32* %c, align 4, !dbg !2265, !tbaa !900
  %cmp192 = icmp eq i32 %154, 82, !dbg !2267
  br i1 %cmp192, label %if.then.193, label %if.else.194, !dbg !2268

if.then.193:                                      ; preds = %lor.lhs.false.191, %land.lhs.true.189
  store i32 1, i32* %saw_r, align 4, !dbg !2269, !tbaa !900
  br label %if.end.195, !dbg !2270

if.else.194:                                      ; preds = %lor.lhs.false.191, %lor.lhs.false.187, %if.else.185
  br label %while.end.204, !dbg !2271

if.end.195:                                       ; preds = %if.then.193
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.184
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.173
  %155 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2272, !tbaa !894
  %call198 = call i32 @tok_nextc(%struct.tok_state* %155), !dbg !2273
  store i32 %call198, i32* %c, align 4, !dbg !2274, !tbaa !900
  %156 = load i32, i32* %c, align 4, !dbg !2275, !tbaa !900
  %cmp199 = icmp eq i32 %156, 34, !dbg !2277
  br i1 %cmp199, label %if.then.202, label %lor.lhs.false.200, !dbg !2278

lor.lhs.false.200:                                ; preds = %if.end.197
  %157 = load i32, i32* %c, align 4, !dbg !2279, !tbaa !900
  %cmp201 = icmp eq i32 %157, 39, !dbg !2281
  br i1 %cmp201, label %if.then.202, label %if.end.203, !dbg !2282

if.then.202:                                      ; preds = %lor.lhs.false.200, %if.end.197
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2283

if.end.203:                                       ; preds = %lor.lhs.false.200
  br label %while.cond.164, !dbg !2215

while.end.204:                                    ; preds = %if.else.194
  br label %while.cond.205, !dbg !2284

while.cond.205:                                   ; preds = %if.end.225, %while.end.204
  %158 = load i32, i32* %c, align 4, !dbg !2285, !tbaa !900
  %cmp206 = icmp sge i32 %158, 97, !dbg !2287
  br i1 %cmp206, label %land.lhs.true.207, label %lor.lhs.false.209, !dbg !2288

land.lhs.true.207:                                ; preds = %while.cond.205
  %159 = load i32, i32* %c, align 4, !dbg !2289, !tbaa !900
  %cmp208 = icmp sle i32 %159, 122, !dbg !2291
  br i1 %cmp208, label %lor.end.221, label %lor.lhs.false.209, !dbg !2292

lor.lhs.false.209:                                ; preds = %land.lhs.true.207, %while.cond.205
  %160 = load i32, i32* %c, align 4, !dbg !2293, !tbaa !900
  %cmp210 = icmp sge i32 %160, 65, !dbg !2296
  br i1 %cmp210, label %land.lhs.true.211, label %lor.lhs.false.213, !dbg !2297

land.lhs.true.211:                                ; preds = %lor.lhs.false.209
  %161 = load i32, i32* %c, align 4, !dbg !2298, !tbaa !900
  %cmp212 = icmp sle i32 %161, 90, !dbg !2300
  br i1 %cmp212, label %lor.end.221, label %lor.lhs.false.213, !dbg !2301

lor.lhs.false.213:                                ; preds = %land.lhs.true.211, %lor.lhs.false.209
  %162 = load i32, i32* %c, align 4, !dbg !2302, !tbaa !900
  %cmp214 = icmp sge i32 %162, 48, !dbg !2305
  br i1 %cmp214, label %land.lhs.true.215, label %lor.lhs.false.217, !dbg !2306

land.lhs.true.215:                                ; preds = %lor.lhs.false.213
  %163 = load i32, i32* %c, align 4, !dbg !2307, !tbaa !900
  %cmp216 = icmp sle i32 %163, 57, !dbg !2309
  br i1 %cmp216, label %lor.end.221, label %lor.lhs.false.217, !dbg !2310

lor.lhs.false.217:                                ; preds = %land.lhs.true.215, %lor.lhs.false.213
  %164 = load i32, i32* %c, align 4, !dbg !2311, !tbaa !900
  %cmp218 = icmp eq i32 %164, 95, !dbg !2314
  br i1 %cmp218, label %lor.end.221, label %lor.rhs.219, !dbg !2315

lor.rhs.219:                                      ; preds = %lor.lhs.false.217
  %165 = load i32, i32* %c, align 4, !dbg !2316, !tbaa !900
  %cmp220 = icmp sge i32 %165, 128, !dbg !2318
  br label %lor.end.221, !dbg !2315

lor.end.221:                                      ; preds = %lor.rhs.219, %lor.lhs.false.217, %land.lhs.true.215, %land.lhs.true.211, %land.lhs.true.207
  %166 = phi i1 [ true, %lor.lhs.false.217 ], [ true, %land.lhs.true.215 ], [ true, %land.lhs.true.211 ], [ true, %land.lhs.true.207 ], [ %cmp220, %lor.rhs.219 ]
  br i1 %166, label %while.body.222, label %while.end.227, !dbg !2319

while.body.222:                                   ; preds = %lor.end.221
  %167 = load i32, i32* %c, align 4, !dbg !2325, !tbaa !900
  %cmp223 = icmp sge i32 %167, 128, !dbg !2328
  br i1 %cmp223, label %if.then.224, label %if.end.225, !dbg !2329

if.then.224:                                      ; preds = %while.body.222
  store i32 1, i32* %nonascii, align 4, !dbg !2330, !tbaa !900
  br label %if.end.225, !dbg !2331

if.end.225:                                       ; preds = %if.then.224, %while.body.222
  %168 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2332, !tbaa !894
  %call226 = call i32 @tok_nextc(%struct.tok_state* %168), !dbg !2333
  store i32 %call226, i32* %c, align 4, !dbg !2334, !tbaa !900
  br label %while.cond.205, !dbg !2284

while.end.227:                                    ; preds = %lor.end.221
  %169 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2335, !tbaa !894
  %170 = load i32, i32* %c, align 4, !dbg !2336, !tbaa !900
  call void @tok_backup(%struct.tok_state* %169, i32 %170), !dbg !2337
  %171 = load i32, i32* %nonascii, align 4, !dbg !2338, !tbaa !900
  %tobool228 = icmp ne i32 %171, 0, !dbg !2338
  br i1 %tobool228, label %land.lhs.true.229, label %if.end.234, !dbg !2340

land.lhs.true.229:                                ; preds = %while.end.227
  %172 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2341, !tbaa !894
  %call230 = call i32 @verify_identifier(%struct.tok_state* %172), !dbg !2342
  %tobool231 = icmp ne i32 %call230, 0, !dbg !2342
  br i1 %tobool231, label %if.end.234, label %if.then.232, !dbg !2343

if.then.232:                                      ; preds = %land.lhs.true.229
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2344, !tbaa !894
  %done233 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 5, !dbg !2346
  store i32 26, i32* %done233, align 4, !dbg !2347, !tbaa !973
  store i32 53, i32* %retval, !dbg !2348
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2348

if.end.234:                                       ; preds = %land.lhs.true.229, %while.end.227
  %174 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2349, !tbaa !894
  %start235 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %174, i32 0, i32 4, !dbg !2350
  %175 = load i8*, i8** %start235, align 8, !dbg !2350, !tbaa !957
  %176 = load i8**, i8*** %p_start.addr, align 8, !dbg !2351, !tbaa !894
  store i8* %175, i8** %176, align 8, !dbg !2352, !tbaa !894
  %177 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2353, !tbaa !894
  %cur236 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %177, i32 0, i32 1, !dbg !2354
  %178 = load i8*, i8** %cur236, align 8, !dbg !2354, !tbaa !937
  %179 = load i8**, i8*** %p_end.addr, align 8, !dbg !2355, !tbaa !894
  store i8* %178, i8** %179, align 8, !dbg !2356, !tbaa !894
  store i32 1, i32* %retval, !dbg !2357
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237, !dbg !2357

cleanup.237:                                      ; preds = %if.then.202, %if.end.234, %if.then.232
  %180 = bitcast i32* %saw_u to i8*, !dbg !2358
  call void @llvm.lifetime.end(i64 4, i8* %180) #2, !dbg !2358
  %181 = bitcast i32* %saw_r to i8*, !dbg !2358
  call void @llvm.lifetime.end(i64 4, i8* %181) #2, !dbg !2358
  %182 = bitcast i32* %saw_b to i8*, !dbg !2358
  call void @llvm.lifetime.end(i64 4, i8* %182) #2, !dbg !2358
  %cleanup.dest500 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest500, label %cleanup.610 [
    i32 14, label %letter_quote
  ]

if.end.240:                                       ; preds = %lor.lhs.false.161
  %183 = load i32, i32* %c, align 4, !dbg !2359, !tbaa !900
  %cmp241 = icmp eq i32 %183, 10, !dbg !2361
  br i1 %cmp241, label %if.then.242, label %if.end.253, !dbg !2362

if.then.242:                                      ; preds = %if.end.240
  %184 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2363, !tbaa !894
  %atbol243 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %184, i32 0, i32 10, !dbg !2365
  store i32 1, i32* %atbol243, align 4, !dbg !2366, !tbaa !996
  %185 = load i32, i32* %blankline, align 4, !dbg !2367, !tbaa !900
  %tobool244 = icmp ne i32 %185, 0, !dbg !2367
  br i1 %tobool244, label %if.then.248, label %lor.lhs.false.245, !dbg !2369

lor.lhs.false.245:                                ; preds = %if.then.242
  %186 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2370, !tbaa !894
  %level246 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %186, i32 0, i32 15, !dbg !2372
  %187 = load i32, i32* %level246, align 4, !dbg !2372, !tbaa !1016
  %cmp247 = icmp sgt i32 %187, 0, !dbg !2373
  br i1 %cmp247, label %if.then.248, label %if.end.249, !dbg !2374

if.then.248:                                      ; preds = %lor.lhs.false.245, %if.then.242
  br label %nextline, !dbg !2375

if.end.249:                                       ; preds = %lor.lhs.false.245
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2376, !tbaa !894
  %start250 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %188, i32 0, i32 4, !dbg !2377
  %189 = load i8*, i8** %start250, align 8, !dbg !2377, !tbaa !957
  %190 = load i8**, i8*** %p_start.addr, align 8, !dbg !2378, !tbaa !894
  store i8* %189, i8** %190, align 8, !dbg !2379, !tbaa !894
  %191 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2380, !tbaa !894
  %cur251 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %191, i32 0, i32 1, !dbg !2381
  %192 = load i8*, i8** %cur251, align 8, !dbg !2381, !tbaa !937
  %add.ptr252 = getelementptr i8, i8* %192, i64 -1, !dbg !2382
  %193 = load i8**, i8*** %p_end.addr, align 8, !dbg !2383, !tbaa !894
  store i8* %add.ptr252, i8** %193, align 8, !dbg !2384, !tbaa !894
  %194 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2385, !tbaa !894
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %194, i32 0, i32 25, !dbg !2386
  store i32 0, i32* %cont_line, align 4, !dbg !2387, !tbaa !1055
  store i32 4, i32* %retval, !dbg !2388
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2388

if.end.253:                                       ; preds = %if.end.240
  %195 = load i32, i32* %c, align 4, !dbg !2389, !tbaa !900
  %cmp254 = icmp eq i32 %195, 46, !dbg !2391
  br i1 %cmp254, label %if.then.255, label %if.end.279, !dbg !2392

if.then.255:                                      ; preds = %if.end.253
  %196 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2393, !tbaa !894
  %call256 = call i32 @tok_nextc(%struct.tok_state* %196), !dbg !2395
  store i32 %call256, i32* %c, align 4, !dbg !2396, !tbaa !900
  %197 = load i32, i32* %c, align 4, !dbg !2397, !tbaa !900
  %idxprom257 = sext i32 %197 to i64, !dbg !2399
  %call258 = call i16** @__ctype_b_loc() #1, !dbg !2400
  %198 = load i16*, i16** %call258, align 8, !dbg !2401, !tbaa !894
  %arrayidx259 = getelementptr i16, i16* %198, i64 %idxprom257, !dbg !2399
  %199 = load i16, i16* %arrayidx259, align 2, !dbg !2399, !tbaa !2402
  %conv = zext i16 %199 to i32, !dbg !2399
  %and = and i32 %conv, 2048, !dbg !2404
  %tobool260 = icmp ne i32 %and, 0, !dbg !2404
  br i1 %tobool260, label %if.then.261, label %if.else.262, !dbg !2405

if.then.261:                                      ; preds = %if.then.255
  br label %fraction, !dbg !2406

if.else.262:                                      ; preds = %if.then.255
  %200 = load i32, i32* %c, align 4, !dbg !2408, !tbaa !900
  %cmp263 = icmp eq i32 %200, 46, !dbg !2410
  br i1 %cmp263, label %if.then.265, label %if.else.274, !dbg !2411

if.then.265:                                      ; preds = %if.else.262
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2412, !tbaa !894
  %call266 = call i32 @tok_nextc(%struct.tok_state* %201), !dbg !2414
  store i32 %call266, i32* %c, align 4, !dbg !2415, !tbaa !900
  %202 = load i32, i32* %c, align 4, !dbg !2416, !tbaa !900
  %cmp267 = icmp eq i32 %202, 46, !dbg !2418
  br i1 %cmp267, label %if.then.269, label %if.else.272, !dbg !2419

if.then.269:                                      ; preds = %if.then.265
  %203 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2420, !tbaa !894
  %start270 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %203, i32 0, i32 4, !dbg !2422
  %204 = load i8*, i8** %start270, align 8, !dbg !2422, !tbaa !957
  %205 = load i8**, i8*** %p_start.addr, align 8, !dbg !2423, !tbaa !894
  store i8* %204, i8** %205, align 8, !dbg !2424, !tbaa !894
  %206 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2425, !tbaa !894
  %cur271 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %206, i32 0, i32 1, !dbg !2426
  %207 = load i8*, i8** %cur271, align 8, !dbg !2426, !tbaa !937
  %208 = load i8**, i8*** %p_end.addr, align 8, !dbg !2427, !tbaa !894
  store i8* %207, i8** %208, align 8, !dbg !2428, !tbaa !894
  store i32 51, i32* %retval, !dbg !2429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2429

if.else.272:                                      ; preds = %if.then.265
  %209 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2430, !tbaa !894
  %210 = load i32, i32* %c, align 4, !dbg !2432, !tbaa !900
  call void @tok_backup(%struct.tok_state* %209, i32 %210), !dbg !2433
  br label %if.end.273

if.end.273:                                       ; preds = %if.else.272
  %211 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2434, !tbaa !894
  call void @tok_backup(%struct.tok_state* %211, i32 46), !dbg !2435
  br label %if.end.275, !dbg !2436

if.else.274:                                      ; preds = %if.else.262
  %212 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2437, !tbaa !894
  %213 = load i32, i32* %c, align 4, !dbg !2439, !tbaa !900
  call void @tok_backup(%struct.tok_state* %212, i32 %213), !dbg !2440
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.274, %if.end.273
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275
  %214 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2441, !tbaa !894
  %start277 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %214, i32 0, i32 4, !dbg !2442
  %215 = load i8*, i8** %start277, align 8, !dbg !2442, !tbaa !957
  %216 = load i8**, i8*** %p_start.addr, align 8, !dbg !2443, !tbaa !894
  store i8* %215, i8** %216, align 8, !dbg !2444, !tbaa !894
  %217 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2445, !tbaa !894
  %cur278 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %217, i32 0, i32 1, !dbg !2446
  %218 = load i8*, i8** %cur278, align 8, !dbg !2446, !tbaa !937
  %219 = load i8**, i8*** %p_end.addr, align 8, !dbg !2447, !tbaa !894
  store i8* %218, i8** %219, align 8, !dbg !2448, !tbaa !894
  store i32 23, i32* %retval, !dbg !2449
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2449

if.end.279:                                       ; preds = %if.end.253
  %220 = load i32, i32* %c, align 4, !dbg !2450, !tbaa !900
  %idxprom280 = sext i32 %220 to i64, !dbg !2451
  %call281 = call i16** @__ctype_b_loc() #1, !dbg !2452
  %221 = load i16*, i16** %call281, align 8, !dbg !2453, !tbaa !894
  %arrayidx282 = getelementptr i16, i16* %221, i64 %idxprom280, !dbg !2451
  %222 = load i16, i16* %arrayidx282, align 2, !dbg !2451, !tbaa !2402
  %conv283 = zext i16 %222 to i32, !dbg !2451
  %and284 = and i32 %conv283, 2048, !dbg !2454
  %tobool285 = icmp ne i32 %and284, 0, !dbg !2454
  br i1 %tobool285, label %if.then.286, label %if.end.499, !dbg !2455

if.then.286:                                      ; preds = %if.end.279
  %223 = load i32, i32* %c, align 4, !dbg !2456, !tbaa !900
  %cmp287 = icmp eq i32 %223, 48, !dbg !2457
  br i1 %cmp287, label %if.then.289, label %if.else.428, !dbg !2458

if.then.289:                                      ; preds = %if.then.286
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2459, !tbaa !894
  %call290 = call i32 @tok_nextc(%struct.tok_state* %224), !dbg !2460
  store i32 %call290, i32* %c, align 4, !dbg !2461, !tbaa !900
  %225 = load i32, i32* %c, align 4, !dbg !2462, !tbaa !900
  %cmp291 = icmp eq i32 %225, 46, !dbg !2464
  br i1 %cmp291, label %if.then.293, label %if.end.294, !dbg !2465

if.then.293:                                      ; preds = %if.then.289
  br label %fraction, !dbg !2466

if.end.294:                                       ; preds = %if.then.289
  %226 = load i32, i32* %c, align 4, !dbg !2467, !tbaa !900
  %cmp295 = icmp eq i32 %226, 106, !dbg !2469
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false.297, !dbg !2470

lor.lhs.false.297:                                ; preds = %if.end.294
  %227 = load i32, i32* %c, align 4, !dbg !2471, !tbaa !900
  %cmp298 = icmp eq i32 %227, 74, !dbg !2473
  br i1 %cmp298, label %if.then.300, label %if.end.301, !dbg !2474

if.then.300:                                      ; preds = %lor.lhs.false.297, %if.end.294
  br label %imaginary, !dbg !2475

if.end.301:                                       ; preds = %lor.lhs.false.297
  %228 = load i32, i32* %c, align 4, !dbg !2476, !tbaa !900
  %cmp302 = icmp eq i32 %228, 120, !dbg !2477
  br i1 %cmp302, label %if.then.307, label %lor.lhs.false.304, !dbg !2478

lor.lhs.false.304:                                ; preds = %if.end.301
  %229 = load i32, i32* %c, align 4, !dbg !2479, !tbaa !900
  %cmp305 = icmp eq i32 %229, 88, !dbg !2481
  br i1 %cmp305, label %if.then.307, label %if.else.328, !dbg !2482

if.then.307:                                      ; preds = %lor.lhs.false.304, %if.end.301
  %230 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2483, !tbaa !894
  %call308 = call i32 @tok_nextc(%struct.tok_state* %230), !dbg !2485
  store i32 %call308, i32* %c, align 4, !dbg !2486, !tbaa !900
  %231 = load i32, i32* %c, align 4, !dbg !2487, !tbaa !900
  %idxprom309 = sext i32 %231 to i64, !dbg !2489
  %call310 = call i16** @__ctype_b_loc() #1, !dbg !2490
  %232 = load i16*, i16** %call310, align 8, !dbg !2491, !tbaa !894
  %arrayidx311 = getelementptr i16, i16* %232, i64 %idxprom309, !dbg !2489
  %233 = load i16, i16* %arrayidx311, align 2, !dbg !2489, !tbaa !2402
  %conv312 = zext i16 %233 to i32, !dbg !2489
  %and313 = and i32 %conv312, 4096, !dbg !2492
  %tobool314 = icmp ne i32 %and313, 0, !dbg !2492
  br i1 %tobool314, label %if.end.317, label %if.then.315, !dbg !2493

if.then.315:                                      ; preds = %if.then.307
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2494, !tbaa !894
  %done316 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %234, i32 0, i32 5, !dbg !2496
  store i32 13, i32* %done316, align 4, !dbg !2497, !tbaa !973
  %235 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2498, !tbaa !894
  %236 = load i32, i32* %c, align 4, !dbg !2499, !tbaa !900
  call void @tok_backup(%struct.tok_state* %235, i32 %236), !dbg !2500
  store i32 53, i32* %retval, !dbg !2501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2501

if.end.317:                                       ; preds = %if.then.307
  br label %do.body.318, !dbg !2502

do.body.318:                                      ; preds = %do.cond.320, %if.end.317
  %237 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2503, !tbaa !894
  %call319 = call i32 @tok_nextc(%struct.tok_state* %237), !dbg !2505
  store i32 %call319, i32* %c, align 4, !dbg !2506, !tbaa !900
  br label %do.cond.320, !dbg !2507

do.cond.320:                                      ; preds = %do.body.318
  %238 = load i32, i32* %c, align 4, !dbg !2508, !tbaa !900
  %idxprom321 = sext i32 %238 to i64, !dbg !2510
  %call322 = call i16** @__ctype_b_loc() #1, !dbg !2511
  %239 = load i16*, i16** %call322, align 8, !dbg !2512, !tbaa !894
  %arrayidx323 = getelementptr i16, i16* %239, i64 %idxprom321, !dbg !2510
  %240 = load i16, i16* %arrayidx323, align 2, !dbg !2510, !tbaa !2402
  %conv324 = zext i16 %240 to i32, !dbg !2510
  %and325 = and i32 %conv324, 4096, !dbg !2513
  %tobool326 = icmp ne i32 %and325, 0, !dbg !2507
  br i1 %tobool326, label %do.body.318, label %do.end.327, !dbg !2507

do.end.327:                                       ; preds = %do.cond.320
  br label %if.end.427, !dbg !2514

if.else.328:                                      ; preds = %lor.lhs.false.304
  %241 = load i32, i32* %c, align 4, !dbg !2515, !tbaa !900
  %cmp329 = icmp eq i32 %241, 111, !dbg !2516
  br i1 %cmp329, label %if.then.334, label %lor.lhs.false.331, !dbg !2517

lor.lhs.false.331:                                ; preds = %if.else.328
  %242 = load i32, i32* %c, align 4, !dbg !2518, !tbaa !900
  %cmp332 = icmp eq i32 %242, 79, !dbg !2520
  br i1 %cmp332, label %if.then.334, label %if.else.354, !dbg !2521

if.then.334:                                      ; preds = %lor.lhs.false.331, %if.else.328
  %243 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2522, !tbaa !894
  %call335 = call i32 @tok_nextc(%struct.tok_state* %243), !dbg !2524
  store i32 %call335, i32* %c, align 4, !dbg !2525, !tbaa !900
  %244 = load i32, i32* %c, align 4, !dbg !2526, !tbaa !900
  %cmp336 = icmp slt i32 %244, 48, !dbg !2528
  br i1 %cmp336, label %if.then.341, label %lor.lhs.false.338, !dbg !2529

lor.lhs.false.338:                                ; preds = %if.then.334
  %245 = load i32, i32* %c, align 4, !dbg !2530, !tbaa !900
  %cmp339 = icmp sge i32 %245, 56, !dbg !2532
  br i1 %cmp339, label %if.then.341, label %if.end.343, !dbg !2533

if.then.341:                                      ; preds = %lor.lhs.false.338, %if.then.334
  %246 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2534, !tbaa !894
  %done342 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %246, i32 0, i32 5, !dbg !2536
  store i32 13, i32* %done342, align 4, !dbg !2537, !tbaa !973
  %247 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2538, !tbaa !894
  %248 = load i32, i32* %c, align 4, !dbg !2539, !tbaa !900
  call void @tok_backup(%struct.tok_state* %247, i32 %248), !dbg !2540
  store i32 53, i32* %retval, !dbg !2541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2541

if.end.343:                                       ; preds = %lor.lhs.false.338
  br label %do.body.344, !dbg !2542

do.body.344:                                      ; preds = %land.end.352, %if.end.343
  %249 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2543, !tbaa !894
  %call345 = call i32 @tok_nextc(%struct.tok_state* %249), !dbg !2545
  store i32 %call345, i32* %c, align 4, !dbg !2546, !tbaa !900
  br label %do.cond.346, !dbg !2547

do.cond.346:                                      ; preds = %do.body.344
  %250 = load i32, i32* %c, align 4, !dbg !2548, !tbaa !900
  %cmp347 = icmp sle i32 48, %250, !dbg !2550
  br i1 %cmp347, label %land.rhs.349, label %land.end.352, !dbg !2551

land.rhs.349:                                     ; preds = %do.cond.346
  %251 = load i32, i32* %c, align 4, !dbg !2552, !tbaa !900
  %cmp350 = icmp slt i32 %251, 56, !dbg !2554
  br label %land.end.352

land.end.352:                                     ; preds = %land.rhs.349, %do.cond.346
  %252 = phi i1 [ false, %do.cond.346 ], [ %cmp350, %land.rhs.349 ]
  br i1 %252, label %do.body.344, label %do.end.353, !dbg !2555

do.end.353:                                       ; preds = %land.end.352
  br label %if.end.426, !dbg !2557

if.else.354:                                      ; preds = %lor.lhs.false.331
  %253 = load i32, i32* %c, align 4, !dbg !2558, !tbaa !900
  %cmp355 = icmp eq i32 %253, 98, !dbg !2559
  br i1 %cmp355, label %if.then.360, label %lor.lhs.false.357, !dbg !2560

lor.lhs.false.357:                                ; preds = %if.else.354
  %254 = load i32, i32* %c, align 4, !dbg !2561, !tbaa !900
  %cmp358 = icmp eq i32 %254, 66, !dbg !2563
  br i1 %cmp358, label %if.then.360, label %if.else.380, !dbg !2564

if.then.360:                                      ; preds = %lor.lhs.false.357, %if.else.354
  %255 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2565, !tbaa !894
  %call361 = call i32 @tok_nextc(%struct.tok_state* %255), !dbg !2567
  store i32 %call361, i32* %c, align 4, !dbg !2568, !tbaa !900
  %256 = load i32, i32* %c, align 4, !dbg !2569, !tbaa !900
  %cmp362 = icmp ne i32 %256, 48, !dbg !2571
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.369, !dbg !2572

land.lhs.true.364:                                ; preds = %if.then.360
  %257 = load i32, i32* %c, align 4, !dbg !2573, !tbaa !900
  %cmp365 = icmp ne i32 %257, 49, !dbg !2575
  br i1 %cmp365, label %if.then.367, label %if.end.369, !dbg !2576

if.then.367:                                      ; preds = %land.lhs.true.364
  %258 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2577, !tbaa !894
  %done368 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %258, i32 0, i32 5, !dbg !2579
  store i32 13, i32* %done368, align 4, !dbg !2580, !tbaa !973
  %259 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2581, !tbaa !894
  %260 = load i32, i32* %c, align 4, !dbg !2582, !tbaa !900
  call void @tok_backup(%struct.tok_state* %259, i32 %260), !dbg !2583
  store i32 53, i32* %retval, !dbg !2584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2584

if.end.369:                                       ; preds = %land.lhs.true.364, %if.then.360
  br label %do.body.370, !dbg !2585

do.body.370:                                      ; preds = %lor.end.378, %if.end.369
  %261 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2586, !tbaa !894
  %call371 = call i32 @tok_nextc(%struct.tok_state* %261), !dbg !2588
  store i32 %call371, i32* %c, align 4, !dbg !2589, !tbaa !900
  br label %do.cond.372, !dbg !2590

do.cond.372:                                      ; preds = %do.body.370
  %262 = load i32, i32* %c, align 4, !dbg !2591, !tbaa !900
  %cmp373 = icmp eq i32 %262, 48, !dbg !2593
  br i1 %cmp373, label %lor.end.378, label %lor.rhs.375, !dbg !2594

lor.rhs.375:                                      ; preds = %do.cond.372
  %263 = load i32, i32* %c, align 4, !dbg !2595, !tbaa !900
  %cmp376 = icmp eq i32 %263, 49, !dbg !2597
  br label %lor.end.378, !dbg !2594

lor.end.378:                                      ; preds = %lor.rhs.375, %do.cond.372
  %264 = phi i1 [ true, %do.cond.372 ], [ %cmp376, %lor.rhs.375 ]
  br i1 %264, label %do.body.370, label %do.end.379, !dbg !2598

do.end.379:                                       ; preds = %lor.end.378
  br label %if.end.425, !dbg !2601

if.else.380:                                      ; preds = %lor.lhs.false.357
  %265 = bitcast i32* %nonzero to i8*, !dbg !2602
  call void @llvm.lifetime.start(i64 4, i8* %265) #2, !dbg !2602
  call void @llvm.dbg.declare(metadata i32* %nonzero, metadata !720, metadata !898), !dbg !2603
  store i32 0, i32* %nonzero, align 4, !dbg !2603, !tbaa !900
  br label %while.cond.381, !dbg !2604

while.cond.381:                                   ; preds = %while.body.384, %if.else.380
  %266 = load i32, i32* %c, align 4, !dbg !2605, !tbaa !900
  %cmp382 = icmp eq i32 %266, 48, !dbg !2608
  br i1 %cmp382, label %while.body.384, label %while.end.386, !dbg !2604

while.body.384:                                   ; preds = %while.cond.381
  %267 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2609, !tbaa !894
  %call385 = call i32 @tok_nextc(%struct.tok_state* %267), !dbg !2610
  store i32 %call385, i32* %c, align 4, !dbg !2611, !tbaa !900
  br label %while.cond.381, !dbg !2604

while.end.386:                                    ; preds = %while.cond.381
  br label %while.cond.387, !dbg !2612

while.cond.387:                                   ; preds = %while.body.394, %while.end.386
  %268 = load i32, i32* %c, align 4, !dbg !2613, !tbaa !900
  %idxprom388 = sext i32 %268 to i64, !dbg !2614
  %call389 = call i16** @__ctype_b_loc() #1, !dbg !2615
  %269 = load i16*, i16** %call389, align 8, !dbg !2616, !tbaa !894
  %arrayidx390 = getelementptr i16, i16* %269, i64 %idxprom388, !dbg !2614
  %270 = load i16, i16* %arrayidx390, align 2, !dbg !2614, !tbaa !2402
  %conv391 = zext i16 %270 to i32, !dbg !2614
  %and392 = and i32 %conv391, 2048, !dbg !2617
  %tobool393 = icmp ne i32 %and392, 0, !dbg !2612
  br i1 %tobool393, label %while.body.394, label %while.end.396, !dbg !2612

while.body.394:                                   ; preds = %while.cond.387
  store i32 1, i32* %nonzero, align 4, !dbg !2618, !tbaa !900
  %271 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2620, !tbaa !894
  %call395 = call i32 @tok_nextc(%struct.tok_state* %271), !dbg !2621
  store i32 %call395, i32* %c, align 4, !dbg !2622, !tbaa !900
  br label %while.cond.387, !dbg !2612

while.end.396:                                    ; preds = %while.cond.387
  %272 = load i32, i32* %c, align 4, !dbg !2623, !tbaa !900
  %cmp397 = icmp eq i32 %272, 46, !dbg !2625
  br i1 %cmp397, label %if.then.399, label %if.else.400, !dbg !2626

if.then.399:                                      ; preds = %while.end.396
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2627

if.else.400:                                      ; preds = %while.end.396
  %273 = load i32, i32* %c, align 4, !dbg !2628, !tbaa !900
  %cmp401 = icmp eq i32 %273, 101, !dbg !2630
  br i1 %cmp401, label %if.then.406, label %lor.lhs.false.403, !dbg !2631

lor.lhs.false.403:                                ; preds = %if.else.400
  %274 = load i32, i32* %c, align 4, !dbg !2632, !tbaa !900
  %cmp404 = icmp eq i32 %274, 69, !dbg !2634
  br i1 %cmp404, label %if.then.406, label %if.else.407, !dbg !2635

if.then.406:                                      ; preds = %lor.lhs.false.403, %if.else.400
  store i32 29, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2636

if.else.407:                                      ; preds = %lor.lhs.false.403
  %275 = load i32, i32* %c, align 4, !dbg !2637, !tbaa !900
  %cmp408 = icmp eq i32 %275, 106, !dbg !2639
  br i1 %cmp408, label %if.then.413, label %lor.lhs.false.410, !dbg !2640

lor.lhs.false.410:                                ; preds = %if.else.407
  %276 = load i32, i32* %c, align 4, !dbg !2641, !tbaa !900
  %cmp411 = icmp eq i32 %276, 74, !dbg !2643
  br i1 %cmp411, label %if.then.413, label %if.else.414, !dbg !2644

if.then.413:                                      ; preds = %lor.lhs.false.410, %if.else.407
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2645

if.else.414:                                      ; preds = %lor.lhs.false.410
  %277 = load i32, i32* %nonzero, align 4, !dbg !2646, !tbaa !900
  %tobool415 = icmp ne i32 %277, 0, !dbg !2646
  br i1 %tobool415, label %if.then.416, label %if.end.418, !dbg !2648

if.then.416:                                      ; preds = %if.else.414
  %278 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2649, !tbaa !894
  %done417 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %278, i32 0, i32 5, !dbg !2651
  store i32 13, i32* %done417, align 4, !dbg !2652, !tbaa !973
  %279 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2653, !tbaa !894
  %280 = load i32, i32* %c, align 4, !dbg !2654, !tbaa !900
  call void @tok_backup(%struct.tok_state* %279, i32 %280), !dbg !2655
  store i32 53, i32* %retval, !dbg !2656
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2656

if.end.418:                                       ; preds = %if.else.414
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420
  store i32 0, i32* %cleanup.dest.slot, !dbg !2657
  br label %cleanup.422, !dbg !2657

cleanup.422:                                      ; preds = %if.then.413, %if.then.406, %if.then.399, %if.end.421, %if.then.416
  %281 = bitcast i32* %nonzero to i8*, !dbg !2658
  call void @llvm.lifetime.end(i64 4, i8* %281) #2, !dbg !2658
  %cleanup.dest.423 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.423, label %cleanup.610 [
    i32 0, label %cleanup.cont.424
    i32 17, label %fraction
    i32 29, label %exponent
    i32 18, label %imaginary
  ]

cleanup.cont.424:                                 ; preds = %cleanup.422
  br label %if.end.425

if.end.425:                                       ; preds = %cleanup.cont.424, %do.end.379
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %do.end.353
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %do.end.327
  br label %if.end.496, !dbg !2659

if.else.428:                                      ; preds = %if.then.286
  br label %do.body.429, !dbg !2660

do.body.429:                                      ; preds = %do.cond.431, %if.else.428
  %282 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2662, !tbaa !894
  %call430 = call i32 @tok_nextc(%struct.tok_state* %282), !dbg !2664
  store i32 %call430, i32* %c, align 4, !dbg !2665, !tbaa !900
  br label %do.cond.431, !dbg !2666

do.cond.431:                                      ; preds = %do.body.429
  %283 = load i32, i32* %c, align 4, !dbg !2667, !tbaa !900
  %idxprom432 = sext i32 %283 to i64, !dbg !2669
  %call433 = call i16** @__ctype_b_loc() #1, !dbg !2670
  %284 = load i16*, i16** %call433, align 8, !dbg !2671, !tbaa !894
  %arrayidx434 = getelementptr i16, i16* %284, i64 %idxprom432, !dbg !2669
  %285 = load i16, i16* %arrayidx434, align 2, !dbg !2669, !tbaa !2402
  %conv435 = zext i16 %285 to i32, !dbg !2669
  %and436 = and i32 %conv435, 2048, !dbg !2672
  %tobool437 = icmp ne i32 %and436, 0, !dbg !2666
  br i1 %tobool437, label %do.body.429, label %do.end.438, !dbg !2666

do.end.438:                                       ; preds = %do.cond.431
  %286 = load i32, i32* %c, align 4, !dbg !2673, !tbaa !900
  %cmp439 = icmp eq i32 %286, 46, !dbg !2676
  br i1 %cmp439, label %if.then.441, label %if.end.452, !dbg !2677

if.then.441:                                      ; preds = %do.end.438
  br label %fraction, !dbg !2678

fraction:                                         ; preds = %if.then.441, %cleanup.422, %if.then.293, %if.then.261
  br label %do.body.442, !dbg !2680

do.body.442:                                      ; preds = %do.cond.444, %fraction
  %287 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2682, !tbaa !894
  %call443 = call i32 @tok_nextc(%struct.tok_state* %287), !dbg !2684
  store i32 %call443, i32* %c, align 4, !dbg !2685, !tbaa !900
  br label %do.cond.444, !dbg !2686

do.cond.444:                                      ; preds = %do.body.442
  %288 = load i32, i32* %c, align 4, !dbg !2687, !tbaa !900
  %idxprom445 = sext i32 %288 to i64, !dbg !2689
  %call446 = call i16** @__ctype_b_loc() #1, !dbg !2690
  %289 = load i16*, i16** %call446, align 8, !dbg !2691, !tbaa !894
  %arrayidx447 = getelementptr i16, i16* %289, i64 %idxprom445, !dbg !2689
  %290 = load i16, i16* %arrayidx447, align 2, !dbg !2689, !tbaa !2402
  %conv448 = zext i16 %290 to i32, !dbg !2689
  %and449 = and i32 %conv448, 2048, !dbg !2692
  %tobool450 = icmp ne i32 %and449, 0, !dbg !2686
  br i1 %tobool450, label %do.body.442, label %do.end.451, !dbg !2686

do.end.451:                                       ; preds = %do.cond.444
  br label %if.end.452, !dbg !2693

if.end.452:                                       ; preds = %do.end.451, %do.end.438
  %291 = load i32, i32* %c, align 4, !dbg !2694, !tbaa !900
  %cmp453 = icmp eq i32 %291, 101, !dbg !2696
  br i1 %cmp453, label %if.then.458, label %lor.lhs.false.455, !dbg !2697

lor.lhs.false.455:                                ; preds = %if.end.452
  %292 = load i32, i32* %c, align 4, !dbg !2698, !tbaa !900
  %cmp456 = icmp eq i32 %292, 69, !dbg !2700
  br i1 %cmp456, label %if.then.458, label %if.end.487, !dbg !2701

if.then.458:                                      ; preds = %lor.lhs.false.455, %if.end.452
  br label %exponent, !dbg !2702

exponent:                                         ; preds = %if.then.458, %cleanup.422
  %293 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2705, !tbaa !894
  %call459 = call i32 @tok_nextc(%struct.tok_state* %293), !dbg !2707
  store i32 %call459, i32* %c, align 4, !dbg !2708, !tbaa !900
  %294 = load i32, i32* %c, align 4, !dbg !2709, !tbaa !900
  %cmp460 = icmp eq i32 %294, 43, !dbg !2711
  br i1 %cmp460, label %if.then.465, label %lor.lhs.false.462, !dbg !2712

lor.lhs.false.462:                                ; preds = %exponent
  %295 = load i32, i32* %c, align 4, !dbg !2713, !tbaa !900
  %cmp463 = icmp eq i32 %295, 45, !dbg !2715
  br i1 %cmp463, label %if.then.465, label %if.end.467, !dbg !2716

if.then.465:                                      ; preds = %lor.lhs.false.462, %exponent
  %296 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2717, !tbaa !894
  %call466 = call i32 @tok_nextc(%struct.tok_state* %296), !dbg !2718
  store i32 %call466, i32* %c, align 4, !dbg !2719, !tbaa !900
  br label %if.end.467, !dbg !2720

if.end.467:                                       ; preds = %if.then.465, %lor.lhs.false.462
  %297 = load i32, i32* %c, align 4, !dbg !2721, !tbaa !900
  %idxprom468 = sext i32 %297 to i64, !dbg !2723
  %call469 = call i16** @__ctype_b_loc() #1, !dbg !2724
  %298 = load i16*, i16** %call469, align 8, !dbg !2725, !tbaa !894
  %arrayidx470 = getelementptr i16, i16* %298, i64 %idxprom468, !dbg !2723
  %299 = load i16, i16* %arrayidx470, align 2, !dbg !2723, !tbaa !2402
  %conv471 = zext i16 %299 to i32, !dbg !2723
  %and472 = and i32 %conv471, 2048, !dbg !2726
  %tobool473 = icmp ne i32 %and472, 0, !dbg !2726
  br i1 %tobool473, label %if.end.476, label %if.then.474, !dbg !2727

if.then.474:                                      ; preds = %if.end.467
  %300 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2728, !tbaa !894
  %done475 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %300, i32 0, i32 5, !dbg !2730
  store i32 13, i32* %done475, align 4, !dbg !2731, !tbaa !973
  %301 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2732, !tbaa !894
  %302 = load i32, i32* %c, align 4, !dbg !2733, !tbaa !900
  call void @tok_backup(%struct.tok_state* %301, i32 %302), !dbg !2734
  store i32 53, i32* %retval, !dbg !2735
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2735

if.end.476:                                       ; preds = %if.end.467
  br label %do.body.477, !dbg !2736

do.body.477:                                      ; preds = %do.cond.479, %if.end.476
  %303 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2737, !tbaa !894
  %call478 = call i32 @tok_nextc(%struct.tok_state* %303), !dbg !2739
  store i32 %call478, i32* %c, align 4, !dbg !2740, !tbaa !900
  br label %do.cond.479, !dbg !2741

do.cond.479:                                      ; preds = %do.body.477
  %304 = load i32, i32* %c, align 4, !dbg !2742, !tbaa !900
  %idxprom480 = sext i32 %304 to i64, !dbg !2744
  %call481 = call i16** @__ctype_b_loc() #1, !dbg !2745
  %305 = load i16*, i16** %call481, align 8, !dbg !2746, !tbaa !894
  %arrayidx482 = getelementptr i16, i16* %305, i64 %idxprom480, !dbg !2744
  %306 = load i16, i16* %arrayidx482, align 2, !dbg !2744, !tbaa !2402
  %conv483 = zext i16 %306 to i32, !dbg !2744
  %and484 = and i32 %conv483, 2048, !dbg !2747
  %tobool485 = icmp ne i32 %and484, 0, !dbg !2741
  br i1 %tobool485, label %do.body.477, label %do.end.486, !dbg !2741

do.end.486:                                       ; preds = %do.cond.479
  br label %if.end.487, !dbg !2748

if.end.487:                                       ; preds = %do.end.486, %lor.lhs.false.455
  %307 = load i32, i32* %c, align 4, !dbg !2749, !tbaa !900
  %cmp488 = icmp eq i32 %307, 106, !dbg !2751
  br i1 %cmp488, label %if.then.493, label %lor.lhs.false.490, !dbg !2752

lor.lhs.false.490:                                ; preds = %if.end.487
  %308 = load i32, i32* %c, align 4, !dbg !2753, !tbaa !900
  %cmp491 = icmp eq i32 %308, 74, !dbg !2755
  br i1 %cmp491, label %if.then.493, label %if.end.495, !dbg !2756

if.then.493:                                      ; preds = %lor.lhs.false.490, %if.end.487
  br label %imaginary, !dbg !2757

imaginary:                                        ; preds = %if.then.493, %cleanup.422, %if.then.300
  %309 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2760, !tbaa !894
  %call494 = call i32 @tok_nextc(%struct.tok_state* %309), !dbg !2761
  store i32 %call494, i32* %c, align 4, !dbg !2762, !tbaa !900
  br label %if.end.495, !dbg !2763

if.end.495:                                       ; preds = %imaginary, %lor.lhs.false.490
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.end.427
  %310 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2764, !tbaa !894
  %311 = load i32, i32* %c, align 4, !dbg !2765, !tbaa !900
  call void @tok_backup(%struct.tok_state* %310, i32 %311), !dbg !2766
  %312 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2767, !tbaa !894
  %start497 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %312, i32 0, i32 4, !dbg !2768
  %313 = load i8*, i8** %start497, align 8, !dbg !2768, !tbaa !957
  %314 = load i8**, i8*** %p_start.addr, align 8, !dbg !2769, !tbaa !894
  store i8* %313, i8** %314, align 8, !dbg !2770, !tbaa !894
  %315 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2771, !tbaa !894
  %cur498 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %315, i32 0, i32 1, !dbg !2772
  %316 = load i8*, i8** %cur498, align 8, !dbg !2772, !tbaa !937
  %317 = load i8**, i8*** %p_end.addr, align 8, !dbg !2773, !tbaa !894
  store i8* %316, i8** %317, align 8, !dbg !2774, !tbaa !894
  store i32 2, i32* %retval, !dbg !2775
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2775

if.end.499:                                       ; preds = %if.end.279
  br label %letter_quote, !dbg !2776

letter_quote:                                     ; preds = %if.end.499, %cleanup.237
  %318 = load i32, i32* %c, align 4, !dbg !2778, !tbaa !900
  %cmp501 = icmp eq i32 %318, 39, !dbg !2779
  br i1 %cmp501, label %if.then.506, label %lor.lhs.false.503, !dbg !2780

lor.lhs.false.503:                                ; preds = %letter_quote
  %319 = load i32, i32* %c, align 4, !dbg !2781, !tbaa !900
  %cmp504 = icmp eq i32 %319, 34, !dbg !2783
  br i1 %cmp504, label %if.then.506, label %if.end.567, !dbg !2784

if.then.506:                                      ; preds = %lor.lhs.false.503, %letter_quote
  %320 = bitcast i32* %quote to i8*, !dbg !2785
  call void @llvm.lifetime.start(i64 4, i8* %320) #2, !dbg !2785
  call void @llvm.dbg.declare(metadata i32* %quote, metadata !729, metadata !898), !dbg !2786
  %321 = load i32, i32* %c, align 4, !dbg !2787, !tbaa !900
  store i32 %321, i32* %quote, align 4, !dbg !2786, !tbaa !900
  %322 = bitcast i32* %quote_size to i8*, !dbg !2788
  call void @llvm.lifetime.start(i64 4, i8* %322) #2, !dbg !2788
  call void @llvm.dbg.declare(metadata i32* %quote_size, metadata !732, metadata !898), !dbg !2789
  store i32 1, i32* %quote_size, align 4, !dbg !2789, !tbaa !900
  %323 = bitcast i32* %end_quote_size to i8*, !dbg !2790
  call void @llvm.lifetime.start(i64 4, i8* %323) #2, !dbg !2790
  call void @llvm.dbg.declare(metadata i32* %end_quote_size, metadata !733, metadata !898), !dbg !2791
  store i32 0, i32* %end_quote_size, align 4, !dbg !2791, !tbaa !900
  %324 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2792, !tbaa !894
  %call507 = call i32 @tok_nextc(%struct.tok_state* %324), !dbg !2793
  store i32 %call507, i32* %c, align 4, !dbg !2794, !tbaa !900
  %325 = load i32, i32* %c, align 4, !dbg !2795, !tbaa !900
  %326 = load i32, i32* %quote, align 4, !dbg !2797, !tbaa !900
  %cmp508 = icmp eq i32 %325, %326, !dbg !2798
  br i1 %cmp508, label %if.then.510, label %if.end.517, !dbg !2799

if.then.510:                                      ; preds = %if.then.506
  %327 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2800, !tbaa !894
  %call511 = call i32 @tok_nextc(%struct.tok_state* %327), !dbg !2802
  store i32 %call511, i32* %c, align 4, !dbg !2803, !tbaa !900
  %328 = load i32, i32* %c, align 4, !dbg !2804, !tbaa !900
  %329 = load i32, i32* %quote, align 4, !dbg !2806, !tbaa !900
  %cmp512 = icmp eq i32 %328, %329, !dbg !2807
  br i1 %cmp512, label %if.then.514, label %if.else.515, !dbg !2808

if.then.514:                                      ; preds = %if.then.510
  store i32 3, i32* %quote_size, align 4, !dbg !2809, !tbaa !900
  br label %if.end.516, !dbg !2810

if.else.515:                                      ; preds = %if.then.510
  store i32 1, i32* %end_quote_size, align 4, !dbg !2811, !tbaa !900
  br label %if.end.516

if.end.516:                                       ; preds = %if.else.515, %if.then.514
  br label %if.end.517, !dbg !2812

if.end.517:                                       ; preds = %if.end.516, %if.then.506
  %330 = load i32, i32* %c, align 4, !dbg !2813, !tbaa !900
  %331 = load i32, i32* %quote, align 4, !dbg !2815, !tbaa !900
  %cmp518 = icmp ne i32 %330, %331, !dbg !2816
  br i1 %cmp518, label %if.then.520, label %if.end.521, !dbg !2817

if.then.520:                                      ; preds = %if.end.517
  %332 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2818, !tbaa !894
  %333 = load i32, i32* %c, align 4, !dbg !2819, !tbaa !900
  call void @tok_backup(%struct.tok_state* %332, i32 %333), !dbg !2820
  br label %if.end.521, !dbg !2820

if.end.521:                                       ; preds = %if.then.520, %if.end.517
  br label %while.cond.522, !dbg !2821

while.cond.522:                                   ; preds = %if.end.560, %if.end.521
  %334 = load i32, i32* %end_quote_size, align 4, !dbg !2822, !tbaa !900
  %335 = load i32, i32* %quote_size, align 4, !dbg !2825, !tbaa !900
  %cmp523 = icmp ne i32 %334, %335, !dbg !2826
  br i1 %cmp523, label %while.body.525, label %while.end.561, !dbg !2821

while.body.525:                                   ; preds = %while.cond.522
  %336 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2827, !tbaa !894
  %call526 = call i32 @tok_nextc(%struct.tok_state* %336), !dbg !2829
  store i32 %call526, i32* %c, align 4, !dbg !2830, !tbaa !900
  %337 = load i32, i32* %c, align 4, !dbg !2831, !tbaa !900
  %cmp527 = icmp eq i32 %337, -1, !dbg !2833
  br i1 %cmp527, label %if.then.529, label %if.end.539, !dbg !2834

if.then.529:                                      ; preds = %while.body.525
  %338 = load i32, i32* %quote_size, align 4, !dbg !2835, !tbaa !900
  %cmp530 = icmp eq i32 %338, 3, !dbg !2838
  br i1 %cmp530, label %if.then.532, label %if.else.534, !dbg !2839

if.then.532:                                      ; preds = %if.then.529
  %339 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2840, !tbaa !894
  %done533 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %339, i32 0, i32 5, !dbg !2841
  store i32 23, i32* %done533, align 4, !dbg !2842, !tbaa !973
  br label %if.end.536, !dbg !2840

if.else.534:                                      ; preds = %if.then.529
  %340 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2843, !tbaa !894
  %done535 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %340, i32 0, i32 5, !dbg !2844
  store i32 24, i32* %done535, align 4, !dbg !2845, !tbaa !973
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.534, %if.then.532
  %341 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2846, !tbaa !894
  %inp537 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %341, i32 0, i32 2, !dbg !2847
  %342 = load i8*, i8** %inp537, align 8, !dbg !2847, !tbaa !928
  %343 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2848, !tbaa !894
  %cur538 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %343, i32 0, i32 1, !dbg !2849
  store i8* %342, i8** %cur538, align 8, !dbg !2850, !tbaa !937
  store i32 53, i32* %retval, !dbg !2851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2851

if.end.539:                                       ; preds = %while.body.525
  %344 = load i32, i32* %quote_size, align 4, !dbg !2852, !tbaa !900
  %cmp540 = icmp eq i32 %344, 1, !dbg !2854
  br i1 %cmp540, label %land.lhs.true.542, label %if.end.549, !dbg !2855

land.lhs.true.542:                                ; preds = %if.end.539
  %345 = load i32, i32* %c, align 4, !dbg !2856, !tbaa !900
  %cmp543 = icmp eq i32 %345, 10, !dbg !2858
  br i1 %cmp543, label %if.then.545, label %if.end.549, !dbg !2859

if.then.545:                                      ; preds = %land.lhs.true.542
  %346 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2860, !tbaa !894
  %done546 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %346, i32 0, i32 5, !dbg !2862
  store i32 24, i32* %done546, align 4, !dbg !2863, !tbaa !973
  %347 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2864, !tbaa !894
  %inp547 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %347, i32 0, i32 2, !dbg !2865
  %348 = load i8*, i8** %inp547, align 8, !dbg !2865, !tbaa !928
  %349 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2866, !tbaa !894
  %cur548 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %349, i32 0, i32 1, !dbg !2867
  store i8* %348, i8** %cur548, align 8, !dbg !2868, !tbaa !937
  store i32 53, i32* %retval, !dbg !2869
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2869

if.end.549:                                       ; preds = %land.lhs.true.542, %if.end.539
  %350 = load i32, i32* %c, align 4, !dbg !2870, !tbaa !900
  %351 = load i32, i32* %quote, align 4, !dbg !2872, !tbaa !900
  %cmp550 = icmp eq i32 %350, %351, !dbg !2873
  br i1 %cmp550, label %if.then.552, label %if.else.554, !dbg !2874

if.then.552:                                      ; preds = %if.end.549
  %352 = load i32, i32* %end_quote_size, align 4, !dbg !2875, !tbaa !900
  %add553 = add i32 %352, 1, !dbg !2875
  store i32 %add553, i32* %end_quote_size, align 4, !dbg !2875, !tbaa !900
  br label %if.end.560, !dbg !2876

if.else.554:                                      ; preds = %if.end.549
  store i32 0, i32* %end_quote_size, align 4, !dbg !2877, !tbaa !900
  %353 = load i32, i32* %c, align 4, !dbg !2879, !tbaa !900
  %cmp555 = icmp eq i32 %353, 92, !dbg !2881
  br i1 %cmp555, label %if.then.557, label %if.end.559, !dbg !2882

if.then.557:                                      ; preds = %if.else.554
  %354 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2883, !tbaa !894
  %call558 = call i32 @tok_nextc(%struct.tok_state* %354), !dbg !2884
  store i32 %call558, i32* %c, align 4, !dbg !2885, !tbaa !900
  br label %if.end.559, !dbg !2886

if.end.559:                                       ; preds = %if.then.557, %if.else.554
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %if.then.552
  br label %while.cond.522, !dbg !2821

while.end.561:                                    ; preds = %while.cond.522
  %355 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2887, !tbaa !894
  %start562 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %355, i32 0, i32 4, !dbg !2888
  %356 = load i8*, i8** %start562, align 8, !dbg !2888, !tbaa !957
  %357 = load i8**, i8*** %p_start.addr, align 8, !dbg !2889, !tbaa !894
  store i8* %356, i8** %357, align 8, !dbg !2890, !tbaa !894
  %358 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2891, !tbaa !894
  %cur563 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %358, i32 0, i32 1, !dbg !2892
  %359 = load i8*, i8** %cur563, align 8, !dbg !2892, !tbaa !937
  %360 = load i8**, i8*** %p_end.addr, align 8, !dbg !2893, !tbaa !894
  store i8* %359, i8** %360, align 8, !dbg !2894, !tbaa !894
  store i32 3, i32* %retval, !dbg !2895
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.564, !dbg !2895

cleanup.564:                                      ; preds = %while.end.561, %if.then.545, %if.end.536
  %361 = bitcast i32* %end_quote_size to i8*, !dbg !2896
  call void @llvm.lifetime.end(i64 4, i8* %361) #2, !dbg !2896
  %362 = bitcast i32* %quote_size to i8*, !dbg !2896
  call void @llvm.lifetime.end(i64 4, i8* %362) #2, !dbg !2896
  %363 = bitcast i32* %quote to i8*, !dbg !2896
  call void @llvm.lifetime.end(i64 4, i8* %363) #2, !dbg !2896
  br label %cleanup.610

if.end.567:                                       ; preds = %lor.lhs.false.503
  %364 = load i32, i32* %c, align 4, !dbg !2897, !tbaa !900
  %cmp568 = icmp eq i32 %364, 92, !dbg !2899
  br i1 %cmp568, label %if.then.570, label %if.end.580, !dbg !2900

if.then.570:                                      ; preds = %if.end.567
  %365 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2901, !tbaa !894
  %call571 = call i32 @tok_nextc(%struct.tok_state* %365), !dbg !2903
  store i32 %call571, i32* %c, align 4, !dbg !2904, !tbaa !900
  %366 = load i32, i32* %c, align 4, !dbg !2905, !tbaa !900
  %cmp572 = icmp ne i32 %366, 10, !dbg !2907
  br i1 %cmp572, label %if.then.574, label %if.end.578, !dbg !2908

if.then.574:                                      ; preds = %if.then.570
  %367 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2909, !tbaa !894
  %done575 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %367, i32 0, i32 5, !dbg !2911
  store i32 25, i32* %done575, align 4, !dbg !2912, !tbaa !973
  %368 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2913, !tbaa !894
  %inp576 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %368, i32 0, i32 2, !dbg !2914
  %369 = load i8*, i8** %inp576, align 8, !dbg !2914, !tbaa !928
  %370 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2915, !tbaa !894
  %cur577 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %370, i32 0, i32 1, !dbg !2916
  store i8* %369, i8** %cur577, align 8, !dbg !2917, !tbaa !937
  store i32 53, i32* %retval, !dbg !2918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2918

if.end.578:                                       ; preds = %if.then.570
  %371 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2919, !tbaa !894
  %cont_line579 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %371, i32 0, i32 25, !dbg !2920
  store i32 1, i32* %cont_line579, align 4, !dbg !2921, !tbaa !1055
  br label %again, !dbg !2922

if.end.580:                                       ; preds = %if.end.567
  %372 = bitcast i32* %c2 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 4, i8* %372) #2, !dbg !2923
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !734, metadata !898), !dbg !2924
  %373 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2925, !tbaa !894
  %call581 = call i32 @tok_nextc(%struct.tok_state* %373), !dbg !2926
  store i32 %call581, i32* %c2, align 4, !dbg !2924, !tbaa !900
  %374 = bitcast i32* %token to i8*, !dbg !2927
  call void @llvm.lifetime.start(i64 4, i8* %374) #2, !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %token, metadata !736, metadata !898), !dbg !2928
  %375 = load i32, i32* %c, align 4, !dbg !2929, !tbaa !900
  %376 = load i32, i32* %c2, align 4, !dbg !2930, !tbaa !900
  %call582 = call i32 @PyToken_TwoChars(i32 %375, i32 %376), !dbg !2931
  store i32 %call582, i32* %token, align 4, !dbg !2928, !tbaa !900
  %377 = load i32, i32* %token, align 4, !dbg !2932, !tbaa !900
  %cmp583 = icmp ne i32 %377, 52, !dbg !2933
  br i1 %cmp583, label %if.then.585, label %if.end.597, !dbg !2934

if.then.585:                                      ; preds = %if.end.580
  %378 = bitcast i32* %c3 to i8*, !dbg !2935
  call void @llvm.lifetime.start(i64 4, i8* %378) #2, !dbg !2935
  call void @llvm.dbg.declare(metadata i32* %c3, metadata !737, metadata !898), !dbg !2936
  %379 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2937, !tbaa !894
  %call586 = call i32 @tok_nextc(%struct.tok_state* %379), !dbg !2938
  store i32 %call586, i32* %c3, align 4, !dbg !2936, !tbaa !900
  %380 = bitcast i32* %token3 to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 4, i8* %380) #2, !dbg !2939
  call void @llvm.dbg.declare(metadata i32* %token3, metadata !740, metadata !898), !dbg !2940
  %381 = load i32, i32* %c, align 4, !dbg !2941, !tbaa !900
  %382 = load i32, i32* %c2, align 4, !dbg !2942, !tbaa !900
  %383 = load i32, i32* %c3, align 4, !dbg !2943, !tbaa !900
  %call587 = call i32 @PyToken_ThreeChars(i32 %381, i32 %382, i32 %383), !dbg !2944
  store i32 %call587, i32* %token3, align 4, !dbg !2940, !tbaa !900
  %384 = load i32, i32* %token3, align 4, !dbg !2945, !tbaa !900
  %cmp588 = icmp ne i32 %384, 52, !dbg !2947
  br i1 %cmp588, label %if.then.590, label %if.else.591, !dbg !2948

if.then.590:                                      ; preds = %if.then.585
  %385 = load i32, i32* %token3, align 4, !dbg !2949, !tbaa !900
  store i32 %385, i32* %token, align 4, !dbg !2951, !tbaa !900
  br label %if.end.592, !dbg !2952

if.else.591:                                      ; preds = %if.then.585
  %386 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2953, !tbaa !894
  %387 = load i32, i32* %c3, align 4, !dbg !2955, !tbaa !900
  call void @tok_backup(%struct.tok_state* %386, i32 %387), !dbg !2956
  br label %if.end.592

if.end.592:                                       ; preds = %if.else.591, %if.then.590
  %388 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2957, !tbaa !894
  %start593 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %388, i32 0, i32 4, !dbg !2958
  %389 = load i8*, i8** %start593, align 8, !dbg !2958, !tbaa !957
  %390 = load i8**, i8*** %p_start.addr, align 8, !dbg !2959, !tbaa !894
  store i8* %389, i8** %390, align 8, !dbg !2960, !tbaa !894
  %391 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2961, !tbaa !894
  %cur594 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %391, i32 0, i32 1, !dbg !2962
  %392 = load i8*, i8** %cur594, align 8, !dbg !2962, !tbaa !937
  %393 = load i8**, i8*** %p_end.addr, align 8, !dbg !2963, !tbaa !894
  store i8* %392, i8** %393, align 8, !dbg !2964, !tbaa !894
  %394 = load i32, i32* %token, align 4, !dbg !2965, !tbaa !900
  store i32 %394, i32* %retval, !dbg !2966
  store i32 1, i32* %cleanup.dest.slot
  %395 = bitcast i32* %token3 to i8*, !dbg !2967
  call void @llvm.lifetime.end(i64 4, i8* %395) #2, !dbg !2967
  %396 = bitcast i32* %c3 to i8*, !dbg !2967
  call void @llvm.lifetime.end(i64 4, i8* %396) #2, !dbg !2967
  br label %cleanup.598

if.end.597:                                       ; preds = %if.end.580
  %397 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2968, !tbaa !894
  %398 = load i32, i32* %c2, align 4, !dbg !2969, !tbaa !900
  call void @tok_backup(%struct.tok_state* %397, i32 %398), !dbg !2970
  store i32 0, i32* %cleanup.dest.slot, !dbg !2971
  br label %cleanup.598, !dbg !2971

cleanup.598:                                      ; preds = %if.end.597, %if.end.592
  %399 = bitcast i32* %token to i8*, !dbg !2972
  call void @llvm.lifetime.end(i64 4, i8* %399) #2, !dbg !2972
  %400 = bitcast i32* %c2 to i8*, !dbg !2972
  call void @llvm.lifetime.end(i64 4, i8* %400) #2, !dbg !2972
  %cleanup.dest.600 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.600, label %cleanup.610 [
    i32 0, label %cleanup.cont.601
  ]

cleanup.cont.601:                                 ; preds = %cleanup.598
  %401 = load i32, i32* %c, align 4, !dbg !2973, !tbaa !900
  switch i32 %401, label %sw.epilog [
    i32 40, label %sw.bb
    i32 91, label %sw.bb
    i32 123, label %sw.bb
    i32 41, label %sw.bb.604
    i32 93, label %sw.bb.604
    i32 125, label %sw.bb.604
  ], !dbg !2974

sw.bb:                                            ; preds = %cleanup.cont.601, %cleanup.cont.601, %cleanup.cont.601
  %402 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2975, !tbaa !894
  %level602 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %402, i32 0, i32 15, !dbg !2977
  %403 = load i32, i32* %level602, align 4, !dbg !2978, !tbaa !1016
  %inc603 = add i32 %403, 1, !dbg !2978
  store i32 %inc603, i32* %level602, align 4, !dbg !2978, !tbaa !1016
  br label %sw.epilog, !dbg !2979

sw.bb.604:                                        ; preds = %cleanup.cont.601, %cleanup.cont.601, %cleanup.cont.601
  %404 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2980, !tbaa !894
  %level605 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %404, i32 0, i32 15, !dbg !2981
  %405 = load i32, i32* %level605, align 4, !dbg !2982, !tbaa !1016
  %dec606 = add i32 %405, -1, !dbg !2982
  store i32 %dec606, i32* %level605, align 4, !dbg !2982, !tbaa !1016
  br label %sw.epilog, !dbg !2983

sw.epilog:                                        ; preds = %cleanup.cont.601, %sw.bb.604, %sw.bb
  %406 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2984, !tbaa !894
  %start607 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %406, i32 0, i32 4, !dbg !2985
  %407 = load i8*, i8** %start607, align 8, !dbg !2985, !tbaa !957
  %408 = load i8**, i8*** %p_start.addr, align 8, !dbg !2986, !tbaa !894
  store i8* %407, i8** %408, align 8, !dbg !2987, !tbaa !894
  %409 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !2988, !tbaa !894
  %cur608 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %409, i32 0, i32 1, !dbg !2989
  %410 = load i8*, i8** %cur608, align 8, !dbg !2989, !tbaa !937
  %411 = load i8**, i8*** %p_end.addr, align 8, !dbg !2990, !tbaa !894
  store i8* %410, i8** %411, align 8, !dbg !2991, !tbaa !894
  %412 = load i32, i32* %c, align 4, !dbg !2992, !tbaa !900
  %call609 = call i32 @PyToken_OneChar(i32 %412), !dbg !2993
  store i32 %call609, i32* %retval, !dbg !2994
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610, !dbg !2994

cleanup.610:                                      ; preds = %sw.epilog, %cleanup.598, %if.then.574, %cleanup.564, %cleanup.237, %if.end.496, %if.then.474, %cleanup.422, %if.then.367, %if.then.341, %if.then.315, %if.end.276, %if.then.269, %if.end.249, %if.then.148, %if.else.124, %if.then.121, %cleanup
  %413 = bitcast i32* %nonascii to i8*, !dbg !2995
  call void @llvm.lifetime.end(i64 4, i8* %413) #2, !dbg !2995
  %414 = bitcast i32* %blankline to i8*, !dbg !2995
  call void @llvm.lifetime.end(i64 4, i8* %414) #2, !dbg !2995
  %415 = bitcast i32* %c to i8*, !dbg !2995
  call void @llvm.lifetime.end(i64 4, i8* %415) #2, !dbg !2995
  %416 = load i32, i32* %retval, !dbg !2995
  ret i32 %416, !dbg !2995
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
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !511, metadata !898), !dbg !2996
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !512, metadata !898), !dbg !2997
  %0 = bitcast %struct.tok_state** %tok to i8*, !dbg !2998
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2998
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok, metadata !513, metadata !898), !dbg !2999
  %1 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !3000
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3000
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !514, metadata !898), !dbg !3001
  %2 = bitcast i8** %p_start to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3002
  call void @llvm.dbg.declare(metadata i8** %p_start, metadata !515, metadata !898), !dbg !3003
  store i8* null, i8** %p_start, align 8, !dbg !3003, !tbaa !894
  %3 = bitcast i8** %p_end to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3002
  call void @llvm.dbg.declare(metadata i8** %p_end, metadata !516, metadata !898), !dbg !3004
  store i8* null, i8** %p_end, align 8, !dbg !3004, !tbaa !894
  %4 = bitcast i8** %encoding to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3002
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !517, metadata !898), !dbg !3005
  store i8* null, i8** %encoding, align 8, !dbg !3005, !tbaa !894
  %5 = load i32, i32* %fd.addr, align 4, !dbg !3006, !tbaa !900
  %call = call i32 @_Py_dup(i32 %5), !dbg !3007
  store i32 %call, i32* %fd.addr, align 4, !dbg !3008, !tbaa !900
  %6 = load i32, i32* %fd.addr, align 4, !dbg !3009, !tbaa !900
  %cmp = icmp slt i32 %6, 0, !dbg !3011
  br i1 %cmp, label %if.then, label %if.end, !dbg !3012

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !3013
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3013

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %fd.addr, align 4, !dbg !3015, !tbaa !900
  %call1 = call %struct._IO_FILE* @fdopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)) #2, !dbg !3016
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !3017, !tbaa !894
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3018, !tbaa !894
  %cmp2 = icmp eq %struct._IO_FILE* %8, null, !dbg !3020
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !3021

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval, !dbg !3022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3022

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3024, !tbaa !894
  %call5 = call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %9, i8* null, i8* null, i8* null), !dbg !3025
  store %struct.tok_state* %call5, %struct.tok_state** %tok, align 8, !dbg !3026, !tbaa !894
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3027, !tbaa !894
  %cmp6 = icmp eq %struct.tok_state* %10, null, !dbg !3029
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !3030

if.then.7:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3031, !tbaa !894
  %call8 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !3033
  store i8* null, i8** %retval, !dbg !3034
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3034

if.end.9:                                         ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3035, !tbaa !894
  %cmp10 = icmp ne %struct._object* %12, null, !dbg !3037
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !3038

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3039, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3041
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3042, !tbaa !1277
  %inc = add i64 %14, 1, !dbg !3042
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3042, !tbaa !1277
  %15 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !3043, !tbaa !894
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3044, !tbaa !894
  %filename12 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 16, !dbg !3045
  store %struct._object* %15, %struct._object** %filename12, align 8, !dbg !3046, !tbaa !1059
  br label %if.end.20, !dbg !3047

if.else:                                          ; preds = %if.end.9
  %call13 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !3048
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3050, !tbaa !894
  %filename14 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 16, !dbg !3051
  store %struct._object* %call13, %struct._object** %filename14, align 8, !dbg !3052, !tbaa !1059
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3053, !tbaa !894
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 16, !dbg !3055
  %19 = load %struct._object*, %struct._object** %filename15, align 8, !dbg !3055, !tbaa !1059
  %cmp16 = icmp eq %struct._object* %19, null, !dbg !3056
  br i1 %cmp16, label %if.then.17, label %if.end.19, !dbg !3057

if.then.17:                                       ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3058, !tbaa !894
  %call18 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !3060
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3061, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %21), !dbg !3062
  %22 = load i8*, i8** %encoding, align 8, !dbg !3063, !tbaa !894
  store i8* %22, i8** %retval, !dbg !3064
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3064

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  br label %while.cond, !dbg !3065

while.cond:                                       ; preds = %while.body, %if.end.20
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3066, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 14, !dbg !3069
  %24 = load i32, i32* %lineno, align 4, !dbg !3069, !tbaa !1012
  %cmp21 = icmp slt i32 %24, 2, !dbg !3070
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !3071

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3072, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 5, !dbg !3074
  %26 = load i32, i32* %done, align 4, !dbg !3074, !tbaa !973
  %cmp22 = icmp eq i32 %26, 10, !dbg !3075
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %27, label %while.body, label %while.end, !dbg !3076

while.body:                                       ; preds = %land.end
  %28 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3078, !tbaa !894
  %call23 = call i32 @PyTokenizer_Get(%struct.tok_state* %28, i8** %p_start, i8** %p_end), !dbg !3080
  br label %while.cond, !dbg !3065

while.end:                                        ; preds = %land.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3081, !tbaa !894
  %call24 = call i32 @fclose(%struct._IO_FILE* %29), !dbg !3082
  %30 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3083, !tbaa !894
  %encoding25 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 24, !dbg !3085
  %31 = load i8*, i8** %encoding25, align 8, !dbg !3085, !tbaa !1051
  %tobool = icmp ne i8* %31, null, !dbg !3083
  br i1 %tobool, label %if.then.26, label %if.end.35, !dbg !3086

if.then.26:                                       ; preds = %while.end
  %32 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3087, !tbaa !894
  %encoding27 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 24, !dbg !3089
  %33 = load i8*, i8** %encoding27, align 8, !dbg !3089, !tbaa !1051
  %call28 = call i64 @strlen(i8* %33) #9, !dbg !3090
  %add = add i64 %call28, 1, !dbg !3091
  %call29 = call i8* @PyMem_Malloc(i64 %add), !dbg !3092
  store i8* %call29, i8** %encoding, align 8, !dbg !3093, !tbaa !894
  %34 = load i8*, i8** %encoding, align 8, !dbg !3094, !tbaa !894
  %tobool30 = icmp ne i8* %34, null, !dbg !3094
  br i1 %tobool30, label %if.then.31, label %if.end.34, !dbg !3096

if.then.31:                                       ; preds = %if.then.26
  %35 = load i8*, i8** %encoding, align 8, !dbg !3097, !tbaa !894
  %36 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3098, !tbaa !894
  %encoding32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 24, !dbg !3099
  %37 = load i8*, i8** %encoding32, align 8, !dbg !3099, !tbaa !1051
  %call33 = call i8* @strcpy(i8* %35, i8* %37) #2, !dbg !3100
  br label %if.end.34, !dbg !3100

if.end.34:                                        ; preds = %if.then.31, %if.then.26
  br label %if.end.35, !dbg !3101

if.end.35:                                        ; preds = %if.end.34, %while.end
  %38 = load %struct.tok_state*, %struct.tok_state** %tok, align 8, !dbg !3102, !tbaa !894
  call void @PyTokenizer_Free(%struct.tok_state* %38), !dbg !3103
  %39 = load i8*, i8** %encoding, align 8, !dbg !3104, !tbaa !894
  store i8* %39, i8** %retval, !dbg !3105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3105

cleanup:                                          ; preds = %if.end.35, %if.then.17, %if.then.7, %if.then.3, %if.then
  %40 = bitcast i8** %encoding to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3106
  %41 = bitcast i8** %p_end to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3106
  %42 = bitcast i8** %p_start to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3106
  %43 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3106
  %44 = bitcast %struct.tok_state** %tok to i8*, !dbg !3106
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3106
  %45 = load i8*, i8** %retval, !dbg !3106
  ret i8* %45, !dbg !3106
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
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !522, metadata !898), !dbg !3107
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3108, !tbaa !900
  %call = call i8* @PyTokenizer_FindEncodingFilename(i32 %0, %struct._object* null), !dbg !3109
  ret i8* %call, !dbg !3110
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
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*)** %get_char.addr, metadata !556, metadata !898), !dbg !3111
  store void (i32, %struct.tok_state*)* %unget_char, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata void (i32, %struct.tok_state*)** %unget_char.addr, metadata !557, metadata !898), !dbg !3112
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*, i8*)** %set_readline.addr, metadata !558, metadata !898), !dbg !3113
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !559, metadata !898), !dbg !3114
  %0 = bitcast i32* %ch1 to i8*, !dbg !3115
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3115
  call void @llvm.dbg.declare(metadata i32* %ch1, metadata !560, metadata !898), !dbg !3116
  %1 = bitcast i32* %ch2 to i8*, !dbg !3115
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3115
  call void @llvm.dbg.declare(metadata i32* %ch2, metadata !561, metadata !898), !dbg !3117
  %2 = bitcast i32* %ch3 to i8*, !dbg !3115
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3115
  call void @llvm.dbg.declare(metadata i32* %ch3, metadata !562, metadata !898), !dbg !3118
  %3 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3119, !tbaa !894
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3120, !tbaa !894
  %call = call i32 %3(%struct.tok_state* %4), !dbg !3119
  store i32 %call, i32* %ch1, align 4, !dbg !3121, !tbaa !900
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3122, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 21, !dbg !3123
  store i32 1, i32* %decoding_state, align 4, !dbg !3124, !tbaa !1035
  %6 = load i32, i32* %ch1, align 4, !dbg !3125, !tbaa !900
  %cmp = icmp eq i32 %6, -1, !dbg !3127
  br i1 %cmp, label %if.then, label %if.else, !dbg !3128

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !3129
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3129

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %ch1, align 4, !dbg !3131, !tbaa !900
  %cmp1 = icmp eq i32 %7, 239, !dbg !3133
  br i1 %cmp1, label %if.then.2, label %if.else.10, !dbg !3134

if.then.2:                                        ; preds = %if.else
  %8 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3135, !tbaa !894
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3137, !tbaa !894
  %call3 = call i32 %8(%struct.tok_state* %9), !dbg !3135
  store i32 %call3, i32* %ch2, align 4, !dbg !3138, !tbaa !900
  %10 = load i32, i32* %ch2, align 4, !dbg !3139, !tbaa !900
  %cmp4 = icmp ne i32 %10, 187, !dbg !3141
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !3142

if.then.5:                                        ; preds = %if.then.2
  %11 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3143, !tbaa !894
  %12 = load i32, i32* %ch2, align 4, !dbg !3145, !tbaa !900
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3146, !tbaa !894
  call void %11(i32 %12, %struct.tok_state* %13), !dbg !3143
  %14 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3147, !tbaa !894
  %15 = load i32, i32* %ch1, align 4, !dbg !3148, !tbaa !900
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3149, !tbaa !894
  call void %14(i32 %15, %struct.tok_state* %16), !dbg !3147
  store i32 1, i32* %retval, !dbg !3150
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3150

if.end:                                           ; preds = %if.then.2
  %17 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8, !dbg !3151, !tbaa !894
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3152, !tbaa !894
  %call6 = call i32 %17(%struct.tok_state* %18), !dbg !3151
  store i32 %call6, i32* %ch3, align 4, !dbg !3153, !tbaa !900
  %19 = load i32, i32* %ch3, align 4, !dbg !3154, !tbaa !900
  %cmp7 = icmp ne i32 %19, 191, !dbg !3156
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3157

if.then.8:                                        ; preds = %if.end
  %20 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3158, !tbaa !894
  %21 = load i32, i32* %ch3, align 4, !dbg !3160, !tbaa !900
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3161, !tbaa !894
  call void %20(i32 %21, %struct.tok_state* %22), !dbg !3158
  %23 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3162, !tbaa !894
  %24 = load i32, i32* %ch2, align 4, !dbg !3163, !tbaa !900
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3164, !tbaa !894
  call void %23(i32 %24, %struct.tok_state* %25), !dbg !3162
  %26 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3165, !tbaa !894
  %27 = load i32, i32* %ch1, align 4, !dbg !3166, !tbaa !900
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3167, !tbaa !894
  call void %26(i32 %27, %struct.tok_state* %28), !dbg !3165
  store i32 1, i32* %retval, !dbg !3168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3168

if.end.9:                                         ; preds = %if.end
  br label %if.end.11, !dbg !3169

if.else.10:                                       ; preds = %if.else
  %29 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8, !dbg !3170, !tbaa !894
  %30 = load i32, i32* %ch1, align 4, !dbg !3172, !tbaa !900
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3173, !tbaa !894
  call void %29(i32 %30, %struct.tok_state* %31), !dbg !3170
  store i32 1, i32* %retval, !dbg !3174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3174

if.end.11:                                        ; preds = %if.end.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11
  %32 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3175, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 24, !dbg !3177
  %33 = load i8*, i8** %encoding, align 8, !dbg !3177, !tbaa !1051
  %cmp13 = icmp ne i8* %33, null, !dbg !3178
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !3179

if.then.14:                                       ; preds = %if.end.12
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3180, !tbaa !894
  %encoding15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24, !dbg !3181
  %35 = load i8*, i8** %encoding15, align 8, !dbg !3181, !tbaa !1051
  call void @PyMem_Free(i8* %35), !dbg !3182
  br label %if.end.16, !dbg !3182

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3183, !tbaa !894
  %call17 = call i8* @new_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i64 5, %struct.tok_state* %36), !dbg !3184
  %37 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3185, !tbaa !894
  %encoding18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %37, i32 0, i32 24, !dbg !3186
  store i8* %call17, i8** %encoding18, align 8, !dbg !3187, !tbaa !1051
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3188, !tbaa !894
  %encoding19 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 24, !dbg !3190
  %39 = load i8*, i8** %encoding19, align 8, !dbg !3190, !tbaa !1051
  %tobool = icmp ne i8* %39, null, !dbg !3188
  br i1 %tobool, label %if.end.21, label %if.then.20, !dbg !3191

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %retval, !dbg !3192
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3192

if.end.21:                                        ; preds = %if.end.16
  store i32 1, i32* %retval, !dbg !3193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3193

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.else.10, %if.then.8, %if.then.5, %if.then
  %40 = bitcast i32* %ch3 to i8*, !dbg !3194
  call void @llvm.lifetime.end(i64 4, i8* %40) #2, !dbg !3194
  %41 = bitcast i32* %ch2 to i8*, !dbg !3194
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !3194
  %42 = bitcast i32* %ch1 to i8*, !dbg !3194
  call void @llvm.lifetime.end(i64 4, i8* %42) #2, !dbg !3194
  %43 = load i32, i32* %retval, !dbg !3194
  ret i32 %43, !dbg !3194
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !573, metadata !898), !dbg !3195
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3196, !tbaa !894
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30, !dbg !3197
  %1 = load i8*, i8** %str, align 8, !dbg !3198, !tbaa !1104
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !3198
  store i8* %incdec.ptr, i8** %str, align 8, !dbg !3198, !tbaa !1104
  %2 = load i8, i8* %1, align 1, !dbg !3199, !tbaa !1146
  %conv = sext i8 %2 to i32, !dbg !3200
  %and = and i32 %conv, 255, !dbg !3201
  %conv1 = trunc i32 %and to i8, !dbg !3202
  %conv2 = zext i8 %conv1 to i32, !dbg !3203
  ret i32 %conv2, !dbg !3204
}

; Function Attrs: nounwind uwtable
define internal void @buf_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !576, metadata !898), !dbg !3205
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !577, metadata !898), !dbg !3206
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3207, !tbaa !894
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30, !dbg !3208
  %1 = load i8*, i8** %str, align 8, !dbg !3209, !tbaa !1104
  %incdec.ptr = getelementptr i8, i8* %1, i32 -1, !dbg !3209
  store i8* %incdec.ptr, i8** %str, align 8, !dbg !3209, !tbaa !1104
  ret void, !dbg !3210
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_setreadl(%struct.tok_state* %tok, i8* %enc) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %enc.addr = alloca i8*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !580, metadata !898), !dbg !3211
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !581, metadata !898), !dbg !3212
  %0 = load i8*, i8** %enc.addr, align 8, !dbg !3213, !tbaa !894
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3214, !tbaa !894
  %enc1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 29, !dbg !3215
  store i8* %0, i8** %enc1, align 8, !dbg !3216, !tbaa !1047
  ret i32 1, !dbg !3217
}

; Function Attrs: nounwind uwtable
define internal i8* @error_ret(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !586, metadata !898), !dbg !3218
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3219, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 22, !dbg !3220
  store i32 1, i32* %decoding_erred, align 4, !dbg !3221, !tbaa !1039
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3222, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6, !dbg !3224
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !3224, !tbaa !977
  %cmp = icmp ne %struct._IO_FILE* %2, null, !dbg !3225
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3226

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3227, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0, !dbg !3229
  %4 = load i8*, i8** %buf, align 8, !dbg !3229, !tbaa !941
  %cmp1 = icmp ne i8* %4, null, !dbg !3230
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3231

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3232, !tbaa !894
  %buf2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 0, !dbg !3233
  %6 = load i8*, i8** %buf2, align 8, !dbg !3233, !tbaa !941
  call void @PyMem_Free(i8* %6), !dbg !3234
  br label %if.end, !dbg !3234

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3235, !tbaa !894
  %buf3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 0, !dbg !3236
  store i8* null, i8** %buf3, align 8, !dbg !3237, !tbaa !941
  ret i8* null, !dbg !3238
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
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !591, metadata !898), !dbg !3239
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !592, metadata !898), !dbg !3240
  %0 = bitcast %struct._object** %utf8 to i8*, !dbg !3241
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3241
  call void @llvm.dbg.declare(metadata %struct._object** %utf8, metadata !593, metadata !898), !dbg !3242
  %1 = bitcast %struct._object** %buf to i8*, !dbg !3243
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3243
  call void @llvm.dbg.declare(metadata %struct._object** %buf, metadata !594, metadata !898), !dbg !3244
  %2 = load i8*, i8** %str.addr, align 8, !dbg !3245, !tbaa !894
  %3 = load i8*, i8** %str.addr, align 8, !dbg !3246, !tbaa !894
  %call = call i64 @strlen(i8* %3) #9, !dbg !3247
  %4 = load i8*, i8** %enc.addr, align 8, !dbg !3248, !tbaa !894
  %call1 = call %struct._object* @PyUnicode_Decode(i8* %2, i64 %call, i8* %4, i8* null), !dbg !3249
  store %struct._object* %call1, %struct._object** %buf, align 8, !dbg !3244, !tbaa !894
  %5 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3250, !tbaa !894
  %cmp = icmp eq %struct._object* %5, null, !dbg !3252
  br i1 %cmp, label %if.then, label %if.end, !dbg !3253

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3254
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3254

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3255, !tbaa !894
  %call2 = call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %6), !dbg !3256
  store %struct._object* %call2, %struct._object** %utf8, align 8, !dbg !3257, !tbaa !894
  br label %do.body, !dbg !3258

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3259
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3259
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !595, metadata !898), !dbg !3261
  %8 = load %struct._object*, %struct._object** %buf, align 8, !dbg !3262, !tbaa !894
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !3261, !tbaa !894
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3263, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !3265
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !3266, !tbaa !1277
  %dec = add i64 %10, -1, !dbg !3266
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3266, !tbaa !1277
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3267
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3268

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !3269

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3271, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3273
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3273, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !3274
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3274, !tbaa !1289
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3275, !tbaa !894
  call void %13(%struct._object* %14), !dbg !3276
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3277
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !3277
  br label %do.cond, !dbg !3279

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !3280

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %utf8, align 8, !dbg !3282, !tbaa !894
  store %struct._object* %16, %struct._object** %retval, !dbg !3283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3283

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %buf to i8*, !dbg !3284
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3284
  %18 = bitcast %struct._object** %utf8 to i8*, !dbg !3284
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3284
  %19 = load %struct._object*, %struct._object** %retval, !dbg !3284
  ret %struct._object* %19, !dbg !3284
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
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !601, metadata !898), !dbg !3285
  store i64 %size, i64* %size.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !602, metadata !898), !dbg !3286
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !603, metadata !898), !dbg !3287
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i32 (%struct.tok_state*, i8*)** %set_readline.addr, metadata !604, metadata !898), !dbg !3288
  %0 = bitcast i8** %cs to i8*, !dbg !3289
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3289
  call void @llvm.dbg.declare(metadata i8** %cs, metadata !605, metadata !898), !dbg !3290
  %1 = bitcast i32* %r to i8*, !dbg !3291
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3291
  call void @llvm.dbg.declare(metadata i32* %r, metadata !606, metadata !898), !dbg !3292
  store i32 1, i32* %r, align 4, !dbg !3292, !tbaa !900
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3293, !tbaa !894
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 25, !dbg !3295
  %3 = load i32, i32* %cont_line, align 4, !dbg !3295, !tbaa !1055
  %tobool = icmp ne i32 %3, 0, !dbg !3293
  br i1 %tobool, label %if.then, label %if.end, !dbg !3296

if.then:                                          ; preds = %entry
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3297, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 23, !dbg !3299
  store i32 1, i32* %read_coding_spec, align 4, !dbg !3300, !tbaa !1043
  store i32 1, i32* %retval, !dbg !3301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3301

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %line.addr, align 8, !dbg !3302, !tbaa !894
  %6 = load i64, i64* %size.addr, align 8, !dbg !3304, !tbaa !1484
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3305, !tbaa !894
  %call = call i32 @get_coding_spec(i8* %5, i8** %cs, i64 %6, %struct.tok_state* %7), !dbg !3306
  %tobool1 = icmp ne i32 %call, 0, !dbg !3306
  br i1 %tobool1, label %if.end.3, label %if.then.2, !dbg !3307

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !3308
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3308

if.end.3:                                         ; preds = %if.end
  %8 = load i8*, i8** %cs, align 8, !dbg !3309, !tbaa !894
  %tobool4 = icmp ne i8* %8, null, !dbg !3309
  br i1 %tobool4, label %if.end.35, label %if.then.5, !dbg !3310

if.then.5:                                        ; preds = %if.end.3
  %9 = bitcast i64* %i to i8*, !dbg !3311
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3311
  call void @llvm.dbg.declare(metadata i64* %i, metadata !607, metadata !898), !dbg !3312
  store i64 0, i64* %i, align 8, !dbg !3313, !tbaa !1484
  br label %for.cond, !dbg !3315

for.cond:                                         ; preds = %for.inc, %if.then.5
  %10 = load i64, i64* %i, align 8, !dbg !3316, !tbaa !1484
  %11 = load i64, i64* %size.addr, align 8, !dbg !3320, !tbaa !1484
  %cmp = icmp slt i64 %10, %11, !dbg !3321
  br i1 %cmp, label %for.body, label %for.end, !dbg !3322

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8, !dbg !3323, !tbaa !1484
  %13 = load i8*, i8** %line.addr, align 8, !dbg !3326, !tbaa !894
  %arrayidx = getelementptr i8, i8* %13, i64 %12, !dbg !3326
  %14 = load i8, i8* %arrayidx, align 1, !dbg !3326, !tbaa !1146
  %conv = sext i8 %14 to i32, !dbg !3326
  %cmp6 = icmp eq i32 %conv, 35, !dbg !3327
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false, !dbg !3328

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i64, i64* %i, align 8, !dbg !3329, !tbaa !1484
  %16 = load i8*, i8** %line.addr, align 8, !dbg !3331, !tbaa !894
  %arrayidx8 = getelementptr i8, i8* %16, i64 %15, !dbg !3331
  %17 = load i8, i8* %arrayidx8, align 1, !dbg !3331, !tbaa !1146
  %conv9 = sext i8 %17 to i32, !dbg !3331
  %cmp10 = icmp eq i32 %conv9, 10, !dbg !3332
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.12, !dbg !3333

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load i64, i64* %i, align 8, !dbg !3334, !tbaa !1484
  %19 = load i8*, i8** %line.addr, align 8, !dbg !3336, !tbaa !894
  %arrayidx13 = getelementptr i8, i8* %19, i64 %18, !dbg !3336
  %20 = load i8, i8* %arrayidx13, align 1, !dbg !3336, !tbaa !1146
  %conv14 = sext i8 %20 to i32, !dbg !3336
  %cmp15 = icmp eq i32 %conv14, 13, !dbg !3337
  br i1 %cmp15, label %if.then.17, label %if.end.18, !dbg !3338

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %for.body
  br label %for.end, !dbg !3339

if.end.18:                                        ; preds = %lor.lhs.false.12
  %21 = load i64, i64* %i, align 8, !dbg !3340, !tbaa !1484
  %22 = load i8*, i8** %line.addr, align 8, !dbg !3342, !tbaa !894
  %arrayidx19 = getelementptr i8, i8* %22, i64 %21, !dbg !3342
  %23 = load i8, i8* %arrayidx19, align 1, !dbg !3342, !tbaa !1146
  %conv20 = sext i8 %23 to i32, !dbg !3342
  %cmp21 = icmp ne i32 %conv20, 32, !dbg !3343
  br i1 %cmp21, label %land.lhs.true, label %if.end.34, !dbg !3344

land.lhs.true:                                    ; preds = %if.end.18
  %24 = load i64, i64* %i, align 8, !dbg !3345, !tbaa !1484
  %25 = load i8*, i8** %line.addr, align 8, !dbg !3347, !tbaa !894
  %arrayidx23 = getelementptr i8, i8* %25, i64 %24, !dbg !3347
  %26 = load i8, i8* %arrayidx23, align 1, !dbg !3347, !tbaa !1146
  %conv24 = sext i8 %26 to i32, !dbg !3347
  %cmp25 = icmp ne i32 %conv24, 9, !dbg !3348
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.34, !dbg !3349

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %27 = load i64, i64* %i, align 8, !dbg !3350, !tbaa !1484
  %28 = load i8*, i8** %line.addr, align 8, !dbg !3352, !tbaa !894
  %arrayidx28 = getelementptr i8, i8* %28, i64 %27, !dbg !3352
  %29 = load i8, i8* %arrayidx28, align 1, !dbg !3352, !tbaa !1146
  %conv29 = sext i8 %29 to i32, !dbg !3352
  %cmp30 = icmp ne i32 %conv29, 12, !dbg !3353
  br i1 %cmp30, label %if.then.32, label %if.end.34, !dbg !3354

if.then.32:                                       ; preds = %land.lhs.true.27
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3355, !tbaa !894
  %read_coding_spec33 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 23, !dbg !3357
  store i32 1, i32* %read_coding_spec33, align 4, !dbg !3358, !tbaa !1043
  br label %for.end, !dbg !3359

if.end.34:                                        ; preds = %land.lhs.true.27, %land.lhs.true, %if.end.18
  br label %for.inc, !dbg !3360

for.inc:                                          ; preds = %if.end.34
  %31 = load i64, i64* %i, align 8, !dbg !3361, !tbaa !1484
  %inc = add i64 %31, 1, !dbg !3361
  store i64 %inc, i64* %i, align 8, !dbg !3361, !tbaa !1484
  br label %for.cond, !dbg !3362

for.end:                                          ; preds = %if.then.32, %if.then.17, %for.cond
  store i32 1, i32* %retval, !dbg !3363
  store i32 1, i32* %cleanup.dest.slot
  %32 = bitcast i64* %i to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3364
  br label %cleanup

if.end.35:                                        ; preds = %if.end.3
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3365, !tbaa !894
  %read_coding_spec36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 23, !dbg !3366
  store i32 1, i32* %read_coding_spec36, align 4, !dbg !3367, !tbaa !1043
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3368, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24, !dbg !3369
  %35 = load i8*, i8** %encoding, align 8, !dbg !3369, !tbaa !1051
  %cmp37 = icmp eq i8* %35, null, !dbg !3370
  br i1 %cmp37, label %if.then.39, label %if.else.95, !dbg !3371

if.then.39:                                       ; preds = %if.end.35
  %36 = bitcast i64* %__s1_len to i8*, !dbg !3372
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !3372
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !610, metadata !898), !dbg !3373
  %37 = bitcast i64* %__s2_len to i8*, !dbg !3372
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !3372
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !615, metadata !898), !dbg !3374
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true.40, label %cond.false, !dbg !3375

land.lhs.true.40:                                 ; preds = %if.then.39
  store i64 5, i64* %__s2_len, align 8, !dbg !3376, !tbaa !1484
  %38 = load i64, i64* %__s2_len, align 8, !dbg !3378, !tbaa !1484
  %cmp41 = icmp ult i64 %38, 4, !dbg !3379
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !3380

cond.true:                                        ; preds = %land.lhs.true.40
  %39 = bitcast i8** %__s1 to i8*, !dbg !3381
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !3381
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !616, metadata !898), !dbg !3383
  %40 = load i8*, i8** %cs, align 8, !dbg !3384, !tbaa !894
  store i8* %40, i8** %__s1, align 8, !dbg !3383, !tbaa !894
  %41 = bitcast i32* %__result to i8*, !dbg !3385
  call void @llvm.lifetime.start(i64 4, i8* %41) #2, !dbg !3385
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !618, metadata !898), !dbg !3386
  %42 = load i8*, i8** %__s1, align 8, !dbg !3387, !tbaa !894
  %arrayidx45 = getelementptr i8, i8* %42, i64 0, !dbg !3387
  %43 = load i8, i8* %arrayidx45, align 1, !dbg !3387, !tbaa !1146
  %conv46 = zext i8 %43 to i32, !dbg !3387
  %44 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), align 1, !dbg !3388, !tbaa !1146
  %conv47 = zext i8 %44 to i32, !dbg !3388
  %sub = sub i32 %conv46, %conv47, !dbg !3389
  store i32 %sub, i32* %__result, align 4, !dbg !3386, !tbaa !900
  %45 = load i64, i64* %__s2_len, align 8, !dbg !3390, !tbaa !1484
  %cmp48 = icmp ugt i64 %45, 0, !dbg !3392
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.80, !dbg !3393

land.lhs.true.50:                                 ; preds = %cond.true
  %46 = load i32, i32* %__result, align 4, !dbg !3394, !tbaa !900
  %cmp51 = icmp eq i32 %46, 0, !dbg !3396
  br i1 %cmp51, label %if.then.53, label %if.end.80, !dbg !3397

if.then.53:                                       ; preds = %land.lhs.true.50
  %47 = load i8*, i8** %__s1, align 8, !dbg !3398, !tbaa !894
  %arrayidx54 = getelementptr i8, i8* %47, i64 1, !dbg !3398
  %48 = load i8, i8* %arrayidx54, align 1, !dbg !3398, !tbaa !1146
  %conv55 = zext i8 %48 to i32, !dbg !3398
  %49 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1), align 1, !dbg !3401, !tbaa !1146
  %conv56 = zext i8 %49 to i32, !dbg !3401
  %sub57 = sub i32 %conv55, %conv56, !dbg !3402
  store i32 %sub57, i32* %__result, align 4, !dbg !3403, !tbaa !900
  %50 = load i64, i64* %__s2_len, align 8, !dbg !3404, !tbaa !1484
  %cmp58 = icmp ugt i64 %50, 1, !dbg !3406
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.79, !dbg !3407

land.lhs.true.60:                                 ; preds = %if.then.53
  %51 = load i32, i32* %__result, align 4, !dbg !3408, !tbaa !900
  %cmp61 = icmp eq i32 %51, 0, !dbg !3410
  br i1 %cmp61, label %if.then.63, label %if.end.79, !dbg !3411

if.then.63:                                       ; preds = %land.lhs.true.60
  %52 = load i8*, i8** %__s1, align 8, !dbg !3412, !tbaa !894
  %arrayidx64 = getelementptr i8, i8* %52, i64 2, !dbg !3412
  %53 = load i8, i8* %arrayidx64, align 1, !dbg !3412, !tbaa !1146
  %conv65 = zext i8 %53 to i32, !dbg !3412
  %54 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 2), align 1, !dbg !3415, !tbaa !1146
  %conv66 = zext i8 %54 to i32, !dbg !3415
  %sub67 = sub i32 %conv65, %conv66, !dbg !3416
  store i32 %sub67, i32* %__result, align 4, !dbg !3417, !tbaa !900
  %55 = load i64, i64* %__s2_len, align 8, !dbg !3418, !tbaa !1484
  %cmp68 = icmp ugt i64 %55, 2, !dbg !3420
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.78, !dbg !3421

land.lhs.true.70:                                 ; preds = %if.then.63
  %56 = load i32, i32* %__result, align 4, !dbg !3422, !tbaa !900
  %cmp71 = icmp eq i32 %56, 0, !dbg !3424
  br i1 %cmp71, label %if.then.73, label %if.end.78, !dbg !3425

if.then.73:                                       ; preds = %land.lhs.true.70
  %57 = load i8*, i8** %__s1, align 8, !dbg !3426, !tbaa !894
  %arrayidx74 = getelementptr i8, i8* %57, i64 3, !dbg !3426
  %58 = load i8, i8* %arrayidx74, align 1, !dbg !3426, !tbaa !1146
  %conv75 = zext i8 %58 to i32, !dbg !3426
  %59 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 3), align 1, !dbg !3428, !tbaa !1146
  %conv76 = zext i8 %59 to i32, !dbg !3428
  %sub77 = sub i32 %conv75, %conv76, !dbg !3429
  store i32 %sub77, i32* %__result, align 4, !dbg !3430, !tbaa !900
  br label %if.end.78, !dbg !3431

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.70, %if.then.63
  br label %if.end.79, !dbg !3432

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.60, %if.then.53
  br label %if.end.80, !dbg !3436

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.50, %cond.true
  %60 = load i32, i32* %__result, align 4, !dbg !3440, !tbaa !900
  store i32 %60, i32* %tmp81, !dbg !3444, !tbaa !900
  %61 = bitcast i32* %__result to i8*, !dbg !3445
  call void @llvm.lifetime.end(i64 4, i8* %61) #2, !dbg !3445
  %62 = bitcast i8** %__s1 to i8*, !dbg !3445
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !3445
  %63 = load i32, i32* %tmp81, !dbg !3446, !tbaa !900
  br label %cond.end, !dbg !3380

cond.false:                                       ; preds = %land.lhs.true.40, %if.then.39
  %64 = load i8*, i8** %cs, align 8, !dbg !3447, !tbaa !894
  %call82 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #2, !dbg !3450
  br label %cond.end, !dbg !3380

cond.end:                                         ; preds = %cond.false, %if.end.80
  %cond = phi i32 [ %63, %if.end.80 ], [ %call82, %cond.false ], !dbg !3380
  store i32 %cond, i32* %tmp, !dbg !3451, !tbaa !900
  %65 = bitcast i64* %__s2_len to i8*, !dbg !3454
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !3454
  %66 = bitcast i64* %__s1_len to i8*, !dbg !3454
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3454
  %67 = load i32, i32* %tmp, !dbg !3455, !tbaa !900
  %cmp83 = icmp eq i32 %67, 0, !dbg !3456
  br i1 %cmp83, label %if.then.85, label %if.else, !dbg !3457

if.then.85:                                       ; preds = %cond.end
  %68 = load i8*, i8** %cs, align 8, !dbg !3458, !tbaa !894
  %69 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3460, !tbaa !894
  %encoding86 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %69, i32 0, i32 24, !dbg !3461
  store i8* %68, i8** %encoding86, align 8, !dbg !3462, !tbaa !1051
  br label %if.end.94, !dbg !3463

if.else:                                          ; preds = %cond.end
  %70 = load i32 (%struct.tok_state*, i8*)*, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8, !dbg !3464, !tbaa !894
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3466, !tbaa !894
  %72 = load i8*, i8** %cs, align 8, !dbg !3467, !tbaa !894
  %call87 = call i32 %70(%struct.tok_state* %71, i8* %72), !dbg !3464
  store i32 %call87, i32* %r, align 4, !dbg !3468, !tbaa !900
  %73 = load i32, i32* %r, align 4, !dbg !3469, !tbaa !900
  %tobool88 = icmp ne i32 %73, 0, !dbg !3469
  br i1 %tobool88, label %if.then.89, label %if.else.91, !dbg !3471

if.then.89:                                       ; preds = %if.else
  %74 = load i8*, i8** %cs, align 8, !dbg !3472, !tbaa !894
  %75 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3474, !tbaa !894
  %encoding90 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %75, i32 0, i32 24, !dbg !3475
  store i8* %74, i8** %encoding90, align 8, !dbg !3476, !tbaa !1051
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3477, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %76, i32 0, i32 21, !dbg !3478
  store i32 2, i32* %decoding_state, align 4, !dbg !3479, !tbaa !1035
  br label %if.end.93, !dbg !3480

if.else.91:                                       ; preds = %if.else
  %77 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !3481, !tbaa !894
  %78 = load i8*, i8** %cs, align 8, !dbg !3483, !tbaa !894
  %call92 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8* %78), !dbg !3484
  %79 = load i8*, i8** %cs, align 8, !dbg !3485, !tbaa !894
  call void @PyMem_Free(i8* %79), !dbg !3486
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.85
  br label %if.end.109, !dbg !3487

if.else.95:                                       ; preds = %if.end.35
  %80 = bitcast i64* %__s1_len97 to i8*, !dbg !3488
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !3488
  call void @llvm.dbg.declare(metadata i64* %__s1_len97, metadata !619, metadata !898), !dbg !3489
  %81 = bitcast i64* %__s2_len99 to i8*, !dbg !3488
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !3488
  call void @llvm.dbg.declare(metadata i64* %__s2_len99, metadata !622, metadata !898), !dbg !3490
  %82 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3491, !tbaa !894
  %encoding101 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %82, i32 0, i32 24, !dbg !3492
  %83 = load i8*, i8** %encoding101, align 8, !dbg !3492, !tbaa !1051
  %84 = load i8*, i8** %cs, align 8, !dbg !3493, !tbaa !894
  %call102 = call i32 @strcmp(i8* %83, i8* %84) #2, !dbg !3494
  store i32 %call102, i32* %tmp100, !dbg !3488, !tbaa !900
  %85 = bitcast i64* %__s2_len99 to i8*, !dbg !3495
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !3495
  %86 = bitcast i64* %__s1_len97 to i8*, !dbg !3495
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !3495
  %87 = load i32, i32* %tmp100, !dbg !3496, !tbaa !900
  %cmp103 = icmp eq i32 %87, 0, !dbg !3497
  %conv104 = zext i1 %cmp103 to i32, !dbg !3497
  store i32 %conv104, i32* %r, align 4, !dbg !3498, !tbaa !900
  %88 = load i32, i32* %r, align 4, !dbg !3499, !tbaa !900
  %tobool105 = icmp ne i32 %88, 0, !dbg !3499
  br i1 %tobool105, label %if.end.108, label %if.then.106, !dbg !3501

if.then.106:                                      ; preds = %if.else.95
  %89 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !3502, !tbaa !894
  %90 = load i8*, i8** %cs, align 8, !dbg !3503, !tbaa !894
  %call107 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8* %90), !dbg !3504
  br label %if.end.108, !dbg !3504

if.end.108:                                       ; preds = %if.then.106, %if.else.95
  %91 = load i8*, i8** %cs, align 8, !dbg !3505, !tbaa !894
  call void @PyMem_Free(i8* %91), !dbg !3506
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.94
  %92 = load i32, i32* %r, align 4, !dbg !3507, !tbaa !900
  store i32 %92, i32* %retval, !dbg !3508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3508

cleanup:                                          ; preds = %if.end.109, %for.end, %if.then.2, %if.then
  %93 = bitcast i32* %r to i8*, !dbg !3509
  call void @llvm.lifetime.end(i64 4, i8* %93) #2, !dbg !3509
  %94 = bitcast i8** %cs to i8*, !dbg !3509
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !3509
  %95 = load i32, i32* %retval, !dbg !3509
  ret i32 %95, !dbg !3509
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !567, metadata !898), !dbg !3510
  store i64 %len, i64* %len.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !568, metadata !898), !dbg !3511
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !569, metadata !898), !dbg !3512
  %0 = bitcast i8** %result to i8*, !dbg !3513
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3513
  call void @llvm.dbg.declare(metadata i8** %result, metadata !570, metadata !898), !dbg !3514
  %1 = load i64, i64* %len.addr, align 8, !dbg !3515, !tbaa !1484
  %add = add i64 %1, 1, !dbg !3516
  %call = call i8* @PyMem_Malloc(i64 %add), !dbg !3517
  store i8* %call, i8** %result, align 8, !dbg !3514, !tbaa !894
  %2 = load i8*, i8** %result, align 8, !dbg !3518, !tbaa !894
  %tobool = icmp ne i8* %2, null, !dbg !3518
  br i1 %tobool, label %if.end, label %if.then, !dbg !3520

if.then:                                          ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3521, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 5, !dbg !3523
  store i32 15, i32* %done, align 4, !dbg !3524, !tbaa !973
  store i8* null, i8** %retval, !dbg !3525
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3525

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %result, align 8, !dbg !3526, !tbaa !894
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3527, !tbaa !894
  %6 = load i64, i64* %len.addr, align 8, !dbg !3528, !tbaa !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %6, i32 1, i1 false), !dbg !3529
  %7 = load i64, i64* %len.addr, align 8, !dbg !3530, !tbaa !1484
  %8 = load i8*, i8** %result, align 8, !dbg !3531, !tbaa !894
  %arrayidx = getelementptr i8, i8* %8, i64 %7, !dbg !3531
  store i8 0, i8* %arrayidx, align 1, !dbg !3532, !tbaa !1146
  %9 = load i8*, i8** %result, align 8, !dbg !3533, !tbaa !894
  store i8* %9, i8** %retval, !dbg !3534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3534

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i8** %result to i8*, !dbg !3535
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3535
  %11 = load i8*, i8** %retval, !dbg !3535
  ret i8* %11, !dbg !3535
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !627, metadata !898), !dbg !3536
  store i8** %spec, i8*** %spec.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8*** %spec.addr, metadata !628, metadata !898), !dbg !3537
  store i64 %size, i64* %size.addr, align 8, !tbaa !1484
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !629, metadata !898), !dbg !3538
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !630, metadata !898), !dbg !3539
  %0 = bitcast i64* %i to i8*, !dbg !3540
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3540
  call void @llvm.dbg.declare(metadata i64* %i, metadata !631, metadata !898), !dbg !3541
  %1 = load i8**, i8*** %spec.addr, align 8, !dbg !3542, !tbaa !894
  store i8* null, i8** %1, align 8, !dbg !3543, !tbaa !894
  store i64 0, i64* %i, align 8, !dbg !3544, !tbaa !1484
  br label %for.cond, !dbg !3546

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !dbg !3547, !tbaa !1484
  %3 = load i64, i64* %size.addr, align 8, !dbg !3551, !tbaa !1484
  %sub = sub i64 %3, 6, !dbg !3552
  %cmp = icmp slt i64 %2, %sub, !dbg !3553
  br i1 %cmp, label %for.body, label %for.end, !dbg !3554

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8, !dbg !3555, !tbaa !1484
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3558, !tbaa !894
  %arrayidx = getelementptr i8, i8* %5, i64 %4, !dbg !3558
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3558, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !3558
  %cmp1 = icmp eq i32 %conv, 35, !dbg !3559
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3560

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3561

if.end:                                           ; preds = %for.body
  %7 = load i64, i64* %i, align 8, !dbg !3562, !tbaa !1484
  %8 = load i8*, i8** %s.addr, align 8, !dbg !3564, !tbaa !894
  %arrayidx3 = getelementptr i8, i8* %8, i64 %7, !dbg !3564
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !3564, !tbaa !1146
  %conv4 = sext i8 %9 to i32, !dbg !3564
  %cmp5 = icmp ne i32 %conv4, 32, !dbg !3565
  br i1 %cmp5, label %land.lhs.true, label %if.end.17, !dbg !3566

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, i64* %i, align 8, !dbg !3567, !tbaa !1484
  %11 = load i8*, i8** %s.addr, align 8, !dbg !3569, !tbaa !894
  %arrayidx7 = getelementptr i8, i8* %11, i64 %10, !dbg !3569
  %12 = load i8, i8* %arrayidx7, align 1, !dbg !3569, !tbaa !1146
  %conv8 = sext i8 %12 to i32, !dbg !3569
  %cmp9 = icmp ne i32 %conv8, 9, !dbg !3570
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.17, !dbg !3571

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %13 = load i64, i64* %i, align 8, !dbg !3572, !tbaa !1484
  %14 = load i8*, i8** %s.addr, align 8, !dbg !3574, !tbaa !894
  %arrayidx12 = getelementptr i8, i8* %14, i64 %13, !dbg !3574
  %15 = load i8, i8* %arrayidx12, align 1, !dbg !3574, !tbaa !1146
  %conv13 = sext i8 %15 to i32, !dbg !3574
  %cmp14 = icmp ne i32 %conv13, 12, !dbg !3575
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !3576

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval, !dbg !3577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !3577

if.end.17:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  br label %for.inc, !dbg !3578

for.inc:                                          ; preds = %if.end.17
  %16 = load i64, i64* %i, align 8, !dbg !3579, !tbaa !1484
  %inc = add i64 %16, 1, !dbg !3579
  store i64 %inc, i64* %i, align 8, !dbg !3579, !tbaa !1484
  br label %for.cond, !dbg !3580

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond.18, !dbg !3581

for.cond.18:                                      ; preds = %for.inc.93, %for.end
  %17 = load i64, i64* %i, align 8, !dbg !3582, !tbaa !1484
  %18 = load i64, i64* %size.addr, align 8, !dbg !3585, !tbaa !1484
  %sub19 = sub i64 %18, 6, !dbg !3586
  %cmp20 = icmp slt i64 %17, %sub19, !dbg !3587
  br i1 %cmp20, label %for.body.22, label %for.end.95, !dbg !3588

for.body.22:                                      ; preds = %for.cond.18
  %19 = bitcast i8** %t to i8*, !dbg !3589
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !3589
  call void @llvm.dbg.declare(metadata i8** %t, metadata !632, metadata !898), !dbg !3590
  %20 = load i8*, i8** %s.addr, align 8, !dbg !3591, !tbaa !894
  %21 = load i64, i64* %i, align 8, !dbg !3592, !tbaa !1484
  %add.ptr = getelementptr i8, i8* %20, i64 %21, !dbg !3593
  store i8* %add.ptr, i8** %t, align 8, !dbg !3590, !tbaa !894
  %22 = load i8*, i8** %t, align 8, !dbg !3594, !tbaa !894
  %call = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i64 6) #9, !dbg !3595
  %cmp23 = icmp eq i32 %call, 0, !dbg !3596
  br i1 %cmp23, label %if.then.25, label %if.end.89, !dbg !3597

if.then.25:                                       ; preds = %for.body.22
  %23 = bitcast i8** %begin to i8*, !dbg !3598
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3598
  call void @llvm.dbg.declare(metadata i8** %begin, metadata !636, metadata !898), !dbg !3599
  store i8* null, i8** %begin, align 8, !dbg !3599, !tbaa !894
  %24 = load i8*, i8** %t, align 8, !dbg !3600, !tbaa !894
  %add.ptr26 = getelementptr i8, i8* %24, i64 6, !dbg !3600
  store i8* %add.ptr26, i8** %t, align 8, !dbg !3600, !tbaa !894
  %25 = load i8*, i8** %t, align 8, !dbg !3601, !tbaa !894
  %arrayidx27 = getelementptr i8, i8* %25, i64 0, !dbg !3601
  %26 = load i8, i8* %arrayidx27, align 1, !dbg !3601, !tbaa !1146
  %conv28 = sext i8 %26 to i32, !dbg !3601
  %cmp29 = icmp ne i32 %conv28, 58, !dbg !3603
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.37, !dbg !3604

land.lhs.true.31:                                 ; preds = %if.then.25
  %27 = load i8*, i8** %t, align 8, !dbg !3605, !tbaa !894
  %arrayidx32 = getelementptr i8, i8* %27, i64 0, !dbg !3605
  %28 = load i8, i8* %arrayidx32, align 1, !dbg !3605, !tbaa !1146
  %conv33 = sext i8 %28 to i32, !dbg !3605
  %cmp34 = icmp ne i32 %conv33, 61, !dbg !3607
  br i1 %cmp34, label %if.then.36, label %if.end.37, !dbg !3608

if.then.36:                                       ; preds = %land.lhs.true.31
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.86, !dbg !3609

if.end.37:                                        ; preds = %land.lhs.true.31, %if.then.25
  br label %do.body, !dbg !3610

do.body:                                          ; preds = %lor.end, %if.end.37
  %29 = load i8*, i8** %t, align 8, !dbg !3611, !tbaa !894
  %incdec.ptr = getelementptr i8, i8* %29, i32 1, !dbg !3611
  store i8* %incdec.ptr, i8** %t, align 8, !dbg !3611, !tbaa !894
  br label %do.cond, !dbg !3613

do.cond:                                          ; preds = %do.body
  %30 = load i8*, i8** %t, align 8, !dbg !3614, !tbaa !894
  %arrayidx38 = getelementptr i8, i8* %30, i64 0, !dbg !3614
  %31 = load i8, i8* %arrayidx38, align 1, !dbg !3614, !tbaa !1146
  %conv39 = sext i8 %31 to i32, !dbg !3614
  %cmp40 = icmp eq i32 %conv39, 32, !dbg !3616
  br i1 %cmp40, label %lor.end, label %lor.rhs, !dbg !3617

lor.rhs:                                          ; preds = %do.cond
  %32 = load i8*, i8** %t, align 8, !dbg !3618, !tbaa !894
  %arrayidx42 = getelementptr i8, i8* %32, i64 0, !dbg !3618
  %33 = load i8, i8* %arrayidx42, align 1, !dbg !3618, !tbaa !1146
  %conv43 = sext i8 %33 to i32, !dbg !3618
  %cmp44 = icmp eq i32 %conv43, 9, !dbg !3620
  br label %lor.end, !dbg !3617

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %34 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %34, label %do.body, label %do.end, !dbg !3621

do.end:                                           ; preds = %lor.end
  %35 = load i8*, i8** %t, align 8, !dbg !3624, !tbaa !894
  store i8* %35, i8** %begin, align 8, !dbg !3625, !tbaa !894
  br label %while.cond, !dbg !3626

while.cond:                                       ; preds = %while.body, %do.end
  %36 = load i8*, i8** %t, align 8, !dbg !3627, !tbaa !894
  %arrayidx46 = getelementptr i8, i8* %36, i64 0, !dbg !3627
  %37 = load i8, i8* %arrayidx46, align 1, !dbg !3627, !tbaa !1146
  %conv47 = sext i8 %37 to i32, !dbg !3629
  %and = and i32 %conv47, 255, !dbg !3630
  %conv48 = trunc i32 %and to i8, !dbg !3631
  %idxprom = zext i8 %conv48 to i64, !dbg !3632
  %arrayidx49 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !3632
  %38 = load i32, i32* %arrayidx49, align 4, !dbg !3632, !tbaa !900
  %and50 = and i32 %38, 7, !dbg !3633
  %tobool = icmp ne i32 %and50, 0, !dbg !3633
  br i1 %tobool, label %lor.end.65, label %lor.lhs.false, !dbg !3634

lor.lhs.false:                                    ; preds = %while.cond
  %39 = load i8*, i8** %t, align 8, !dbg !3635, !tbaa !894
  %arrayidx51 = getelementptr i8, i8* %39, i64 0, !dbg !3635
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !3635, !tbaa !1146
  %conv52 = sext i8 %40 to i32, !dbg !3635
  %cmp53 = icmp eq i32 %conv52, 45, !dbg !3636
  br i1 %cmp53, label %lor.end.65, label %lor.lhs.false.55, !dbg !3637

lor.lhs.false.55:                                 ; preds = %lor.lhs.false
  %41 = load i8*, i8** %t, align 8, !dbg !3638, !tbaa !894
  %arrayidx56 = getelementptr i8, i8* %41, i64 0, !dbg !3638
  %42 = load i8, i8* %arrayidx56, align 1, !dbg !3638, !tbaa !1146
  %conv57 = sext i8 %42 to i32, !dbg !3638
  %cmp58 = icmp eq i32 %conv57, 95, !dbg !3639
  br i1 %cmp58, label %lor.end.65, label %lor.rhs.60, !dbg !3640

lor.rhs.60:                                       ; preds = %lor.lhs.false.55
  %43 = load i8*, i8** %t, align 8, !dbg !3641, !tbaa !894
  %arrayidx61 = getelementptr i8, i8* %43, i64 0, !dbg !3641
  %44 = load i8, i8* %arrayidx61, align 1, !dbg !3641, !tbaa !1146
  %conv62 = sext i8 %44 to i32, !dbg !3641
  %cmp63 = icmp eq i32 %conv62, 46, !dbg !3643
  br label %lor.end.65, !dbg !3640

lor.end.65:                                       ; preds = %lor.rhs.60, %lor.lhs.false.55, %lor.lhs.false, %while.cond
  %45 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp63, %lor.rhs.60 ]
  br i1 %45, label %while.body, label %while.end, !dbg !3644

while.body:                                       ; preds = %lor.end.65
  %46 = load i8*, i8** %t, align 8, !dbg !3645, !tbaa !894
  %incdec.ptr66 = getelementptr i8, i8* %46, i32 1, !dbg !3645
  store i8* %incdec.ptr66, i8** %t, align 8, !dbg !3645, !tbaa !894
  br label %while.cond, !dbg !3626

while.end:                                        ; preds = %lor.end.65
  %47 = load i8*, i8** %begin, align 8, !dbg !3646, !tbaa !894
  %48 = load i8*, i8** %t, align 8, !dbg !3647, !tbaa !894
  %cmp67 = icmp ult i8* %47, %48, !dbg !3648
  br i1 %cmp67, label %if.then.69, label %if.end.85, !dbg !3649

if.then.69:                                       ; preds = %while.end
  %49 = bitcast i8** %r to i8*, !dbg !3650
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3650
  call void @llvm.dbg.declare(metadata i8** %r, metadata !639, metadata !898), !dbg !3651
  %50 = load i8*, i8** %begin, align 8, !dbg !3652, !tbaa !894
  %51 = load i8*, i8** %t, align 8, !dbg !3653, !tbaa !894
  %52 = load i8*, i8** %begin, align 8, !dbg !3654, !tbaa !894
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64, !dbg !3655
  %sub.ptr.rhs.cast = ptrtoint i8* %52 to i64, !dbg !3655
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3655
  %53 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3656, !tbaa !894
  %call70 = call i8* @new_string(i8* %50, i64 %sub.ptr.sub, %struct.tok_state* %53), !dbg !3657
  store i8* %call70, i8** %r, align 8, !dbg !3651, !tbaa !894
  %54 = bitcast i8** %q to i8*, !dbg !3658
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !3658
  call void @llvm.dbg.declare(metadata i8** %q, metadata !642, metadata !898), !dbg !3659
  %55 = load i8*, i8** %r, align 8, !dbg !3660, !tbaa !894
  %tobool71 = icmp ne i8* %55, null, !dbg !3660
  br i1 %tobool71, label %if.end.73, label %if.then.72, !dbg !3662

if.then.72:                                       ; preds = %if.then.69
  store i32 0, i32* %retval, !dbg !3663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3663

if.end.73:                                        ; preds = %if.then.69
  %56 = load i8*, i8** %r, align 8, !dbg !3664, !tbaa !894
  %call74 = call i8* @get_normal_name(i8* %56), !dbg !3665
  store i8* %call74, i8** %q, align 8, !dbg !3666, !tbaa !894
  %57 = load i8*, i8** %r, align 8, !dbg !3667, !tbaa !894
  %58 = load i8*, i8** %q, align 8, !dbg !3669, !tbaa !894
  %cmp75 = icmp ne i8* %57, %58, !dbg !3670
  br i1 %cmp75, label %if.then.77, label %if.end.83, !dbg !3671

if.then.77:                                       ; preds = %if.end.73
  %59 = load i8*, i8** %r, align 8, !dbg !3672, !tbaa !894
  call void @PyMem_Free(i8* %59), !dbg !3674
  %60 = load i8*, i8** %q, align 8, !dbg !3675, !tbaa !894
  %61 = load i8*, i8** %q, align 8, !dbg !3676, !tbaa !894
  %call78 = call i64 @strlen(i8* %61) #9, !dbg !3677
  %62 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !3678, !tbaa !894
  %call79 = call i8* @new_string(i8* %60, i64 %call78, %struct.tok_state* %62), !dbg !3679
  store i8* %call79, i8** %r, align 8, !dbg !3680, !tbaa !894
  %63 = load i8*, i8** %r, align 8, !dbg !3681, !tbaa !894
  %tobool80 = icmp ne i8* %63, null, !dbg !3681
  br i1 %tobool80, label %if.end.82, label %if.then.81, !dbg !3683

if.then.81:                                       ; preds = %if.then.77
  store i32 0, i32* %retval, !dbg !3684
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3684

if.end.82:                                        ; preds = %if.then.77
  br label %if.end.83, !dbg !3685

if.end.83:                                        ; preds = %if.end.82, %if.end.73
  %64 = load i8*, i8** %r, align 8, !dbg !3686, !tbaa !894
  %65 = load i8**, i8*** %spec.addr, align 8, !dbg !3687, !tbaa !894
  store i8* %64, i8** %65, align 8, !dbg !3688, !tbaa !894
  store i32 0, i32* %cleanup.dest.slot, !dbg !3689
  br label %cleanup, !dbg !3689

cleanup:                                          ; preds = %if.end.83, %if.then.81, %if.then.72
  %66 = bitcast i8** %q to i8*, !dbg !3690
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3690
  %67 = bitcast i8** %r to i8*, !dbg !3690
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !3690
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.85, !dbg !3692

if.end.85:                                        ; preds = %cleanup.cont, %while.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !3693
  br label %cleanup.86, !dbg !3693

cleanup.86:                                       ; preds = %if.end.85, %cleanup, %if.then.36
  %68 = bitcast i8** %begin to i8*, !dbg !3694
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3694
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %cleanup.90 [
    i32 0, label %cleanup.cont.88
  ]

cleanup.cont.88:                                  ; preds = %cleanup.86
  br label %if.end.89, !dbg !3696

if.end.89:                                        ; preds = %cleanup.cont.88, %for.body.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !3697
  br label %cleanup.90, !dbg !3697

cleanup.90:                                       ; preds = %if.end.89, %cleanup.86
  %69 = bitcast i8** %t to i8*, !dbg !3698
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !3698
  %cleanup.dest.91 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.91, label %cleanup.96 [
    i32 0, label %cleanup.cont.92
    i32 7, label %for.inc.93
  ]

cleanup.cont.92:                                  ; preds = %cleanup.90
  br label %for.inc.93, !dbg !3699

for.inc.93:                                       ; preds = %cleanup.cont.92, %cleanup.90
  %70 = load i64, i64* %i, align 8, !dbg !3700, !tbaa !1484
  %inc94 = add i64 %70, 1, !dbg !3700
  store i64 %inc94, i64* %i, align 8, !dbg !3700, !tbaa !1484
  br label %for.cond.18, !dbg !3701

for.end.95:                                       ; preds = %for.cond.18
  store i32 1, i32* %retval, !dbg !3702
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !3702

cleanup.96:                                       ; preds = %for.end.95, %cleanup.90, %if.then.16
  %71 = bitcast i64* %i to i8*, !dbg !3703
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !3703
  %72 = load i32, i32* %retval, !dbg !3703
  ret i32 %72, !dbg !3703
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !647, metadata !898), !dbg !3704
  %0 = bitcast [13 x i8]* %buf to i8*, !dbg !3705
  call void @llvm.lifetime.start(i64 13, i8* %0) #2, !dbg !3705
  call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !648, metadata !898), !dbg !3706
  %1 = bitcast i32* %i to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3707
  call void @llvm.dbg.declare(metadata i32* %i, metadata !652, metadata !898), !dbg !3708
  store i32 0, i32* %i, align 4, !dbg !3709, !tbaa !900
  br label %for.cond, !dbg !3710

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3711, !tbaa !900
  %cmp = icmp slt i32 %2, 12, !dbg !3714
  br i1 %cmp, label %for.body, label %for.end, !dbg !3715

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %c to i8*, !dbg !3716
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3716
  call void @llvm.dbg.declare(metadata i32* %c, metadata !653, metadata !898), !dbg !3717
  %4 = load i32, i32* %i, align 4, !dbg !3718, !tbaa !900
  %idxprom = sext i32 %4 to i64, !dbg !3719
  %5 = load i8*, i8** %s.addr, align 8, !dbg !3719, !tbaa !894
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !3719
  %6 = load i8, i8* %arrayidx, align 1, !dbg !3719, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !3719
  store i32 %conv, i32* %c, align 4, !dbg !3717, !tbaa !900
  %7 = load i32, i32* %c, align 4, !dbg !3720, !tbaa !900
  %cmp1 = icmp eq i32 %7, 0, !dbg !3721
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3722

if.then:                                          ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3723

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %c, align 4, !dbg !3724, !tbaa !900
  %cmp3 = icmp eq i32 %8, 95, !dbg !3725
  br i1 %cmp3, label %if.then.5, label %if.else.8, !dbg !3726

if.then.5:                                        ; preds = %if.else
  %9 = load i32, i32* %i, align 4, !dbg !3727, !tbaa !900
  %idxprom6 = sext i32 %9 to i64, !dbg !3728
  %arrayidx7 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom6, !dbg !3728
  store i8 45, i8* %arrayidx7, align 1, !dbg !3729, !tbaa !1146
  br label %if.end, !dbg !3728

if.else.8:                                        ; preds = %if.else
  %10 = bitcast i32* %__res to i8*, !dbg !3730
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !3730
  call void @llvm.dbg.declare(metadata i32* %__res, metadata !657, metadata !898), !dbg !3731
  %11 = load i32, i32* %c, align 4, !dbg !3732, !tbaa !900
  %call = call i32 @tolower(i32 %11) #2, !dbg !3736
  store i32 %call, i32* %__res, align 4, !dbg !3737, !tbaa !900
  %12 = load i32, i32* %__res, align 4, !dbg !3738, !tbaa !900
  store i32 %12, i32* %tmp, !dbg !3739, !tbaa !900
  %13 = bitcast i32* %__res to i8*, !dbg !3740
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !3740
  %14 = load i32, i32* %tmp, !dbg !3741, !tbaa !900
  %conv9 = trunc i32 %14 to i8, !dbg !3742
  %15 = load i32, i32* %i, align 4, !dbg !3743, !tbaa !900
  %idxprom10 = sext i32 %15 to i64, !dbg !3744
  %arrayidx11 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom10, !dbg !3744
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !3745, !tbaa !1146
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !3746
  br label %cleanup, !dbg !3746

cleanup:                                          ; preds = %if.end.12, %if.then
  %16 = bitcast i32* %c to i8*, !dbg !3747
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !3747
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3748

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, i32* %i, align 4, !dbg !3749, !tbaa !900
  %inc = add i32 %17, 1, !dbg !3749
  store i32 %inc, i32* %i, align 4, !dbg !3749, !tbaa !900
  br label %for.cond, !dbg !3750

for.end:                                          ; preds = %cleanup, %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !3751, !tbaa !900
  %idxprom13 = sext i32 %18 to i64, !dbg !3752
  %arrayidx14 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom13, !dbg !3752
  store i8 0, i8* %arrayidx14, align 1, !dbg !3753, !tbaa !1146
  %19 = bitcast i64* %__s1_len to i8*, !dbg !3754
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !3754
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !661, metadata !898), !dbg !3755
  %20 = bitcast i64* %__s2_len to i8*, !dbg !3754
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3754
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !664, metadata !898), !dbg !3756
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !3757

land.lhs.true:                                    ; preds = %for.end
  store i64 5, i64* %__s2_len, align 8, !dbg !3758, !tbaa !1484
  %21 = load i64, i64* %__s2_len, align 8, !dbg !3760, !tbaa !1484
  %cmp18 = icmp ult i64 %21, 4, !dbg !3761
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !3762

cond.true:                                        ; preds = %land.lhs.true
  %22 = bitcast i8** %__s1 to i8*, !dbg !3763
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !3763
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !665, metadata !898), !dbg !3765
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3766
  store i8* %arraydecay, i8** %__s1, align 8, !dbg !3765, !tbaa !894
  %23 = bitcast i32* %__result to i8*, !dbg !3767
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !3767
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !667, metadata !898), !dbg !3768
  %24 = load i8*, i8** %__s1, align 8, !dbg !3769, !tbaa !894
  %arrayidx22 = getelementptr i8, i8* %24, i64 0, !dbg !3769
  %25 = load i8, i8* %arrayidx22, align 1, !dbg !3769, !tbaa !1146
  %conv23 = zext i8 %25 to i32, !dbg !3769
  %26 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), align 1, !dbg !3770, !tbaa !1146
  %conv24 = zext i8 %26 to i32, !dbg !3770
  %sub = sub i32 %conv23, %conv24, !dbg !3771
  store i32 %sub, i32* %__result, align 4, !dbg !3768, !tbaa !900
  %27 = load i64, i64* %__s2_len, align 8, !dbg !3772, !tbaa !1484
  %cmp25 = icmp ugt i64 %27, 0, !dbg !3774
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.57, !dbg !3775

land.lhs.true.27:                                 ; preds = %cond.true
  %28 = load i32, i32* %__result, align 4, !dbg !3776, !tbaa !900
  %cmp28 = icmp eq i32 %28, 0, !dbg !3778
  br i1 %cmp28, label %if.then.30, label %if.end.57, !dbg !3779

if.then.30:                                       ; preds = %land.lhs.true.27
  %29 = load i8*, i8** %__s1, align 8, !dbg !3780, !tbaa !894
  %arrayidx31 = getelementptr i8, i8* %29, i64 1, !dbg !3780
  %30 = load i8, i8* %arrayidx31, align 1, !dbg !3780, !tbaa !1146
  %conv32 = zext i8 %30 to i32, !dbg !3780
  %31 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 1), align 1, !dbg !3783, !tbaa !1146
  %conv33 = zext i8 %31 to i32, !dbg !3783
  %sub34 = sub i32 %conv32, %conv33, !dbg !3784
  store i32 %sub34, i32* %__result, align 4, !dbg !3785, !tbaa !900
  %32 = load i64, i64* %__s2_len, align 8, !dbg !3786, !tbaa !1484
  %cmp35 = icmp ugt i64 %32, 1, !dbg !3788
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.56, !dbg !3789

land.lhs.true.37:                                 ; preds = %if.then.30
  %33 = load i32, i32* %__result, align 4, !dbg !3790, !tbaa !900
  %cmp38 = icmp eq i32 %33, 0, !dbg !3792
  br i1 %cmp38, label %if.then.40, label %if.end.56, !dbg !3793

if.then.40:                                       ; preds = %land.lhs.true.37
  %34 = load i8*, i8** %__s1, align 8, !dbg !3794, !tbaa !894
  %arrayidx41 = getelementptr i8, i8* %34, i64 2, !dbg !3794
  %35 = load i8, i8* %arrayidx41, align 1, !dbg !3794, !tbaa !1146
  %conv42 = zext i8 %35 to i32, !dbg !3794
  %36 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 2), align 1, !dbg !3797, !tbaa !1146
  %conv43 = zext i8 %36 to i32, !dbg !3797
  %sub44 = sub i32 %conv42, %conv43, !dbg !3798
  store i32 %sub44, i32* %__result, align 4, !dbg !3799, !tbaa !900
  %37 = load i64, i64* %__s2_len, align 8, !dbg !3800, !tbaa !1484
  %cmp45 = icmp ugt i64 %37, 2, !dbg !3802
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.55, !dbg !3803

land.lhs.true.47:                                 ; preds = %if.then.40
  %38 = load i32, i32* %__result, align 4, !dbg !3804, !tbaa !900
  %cmp48 = icmp eq i32 %38, 0, !dbg !3806
  br i1 %cmp48, label %if.then.50, label %if.end.55, !dbg !3807

if.then.50:                                       ; preds = %land.lhs.true.47
  %39 = load i8*, i8** %__s1, align 8, !dbg !3808, !tbaa !894
  %arrayidx51 = getelementptr i8, i8* %39, i64 3, !dbg !3808
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !3808, !tbaa !1146
  %conv52 = zext i8 %40 to i32, !dbg !3808
  %41 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i64 3), align 1, !dbg !3810, !tbaa !1146
  %conv53 = zext i8 %41 to i32, !dbg !3810
  %sub54 = sub i32 %conv52, %conv53, !dbg !3811
  store i32 %sub54, i32* %__result, align 4, !dbg !3812, !tbaa !900
  br label %if.end.55, !dbg !3813

if.end.55:                                        ; preds = %if.then.50, %land.lhs.true.47, %if.then.40
  br label %if.end.56, !dbg !3814

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.37, %if.then.30
  br label %if.end.57, !dbg !3818

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.27, %cond.true
  %42 = load i32, i32* %__result, align 4, !dbg !3822, !tbaa !900
  store i32 %42, i32* %tmp58, !dbg !3826, !tbaa !900
  %43 = bitcast i32* %__result to i8*, !dbg !3827
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !3827
  %44 = bitcast i8** %__s1 to i8*, !dbg !3827
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3827
  %45 = load i32, i32* %tmp58, !dbg !3828, !tbaa !900
  br label %cond.end, !dbg !3762

cond.false:                                       ; preds = %land.lhs.true, %for.end
  %arraydecay59 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3829
  %call60 = call i32 @strcmp(i8* %arraydecay59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #2, !dbg !3832
  br label %cond.end, !dbg !3762

cond.end:                                         ; preds = %cond.false, %if.end.57
  %cond = phi i32 [ %45, %if.end.57 ], [ %call60, %cond.false ], !dbg !3762
  store i32 %cond, i32* %tmp17, !dbg !3833, !tbaa !900
  %46 = bitcast i64* %__s2_len to i8*, !dbg !3836
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3836
  %47 = bitcast i64* %__s1_len to i8*, !dbg !3836
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3836
  %48 = load i32, i32* %tmp17, !dbg !3837, !tbaa !900
  %cmp61 = icmp eq i32 %48, 0, !dbg !3838
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false, !dbg !3839

lor.lhs.false:                                    ; preds = %cond.end
  %arraydecay63 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3840
  %call64 = call i32 @strncmp(i8* %arraydecay63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i64 6) #9, !dbg !3841
  %cmp65 = icmp eq i32 %call64, 0, !dbg !3842
  br i1 %cmp65, label %if.then.67, label %if.else.68, !dbg !3843

if.then.67:                                       ; preds = %lor.lhs.false, %cond.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8** %retval, !dbg !3844
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !3844

if.else.68:                                       ; preds = %lor.lhs.false
  %49 = bitcast i64* %__s1_len70 to i8*, !dbg !3845
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3845
  call void @llvm.dbg.declare(metadata i64* %__s1_len70, metadata !668, metadata !898), !dbg !3846
  %50 = bitcast i64* %__s2_len72 to i8*, !dbg !3845
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !3845
  call void @llvm.dbg.declare(metadata i64* %__s2_len72, metadata !671, metadata !898), !dbg !3847
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.62 to i64)), i64 1), label %land.lhs.true.74, label %cond.false.121, !dbg !3848

land.lhs.true.74:                                 ; preds = %if.else.68
  store i64 7, i64* %__s2_len72, align 8, !dbg !3849, !tbaa !1484
  %51 = load i64, i64* %__s2_len72, align 8, !dbg !3851, !tbaa !1484
  %cmp75 = icmp ult i64 %51, 4, !dbg !3852
  br i1 %cmp75, label %cond.true.77, label %cond.false.121, !dbg !3853

cond.true.77:                                     ; preds = %land.lhs.true.74
  %52 = bitcast i8** %__s179 to i8*, !dbg !3854
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !3854
  call void @llvm.dbg.declare(metadata i8** %__s179, metadata !672, metadata !898), !dbg !3856
  %arraydecay80 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3857
  store i8* %arraydecay80, i8** %__s179, align 8, !dbg !3856, !tbaa !894
  %53 = bitcast i32* %__result82 to i8*, !dbg !3858
  call void @llvm.lifetime.start(i64 4, i8* %53) #2, !dbg !3858
  call void @llvm.dbg.declare(metadata i32* %__result82, metadata !674, metadata !898), !dbg !3859
  %54 = load i8*, i8** %__s179, align 8, !dbg !3860, !tbaa !894
  %arrayidx83 = getelementptr i8, i8* %54, i64 0, !dbg !3860
  %55 = load i8, i8* %arrayidx83, align 1, !dbg !3860, !tbaa !1146
  %conv84 = zext i8 %55 to i32, !dbg !3860
  %56 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), align 1, !dbg !3861, !tbaa !1146
  %conv85 = zext i8 %56 to i32, !dbg !3861
  %sub86 = sub i32 %conv84, %conv85, !dbg !3862
  store i32 %sub86, i32* %__result82, align 4, !dbg !3859, !tbaa !900
  %57 = load i64, i64* %__s2_len72, align 8, !dbg !3863, !tbaa !1484
  %cmp87 = icmp ugt i64 %57, 0, !dbg !3865
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.119, !dbg !3866

land.lhs.true.89:                                 ; preds = %cond.true.77
  %58 = load i32, i32* %__result82, align 4, !dbg !3867, !tbaa !900
  %cmp90 = icmp eq i32 %58, 0, !dbg !3869
  br i1 %cmp90, label %if.then.92, label %if.end.119, !dbg !3870

if.then.92:                                       ; preds = %land.lhs.true.89
  %59 = load i8*, i8** %__s179, align 8, !dbg !3871, !tbaa !894
  %arrayidx93 = getelementptr i8, i8* %59, i64 1, !dbg !3871
  %60 = load i8, i8* %arrayidx93, align 1, !dbg !3871, !tbaa !1146
  %conv94 = zext i8 %60 to i32, !dbg !3871
  %61 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 1), align 1, !dbg !3874, !tbaa !1146
  %conv95 = zext i8 %61 to i32, !dbg !3874
  %sub96 = sub i32 %conv94, %conv95, !dbg !3875
  store i32 %sub96, i32* %__result82, align 4, !dbg !3876, !tbaa !900
  %62 = load i64, i64* %__s2_len72, align 8, !dbg !3877, !tbaa !1484
  %cmp97 = icmp ugt i64 %62, 1, !dbg !3879
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.118, !dbg !3880

land.lhs.true.99:                                 ; preds = %if.then.92
  %63 = load i32, i32* %__result82, align 4, !dbg !3881, !tbaa !900
  %cmp100 = icmp eq i32 %63, 0, !dbg !3883
  br i1 %cmp100, label %if.then.102, label %if.end.118, !dbg !3884

if.then.102:                                      ; preds = %land.lhs.true.99
  %64 = load i8*, i8** %__s179, align 8, !dbg !3885, !tbaa !894
  %arrayidx103 = getelementptr i8, i8* %64, i64 2, !dbg !3885
  %65 = load i8, i8* %arrayidx103, align 1, !dbg !3885, !tbaa !1146
  %conv104 = zext i8 %65 to i32, !dbg !3885
  %66 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 2), align 1, !dbg !3888, !tbaa !1146
  %conv105 = zext i8 %66 to i32, !dbg !3888
  %sub106 = sub i32 %conv104, %conv105, !dbg !3889
  store i32 %sub106, i32* %__result82, align 4, !dbg !3890, !tbaa !900
  %67 = load i64, i64* %__s2_len72, align 8, !dbg !3891, !tbaa !1484
  %cmp107 = icmp ugt i64 %67, 2, !dbg !3893
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.117, !dbg !3894

land.lhs.true.109:                                ; preds = %if.then.102
  %68 = load i32, i32* %__result82, align 4, !dbg !3895, !tbaa !900
  %cmp110 = icmp eq i32 %68, 0, !dbg !3897
  br i1 %cmp110, label %if.then.112, label %if.end.117, !dbg !3898

if.then.112:                                      ; preds = %land.lhs.true.109
  %69 = load i8*, i8** %__s179, align 8, !dbg !3899, !tbaa !894
  %arrayidx113 = getelementptr i8, i8* %69, i64 3, !dbg !3899
  %70 = load i8, i8* %arrayidx113, align 1, !dbg !3899, !tbaa !1146
  %conv114 = zext i8 %70 to i32, !dbg !3899
  %71 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i64 3), align 1, !dbg !3901, !tbaa !1146
  %conv115 = zext i8 %71 to i32, !dbg !3901
  %sub116 = sub i32 %conv114, %conv115, !dbg !3902
  store i32 %sub116, i32* %__result82, align 4, !dbg !3903, !tbaa !900
  br label %if.end.117, !dbg !3904

if.end.117:                                       ; preds = %if.then.112, %land.lhs.true.109, %if.then.102
  br label %if.end.118, !dbg !3905

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.99, %if.then.92
  br label %if.end.119, !dbg !3909

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.89, %cond.true.77
  %72 = load i32, i32* %__result82, align 4, !dbg !3913, !tbaa !900
  store i32 %72, i32* %tmp120, !dbg !3917, !tbaa !900
  %73 = bitcast i32* %__result82 to i8*, !dbg !3918
  call void @llvm.lifetime.end(i64 4, i8* %73) #2, !dbg !3918
  %74 = bitcast i8** %__s179 to i8*, !dbg !3918
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3918
  %75 = load i32, i32* %tmp120, !dbg !3919, !tbaa !900
  br label %cond.end.124, !dbg !3853

cond.false.121:                                   ; preds = %land.lhs.true.74, %if.else.68
  %arraydecay122 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3920
  %call123 = call i32 @strcmp(i8* %arraydecay122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)) #2, !dbg !3923
  br label %cond.end.124, !dbg !3853

cond.end.124:                                     ; preds = %cond.false.121, %if.end.119
  %cond125 = phi i32 [ %75, %if.end.119 ], [ %call123, %cond.false.121 ], !dbg !3853
  store i32 %cond125, i32* %tmp73, !dbg !3924, !tbaa !900
  %76 = bitcast i64* %__s2_len72 to i8*, !dbg !3927
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3927
  %77 = bitcast i64* %__s1_len70 to i8*, !dbg !3927
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3927
  %78 = load i32, i32* %tmp73, !dbg !3928, !tbaa !900
  %cmp126 = icmp eq i32 %78, 0, !dbg !3929
  br i1 %cmp126, label %if.then.263, label %lor.lhs.false.128, !dbg !3930

lor.lhs.false.128:                                ; preds = %cond.end.124
  %79 = bitcast i64* %__s1_len130 to i8*, !dbg !3931
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !3931
  call void @llvm.dbg.declare(metadata i64* %__s1_len130, metadata !675, metadata !898), !dbg !3932
  %80 = bitcast i64* %__s2_len132 to i8*, !dbg !3931
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !3931
  call void @llvm.dbg.declare(metadata i64* %__s2_len132, metadata !677, metadata !898), !dbg !3933
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.63 to i64)), i64 1), label %land.lhs.true.134, label %cond.false.181, !dbg !3934

land.lhs.true.134:                                ; preds = %lor.lhs.false.128
  store i64 10, i64* %__s2_len132, align 8, !dbg !3935, !tbaa !1484
  %81 = load i64, i64* %__s2_len132, align 8, !dbg !3937, !tbaa !1484
  %cmp135 = icmp ult i64 %81, 4, !dbg !3938
  br i1 %cmp135, label %cond.true.137, label %cond.false.181, !dbg !3939

cond.true.137:                                    ; preds = %land.lhs.true.134
  %82 = bitcast i8** %__s1139 to i8*, !dbg !3940
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !3940
  call void @llvm.dbg.declare(metadata i8** %__s1139, metadata !678, metadata !898), !dbg !3942
  %arraydecay140 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !3943
  store i8* %arraydecay140, i8** %__s1139, align 8, !dbg !3942, !tbaa !894
  %83 = bitcast i32* %__result142 to i8*, !dbg !3944
  call void @llvm.lifetime.start(i64 4, i8* %83) #2, !dbg !3944
  call void @llvm.dbg.declare(metadata i32* %__result142, metadata !680, metadata !898), !dbg !3945
  %84 = load i8*, i8** %__s1139, align 8, !dbg !3946, !tbaa !894
  %arrayidx143 = getelementptr i8, i8* %84, i64 0, !dbg !3946
  %85 = load i8, i8* %arrayidx143, align 1, !dbg !3946, !tbaa !1146
  %conv144 = zext i8 %85 to i32, !dbg !3946
  %86 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), align 1, !dbg !3947, !tbaa !1146
  %conv145 = zext i8 %86 to i32, !dbg !3947
  %sub146 = sub i32 %conv144, %conv145, !dbg !3948
  store i32 %sub146, i32* %__result142, align 4, !dbg !3945, !tbaa !900
  %87 = load i64, i64* %__s2_len132, align 8, !dbg !3949, !tbaa !1484
  %cmp147 = icmp ugt i64 %87, 0, !dbg !3951
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.179, !dbg !3952

land.lhs.true.149:                                ; preds = %cond.true.137
  %88 = load i32, i32* %__result142, align 4, !dbg !3953, !tbaa !900
  %cmp150 = icmp eq i32 %88, 0, !dbg !3955
  br i1 %cmp150, label %if.then.152, label %if.end.179, !dbg !3956

if.then.152:                                      ; preds = %land.lhs.true.149
  %89 = load i8*, i8** %__s1139, align 8, !dbg !3957, !tbaa !894
  %arrayidx153 = getelementptr i8, i8* %89, i64 1, !dbg !3957
  %90 = load i8, i8* %arrayidx153, align 1, !dbg !3957, !tbaa !1146
  %conv154 = zext i8 %90 to i32, !dbg !3957
  %91 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 1), align 1, !dbg !3960, !tbaa !1146
  %conv155 = zext i8 %91 to i32, !dbg !3960
  %sub156 = sub i32 %conv154, %conv155, !dbg !3961
  store i32 %sub156, i32* %__result142, align 4, !dbg !3962, !tbaa !900
  %92 = load i64, i64* %__s2_len132, align 8, !dbg !3963, !tbaa !1484
  %cmp157 = icmp ugt i64 %92, 1, !dbg !3965
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.178, !dbg !3966

land.lhs.true.159:                                ; preds = %if.then.152
  %93 = load i32, i32* %__result142, align 4, !dbg !3967, !tbaa !900
  %cmp160 = icmp eq i32 %93, 0, !dbg !3969
  br i1 %cmp160, label %if.then.162, label %if.end.178, !dbg !3970

if.then.162:                                      ; preds = %land.lhs.true.159
  %94 = load i8*, i8** %__s1139, align 8, !dbg !3971, !tbaa !894
  %arrayidx163 = getelementptr i8, i8* %94, i64 2, !dbg !3971
  %95 = load i8, i8* %arrayidx163, align 1, !dbg !3971, !tbaa !1146
  %conv164 = zext i8 %95 to i32, !dbg !3971
  %96 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 2), align 1, !dbg !3974, !tbaa !1146
  %conv165 = zext i8 %96 to i32, !dbg !3974
  %sub166 = sub i32 %conv164, %conv165, !dbg !3975
  store i32 %sub166, i32* %__result142, align 4, !dbg !3976, !tbaa !900
  %97 = load i64, i64* %__s2_len132, align 8, !dbg !3977, !tbaa !1484
  %cmp167 = icmp ugt i64 %97, 2, !dbg !3979
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.177, !dbg !3980

land.lhs.true.169:                                ; preds = %if.then.162
  %98 = load i32, i32* %__result142, align 4, !dbg !3981, !tbaa !900
  %cmp170 = icmp eq i32 %98, 0, !dbg !3983
  br i1 %cmp170, label %if.then.172, label %if.end.177, !dbg !3984

if.then.172:                                      ; preds = %land.lhs.true.169
  %99 = load i8*, i8** %__s1139, align 8, !dbg !3985, !tbaa !894
  %arrayidx173 = getelementptr i8, i8* %99, i64 3, !dbg !3985
  %100 = load i8, i8* %arrayidx173, align 1, !dbg !3985, !tbaa !1146
  %conv174 = zext i8 %100 to i32, !dbg !3985
  %101 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i64 3), align 1, !dbg !3987, !tbaa !1146
  %conv175 = zext i8 %101 to i32, !dbg !3987
  %sub176 = sub i32 %conv174, %conv175, !dbg !3988
  store i32 %sub176, i32* %__result142, align 4, !dbg !3989, !tbaa !900
  br label %if.end.177, !dbg !3990

if.end.177:                                       ; preds = %if.then.172, %land.lhs.true.169, %if.then.162
  br label %if.end.178, !dbg !3991

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.159, %if.then.152
  br label %if.end.179, !dbg !3995

if.end.179:                                       ; preds = %if.end.178, %land.lhs.true.149, %cond.true.137
  %102 = load i32, i32* %__result142, align 4, !dbg !3999, !tbaa !900
  store i32 %102, i32* %tmp180, !dbg !4003, !tbaa !900
  %103 = bitcast i32* %__result142 to i8*, !dbg !4004
  call void @llvm.lifetime.end(i64 4, i8* %103) #2, !dbg !4004
  %104 = bitcast i8** %__s1139 to i8*, !dbg !4004
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !4004
  %105 = load i32, i32* %tmp180, !dbg !4005, !tbaa !900
  br label %cond.end.184, !dbg !3939

cond.false.181:                                   ; preds = %land.lhs.true.134, %lor.lhs.false.128
  %arraydecay182 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4006
  %call183 = call i32 @strcmp(i8* %arraydecay182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0)) #2, !dbg !4009
  br label %cond.end.184, !dbg !3939

cond.end.184:                                     ; preds = %cond.false.181, %if.end.179
  %cond185 = phi i32 [ %105, %if.end.179 ], [ %call183, %cond.false.181 ], !dbg !3939
  store i32 %cond185, i32* %tmp133, !dbg !4010, !tbaa !900
  %106 = bitcast i64* %__s2_len132 to i8*, !dbg !4013
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !4013
  %107 = bitcast i64* %__s1_len130 to i8*, !dbg !4013
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !4013
  %108 = load i32, i32* %tmp133, !dbg !4014, !tbaa !900
  %cmp186 = icmp eq i32 %108, 0, !dbg !4015
  br i1 %cmp186, label %if.then.263, label %lor.lhs.false.188, !dbg !4016

lor.lhs.false.188:                                ; preds = %cond.end.184
  %109 = bitcast i64* %__s1_len190 to i8*, !dbg !4017
  call void @llvm.lifetime.start(i64 8, i8* %109) #2, !dbg !4017
  call void @llvm.dbg.declare(metadata i64* %__s1_len190, metadata !681, metadata !898), !dbg !4018
  %110 = bitcast i64* %__s2_len192 to i8*, !dbg !4017
  call void @llvm.lifetime.start(i64 8, i8* %110) #2, !dbg !4017
  call void @llvm.dbg.declare(metadata i64* %__s2_len192, metadata !683, metadata !898), !dbg !4019
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 1) to i64), i64 ptrtoint ([12 x i8]* @.str.64 to i64)), i64 1), label %land.lhs.true.194, label %cond.false.241, !dbg !4020

land.lhs.true.194:                                ; preds = %lor.lhs.false.188
  store i64 11, i64* %__s2_len192, align 8, !dbg !4021, !tbaa !1484
  %111 = load i64, i64* %__s2_len192, align 8, !dbg !4023, !tbaa !1484
  %cmp195 = icmp ult i64 %111, 4, !dbg !4024
  br i1 %cmp195, label %cond.true.197, label %cond.false.241, !dbg !4025

cond.true.197:                                    ; preds = %land.lhs.true.194
  %112 = bitcast i8** %__s1199 to i8*, !dbg !4026
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !4026
  call void @llvm.dbg.declare(metadata i8** %__s1199, metadata !684, metadata !898), !dbg !4028
  %arraydecay200 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4029
  store i8* %arraydecay200, i8** %__s1199, align 8, !dbg !4028, !tbaa !894
  %113 = bitcast i32* %__result202 to i8*, !dbg !4030
  call void @llvm.lifetime.start(i64 4, i8* %113) #2, !dbg !4030
  call void @llvm.dbg.declare(metadata i32* %__result202, metadata !686, metadata !898), !dbg !4031
  %114 = load i8*, i8** %__s1199, align 8, !dbg !4032, !tbaa !894
  %arrayidx203 = getelementptr i8, i8* %114, i64 0, !dbg !4032
  %115 = load i8, i8* %arrayidx203, align 1, !dbg !4032, !tbaa !1146
  %conv204 = zext i8 %115 to i32, !dbg !4032
  %116 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), align 1, !dbg !4033, !tbaa !1146
  %conv205 = zext i8 %116 to i32, !dbg !4033
  %sub206 = sub i32 %conv204, %conv205, !dbg !4034
  store i32 %sub206, i32* %__result202, align 4, !dbg !4031, !tbaa !900
  %117 = load i64, i64* %__s2_len192, align 8, !dbg !4035, !tbaa !1484
  %cmp207 = icmp ugt i64 %117, 0, !dbg !4037
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.239, !dbg !4038

land.lhs.true.209:                                ; preds = %cond.true.197
  %118 = load i32, i32* %__result202, align 4, !dbg !4039, !tbaa !900
  %cmp210 = icmp eq i32 %118, 0, !dbg !4041
  br i1 %cmp210, label %if.then.212, label %if.end.239, !dbg !4042

if.then.212:                                      ; preds = %land.lhs.true.209
  %119 = load i8*, i8** %__s1199, align 8, !dbg !4043, !tbaa !894
  %arrayidx213 = getelementptr i8, i8* %119, i64 1, !dbg !4043
  %120 = load i8, i8* %arrayidx213, align 1, !dbg !4043, !tbaa !1146
  %conv214 = zext i8 %120 to i32, !dbg !4043
  %121 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 1), align 1, !dbg !4046, !tbaa !1146
  %conv215 = zext i8 %121 to i32, !dbg !4046
  %sub216 = sub i32 %conv214, %conv215, !dbg !4047
  store i32 %sub216, i32* %__result202, align 4, !dbg !4048, !tbaa !900
  %122 = load i64, i64* %__s2_len192, align 8, !dbg !4049, !tbaa !1484
  %cmp217 = icmp ugt i64 %122, 1, !dbg !4051
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.238, !dbg !4052

land.lhs.true.219:                                ; preds = %if.then.212
  %123 = load i32, i32* %__result202, align 4, !dbg !4053, !tbaa !900
  %cmp220 = icmp eq i32 %123, 0, !dbg !4055
  br i1 %cmp220, label %if.then.222, label %if.end.238, !dbg !4056

if.then.222:                                      ; preds = %land.lhs.true.219
  %124 = load i8*, i8** %__s1199, align 8, !dbg !4057, !tbaa !894
  %arrayidx223 = getelementptr i8, i8* %124, i64 2, !dbg !4057
  %125 = load i8, i8* %arrayidx223, align 1, !dbg !4057, !tbaa !1146
  %conv224 = zext i8 %125 to i32, !dbg !4057
  %126 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 2), align 1, !dbg !4060, !tbaa !1146
  %conv225 = zext i8 %126 to i32, !dbg !4060
  %sub226 = sub i32 %conv224, %conv225, !dbg !4061
  store i32 %sub226, i32* %__result202, align 4, !dbg !4062, !tbaa !900
  %127 = load i64, i64* %__s2_len192, align 8, !dbg !4063, !tbaa !1484
  %cmp227 = icmp ugt i64 %127, 2, !dbg !4065
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.237, !dbg !4066

land.lhs.true.229:                                ; preds = %if.then.222
  %128 = load i32, i32* %__result202, align 4, !dbg !4067, !tbaa !900
  %cmp230 = icmp eq i32 %128, 0, !dbg !4069
  br i1 %cmp230, label %if.then.232, label %if.end.237, !dbg !4070

if.then.232:                                      ; preds = %land.lhs.true.229
  %129 = load i8*, i8** %__s1199, align 8, !dbg !4071, !tbaa !894
  %arrayidx233 = getelementptr i8, i8* %129, i64 3, !dbg !4071
  %130 = load i8, i8* %arrayidx233, align 1, !dbg !4071, !tbaa !1146
  %conv234 = zext i8 %130 to i32, !dbg !4071
  %131 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i64 3), align 1, !dbg !4073, !tbaa !1146
  %conv235 = zext i8 %131 to i32, !dbg !4073
  %sub236 = sub i32 %conv234, %conv235, !dbg !4074
  store i32 %sub236, i32* %__result202, align 4, !dbg !4075, !tbaa !900
  br label %if.end.237, !dbg !4076

if.end.237:                                       ; preds = %if.then.232, %land.lhs.true.229, %if.then.222
  br label %if.end.238, !dbg !4077

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.219, %if.then.212
  br label %if.end.239, !dbg !4081

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.209, %cond.true.197
  %132 = load i32, i32* %__result202, align 4, !dbg !4085, !tbaa !900
  store i32 %132, i32* %tmp240, !dbg !4089, !tbaa !900
  %133 = bitcast i32* %__result202 to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 4, i8* %133) #2, !dbg !4090
  %134 = bitcast i8** %__s1199 to i8*, !dbg !4090
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !4090
  %135 = load i32, i32* %tmp240, !dbg !4091, !tbaa !900
  br label %cond.end.244, !dbg !4025

cond.false.241:                                   ; preds = %land.lhs.true.194, %lor.lhs.false.188
  %arraydecay242 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4092
  %call243 = call i32 @strcmp(i8* %arraydecay242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0)) #2, !dbg !4095
  br label %cond.end.244, !dbg !4025

cond.end.244:                                     ; preds = %cond.false.241, %if.end.239
  %cond245 = phi i32 [ %135, %if.end.239 ], [ %call243, %cond.false.241 ], !dbg !4025
  store i32 %cond245, i32* %tmp193, !dbg !4096, !tbaa !900
  %136 = bitcast i64* %__s2_len192 to i8*, !dbg !4099
  call void @llvm.lifetime.end(i64 8, i8* %136) #2, !dbg !4099
  %137 = bitcast i64* %__s1_len190 to i8*, !dbg !4099
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !4099
  %138 = load i32, i32* %tmp193, !dbg !4100, !tbaa !900
  %cmp246 = icmp eq i32 %138, 0, !dbg !4101
  br i1 %cmp246, label %if.then.263, label %lor.lhs.false.248, !dbg !4102

lor.lhs.false.248:                                ; preds = %cond.end.244
  %arraydecay249 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4103
  %call250 = call i32 @strncmp(i8* %arraydecay249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i64 8) #9, !dbg !4104
  %cmp251 = icmp eq i32 %call250, 0, !dbg !4105
  br i1 %cmp251, label %if.then.263, label %lor.lhs.false.253, !dbg !4106

lor.lhs.false.253:                                ; preds = %lor.lhs.false.248
  %arraydecay254 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4107
  %call255 = call i32 @strncmp(i8* %arraydecay254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i64 11) #9, !dbg !4108
  %cmp256 = icmp eq i32 %call255, 0, !dbg !4109
  br i1 %cmp256, label %if.then.263, label %lor.lhs.false.258, !dbg !4110

lor.lhs.false.258:                                ; preds = %lor.lhs.false.253
  %arraydecay259 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0, !dbg !4111
  %call260 = call i32 @strncmp(i8* %arraydecay259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i64 12) #9, !dbg !4112
  %cmp261 = icmp eq i32 %call260, 0, !dbg !4113
  br i1 %cmp261, label %if.then.263, label %if.else.264, !dbg !4114

if.then.263:                                      ; preds = %lor.lhs.false.258, %lor.lhs.false.253, %lor.lhs.false.248, %cond.end.244, %cond.end.184, %cond.end.124
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8** %retval, !dbg !4115
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !4115

if.else.264:                                      ; preds = %lor.lhs.false.258
  %139 = load i8*, i8** %s.addr, align 8, !dbg !4116, !tbaa !894
  store i8* %139, i8** %retval, !dbg !4117
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265, !dbg !4117

cleanup.265:                                      ; preds = %if.else.264, %if.then.263, %if.then.67
  %140 = bitcast i32* %i to i8*, !dbg !4118
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !4118
  %141 = bitcast [13 x i8]* %buf to i8*, !dbg !4118
  call void @llvm.lifetime.end(i64 13, i8* %141) #2, !dbg !4118
  %142 = load i8*, i8** %retval, !dbg !4118
  ret i8* %142, !dbg !4118

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @tolower(i32 %__c) #6 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !689, metadata !898), !dbg !4119
  %0 = load i32, i32* %__c.addr, align 4, !dbg !4120, !tbaa !900
  %cmp = icmp sge i32 %0, -128, !dbg !4121
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4122

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !dbg !4123, !tbaa !900
  %cmp1 = icmp slt i32 %1, 256, !dbg !4125
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4120

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !dbg !4126, !tbaa !900
  %idxprom = sext i32 %2 to i64, !dbg !4128
  %call = call i32** @__ctype_tolower_loc() #1, !dbg !4129
  %3 = load i32*, i32** %call, align 8, !dbg !4130, !tbaa !894
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !4128
  %4 = load i32, i32* %arrayidx, align 4, !dbg !4128, !tbaa !900
  br label %cond.end, !dbg !4120

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !dbg !4131, !tbaa !900
  br label %cond.end, !dbg !4120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !4120
  ret i32 %cond, !dbg !4134
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
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !743, metadata !898), !dbg !4137
  br label %for.cond, !dbg !4138

for.cond:                                         ; preds = %if.end.363, %entry
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4139, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 1, !dbg !4141
  %1 = load i8*, i8** %cur, align 8, !dbg !4141, !tbaa !937
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4142, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 2, !dbg !4143
  %3 = load i8*, i8** %inp, align 8, !dbg !4143, !tbaa !928
  %cmp = icmp ne i8* %1, %3, !dbg !4144
  br i1 %cmp, label %if.then, label %if.end, !dbg !4145

if.then:                                          ; preds = %for.cond
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4146, !tbaa !894
  %cur1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 1, !dbg !4148
  %5 = load i8*, i8** %cur1, align 8, !dbg !4149, !tbaa !937
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !4149
  store i8* %incdec.ptr, i8** %cur1, align 8, !dbg !4149, !tbaa !937
  %6 = load i8, i8* %5, align 1, !dbg !4150, !tbaa !1146
  %conv = sext i8 %6 to i32, !dbg !4151
  %and = and i32 %conv, 255, !dbg !4152
  %conv2 = trunc i32 %and to i8, !dbg !4153
  %conv3 = zext i8 %conv2 to i32, !dbg !4154
  store i32 %conv3, i32* %retval, !dbg !4155
  br label %return, !dbg !4155

if.end:                                           ; preds = %for.cond
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4156, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 5, !dbg !4158
  %8 = load i32, i32* %done, align 4, !dbg !4158, !tbaa !973
  %cmp4 = icmp ne i32 %8, 10, !dbg !4159
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !4160

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !4161
  br label %return, !dbg !4161

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4162, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 6, !dbg !4163
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4163, !tbaa !977
  %cmp8 = icmp eq %struct._IO_FILE* %10, null, !dbg !4164
  br i1 %cmp8, label %if.then.10, label %if.end.38, !dbg !4165

if.then.10:                                       ; preds = %if.end.7
  %11 = bitcast i8** %end to i8*, !dbg !4166
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4166
  call void @llvm.dbg.declare(metadata i8** %end, metadata !744, metadata !898), !dbg !4167
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4168, !tbaa !894
  %inp11 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 2, !dbg !4169
  %13 = load i8*, i8** %inp11, align 8, !dbg !4169, !tbaa !928
  %call = call i8* @strchr(i8* %13, i32 10) #2, !dbg !4170
  store i8* %call, i8** %end, align 8, !dbg !4167, !tbaa !894
  %14 = load i8*, i8** %end, align 8, !dbg !4171, !tbaa !894
  %cmp12 = icmp ne i8* %14, null, !dbg !4173
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !4174

if.then.14:                                       ; preds = %if.then.10
  %15 = load i8*, i8** %end, align 8, !dbg !4175, !tbaa !894
  %incdec.ptr15 = getelementptr i8, i8* %15, i32 1, !dbg !4175
  store i8* %incdec.ptr15, i8** %end, align 8, !dbg !4175, !tbaa !894
  br label %if.end.24, !dbg !4176

if.else:                                          ; preds = %if.then.10
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4177, !tbaa !894
  %inp16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 2, !dbg !4179
  %17 = load i8*, i8** %inp16, align 8, !dbg !4179, !tbaa !928
  %call17 = call i8* @__rawmemchr(i8* %17, i32 0), !dbg !4180
  store i8* %call17, i8** %end, align 8, !dbg !4181, !tbaa !894
  %18 = load i8*, i8** %end, align 8, !dbg !4182, !tbaa !894
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4184, !tbaa !894
  %inp18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 2, !dbg !4185
  %20 = load i8*, i8** %inp18, align 8, !dbg !4185, !tbaa !928
  %cmp19 = icmp eq i8* %18, %20, !dbg !4186
  br i1 %cmp19, label %if.then.21, label %if.end.23, !dbg !4187

if.then.21:                                       ; preds = %if.else
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4188, !tbaa !894
  %done22 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 5, !dbg !4190
  store i32 11, i32* %done22, align 4, !dbg !4191, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4192
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4192

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4193, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 4, !dbg !4195
  %23 = load i8*, i8** %start, align 8, !dbg !4195, !tbaa !957
  %cmp25 = icmp eq i8* %23, null, !dbg !4196
  br i1 %cmp25, label %if.then.27, label %if.end.29, !dbg !4197

if.then.27:                                       ; preds = %if.end.24
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4198, !tbaa !894
  %cur28 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 1, !dbg !4199
  %25 = load i8*, i8** %cur28, align 8, !dbg !4199, !tbaa !937
  %26 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4200, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 0, !dbg !4201
  store i8* %25, i8** %buf, align 8, !dbg !4202, !tbaa !941
  br label %if.end.29, !dbg !4200

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4203, !tbaa !894
  %cur30 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 1, !dbg !4204
  %28 = load i8*, i8** %cur30, align 8, !dbg !4204, !tbaa !937
  %29 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4205, !tbaa !894
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 26, !dbg !4206
  store i8* %28, i8** %line_start, align 8, !dbg !4207, !tbaa !4208
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4209, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 14, !dbg !4210
  %31 = load i32, i32* %lineno, align 4, !dbg !4211, !tbaa !1012
  %inc = add i32 %31, 1, !dbg !4211
  store i32 %inc, i32* %lineno, align 4, !dbg !4211, !tbaa !1012
  %32 = load i8*, i8** %end, align 8, !dbg !4212, !tbaa !894
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4213, !tbaa !894
  %inp31 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 2, !dbg !4214
  store i8* %32, i8** %inp31, align 8, !dbg !4215, !tbaa !928
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4216, !tbaa !894
  %cur32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 1, !dbg !4217
  %35 = load i8*, i8** %cur32, align 8, !dbg !4218, !tbaa !937
  %incdec.ptr33 = getelementptr i8, i8* %35, i32 1, !dbg !4218
  store i8* %incdec.ptr33, i8** %cur32, align 8, !dbg !4218, !tbaa !937
  %36 = load i8, i8* %35, align 1, !dbg !4219, !tbaa !1146
  %conv34 = sext i8 %36 to i32, !dbg !4220
  %and35 = and i32 %conv34, 255, !dbg !4221
  %conv36 = trunc i32 %and35 to i8, !dbg !4222
  %conv37 = zext i8 %conv36 to i32, !dbg !4223
  store i32 %conv37, i32* %retval, !dbg !4224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4224

cleanup:                                          ; preds = %if.end.29, %if.then.21
  %37 = bitcast i8** %end to i8*, !dbg !4225
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4225
  br label %return

if.end.38:                                        ; preds = %if.end.7
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4226, !tbaa !894
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 12, !dbg !4227
  %39 = load i8*, i8** %prompt, align 8, !dbg !4227, !tbaa !1008
  %cmp39 = icmp ne i8* %39, null, !dbg !4228
  br i1 %cmp39, label %if.then.41, label %if.else.191, !dbg !4229

if.then.41:                                       ; preds = %if.end.38
  %40 = bitcast i8** %newtok to i8*, !dbg !4230
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !4230
  call void @llvm.dbg.declare(metadata i8** %newtok, metadata !750, metadata !898), !dbg !4231
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !4232, !tbaa !894
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4233, !tbaa !894
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4234, !tbaa !894
  %prompt42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %43, i32 0, i32 12, !dbg !4235
  %44 = load i8*, i8** %prompt42, align 8, !dbg !4235, !tbaa !1008
  %call43 = call i8* @PyOS_Readline(%struct._IO_FILE* %41, %struct._IO_FILE* %42, i8* %44), !dbg !4236
  store i8* %call43, i8** %newtok, align 8, !dbg !4231, !tbaa !894
  %45 = load i8*, i8** %newtok, align 8, !dbg !4237, !tbaa !894
  %cmp44 = icmp ne i8* %45, null, !dbg !4238
  br i1 %cmp44, label %if.then.46, label %if.end.53, !dbg !4239

if.then.46:                                       ; preds = %if.then.41
  %46 = bitcast i8** %translated to i8*, !dbg !4240
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !4240
  call void @llvm.dbg.declare(metadata i8** %translated, metadata !753, metadata !898), !dbg !4241
  %47 = load i8*, i8** %newtok, align 8, !dbg !4242, !tbaa !894
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4243, !tbaa !894
  %call47 = call i8* @translate_newlines(i8* %47, i32 0, %struct.tok_state* %48), !dbg !4244
  store i8* %call47, i8** %translated, align 8, !dbg !4241, !tbaa !894
  %49 = load i8*, i8** %newtok, align 8, !dbg !4245, !tbaa !894
  call void @PyMem_Free(i8* %49), !dbg !4246
  %50 = load i8*, i8** %translated, align 8, !dbg !4247, !tbaa !894
  %cmp48 = icmp eq i8* %50, null, !dbg !4249
  br i1 %cmp48, label %if.then.50, label %if.end.51, !dbg !4250

if.then.50:                                       ; preds = %if.then.46
  store i32 -1, i32* %retval, !dbg !4251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52, !dbg !4251

if.end.51:                                        ; preds = %if.then.46
  %51 = load i8*, i8** %translated, align 8, !dbg !4252, !tbaa !894
  store i8* %51, i8** %newtok, align 8, !dbg !4253, !tbaa !894
  store i32 0, i32* %cleanup.dest.slot, !dbg !4254
  br label %cleanup.52, !dbg !4254

cleanup.52:                                       ; preds = %if.end.51, %if.then.50
  %52 = bitcast i8** %translated to i8*, !dbg !4255
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !4255
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.188 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.52
  br label %if.end.53, !dbg !4257

if.end.53:                                        ; preds = %cleanup.cont, %if.then.41
  %53 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4258, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %53, i32 0, i32 24, !dbg !4259
  %54 = load i8*, i8** %encoding, align 8, !dbg !4259, !tbaa !1051
  %tobool = icmp ne i8* %54, null, !dbg !4258
  br i1 %tobool, label %land.lhs.true, label %if.end.95, !dbg !4260

land.lhs.true:                                    ; preds = %if.end.53
  %55 = load i8*, i8** %newtok, align 8, !dbg !4261, !tbaa !894
  %tobool54 = icmp ne i8* %55, null, !dbg !4261
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.95, !dbg !4263

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %56 = load i8*, i8** %newtok, align 8, !dbg !4264, !tbaa !894
  %57 = load i8, i8* %56, align 1, !dbg !4266, !tbaa !1146
  %conv56 = sext i8 %57 to i32, !dbg !4266
  %tobool57 = icmp ne i32 %conv56, 0, !dbg !4266
  br i1 %tobool57, label %if.then.58, label %if.end.95, !dbg !4267

if.then.58:                                       ; preds = %land.lhs.true.55
  %58 = bitcast i64* %buflen to i8*, !dbg !4268
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !4268
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !756, metadata !898), !dbg !4269
  %59 = bitcast i8** %buf59 to i8*, !dbg !4270
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !4270
  call void @llvm.dbg.declare(metadata i8** %buf59, metadata !759, metadata !898), !dbg !4271
  %60 = bitcast %struct._object** %u to i8*, !dbg !4272
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !4272
  call void @llvm.dbg.declare(metadata %struct._object** %u, metadata !760, metadata !898), !dbg !4273
  %61 = load i8*, i8** %newtok, align 8, !dbg !4274, !tbaa !894
  %62 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4275, !tbaa !894
  %encoding60 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %62, i32 0, i32 24, !dbg !4276
  %63 = load i8*, i8** %encoding60, align 8, !dbg !4276, !tbaa !1051
  %call61 = call %struct._object* @translate_into_utf8(i8* %61, i8* %63), !dbg !4277
  store %struct._object* %call61, %struct._object** %u, align 8, !dbg !4273, !tbaa !894
  %64 = load i8*, i8** %newtok, align 8, !dbg !4278, !tbaa !894
  call void @PyMem_Free(i8* %64), !dbg !4279
  %65 = load %struct._object*, %struct._object** %u, align 8, !dbg !4280, !tbaa !894
  %tobool62 = icmp ne %struct._object* %65, null, !dbg !4280
  br i1 %tobool62, label %if.end.65, label %if.then.63, !dbg !4282

if.then.63:                                       ; preds = %if.then.58
  %66 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4283, !tbaa !894
  %done64 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %66, i32 0, i32 5, !dbg !4285
  store i32 22, i32* %done64, align 4, !dbg !4286, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4287
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !4287

if.end.65:                                        ; preds = %if.then.58
  %67 = load %struct._object*, %struct._object** %u, align 8, !dbg !4288, !tbaa !894
  %68 = bitcast %struct._object* %67 to %struct.PyVarObject*, !dbg !4289
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %68, i32 0, i32 1, !dbg !4290
  %69 = load i64, i64* %ob_size, align 8, !dbg !4290, !tbaa !4291
  store i64 %69, i64* %buflen, align 8, !dbg !4292, !tbaa !1484
  %70 = load %struct._object*, %struct._object** %u, align 8, !dbg !4293, !tbaa !894
  %71 = bitcast %struct._object* %70 to %struct.PyBytesObject*, !dbg !4294
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %71, i32 0, i32 2, !dbg !4295
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !4296
  store i8* %arraydecay, i8** %buf59, align 8, !dbg !4297, !tbaa !894
  %72 = load i8*, i8** %buf59, align 8, !dbg !4298, !tbaa !894
  %tobool66 = icmp ne i8* %72, null, !dbg !4298
  br i1 %tobool66, label %if.end.74, label %if.then.67, !dbg !4299

if.then.67:                                       ; preds = %if.end.65
  br label %do.body, !dbg !4300

do.body:                                          ; preds = %if.then.67
  %73 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4301
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !4301
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !761, metadata !898), !dbg !4303
  %74 = load %struct._object*, %struct._object** %u, align 8, !dbg !4304, !tbaa !894
  store %struct._object* %74, %struct._object** %_py_decref_tmp, align 8, !dbg !4303, !tbaa !894
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4305, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !4307
  %76 = load i64, i64* %ob_refcnt, align 8, !dbg !4308, !tbaa !1277
  %dec = add i64 %76, -1, !dbg !4308
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4308, !tbaa !1277
  %cmp68 = icmp ne i64 %dec, 0, !dbg !4309
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !4310

if.then.70:                                       ; preds = %do.body
  br label %if.end.72, !dbg !4311

if.else.71:                                       ; preds = %do.body
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4313, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !4315
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4315, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !4316
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4316, !tbaa !1289
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4317, !tbaa !894
  call void %79(%struct._object* %80), !dbg !4318
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  %81 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4319
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !4319
  br label %do.cond, !dbg !4321

do.cond:                                          ; preds = %if.end.72
  br label %do.end, !dbg !4322

do.end:                                           ; preds = %do.cond
  %82 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4324, !tbaa !894
  %done73 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %82, i32 0, i32 5, !dbg !4325
  store i32 22, i32* %done73, align 4, !dbg !4326, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90, !dbg !4327

if.end.74:                                        ; preds = %if.end.65
  %83 = load i64, i64* %buflen, align 8, !dbg !4328, !tbaa !1484
  %add = add i64 %83, 1, !dbg !4329
  %call75 = call i8* @PyMem_Malloc(i64 %add), !dbg !4330
  store i8* %call75, i8** %newtok, align 8, !dbg !4331, !tbaa !894
  %84 = load i8*, i8** %newtok, align 8, !dbg !4332, !tbaa !894
  %85 = load i8*, i8** %buf59, align 8, !dbg !4333, !tbaa !894
  %call76 = call i8* @strcpy(i8* %84, i8* %85) #2, !dbg !4334
  br label %do.body.77, !dbg !4335

do.body.77:                                       ; preds = %if.end.74
  %86 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !4336
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !4336
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp78, metadata !765, metadata !898), !dbg !4338
  %87 = load %struct._object*, %struct._object** %u, align 8, !dbg !4339, !tbaa !894
  store %struct._object* %87, %struct._object** %_py_decref_tmp78, align 8, !dbg !4338, !tbaa !894
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4340, !tbaa !894
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !4342
  %89 = load i64, i64* %ob_refcnt79, align 8, !dbg !4343, !tbaa !1277
  %dec80 = add i64 %89, -1, !dbg !4343
  store i64 %dec80, i64* %ob_refcnt79, align 8, !dbg !4343, !tbaa !1277
  %cmp81 = icmp ne i64 %dec80, 0, !dbg !4344
  br i1 %cmp81, label %if.then.83, label %if.else.84, !dbg !4345

if.then.83:                                       ; preds = %do.body.77
  br label %if.end.87, !dbg !4346

if.else.84:                                       ; preds = %do.body.77
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4348, !tbaa !894
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !4350
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !4350, !tbaa !1287
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !4351
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !4351, !tbaa !1289
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8, !dbg !4352, !tbaa !894
  call void %92(%struct._object* %93), !dbg !4353
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  %94 = bitcast %struct._object** %_py_decref_tmp78 to i8*, !dbg !4354
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !4354
  br label %do.cond.88, !dbg !4356

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !4357

do.end.89:                                        ; preds = %do.cond.88
  store i32 0, i32* %cleanup.dest.slot, !dbg !4359
  br label %cleanup.90, !dbg !4359

cleanup.90:                                       ; preds = %do.end.89, %do.end, %if.then.63
  %95 = bitcast %struct._object** %u to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !4360
  %96 = bitcast i8** %buf59 to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !4360
  %97 = bitcast i64* %buflen to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !4360
  %cleanup.dest.93 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.93, label %cleanup.188 [
    i32 0, label %cleanup.cont.94
  ]

cleanup.cont.94:                                  ; preds = %cleanup.90
  br label %if.end.95, !dbg !4361

if.end.95:                                        ; preds = %cleanup.cont.94, %land.lhs.true.55, %land.lhs.true, %if.end.53
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4362, !tbaa !894
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 13, !dbg !4364
  %99 = load i8*, i8** %nextprompt, align 8, !dbg !4364, !tbaa !1004
  %cmp96 = icmp ne i8* %99, null, !dbg !4365
  br i1 %cmp96, label %if.then.98, label %if.end.101, !dbg !4366

if.then.98:                                       ; preds = %if.end.95
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4367, !tbaa !894
  %nextprompt99 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 13, !dbg !4368
  %101 = load i8*, i8** %nextprompt99, align 8, !dbg !4368, !tbaa !1004
  %102 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4369, !tbaa !894
  %prompt100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %102, i32 0, i32 12, !dbg !4370
  store i8* %101, i8** %prompt100, align 8, !dbg !4371, !tbaa !1008
  br label %if.end.101, !dbg !4369

if.end.101:                                       ; preds = %if.then.98, %if.end.95
  %103 = load i8*, i8** %newtok, align 8, !dbg !4372, !tbaa !894
  %cmp102 = icmp eq i8* %103, null, !dbg !4373
  br i1 %cmp102, label %if.then.104, label %if.else.106, !dbg !4374

if.then.104:                                      ; preds = %if.end.101
  %104 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4375, !tbaa !894
  %done105 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %104, i32 0, i32 5, !dbg !4376
  store i32 12, i32* %done105, align 4, !dbg !4377, !tbaa !973
  br label %if.end.187, !dbg !4375

if.else.106:                                      ; preds = %if.end.101
  %105 = load i8*, i8** %newtok, align 8, !dbg !4378, !tbaa !894
  %106 = load i8, i8* %105, align 1, !dbg !4379, !tbaa !1146
  %conv107 = sext i8 %106 to i32, !dbg !4379
  %cmp108 = icmp eq i32 %conv107, 0, !dbg !4380
  br i1 %cmp108, label %if.then.110, label %if.else.112, !dbg !4381

if.then.110:                                      ; preds = %if.else.106
  %107 = load i8*, i8** %newtok, align 8, !dbg !4382, !tbaa !894
  call void @PyMem_Free(i8* %107), !dbg !4384
  %108 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4385, !tbaa !894
  %done111 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %108, i32 0, i32 5, !dbg !4386
  store i32 11, i32* %done111, align 4, !dbg !4387, !tbaa !973
  br label %if.end.186, !dbg !4388

if.else.112:                                      ; preds = %if.else.106
  %109 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4389, !tbaa !894
  %start113 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %109, i32 0, i32 4, !dbg !4390
  %110 = load i8*, i8** %start113, align 8, !dbg !4390, !tbaa !957
  %cmp114 = icmp ne i8* %110, null, !dbg !4391
  br i1 %cmp114, label %if.then.116, label %if.else.163, !dbg !4392

if.then.116:                                      ; preds = %if.else.112
  %111 = bitcast i64* %start117 to i8*, !dbg !4393
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !4393
  call void @llvm.dbg.declare(metadata i64* %start117, metadata !767, metadata !898), !dbg !4394
  %112 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4395, !tbaa !894
  %start118 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %112, i32 0, i32 4, !dbg !4396
  %113 = load i8*, i8** %start118, align 8, !dbg !4396, !tbaa !957
  %114 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4397, !tbaa !894
  %buf119 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %114, i32 0, i32 0, !dbg !4398
  %115 = load i8*, i8** %buf119, align 8, !dbg !4398, !tbaa !941
  %sub.ptr.lhs.cast = ptrtoint i8* %113 to i64, !dbg !4399
  %sub.ptr.rhs.cast = ptrtoint i8* %115 to i64, !dbg !4399
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4399
  store i64 %sub.ptr.sub, i64* %start117, align 8, !dbg !4394, !tbaa !1484
  %116 = bitcast i64* %oldlen to i8*, !dbg !4400
  call void @llvm.lifetime.start(i64 8, i8* %116) #2, !dbg !4400
  call void @llvm.dbg.declare(metadata i64* %oldlen, metadata !772, metadata !898), !dbg !4401
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4402, !tbaa !894
  %cur120 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %117, i32 0, i32 1, !dbg !4403
  %118 = load i8*, i8** %cur120, align 8, !dbg !4403, !tbaa !937
  %119 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4404, !tbaa !894
  %buf121 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %119, i32 0, i32 0, !dbg !4405
  %120 = load i8*, i8** %buf121, align 8, !dbg !4405, !tbaa !941
  %sub.ptr.lhs.cast122 = ptrtoint i8* %118 to i64, !dbg !4406
  %sub.ptr.rhs.cast123 = ptrtoint i8* %120 to i64, !dbg !4406
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123, !dbg !4406
  store i64 %sub.ptr.sub124, i64* %oldlen, align 8, !dbg !4401, !tbaa !1484
  %121 = bitcast i64* %newlen to i8*, !dbg !4407
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !4407
  call void @llvm.dbg.declare(metadata i64* %newlen, metadata !773, metadata !898), !dbg !4408
  %122 = load i64, i64* %oldlen, align 8, !dbg !4409, !tbaa !1484
  %123 = load i8*, i8** %newtok, align 8, !dbg !4410, !tbaa !894
  %call125 = call i64 @strlen(i8* %123) #9, !dbg !4411
  %add126 = add i64 %122, %call125, !dbg !4412
  store i64 %add126, i64* %newlen, align 8, !dbg !4408, !tbaa !1484
  %124 = bitcast i8** %buf127 to i8*, !dbg !4413
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !4413
  call void @llvm.dbg.declare(metadata i8** %buf127, metadata !774, metadata !898), !dbg !4414
  %125 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4415, !tbaa !894
  %buf128 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %125, i32 0, i32 0, !dbg !4416
  %126 = load i8*, i8** %buf128, align 8, !dbg !4416, !tbaa !941
  store i8* %126, i8** %buf127, align 8, !dbg !4414, !tbaa !894
  %127 = load i8*, i8** %buf127, align 8, !dbg !4417, !tbaa !894
  %128 = load i64, i64* %newlen, align 8, !dbg !4418, !tbaa !1484
  %add129 = add i64 %128, 1, !dbg !4419
  %call130 = call i8* @PyMem_Realloc(i8* %127, i64 %add129), !dbg !4420
  store i8* %call130, i8** %buf127, align 8, !dbg !4421, !tbaa !894
  %129 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4422, !tbaa !894
  %lineno131 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %129, i32 0, i32 14, !dbg !4423
  %130 = load i32, i32* %lineno131, align 4, !dbg !4424, !tbaa !1012
  %inc132 = add i32 %130, 1, !dbg !4424
  store i32 %inc132, i32* %lineno131, align 4, !dbg !4424, !tbaa !1012
  %131 = load i8*, i8** %buf127, align 8, !dbg !4425, !tbaa !894
  %cmp133 = icmp eq i8* %131, null, !dbg !4427
  br i1 %cmp133, label %if.then.135, label %if.end.139, !dbg !4428

if.then.135:                                      ; preds = %if.then.116
  %132 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4429, !tbaa !894
  %buf136 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %132, i32 0, i32 0, !dbg !4431
  %133 = load i8*, i8** %buf136, align 8, !dbg !4431, !tbaa !941
  call void @PyMem_Free(i8* %133), !dbg !4432
  %134 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4433, !tbaa !894
  %buf137 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %134, i32 0, i32 0, !dbg !4434
  store i8* null, i8** %buf137, align 8, !dbg !4435, !tbaa !941
  %135 = load i8*, i8** %newtok, align 8, !dbg !4436, !tbaa !894
  call void @PyMem_Free(i8* %135), !dbg !4437
  %136 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4438, !tbaa !894
  %done138 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %136, i32 0, i32 5, !dbg !4439
  store i32 15, i32* %done138, align 4, !dbg !4440, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4441
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.157, !dbg !4441

if.end.139:                                       ; preds = %if.then.116
  %137 = load i8*, i8** %buf127, align 8, !dbg !4442, !tbaa !894
  %138 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4443, !tbaa !894
  %buf140 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %138, i32 0, i32 0, !dbg !4444
  store i8* %137, i8** %buf140, align 8, !dbg !4445, !tbaa !941
  %139 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4446, !tbaa !894
  %buf141 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %139, i32 0, i32 0, !dbg !4447
  %140 = load i8*, i8** %buf141, align 8, !dbg !4447, !tbaa !941
  %141 = load i64, i64* %oldlen, align 8, !dbg !4448, !tbaa !1484
  %add.ptr = getelementptr i8, i8* %140, i64 %141, !dbg !4449
  %142 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4450, !tbaa !894
  %cur142 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %142, i32 0, i32 1, !dbg !4451
  store i8* %add.ptr, i8** %cur142, align 8, !dbg !4452, !tbaa !937
  %143 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4453, !tbaa !894
  %cur143 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %143, i32 0, i32 1, !dbg !4454
  %144 = load i8*, i8** %cur143, align 8, !dbg !4454, !tbaa !937
  %145 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4455, !tbaa !894
  %line_start144 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %145, i32 0, i32 26, !dbg !4456
  store i8* %144, i8** %line_start144, align 8, !dbg !4457, !tbaa !4208
  %146 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4458, !tbaa !894
  %buf145 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %146, i32 0, i32 0, !dbg !4459
  %147 = load i8*, i8** %buf145, align 8, !dbg !4459, !tbaa !941
  %148 = load i64, i64* %oldlen, align 8, !dbg !4460, !tbaa !1484
  %add.ptr146 = getelementptr i8, i8* %147, i64 %148, !dbg !4461
  %149 = load i8*, i8** %newtok, align 8, !dbg !4462, !tbaa !894
  %call147 = call i8* @strcpy(i8* %add.ptr146, i8* %149) #2, !dbg !4463
  %150 = load i8*, i8** %newtok, align 8, !dbg !4464, !tbaa !894
  call void @PyMem_Free(i8* %150), !dbg !4465
  %151 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4466, !tbaa !894
  %buf148 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %151, i32 0, i32 0, !dbg !4467
  %152 = load i8*, i8** %buf148, align 8, !dbg !4467, !tbaa !941
  %153 = load i64, i64* %newlen, align 8, !dbg !4468, !tbaa !1484
  %add.ptr149 = getelementptr i8, i8* %152, i64 %153, !dbg !4469
  %154 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4470, !tbaa !894
  %inp150 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %154, i32 0, i32 2, !dbg !4471
  store i8* %add.ptr149, i8** %inp150, align 8, !dbg !4472, !tbaa !928
  %155 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4473, !tbaa !894
  %inp151 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %155, i32 0, i32 2, !dbg !4474
  %156 = load i8*, i8** %inp151, align 8, !dbg !4474, !tbaa !928
  %add.ptr152 = getelementptr i8, i8* %156, i64 1, !dbg !4475
  %157 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4476, !tbaa !894
  %end153 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %157, i32 0, i32 3, !dbg !4477
  store i8* %add.ptr152, i8** %end153, align 8, !dbg !4478, !tbaa !933
  %158 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4479, !tbaa !894
  %buf154 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %158, i32 0, i32 0, !dbg !4480
  %159 = load i8*, i8** %buf154, align 8, !dbg !4480, !tbaa !941
  %160 = load i64, i64* %start117, align 8, !dbg !4481, !tbaa !1484
  %add.ptr155 = getelementptr i8, i8* %159, i64 %160, !dbg !4482
  %161 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4483, !tbaa !894
  %start156 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %161, i32 0, i32 4, !dbg !4484
  store i8* %add.ptr155, i8** %start156, align 8, !dbg !4485, !tbaa !957
  store i32 0, i32* %cleanup.dest.slot, !dbg !4486
  br label %cleanup.157, !dbg !4486

cleanup.157:                                      ; preds = %if.end.139, %if.then.135
  %162 = bitcast i8** %buf127 to i8*, !dbg !4487
  call void @llvm.lifetime.end(i64 8, i8* %162) #2, !dbg !4487
  %163 = bitcast i64* %newlen to i8*, !dbg !4487
  call void @llvm.lifetime.end(i64 8, i8* %163) #2, !dbg !4487
  %164 = bitcast i64* %oldlen to i8*, !dbg !4487
  call void @llvm.lifetime.end(i64 8, i8* %164) #2, !dbg !4487
  %165 = bitcast i64* %start117 to i8*, !dbg !4487
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !4487
  %cleanup.dest.161 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.161, label %cleanup.188 [
    i32 0, label %cleanup.cont.162
  ]

cleanup.cont.162:                                 ; preds = %cleanup.157
  br label %if.end.185, !dbg !4489

if.else.163:                                      ; preds = %if.else.112
  %166 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4490, !tbaa !894
  %lineno164 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %166, i32 0, i32 14, !dbg !4492
  %167 = load i32, i32* %lineno164, align 4, !dbg !4493, !tbaa !1012
  %inc165 = add i32 %167, 1, !dbg !4493
  store i32 %inc165, i32* %lineno164, align 4, !dbg !4493, !tbaa !1012
  %168 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4494, !tbaa !894
  %buf166 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %168, i32 0, i32 0, !dbg !4496
  %169 = load i8*, i8** %buf166, align 8, !dbg !4496, !tbaa !941
  %cmp167 = icmp ne i8* %169, null, !dbg !4497
  br i1 %cmp167, label %if.then.169, label %if.end.171, !dbg !4498

if.then.169:                                      ; preds = %if.else.163
  %170 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4499, !tbaa !894
  %buf170 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %170, i32 0, i32 0, !dbg !4500
  %171 = load i8*, i8** %buf170, align 8, !dbg !4500, !tbaa !941
  call void @PyMem_Free(i8* %171), !dbg !4501
  br label %if.end.171, !dbg !4501

if.end.171:                                       ; preds = %if.then.169, %if.else.163
  %172 = load i8*, i8** %newtok, align 8, !dbg !4502, !tbaa !894
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4503, !tbaa !894
  %buf172 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 0, !dbg !4504
  store i8* %172, i8** %buf172, align 8, !dbg !4505, !tbaa !941
  %174 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4506, !tbaa !894
  %buf173 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %174, i32 0, i32 0, !dbg !4507
  %175 = load i8*, i8** %buf173, align 8, !dbg !4507, !tbaa !941
  %176 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4508, !tbaa !894
  %line_start174 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %176, i32 0, i32 26, !dbg !4509
  store i8* %175, i8** %line_start174, align 8, !dbg !4510, !tbaa !4208
  %177 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4511, !tbaa !894
  %buf175 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %177, i32 0, i32 0, !dbg !4512
  %178 = load i8*, i8** %buf175, align 8, !dbg !4512, !tbaa !941
  %179 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4513, !tbaa !894
  %cur176 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %179, i32 0, i32 1, !dbg !4514
  store i8* %178, i8** %cur176, align 8, !dbg !4515, !tbaa !937
  %180 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4516, !tbaa !894
  %buf177 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %180, i32 0, i32 0, !dbg !4517
  %181 = load i8*, i8** %buf177, align 8, !dbg !4517, !tbaa !941
  %182 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4518, !tbaa !894
  %line_start178 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %182, i32 0, i32 26, !dbg !4519
  store i8* %181, i8** %line_start178, align 8, !dbg !4520, !tbaa !4208
  %183 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4521, !tbaa !894
  %buf179 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %183, i32 0, i32 0, !dbg !4522
  %184 = load i8*, i8** %buf179, align 8, !dbg !4522, !tbaa !941
  %call180 = call i8* @__rawmemchr(i8* %184, i32 0), !dbg !4523
  %185 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4524, !tbaa !894
  %inp181 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %185, i32 0, i32 2, !dbg !4525
  store i8* %call180, i8** %inp181, align 8, !dbg !4526, !tbaa !928
  %186 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4527, !tbaa !894
  %inp182 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %186, i32 0, i32 2, !dbg !4528
  %187 = load i8*, i8** %inp182, align 8, !dbg !4528, !tbaa !928
  %add.ptr183 = getelementptr i8, i8* %187, i64 1, !dbg !4529
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4530, !tbaa !894
  %end184 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %188, i32 0, i32 3, !dbg !4531
  store i8* %add.ptr183, i8** %end184, align 8, !dbg !4532, !tbaa !933
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.171, %cleanup.cont.162
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.110
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.104
  store i32 0, i32* %cleanup.dest.slot, !dbg !4533
  br label %cleanup.188, !dbg !4533

cleanup.188:                                      ; preds = %if.end.187, %cleanup.157, %cleanup.90, %cleanup.52
  %189 = bitcast i8** %newtok to i8*, !dbg !4534
  call void @llvm.lifetime.end(i64 8, i8* %189) #2, !dbg !4534
  %cleanup.dest.189 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.189, label %unreachable [
    i32 0, label %cleanup.cont.190
    i32 1, label %return
  ]

cleanup.cont.190:                                 ; preds = %cleanup.188
  br label %if.end.351, !dbg !4536

if.else.191:                                      ; preds = %if.end.38
  %190 = bitcast i32* %done192 to i8*, !dbg !4537
  call void @llvm.lifetime.start(i64 4, i8* %190) #2, !dbg !4537
  call void @llvm.dbg.declare(metadata i32* %done192, metadata !775, metadata !898), !dbg !4538
  store i32 0, i32* %done192, align 4, !dbg !4538, !tbaa !900
  %191 = bitcast i64* %cur193 to i8*, !dbg !4539
  call void @llvm.lifetime.start(i64 8, i8* %191) #2, !dbg !4539
  call void @llvm.dbg.declare(metadata i64* %cur193, metadata !777, metadata !898), !dbg !4540
  store i64 0, i64* %cur193, align 8, !dbg !4540, !tbaa !1484
  %192 = bitcast i8** %pt to i8*, !dbg !4541
  call void @llvm.lifetime.start(i64 8, i8* %192) #2, !dbg !4541
  call void @llvm.dbg.declare(metadata i8** %pt, metadata !778, metadata !898), !dbg !4542
  %193 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4543, !tbaa !894
  %start194 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %193, i32 0, i32 4, !dbg !4545
  %194 = load i8*, i8** %start194, align 8, !dbg !4545, !tbaa !957
  %cmp195 = icmp eq i8* %194, null, !dbg !4546
  br i1 %cmp195, label %if.then.197, label %if.else.236, !dbg !4547

if.then.197:                                      ; preds = %if.else.191
  %195 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4548, !tbaa !894
  %buf198 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %195, i32 0, i32 0, !dbg !4551
  %196 = load i8*, i8** %buf198, align 8, !dbg !4551, !tbaa !941
  %cmp199 = icmp eq i8* %196, null, !dbg !4552
  br i1 %cmp199, label %if.then.201, label %if.end.213, !dbg !4553

if.then.201:                                      ; preds = %if.then.197
  %call202 = call i8* @PyMem_Malloc(i64 8192), !dbg !4554
  %197 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4556, !tbaa !894
  %buf203 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %197, i32 0, i32 0, !dbg !4557
  store i8* %call202, i8** %buf203, align 8, !dbg !4558, !tbaa !941
  %198 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4559, !tbaa !894
  %buf204 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %198, i32 0, i32 0, !dbg !4561
  %199 = load i8*, i8** %buf204, align 8, !dbg !4561, !tbaa !941
  %cmp205 = icmp eq i8* %199, null, !dbg !4562
  br i1 %cmp205, label %if.then.207, label %if.end.209, !dbg !4563

if.then.207:                                      ; preds = %if.then.201
  %200 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4564, !tbaa !894
  %done208 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %200, i32 0, i32 5, !dbg !4566
  store i32 15, i32* %done208, align 4, !dbg !4567, !tbaa !973
  store i32 -1, i32* %retval, !dbg !4568
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.346, !dbg !4568

if.end.209:                                       ; preds = %if.then.201
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4569, !tbaa !894
  %buf210 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %201, i32 0, i32 0, !dbg !4570
  %202 = load i8*, i8** %buf210, align 8, !dbg !4570, !tbaa !941
  %add.ptr211 = getelementptr i8, i8* %202, i64 8192, !dbg !4571
  %203 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4572, !tbaa !894
  %end212 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %203, i32 0, i32 3, !dbg !4573
  store i8* %add.ptr211, i8** %end212, align 8, !dbg !4574, !tbaa !933
  br label %if.end.213, !dbg !4575

if.end.213:                                       ; preds = %if.end.209, %if.then.197
  %204 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4576, !tbaa !894
  %buf214 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %204, i32 0, i32 0, !dbg !4578
  %205 = load i8*, i8** %buf214, align 8, !dbg !4578, !tbaa !941
  %206 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4579, !tbaa !894
  %end215 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %206, i32 0, i32 3, !dbg !4580
  %207 = load i8*, i8** %end215, align 8, !dbg !4580, !tbaa !933
  %208 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4581, !tbaa !894
  %buf216 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %208, i32 0, i32 0, !dbg !4582
  %209 = load i8*, i8** %buf216, align 8, !dbg !4582, !tbaa !941
  %sub.ptr.lhs.cast217 = ptrtoint i8* %207 to i64, !dbg !4583
  %sub.ptr.rhs.cast218 = ptrtoint i8* %209 to i64, !dbg !4583
  %sub.ptr.sub219 = sub i64 %sub.ptr.lhs.cast217, %sub.ptr.rhs.cast218, !dbg !4583
  %conv220 = trunc i64 %sub.ptr.sub219 to i32, !dbg !4584
  %210 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4585, !tbaa !894
  %call221 = call i8* @decoding_fgets(i8* %205, i32 %conv220, %struct.tok_state* %210), !dbg !4586
  %cmp222 = icmp eq i8* %call221, null, !dbg !4587
  br i1 %cmp222, label %if.then.224, label %if.else.226, !dbg !4588

if.then.224:                                      ; preds = %if.end.213
  %211 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4589, !tbaa !894
  %done225 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %211, i32 0, i32 5, !dbg !4591
  store i32 11, i32* %done225, align 4, !dbg !4592, !tbaa !973
  store i32 1, i32* %done192, align 4, !dbg !4593, !tbaa !900
  br label %if.end.235, !dbg !4594

if.else.226:                                      ; preds = %if.end.213
  %212 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4595, !tbaa !894
  %done227 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %212, i32 0, i32 5, !dbg !4597
  store i32 10, i32* %done227, align 4, !dbg !4598, !tbaa !973
  %213 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4599, !tbaa !894
  %buf228 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %213, i32 0, i32 0, !dbg !4600
  %214 = load i8*, i8** %buf228, align 8, !dbg !4600, !tbaa !941
  %call229 = call i8* @__rawmemchr(i8* %214, i32 0), !dbg !4601
  %215 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4602, !tbaa !894
  %inp230 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %215, i32 0, i32 2, !dbg !4603
  store i8* %call229, i8** %inp230, align 8, !dbg !4604, !tbaa !928
  %216 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4605, !tbaa !894
  %inp231 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %216, i32 0, i32 2, !dbg !4606
  %217 = load i8*, i8** %inp231, align 8, !dbg !4606, !tbaa !928
  %arrayidx = getelementptr i8, i8* %217, i64 -1, !dbg !4605
  %218 = load i8, i8* %arrayidx, align 1, !dbg !4605, !tbaa !1146
  %conv232 = sext i8 %218 to i32, !dbg !4605
  %cmp233 = icmp eq i32 %conv232, 10, !dbg !4607
  %conv234 = zext i1 %cmp233 to i32, !dbg !4607
  store i32 %conv234, i32* %done192, align 4, !dbg !4608, !tbaa !900
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.226, %if.then.224
  br label %if.end.249, !dbg !4609

if.else.236:                                      ; preds = %if.else.191
  %219 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4610, !tbaa !894
  %cur237 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %219, i32 0, i32 1, !dbg !4612
  %220 = load i8*, i8** %cur237, align 8, !dbg !4612, !tbaa !937
  %221 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4613, !tbaa !894
  %buf238 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %221, i32 0, i32 0, !dbg !4614
  %222 = load i8*, i8** %buf238, align 8, !dbg !4614, !tbaa !941
  %sub.ptr.lhs.cast239 = ptrtoint i8* %220 to i64, !dbg !4615
  %sub.ptr.rhs.cast240 = ptrtoint i8* %222 to i64, !dbg !4615
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240, !dbg !4615
  store i64 %sub.ptr.sub241, i64* %cur193, align 8, !dbg !4616, !tbaa !1484
  %223 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4617, !tbaa !894
  %call242 = call i32 @decoding_feof(%struct.tok_state* %223), !dbg !4619
  %tobool243 = icmp ne i32 %call242, 0, !dbg !4619
  br i1 %tobool243, label %if.then.244, label %if.else.246, !dbg !4620

if.then.244:                                      ; preds = %if.else.236
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4621, !tbaa !894
  %done245 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %224, i32 0, i32 5, !dbg !4623
  store i32 11, i32* %done245, align 4, !dbg !4624, !tbaa !973
  store i32 1, i32* %done192, align 4, !dbg !4625, !tbaa !900
  br label %if.end.248, !dbg !4626

if.else.246:                                      ; preds = %if.else.236
  %225 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4627, !tbaa !894
  %done247 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %225, i32 0, i32 5, !dbg !4628
  store i32 10, i32* %done247, align 4, !dbg !4629, !tbaa !973
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.246, %if.then.244
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.235
  %226 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4630, !tbaa !894
  %lineno250 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %226, i32 0, i32 14, !dbg !4631
  %227 = load i32, i32* %lineno250, align 4, !dbg !4632, !tbaa !1012
  %inc251 = add i32 %227, 1, !dbg !4632
  store i32 %inc251, i32* %lineno250, align 4, !dbg !4632, !tbaa !1012
  br label %while.cond, !dbg !4633

while.cond:                                       ; preds = %cleanup.cont.322, %if.end.249
  %228 = load i32, i32* %done192, align 4, !dbg !4634, !tbaa !900
  %tobool252 = icmp ne i32 %228, 0, !dbg !4637
  %lnot = xor i1 %tobool252, true, !dbg !4637
  br i1 %lnot, label %while.body, label %while.end, !dbg !4633

while.body:                                       ; preds = %while.cond
  %229 = bitcast i64* %curstart to i8*, !dbg !4638
  call void @llvm.lifetime.start(i64 8, i8* %229) #2, !dbg !4638
  call void @llvm.dbg.declare(metadata i64* %curstart, metadata !779, metadata !898), !dbg !4639
  %230 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4640, !tbaa !894
  %start253 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %230, i32 0, i32 4, !dbg !4641
  %231 = load i8*, i8** %start253, align 8, !dbg !4641, !tbaa !957
  %cmp254 = icmp eq i8* %231, null, !dbg !4642
  br i1 %cmp254, label %cond.true, label %cond.false, !dbg !4640

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !4643

cond.false:                                       ; preds = %while.body
  %232 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4645, !tbaa !894
  %start256 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %232, i32 0, i32 4, !dbg !4646
  %233 = load i8*, i8** %start256, align 8, !dbg !4646, !tbaa !957
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4647, !tbaa !894
  %buf257 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %234, i32 0, i32 0, !dbg !4648
  %235 = load i8*, i8** %buf257, align 8, !dbg !4648, !tbaa !941
  %sub.ptr.lhs.cast258 = ptrtoint i8* %233 to i64, !dbg !4649
  %sub.ptr.rhs.cast259 = ptrtoint i8* %235 to i64, !dbg !4649
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259, !dbg !4649
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub.ptr.sub260, %cond.false ], !dbg !4640
  store i64 %cond, i64* %curstart, align 8, !dbg !4650, !tbaa !1484
  %236 = bitcast i64* %curvalid to i8*, !dbg !4653
  call void @llvm.lifetime.start(i64 8, i8* %236) #2, !dbg !4653
  call void @llvm.dbg.declare(metadata i64* %curvalid, metadata !781, metadata !898), !dbg !4654
  %237 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4655, !tbaa !894
  %inp261 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %237, i32 0, i32 2, !dbg !4656
  %238 = load i8*, i8** %inp261, align 8, !dbg !4656, !tbaa !928
  %239 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4657, !tbaa !894
  %buf262 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %239, i32 0, i32 0, !dbg !4658
  %240 = load i8*, i8** %buf262, align 8, !dbg !4658, !tbaa !941
  %sub.ptr.lhs.cast263 = ptrtoint i8* %238 to i64, !dbg !4659
  %sub.ptr.rhs.cast264 = ptrtoint i8* %240 to i64, !dbg !4659
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast263, %sub.ptr.rhs.cast264, !dbg !4659
  store i64 %sub.ptr.sub265, i64* %curvalid, align 8, !dbg !4654, !tbaa !1484
  %241 = bitcast i64* %newsize to i8*, !dbg !4660
  call void @llvm.lifetime.start(i64 8, i8* %241) #2, !dbg !4660
  call void @llvm.dbg.declare(metadata i64* %newsize, metadata !782, metadata !898), !dbg !4661
  %242 = load i64, i64* %curvalid, align 8, !dbg !4662, !tbaa !1484
  %add266 = add i64 %242, 8192, !dbg !4663
  store i64 %add266, i64* %newsize, align 8, !dbg !4661, !tbaa !1484
  %243 = bitcast i8** %newbuf to i8*, !dbg !4664
  call void @llvm.lifetime.start(i64 8, i8* %243) #2, !dbg !4664
  call void @llvm.dbg.declare(metadata i8** %newbuf, metadata !783, metadata !898), !dbg !4665
  %244 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4666, !tbaa !894
  %buf267 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %244, i32 0, i32 0, !dbg !4667
  %245 = load i8*, i8** %buf267, align 8, !dbg !4667, !tbaa !941
  store i8* %245, i8** %newbuf, align 8, !dbg !4665, !tbaa !894
  %246 = load i8*, i8** %newbuf, align 8, !dbg !4668, !tbaa !894
  %247 = load i64, i64* %newsize, align 8, !dbg !4669, !tbaa !1484
  %call268 = call i8* @PyMem_Realloc(i8* %246, i64 %247), !dbg !4670
  store i8* %call268, i8** %newbuf, align 8, !dbg !4671, !tbaa !894
  %248 = load i8*, i8** %newbuf, align 8, !dbg !4672, !tbaa !894
  %cmp269 = icmp eq i8* %248, null, !dbg !4674
  br i1 %cmp269, label %if.then.271, label %if.end.275, !dbg !4675

if.then.271:                                      ; preds = %cond.end
  %249 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4676, !tbaa !894
  %done272 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %249, i32 0, i32 5, !dbg !4678
  store i32 15, i32* %done272, align 4, !dbg !4679, !tbaa !973
  %250 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4680, !tbaa !894
  %inp273 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %250, i32 0, i32 2, !dbg !4681
  %251 = load i8*, i8** %inp273, align 8, !dbg !4681, !tbaa !928
  %252 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4682, !tbaa !894
  %cur274 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %252, i32 0, i32 1, !dbg !4683
  store i8* %251, i8** %cur274, align 8, !dbg !4684, !tbaa !937
  store i32 -1, i32* %retval, !dbg !4685
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.317, !dbg !4685

if.end.275:                                       ; preds = %cond.end
  %253 = load i8*, i8** %newbuf, align 8, !dbg !4686, !tbaa !894
  %254 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4687, !tbaa !894
  %buf276 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %254, i32 0, i32 0, !dbg !4688
  store i8* %253, i8** %buf276, align 8, !dbg !4689, !tbaa !941
  %255 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4690, !tbaa !894
  %buf277 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %255, i32 0, i32 0, !dbg !4691
  %256 = load i8*, i8** %buf277, align 8, !dbg !4691, !tbaa !941
  %257 = load i64, i64* %curvalid, align 8, !dbg !4692, !tbaa !1484
  %add.ptr278 = getelementptr i8, i8* %256, i64 %257, !dbg !4693
  %258 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4694, !tbaa !894
  %inp279 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %258, i32 0, i32 2, !dbg !4695
  store i8* %add.ptr278, i8** %inp279, align 8, !dbg !4696, !tbaa !928
  %259 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4697, !tbaa !894
  %buf280 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %259, i32 0, i32 0, !dbg !4698
  %260 = load i8*, i8** %buf280, align 8, !dbg !4698, !tbaa !941
  %261 = load i64, i64* %newsize, align 8, !dbg !4699, !tbaa !1484
  %add.ptr281 = getelementptr i8, i8* %260, i64 %261, !dbg !4700
  %262 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4701, !tbaa !894
  %end282 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %262, i32 0, i32 3, !dbg !4702
  store i8* %add.ptr281, i8** %end282, align 8, !dbg !4703, !tbaa !933
  %263 = load i64, i64* %curstart, align 8, !dbg !4704, !tbaa !1484
  %cmp283 = icmp slt i64 %263, 0, !dbg !4705
  br i1 %cmp283, label %cond.true.285, label %cond.false.286, !dbg !4704

cond.true.285:                                    ; preds = %if.end.275
  br label %cond.end.289, !dbg !4706

cond.false.286:                                   ; preds = %if.end.275
  %264 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4707, !tbaa !894
  %buf287 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %264, i32 0, i32 0, !dbg !4708
  %265 = load i8*, i8** %buf287, align 8, !dbg !4708, !tbaa !941
  %266 = load i64, i64* %curstart, align 8, !dbg !4709, !tbaa !1484
  %add.ptr288 = getelementptr i8, i8* %265, i64 %266, !dbg !4710
  br label %cond.end.289, !dbg !4704

cond.end.289:                                     ; preds = %cond.false.286, %cond.true.285
  %cond290 = phi i8* [ null, %cond.true.285 ], [ %add.ptr288, %cond.false.286 ], !dbg !4704
  %267 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4711, !tbaa !894
  %start291 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %267, i32 0, i32 4, !dbg !4712
  store i8* %cond290, i8** %start291, align 8, !dbg !4713, !tbaa !957
  %268 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4714, !tbaa !894
  %inp292 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %268, i32 0, i32 2, !dbg !4716
  %269 = load i8*, i8** %inp292, align 8, !dbg !4716, !tbaa !928
  %270 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4717, !tbaa !894
  %end293 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %270, i32 0, i32 3, !dbg !4718
  %271 = load i8*, i8** %end293, align 8, !dbg !4718, !tbaa !933
  %272 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4719, !tbaa !894
  %inp294 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %272, i32 0, i32 2, !dbg !4720
  %273 = load i8*, i8** %inp294, align 8, !dbg !4720, !tbaa !928
  %sub.ptr.lhs.cast295 = ptrtoint i8* %271 to i64, !dbg !4721
  %sub.ptr.rhs.cast296 = ptrtoint i8* %273 to i64, !dbg !4721
  %sub.ptr.sub297 = sub i64 %sub.ptr.lhs.cast295, %sub.ptr.rhs.cast296, !dbg !4721
  %conv298 = trunc i64 %sub.ptr.sub297 to i32, !dbg !4722
  %274 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4723, !tbaa !894
  %call299 = call i8* @decoding_fgets(i8* %269, i32 %conv298, %struct.tok_state* %274), !dbg !4724
  %cmp300 = icmp eq i8* %call299, null, !dbg !4725
  br i1 %cmp300, label %if.then.302, label %if.end.308, !dbg !4726

if.then.302:                                      ; preds = %cond.end.289
  %275 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4727, !tbaa !894
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %275, i32 0, i32 22, !dbg !4730
  %276 = load i32, i32* %decoding_erred, align 4, !dbg !4730, !tbaa !1039
  %tobool303 = icmp ne i32 %276, 0, !dbg !4727
  br i1 %tobool303, label %if.then.304, label %if.end.305, !dbg !4731

if.then.304:                                      ; preds = %if.then.302
  store i32 -1, i32* %retval, !dbg !4732
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.317, !dbg !4732

if.end.305:                                       ; preds = %if.then.302
  %277 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4733, !tbaa !894
  %inp306 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %277, i32 0, i32 2, !dbg !4734
  %278 = load i8*, i8** %inp306, align 8, !dbg !4734, !tbaa !928
  %call307 = call i8* @strcpy(i8* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #2, !dbg !4735
  br label %if.end.308, !dbg !4736

if.end.308:                                       ; preds = %if.end.305, %cond.end.289
  %279 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4737, !tbaa !894
  %inp309 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %279, i32 0, i32 2, !dbg !4738
  %280 = load i8*, i8** %inp309, align 8, !dbg !4738, !tbaa !928
  %call310 = call i8* @__rawmemchr(i8* %280, i32 0), !dbg !4739
  %281 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4740, !tbaa !894
  %inp311 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %281, i32 0, i32 2, !dbg !4741
  store i8* %call310, i8** %inp311, align 8, !dbg !4742, !tbaa !928
  %282 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4743, !tbaa !894
  %inp312 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %282, i32 0, i32 2, !dbg !4744
  %283 = load i8*, i8** %inp312, align 8, !dbg !4744, !tbaa !928
  %arrayidx313 = getelementptr i8, i8* %283, i64 -1, !dbg !4743
  %284 = load i8, i8* %arrayidx313, align 1, !dbg !4743, !tbaa !1146
  %conv314 = sext i8 %284 to i32, !dbg !4743
  %cmp315 = icmp eq i32 %conv314, 10, !dbg !4745
  %conv316 = zext i1 %cmp315 to i32, !dbg !4745
  store i32 %conv316, i32* %done192, align 4, !dbg !4746, !tbaa !900
  store i32 0, i32* %cleanup.dest.slot, !dbg !4747
  br label %cleanup.317, !dbg !4747

cleanup.317:                                      ; preds = %if.end.308, %if.then.304, %if.then.271
  %285 = bitcast i8** %newbuf to i8*, !dbg !4748
  call void @llvm.lifetime.end(i64 8, i8* %285) #2, !dbg !4748
  %286 = bitcast i64* %newsize to i8*, !dbg !4748
  call void @llvm.lifetime.end(i64 8, i8* %286) #2, !dbg !4748
  %287 = bitcast i64* %curvalid to i8*, !dbg !4748
  call void @llvm.lifetime.end(i64 8, i8* %287) #2, !dbg !4748
  %288 = bitcast i64* %curstart to i8*, !dbg !4748
  call void @llvm.lifetime.end(i64 8, i8* %288) #2, !dbg !4748
  %cleanup.dest.321 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.321, label %cleanup.346 [
    i32 0, label %cleanup.cont.322
  ]

cleanup.cont.322:                                 ; preds = %cleanup.317
  br label %while.cond, !dbg !4633

while.end:                                        ; preds = %while.cond
  %289 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4749, !tbaa !894
  %buf323 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %289, i32 0, i32 0, !dbg !4751
  %290 = load i8*, i8** %buf323, align 8, !dbg !4751, !tbaa !941
  %cmp324 = icmp ne i8* %290, null, !dbg !4752
  br i1 %cmp324, label %if.then.326, label %if.end.345, !dbg !4753

if.then.326:                                      ; preds = %while.end
  %291 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4754, !tbaa !894
  %buf327 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %291, i32 0, i32 0, !dbg !4756
  %292 = load i8*, i8** %buf327, align 8, !dbg !4756, !tbaa !941
  %293 = load i64, i64* %cur193, align 8, !dbg !4757, !tbaa !1484
  %add.ptr328 = getelementptr i8, i8* %292, i64 %293, !dbg !4758
  %294 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4759, !tbaa !894
  %cur329 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %294, i32 0, i32 1, !dbg !4760
  store i8* %add.ptr328, i8** %cur329, align 8, !dbg !4761, !tbaa !937
  %295 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4762, !tbaa !894
  %cur330 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %295, i32 0, i32 1, !dbg !4763
  %296 = load i8*, i8** %cur330, align 8, !dbg !4763, !tbaa !937
  %297 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4764, !tbaa !894
  %line_start331 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %297, i32 0, i32 26, !dbg !4765
  store i8* %296, i8** %line_start331, align 8, !dbg !4766, !tbaa !4208
  %298 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4767, !tbaa !894
  %inp332 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %298, i32 0, i32 2, !dbg !4768
  %299 = load i8*, i8** %inp332, align 8, !dbg !4768, !tbaa !928
  %add.ptr333 = getelementptr i8, i8* %299, i64 -2, !dbg !4769
  store i8* %add.ptr333, i8** %pt, align 8, !dbg !4770, !tbaa !894
  %300 = load i8*, i8** %pt, align 8, !dbg !4771, !tbaa !894
  %301 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4773, !tbaa !894
  %buf334 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %301, i32 0, i32 0, !dbg !4774
  %302 = load i8*, i8** %buf334, align 8, !dbg !4774, !tbaa !941
  %cmp335 = icmp uge i8* %300, %302, !dbg !4775
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.344, !dbg !4776

land.lhs.true.337:                                ; preds = %if.then.326
  %303 = load i8*, i8** %pt, align 8, !dbg !4777, !tbaa !894
  %304 = load i8, i8* %303, align 1, !dbg !4779, !tbaa !1146
  %conv338 = sext i8 %304 to i32, !dbg !4779
  %cmp339 = icmp eq i32 %conv338, 13, !dbg !4780
  br i1 %cmp339, label %if.then.341, label %if.end.344, !dbg !4781

if.then.341:                                      ; preds = %land.lhs.true.337
  %305 = load i8*, i8** %pt, align 8, !dbg !4782, !tbaa !894
  %incdec.ptr342 = getelementptr i8, i8* %305, i32 1, !dbg !4782
  store i8* %incdec.ptr342, i8** %pt, align 8, !dbg !4782, !tbaa !894
  store i8 10, i8* %305, align 1, !dbg !4784, !tbaa !1146
  %306 = load i8*, i8** %pt, align 8, !dbg !4785, !tbaa !894
  store i8 0, i8* %306, align 1, !dbg !4786, !tbaa !1146
  %307 = load i8*, i8** %pt, align 8, !dbg !4787, !tbaa !894
  %308 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4788, !tbaa !894
  %inp343 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %308, i32 0, i32 2, !dbg !4789
  store i8* %307, i8** %inp343, align 8, !dbg !4790, !tbaa !928
  br label %if.end.344, !dbg !4791

if.end.344:                                       ; preds = %if.then.341, %land.lhs.true.337, %if.then.326
  br label %if.end.345, !dbg !4792

if.end.345:                                       ; preds = %if.end.344, %while.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !4793
  br label %cleanup.346, !dbg !4793

cleanup.346:                                      ; preds = %if.end.345, %cleanup.317, %if.then.207
  %309 = bitcast i8** %pt to i8*, !dbg !4794
  call void @llvm.lifetime.end(i64 8, i8* %309) #2, !dbg !4794
  %310 = bitcast i64* %cur193 to i8*, !dbg !4794
  call void @llvm.lifetime.end(i64 8, i8* %310) #2, !dbg !4794
  %311 = bitcast i32* %done192 to i8*, !dbg !4794
  call void @llvm.lifetime.end(i64 4, i8* %311) #2, !dbg !4794
  %cleanup.dest.349 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.349, label %unreachable [
    i32 0, label %cleanup.cont.350
    i32 1, label %return
  ]

cleanup.cont.350:                                 ; preds = %cleanup.346
  br label %if.end.351

if.end.351:                                       ; preds = %cleanup.cont.350, %cleanup.cont.190
  %312 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4795, !tbaa !894
  %done352 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %312, i32 0, i32 5, !dbg !4797
  %313 = load i32, i32* %done352, align 4, !dbg !4797, !tbaa !973
  %cmp353 = icmp ne i32 %313, 10, !dbg !4798
  br i1 %cmp353, label %if.then.355, label %if.end.363, !dbg !4799

if.then.355:                                      ; preds = %if.end.351
  %314 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4800, !tbaa !894
  %prompt356 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %314, i32 0, i32 12, !dbg !4803
  %315 = load i8*, i8** %prompt356, align 8, !dbg !4803, !tbaa !1008
  %cmp357 = icmp ne i8* %315, null, !dbg !4804
  br i1 %cmp357, label %if.then.359, label %if.end.360, !dbg !4805

if.then.359:                                      ; preds = %if.then.355
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)), !dbg !4806
  br label %if.end.360, !dbg !4806

if.end.360:                                       ; preds = %if.then.359, %if.then.355
  %316 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4807, !tbaa !894
  %inp361 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %316, i32 0, i32 2, !dbg !4808
  %317 = load i8*, i8** %inp361, align 8, !dbg !4808, !tbaa !928
  %318 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4809, !tbaa !894
  %cur362 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %318, i32 0, i32 1, !dbg !4810
  store i8* %317, i8** %cur362, align 8, !dbg !4811, !tbaa !937
  store i32 -1, i32* %retval, !dbg !4812
  br label %return, !dbg !4812

if.end.363:                                       ; preds = %if.end.351
  br label %for.cond, !dbg !4813

return:                                           ; preds = %if.end.360, %cleanup.346, %cleanup.188, %cleanup, %if.then.6, %if.then
  %319 = load i32, i32* %retval, !dbg !4814
  ret i32 %319, !dbg !4814

unreachable:                                      ; preds = %cleanup.346, %cleanup.188
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @tok_backup(%struct.tok_state* %tok, i32 %c) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %c.addr = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !865, metadata !898), !dbg !4815
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !866, metadata !898), !dbg !4816
  %0 = load i32, i32* %c.addr, align 4, !dbg !4817, !tbaa !900
  %cmp = icmp ne i32 %0, -1, !dbg !4819
  br i1 %cmp, label %if.then, label %if.end.10, !dbg !4820

if.then:                                          ; preds = %entry
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4821, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 1, !dbg !4824
  %2 = load i8*, i8** %cur, align 8, !dbg !4825, !tbaa !937
  %incdec.ptr = getelementptr i8, i8* %2, i32 -1, !dbg !4825
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !4825, !tbaa !937
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4826, !tbaa !894
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0, !dbg !4827
  %4 = load i8*, i8** %buf, align 8, !dbg !4827, !tbaa !941
  %cmp1 = icmp ult i8* %incdec.ptr, %4, !dbg !4828
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !4829

if.then.2:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0)) #10, !dbg !4830
  unreachable, !dbg !4830

if.end:                                           ; preds = %if.then
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4831, !tbaa !894
  %cur3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1, !dbg !4833
  %6 = load i8*, i8** %cur3, align 8, !dbg !4833, !tbaa !937
  %7 = load i8, i8* %6, align 1, !dbg !4834, !tbaa !1146
  %conv = sext i8 %7 to i32, !dbg !4834
  %8 = load i32, i32* %c.addr, align 4, !dbg !4835, !tbaa !900
  %cmp4 = icmp ne i32 %conv, %8, !dbg !4836
  br i1 %cmp4, label %if.then.6, label %if.end.9, !dbg !4837

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %c.addr, align 4, !dbg !4838, !tbaa !900
  %conv7 = trunc i32 %9 to i8, !dbg !4838
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4839, !tbaa !894
  %cur8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 1, !dbg !4840
  %11 = load i8*, i8** %cur8, align 8, !dbg !4840, !tbaa !937
  store i8 %conv7, i8* %11, align 1, !dbg !4841, !tbaa !1146
  br label %if.end.9, !dbg !4842

if.end.9:                                         ; preds = %if.then.6, %if.end
  br label %if.end.10, !dbg !4843

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void, !dbg !4844
}

; Function Attrs: nounwind uwtable
define internal i32 @indenterror(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !869, metadata !898), !dbg !4845
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4846, !tbaa !894
  %alterror = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 18, !dbg !4848
  %1 = load i32, i32* %alterror, align 4, !dbg !4848, !tbaa !1024
  %tobool = icmp ne i32 %1, 0, !dbg !4846
  br i1 %tobool, label %if.then, label %if.end, !dbg !4849

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4850, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 5, !dbg !4852
  store i32 18, i32* %done, align 4, !dbg !4853, !tbaa !973
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4854, !tbaa !894
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 2, !dbg !4855
  %4 = load i8*, i8** %inp, align 8, !dbg !4855, !tbaa !928
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4856, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1, !dbg !4857
  store i8* %4, i8** %cur, align 8, !dbg !4858, !tbaa !937
  store i32 1, i32* %retval, !dbg !4859
  br label %return, !dbg !4859

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4860, !tbaa !894
  %altwarning = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 17, !dbg !4862
  %7 = load i32, i32* %altwarning, align 4, !dbg !4862, !tbaa !1020
  %tobool1 = icmp ne i32 %7, 0, !dbg !4860
  br i1 %tobool1, label %if.then.2, label %if.end.4, !dbg !4863

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4864, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 16, !dbg !4866
  %9 = load %struct._object*, %struct._object** %filename, align 8, !dbg !4866, !tbaa !1059
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i32 0, i32 0), %struct._object* %9), !dbg !4867
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4868, !tbaa !894
  %altwarning3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 17, !dbg !4869
  store i32 0, i32* %altwarning3, align 4, !dbg !4870, !tbaa !1020
  br label %if.end.4, !dbg !4871

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %retval, !dbg !4872
  br label %return, !dbg !4872

return:                                           ; preds = %if.end.4, %if.then
  %11 = load i32, i32* %retval, !dbg !4873
  ret i32 %11, !dbg !4873
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
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !872, metadata !898), !dbg !4874
  %0 = bitcast %struct._object** %s to i8*, !dbg !4875
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4875
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !873, metadata !898), !dbg !4876
  %1 = bitcast i32* %result to i8*, !dbg !4877
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4877
  call void @llvm.dbg.declare(metadata i32* %result, metadata !874, metadata !898), !dbg !4878
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4879, !tbaa !894
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 4, !dbg !4880
  %3 = load i8*, i8** %start, align 8, !dbg !4880, !tbaa !957
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4881, !tbaa !894
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 1, !dbg !4882
  %5 = load i8*, i8** %cur, align 8, !dbg !4882, !tbaa !937
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4883, !tbaa !894
  %start1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 4, !dbg !4884
  %7 = load i8*, i8** %start1, align 8, !dbg !4884, !tbaa !957
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !4885
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !4885
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4885
  %call = call %struct._object* @PyUnicode_DecodeUTF8(i8* %3, i64 %sub.ptr.sub, i8* null), !dbg !4886
  store %struct._object* %call, %struct._object** %s, align 8, !dbg !4887, !tbaa !894
  %8 = load %struct._object*, %struct._object** %s, align 8, !dbg !4888, !tbaa !894
  %cmp = icmp eq %struct._object* %8, null, !dbg !4890
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4891

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct._object*, %struct._object** %s, align 8, !dbg !4892, !tbaa !894
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*, !dbg !4894
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 3, !dbg !4895
  %11 = bitcast %struct.anon* %state to i32*, !dbg !4896
  %bf.load = load i32, i32* %11, align 4, !dbg !4896
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !4896
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4896
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !4897
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4897

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !4898

cond.false:                                       ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** %s, align 8, !dbg !4900, !tbaa !894
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %12), !dbg !4902
  br label %cond.end, !dbg !4897

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ], !dbg !4897
  %cmp3 = icmp eq i32 %cond, -1, !dbg !4903
  br i1 %cmp3, label %if.then, label %if.end.8, !dbg !4906

if.then:                                          ; preds = %cond.end, %entry
  %13 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8, !dbg !4907, !tbaa !894
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %13), !dbg !4910
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4910
  br i1 %tobool5, label %if.then.6, label %if.else, !dbg !4911

if.then.6:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !4912
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4914, !tbaa !894
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 5, !dbg !4915
  store i32 26, i32* %done, align 4, !dbg !4916, !tbaa !973
  br label %if.end, !dbg !4917

if.else:                                          ; preds = %if.then
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4918, !tbaa !894
  %done7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 5, !dbg !4920
  store i32 17, i32* %done7, align 4, !dbg !4921, !tbaa !973
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  store i32 0, i32* %retval, !dbg !4922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4922

if.end.8:                                         ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %s, align 8, !dbg !4923, !tbaa !894
  %call9 = call i32 @PyUnicode_IsIdentifier(%struct._object* %16), !dbg !4924
  store i32 %call9, i32* %result, align 4, !dbg !4925, !tbaa !900
  br label %do.body, !dbg !4926

do.body:                                          ; preds = %if.end.8
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4927
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !4927
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !875, metadata !898), !dbg !4929
  %18 = load %struct._object*, %struct._object** %s, align 8, !dbg !4930, !tbaa !894
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !4929, !tbaa !894
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4931, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !4933
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !4934, !tbaa !1277
  %dec = add i64 %20, -1, !dbg !4934
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4934, !tbaa !1277
  %cmp10 = icmp ne i64 %dec, 0, !dbg !4935
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !4936

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !4937

if.else.12:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4939, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !4941
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4941, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !4942
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4942, !tbaa !1289
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4943, !tbaa !894
  call void %23(%struct._object* %24), !dbg !4944
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4945
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !4945
  br label %do.cond, !dbg !4947

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !4948

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %result, align 4, !dbg !4950, !tbaa !900
  %cmp14 = icmp eq i32 %26, 0, !dbg !4952
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !4953

if.then.15:                                       ; preds = %do.end
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4954, !tbaa !894
  %done16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 5, !dbg !4955
  store i32 26, i32* %done16, align 4, !dbg !4956, !tbaa !973
  br label %if.end.17, !dbg !4954

if.end.17:                                        ; preds = %if.then.15, %do.end
  %28 = load i32, i32* %result, align 4, !dbg !4957, !tbaa !900
  store i32 %28, i32* %retval, !dbg !4958
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4958

cleanup:                                          ; preds = %if.end.17, %if.end
  %29 = bitcast i32* %result to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !4959
  %30 = bitcast %struct._object** %s to i8*, !dbg !4959
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !4959
  %31 = load i32, i32* %retval, !dbg !4959
  ret i32 %31, !dbg !4959
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !788, metadata !898), !dbg !4960
  store i32 %size, i32* %size.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !789, metadata !898), !dbg !4961
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !790, metadata !898), !dbg !4962
  %0 = bitcast i8** %line to i8*, !dbg !4963
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4963
  call void @llvm.dbg.declare(metadata i8** %line, metadata !791, metadata !898), !dbg !4964
  store i8* null, i8** %line, align 8, !dbg !4964, !tbaa !894
  %1 = bitcast i32* %badchar to i8*, !dbg !4965
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4965
  call void @llvm.dbg.declare(metadata i32* %badchar, metadata !792, metadata !898), !dbg !4966
  store i32 0, i32* %badchar, align 4, !dbg !4966, !tbaa !900
  br label %for.cond, !dbg !4967

for.cond:                                         ; preds = %if.end.10, %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4968, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 21, !dbg !4973
  %3 = load i32, i32* %decoding_state, align 4, !dbg !4973, !tbaa !1035
  %cmp = icmp eq i32 %3, 2, !dbg !4974
  br i1 %cmp, label %if.then, label %if.else, !dbg !4975

if.then:                                          ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8, !dbg !4976, !tbaa !894
  %5 = load i32, i32* %size.addr, align 4, !dbg !4978, !tbaa !900
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4979, !tbaa !894
  %call = call i8* @fp_readl(i8* %4, i32 %5, %struct.tok_state* %6), !dbg !4980
  store i8* %call, i8** %line, align 8, !dbg !4981, !tbaa !894
  br label %for.end, !dbg !4982

if.else:                                          ; preds = %for.cond
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4983, !tbaa !894
  %decoding_state1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 21, !dbg !4985
  %8 = load i32, i32* %decoding_state1, align 4, !dbg !4985, !tbaa !1035
  %cmp2 = icmp eq i32 %8, 1, !dbg !4986
  br i1 %cmp2, label %if.then.3, label %if.else.5, !dbg !4987

if.then.3:                                        ; preds = %if.else
  %9 = load i8*, i8** %s.addr, align 8, !dbg !4988, !tbaa !894
  %10 = load i32, i32* %size.addr, align 4, !dbg !4990, !tbaa !900
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4991, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 6, !dbg !4992
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4992, !tbaa !977
  %call4 = call i8* @Py_UniversalNewlineFgets(i8* %9, i32 %10, %struct._IO_FILE* %12, %struct._object* null), !dbg !4993
  store i8* %call4, i8** %line, align 8, !dbg !4994, !tbaa !894
  br label %for.end, !dbg !4995

if.else.5:                                        ; preds = %if.else
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !4996, !tbaa !894
  %call6 = call i32 @check_bom(i32 (%struct.tok_state*)* @fp_getc, void (i32, %struct.tok_state*)* @fp_ungetc, i32 (%struct.tok_state*, i8*)* @fp_setreadl, %struct.tok_state* %13), !dbg !4999
  %tobool = icmp ne i32 %call6, 0, !dbg !4999
  br i1 %tobool, label %if.end, label %if.then.7, !dbg !5000

if.then.7:                                        ; preds = %if.else.5
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5001, !tbaa !894
  %call8 = call i8* @error_ret(%struct.tok_state* %14), !dbg !5002
  store i8* %call8, i8** %retval, !dbg !5003
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5003

if.end:                                           ; preds = %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  br label %for.cond, !dbg !5004

for.end:                                          ; preds = %if.then.3, %if.then
  %15 = load i8*, i8** %line, align 8, !dbg !5005, !tbaa !894
  %cmp11 = icmp ne i8* %15, null, !dbg !5007
  br i1 %cmp11, label %land.lhs.true, label %if.end.22, !dbg !5008

land.lhs.true:                                    ; preds = %for.end
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5009, !tbaa !894
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 14, !dbg !5011
  %17 = load i32, i32* %lineno, align 4, !dbg !5011, !tbaa !1012
  %cmp12 = icmp slt i32 %17, 2, !dbg !5012
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.22, !dbg !5013

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5014, !tbaa !894
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 23, !dbg !5016
  %19 = load i32, i32* %read_coding_spec, align 4, !dbg !5016, !tbaa !1043
  %tobool14 = icmp ne i32 %19, 0, !dbg !5017
  br i1 %tobool14, label %if.end.22, label %if.then.15, !dbg !5018

if.then.15:                                       ; preds = %land.lhs.true.13
  %20 = load i8*, i8** %line, align 8, !dbg !5019, !tbaa !894
  %21 = load i8*, i8** %line, align 8, !dbg !5022, !tbaa !894
  %call16 = call i64 @strlen(i8* %21) #9, !dbg !5023
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5024, !tbaa !894
  %call17 = call i32 @check_coding_spec(i8* %20, i64 %call16, %struct.tok_state* %22, i32 (%struct.tok_state*, i8*)* @fp_setreadl), !dbg !5025
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5025
  br i1 %tobool18, label %if.end.21, label %if.then.19, !dbg !5026

if.then.19:                                       ; preds = %if.then.15
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5027, !tbaa !894
  %call20 = call i8* @error_ret(%struct.tok_state* %23), !dbg !5029
  store i8* %call20, i8** %retval, !dbg !5030
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5030

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.22, !dbg !5031

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.13, %land.lhs.true, %for.end
  %24 = load i8*, i8** %line, align 8, !dbg !5032, !tbaa !894
  %tobool23 = icmp ne i8* %24, null, !dbg !5032
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.34, !dbg !5033

land.lhs.true.24:                                 ; preds = %if.end.22
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5034, !tbaa !894
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 24, !dbg !5036
  %26 = load i8*, i8** %encoding, align 8, !dbg !5036, !tbaa !1051
  %tobool25 = icmp ne i8* %26, null, !dbg !5037
  br i1 %tobool25, label %if.end.34, label %if.then.26, !dbg !5038

if.then.26:                                       ; preds = %land.lhs.true.24
  %27 = bitcast i8** %c to i8*, !dbg !5039
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !5039
  call void @llvm.dbg.declare(metadata i8** %c, metadata !793, metadata !898), !dbg !5040
  %28 = bitcast i32* %length to i8*, !dbg !5041
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !5041
  call void @llvm.dbg.declare(metadata i32* %length, metadata !796, metadata !898), !dbg !5042
  %29 = load i8*, i8** %line, align 8, !dbg !5043, !tbaa !894
  store i8* %29, i8** %c, align 8, !dbg !5045, !tbaa !894
  br label %for.cond.27, !dbg !5046

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %30 = load i8*, i8** %c, align 8, !dbg !5047, !tbaa !894
  %31 = load i8, i8* %30, align 1, !dbg !5051, !tbaa !1146
  %tobool28 = icmp ne i8 %31, 0, !dbg !5052
  br i1 %tobool28, label %for.body, label %for.end.33, !dbg !5052

for.body:                                         ; preds = %for.cond.27
  %32 = load i8*, i8** %c, align 8, !dbg !5053, !tbaa !894
  %call29 = call i32 @valid_utf8(i8* %32), !dbg !5055
  store i32 %call29, i32* %length, align 4, !dbg !5056, !tbaa !900
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5056
  br i1 %tobool30, label %if.end.32, label %if.then.31, !dbg !5057

if.then.31:                                       ; preds = %for.body
  %33 = load i8*, i8** %c, align 8, !dbg !5058, !tbaa !894
  %34 = load i8, i8* %33, align 1, !dbg !5060, !tbaa !1146
  %conv = zext i8 %34 to i32, !dbg !5060
  store i32 %conv, i32* %badchar, align 4, !dbg !5061, !tbaa !900
  br label %for.end.33, !dbg !5062

if.end.32:                                        ; preds = %for.body
  br label %for.inc, !dbg !5063

for.inc:                                          ; preds = %if.end.32
  %35 = load i32, i32* %length, align 4, !dbg !5065, !tbaa !900
  %36 = load i8*, i8** %c, align 8, !dbg !5066, !tbaa !894
  %idx.ext = sext i32 %35 to i64, !dbg !5066
  %add.ptr = getelementptr i8, i8* %36, i64 %idx.ext, !dbg !5066
  store i8* %add.ptr, i8** %c, align 8, !dbg !5066, !tbaa !894
  br label %for.cond.27, !dbg !5067

for.end.33:                                       ; preds = %if.then.31, %for.cond.27
  %37 = bitcast i32* %length to i8*, !dbg !5068
  call void @llvm.lifetime.end(i64 4, i8* %37) #2, !dbg !5068
  %38 = bitcast i8** %c to i8*, !dbg !5068
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !5068
  br label %if.end.34, !dbg !5069

if.end.34:                                        ; preds = %for.end.33, %land.lhs.true.24, %if.end.22
  %39 = load i32, i32* %badchar, align 4, !dbg !5070, !tbaa !900
  %tobool35 = icmp ne i32 %39, 0, !dbg !5070
  br i1 %tobool35, label %if.then.36, label %if.end.40, !dbg !5072

if.then.36:                                       ; preds = %if.end.34
  %40 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !5073, !tbaa !894
  %41 = load i32, i32* %badchar, align 4, !dbg !5075, !tbaa !900
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5076, !tbaa !894
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %42, i32 0, i32 16, !dbg !5077
  %43 = load %struct._object*, %struct._object** %filename, align 8, !dbg !5077, !tbaa !1059
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5078, !tbaa !894
  %lineno37 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %44, i32 0, i32 14, !dbg !5079
  %45 = load i32, i32* %lineno37, align 4, !dbg !5079, !tbaa !1012
  %add = add i32 %45, 1, !dbg !5080
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %40, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.69, i32 0, i32 0), i32 %41, %struct._object* %43, i32 %add), !dbg !5081
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5082, !tbaa !894
  %call39 = call i8* @error_ret(%struct.tok_state* %46), !dbg !5083
  store i8* %call39, i8** %retval, !dbg !5084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5084

if.end.40:                                        ; preds = %if.end.34
  %47 = load i8*, i8** %line, align 8, !dbg !5085, !tbaa !894
  store i8* %47, i8** %retval, !dbg !5086
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5086

cleanup:                                          ; preds = %if.end.40, %if.then.36, %if.then.19, %if.then.7
  %48 = bitcast i32* %badchar to i8*, !dbg !5087
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !5087
  %49 = bitcast i8** %line to i8*, !dbg !5087
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !5087
  %50 = load i8*, i8** %retval, !dbg !5087
  ret i8* %50, !dbg !5087
}

; Function Attrs: nounwind uwtable
define internal i32 @decoding_feof(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %buf = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !857, metadata !898), !dbg !5088
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5089, !tbaa !894
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 21, !dbg !5090
  %1 = load i32, i32* %decoding_state, align 4, !dbg !5090, !tbaa !1035
  %cmp = icmp ne i32 %1, 2, !dbg !5091
  br i1 %cmp, label %if.then, label %if.else, !dbg !5092

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5093, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 6, !dbg !5095
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5095, !tbaa !977
  %call = call i32 @feof(%struct._IO_FILE* %3) #2, !dbg !5096
  store i32 %call, i32* %retval, !dbg !5097
  br label %return, !dbg !5097

if.else:                                          ; preds = %entry
  %4 = bitcast %struct._object** %buf to i8*, !dbg !5098
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5098
  call void @llvm.dbg.declare(metadata %struct._object** %buf, metadata !858, metadata !898), !dbg !5099
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5100, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 28, !dbg !5101
  %6 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !5101, !tbaa !1067
  store %struct._object* %6, %struct._object** %buf, align 8, !dbg !5099, !tbaa !894
  %7 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5102, !tbaa !894
  %cmp1 = icmp eq %struct._object* %7, null, !dbg !5104
  br i1 %cmp1, label %if.then.2, label %if.end.9, !dbg !5105

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5106, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 27, !dbg !5108
  %9 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5108, !tbaa !1063
  %call3 = call %struct._object* @PyObject_CallObject(%struct._object* %9, %struct._object* null), !dbg !5109
  store %struct._object* %call3, %struct._object** %buf, align 8, !dbg !5110, !tbaa !894
  %10 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5111, !tbaa !894
  %cmp4 = icmp eq %struct._object* %10, null, !dbg !5113
  br i1 %cmp4, label %if.then.5, label %if.else.7, !dbg !5114

if.then.5:                                        ; preds = %if.then.2
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5115, !tbaa !894
  %call6 = call i8* @error_ret(%struct.tok_state* %11), !dbg !5117
  store i32 1, i32* %retval, !dbg !5118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5118

if.else.7:                                        ; preds = %if.then.2
  %12 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5119, !tbaa !894
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5121, !tbaa !894
  %decoding_buffer8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 28, !dbg !5122
  store %struct._object* %12, %struct._object** %decoding_buffer8, align 8, !dbg !5123, !tbaa !1067
  br label %if.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.9, !dbg !5124

if.end.9:                                         ; preds = %if.end, %if.else
  %14 = load %struct._object*, %struct._object** %buf, align 8, !dbg !5125, !tbaa !894
  %call10 = call i64 @PyObject_Size(%struct._object* %14), !dbg !5126
  %cmp11 = icmp eq i64 %call10, 0, !dbg !5127
  %conv = zext i1 %cmp11 to i32, !dbg !5127
  store i32 %conv, i32* %retval, !dbg !5128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5128

cleanup:                                          ; preds = %if.end.9, %if.then.5
  %15 = bitcast %struct._object** %buf to i8*, !dbg !5129
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !5129
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %16 = load i32, i32* %retval, !dbg !5130
  ret i32 %16, !dbg !5130
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !799, metadata !898), !dbg !5131
  store i32 %size, i32* %size.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !800, metadata !898), !dbg !5132
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !801, metadata !898), !dbg !5133
  %0 = bitcast %struct._object** %bufobj to i8*, !dbg !5134
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5134
  call void @llvm.dbg.declare(metadata %struct._object** %bufobj, metadata !802, metadata !898), !dbg !5135
  %1 = bitcast i8** %buf to i8*, !dbg !5136
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5136
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !803, metadata !898), !dbg !5137
  %2 = bitcast i64* %buflen to i8*, !dbg !5138
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5138
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !804, metadata !898), !dbg !5139
  %3 = load i32, i32* %size.addr, align 4, !dbg !5140, !tbaa !900
  %dec = add i32 %3, -1, !dbg !5140
  store i32 %dec, i32* %size.addr, align 4, !dbg !5140, !tbaa !900
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5141, !tbaa !894
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 28, !dbg !5143
  %5 = load %struct._object*, %struct._object** %decoding_buffer, align 8, !dbg !5143, !tbaa !1067
  %tobool = icmp ne %struct._object* %5, null, !dbg !5141
  br i1 %tobool, label %if.then, label %if.else, !dbg !5144

if.then:                                          ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5145, !tbaa !894
  %decoding_buffer1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 28, !dbg !5147
  %7 = load %struct._object*, %struct._object** %decoding_buffer1, align 8, !dbg !5147, !tbaa !1067
  store %struct._object* %7, %struct._object** %bufobj, align 8, !dbg !5148, !tbaa !894
  %8 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5149, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !5150
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !5151, !tbaa !1277
  %inc = add i64 %9, 1, !dbg !5151
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !5151, !tbaa !1277
  br label %if.end.3, !dbg !5152

if.else:                                          ; preds = %entry
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5153, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 27, !dbg !5155
  %11 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5155, !tbaa !1063
  %call = call %struct._object* @PyObject_CallObject(%struct._object* %11, %struct._object* null), !dbg !5156
  store %struct._object* %call, %struct._object** %bufobj, align 8, !dbg !5157, !tbaa !894
  %12 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5158, !tbaa !894
  %cmp = icmp eq %struct._object* %12, null, !dbg !5160
  br i1 %cmp, label %if.then.2, label %if.end, !dbg !5161

if.then.2:                                        ; preds = %if.else
  br label %error, !dbg !5162

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5163, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5165
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5165, !tbaa !1287
  %cmp4 = icmp eq %struct._typeobject* %14, @PyUnicode_Type, !dbg !5166
  br i1 %cmp4, label %if.then.5, label %if.else.10, !dbg !5167

if.then.5:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5168, !tbaa !894
  %call6 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %15, i64* %buflen), !dbg !5170
  store i8* %call6, i8** %buf, align 8, !dbg !5171, !tbaa !894
  %16 = load i8*, i8** %buf, align 8, !dbg !5172, !tbaa !894
  %cmp7 = icmp eq i8* %16, null, !dbg !5174
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !5175

if.then.8:                                        ; preds = %if.then.5
  br label %error, !dbg !5176

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.15, !dbg !5178

if.else.10:                                       ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5179, !tbaa !894
  %call11 = call i8* @PyByteArray_AsString(%struct._object* %17), !dbg !5181
  store i8* %call11, i8** %buf, align 8, !dbg !5182, !tbaa !894
  %18 = load i8*, i8** %buf, align 8, !dbg !5183, !tbaa !894
  %cmp12 = icmp eq i8* %18, null, !dbg !5185
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !5186

if.then.13:                                       ; preds = %if.else.10
  br label %error, !dbg !5187

if.end.14:                                        ; preds = %if.else.10
  %19 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5189, !tbaa !894
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*, !dbg !5190
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1, !dbg !5191
  %21 = load i64, i64* %ob_size, align 8, !dbg !5191, !tbaa !4291
  store i64 %21, i64* %buflen, align 8, !dbg !5192, !tbaa !1484
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.9
  br label %do.body, !dbg !5193

do.body:                                          ; preds = %if.end.15
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5194
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !5194
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !805, metadata !898), !dbg !5196
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5197, !tbaa !894
  %decoding_buffer16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 28, !dbg !5198
  %24 = load %struct._object*, %struct._object** %decoding_buffer16, align 8, !dbg !5198, !tbaa !1067
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5196, !tbaa !894
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5199, !tbaa !894
  %cmp17 = icmp ne %struct._object* %25, null, !dbg !5200
  br i1 %cmp17, label %if.then.18, label %if.end.27, !dbg !5201

if.then.18:                                       ; preds = %do.body
  br label %do.body.19, !dbg !5202

do.body.19:                                       ; preds = %if.then.18
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5204
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !5204
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !807, metadata !898), !dbg !5206
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5207, !tbaa !894
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !5206, !tbaa !894
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5208, !tbaa !894
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !5210
  %29 = load i64, i64* %ob_refcnt20, align 8, !dbg !5211, !tbaa !1277
  %dec21 = add i64 %29, -1, !dbg !5211
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !5211, !tbaa !1277
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !5212
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !5213

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.26, !dbg !5214

if.else.24:                                       ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5216, !tbaa !894
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !5218
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !5218, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !5219
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5219, !tbaa !1289
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5220, !tbaa !894
  call void %32(%struct._object* %33), !dbg !5221
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5222
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !5222
  br label %do.cond, !dbg !5224

do.cond:                                          ; preds = %if.end.26
  br label %do.end, !dbg !5225

do.end:                                           ; preds = %do.cond
  br label %if.end.27, !dbg !5227

if.end.27:                                        ; preds = %do.end, %do.body
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5229
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !5229
  br label %do.cond.28, !dbg !5232

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !5233

do.end.29:                                        ; preds = %do.cond.28
  %36 = load i64, i64* %buflen, align 8, !dbg !5235, !tbaa !1484
  %37 = load i32, i32* %size.addr, align 4, !dbg !5237, !tbaa !900
  %conv = sext i32 %37 to i64, !dbg !5237
  %cmp30 = icmp sgt i64 %36, %conv, !dbg !5238
  br i1 %cmp30, label %if.then.32, label %if.else.42, !dbg !5239

if.then.32:                                       ; preds = %do.end.29
  %38 = load i8*, i8** %buf, align 8, !dbg !5240, !tbaa !894
  %39 = load i32, i32* %size.addr, align 4, !dbg !5242, !tbaa !900
  %idx.ext = sext i32 %39 to i64, !dbg !5243
  %add.ptr = getelementptr i8, i8* %38, i64 %idx.ext, !dbg !5243
  %40 = load i64, i64* %buflen, align 8, !dbg !5244, !tbaa !1484
  %41 = load i32, i32* %size.addr, align 4, !dbg !5245, !tbaa !900
  %conv33 = sext i32 %41 to i64, !dbg !5245
  %sub = sub i64 %40, %conv33, !dbg !5246
  %call34 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub), !dbg !5247
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5248, !tbaa !894
  %decoding_buffer35 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %42, i32 0, i32 28, !dbg !5249
  store %struct._object* %call34, %struct._object** %decoding_buffer35, align 8, !dbg !5250, !tbaa !1067
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5251, !tbaa !894
  %decoding_buffer36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %43, i32 0, i32 28, !dbg !5253
  %44 = load %struct._object*, %struct._object** %decoding_buffer36, align 8, !dbg !5253, !tbaa !1067
  %cmp37 = icmp eq %struct._object* %44, null, !dbg !5254
  br i1 %cmp37, label %if.then.39, label %if.end.40, !dbg !5255

if.then.39:                                       ; preds = %if.then.32
  br label %error, !dbg !5256

if.end.40:                                        ; preds = %if.then.32
  %45 = load i32, i32* %size.addr, align 4, !dbg !5257, !tbaa !900
  %conv41 = sext i32 %45 to i64, !dbg !5257
  store i64 %conv41, i64* %buflen, align 8, !dbg !5258, !tbaa !1484
  br label %if.end.44, !dbg !5259

if.else.42:                                       ; preds = %do.end.29
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5260, !tbaa !894
  %decoding_buffer43 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %46, i32 0, i32 28, !dbg !5261
  store %struct._object* null, %struct._object** %decoding_buffer43, align 8, !dbg !5262, !tbaa !1067
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.end.40
  %47 = load i8*, i8** %s.addr, align 8, !dbg !5263, !tbaa !894
  %48 = load i8*, i8** %buf, align 8, !dbg !5264, !tbaa !894
  %49 = load i64, i64* %buflen, align 8, !dbg !5265, !tbaa !1484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 %49, i32 1, i1 false), !dbg !5266
  %50 = load i64, i64* %buflen, align 8, !dbg !5267, !tbaa !1484
  %51 = load i8*, i8** %s.addr, align 8, !dbg !5268, !tbaa !894
  %arrayidx = getelementptr i8, i8* %51, i64 %50, !dbg !5268
  store i8 0, i8* %arrayidx, align 1, !dbg !5269, !tbaa !1146
  %52 = load i64, i64* %buflen, align 8, !dbg !5270, !tbaa !1484
  %cmp45 = icmp eq i64 %52, 0, !dbg !5272
  br i1 %cmp45, label %if.then.47, label %if.end.48, !dbg !5273

if.then.47:                                       ; preds = %if.end.44
  store i8* null, i8** %s.addr, align 8, !dbg !5274, !tbaa !894
  br label %if.end.48, !dbg !5275

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  br label %do.body.49, !dbg !5276

do.body.49:                                       ; preds = %if.end.48
  %53 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5277
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !5277
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !810, metadata !898), !dbg !5279
  %54 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5280, !tbaa !894
  store %struct._object* %54, %struct._object** %_py_decref_tmp50, align 8, !dbg !5279, !tbaa !894
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5281, !tbaa !894
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !5283
  %56 = load i64, i64* %ob_refcnt51, align 8, !dbg !5284, !tbaa !1277
  %dec52 = add i64 %56, -1, !dbg !5284
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !5284, !tbaa !1277
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !5285
  br i1 %cmp53, label %if.then.55, label %if.else.56, !dbg !5286

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59, !dbg !5287

if.else.56:                                       ; preds = %do.body.49
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5289, !tbaa !894
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !5291
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !5291, !tbaa !1287
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !5292
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !5292, !tbaa !1289
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5293, !tbaa !894
  call void %59(%struct._object* %60), !dbg !5294
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %61 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5295
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !5295
  br label %do.cond.60, !dbg !5297

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !5298

do.end.61:                                        ; preds = %do.cond.60
  %62 = load i8*, i8** %s.addr, align 8, !dbg !5300, !tbaa !894
  store i8* %62, i8** %retval, !dbg !5301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5301

error:                                            ; preds = %if.then.39, %if.then.13, %if.then.8, %if.then.2
  br label %do.body.62, !dbg !5302

do.body.62:                                       ; preds = %error
  %63 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !5303
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !5303
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp63, metadata !812, metadata !898), !dbg !5305
  %64 = load %struct._object*, %struct._object** %bufobj, align 8, !dbg !5306, !tbaa !894
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5305, !tbaa !894
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5307, !tbaa !894
  %cmp64 = icmp ne %struct._object* %65, null, !dbg !5308
  br i1 %cmp64, label %if.then.66, label %if.end.80, !dbg !5309

if.then.66:                                       ; preds = %do.body.62
  br label %do.body.67, !dbg !5310

do.body.67:                                       ; preds = %if.then.66
  %66 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !5312
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !5312
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !814, metadata !898), !dbg !5314
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !5315, !tbaa !894
  store %struct._object* %67, %struct._object** %_py_decref_tmp68, align 8, !dbg !5314, !tbaa !894
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5316, !tbaa !894
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !5318
  %69 = load i64, i64* %ob_refcnt69, align 8, !dbg !5319, !tbaa !1277
  %dec70 = add i64 %69, -1, !dbg !5319
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !5319, !tbaa !1277
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !5320
  br i1 %cmp71, label %if.then.73, label %if.else.74, !dbg !5321

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77, !dbg !5322

if.else.74:                                       ; preds = %do.body.67
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5324, !tbaa !894
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !5326
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !5326, !tbaa !1287
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !5327
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !5327, !tbaa !1289
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !5328, !tbaa !894
  call void %72(%struct._object* %73), !dbg !5329
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %74 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !5330
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !5330
  br label %do.cond.78, !dbg !5332

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !5333

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80, !dbg !5335

if.end.80:                                        ; preds = %do.end.79, %do.body.62
  %75 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !5337
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !5337
  br label %do.cond.81, !dbg !5338

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !5339

do.end.82:                                        ; preds = %do.cond.81
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5341, !tbaa !894
  %call83 = call i8* @error_ret(%struct.tok_state* %76), !dbg !5342
  store i8* %call83, i8** %retval, !dbg !5343
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5343

cleanup:                                          ; preds = %do.end.82, %do.end.61
  %77 = bitcast i64* %buflen to i8*, !dbg !5344
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !5344
  %78 = bitcast i8** %buf to i8*, !dbg !5344
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !5344
  %79 = bitcast %struct._object** %bufobj to i8*, !dbg !5344
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !5344
  %80 = load i8*, i8** %retval, !dbg !5344
  ret i8* %80, !dbg !5344
}

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fp_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !819, metadata !898), !dbg !5345
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5346, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 6, !dbg !5347
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5347, !tbaa !977
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1), !dbg !5348
  ret i32 %call, !dbg !5349
}

; Function Attrs: nounwind uwtable
define internal void @fp_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !900
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !822, metadata !898), !dbg !5350
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !823, metadata !898), !dbg !5351
  %0 = load i32, i32* %c.addr, align 4, !dbg !5352, !tbaa !900
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5353, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6, !dbg !5354
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5354, !tbaa !977
  %call = call i32 @ungetc(i32 %0, %struct._IO_FILE* %2), !dbg !5355
  ret void, !dbg !5356
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
  call void @llvm.dbg.declare(metadata %struct.tok_state** %tok.addr, metadata !826, metadata !898), !dbg !5357
  store i8* %enc, i8** %enc.addr, align 8, !tbaa !894
  call void @llvm.dbg.declare(metadata i8** %enc.addr, metadata !827, metadata !898), !dbg !5358
  %0 = bitcast %struct._object** %readline to i8*, !dbg !5359
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5359
  call void @llvm.dbg.declare(metadata %struct._object** %readline, metadata !828, metadata !898), !dbg !5360
  store %struct._object* null, %struct._object** %readline, align 8, !dbg !5360, !tbaa !894
  %1 = bitcast %struct._object** %stream to i8*, !dbg !5359
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5359
  call void @llvm.dbg.declare(metadata %struct._object** %stream, metadata !829, metadata !898), !dbg !5361
  store %struct._object* null, %struct._object** %stream, align 8, !dbg !5361, !tbaa !894
  %2 = bitcast %struct._object** %io to i8*, !dbg !5359
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5359
  call void @llvm.dbg.declare(metadata %struct._object** %io, metadata !830, metadata !898), !dbg !5362
  store %struct._object* null, %struct._object** %io, align 8, !dbg !5362, !tbaa !894
  %3 = bitcast i32* %fd to i8*, !dbg !5363
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !5363
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !831, metadata !898), !dbg !5364
  %4 = bitcast i64* %pos to i8*, !dbg !5365
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5365
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !832, metadata !898), !dbg !5366
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)), !dbg !5367
  store %struct._object* %call, %struct._object** %io, align 8, !dbg !5368, !tbaa !894
  %5 = load %struct._object*, %struct._object** %io, align 8, !dbg !5369, !tbaa !894
  %cmp = icmp eq %struct._object* %5, null, !dbg !5371
  br i1 %cmp, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !5373

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5374, !tbaa !894
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 6, !dbg !5375
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5375, !tbaa !977
  %call1 = call i32 @fileno(%struct._IO_FILE* %7) #2, !dbg !5376
  store i32 %call1, i32* %fd, align 4, !dbg !5377, !tbaa !900
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5378, !tbaa !894
  %fp2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 6, !dbg !5379
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8, !dbg !5379, !tbaa !977
  %call3 = call i64 @ftell(%struct._IO_FILE* %9), !dbg !5380
  store i64 %call3, i64* %pos, align 8, !dbg !5381, !tbaa !1484
  %10 = load i64, i64* %pos, align 8, !dbg !5382, !tbaa !1484
  %cmp4 = icmp eq i64 %10, -1, !dbg !5384
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false, !dbg !5385

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %fd, align 4, !dbg !5386, !tbaa !900
  %12 = load i64, i64* %pos, align 8, !dbg !5387, !tbaa !1484
  %cmp5 = icmp sgt i64 %12, 0, !dbg !5388
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5387

cond.true:                                        ; preds = %lor.lhs.false
  %13 = load i64, i64* %pos, align 8, !dbg !5389, !tbaa !1484
  %sub = sub i64 %13, 1, !dbg !5391
  br label %cond.end, !dbg !5387

cond.false:                                       ; preds = %lor.lhs.false
  %14 = load i64, i64* %pos, align 8, !dbg !5392, !tbaa !1484
  br label %cond.end, !dbg !5387

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %14, %cond.false ], !dbg !5387
  %call6 = call i64 @lseek64(i32 %11, i64 %cond, i32 0) #2, !dbg !5394
  %cmp7 = icmp eq i64 %call6, -1, !dbg !5397
  br i1 %cmp7, label %if.then.8, label %if.end.10, !dbg !5398

if.then.8:                                        ; preds = %cond.end, %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !5399, !tbaa !894
  %call9 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %15, i8* null), !dbg !5401
  br label %cleanup, !dbg !5402

if.end.10:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %io, align 8, !dbg !5403, !tbaa !894
  %17 = load i32, i32* %fd, align 4, !dbg !5404, !tbaa !900
  %18 = load i8*, i8** %enc.addr, align 8, !dbg !5405, !tbaa !894
  %call11 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %16, %struct._Py_Identifier* @fp_setreadl.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 -1, i8* %18, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)), !dbg !5406
  store %struct._object* %call11, %struct._object** %stream, align 8, !dbg !5407, !tbaa !894
  %19 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5408, !tbaa !894
  %cmp12 = icmp eq %struct._object* %19, null, !dbg !5410
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !5411

if.then.13:                                       ; preds = %if.end.10
  br label %cleanup, !dbg !5412

if.end.14:                                        ; preds = %if.end.10
  br label %do.body, !dbg !5413

do.body:                                          ; preds = %if.end.14
  %20 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5414
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !5414
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !833, metadata !898), !dbg !5416
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5417, !tbaa !894
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 27, !dbg !5418
  %22 = load %struct._object*, %struct._object** %decoding_readline, align 8, !dbg !5418, !tbaa !1063
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5416, !tbaa !894
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5419, !tbaa !894
  %cmp15 = icmp ne %struct._object* %23, null, !dbg !5420
  br i1 %cmp15, label %if.then.16, label %if.end.21, !dbg !5421

if.then.16:                                       ; preds = %do.body
  br label %do.body.17, !dbg !5422

do.body.17:                                       ; preds = %if.then.16
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5424
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !5424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !835, metadata !898), !dbg !5426
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5427, !tbaa !894
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !5426, !tbaa !894
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5428, !tbaa !894
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !5430
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !5431, !tbaa !1277
  %dec = add i64 %27, -1, !dbg !5431
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5431, !tbaa !1277
  %cmp18 = icmp ne i64 %dec, 0, !dbg !5432
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !5433

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.20, !dbg !5434

if.else:                                          ; preds = %do.body.17
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5436, !tbaa !894
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !5438
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5438, !tbaa !1287
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !5439
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5439, !tbaa !1289
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5440, !tbaa !894
  call void %30(%struct._object* %31), !dbg !5441
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5442
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !5442
  br label %do.cond, !dbg !5444

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !5445

do.end:                                           ; preds = %do.cond
  br label %if.end.21, !dbg !5447

if.end.21:                                        ; preds = %do.end, %do.body
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5449
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !5449
  br label %do.cond.22, !dbg !5452

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !5453

do.end.23:                                        ; preds = %do.cond.22
  %34 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5455, !tbaa !894
  %call24 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %34, %struct._Py_Identifier* @fp_setreadl.PyId_readline), !dbg !5456
  store %struct._object* %call24, %struct._object** %readline, align 8, !dbg !5457, !tbaa !894
  %35 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5458, !tbaa !894
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8, !dbg !5459, !tbaa !894
  %decoding_readline25 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 27, !dbg !5460
  store %struct._object* %35, %struct._object** %decoding_readline25, align 8, !dbg !5461, !tbaa !1063
  %37 = load i64, i64* %pos, align 8, !dbg !5462, !tbaa !1484
  %cmp26 = icmp sgt i64 %37, 0, !dbg !5464
  br i1 %cmp26, label %if.then.27, label %if.end.32, !dbg !5465

if.then.27:                                       ; preds = %do.end.23
  %38 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5466, !tbaa !894
  %call28 = call %struct._object* @PyObject_CallObject(%struct._object* %38, %struct._object* null), !dbg !5469
  %cmp29 = icmp eq %struct._object* %call28, null, !dbg !5470
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !5471

if.then.30:                                       ; preds = %if.then.27
  store %struct._object* null, %struct._object** %readline, align 8, !dbg !5472, !tbaa !894
  br label %cleanup, !dbg !5474

if.end.31:                                        ; preds = %if.then.27
  br label %if.end.32, !dbg !5475

if.end.32:                                        ; preds = %if.end.31, %do.end.23
  br label %cleanup, !dbg !5476

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.then.13, %if.then.8, %if.then
  br label %do.body.33, !dbg !5478

do.body.33:                                       ; preds = %cleanup
  %39 = bitcast %struct._object** %_py_xdecref_tmp34 to i8*, !dbg !5479
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !5479
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp34, metadata !838, metadata !898), !dbg !5481
  %40 = load %struct._object*, %struct._object** %stream, align 8, !dbg !5482, !tbaa !894
  store %struct._object* %40, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5481, !tbaa !894
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5483, !tbaa !894
  %cmp35 = icmp ne %struct._object* %41, null, !dbg !5484
  br i1 %cmp35, label %if.then.36, label %if.end.49, !dbg !5485

if.then.36:                                       ; preds = %do.body.33
  br label %do.body.37, !dbg !5486

do.body.37:                                       ; preds = %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !5488
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !5488
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !840, metadata !898), !dbg !5490
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8, !dbg !5491, !tbaa !894
  store %struct._object* %43, %struct._object** %_py_decref_tmp38, align 8, !dbg !5490, !tbaa !894
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5492, !tbaa !894
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !5494
  %45 = load i64, i64* %ob_refcnt39, align 8, !dbg !5495, !tbaa !1277
  %dec40 = add i64 %45, -1, !dbg !5495
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !5495, !tbaa !1277
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !5496
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !5497

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !5498

if.else.43:                                       ; preds = %do.body.37
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5500, !tbaa !894
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !5502
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !5502, !tbaa !1287
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !5503
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !5503, !tbaa !1289
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !5504, !tbaa !894
  call void %48(%struct._object* %49), !dbg !5505
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %50 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !5506
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !5506
  br label %do.cond.47, !dbg !5508

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !5509

do.end.48:                                        ; preds = %do.cond.47
  br label %if.end.49, !dbg !5511

if.end.49:                                        ; preds = %do.end.48, %do.body.33
  %51 = bitcast %struct._object** %_py_xdecref_tmp34 to i8*, !dbg !5513
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !5513
  br label %do.cond.50, !dbg !5514

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !5515

do.end.51:                                        ; preds = %do.cond.50
  br label %do.body.52, !dbg !5517

do.body.52:                                       ; preds = %do.end.51
  %52 = bitcast %struct._object** %_py_xdecref_tmp53 to i8*, !dbg !5518
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !5518
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp53, metadata !843, metadata !898), !dbg !5520
  %53 = load %struct._object*, %struct._object** %io, align 8, !dbg !5521, !tbaa !894
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5520, !tbaa !894
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5522, !tbaa !894
  %cmp54 = icmp ne %struct._object* %54, null, !dbg !5523
  br i1 %cmp54, label %if.then.55, label %if.end.68, !dbg !5524

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56, !dbg !5525

do.body.56:                                       ; preds = %if.then.55
  %55 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !5527
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !5527
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !845, metadata !898), !dbg !5529
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8, !dbg !5530, !tbaa !894
  store %struct._object* %56, %struct._object** %_py_decref_tmp57, align 8, !dbg !5529, !tbaa !894
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5531, !tbaa !894
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !5533
  %58 = load i64, i64* %ob_refcnt58, align 8, !dbg !5534, !tbaa !1277
  %dec59 = add i64 %58, -1, !dbg !5534
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !5534, !tbaa !1277
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !5535
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !5536

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !5537

if.else.62:                                       ; preds = %do.body.56
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5539, !tbaa !894
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !5541
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !5541, !tbaa !1287
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !5542
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !5542, !tbaa !1289
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !5543, !tbaa !894
  call void %61(%struct._object* %62), !dbg !5544
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %63 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !5545
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !5545
  br label %do.cond.66, !dbg !5547

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !5548

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68, !dbg !5550

if.end.68:                                        ; preds = %do.end.67, %do.body.52
  %64 = bitcast %struct._object** %_py_xdecref_tmp53 to i8*, !dbg !5552
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !5552
  br label %do.cond.69, !dbg !5553

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !5554

do.end.70:                                        ; preds = %do.cond.69
  %65 = load %struct._object*, %struct._object** %readline, align 8, !dbg !5556, !tbaa !894
  %cmp71 = icmp ne %struct._object* %65, null, !dbg !5557
  %conv = zext i1 %cmp71 to i32, !dbg !5557
  %66 = bitcast i64* %pos to i8*, !dbg !5558
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !5558
  %67 = bitcast i32* %fd to i8*, !dbg !5558
  call void @llvm.lifetime.end(i64 4, i8* %67) #2, !dbg !5558
  %68 = bitcast %struct._object** %io to i8*, !dbg !5558
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !5558
  %69 = bitcast %struct._object** %stream to i8*, !dbg !5558
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !5558
  %70 = bitcast %struct._object** %readline to i8*, !dbg !5558
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !5558
  ret i32 %conv, !dbg !5559
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
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !852, metadata !898), !dbg !5560
  %0 = bitcast i32* %expected to i8*, !dbg !5561
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !5561
  call void @llvm.dbg.declare(metadata i32* %expected, metadata !853, metadata !898), !dbg !5562
  store i32 0, i32* %expected, align 4, !dbg !5562, !tbaa !900
  %1 = bitcast i32* %length to i8*, !dbg !5563
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !5563
  call void @llvm.dbg.declare(metadata i32* %length, metadata !854, metadata !898), !dbg !5564
  %2 = load i8*, i8** %s.addr, align 8, !dbg !5565, !tbaa !894
  %3 = load i8, i8* %2, align 1, !dbg !5567, !tbaa !1146
  %conv = zext i8 %3 to i32, !dbg !5567
  %cmp = icmp slt i32 %conv, 128, !dbg !5568
  br i1 %cmp, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !5570
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5570

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !5571, !tbaa !894
  %5 = load i8, i8* %4, align 1, !dbg !5573, !tbaa !1146
  %conv2 = zext i8 %5 to i32, !dbg !5573
  %cmp3 = icmp slt i32 %conv2, 192, !dbg !5574
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !5575

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval, !dbg !5576
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5576

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8, !dbg !5577, !tbaa !894
  %7 = load i8, i8* %6, align 1, !dbg !5579, !tbaa !1146
  %conv7 = zext i8 %7 to i32, !dbg !5579
  %cmp8 = icmp slt i32 %conv7, 224, !dbg !5580
  br i1 %cmp8, label %if.then.10, label %if.else, !dbg !5581

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %expected, align 4, !dbg !5582, !tbaa !900
  br label %if.end.23, !dbg !5583

if.else:                                          ; preds = %if.end.6
  %8 = load i8*, i8** %s.addr, align 8, !dbg !5584, !tbaa !894
  %9 = load i8, i8* %8, align 1, !dbg !5586, !tbaa !1146
  %conv11 = zext i8 %9 to i32, !dbg !5586
  %cmp12 = icmp slt i32 %conv11, 240, !dbg !5587
  br i1 %cmp12, label %if.then.14, label %if.else.15, !dbg !5588

if.then.14:                                       ; preds = %if.else
  store i32 2, i32* %expected, align 4, !dbg !5589, !tbaa !900
  br label %if.end.22, !dbg !5590

if.else.15:                                       ; preds = %if.else
  %10 = load i8*, i8** %s.addr, align 8, !dbg !5591, !tbaa !894
  %11 = load i8, i8* %10, align 1, !dbg !5593, !tbaa !1146
  %conv16 = zext i8 %11 to i32, !dbg !5593
  %cmp17 = icmp slt i32 %conv16, 248, !dbg !5594
  br i1 %cmp17, label %if.then.19, label %if.else.20, !dbg !5595

if.then.19:                                       ; preds = %if.else.15
  store i32 3, i32* %expected, align 4, !dbg !5596, !tbaa !900
  br label %if.end.21, !dbg !5597

if.else.20:                                       ; preds = %if.else.15
  store i32 0, i32* %retval, !dbg !5598
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5598

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  %12 = load i32, i32* %expected, align 4, !dbg !5599, !tbaa !900
  %add = add i32 %12, 1, !dbg !5600
  store i32 %add, i32* %length, align 4, !dbg !5601, !tbaa !900
  br label %for.cond, !dbg !5602

for.cond:                                         ; preds = %for.inc, %if.end.23
  %13 = load i32, i32* %expected, align 4, !dbg !5603, !tbaa !900
  %tobool = icmp ne i32 %13, 0, !dbg !5608
  br i1 %tobool, label %for.body, label %for.end, !dbg !5608

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %expected, align 4, !dbg !5609, !tbaa !900
  %idxprom = sext i32 %14 to i64, !dbg !5611
  %15 = load i8*, i8** %s.addr, align 8, !dbg !5611, !tbaa !894
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !5611
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5611, !tbaa !1146
  %conv24 = zext i8 %16 to i32, !dbg !5611
  %cmp25 = icmp slt i32 %conv24, 128, !dbg !5612
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false, !dbg !5613

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %expected, align 4, !dbg !5614, !tbaa !900
  %idxprom27 = sext i32 %17 to i64, !dbg !5616
  %18 = load i8*, i8** %s.addr, align 8, !dbg !5616, !tbaa !894
  %arrayidx28 = getelementptr i8, i8* %18, i64 %idxprom27, !dbg !5616
  %19 = load i8, i8* %arrayidx28, align 1, !dbg !5616, !tbaa !1146
  %conv29 = zext i8 %19 to i32, !dbg !5616
  %cmp30 = icmp sge i32 %conv29, 192, !dbg !5617
  br i1 %cmp30, label %if.then.32, label %if.end.33, !dbg !5618

if.then.32:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval, !dbg !5619
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5619

if.end.33:                                        ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5620

for.inc:                                          ; preds = %if.end.33
  %20 = load i32, i32* %expected, align 4, !dbg !5622, !tbaa !900
  %dec = add i32 %20, -1, !dbg !5622
  store i32 %dec, i32* %expected, align 4, !dbg !5622, !tbaa !900
  br label %for.cond, !dbg !5623

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %length, align 4, !dbg !5624, !tbaa !900
  store i32 %21, i32* %retval, !dbg !5625
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5625

cleanup:                                          ; preds = %for.end, %if.then.32, %if.else.20, %if.then.5, %if.then
  %22 = bitcast i32* %length to i8*, !dbg !5626
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !5626
  %23 = bitcast i32* %expected to i8*, !dbg !5626
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !5626
  %24 = load i32, i32* %retval, !dbg !5626
  ret i32 %24, !dbg !5626
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
!1668 = !DILocation(line: 1111, column: 5, scope: !480)
!1669 = !DILocation(line: 1112, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !480, file: !439, line: 1111, column: 16)
!1671 = !DILocation(line: 1113, column: 15, scope: !1670)
!1672 = !DILocation(line: 1114, column: 15, scope: !1670)
!1673 = !DILocation(line: 1115, column: 15, scope: !1670)
!1674 = !DILocation(line: 1116, column: 15, scope: !1670)
!1675 = !DILocation(line: 1117, column: 15, scope: !1670)
!1676 = !DILocation(line: 1118, column: 15, scope: !1670)
!1677 = !DILocation(line: 1119, column: 15, scope: !1670)
!1678 = !DILocation(line: 1120, column: 15, scope: !1670)
!1679 = !DILocation(line: 1121, column: 15, scope: !1670)
!1680 = !DILocation(line: 1122, column: 15, scope: !1670)
!1681 = !DILocation(line: 1123, column: 15, scope: !1670)
!1682 = !DILocation(line: 1124, column: 15, scope: !1670)
!1683 = !DILocation(line: 1125, column: 15, scope: !1670)
!1684 = !DILocation(line: 1126, column: 15, scope: !1670)
!1685 = !DILocation(line: 1127, column: 15, scope: !1670)
!1686 = !DILocation(line: 1128, column: 15, scope: !1670)
!1687 = !DILocation(line: 1129, column: 15, scope: !1670)
!1688 = !DILocation(line: 1130, column: 15, scope: !1670)
!1689 = !DILocation(line: 1131, column: 15, scope: !1670)
!1690 = !DILocation(line: 1132, column: 15, scope: !1670)
!1691 = !DILocation(line: 1133, column: 15, scope: !1670)
!1692 = !DILocation(line: 1134, column: 15, scope: !1670)
!1693 = !DILocation(line: 1135, column: 14, scope: !1670)
!1694 = !DILocation(line: 1137, column: 1, scope: !480)
!1695 = !DILocation(line: 1141, column: 22, scope: !485)
!1696 = !DILocation(line: 1141, column: 30, scope: !485)
!1697 = !DILocation(line: 1143, column: 13, scope: !485)
!1698 = !DILocation(line: 1143, column: 5, scope: !485)
!1699 = !DILocation(line: 1145, column: 17, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !485, file: !439, line: 1143, column: 17)
!1701 = !DILocation(line: 1145, column: 9, scope: !1700)
!1702 = !DILocation(line: 1146, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1145, column: 21)
!1704 = !DILocation(line: 1148, column: 9, scope: !1700)
!1705 = !DILocation(line: 1150, column: 17, scope: !1700)
!1706 = !DILocation(line: 1150, column: 9, scope: !1700)
!1707 = !DILocation(line: 1151, column: 19, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1150, column: 21)
!1709 = !DILocation(line: 1153, column: 9, scope: !1700)
!1710 = !DILocation(line: 1155, column: 17, scope: !1700)
!1711 = !DILocation(line: 1155, column: 9, scope: !1700)
!1712 = !DILocation(line: 1156, column: 19, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1155, column: 21)
!1714 = !DILocation(line: 1157, column: 19, scope: !1713)
!1715 = !DILocation(line: 1158, column: 19, scope: !1713)
!1716 = !DILocation(line: 1160, column: 9, scope: !1700)
!1717 = !DILocation(line: 1162, column: 17, scope: !1700)
!1718 = !DILocation(line: 1162, column: 9, scope: !1700)
!1719 = !DILocation(line: 1163, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1162, column: 21)
!1721 = !DILocation(line: 1164, column: 19, scope: !1720)
!1722 = !DILocation(line: 1166, column: 9, scope: !1700)
!1723 = !DILocation(line: 1168, column: 17, scope: !1700)
!1724 = !DILocation(line: 1168, column: 9, scope: !1700)
!1725 = !DILocation(line: 1169, column: 19, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1168, column: 21)
!1727 = !DILocation(line: 1171, column: 9, scope: !1700)
!1728 = !DILocation(line: 1173, column: 17, scope: !1700)
!1729 = !DILocation(line: 1173, column: 9, scope: !1700)
!1730 = !DILocation(line: 1174, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1173, column: 21)
!1732 = !DILocation(line: 1175, column: 19, scope: !1731)
!1733 = !DILocation(line: 1177, column: 9, scope: !1700)
!1734 = !DILocation(line: 1179, column: 17, scope: !1700)
!1735 = !DILocation(line: 1179, column: 9, scope: !1700)
!1736 = !DILocation(line: 1180, column: 19, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1179, column: 21)
!1738 = !DILocation(line: 1181, column: 19, scope: !1737)
!1739 = !DILocation(line: 1183, column: 9, scope: !1700)
!1740 = !DILocation(line: 1185, column: 17, scope: !1700)
!1741 = !DILocation(line: 1185, column: 9, scope: !1700)
!1742 = !DILocation(line: 1186, column: 19, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1185, column: 21)
!1744 = !DILocation(line: 1187, column: 19, scope: !1743)
!1745 = !DILocation(line: 1189, column: 9, scope: !1700)
!1746 = !DILocation(line: 1191, column: 17, scope: !1700)
!1747 = !DILocation(line: 1191, column: 9, scope: !1700)
!1748 = !DILocation(line: 1192, column: 19, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1191, column: 21)
!1750 = !DILocation(line: 1194, column: 9, scope: !1700)
!1751 = !DILocation(line: 1196, column: 17, scope: !1700)
!1752 = !DILocation(line: 1196, column: 9, scope: !1700)
!1753 = !DILocation(line: 1197, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1196, column: 21)
!1755 = !DILocation(line: 1199, column: 9, scope: !1700)
!1756 = !DILocation(line: 1201, column: 17, scope: !1700)
!1757 = !DILocation(line: 1201, column: 9, scope: !1700)
!1758 = !DILocation(line: 1202, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1201, column: 21)
!1760 = !DILocation(line: 1204, column: 9, scope: !1700)
!1761 = !DILocation(line: 1206, column: 17, scope: !1700)
!1762 = !DILocation(line: 1206, column: 9, scope: !1700)
!1763 = !DILocation(line: 1207, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1700, file: !439, line: 1206, column: 21)
!1765 = !DILocation(line: 1209, column: 9, scope: !1700)
!1766 = !DILocation(line: 1211, column: 5, scope: !485)
!1767 = !DILocation(line: 1212, column: 1, scope: !485)
!1768 = !DILocation(line: 1215, column: 24, scope: !491)
!1769 = !DILocation(line: 1215, column: 32, scope: !491)
!1770 = !DILocation(line: 1215, column: 40, scope: !491)
!1771 = !DILocation(line: 1217, column: 13, scope: !491)
!1772 = !DILocation(line: 1217, column: 5, scope: !491)
!1773 = !DILocation(line: 1219, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !491, file: !439, line: 1217, column: 17)
!1775 = !DILocation(line: 1219, column: 9, scope: !1774)
!1776 = !DILocation(line: 1221, column: 21, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !439, line: 1219, column: 21)
!1778 = !DILocation(line: 1221, column: 13, scope: !1777)
!1779 = !DILocation(line: 1223, column: 17, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !439, line: 1221, column: 25)
!1781 = !DILocation(line: 1225, column: 13, scope: !1777)
!1782 = !DILocation(line: 1227, column: 9, scope: !1774)
!1783 = !DILocation(line: 1229, column: 17, scope: !1774)
!1784 = !DILocation(line: 1229, column: 9, scope: !1774)
!1785 = !DILocation(line: 1231, column: 21, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1774, file: !439, line: 1229, column: 21)
!1787 = !DILocation(line: 1231, column: 13, scope: !1786)
!1788 = !DILocation(line: 1233, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !439, line: 1231, column: 25)
!1790 = !DILocation(line: 1235, column: 13, scope: !1786)
!1791 = !DILocation(line: 1237, column: 9, scope: !1774)
!1792 = !DILocation(line: 1239, column: 17, scope: !1774)
!1793 = !DILocation(line: 1239, column: 9, scope: !1774)
!1794 = !DILocation(line: 1241, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1774, file: !439, line: 1239, column: 21)
!1796 = !DILocation(line: 1241, column: 13, scope: !1795)
!1797 = !DILocation(line: 1243, column: 17, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !439, line: 1241, column: 25)
!1799 = !DILocation(line: 1245, column: 13, scope: !1795)
!1800 = !DILocation(line: 1247, column: 9, scope: !1774)
!1801 = !DILocation(line: 1249, column: 17, scope: !1774)
!1802 = !DILocation(line: 1249, column: 9, scope: !1774)
!1803 = !DILocation(line: 1251, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1774, file: !439, line: 1249, column: 21)
!1805 = !DILocation(line: 1251, column: 13, scope: !1804)
!1806 = !DILocation(line: 1253, column: 17, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !439, line: 1251, column: 25)
!1808 = !DILocation(line: 1255, column: 13, scope: !1804)
!1809 = !DILocation(line: 1257, column: 9, scope: !1774)
!1810 = !DILocation(line: 1259, column: 17, scope: !1774)
!1811 = !DILocation(line: 1259, column: 9, scope: !1774)
!1812 = !DILocation(line: 1261, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1774, file: !439, line: 1259, column: 21)
!1814 = !DILocation(line: 1261, column: 13, scope: !1813)
!1815 = !DILocation(line: 1263, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !439, line: 1261, column: 25)
!1817 = !DILocation(line: 1265, column: 13, scope: !1813)
!1818 = !DILocation(line: 1267, column: 9, scope: !1774)
!1819 = !DILocation(line: 1269, column: 5, scope: !491)
!1820 = !DILocation(line: 1270, column: 1, scope: !491)
!1821 = !DILocation(line: 1727, column: 35, scope: !498)
!1822 = !DILocation(line: 1727, column: 47, scope: !498)
!1823 = !DILocation(line: 1727, column: 63, scope: !498)
!1824 = !DILocation(line: 1729, column: 5, scope: !498)
!1825 = !DILocation(line: 1729, column: 9, scope: !498)
!1826 = !DILocation(line: 1729, column: 26, scope: !498)
!1827 = !DILocation(line: 1729, column: 31, scope: !498)
!1828 = !DILocation(line: 1729, column: 40, scope: !498)
!1829 = !DILocation(line: 1729, column: 18, scope: !498)
!1830 = !DILocation(line: 1730, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !498, file: !439, line: 1730, column: 9)
!1832 = !DILocation(line: 1730, column: 14, scope: !1831)
!1833 = !DILocation(line: 1730, column: 9, scope: !498)
!1834 = !DILocation(line: 1731, column: 16, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !439, line: 1730, column: 30)
!1836 = !DILocation(line: 1732, column: 9, scope: !1835)
!1837 = !DILocation(line: 1732, column: 14, scope: !1835)
!1838 = !DILocation(line: 1732, column: 19, scope: !1835)
!1839 = !DILocation(line: 1733, column: 5, scope: !1835)
!1840 = !DILocation(line: 1734, column: 12, scope: !498)
!1841 = !DILocation(line: 1735, column: 1, scope: !498)
!1842 = !DILocation(line: 1734, column: 5, scope: !498)
!1843 = !DILocation(line: 1325, column: 27, scope: !703)
!1844 = !DILocation(line: 1325, column: 39, scope: !703)
!1845 = !DILocation(line: 1325, column: 55, scope: !703)
!1846 = !DILocation(line: 1327, column: 5, scope: !703)
!1847 = !DILocation(line: 1327, column: 9, scope: !703)
!1848 = !DILocation(line: 1328, column: 5, scope: !703)
!1849 = !DILocation(line: 1328, column: 9, scope: !703)
!1850 = !DILocation(line: 1328, column: 20, scope: !703)
!1851 = !DILocation(line: 1330, column: 17, scope: !703)
!1852 = !DILocation(line: 1330, column: 23, scope: !703)
!1853 = !DILocation(line: 1330, column: 6, scope: !703)
!1854 = !DILocation(line: 1330, column: 14, scope: !703)
!1855 = !DILocation(line: 1330, column: 5, scope: !703)
!1856 = !DILocation(line: 1332, column: 5, scope: !703)
!1857 = !DILocation(line: 1332, column: 10, scope: !703)
!1858 = !DILocation(line: 1332, column: 16, scope: !703)
!1859 = !DILocation(line: 1333, column: 15, scope: !703)
!1860 = !DILocation(line: 1336, column: 9, scope: !713)
!1861 = !DILocation(line: 1336, column: 14, scope: !713)
!1862 = !DILocation(line: 1336, column: 9, scope: !703)
!1863 = !DILocation(line: 1337, column: 9, scope: !712)
!1864 = !DILocation(line: 1337, column: 13, scope: !712)
!1865 = !DILocation(line: 1338, column: 9, scope: !712)
!1866 = !DILocation(line: 1338, column: 13, scope: !712)
!1867 = !DILocation(line: 1339, column: 9, scope: !712)
!1868 = !DILocation(line: 1339, column: 14, scope: !712)
!1869 = !DILocation(line: 1339, column: 20, scope: !712)
!1870 = !DILocation(line: 1340, column: 9, scope: !712)
!1871 = !DILocation(line: 1341, column: 27, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !439, line: 1340, column: 18)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !439, line: 1340, column: 9)
!1874 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1340, column: 9)
!1875 = !DILocation(line: 1341, column: 17, scope: !1872)
!1876 = !DILocation(line: 1341, column: 15, scope: !1872)
!1877 = !DILocation(line: 1342, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1872, file: !439, line: 1342, column: 17)
!1879 = !DILocation(line: 1342, column: 19, scope: !1878)
!1880 = !DILocation(line: 1342, column: 17, scope: !1872)
!1881 = !DILocation(line: 1343, column: 20, scope: !1878)
!1882 = !DILocation(line: 1343, column: 30, scope: !1878)
!1883 = !DILocation(line: 1343, column: 17, scope: !1878)
!1884 = !DILocation(line: 1344, column: 22, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !439, line: 1344, column: 22)
!1886 = !DILocation(line: 1344, column: 24, scope: !1885)
!1887 = !DILocation(line: 1344, column: 22, scope: !1878)
!1888 = !DILocation(line: 1345, column: 24, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !439, line: 1344, column: 33)
!1890 = !DILocation(line: 1345, column: 28, scope: !1889)
!1891 = !DILocation(line: 1345, column: 33, scope: !1889)
!1892 = !DILocation(line: 1345, column: 27, scope: !1889)
!1893 = !DILocation(line: 1345, column: 41, scope: !1889)
!1894 = !DILocation(line: 1345, column: 48, scope: !1889)
!1895 = !DILocation(line: 1345, column: 53, scope: !1889)
!1896 = !DILocation(line: 1345, column: 46, scope: !1889)
!1897 = !DILocation(line: 1345, column: 21, scope: !1889)
!1898 = !DILocation(line: 1346, column: 27, scope: !1889)
!1899 = !DILocation(line: 1346, column: 34, scope: !1889)
!1900 = !DILocation(line: 1346, column: 39, scope: !1889)
!1901 = !DILocation(line: 1346, column: 33, scope: !1889)
!1902 = !DILocation(line: 1346, column: 50, scope: !1889)
!1903 = !DILocation(line: 1347, column: 23, scope: !1889)
!1904 = !DILocation(line: 1347, column: 28, scope: !1889)
!1905 = !DILocation(line: 1347, column: 21, scope: !1889)
!1906 = !DILocation(line: 1346, column: 24, scope: !1889)
!1907 = !DILocation(line: 1348, column: 13, scope: !1889)
!1908 = !DILocation(line: 1349, column: 22, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1885, file: !439, line: 1349, column: 22)
!1910 = !DILocation(line: 1349, column: 24, scope: !1909)
!1911 = !DILocation(line: 1349, column: 22, scope: !1885)
!1912 = !DILocation(line: 1350, column: 30, scope: !1909)
!1913 = !DILocation(line: 1350, column: 21, scope: !1909)
!1914 = !DILocation(line: 1350, column: 17, scope: !1909)
!1915 = !DILocation(line: 1352, column: 17, scope: !1909)
!1916 = !DILocation(line: 1340, column: 9, scope: !1873)
!1917 = !DILocation(line: 1354, column: 20, scope: !712)
!1918 = !DILocation(line: 1354, column: 25, scope: !712)
!1919 = !DILocation(line: 1354, column: 9, scope: !712)
!1920 = !DILocation(line: 1355, column: 13, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1355, column: 13)
!1922 = !DILocation(line: 1355, column: 15, scope: !1921)
!1923 = !DILocation(line: 1355, column: 22, scope: !1921)
!1924 = !DILocation(line: 1355, column: 25, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1921, file: !439, discriminator: 1)
!1926 = !DILocation(line: 1355, column: 27, scope: !1921)
!1927 = !DILocation(line: 1355, column: 13, scope: !712)
!1928 = !DILocation(line: 1361, column: 17, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !439, line: 1361, column: 17)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !439, line: 1355, column: 36)
!1931 = !DILocation(line: 1361, column: 21, scope: !1929)
!1932 = !DILocation(line: 1361, column: 26, scope: !1929)
!1933 = !DILocation(line: 1361, column: 29, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1929, file: !439, discriminator: 1)
!1935 = !DILocation(line: 1361, column: 31, scope: !1929)
!1936 = !DILocation(line: 1361, column: 39, scope: !1929)
!1937 = !DILocation(line: 1361, column: 42, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1929, file: !439, discriminator: 2)
!1939 = !DILocation(line: 1361, column: 47, scope: !1929)
!1940 = !DILocation(line: 1361, column: 54, scope: !1929)
!1941 = !DILocation(line: 1361, column: 17, scope: !1930)
!1942 = !DILocation(line: 1362, column: 27, scope: !1929)
!1943 = !DILocation(line: 1362, column: 17, scope: !1929)
!1944 = !DILocation(line: 1364, column: 27, scope: !1929)
!1945 = !DILocation(line: 1367, column: 9, scope: !1930)
!1946 = !DILocation(line: 1368, column: 14, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !712, file: !439, line: 1368, column: 13)
!1948 = !DILocation(line: 1368, column: 24, scope: !1947)
!1949 = !DILocation(line: 1368, column: 27, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1947, file: !439, discriminator: 1)
!1951 = !DILocation(line: 1368, column: 32, scope: !1947)
!1952 = !DILocation(line: 1368, column: 38, scope: !1947)
!1953 = !DILocation(line: 1368, column: 13, scope: !712)
!1954 = !DILocation(line: 1369, column: 17, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !439, line: 1369, column: 17)
!1956 = distinct !DILexicalBlock(scope: !1947, file: !439, line: 1368, column: 44)
!1957 = !DILocation(line: 1369, column: 38, scope: !1955)
!1958 = !DILocation(line: 1369, column: 43, scope: !1955)
!1959 = !DILocation(line: 1369, column: 24, scope: !1955)
!1960 = !DILocation(line: 1369, column: 29, scope: !1955)
!1961 = !DILocation(line: 1369, column: 21, scope: !1955)
!1962 = !DILocation(line: 1369, column: 17, scope: !1956)
!1963 = !DILocation(line: 1371, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !439, line: 1371, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !439, line: 1369, column: 52)
!1966 = !DILocation(line: 1371, column: 48, scope: !1964)
!1967 = !DILocation(line: 1371, column: 53, scope: !1964)
!1968 = !DILocation(line: 1371, column: 31, scope: !1964)
!1969 = !DILocation(line: 1371, column: 36, scope: !1964)
!1970 = !DILocation(line: 1371, column: 28, scope: !1964)
!1971 = !DILocation(line: 1371, column: 21, scope: !1965)
!1972 = !DILocation(line: 1372, column: 37, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !439, line: 1372, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1964, file: !439, line: 1371, column: 62)
!1975 = !DILocation(line: 1372, column: 25, scope: !1973)
!1976 = !DILocation(line: 1372, column: 25, scope: !1974)
!1977 = !DILocation(line: 1373, column: 25, scope: !1973)
!1978 = !DILocation(line: 1374, column: 17, scope: !1974)
!1979 = !DILocation(line: 1375, column: 13, scope: !1965)
!1980 = !DILocation(line: 1376, column: 22, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1955, file: !439, line: 1376, column: 22)
!1982 = !DILocation(line: 1376, column: 42, scope: !1981)
!1983 = !DILocation(line: 1376, column: 47, scope: !1981)
!1984 = !DILocation(line: 1376, column: 28, scope: !1981)
!1985 = !DILocation(line: 1376, column: 33, scope: !1981)
!1986 = !DILocation(line: 1376, column: 26, scope: !1981)
!1987 = !DILocation(line: 1376, column: 22, scope: !1955)
!1988 = !DILocation(line: 1378, column: 21, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !439, line: 1378, column: 21)
!1990 = distinct !DILexicalBlock(scope: !1981, file: !439, line: 1376, column: 56)
!1991 = !DILocation(line: 1378, column: 26, scope: !1989)
!1992 = !DILocation(line: 1378, column: 32, scope: !1989)
!1993 = !DILocation(line: 1378, column: 35, scope: !1989)
!1994 = !DILocation(line: 1378, column: 21, scope: !1990)
!1995 = !DILocation(line: 1379, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !439, line: 1378, column: 43)
!1997 = !DILocation(line: 1379, column: 26, scope: !1996)
!1998 = !DILocation(line: 1379, column: 31, scope: !1996)
!1999 = !DILocation(line: 1380, column: 32, scope: !1996)
!2000 = !DILocation(line: 1380, column: 37, scope: !1996)
!2001 = !DILocation(line: 1380, column: 21, scope: !1996)
!2002 = !DILocation(line: 1380, column: 26, scope: !1996)
!2003 = !DILocation(line: 1380, column: 30, scope: !1996)
!2004 = !DILocation(line: 1381, column: 21, scope: !1996)
!2005 = !DILocation(line: 1383, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1990, file: !439, line: 1383, column: 21)
!2007 = !DILocation(line: 1383, column: 48, scope: !2006)
!2008 = !DILocation(line: 1383, column: 53, scope: !2006)
!2009 = !DILocation(line: 1383, column: 31, scope: !2006)
!2010 = !DILocation(line: 1383, column: 36, scope: !2006)
!2011 = !DILocation(line: 1383, column: 28, scope: !2006)
!2012 = !DILocation(line: 1383, column: 21, scope: !1990)
!2013 = !DILocation(line: 1384, column: 37, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !439, line: 1384, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2006, file: !439, line: 1383, column: 62)
!2016 = !DILocation(line: 1384, column: 25, scope: !2014)
!2017 = !DILocation(line: 1384, column: 25, scope: !2015)
!2018 = !DILocation(line: 1385, column: 25, scope: !2014)
!2019 = !DILocation(line: 1386, column: 17, scope: !2015)
!2020 = !DILocation(line: 1387, column: 17, scope: !1990)
!2021 = !DILocation(line: 1387, column: 22, scope: !1990)
!2022 = !DILocation(line: 1387, column: 28, scope: !1990)
!2023 = !DILocation(line: 1388, column: 48, scope: !1990)
!2024 = !DILocation(line: 1388, column: 33, scope: !1990)
!2025 = !DILocation(line: 1388, column: 38, scope: !1990)
!2026 = !DILocation(line: 1388, column: 31, scope: !1990)
!2027 = !DILocation(line: 1388, column: 17, scope: !1990)
!2028 = !DILocation(line: 1388, column: 22, scope: !1990)
!2029 = !DILocation(line: 1388, column: 46, scope: !1990)
!2030 = !DILocation(line: 1389, column: 49, scope: !1990)
!2031 = !DILocation(line: 1389, column: 34, scope: !1990)
!2032 = !DILocation(line: 1389, column: 39, scope: !1990)
!2033 = !DILocation(line: 1389, column: 17, scope: !1990)
!2034 = !DILocation(line: 1389, column: 22, scope: !1990)
!2035 = !DILocation(line: 1389, column: 47, scope: !1990)
!2036 = !DILocation(line: 1390, column: 13, scope: !1990)
!2037 = !DILocation(line: 1393, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1981, file: !439, line: 1391, column: 18)
!2039 = !DILocation(line: 1393, column: 24, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2041, file: !439, discriminator: 3)
!2041 = !DILexicalBlockFile(scope: !2038, file: !439, discriminator: 1)
!2042 = !DILocation(line: 1393, column: 29, scope: !2038)
!2043 = !DILocation(line: 1393, column: 36, scope: !2038)
!2044 = !DILocation(line: 1393, column: 40, scope: !2038)
!2045 = !DILocation(line: 1394, column: 21, scope: !2038)
!2046 = !DILocation(line: 1394, column: 41, scope: !2038)
!2047 = !DILocation(line: 1394, column: 46, scope: !2038)
!2048 = !DILocation(line: 1394, column: 27, scope: !2038)
!2049 = !DILocation(line: 1394, column: 32, scope: !2038)
!2050 = !DILocation(line: 1394, column: 25, scope: !2038)
!2051 = !DILocation(line: 1393, column: 17, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2038, file: !439, discriminator: 2)
!2053 = !DILocation(line: 1395, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2038, file: !439, line: 1394, column: 55)
!2055 = !DILocation(line: 1395, column: 26, scope: !2054)
!2056 = !DILocation(line: 1395, column: 32, scope: !2054)
!2057 = !DILocation(line: 1396, column: 21, scope: !2054)
!2058 = !DILocation(line: 1396, column: 26, scope: !2054)
!2059 = !DILocation(line: 1396, column: 32, scope: !2054)
!2060 = !DILocation(line: 1398, column: 21, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2038, file: !439, line: 1398, column: 21)
!2062 = !DILocation(line: 1398, column: 42, scope: !2061)
!2063 = !DILocation(line: 1398, column: 47, scope: !2061)
!2064 = !DILocation(line: 1398, column: 28, scope: !2061)
!2065 = !DILocation(line: 1398, column: 33, scope: !2061)
!2066 = !DILocation(line: 1398, column: 25, scope: !2061)
!2067 = !DILocation(line: 1398, column: 21, scope: !2038)
!2068 = !DILocation(line: 1399, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !439, line: 1398, column: 56)
!2070 = !DILocation(line: 1399, column: 26, scope: !2069)
!2071 = !DILocation(line: 1399, column: 31, scope: !2069)
!2072 = !DILocation(line: 1400, column: 32, scope: !2069)
!2073 = !DILocation(line: 1400, column: 37, scope: !2069)
!2074 = !DILocation(line: 1400, column: 21, scope: !2069)
!2075 = !DILocation(line: 1400, column: 26, scope: !2069)
!2076 = !DILocation(line: 1400, column: 30, scope: !2069)
!2077 = !DILocation(line: 1401, column: 21, scope: !2069)
!2078 = !DILocation(line: 1403, column: 21, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2038, file: !439, line: 1403, column: 21)
!2080 = !DILocation(line: 1403, column: 48, scope: !2079)
!2081 = !DILocation(line: 1403, column: 53, scope: !2079)
!2082 = !DILocation(line: 1403, column: 31, scope: !2079)
!2083 = !DILocation(line: 1403, column: 36, scope: !2079)
!2084 = !DILocation(line: 1403, column: 28, scope: !2079)
!2085 = !DILocation(line: 1403, column: 21, scope: !2038)
!2086 = !DILocation(line: 1404, column: 37, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !439, line: 1404, column: 25)
!2088 = distinct !DILexicalBlock(scope: !2079, file: !439, line: 1403, column: 62)
!2089 = !DILocation(line: 1404, column: 25, scope: !2087)
!2090 = !DILocation(line: 1404, column: 25, scope: !2088)
!2091 = !DILocation(line: 1405, column: 25, scope: !2087)
!2092 = !DILocation(line: 1406, column: 17, scope: !2088)
!2093 = !DILocation(line: 1408, column: 9, scope: !1956)
!2094 = !DILocation(line: 1409, column: 5, scope: !713)
!2095 = !DILocation(line: 1409, column: 5, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !713, file: !439, discriminator: 1)
!2097 = !DILocation(line: 1409, column: 5, scope: !712)
!2098 = !DILocation(line: 1411, column: 18, scope: !703)
!2099 = !DILocation(line: 1411, column: 23, scope: !703)
!2100 = !DILocation(line: 1411, column: 5, scope: !703)
!2101 = !DILocation(line: 1411, column: 10, scope: !703)
!2102 = !DILocation(line: 1411, column: 16, scope: !703)
!2103 = !DILocation(line: 1414, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1414, column: 9)
!2105 = !DILocation(line: 1414, column: 14, scope: !2104)
!2106 = !DILocation(line: 1414, column: 21, scope: !2104)
!2107 = !DILocation(line: 1414, column: 9, scope: !703)
!2108 = !DILocation(line: 1415, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !439, line: 1415, column: 13)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !439, line: 1414, column: 27)
!2111 = !DILocation(line: 1415, column: 18, scope: !2109)
!2112 = !DILocation(line: 1415, column: 25, scope: !2109)
!2113 = !DILocation(line: 1415, column: 13, scope: !2110)
!2114 = !DILocation(line: 1416, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !439, line: 1415, column: 30)
!2116 = !DILocation(line: 1416, column: 18, scope: !2115)
!2117 = !DILocation(line: 1416, column: 24, scope: !2115)
!2118 = !DILocation(line: 1417, column: 13, scope: !2115)
!2119 = !DILocation(line: 1420, column: 13, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2109, file: !439, line: 1419, column: 14)
!2121 = !DILocation(line: 1420, column: 18, scope: !2120)
!2122 = !DILocation(line: 1420, column: 24, scope: !2120)
!2123 = !DILocation(line: 1421, column: 13, scope: !2120)
!2124 = !DILocation(line: 1414, column: 24, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2104, file: !439, discriminator: 1)
!2126 = !DILocation(line: 1426, column: 5, scope: !703)
!2127 = !DILocation(line: 1426, column: 10, scope: !703)
!2128 = !DILocation(line: 1426, column: 16, scope: !703)
!2129 = !DILocation(line: 1428, column: 5, scope: !703)
!2130 = !DILocation(line: 1429, column: 23, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1428, column: 8)
!2132 = !DILocation(line: 1429, column: 13, scope: !2131)
!2133 = !DILocation(line: 1429, column: 11, scope: !2131)
!2134 = !DILocation(line: 1430, column: 5, scope: !2131)
!2135 = !DILocation(line: 1430, column: 14, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 1)
!2137 = !DILocation(line: 1430, column: 16, scope: !703)
!2138 = !DILocation(line: 1430, column: 23, scope: !703)
!2139 = !DILocation(line: 1430, column: 26, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 3)
!2141 = !DILocation(line: 1430, column: 28, scope: !703)
!2142 = !DILocation(line: 1430, column: 36, scope: !703)
!2143 = !DILocation(line: 1430, column: 39, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !703, file: !439, discriminator: 5)
!2145 = !DILocation(line: 1430, column: 41, scope: !703)
!2146 = !DILocation(line: 1430, column: 5, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !439, discriminator: 6)
!2148 = !DILexicalBlockFile(scope: !2149, file: !439, discriminator: 4)
!2149 = !DILexicalBlockFile(scope: !2131, file: !439, discriminator: 2)
!2150 = !DILocation(line: 1433, column: 18, scope: !703)
!2151 = !DILocation(line: 1433, column: 23, scope: !703)
!2152 = !DILocation(line: 1433, column: 27, scope: !703)
!2153 = !DILocation(line: 1433, column: 5, scope: !703)
!2154 = !DILocation(line: 1433, column: 10, scope: !703)
!2155 = !DILocation(line: 1433, column: 16, scope: !703)
!2156 = !DILocation(line: 1436, column: 9, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1436, column: 9)
!2158 = !DILocation(line: 1436, column: 11, scope: !2157)
!2159 = !DILocation(line: 1436, column: 9, scope: !703)
!2160 = !DILocation(line: 1437, column: 9, scope: !2157)
!2161 = !DILocation(line: 1437, column: 16, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !439, discriminator: 5)
!2163 = !DILexicalBlockFile(scope: !2157, file: !439, discriminator: 1)
!2164 = !DILocation(line: 1437, column: 18, scope: !2157)
!2165 = !DILocation(line: 1437, column: 26, scope: !2157)
!2166 = !DILocation(line: 1437, column: 29, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2157, file: !439, discriminator: 2)
!2168 = !DILocation(line: 1437, column: 31, scope: !2157)
!2169 = !DILocation(line: 1437, column: 9, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2157, file: !439, discriminator: 3)
!2171 = !DILocation(line: 1438, column: 27, scope: !2157)
!2172 = !DILocation(line: 1438, column: 17, scope: !2157)
!2173 = !DILocation(line: 1438, column: 15, scope: !2157)
!2174 = !DILocation(line: 1437, column: 9, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2157, file: !439, discriminator: 4)
!2176 = !DILocation(line: 1441, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1441, column: 9)
!2178 = !DILocation(line: 1441, column: 11, scope: !2177)
!2179 = !DILocation(line: 1441, column: 9, scope: !703)
!2180 = !DILocation(line: 1442, column: 16, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !439, line: 1441, column: 20)
!2182 = !DILocation(line: 1442, column: 21, scope: !2181)
!2183 = !DILocation(line: 1442, column: 26, scope: !2181)
!2184 = !DILocation(line: 1442, column: 9, scope: !2181)
!2185 = !DILocation(line: 1446, column: 14, scope: !703)
!2186 = !DILocation(line: 1447, column: 12, scope: !717)
!2187 = !DILocation(line: 1447, column: 14, scope: !717)
!2188 = !DILocation(line: 1447, column: 21, scope: !717)
!2189 = !DILocation(line: 1447, column: 24, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 1)
!2191 = !DILocation(line: 1447, column: 26, scope: !717)
!2192 = !DILocation(line: 1447, column: 34, scope: !717)
!2193 = !DILocation(line: 1447, column: 38, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2195, file: !439, discriminator: 3)
!2195 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 2)
!2196 = !DILocation(line: 1447, column: 40, scope: !717)
!2197 = !DILocation(line: 1447, column: 47, scope: !717)
!2198 = !DILocation(line: 1447, column: 50, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 4)
!2200 = !DILocation(line: 1447, column: 52, scope: !717)
!2201 = !DILocation(line: 1447, column: 60, scope: !717)
!2202 = !DILocation(line: 1447, column: 63, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !439, discriminator: 6)
!2204 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 5)
!2205 = !DILocation(line: 1447, column: 65, scope: !717)
!2206 = !DILocation(line: 1447, column: 72, scope: !717)
!2207 = !DILocation(line: 1447, column: 76, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !717, file: !439, discriminator: 7)
!2209 = !DILocation(line: 1447, column: 78, scope: !717)
!2210 = !DILocation(line: 1447, column: 9, scope: !703)
!2211 = !DILocation(line: 1449, column: 9, scope: !716)
!2212 = !DILocation(line: 1449, column: 13, scope: !716)
!2213 = !DILocation(line: 1449, column: 24, scope: !716)
!2214 = !DILocation(line: 1449, column: 35, scope: !716)
!2215 = !DILocation(line: 1450, column: 9, scope: !716)
!2216 = !DILocation(line: 1450, column: 9, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2218, file: !439, discriminator: 2)
!2218 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 1)
!2219 = !DILocation(line: 1451, column: 19, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !439, line: 1451, column: 17)
!2221 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1450, column: 19)
!2222 = !DILocation(line: 1451, column: 25, scope: !2220)
!2223 = !DILocation(line: 1451, column: 28, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2220, file: !439, discriminator: 1)
!2225 = !DILocation(line: 1451, column: 35, scope: !2220)
!2226 = !DILocation(line: 1451, column: 39, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2220, file: !439, discriminator: 2)
!2228 = !DILocation(line: 1451, column: 41, scope: !2220)
!2229 = !DILocation(line: 1451, column: 48, scope: !2220)
!2230 = !DILocation(line: 1451, column: 51, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2220, file: !439, discriminator: 3)
!2232 = !DILocation(line: 1451, column: 53, scope: !2220)
!2233 = !DILocation(line: 1451, column: 17, scope: !2221)
!2234 = !DILocation(line: 1452, column: 23, scope: !2220)
!2235 = !DILocation(line: 1452, column: 17, scope: !2220)
!2236 = !DILocation(line: 1455, column: 24, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2220, file: !439, line: 1455, column: 22)
!2238 = !DILocation(line: 1455, column: 30, scope: !2237)
!2239 = !DILocation(line: 1455, column: 33, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !439, discriminator: 1)
!2241 = !DILocation(line: 1455, column: 39, scope: !2237)
!2242 = !DILocation(line: 1455, column: 42, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2237, file: !439, discriminator: 2)
!2244 = !DILocation(line: 1455, column: 49, scope: !2237)
!2245 = !DILocation(line: 1455, column: 53, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2237, file: !439, discriminator: 3)
!2247 = !DILocation(line: 1455, column: 55, scope: !2237)
!2248 = !DILocation(line: 1455, column: 62, scope: !2237)
!2249 = !DILocation(line: 1455, column: 65, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2237, file: !439, discriminator: 4)
!2251 = !DILocation(line: 1455, column: 67, scope: !2237)
!2252 = !DILocation(line: 1455, column: 22, scope: !2220)
!2253 = !DILocation(line: 1456, column: 23, scope: !2237)
!2254 = !DILocation(line: 1456, column: 17, scope: !2237)
!2255 = !DILocation(line: 1458, column: 24, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2237, file: !439, line: 1458, column: 22)
!2257 = !DILocation(line: 1458, column: 30, scope: !2256)
!2258 = !DILocation(line: 1458, column: 33, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2256, file: !439, discriminator: 1)
!2260 = !DILocation(line: 1458, column: 40, scope: !2256)
!2261 = !DILocation(line: 1458, column: 44, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2256, file: !439, discriminator: 2)
!2263 = !DILocation(line: 1458, column: 46, scope: !2256)
!2264 = !DILocation(line: 1458, column: 53, scope: !2256)
!2265 = !DILocation(line: 1458, column: 56, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2256, file: !439, discriminator: 3)
!2267 = !DILocation(line: 1458, column: 58, scope: !2256)
!2268 = !DILocation(line: 1458, column: 22, scope: !2237)
!2269 = !DILocation(line: 1459, column: 23, scope: !2256)
!2270 = !DILocation(line: 1459, column: 17, scope: !2256)
!2271 = !DILocation(line: 1461, column: 17, scope: !2256)
!2272 = !DILocation(line: 1462, column: 27, scope: !2221)
!2273 = !DILocation(line: 1462, column: 17, scope: !2221)
!2274 = !DILocation(line: 1462, column: 15, scope: !2221)
!2275 = !DILocation(line: 1463, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2221, file: !439, line: 1463, column: 17)
!2277 = !DILocation(line: 1463, column: 19, scope: !2276)
!2278 = !DILocation(line: 1463, column: 26, scope: !2276)
!2279 = !DILocation(line: 1463, column: 29, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2276, file: !439, discriminator: 1)
!2281 = !DILocation(line: 1463, column: 31, scope: !2276)
!2282 = !DILocation(line: 1463, column: 17, scope: !2221)
!2283 = !DILocation(line: 1464, column: 17, scope: !2276)
!2284 = !DILocation(line: 1466, column: 9, scope: !716)
!2285 = !DILocation(line: 1466, column: 19, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2218, file: !439, discriminator: 17)
!2287 = !DILocation(line: 1466, column: 21, scope: !716)
!2288 = !DILocation(line: 1466, column: 28, scope: !716)
!2289 = !DILocation(line: 1466, column: 31, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 2)
!2291 = !DILocation(line: 1466, column: 33, scope: !716)
!2292 = !DILocation(line: 1466, column: 41, scope: !716)
!2293 = !DILocation(line: 1466, column: 45, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !439, discriminator: 5)
!2295 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 3)
!2296 = !DILocation(line: 1466, column: 47, scope: !716)
!2297 = !DILocation(line: 1466, column: 54, scope: !716)
!2298 = !DILocation(line: 1466, column: 57, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 6)
!2300 = !DILocation(line: 1466, column: 59, scope: !716)
!2301 = !DILocation(line: 1466, column: 67, scope: !716)
!2302 = !DILocation(line: 1466, column: 71, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2304, file: !439, discriminator: 9)
!2304 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 7)
!2305 = !DILocation(line: 1466, column: 73, scope: !716)
!2306 = !DILocation(line: 1466, column: 80, scope: !716)
!2307 = !DILocation(line: 1466, column: 83, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 10)
!2309 = !DILocation(line: 1466, column: 85, scope: !716)
!2310 = !DILocation(line: 1466, column: 93, scope: !716)
!2311 = !DILocation(line: 1466, column: 96, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !439, discriminator: 13)
!2313 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 11)
!2314 = !DILocation(line: 1466, column: 98, scope: !716)
!2315 = !DILocation(line: 1466, column: 105, scope: !716)
!2316 = !DILocation(line: 1466, column: 109, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 15)
!2318 = !DILocation(line: 1466, column: 111, scope: !716)
!2319 = !DILocation(line: 1466, column: 9, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2321, file: !439, discriminator: 16)
!2321 = !DILexicalBlockFile(scope: !2322, file: !439, discriminator: 14)
!2322 = !DILexicalBlockFile(scope: !2323, file: !439, discriminator: 12)
!2323 = !DILexicalBlockFile(scope: !2324, file: !439, discriminator: 8)
!2324 = !DILexicalBlockFile(scope: !716, file: !439, discriminator: 4)
!2325 = !DILocation(line: 1467, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !439, line: 1467, column: 17)
!2327 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1466, column: 121)
!2328 = !DILocation(line: 1467, column: 19, scope: !2326)
!2329 = !DILocation(line: 1467, column: 17, scope: !2327)
!2330 = !DILocation(line: 1468, column: 26, scope: !2326)
!2331 = !DILocation(line: 1468, column: 17, scope: !2326)
!2332 = !DILocation(line: 1469, column: 27, scope: !2327)
!2333 = !DILocation(line: 1469, column: 17, scope: !2327)
!2334 = !DILocation(line: 1469, column: 15, scope: !2327)
!2335 = !DILocation(line: 1471, column: 20, scope: !716)
!2336 = !DILocation(line: 1471, column: 25, scope: !716)
!2337 = !DILocation(line: 1471, column: 9, scope: !716)
!2338 = !DILocation(line: 1472, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !716, file: !439, line: 1472, column: 13)
!2340 = !DILocation(line: 1472, column: 22, scope: !2339)
!2341 = !DILocation(line: 1473, column: 32, scope: !2339)
!2342 = !DILocation(line: 1473, column: 14, scope: !2339)
!2343 = !DILocation(line: 1472, column: 13, scope: !716)
!2344 = !DILocation(line: 1474, column: 13, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !439, line: 1473, column: 38)
!2346 = !DILocation(line: 1474, column: 18, scope: !2345)
!2347 = !DILocation(line: 1474, column: 23, scope: !2345)
!2348 = !DILocation(line: 1475, column: 13, scope: !2345)
!2349 = !DILocation(line: 1477, column: 20, scope: !716)
!2350 = !DILocation(line: 1477, column: 25, scope: !716)
!2351 = !DILocation(line: 1477, column: 10, scope: !716)
!2352 = !DILocation(line: 1477, column: 18, scope: !716)
!2353 = !DILocation(line: 1478, column: 18, scope: !716)
!2354 = !DILocation(line: 1478, column: 23, scope: !716)
!2355 = !DILocation(line: 1478, column: 10, scope: !716)
!2356 = !DILocation(line: 1478, column: 16, scope: !716)
!2357 = !DILocation(line: 1479, column: 9, scope: !716)
!2358 = !DILocation(line: 1480, column: 5, scope: !717)
!2359 = !DILocation(line: 1483, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1483, column: 9)
!2361 = !DILocation(line: 1483, column: 11, scope: !2360)
!2362 = !DILocation(line: 1483, column: 9, scope: !703)
!2363 = !DILocation(line: 1484, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !439, line: 1483, column: 20)
!2365 = !DILocation(line: 1484, column: 14, scope: !2364)
!2366 = !DILocation(line: 1484, column: 20, scope: !2364)
!2367 = !DILocation(line: 1485, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !439, line: 1485, column: 13)
!2369 = !DILocation(line: 1485, column: 23, scope: !2368)
!2370 = !DILocation(line: 1485, column: 26, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2368, file: !439, discriminator: 1)
!2372 = !DILocation(line: 1485, column: 31, scope: !2368)
!2373 = !DILocation(line: 1485, column: 37, scope: !2368)
!2374 = !DILocation(line: 1485, column: 13, scope: !2364)
!2375 = !DILocation(line: 1486, column: 13, scope: !2368)
!2376 = !DILocation(line: 1487, column: 20, scope: !2364)
!2377 = !DILocation(line: 1487, column: 25, scope: !2364)
!2378 = !DILocation(line: 1487, column: 10, scope: !2364)
!2379 = !DILocation(line: 1487, column: 18, scope: !2364)
!2380 = !DILocation(line: 1488, column: 18, scope: !2364)
!2381 = !DILocation(line: 1488, column: 23, scope: !2364)
!2382 = !DILocation(line: 1488, column: 27, scope: !2364)
!2383 = !DILocation(line: 1488, column: 10, scope: !2364)
!2384 = !DILocation(line: 1488, column: 16, scope: !2364)
!2385 = !DILocation(line: 1489, column: 9, scope: !2364)
!2386 = !DILocation(line: 1489, column: 14, scope: !2364)
!2387 = !DILocation(line: 1489, column: 24, scope: !2364)
!2388 = !DILocation(line: 1490, column: 9, scope: !2364)
!2389 = !DILocation(line: 1494, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1494, column: 9)
!2391 = !DILocation(line: 1494, column: 11, scope: !2390)
!2392 = !DILocation(line: 1494, column: 9, scope: !703)
!2393 = !DILocation(line: 1495, column: 23, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !439, line: 1494, column: 19)
!2395 = !DILocation(line: 1495, column: 13, scope: !2394)
!2396 = !DILocation(line: 1495, column: 11, scope: !2394)
!2397 = !DILocation(line: 1496, column: 42, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !439, line: 1496, column: 13)
!2399 = !DILocation(line: 1496, column: 14, scope: !2398)
!2400 = !DILocation(line: 1496, column: 16, scope: !2398)
!2401 = !DILocation(line: 1496, column: 15, scope: !2398)
!2402 = !{!2403, !2403, i64 0}
!2403 = !{!"short", !896, i64 0}
!2404 = !DILocation(line: 1496, column: 47, scope: !2398)
!2405 = !DILocation(line: 1496, column: 13, scope: !2394)
!2406 = !DILocation(line: 1497, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2398, file: !439, line: 1496, column: 81)
!2408 = !DILocation(line: 1498, column: 20, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !439, line: 1498, column: 20)
!2410 = !DILocation(line: 1498, column: 22, scope: !2409)
!2411 = !DILocation(line: 1498, column: 20, scope: !2398)
!2412 = !DILocation(line: 1499, column: 27, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !439, line: 1498, column: 30)
!2414 = !DILocation(line: 1499, column: 17, scope: !2413)
!2415 = !DILocation(line: 1499, column: 15, scope: !2413)
!2416 = !DILocation(line: 1500, column: 17, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !439, line: 1500, column: 17)
!2418 = !DILocation(line: 1500, column: 19, scope: !2417)
!2419 = !DILocation(line: 1500, column: 17, scope: !2413)
!2420 = !DILocation(line: 1501, column: 28, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !439, line: 1500, column: 27)
!2422 = !DILocation(line: 1501, column: 33, scope: !2421)
!2423 = !DILocation(line: 1501, column: 18, scope: !2421)
!2424 = !DILocation(line: 1501, column: 26, scope: !2421)
!2425 = !DILocation(line: 1502, column: 26, scope: !2421)
!2426 = !DILocation(line: 1502, column: 31, scope: !2421)
!2427 = !DILocation(line: 1502, column: 18, scope: !2421)
!2428 = !DILocation(line: 1502, column: 24, scope: !2421)
!2429 = !DILocation(line: 1503, column: 17, scope: !2421)
!2430 = !DILocation(line: 1505, column: 28, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2417, file: !439, line: 1504, column: 20)
!2432 = !DILocation(line: 1505, column: 33, scope: !2431)
!2433 = !DILocation(line: 1505, column: 17, scope: !2431)
!2434 = !DILocation(line: 1507, column: 24, scope: !2413)
!2435 = !DILocation(line: 1507, column: 13, scope: !2413)
!2436 = !DILocation(line: 1508, column: 9, scope: !2413)
!2437 = !DILocation(line: 1509, column: 24, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2409, file: !439, line: 1508, column: 16)
!2439 = !DILocation(line: 1509, column: 29, scope: !2438)
!2440 = !DILocation(line: 1509, column: 13, scope: !2438)
!2441 = !DILocation(line: 1511, column: 20, scope: !2394)
!2442 = !DILocation(line: 1511, column: 25, scope: !2394)
!2443 = !DILocation(line: 1511, column: 10, scope: !2394)
!2444 = !DILocation(line: 1511, column: 18, scope: !2394)
!2445 = !DILocation(line: 1512, column: 18, scope: !2394)
!2446 = !DILocation(line: 1512, column: 23, scope: !2394)
!2447 = !DILocation(line: 1512, column: 10, scope: !2394)
!2448 = !DILocation(line: 1512, column: 16, scope: !2394)
!2449 = !DILocation(line: 1513, column: 9, scope: !2394)
!2450 = !DILocation(line: 1517, column: 38, scope: !728)
!2451 = !DILocation(line: 1517, column: 10, scope: !728)
!2452 = !DILocation(line: 1517, column: 12, scope: !728)
!2453 = !DILocation(line: 1517, column: 11, scope: !728)
!2454 = !DILocation(line: 1517, column: 43, scope: !728)
!2455 = !DILocation(line: 1517, column: 9, scope: !703)
!2456 = !DILocation(line: 1518, column: 13, scope: !726)
!2457 = !DILocation(line: 1518, column: 15, scope: !726)
!2458 = !DILocation(line: 1518, column: 13, scope: !727)
!2459 = !DILocation(line: 1520, column: 27, scope: !725)
!2460 = !DILocation(line: 1520, column: 17, scope: !725)
!2461 = !DILocation(line: 1520, column: 15, scope: !725)
!2462 = !DILocation(line: 1521, column: 17, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !725, file: !439, line: 1521, column: 17)
!2464 = !DILocation(line: 1521, column: 19, scope: !2463)
!2465 = !DILocation(line: 1521, column: 17, scope: !725)
!2466 = !DILocation(line: 1522, column: 17, scope: !2463)
!2467 = !DILocation(line: 1523, column: 17, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !725, file: !439, line: 1523, column: 17)
!2469 = !DILocation(line: 1523, column: 19, scope: !2468)
!2470 = !DILocation(line: 1523, column: 26, scope: !2468)
!2471 = !DILocation(line: 1523, column: 29, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2468, file: !439, discriminator: 1)
!2473 = !DILocation(line: 1523, column: 31, scope: !2468)
!2474 = !DILocation(line: 1523, column: 17, scope: !725)
!2475 = !DILocation(line: 1524, column: 17, scope: !2468)
!2476 = !DILocation(line: 1525, column: 17, scope: !724)
!2477 = !DILocation(line: 1525, column: 19, scope: !724)
!2478 = !DILocation(line: 1525, column: 26, scope: !724)
!2479 = !DILocation(line: 1525, column: 29, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !724, file: !439, discriminator: 1)
!2481 = !DILocation(line: 1525, column: 31, scope: !724)
!2482 = !DILocation(line: 1525, column: 17, scope: !725)
!2483 = !DILocation(line: 1528, column: 31, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !724, file: !439, line: 1525, column: 39)
!2485 = !DILocation(line: 1528, column: 21, scope: !2484)
!2486 = !DILocation(line: 1528, column: 19, scope: !2484)
!2487 = !DILocation(line: 1529, column: 51, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !439, line: 1529, column: 21)
!2489 = !DILocation(line: 1529, column: 23, scope: !2488)
!2490 = !DILocation(line: 1529, column: 25, scope: !2488)
!2491 = !DILocation(line: 1529, column: 24, scope: !2488)
!2492 = !DILocation(line: 1529, column: 56, scope: !2488)
!2493 = !DILocation(line: 1529, column: 21, scope: !2484)
!2494 = !DILocation(line: 1530, column: 21, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2488, file: !439, line: 1529, column: 91)
!2496 = !DILocation(line: 1530, column: 26, scope: !2495)
!2497 = !DILocation(line: 1530, column: 31, scope: !2495)
!2498 = !DILocation(line: 1531, column: 32, scope: !2495)
!2499 = !DILocation(line: 1531, column: 37, scope: !2495)
!2500 = !DILocation(line: 1531, column: 21, scope: !2495)
!2501 = !DILocation(line: 1532, column: 21, scope: !2495)
!2502 = !DILocation(line: 1534, column: 17, scope: !2484)
!2503 = !DILocation(line: 1535, column: 35, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2484, file: !439, line: 1534, column: 20)
!2505 = !DILocation(line: 1535, column: 25, scope: !2504)
!2506 = !DILocation(line: 1535, column: 23, scope: !2504)
!2507 = !DILocation(line: 1536, column: 17, scope: !2504)
!2508 = !DILocation(line: 1536, column: 55, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2484, file: !439, discriminator: 1)
!2510 = !DILocation(line: 1536, column: 27, scope: !2484)
!2511 = !DILocation(line: 1536, column: 29, scope: !2484)
!2512 = !DILocation(line: 1536, column: 28, scope: !2484)
!2513 = !DILocation(line: 1536, column: 60, scope: !2484)
!2514 = !DILocation(line: 1537, column: 13, scope: !2484)
!2515 = !DILocation(line: 1538, column: 22, scope: !723)
!2516 = !DILocation(line: 1538, column: 24, scope: !723)
!2517 = !DILocation(line: 1538, column: 31, scope: !723)
!2518 = !DILocation(line: 1538, column: 34, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !723, file: !439, discriminator: 1)
!2520 = !DILocation(line: 1538, column: 36, scope: !723)
!2521 = !DILocation(line: 1538, column: 22, scope: !724)
!2522 = !DILocation(line: 1540, column: 31, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !723, file: !439, line: 1538, column: 44)
!2524 = !DILocation(line: 1540, column: 21, scope: !2523)
!2525 = !DILocation(line: 1540, column: 19, scope: !2523)
!2526 = !DILocation(line: 1541, column: 21, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !439, line: 1541, column: 21)
!2528 = !DILocation(line: 1541, column: 23, scope: !2527)
!2529 = !DILocation(line: 1541, column: 29, scope: !2527)
!2530 = !DILocation(line: 1541, column: 32, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2527, file: !439, discriminator: 1)
!2532 = !DILocation(line: 1541, column: 34, scope: !2527)
!2533 = !DILocation(line: 1541, column: 21, scope: !2523)
!2534 = !DILocation(line: 1542, column: 21, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2527, file: !439, line: 1541, column: 42)
!2536 = !DILocation(line: 1542, column: 26, scope: !2535)
!2537 = !DILocation(line: 1542, column: 31, scope: !2535)
!2538 = !DILocation(line: 1543, column: 32, scope: !2535)
!2539 = !DILocation(line: 1543, column: 37, scope: !2535)
!2540 = !DILocation(line: 1543, column: 21, scope: !2535)
!2541 = !DILocation(line: 1544, column: 21, scope: !2535)
!2542 = !DILocation(line: 1546, column: 17, scope: !2523)
!2543 = !DILocation(line: 1547, column: 35, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2523, file: !439, line: 1546, column: 20)
!2545 = !DILocation(line: 1547, column: 25, scope: !2544)
!2546 = !DILocation(line: 1547, column: 23, scope: !2544)
!2547 = !DILocation(line: 1548, column: 17, scope: !2544)
!2548 = !DILocation(line: 1548, column: 33, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2523, file: !439, discriminator: 1)
!2550 = !DILocation(line: 1548, column: 30, scope: !2523)
!2551 = !DILocation(line: 1548, column: 35, scope: !2523)
!2552 = !DILocation(line: 1548, column: 38, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2523, file: !439, discriminator: 2)
!2554 = !DILocation(line: 1548, column: 40, scope: !2523)
!2555 = !DILocation(line: 1548, column: 17, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2544, file: !439, discriminator: 3)
!2557 = !DILocation(line: 1549, column: 13, scope: !2523)
!2558 = !DILocation(line: 1550, column: 22, scope: !722)
!2559 = !DILocation(line: 1550, column: 24, scope: !722)
!2560 = !DILocation(line: 1550, column: 31, scope: !722)
!2561 = !DILocation(line: 1550, column: 34, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !722, file: !439, discriminator: 1)
!2563 = !DILocation(line: 1550, column: 36, scope: !722)
!2564 = !DILocation(line: 1550, column: 22, scope: !723)
!2565 = !DILocation(line: 1552, column: 31, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !722, file: !439, line: 1550, column: 44)
!2567 = !DILocation(line: 1552, column: 21, scope: !2566)
!2568 = !DILocation(line: 1552, column: 19, scope: !2566)
!2569 = !DILocation(line: 1553, column: 21, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !439, line: 1553, column: 21)
!2571 = !DILocation(line: 1553, column: 23, scope: !2570)
!2572 = !DILocation(line: 1553, column: 30, scope: !2570)
!2573 = !DILocation(line: 1553, column: 33, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2570, file: !439, discriminator: 1)
!2575 = !DILocation(line: 1553, column: 35, scope: !2570)
!2576 = !DILocation(line: 1553, column: 21, scope: !2566)
!2577 = !DILocation(line: 1554, column: 21, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2570, file: !439, line: 1553, column: 43)
!2579 = !DILocation(line: 1554, column: 26, scope: !2578)
!2580 = !DILocation(line: 1554, column: 31, scope: !2578)
!2581 = !DILocation(line: 1555, column: 32, scope: !2578)
!2582 = !DILocation(line: 1555, column: 37, scope: !2578)
!2583 = !DILocation(line: 1555, column: 21, scope: !2578)
!2584 = !DILocation(line: 1556, column: 21, scope: !2578)
!2585 = !DILocation(line: 1558, column: 17, scope: !2566)
!2586 = !DILocation(line: 1559, column: 35, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2566, file: !439, line: 1558, column: 20)
!2588 = !DILocation(line: 1559, column: 25, scope: !2587)
!2589 = !DILocation(line: 1559, column: 23, scope: !2587)
!2590 = !DILocation(line: 1560, column: 17, scope: !2587)
!2591 = !DILocation(line: 1560, column: 26, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2566, file: !439, discriminator: 1)
!2593 = !DILocation(line: 1560, column: 28, scope: !2566)
!2594 = !DILocation(line: 1560, column: 35, scope: !2566)
!2595 = !DILocation(line: 1560, column: 38, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2566, file: !439, discriminator: 3)
!2597 = !DILocation(line: 1560, column: 40, scope: !2566)
!2598 = !DILocation(line: 1560, column: 17, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !439, discriminator: 4)
!2600 = !DILexicalBlockFile(scope: !2587, file: !439, discriminator: 2)
!2601 = !DILocation(line: 1561, column: 13, scope: !2566)
!2602 = !DILocation(line: 1563, column: 17, scope: !721)
!2603 = !DILocation(line: 1563, column: 21, scope: !721)
!2604 = !DILocation(line: 1566, column: 17, scope: !721)
!2605 = !DILocation(line: 1566, column: 24, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !439, discriminator: 2)
!2607 = !DILexicalBlockFile(scope: !721, file: !439, discriminator: 1)
!2608 = !DILocation(line: 1566, column: 26, scope: !721)
!2609 = !DILocation(line: 1567, column: 35, scope: !721)
!2610 = !DILocation(line: 1567, column: 25, scope: !721)
!2611 = !DILocation(line: 1567, column: 23, scope: !721)
!2612 = !DILocation(line: 1568, column: 17, scope: !721)
!2613 = !DILocation(line: 1568, column: 53, scope: !2606)
!2614 = !DILocation(line: 1568, column: 25, scope: !721)
!2615 = !DILocation(line: 1568, column: 27, scope: !721)
!2616 = !DILocation(line: 1568, column: 26, scope: !721)
!2617 = !DILocation(line: 1568, column: 58, scope: !721)
!2618 = !DILocation(line: 1569, column: 29, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !721, file: !439, line: 1568, column: 92)
!2620 = !DILocation(line: 1570, column: 35, scope: !2619)
!2621 = !DILocation(line: 1570, column: 25, scope: !2619)
!2622 = !DILocation(line: 1570, column: 23, scope: !2619)
!2623 = !DILocation(line: 1572, column: 21, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !721, file: !439, line: 1572, column: 21)
!2625 = !DILocation(line: 1572, column: 23, scope: !2624)
!2626 = !DILocation(line: 1572, column: 21, scope: !721)
!2627 = !DILocation(line: 1573, column: 21, scope: !2624)
!2628 = !DILocation(line: 1574, column: 26, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !439, line: 1574, column: 26)
!2630 = !DILocation(line: 1574, column: 28, scope: !2629)
!2631 = !DILocation(line: 1574, column: 35, scope: !2629)
!2632 = !DILocation(line: 1574, column: 38, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2629, file: !439, discriminator: 1)
!2634 = !DILocation(line: 1574, column: 40, scope: !2629)
!2635 = !DILocation(line: 1574, column: 26, scope: !2624)
!2636 = !DILocation(line: 1575, column: 21, scope: !2629)
!2637 = !DILocation(line: 1576, column: 26, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2629, file: !439, line: 1576, column: 26)
!2639 = !DILocation(line: 1576, column: 28, scope: !2638)
!2640 = !DILocation(line: 1576, column: 35, scope: !2638)
!2641 = !DILocation(line: 1576, column: 38, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2638, file: !439, discriminator: 1)
!2643 = !DILocation(line: 1576, column: 40, scope: !2638)
!2644 = !DILocation(line: 1576, column: 26, scope: !2629)
!2645 = !DILocation(line: 1577, column: 21, scope: !2638)
!2646 = !DILocation(line: 1578, column: 26, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2638, file: !439, line: 1578, column: 26)
!2648 = !DILocation(line: 1578, column: 26, scope: !2638)
!2649 = !DILocation(line: 1579, column: 21, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !439, line: 1578, column: 35)
!2651 = !DILocation(line: 1579, column: 26, scope: !2650)
!2652 = !DILocation(line: 1579, column: 31, scope: !2650)
!2653 = !DILocation(line: 1580, column: 32, scope: !2650)
!2654 = !DILocation(line: 1580, column: 37, scope: !2650)
!2655 = !DILocation(line: 1580, column: 21, scope: !2650)
!2656 = !DILocation(line: 1581, column: 21, scope: !2650)
!2657 = !DILocation(line: 1583, column: 13, scope: !722)
!2658 = !DILocation(line: 1583, column: 13, scope: !2562)
!2659 = !DILocation(line: 1584, column: 9, scope: !725)
!2660 = !DILocation(line: 1587, column: 13, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !726, file: !439, line: 1585, column: 14)
!2662 = !DILocation(line: 1588, column: 31, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2661, file: !439, line: 1587, column: 16)
!2664 = !DILocation(line: 1588, column: 21, scope: !2663)
!2665 = !DILocation(line: 1588, column: 19, scope: !2663)
!2666 = !DILocation(line: 1589, column: 13, scope: !2663)
!2667 = !DILocation(line: 1589, column: 51, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2661, file: !439, discriminator: 1)
!2669 = !DILocation(line: 1589, column: 23, scope: !2661)
!2670 = !DILocation(line: 1589, column: 25, scope: !2661)
!2671 = !DILocation(line: 1589, column: 24, scope: !2661)
!2672 = !DILocation(line: 1589, column: 56, scope: !2661)
!2673 = !DILocation(line: 1592, column: 21, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !439, line: 1592, column: 21)
!2675 = distinct !DILexicalBlock(scope: !2661, file: !439, line: 1590, column: 13)
!2676 = !DILocation(line: 1592, column: 23, scope: !2674)
!2677 = !DILocation(line: 1592, column: 21, scope: !2675)
!2678 = !DILocation(line: 1592, column: 31, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2674, file: !439, discriminator: 1)
!2680 = !DILocation(line: 1595, column: 21, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2674, file: !439, line: 1592, column: 31)
!2682 = !DILocation(line: 1596, column: 39, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2681, file: !439, line: 1595, column: 24)
!2684 = !DILocation(line: 1596, column: 29, scope: !2683)
!2685 = !DILocation(line: 1596, column: 27, scope: !2683)
!2686 = !DILocation(line: 1597, column: 21, scope: !2683)
!2687 = !DILocation(line: 1597, column: 59, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2681, file: !439, discriminator: 1)
!2689 = !DILocation(line: 1597, column: 31, scope: !2681)
!2690 = !DILocation(line: 1597, column: 33, scope: !2681)
!2691 = !DILocation(line: 1597, column: 32, scope: !2681)
!2692 = !DILocation(line: 1597, column: 64, scope: !2681)
!2693 = !DILocation(line: 1598, column: 17, scope: !2681)
!2694 = !DILocation(line: 1599, column: 21, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2675, file: !439, line: 1599, column: 21)
!2696 = !DILocation(line: 1599, column: 23, scope: !2695)
!2697 = !DILocation(line: 1599, column: 30, scope: !2695)
!2698 = !DILocation(line: 1599, column: 33, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2695, file: !439, discriminator: 2)
!2700 = !DILocation(line: 1599, column: 35, scope: !2695)
!2701 = !DILocation(line: 1599, column: 21, scope: !2675)
!2702 = !DILocation(line: 1599, column: 43, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2704, file: !439, discriminator: 3)
!2704 = !DILexicalBlockFile(scope: !2695, file: !439, discriminator: 1)
!2705 = !DILocation(line: 1602, column: 35, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2695, file: !439, line: 1599, column: 43)
!2707 = !DILocation(line: 1602, column: 25, scope: !2706)
!2708 = !DILocation(line: 1602, column: 23, scope: !2706)
!2709 = !DILocation(line: 1603, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !439, line: 1603, column: 25)
!2711 = !DILocation(line: 1603, column: 27, scope: !2710)
!2712 = !DILocation(line: 1603, column: 34, scope: !2710)
!2713 = !DILocation(line: 1603, column: 37, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2710, file: !439, discriminator: 1)
!2715 = !DILocation(line: 1603, column: 39, scope: !2710)
!2716 = !DILocation(line: 1603, column: 25, scope: !2706)
!2717 = !DILocation(line: 1604, column: 39, scope: !2710)
!2718 = !DILocation(line: 1604, column: 29, scope: !2710)
!2719 = !DILocation(line: 1604, column: 27, scope: !2710)
!2720 = !DILocation(line: 1604, column: 25, scope: !2710)
!2721 = !DILocation(line: 1605, column: 55, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2706, file: !439, line: 1605, column: 25)
!2723 = !DILocation(line: 1605, column: 27, scope: !2722)
!2724 = !DILocation(line: 1605, column: 29, scope: !2722)
!2725 = !DILocation(line: 1605, column: 28, scope: !2722)
!2726 = !DILocation(line: 1605, column: 60, scope: !2722)
!2727 = !DILocation(line: 1605, column: 25, scope: !2706)
!2728 = !DILocation(line: 1606, column: 25, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2722, file: !439, line: 1605, column: 94)
!2730 = !DILocation(line: 1606, column: 30, scope: !2729)
!2731 = !DILocation(line: 1606, column: 35, scope: !2729)
!2732 = !DILocation(line: 1607, column: 36, scope: !2729)
!2733 = !DILocation(line: 1607, column: 41, scope: !2729)
!2734 = !DILocation(line: 1607, column: 25, scope: !2729)
!2735 = !DILocation(line: 1608, column: 25, scope: !2729)
!2736 = !DILocation(line: 1610, column: 21, scope: !2706)
!2737 = !DILocation(line: 1611, column: 39, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2706, file: !439, line: 1610, column: 24)
!2739 = !DILocation(line: 1611, column: 29, scope: !2738)
!2740 = !DILocation(line: 1611, column: 27, scope: !2738)
!2741 = !DILocation(line: 1612, column: 21, scope: !2738)
!2742 = !DILocation(line: 1612, column: 59, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2706, file: !439, discriminator: 1)
!2744 = !DILocation(line: 1612, column: 31, scope: !2706)
!2745 = !DILocation(line: 1612, column: 33, scope: !2706)
!2746 = !DILocation(line: 1612, column: 32, scope: !2706)
!2747 = !DILocation(line: 1612, column: 64, scope: !2706)
!2748 = !DILocation(line: 1613, column: 17, scope: !2706)
!2749 = !DILocation(line: 1614, column: 21, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2675, file: !439, line: 1614, column: 21)
!2751 = !DILocation(line: 1614, column: 23, scope: !2750)
!2752 = !DILocation(line: 1614, column: 30, scope: !2750)
!2753 = !DILocation(line: 1614, column: 33, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2750, file: !439, discriminator: 2)
!2755 = !DILocation(line: 1614, column: 35, scope: !2750)
!2756 = !DILocation(line: 1614, column: 21, scope: !2675)
!2757 = !DILocation(line: 1614, column: 21, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2759, file: !439, discriminator: 3)
!2759 = !DILexicalBlockFile(scope: !2675, file: !439, discriminator: 1)
!2760 = !DILocation(line: 1617, column: 35, scope: !2750)
!2761 = !DILocation(line: 1617, column: 25, scope: !2750)
!2762 = !DILocation(line: 1617, column: 23, scope: !2750)
!2763 = !DILocation(line: 1617, column: 21, scope: !2750)
!2764 = !DILocation(line: 1620, column: 20, scope: !727)
!2765 = !DILocation(line: 1620, column: 25, scope: !727)
!2766 = !DILocation(line: 1620, column: 9, scope: !727)
!2767 = !DILocation(line: 1621, column: 20, scope: !727)
!2768 = !DILocation(line: 1621, column: 25, scope: !727)
!2769 = !DILocation(line: 1621, column: 10, scope: !727)
!2770 = !DILocation(line: 1621, column: 18, scope: !727)
!2771 = !DILocation(line: 1622, column: 18, scope: !727)
!2772 = !DILocation(line: 1622, column: 23, scope: !727)
!2773 = !DILocation(line: 1622, column: 10, scope: !727)
!2774 = !DILocation(line: 1622, column: 16, scope: !727)
!2775 = !DILocation(line: 1623, column: 9, scope: !727)
!2776 = !DILocation(line: 1517, column: 74, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !728, file: !439, discriminator: 1)
!2778 = !DILocation(line: 1628, column: 9, scope: !731)
!2779 = !DILocation(line: 1628, column: 11, scope: !731)
!2780 = !DILocation(line: 1628, column: 19, scope: !731)
!2781 = !DILocation(line: 1628, column: 22, scope: !2782)
!2782 = !DILexicalBlockFile(scope: !731, file: !439, discriminator: 1)
!2783 = !DILocation(line: 1628, column: 24, scope: !731)
!2784 = !DILocation(line: 1628, column: 9, scope: !703)
!2785 = !DILocation(line: 1629, column: 9, scope: !730)
!2786 = !DILocation(line: 1629, column: 13, scope: !730)
!2787 = !DILocation(line: 1629, column: 21, scope: !730)
!2788 = !DILocation(line: 1630, column: 9, scope: !730)
!2789 = !DILocation(line: 1630, column: 13, scope: !730)
!2790 = !DILocation(line: 1631, column: 9, scope: !730)
!2791 = !DILocation(line: 1631, column: 13, scope: !730)
!2792 = !DILocation(line: 1634, column: 23, scope: !730)
!2793 = !DILocation(line: 1634, column: 13, scope: !730)
!2794 = !DILocation(line: 1634, column: 11, scope: !730)
!2795 = !DILocation(line: 1635, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1635, column: 13)
!2797 = !DILocation(line: 1635, column: 18, scope: !2796)
!2798 = !DILocation(line: 1635, column: 15, scope: !2796)
!2799 = !DILocation(line: 1635, column: 13, scope: !730)
!2800 = !DILocation(line: 1636, column: 27, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !439, line: 1635, column: 25)
!2802 = !DILocation(line: 1636, column: 17, scope: !2801)
!2803 = !DILocation(line: 1636, column: 15, scope: !2801)
!2804 = !DILocation(line: 1637, column: 17, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !439, line: 1637, column: 17)
!2806 = !DILocation(line: 1637, column: 22, scope: !2805)
!2807 = !DILocation(line: 1637, column: 19, scope: !2805)
!2808 = !DILocation(line: 1637, column: 17, scope: !2801)
!2809 = !DILocation(line: 1638, column: 28, scope: !2805)
!2810 = !DILocation(line: 1638, column: 17, scope: !2805)
!2811 = !DILocation(line: 1640, column: 32, scope: !2805)
!2812 = !DILocation(line: 1641, column: 9, scope: !2801)
!2813 = !DILocation(line: 1642, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1642, column: 13)
!2815 = !DILocation(line: 1642, column: 18, scope: !2814)
!2816 = !DILocation(line: 1642, column: 15, scope: !2814)
!2817 = !DILocation(line: 1642, column: 13, scope: !730)
!2818 = !DILocation(line: 1643, column: 24, scope: !2814)
!2819 = !DILocation(line: 1643, column: 29, scope: !2814)
!2820 = !DILocation(line: 1643, column: 13, scope: !2814)
!2821 = !DILocation(line: 1646, column: 9, scope: !730)
!2822 = !DILocation(line: 1646, column: 16, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2824, file: !439, discriminator: 2)
!2824 = !DILexicalBlockFile(scope: !730, file: !439, discriminator: 1)
!2825 = !DILocation(line: 1646, column: 34, scope: !730)
!2826 = !DILocation(line: 1646, column: 31, scope: !730)
!2827 = !DILocation(line: 1647, column: 27, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !730, file: !439, line: 1646, column: 46)
!2829 = !DILocation(line: 1647, column: 17, scope: !2828)
!2830 = !DILocation(line: 1647, column: 15, scope: !2828)
!2831 = !DILocation(line: 1648, column: 17, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !439, line: 1648, column: 17)
!2833 = !DILocation(line: 1648, column: 19, scope: !2832)
!2834 = !DILocation(line: 1648, column: 17, scope: !2828)
!2835 = !DILocation(line: 1649, column: 21, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !439, line: 1649, column: 21)
!2837 = distinct !DILexicalBlock(scope: !2832, file: !439, line: 1648, column: 28)
!2838 = !DILocation(line: 1649, column: 32, scope: !2836)
!2839 = !DILocation(line: 1649, column: 21, scope: !2837)
!2840 = !DILocation(line: 1650, column: 21, scope: !2836)
!2841 = !DILocation(line: 1650, column: 26, scope: !2836)
!2842 = !DILocation(line: 1650, column: 31, scope: !2836)
!2843 = !DILocation(line: 1652, column: 21, scope: !2836)
!2844 = !DILocation(line: 1652, column: 26, scope: !2836)
!2845 = !DILocation(line: 1652, column: 31, scope: !2836)
!2846 = !DILocation(line: 1653, column: 28, scope: !2837)
!2847 = !DILocation(line: 1653, column: 33, scope: !2837)
!2848 = !DILocation(line: 1653, column: 17, scope: !2837)
!2849 = !DILocation(line: 1653, column: 22, scope: !2837)
!2850 = !DILocation(line: 1653, column: 26, scope: !2837)
!2851 = !DILocation(line: 1654, column: 17, scope: !2837)
!2852 = !DILocation(line: 1656, column: 17, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2828, file: !439, line: 1656, column: 17)
!2854 = !DILocation(line: 1656, column: 28, scope: !2853)
!2855 = !DILocation(line: 1656, column: 33, scope: !2853)
!2856 = !DILocation(line: 1656, column: 36, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2853, file: !439, discriminator: 1)
!2858 = !DILocation(line: 1656, column: 38, scope: !2853)
!2859 = !DILocation(line: 1656, column: 17, scope: !2828)
!2860 = !DILocation(line: 1657, column: 17, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2853, file: !439, line: 1656, column: 47)
!2862 = !DILocation(line: 1657, column: 22, scope: !2861)
!2863 = !DILocation(line: 1657, column: 27, scope: !2861)
!2864 = !DILocation(line: 1658, column: 28, scope: !2861)
!2865 = !DILocation(line: 1658, column: 33, scope: !2861)
!2866 = !DILocation(line: 1658, column: 17, scope: !2861)
!2867 = !DILocation(line: 1658, column: 22, scope: !2861)
!2868 = !DILocation(line: 1658, column: 26, scope: !2861)
!2869 = !DILocation(line: 1659, column: 17, scope: !2861)
!2870 = !DILocation(line: 1661, column: 17, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2828, file: !439, line: 1661, column: 17)
!2872 = !DILocation(line: 1661, column: 22, scope: !2871)
!2873 = !DILocation(line: 1661, column: 19, scope: !2871)
!2874 = !DILocation(line: 1661, column: 17, scope: !2828)
!2875 = !DILocation(line: 1662, column: 32, scope: !2871)
!2876 = !DILocation(line: 1662, column: 17, scope: !2871)
!2877 = !DILocation(line: 1664, column: 32, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2871, file: !439, line: 1663, column: 18)
!2879 = !DILocation(line: 1665, column: 21, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2878, file: !439, line: 1665, column: 21)
!2881 = !DILocation(line: 1665, column: 23, scope: !2880)
!2882 = !DILocation(line: 1665, column: 21, scope: !2878)
!2883 = !DILocation(line: 1666, column: 31, scope: !2880)
!2884 = !DILocation(line: 1666, column: 21, scope: !2880)
!2885 = !DILocation(line: 1666, column: 19, scope: !2880)
!2886 = !DILocation(line: 1666, column: 17, scope: !2880)
!2887 = !DILocation(line: 1670, column: 20, scope: !730)
!2888 = !DILocation(line: 1670, column: 25, scope: !730)
!2889 = !DILocation(line: 1670, column: 10, scope: !730)
!2890 = !DILocation(line: 1670, column: 18, scope: !730)
!2891 = !DILocation(line: 1671, column: 18, scope: !730)
!2892 = !DILocation(line: 1671, column: 23, scope: !730)
!2893 = !DILocation(line: 1671, column: 10, scope: !730)
!2894 = !DILocation(line: 1671, column: 16, scope: !730)
!2895 = !DILocation(line: 1672, column: 9, scope: !730)
!2896 = !DILocation(line: 1673, column: 5, scope: !731)
!2897 = !DILocation(line: 1676, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1676, column: 9)
!2899 = !DILocation(line: 1676, column: 11, scope: !2898)
!2900 = !DILocation(line: 1676, column: 9, scope: !703)
!2901 = !DILocation(line: 1677, column: 23, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !439, line: 1676, column: 20)
!2903 = !DILocation(line: 1677, column: 13, scope: !2902)
!2904 = !DILocation(line: 1677, column: 11, scope: !2902)
!2905 = !DILocation(line: 1678, column: 13, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !439, line: 1678, column: 13)
!2907 = !DILocation(line: 1678, column: 15, scope: !2906)
!2908 = !DILocation(line: 1678, column: 13, scope: !2902)
!2909 = !DILocation(line: 1679, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !439, line: 1678, column: 24)
!2911 = !DILocation(line: 1679, column: 18, scope: !2910)
!2912 = !DILocation(line: 1679, column: 23, scope: !2910)
!2913 = !DILocation(line: 1680, column: 24, scope: !2910)
!2914 = !DILocation(line: 1680, column: 29, scope: !2910)
!2915 = !DILocation(line: 1680, column: 13, scope: !2910)
!2916 = !DILocation(line: 1680, column: 18, scope: !2910)
!2917 = !DILocation(line: 1680, column: 22, scope: !2910)
!2918 = !DILocation(line: 1681, column: 13, scope: !2910)
!2919 = !DILocation(line: 1683, column: 9, scope: !2902)
!2920 = !DILocation(line: 1683, column: 14, scope: !2902)
!2921 = !DILocation(line: 1683, column: 24, scope: !2902)
!2922 = !DILocation(line: 1684, column: 9, scope: !2902)
!2923 = !DILocation(line: 1689, column: 9, scope: !735)
!2924 = !DILocation(line: 1689, column: 13, scope: !735)
!2925 = !DILocation(line: 1689, column: 28, scope: !735)
!2926 = !DILocation(line: 1689, column: 18, scope: !735)
!2927 = !DILocation(line: 1690, column: 9, scope: !735)
!2928 = !DILocation(line: 1690, column: 13, scope: !735)
!2929 = !DILocation(line: 1690, column: 38, scope: !735)
!2930 = !DILocation(line: 1690, column: 41, scope: !735)
!2931 = !DILocation(line: 1690, column: 21, scope: !735)
!2932 = !DILocation(line: 1691, column: 13, scope: !739)
!2933 = !DILocation(line: 1691, column: 19, scope: !739)
!2934 = !DILocation(line: 1691, column: 13, scope: !735)
!2935 = !DILocation(line: 1692, column: 13, scope: !738)
!2936 = !DILocation(line: 1692, column: 17, scope: !738)
!2937 = !DILocation(line: 1692, column: 32, scope: !738)
!2938 = !DILocation(line: 1692, column: 22, scope: !738)
!2939 = !DILocation(line: 1693, column: 13, scope: !738)
!2940 = !DILocation(line: 1693, column: 17, scope: !738)
!2941 = !DILocation(line: 1693, column: 45, scope: !738)
!2942 = !DILocation(line: 1693, column: 48, scope: !738)
!2943 = !DILocation(line: 1693, column: 52, scope: !738)
!2944 = !DILocation(line: 1693, column: 26, scope: !738)
!2945 = !DILocation(line: 1694, column: 17, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !738, file: !439, line: 1694, column: 17)
!2947 = !DILocation(line: 1694, column: 24, scope: !2946)
!2948 = !DILocation(line: 1694, column: 17, scope: !738)
!2949 = !DILocation(line: 1695, column: 25, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !439, line: 1694, column: 31)
!2951 = !DILocation(line: 1695, column: 23, scope: !2950)
!2952 = !DILocation(line: 1696, column: 13, scope: !2950)
!2953 = !DILocation(line: 1697, column: 28, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2946, file: !439, line: 1696, column: 20)
!2955 = !DILocation(line: 1697, column: 33, scope: !2954)
!2956 = !DILocation(line: 1697, column: 17, scope: !2954)
!2957 = !DILocation(line: 1699, column: 24, scope: !738)
!2958 = !DILocation(line: 1699, column: 29, scope: !738)
!2959 = !DILocation(line: 1699, column: 14, scope: !738)
!2960 = !DILocation(line: 1699, column: 22, scope: !738)
!2961 = !DILocation(line: 1700, column: 22, scope: !738)
!2962 = !DILocation(line: 1700, column: 27, scope: !738)
!2963 = !DILocation(line: 1700, column: 14, scope: !738)
!2964 = !DILocation(line: 1700, column: 20, scope: !738)
!2965 = !DILocation(line: 1701, column: 20, scope: !738)
!2966 = !DILocation(line: 1701, column: 13, scope: !738)
!2967 = !DILocation(line: 1702, column: 9, scope: !739)
!2968 = !DILocation(line: 1703, column: 20, scope: !735)
!2969 = !DILocation(line: 1703, column: 25, scope: !735)
!2970 = !DILocation(line: 1703, column: 9, scope: !735)
!2971 = !DILocation(line: 1704, column: 5, scope: !703)
!2972 = !DILocation(line: 1704, column: 5, scope: !2136)
!2973 = !DILocation(line: 1707, column: 13, scope: !703)
!2974 = !DILocation(line: 1707, column: 5, scope: !703)
!2975 = !DILocation(line: 1711, column: 9, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !703, file: !439, line: 1707, column: 16)
!2977 = !DILocation(line: 1711, column: 14, scope: !2976)
!2978 = !DILocation(line: 1711, column: 19, scope: !2976)
!2979 = !DILocation(line: 1712, column: 9, scope: !2976)
!2980 = !DILocation(line: 1716, column: 9, scope: !2976)
!2981 = !DILocation(line: 1716, column: 14, scope: !2976)
!2982 = !DILocation(line: 1716, column: 19, scope: !2976)
!2983 = !DILocation(line: 1717, column: 9, scope: !2976)
!2984 = !DILocation(line: 1721, column: 16, scope: !703)
!2985 = !DILocation(line: 1721, column: 21, scope: !703)
!2986 = !DILocation(line: 1721, column: 6, scope: !703)
!2987 = !DILocation(line: 1721, column: 14, scope: !703)
!2988 = !DILocation(line: 1722, column: 14, scope: !703)
!2989 = !DILocation(line: 1722, column: 19, scope: !703)
!2990 = !DILocation(line: 1722, column: 6, scope: !703)
!2991 = !DILocation(line: 1722, column: 12, scope: !703)
!2992 = !DILocation(line: 1723, column: 28, scope: !703)
!2993 = !DILocation(line: 1723, column: 12, scope: !703)
!2994 = !DILocation(line: 1723, column: 5, scope: !703)
!2995 = !DILocation(line: 1724, column: 1, scope: !703)
!2996 = !DILocation(line: 1748, column: 38, scope: !507)
!2997 = !DILocation(line: 1748, column: 52, scope: !507)
!2998 = !DILocation(line: 1750, column: 5, scope: !507)
!2999 = !DILocation(line: 1750, column: 23, scope: !507)
!3000 = !DILocation(line: 1751, column: 5, scope: !507)
!3001 = !DILocation(line: 1751, column: 11, scope: !507)
!3002 = !DILocation(line: 1752, column: 5, scope: !507)
!3003 = !DILocation(line: 1752, column: 11, scope: !507)
!3004 = !DILocation(line: 1752, column: 34, scope: !507)
!3005 = !DILocation(line: 1752, column: 55, scope: !507)
!3006 = !DILocation(line: 1755, column: 18, scope: !507)
!3007 = !DILocation(line: 1755, column: 10, scope: !507)
!3008 = !DILocation(line: 1755, column: 8, scope: !507)
!3009 = !DILocation(line: 1759, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1759, column: 9)
!3011 = !DILocation(line: 1759, column: 12, scope: !3010)
!3012 = !DILocation(line: 1759, column: 9, scope: !507)
!3013 = !DILocation(line: 1760, column: 9, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !439, line: 1759, column: 17)
!3015 = !DILocation(line: 1763, column: 17, scope: !507)
!3016 = !DILocation(line: 1763, column: 10, scope: !507)
!3017 = !DILocation(line: 1763, column: 8, scope: !507)
!3018 = !DILocation(line: 1764, column: 9, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1764, column: 9)
!3020 = !DILocation(line: 1764, column: 12, scope: !3019)
!3021 = !DILocation(line: 1764, column: 9, scope: !507)
!3022 = !DILocation(line: 1765, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !439, line: 1764, column: 27)
!3024 = !DILocation(line: 1767, column: 32, scope: !507)
!3025 = !DILocation(line: 1767, column: 11, scope: !507)
!3026 = !DILocation(line: 1767, column: 9, scope: !507)
!3027 = !DILocation(line: 1768, column: 9, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1768, column: 9)
!3029 = !DILocation(line: 1768, column: 13, scope: !3028)
!3030 = !DILocation(line: 1768, column: 9, scope: !507)
!3031 = !DILocation(line: 1769, column: 16, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !439, line: 1768, column: 28)
!3033 = !DILocation(line: 1769, column: 9, scope: !3032)
!3034 = !DILocation(line: 1770, column: 9, scope: !3032)
!3035 = !DILocation(line: 1773, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1773, column: 9)
!3037 = !DILocation(line: 1773, column: 18, scope: !3036)
!3038 = !DILocation(line: 1773, column: 9, scope: !507)
!3039 = !DILocation(line: 1774, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !439, line: 1773, column: 33)
!3041 = !DILocation(line: 1774, column: 37, scope: !3040)
!3042 = !DILocation(line: 1774, column: 46, scope: !3040)
!3043 = !DILocation(line: 1775, column: 25, scope: !3040)
!3044 = !DILocation(line: 1775, column: 9, scope: !3040)
!3045 = !DILocation(line: 1775, column: 14, scope: !3040)
!3046 = !DILocation(line: 1775, column: 23, scope: !3040)
!3047 = !DILocation(line: 1776, column: 5, scope: !3040)
!3048 = !DILocation(line: 1778, column: 25, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3036, file: !439, line: 1777, column: 10)
!3050 = !DILocation(line: 1778, column: 9, scope: !3049)
!3051 = !DILocation(line: 1778, column: 14, scope: !3049)
!3052 = !DILocation(line: 1778, column: 23, scope: !3049)
!3053 = !DILocation(line: 1779, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3049, file: !439, line: 1779, column: 13)
!3055 = !DILocation(line: 1779, column: 18, scope: !3054)
!3056 = !DILocation(line: 1779, column: 27, scope: !3054)
!3057 = !DILocation(line: 1779, column: 13, scope: !3049)
!3058 = !DILocation(line: 1780, column: 20, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3054, file: !439, line: 1779, column: 42)
!3060 = !DILocation(line: 1780, column: 13, scope: !3059)
!3061 = !DILocation(line: 1781, column: 30, scope: !3059)
!3062 = !DILocation(line: 1781, column: 13, scope: !3059)
!3063 = !DILocation(line: 1782, column: 20, scope: !3059)
!3064 = !DILocation(line: 1782, column: 13, scope: !3059)
!3065 = !DILocation(line: 1786, column: 5, scope: !507)
!3066 = !DILocation(line: 1786, column: 12, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !3068, file: !439, discriminator: 4)
!3068 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 1)
!3069 = !DILocation(line: 1786, column: 17, scope: !507)
!3070 = !DILocation(line: 1786, column: 24, scope: !507)
!3071 = !DILocation(line: 1786, column: 28, scope: !507)
!3072 = !DILocation(line: 1786, column: 31, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 2)
!3074 = !DILocation(line: 1786, column: 36, scope: !507)
!3075 = !DILocation(line: 1786, column: 41, scope: !507)
!3076 = !DILocation(line: 1786, column: 5, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !507, file: !439, discriminator: 3)
!3078 = !DILocation(line: 1787, column: 25, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1786, column: 48)
!3080 = !DILocation(line: 1787, column: 9, scope: !3079)
!3081 = !DILocation(line: 1789, column: 12, scope: !507)
!3082 = !DILocation(line: 1789, column: 5, scope: !507)
!3083 = !DILocation(line: 1790, column: 9, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !507, file: !439, line: 1790, column: 9)
!3085 = !DILocation(line: 1790, column: 14, scope: !3084)
!3086 = !DILocation(line: 1790, column: 9, scope: !507)
!3087 = !DILocation(line: 1791, column: 48, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !439, line: 1790, column: 24)
!3089 = !DILocation(line: 1791, column: 53, scope: !3088)
!3090 = !DILocation(line: 1791, column: 41, scope: !3088)
!3091 = !DILocation(line: 1791, column: 63, scope: !3088)
!3092 = !DILocation(line: 1791, column: 28, scope: !3088)
!3093 = !DILocation(line: 1791, column: 18, scope: !3088)
!3094 = !DILocation(line: 1792, column: 13, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3088, file: !439, line: 1792, column: 13)
!3096 = !DILocation(line: 1792, column: 13, scope: !3088)
!3097 = !DILocation(line: 1793, column: 16, scope: !3095)
!3098 = !DILocation(line: 1793, column: 26, scope: !3095)
!3099 = !DILocation(line: 1793, column: 31, scope: !3095)
!3100 = !DILocation(line: 1793, column: 9, scope: !3095)
!3101 = !DILocation(line: 1794, column: 5, scope: !3088)
!3102 = !DILocation(line: 1795, column: 22, scope: !507)
!3103 = !DILocation(line: 1795, column: 5, scope: !507)
!3104 = !DILocation(line: 1796, column: 12, scope: !507)
!3105 = !DILocation(line: 1796, column: 5, scope: !507)
!3106 = !DILocation(line: 1797, column: 1, scope: !507)
!3107 = !DILocation(line: 1800, column: 30, scope: !518)
!3108 = !DILocation(line: 1802, column: 45, scope: !518)
!3109 = !DILocation(line: 1802, column: 12, scope: !518)
!3110 = !DILocation(line: 1802, column: 5, scope: !518)
!3111 = !DILocation(line: 339, column: 15, scope: !543)
!3112 = !DILocation(line: 340, column: 16, scope: !543)
!3113 = !DILocation(line: 341, column: 15, scope: !543)
!3114 = !DILocation(line: 342, column: 29, scope: !543)
!3115 = !DILocation(line: 344, column: 5, scope: !543)
!3116 = !DILocation(line: 344, column: 9, scope: !543)
!3117 = !DILocation(line: 344, column: 14, scope: !543)
!3118 = !DILocation(line: 344, column: 19, scope: !543)
!3119 = !DILocation(line: 345, column: 11, scope: !543)
!3120 = !DILocation(line: 345, column: 20, scope: !543)
!3121 = !DILocation(line: 345, column: 9, scope: !543)
!3122 = !DILocation(line: 346, column: 5, scope: !543)
!3123 = !DILocation(line: 346, column: 10, scope: !543)
!3124 = !DILocation(line: 346, column: 25, scope: !543)
!3125 = !DILocation(line: 347, column: 9, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !543, file: !439, line: 347, column: 9)
!3127 = !DILocation(line: 347, column: 13, scope: !3126)
!3128 = !DILocation(line: 347, column: 9, scope: !543)
!3129 = !DILocation(line: 348, column: 9, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !439, line: 347, column: 22)
!3131 = !DILocation(line: 349, column: 16, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3126, file: !439, line: 349, column: 16)
!3133 = !DILocation(line: 349, column: 20, scope: !3132)
!3134 = !DILocation(line: 349, column: 16, scope: !3126)
!3135 = !DILocation(line: 350, column: 15, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !439, line: 349, column: 29)
!3137 = !DILocation(line: 350, column: 24, scope: !3136)
!3138 = !DILocation(line: 350, column: 13, scope: !3136)
!3139 = !DILocation(line: 351, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !439, line: 351, column: 13)
!3141 = !DILocation(line: 351, column: 17, scope: !3140)
!3142 = !DILocation(line: 351, column: 13, scope: !3136)
!3143 = !DILocation(line: 352, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !439, line: 351, column: 26)
!3145 = !DILocation(line: 352, column: 24, scope: !3144)
!3146 = !DILocation(line: 352, column: 29, scope: !3144)
!3147 = !DILocation(line: 353, column: 13, scope: !3144)
!3148 = !DILocation(line: 353, column: 24, scope: !3144)
!3149 = !DILocation(line: 353, column: 29, scope: !3144)
!3150 = !DILocation(line: 354, column: 13, scope: !3144)
!3151 = !DILocation(line: 356, column: 15, scope: !3136)
!3152 = !DILocation(line: 356, column: 24, scope: !3136)
!3153 = !DILocation(line: 356, column: 13, scope: !3136)
!3154 = !DILocation(line: 357, column: 13, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3136, file: !439, line: 357, column: 13)
!3156 = !DILocation(line: 357, column: 17, scope: !3155)
!3157 = !DILocation(line: 357, column: 13, scope: !3136)
!3158 = !DILocation(line: 358, column: 13, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !439, line: 357, column: 26)
!3160 = !DILocation(line: 358, column: 24, scope: !3159)
!3161 = !DILocation(line: 358, column: 29, scope: !3159)
!3162 = !DILocation(line: 359, column: 13, scope: !3159)
!3163 = !DILocation(line: 359, column: 24, scope: !3159)
!3164 = !DILocation(line: 359, column: 29, scope: !3159)
!3165 = !DILocation(line: 360, column: 13, scope: !3159)
!3166 = !DILocation(line: 360, column: 24, scope: !3159)
!3167 = !DILocation(line: 360, column: 29, scope: !3159)
!3168 = !DILocation(line: 361, column: 13, scope: !3159)
!3169 = !DILocation(line: 387, column: 5, scope: !3136)
!3170 = !DILocation(line: 388, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3132, file: !439, line: 387, column: 12)
!3172 = !DILocation(line: 388, column: 20, scope: !3171)
!3173 = !DILocation(line: 388, column: 25, scope: !3171)
!3174 = !DILocation(line: 389, column: 9, scope: !3171)
!3175 = !DILocation(line: 391, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !543, file: !439, line: 391, column: 9)
!3177 = !DILocation(line: 391, column: 14, scope: !3176)
!3178 = !DILocation(line: 391, column: 23, scope: !3176)
!3179 = !DILocation(line: 391, column: 9, scope: !543)
!3180 = !DILocation(line: 392, column: 20, scope: !3176)
!3181 = !DILocation(line: 392, column: 25, scope: !3176)
!3182 = !DILocation(line: 392, column: 9, scope: !3176)
!3183 = !DILocation(line: 393, column: 44, scope: !543)
!3184 = !DILocation(line: 393, column: 21, scope: !543)
!3185 = !DILocation(line: 393, column: 5, scope: !543)
!3186 = !DILocation(line: 393, column: 10, scope: !543)
!3187 = !DILocation(line: 393, column: 19, scope: !543)
!3188 = !DILocation(line: 394, column: 10, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !543, file: !439, line: 394, column: 9)
!3190 = !DILocation(line: 394, column: 15, scope: !3189)
!3191 = !DILocation(line: 394, column: 9, scope: !543)
!3192 = !DILocation(line: 395, column: 9, scope: !3189)
!3193 = !DILocation(line: 397, column: 5, scope: !543)
!3194 = !DILocation(line: 398, column: 1, scope: !543)
!3195 = !DILocation(line: 656, column: 28, scope: !571)
!3196 = !DILocation(line: 657, column: 31, scope: !571)
!3197 = !DILocation(line: 657, column: 36, scope: !571)
!3198 = !DILocation(line: 657, column: 39, scope: !571)
!3199 = !DILocation(line: 657, column: 30, scope: !571)
!3200 = !DILocation(line: 657, column: 29, scope: !571)
!3201 = !DILocation(line: 657, column: 43, scope: !571)
!3202 = !DILocation(line: 657, column: 13, scope: !571)
!3203 = !DILocation(line: 657, column: 12, scope: !571)
!3204 = !DILocation(line: 657, column: 5, scope: !571)
!3205 = !DILocation(line: 663, column: 16, scope: !574)
!3206 = !DILocation(line: 663, column: 37, scope: !574)
!3207 = !DILocation(line: 664, column: 5, scope: !574)
!3208 = !DILocation(line: 664, column: 10, scope: !574)
!3209 = !DILocation(line: 664, column: 13, scope: !574)
!3210 = !DILocation(line: 666, column: 1, scope: !574)
!3211 = !DILocation(line: 672, column: 32, scope: !578)
!3212 = !DILocation(line: 672, column: 49, scope: !578)
!3213 = !DILocation(line: 673, column: 16, scope: !578)
!3214 = !DILocation(line: 673, column: 5, scope: !578)
!3215 = !DILocation(line: 673, column: 10, scope: !578)
!3216 = !DILocation(line: 673, column: 14, scope: !578)
!3217 = !DILocation(line: 674, column: 5, scope: !578)
!3218 = !DILocation(line: 185, column: 29, scope: !582)
!3219 = !DILocation(line: 187, column: 5, scope: !582)
!3220 = !DILocation(line: 187, column: 10, scope: !582)
!3221 = !DILocation(line: 187, column: 25, scope: !582)
!3222 = !DILocation(line: 188, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !582, file: !439, line: 188, column: 9)
!3224 = !DILocation(line: 188, column: 14, scope: !3223)
!3225 = !DILocation(line: 188, column: 17, scope: !3223)
!3226 = !DILocation(line: 188, column: 31, scope: !3223)
!3227 = !DILocation(line: 188, column: 34, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3223, file: !439, discriminator: 1)
!3229 = !DILocation(line: 188, column: 39, scope: !3223)
!3230 = !DILocation(line: 188, column: 43, scope: !3223)
!3231 = !DILocation(line: 188, column: 9, scope: !582)
!3232 = !DILocation(line: 189, column: 20, scope: !3223)
!3233 = !DILocation(line: 189, column: 25, scope: !3223)
!3234 = !DILocation(line: 189, column: 9, scope: !3223)
!3235 = !DILocation(line: 190, column: 5, scope: !582)
!3236 = !DILocation(line: 190, column: 10, scope: !582)
!3237 = !DILocation(line: 190, column: 14, scope: !582)
!3238 = !DILocation(line: 191, column: 5, scope: !582)
!3239 = !DILocation(line: 681, column: 33, scope: !587)
!3240 = !DILocation(line: 681, column: 50, scope: !587)
!3241 = !DILocation(line: 682, column: 5, scope: !587)
!3242 = !DILocation(line: 682, column: 15, scope: !587)
!3243 = !DILocation(line: 683, column: 5, scope: !587)
!3244 = !DILocation(line: 683, column: 15, scope: !587)
!3245 = !DILocation(line: 683, column: 38, scope: !587)
!3246 = !DILocation(line: 683, column: 50, scope: !587)
!3247 = !DILocation(line: 683, column: 43, scope: !587)
!3248 = !DILocation(line: 683, column: 56, scope: !587)
!3249 = !DILocation(line: 683, column: 21, scope: !587)
!3250 = !DILocation(line: 684, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !587, file: !439, line: 684, column: 9)
!3252 = !DILocation(line: 684, column: 13, scope: !3251)
!3253 = !DILocation(line: 684, column: 9, scope: !587)
!3254 = !DILocation(line: 685, column: 9, scope: !3251)
!3255 = !DILocation(line: 686, column: 35, scope: !587)
!3256 = !DILocation(line: 686, column: 12, scope: !587)
!3257 = !DILocation(line: 686, column: 10, scope: !587)
!3258 = !DILocation(line: 687, column: 5, scope: !587)
!3259 = !DILocation(line: 687, column: 10, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 1)
!3261 = !DILocation(line: 687, column: 20, scope: !596)
!3262 = !DILocation(line: 687, column: 50, scope: !596)
!3263 = !DILocation(line: 687, column: 64, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !596, file: !439, line: 687, column: 61)
!3265 = !DILocation(line: 687, column: 81, scope: !3264)
!3266 = !DILocation(line: 687, column: 61, scope: !3264)
!3267 = !DILocation(line: 687, column: 91, scope: !3264)
!3268 = !DILocation(line: 687, column: 61, scope: !596)
!3269 = !DILocation(line: 687, column: 61, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 2)
!3271 = !DILocation(line: 687, column: 122, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3264, file: !439, discriminator: 3)
!3273 = !DILocation(line: 687, column: 140, scope: !3264)
!3274 = !DILocation(line: 687, column: 150, scope: !3264)
!3275 = !DILocation(line: 687, column: 175, scope: !3264)
!3276 = !DILocation(line: 687, column: 106, scope: !3264)
!3277 = !DILocation(line: 687, column: 194, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !587, file: !439, discriminator: 4)
!3279 = !DILocation(line: 687, column: 194, scope: !596)
!3280 = !DILocation(line: 687, column: 194, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !596, file: !439, discriminator: 5)
!3282 = !DILocation(line: 688, column: 12, scope: !587)
!3283 = !DILocation(line: 688, column: 5, scope: !587)
!3284 = !DILocation(line: 689, column: 1, scope: !587)
!3285 = !DILocation(line: 280, column: 31, scope: !597)
!3286 = !DILocation(line: 280, column: 48, scope: !597)
!3287 = !DILocation(line: 280, column: 72, scope: !597)
!3288 = !DILocation(line: 281, column: 23, scope: !597)
!3289 = !DILocation(line: 283, column: 5, scope: !597)
!3290 = !DILocation(line: 283, column: 11, scope: !597)
!3291 = !DILocation(line: 284, column: 5, scope: !597)
!3292 = !DILocation(line: 284, column: 9, scope: !597)
!3293 = !DILocation(line: 286, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !597, file: !439, line: 286, column: 9)
!3295 = !DILocation(line: 286, column: 14, scope: !3294)
!3296 = !DILocation(line: 286, column: 9, scope: !597)
!3297 = !DILocation(line: 288, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !439, line: 286, column: 25)
!3299 = !DILocation(line: 288, column: 14, scope: !3298)
!3300 = !DILocation(line: 288, column: 31, scope: !3298)
!3301 = !DILocation(line: 289, column: 9, scope: !3298)
!3302 = !DILocation(line: 291, column: 26, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !597, file: !439, line: 291, column: 9)
!3304 = !DILocation(line: 291, column: 37, scope: !3303)
!3305 = !DILocation(line: 291, column: 43, scope: !3303)
!3306 = !DILocation(line: 291, column: 10, scope: !3303)
!3307 = !DILocation(line: 291, column: 9, scope: !597)
!3308 = !DILocation(line: 292, column: 9, scope: !3303)
!3309 = !DILocation(line: 293, column: 10, scope: !609)
!3310 = !DILocation(line: 293, column: 9, scope: !597)
!3311 = !DILocation(line: 294, column: 9, scope: !608)
!3312 = !DILocation(line: 294, column: 20, scope: !608)
!3313 = !DILocation(line: 295, column: 16, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !608, file: !439, line: 295, column: 9)
!3315 = !DILocation(line: 295, column: 14, scope: !3314)
!3316 = !DILocation(line: 295, column: 21, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3318, file: !439, discriminator: 2)
!3318 = !DILexicalBlockFile(scope: !3319, file: !439, discriminator: 1)
!3319 = distinct !DILexicalBlock(scope: !3314, file: !439, line: 295, column: 9)
!3320 = !DILocation(line: 295, column: 25, scope: !3319)
!3321 = !DILocation(line: 295, column: 23, scope: !3319)
!3322 = !DILocation(line: 295, column: 9, scope: !3314)
!3323 = !DILocation(line: 296, column: 22, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !439, line: 296, column: 17)
!3325 = distinct !DILexicalBlock(scope: !3319, file: !439, line: 295, column: 36)
!3326 = !DILocation(line: 296, column: 17, scope: !3324)
!3327 = !DILocation(line: 296, column: 25, scope: !3324)
!3328 = !DILocation(line: 296, column: 32, scope: !3324)
!3329 = !DILocation(line: 296, column: 40, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3324, file: !439, discriminator: 1)
!3331 = !DILocation(line: 296, column: 35, scope: !3324)
!3332 = !DILocation(line: 296, column: 43, scope: !3324)
!3333 = !DILocation(line: 296, column: 51, scope: !3324)
!3334 = !DILocation(line: 296, column: 59, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3324, file: !439, discriminator: 2)
!3336 = !DILocation(line: 296, column: 54, scope: !3324)
!3337 = !DILocation(line: 296, column: 62, scope: !3324)
!3338 = !DILocation(line: 296, column: 17, scope: !3325)
!3339 = !DILocation(line: 297, column: 17, scope: !3324)
!3340 = !DILocation(line: 298, column: 22, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3325, file: !439, line: 298, column: 17)
!3342 = !DILocation(line: 298, column: 17, scope: !3341)
!3343 = !DILocation(line: 298, column: 25, scope: !3341)
!3344 = !DILocation(line: 298, column: 32, scope: !3341)
!3345 = !DILocation(line: 298, column: 40, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3341, file: !439, discriminator: 1)
!3347 = !DILocation(line: 298, column: 35, scope: !3341)
!3348 = !DILocation(line: 298, column: 43, scope: !3341)
!3349 = !DILocation(line: 298, column: 51, scope: !3341)
!3350 = !DILocation(line: 298, column: 59, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3341, file: !439, discriminator: 2)
!3352 = !DILocation(line: 298, column: 54, scope: !3341)
!3353 = !DILocation(line: 298, column: 62, scope: !3341)
!3354 = !DILocation(line: 298, column: 17, scope: !3325)
!3355 = !DILocation(line: 301, column: 17, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3341, file: !439, line: 298, column: 73)
!3357 = !DILocation(line: 301, column: 22, scope: !3356)
!3358 = !DILocation(line: 301, column: 39, scope: !3356)
!3359 = !DILocation(line: 302, column: 17, scope: !3356)
!3360 = !DILocation(line: 304, column: 9, scope: !3325)
!3361 = !DILocation(line: 295, column: 32, scope: !3319)
!3362 = !DILocation(line: 295, column: 9, scope: !3319)
!3363 = !DILocation(line: 305, column: 9, scope: !608)
!3364 = !DILocation(line: 306, column: 5, scope: !609)
!3365 = !DILocation(line: 307, column: 5, scope: !597)
!3366 = !DILocation(line: 307, column: 10, scope: !597)
!3367 = !DILocation(line: 307, column: 27, scope: !597)
!3368 = !DILocation(line: 308, column: 9, scope: !614)
!3369 = !DILocation(line: 308, column: 14, scope: !614)
!3370 = !DILocation(line: 308, column: 23, scope: !614)
!3371 = !DILocation(line: 308, column: 9, scope: !597)
!3372 = !DILocation(line: 310, column: 30, scope: !611)
!3373 = !DILocation(line: 310, column: 37, scope: !611)
!3374 = !DILocation(line: 310, column: 47, scope: !611)
!3375 = !DILocation(line: 310, column: 1339, scope: !611)
!3376 = !DILocation(line: 310, column: 1352, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 1)
!3378 = !DILocation(line: 310, column: 1372, scope: !611)
!3379 = !DILocation(line: 310, column: 1381, scope: !611)
!3380 = !DILocation(line: 310, column: 1226, scope: !611)
!3381 = !DILocation(line: 310, column: 1540, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !617, file: !439, discriminator: 3)
!3383 = !DILocation(line: 310, column: 1561, scope: !617)
!3384 = !DILocation(line: 310, column: 1608, scope: !617)
!3385 = !DILocation(line: 310, column: 1613, scope: !617)
!3386 = !DILocation(line: 310, column: 1626, scope: !617)
!3387 = !DILocation(line: 310, column: 1637, scope: !617)
!3388 = !DILocation(line: 310, column: 1647, scope: !617)
!3389 = !DILocation(line: 310, column: 1645, scope: !617)
!3390 = !DILocation(line: 310, column: 1706, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !617, file: !439, line: 310, column: 1706)
!3392 = !DILocation(line: 310, column: 1715, scope: !3391)
!3393 = !DILocation(line: 310, column: 1719, scope: !3391)
!3394 = !DILocation(line: 310, column: 1722, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3391, file: !439, discriminator: 5)
!3396 = !DILocation(line: 310, column: 1731, scope: !3391)
!3397 = !DILocation(line: 310, column: 1706, scope: !617)
!3398 = !DILocation(line: 310, column: 1751, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3400, file: !439, discriminator: 7)
!3400 = distinct !DILexicalBlock(scope: !3391, file: !439, line: 310, column: 1737)
!3401 = !DILocation(line: 310, column: 1761, scope: !3400)
!3402 = !DILocation(line: 310, column: 1759, scope: !3400)
!3403 = !DILocation(line: 310, column: 1748, scope: !3400)
!3404 = !DILocation(line: 310, column: 1821, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3400, file: !439, line: 310, column: 1821)
!3406 = !DILocation(line: 310, column: 1830, scope: !3405)
!3407 = !DILocation(line: 310, column: 1834, scope: !3405)
!3408 = !DILocation(line: 310, column: 1837, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3405, file: !439, discriminator: 9)
!3410 = !DILocation(line: 310, column: 1846, scope: !3405)
!3411 = !DILocation(line: 310, column: 1821, scope: !3400)
!3412 = !DILocation(line: 310, column: 1866, scope: !3413)
!3413 = !DILexicalBlockFile(scope: !3414, file: !439, discriminator: 11)
!3414 = distinct !DILexicalBlock(scope: !3405, file: !439, line: 310, column: 1852)
!3415 = !DILocation(line: 310, column: 1876, scope: !3414)
!3416 = !DILocation(line: 310, column: 1874, scope: !3414)
!3417 = !DILocation(line: 310, column: 1863, scope: !3414)
!3418 = !DILocation(line: 310, column: 1936, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !439, line: 310, column: 1936)
!3420 = !DILocation(line: 310, column: 1945, scope: !3419)
!3421 = !DILocation(line: 310, column: 1949, scope: !3419)
!3422 = !DILocation(line: 310, column: 1952, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3419, file: !439, discriminator: 13)
!3424 = !DILocation(line: 310, column: 1961, scope: !3419)
!3425 = !DILocation(line: 310, column: 1936, scope: !3414)
!3426 = !DILocation(line: 310, column: 1979, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3419, file: !439, discriminator: 15)
!3428 = !DILocation(line: 310, column: 1989, scope: !3419)
!3429 = !DILocation(line: 310, column: 1987, scope: !3419)
!3430 = !DILocation(line: 310, column: 1976, scope: !3419)
!3431 = !DILocation(line: 310, column: 1967, scope: !3419)
!3432 = !DILocation(line: 310, column: 2045, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3434, file: !439, discriminator: 17)
!3434 = !DILexicalBlockFile(scope: !3435, file: !439, discriminator: 16)
!3435 = !DILexicalBlockFile(scope: !3414, file: !439, discriminator: 14)
!3436 = !DILocation(line: 310, column: 2047, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3438, file: !439, discriminator: 18)
!3438 = !DILexicalBlockFile(scope: !3439, file: !439, discriminator: 12)
!3439 = !DILexicalBlockFile(scope: !3400, file: !439, discriminator: 10)
!3440 = !DILocation(line: 310, column: 2049, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3442, file: !439, discriminator: 19)
!3442 = !DILexicalBlockFile(scope: !3443, file: !439, discriminator: 8)
!3443 = !DILexicalBlockFile(scope: !617, file: !439, discriminator: 6)
!3444 = !DILocation(line: 310, column: 1734, scope: !3391)
!3445 = !DILocation(line: 310, column: 2059, scope: !611)
!3446 = !DILocation(line: 310, column: 2059, scope: !617)
!3447 = !DILocation(line: 310, column: 2084, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3449, file: !439, discriminator: 4)
!3449 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 2)
!3450 = !DILocation(line: 310, column: 2066, scope: !611)
!3451 = !DILocation(line: 310, column: 30, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3453, file: !439, discriminator: 21)
!3453 = !DILexicalBlockFile(scope: !611, file: !439, discriminator: 20)
!3454 = !DILocation(line: 310, column: 2101, scope: !612)
!3455 = !DILocation(line: 310, column: 2101, scope: !611)
!3456 = !DILocation(line: 310, column: 2104, scope: !612)
!3457 = !DILocation(line: 310, column: 13, scope: !613)
!3458 = !DILocation(line: 311, column: 29, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !612, file: !439, line: 310, column: 2110)
!3460 = !DILocation(line: 311, column: 13, scope: !3459)
!3461 = !DILocation(line: 311, column: 18, scope: !3459)
!3462 = !DILocation(line: 311, column: 27, scope: !3459)
!3463 = !DILocation(line: 312, column: 9, scope: !3459)
!3464 = !DILocation(line: 313, column: 17, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !612, file: !439, line: 312, column: 16)
!3466 = !DILocation(line: 313, column: 30, scope: !3465)
!3467 = !DILocation(line: 313, column: 35, scope: !3465)
!3468 = !DILocation(line: 313, column: 15, scope: !3465)
!3469 = !DILocation(line: 314, column: 17, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !439, line: 314, column: 17)
!3471 = !DILocation(line: 314, column: 17, scope: !3465)
!3472 = !DILocation(line: 315, column: 33, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !439, line: 314, column: 20)
!3474 = !DILocation(line: 315, column: 17, scope: !3473)
!3475 = !DILocation(line: 315, column: 22, scope: !3473)
!3476 = !DILocation(line: 315, column: 31, scope: !3473)
!3477 = !DILocation(line: 316, column: 17, scope: !3473)
!3478 = !DILocation(line: 316, column: 22, scope: !3473)
!3479 = !DILocation(line: 316, column: 37, scope: !3473)
!3480 = !DILocation(line: 317, column: 13, scope: !3473)
!3481 = !DILocation(line: 319, column: 30, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !439, line: 318, column: 18)
!3483 = !DILocation(line: 320, column: 54, scope: !3482)
!3484 = !DILocation(line: 319, column: 17, scope: !3482)
!3485 = !DILocation(line: 321, column: 28, scope: !3482)
!3486 = !DILocation(line: 321, column: 17, scope: !3482)
!3487 = !DILocation(line: 324, column: 5, scope: !613)
!3488 = !DILocation(line: 325, column: 31, scope: !620)
!3489 = !DILocation(line: 325, column: 38, scope: !620)
!3490 = !DILocation(line: 325, column: 48, scope: !620)
!3491 = !DILocation(line: 325, column: 2199, scope: !620)
!3492 = !DILocation(line: 325, column: 2204, scope: !620)
!3493 = !DILocation(line: 325, column: 2214, scope: !620)
!3494 = !DILocation(line: 325, column: 2181, scope: !620)
!3495 = !DILocation(line: 325, column: 2222, scope: !621)
!3496 = !DILocation(line: 325, column: 2222, scope: !620)
!3497 = !DILocation(line: 325, column: 2225, scope: !621)
!3498 = !DILocation(line: 325, column: 11, scope: !621)
!3499 = !DILocation(line: 326, column: 14, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !621, file: !439, line: 326, column: 13)
!3501 = !DILocation(line: 326, column: 13, scope: !621)
!3502 = !DILocation(line: 327, column: 26, scope: !3500)
!3503 = !DILocation(line: 328, column: 59, scope: !3500)
!3504 = !DILocation(line: 327, column: 13, scope: !3500)
!3505 = !DILocation(line: 329, column: 20, scope: !621)
!3506 = !DILocation(line: 329, column: 9, scope: !621)
!3507 = !DILocation(line: 331, column: 12, scope: !597)
!3508 = !DILocation(line: 331, column: 5, scope: !597)
!3509 = !DILocation(line: 332, column: 1, scope: !597)
!3510 = !DILocation(line: 150, column: 24, scope: !563)
!3511 = !DILocation(line: 150, column: 38, scope: !563)
!3512 = !DILocation(line: 150, column: 61, scope: !563)
!3513 = !DILocation(line: 152, column: 5, scope: !563)
!3514 = !DILocation(line: 152, column: 11, scope: !563)
!3515 = !DILocation(line: 152, column: 41, scope: !563)
!3516 = !DILocation(line: 152, column: 45, scope: !563)
!3517 = !DILocation(line: 152, column: 28, scope: !563)
!3518 = !DILocation(line: 153, column: 10, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !563, file: !439, line: 153, column: 9)
!3520 = !DILocation(line: 153, column: 9, scope: !563)
!3521 = !DILocation(line: 154, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !439, line: 153, column: 18)
!3523 = !DILocation(line: 154, column: 14, scope: !3522)
!3524 = !DILocation(line: 154, column: 19, scope: !3522)
!3525 = !DILocation(line: 155, column: 9, scope: !3522)
!3526 = !DILocation(line: 157, column: 12, scope: !563)
!3527 = !DILocation(line: 157, column: 20, scope: !563)
!3528 = !DILocation(line: 157, column: 23, scope: !563)
!3529 = !DILocation(line: 157, column: 5, scope: !563)
!3530 = !DILocation(line: 158, column: 12, scope: !563)
!3531 = !DILocation(line: 158, column: 5, scope: !563)
!3532 = !DILocation(line: 158, column: 17, scope: !563)
!3533 = !DILocation(line: 159, column: 12, scope: !563)
!3534 = !DILocation(line: 159, column: 5, scope: !563)
!3535 = !DILocation(line: 160, column: 1, scope: !563)
!3536 = !DILocation(line: 227, column: 29, scope: !623)
!3537 = !DILocation(line: 227, column: 39, scope: !623)
!3538 = !DILocation(line: 227, column: 56, scope: !623)
!3539 = !DILocation(line: 227, column: 80, scope: !623)
!3540 = !DILocation(line: 229, column: 5, scope: !623)
!3541 = !DILocation(line: 229, column: 16, scope: !623)
!3542 = !DILocation(line: 230, column: 6, scope: !623)
!3543 = !DILocation(line: 230, column: 11, scope: !623)
!3544 = !DILocation(line: 233, column: 12, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !623, file: !439, line: 233, column: 5)
!3546 = !DILocation(line: 233, column: 10, scope: !3545)
!3547 = !DILocation(line: 233, column: 17, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3549, file: !439, discriminator: 2)
!3549 = !DILexicalBlockFile(scope: !3550, file: !439, discriminator: 1)
!3550 = distinct !DILexicalBlock(scope: !3545, file: !439, line: 233, column: 5)
!3551 = !DILocation(line: 233, column: 21, scope: !3550)
!3552 = !DILocation(line: 233, column: 26, scope: !3550)
!3553 = !DILocation(line: 233, column: 19, scope: !3550)
!3554 = !DILocation(line: 233, column: 5, scope: !3545)
!3555 = !DILocation(line: 234, column: 15, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !439, line: 234, column: 13)
!3557 = distinct !DILexicalBlock(scope: !3550, file: !439, line: 233, column: 36)
!3558 = !DILocation(line: 234, column: 13, scope: !3556)
!3559 = !DILocation(line: 234, column: 18, scope: !3556)
!3560 = !DILocation(line: 234, column: 13, scope: !3557)
!3561 = !DILocation(line: 235, column: 13, scope: !3556)
!3562 = !DILocation(line: 236, column: 15, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3557, file: !439, line: 236, column: 13)
!3564 = !DILocation(line: 236, column: 13, scope: !3563)
!3565 = !DILocation(line: 236, column: 18, scope: !3563)
!3566 = !DILocation(line: 236, column: 25, scope: !3563)
!3567 = !DILocation(line: 236, column: 30, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3563, file: !439, discriminator: 1)
!3569 = !DILocation(line: 236, column: 28, scope: !3563)
!3570 = !DILocation(line: 236, column: 33, scope: !3563)
!3571 = !DILocation(line: 236, column: 41, scope: !3563)
!3572 = !DILocation(line: 236, column: 46, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3563, file: !439, discriminator: 2)
!3574 = !DILocation(line: 236, column: 44, scope: !3563)
!3575 = !DILocation(line: 236, column: 49, scope: !3563)
!3576 = !DILocation(line: 236, column: 13, scope: !3557)
!3577 = !DILocation(line: 237, column: 13, scope: !3563)
!3578 = !DILocation(line: 238, column: 5, scope: !3557)
!3579 = !DILocation(line: 233, column: 32, scope: !3550)
!3580 = !DILocation(line: 233, column: 5, scope: !3550)
!3581 = !DILocation(line: 239, column: 5, scope: !623)
!3582 = !DILocation(line: 239, column: 12, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3584, file: !439, discriminator: 2)
!3584 = !DILexicalBlockFile(scope: !634, file: !439, discriminator: 1)
!3585 = !DILocation(line: 239, column: 16, scope: !634)
!3586 = !DILocation(line: 239, column: 21, scope: !634)
!3587 = !DILocation(line: 239, column: 14, scope: !634)
!3588 = !DILocation(line: 239, column: 5, scope: !635)
!3589 = !DILocation(line: 240, column: 9, scope: !633)
!3590 = !DILocation(line: 240, column: 21, scope: !633)
!3591 = !DILocation(line: 240, column: 25, scope: !633)
!3592 = !DILocation(line: 240, column: 29, scope: !633)
!3593 = !DILocation(line: 240, column: 27, scope: !633)
!3594 = !DILocation(line: 241, column: 2296, scope: !638)
!3595 = !DILocation(line: 241, column: 2287, scope: !638)
!3596 = !DILocation(line: 241, column: 2314, scope: !638)
!3597 = !DILocation(line: 241, column: 13, scope: !633)
!3598 = !DILocation(line: 242, column: 13, scope: !637)
!3599 = !DILocation(line: 242, column: 25, scope: !637)
!3600 = !DILocation(line: 243, column: 15, scope: !637)
!3601 = !DILocation(line: 244, column: 17, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !637, file: !439, line: 244, column: 17)
!3603 = !DILocation(line: 244, column: 22, scope: !3602)
!3604 = !DILocation(line: 244, column: 29, scope: !3602)
!3605 = !DILocation(line: 244, column: 32, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3602, file: !439, discriminator: 1)
!3607 = !DILocation(line: 244, column: 37, scope: !3602)
!3608 = !DILocation(line: 244, column: 17, scope: !637)
!3609 = !DILocation(line: 245, column: 17, scope: !3602)
!3610 = !DILocation(line: 246, column: 13, scope: !637)
!3611 = !DILocation(line: 247, column: 18, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !637, file: !439, line: 246, column: 16)
!3613 = !DILocation(line: 248, column: 13, scope: !3612)
!3614 = !DILocation(line: 248, column: 22, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 1)
!3616 = !DILocation(line: 248, column: 27, scope: !637)
!3617 = !DILocation(line: 248, column: 37, scope: !637)
!3618 = !DILocation(line: 248, column: 40, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 3)
!3620 = !DILocation(line: 248, column: 45, scope: !637)
!3621 = !DILocation(line: 248, column: 13, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3623, file: !439, discriminator: 4)
!3623 = !DILexicalBlockFile(scope: !3612, file: !439, discriminator: 2)
!3624 = !DILocation(line: 250, column: 21, scope: !637)
!3625 = !DILocation(line: 250, column: 19, scope: !637)
!3626 = !DILocation(line: 251, column: 13, scope: !637)
!3627 = !DILocation(line: 251, column: 55, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3615, file: !439, discriminator: 3)
!3629 = !DILocation(line: 251, column: 54, scope: !637)
!3630 = !DILocation(line: 251, column: 61, scope: !637)
!3631 = !DILocation(line: 251, column: 38, scope: !637)
!3632 = !DILocation(line: 251, column: 21, scope: !637)
!3633 = !DILocation(line: 251, column: 71, scope: !637)
!3634 = !DILocation(line: 251, column: 93, scope: !637)
!3635 = !DILocation(line: 252, column: 20, scope: !637)
!3636 = !DILocation(line: 252, column: 25, scope: !637)
!3637 = !DILocation(line: 252, column: 32, scope: !637)
!3638 = !DILocation(line: 252, column: 35, scope: !3615)
!3639 = !DILocation(line: 252, column: 40, scope: !637)
!3640 = !DILocation(line: 252, column: 47, scope: !637)
!3641 = !DILocation(line: 252, column: 50, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !637, file: !439, discriminator: 2)
!3643 = !DILocation(line: 252, column: 55, scope: !637)
!3644 = !DILocation(line: 251, column: 13, scope: !3642)
!3645 = !DILocation(line: 253, column: 18, scope: !637)
!3646 = !DILocation(line: 255, column: 17, scope: !641)
!3647 = !DILocation(line: 255, column: 25, scope: !641)
!3648 = !DILocation(line: 255, column: 23, scope: !641)
!3649 = !DILocation(line: 255, column: 17, scope: !637)
!3650 = !DILocation(line: 256, column: 17, scope: !640)
!3651 = !DILocation(line: 256, column: 23, scope: !640)
!3652 = !DILocation(line: 256, column: 38, scope: !640)
!3653 = !DILocation(line: 256, column: 45, scope: !640)
!3654 = !DILocation(line: 256, column: 49, scope: !640)
!3655 = !DILocation(line: 256, column: 47, scope: !640)
!3656 = !DILocation(line: 256, column: 56, scope: !640)
!3657 = !DILocation(line: 256, column: 27, scope: !640)
!3658 = !DILocation(line: 257, column: 17, scope: !640)
!3659 = !DILocation(line: 257, column: 23, scope: !640)
!3660 = !DILocation(line: 258, column: 22, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !640, file: !439, line: 258, column: 21)
!3662 = !DILocation(line: 258, column: 21, scope: !640)
!3663 = !DILocation(line: 259, column: 21, scope: !3661)
!3664 = !DILocation(line: 260, column: 37, scope: !640)
!3665 = !DILocation(line: 260, column: 21, scope: !640)
!3666 = !DILocation(line: 260, column: 19, scope: !640)
!3667 = !DILocation(line: 261, column: 21, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !640, file: !439, line: 261, column: 21)
!3669 = !DILocation(line: 261, column: 26, scope: !3668)
!3670 = !DILocation(line: 261, column: 23, scope: !3668)
!3671 = !DILocation(line: 261, column: 21, scope: !640)
!3672 = !DILocation(line: 262, column: 32, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !439, line: 261, column: 29)
!3674 = !DILocation(line: 262, column: 21, scope: !3673)
!3675 = !DILocation(line: 263, column: 36, scope: !3673)
!3676 = !DILocation(line: 263, column: 46, scope: !3673)
!3677 = !DILocation(line: 263, column: 39, scope: !3673)
!3678 = !DILocation(line: 263, column: 50, scope: !3673)
!3679 = !DILocation(line: 263, column: 25, scope: !3673)
!3680 = !DILocation(line: 263, column: 23, scope: !3673)
!3681 = !DILocation(line: 264, column: 26, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3673, file: !439, line: 264, column: 25)
!3683 = !DILocation(line: 264, column: 25, scope: !3673)
!3684 = !DILocation(line: 265, column: 25, scope: !3682)
!3685 = !DILocation(line: 266, column: 17, scope: !3673)
!3686 = !DILocation(line: 267, column: 25, scope: !640)
!3687 = !DILocation(line: 267, column: 18, scope: !640)
!3688 = !DILocation(line: 267, column: 23, scope: !640)
!3689 = !DILocation(line: 268, column: 13, scope: !641)
!3690 = !DILocation(line: 268, column: 13, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !641, file: !439, discriminator: 1)
!3692 = !DILocation(line: 268, column: 13, scope: !640)
!3693 = !DILocation(line: 269, column: 9, scope: !638)
!3694 = !DILocation(line: 269, column: 9, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !638, file: !439, discriminator: 1)
!3696 = !DILocation(line: 269, column: 9, scope: !637)
!3697 = !DILocation(line: 270, column: 5, scope: !634)
!3698 = !DILocation(line: 270, column: 5, scope: !3584)
!3699 = !DILocation(line: 270, column: 5, scope: !633)
!3700 = !DILocation(line: 239, column: 27, scope: !634)
!3701 = !DILocation(line: 239, column: 5, scope: !634)
!3702 = !DILocation(line: 271, column: 5, scope: !623)
!3703 = !DILocation(line: 272, column: 1, scope: !623)
!3704 = !DILocation(line: 196, column: 23, scope: !643)
!3705 = !DILocation(line: 198, column: 5, scope: !643)
!3706 = !DILocation(line: 198, column: 10, scope: !643)
!3707 = !DILocation(line: 199, column: 5, scope: !643)
!3708 = !DILocation(line: 199, column: 9, scope: !643)
!3709 = !DILocation(line: 200, column: 12, scope: !656)
!3710 = !DILocation(line: 200, column: 10, scope: !656)
!3711 = !DILocation(line: 200, column: 17, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !3713, file: !439, discriminator: 2)
!3713 = !DILexicalBlockFile(scope: !655, file: !439, discriminator: 1)
!3714 = !DILocation(line: 200, column: 19, scope: !655)
!3715 = !DILocation(line: 200, column: 5, scope: !656)
!3716 = !DILocation(line: 201, column: 9, scope: !654)
!3717 = !DILocation(line: 201, column: 13, scope: !654)
!3718 = !DILocation(line: 201, column: 19, scope: !654)
!3719 = !DILocation(line: 201, column: 17, scope: !654)
!3720 = !DILocation(line: 202, column: 13, scope: !660)
!3721 = !DILocation(line: 202, column: 15, scope: !660)
!3722 = !DILocation(line: 202, column: 13, scope: !654)
!3723 = !DILocation(line: 203, column: 13, scope: !660)
!3724 = !DILocation(line: 204, column: 18, scope: !659)
!3725 = !DILocation(line: 204, column: 20, scope: !659)
!3726 = !DILocation(line: 204, column: 18, scope: !660)
!3727 = !DILocation(line: 205, column: 17, scope: !659)
!3728 = !DILocation(line: 205, column: 13, scope: !659)
!3729 = !DILocation(line: 205, column: 20, scope: !659)
!3730 = !DILocation(line: 207, column: 40, scope: !658)
!3731 = !DILocation(line: 207, column: 44, scope: !658)
!3732 = !DILocation(line: 207, column: 216, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !439, line: 207, column: 77)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !439, line: 207, column: 71)
!3735 = distinct !DILexicalBlock(scope: !658, file: !439, line: 207, column: 55)
!3736 = !DILocation(line: 207, column: 207, scope: !3733)
!3737 = !DILocation(line: 207, column: 205, scope: !3733)
!3738 = !DILocation(line: 207, column: 273, scope: !658)
!3739 = !DILocation(line: 207, column: 68, scope: !3735)
!3740 = !DILocation(line: 207, column: 280, scope: !659)
!3741 = !DILocation(line: 207, column: 280, scope: !658)
!3742 = !DILocation(line: 207, column: 22, scope: !659)
!3743 = !DILocation(line: 207, column: 17, scope: !659)
!3744 = !DILocation(line: 207, column: 13, scope: !659)
!3745 = !DILocation(line: 207, column: 20, scope: !659)
!3746 = !DILocation(line: 208, column: 5, scope: !655)
!3747 = !DILocation(line: 208, column: 5, scope: !3713)
!3748 = !DILocation(line: 208, column: 5, scope: !654)
!3749 = !DILocation(line: 200, column: 26, scope: !655)
!3750 = !DILocation(line: 200, column: 5, scope: !655)
!3751 = !DILocation(line: 209, column: 9, scope: !643)
!3752 = !DILocation(line: 209, column: 5, scope: !643)
!3753 = !DILocation(line: 209, column: 12, scope: !643)
!3754 = !DILocation(line: 210, column: 26, scope: !662)
!3755 = !DILocation(line: 210, column: 33, scope: !662)
!3756 = !DILocation(line: 210, column: 43, scope: !662)
!3757 = !DILocation(line: 210, column: 1349, scope: !662)
!3758 = !DILocation(line: 210, column: 1362, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 1)
!3760 = !DILocation(line: 210, column: 1382, scope: !662)
!3761 = !DILocation(line: 210, column: 1391, scope: !662)
!3762 = !DILocation(line: 210, column: 1236, scope: !662)
!3763 = !DILocation(line: 210, column: 1554, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !666, file: !439, discriminator: 3)
!3765 = !DILocation(line: 210, column: 1575, scope: !666)
!3766 = !DILocation(line: 210, column: 1621, scope: !666)
!3767 = !DILocation(line: 210, column: 1628, scope: !666)
!3768 = !DILocation(line: 210, column: 1641, scope: !666)
!3769 = !DILocation(line: 210, column: 1652, scope: !666)
!3770 = !DILocation(line: 210, column: 1662, scope: !666)
!3771 = !DILocation(line: 210, column: 1660, scope: !666)
!3772 = !DILocation(line: 210, column: 1721, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !666, file: !439, line: 210, column: 1721)
!3774 = !DILocation(line: 210, column: 1730, scope: !3773)
!3775 = !DILocation(line: 210, column: 1734, scope: !3773)
!3776 = !DILocation(line: 210, column: 1737, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !3773, file: !439, discriminator: 5)
!3778 = !DILocation(line: 210, column: 1746, scope: !3773)
!3779 = !DILocation(line: 210, column: 1721, scope: !666)
!3780 = !DILocation(line: 210, column: 1766, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !3782, file: !439, discriminator: 7)
!3782 = distinct !DILexicalBlock(scope: !3773, file: !439, line: 210, column: 1752)
!3783 = !DILocation(line: 210, column: 1776, scope: !3782)
!3784 = !DILocation(line: 210, column: 1774, scope: !3782)
!3785 = !DILocation(line: 210, column: 1763, scope: !3782)
!3786 = !DILocation(line: 210, column: 1836, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3782, file: !439, line: 210, column: 1836)
!3788 = !DILocation(line: 210, column: 1845, scope: !3787)
!3789 = !DILocation(line: 210, column: 1849, scope: !3787)
!3790 = !DILocation(line: 210, column: 1852, scope: !3791)
!3791 = !DILexicalBlockFile(scope: !3787, file: !439, discriminator: 9)
!3792 = !DILocation(line: 210, column: 1861, scope: !3787)
!3793 = !DILocation(line: 210, column: 1836, scope: !3782)
!3794 = !DILocation(line: 210, column: 1881, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3796, file: !439, discriminator: 11)
!3796 = distinct !DILexicalBlock(scope: !3787, file: !439, line: 210, column: 1867)
!3797 = !DILocation(line: 210, column: 1891, scope: !3796)
!3798 = !DILocation(line: 210, column: 1889, scope: !3796)
!3799 = !DILocation(line: 210, column: 1878, scope: !3796)
!3800 = !DILocation(line: 210, column: 1951, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3796, file: !439, line: 210, column: 1951)
!3802 = !DILocation(line: 210, column: 1960, scope: !3801)
!3803 = !DILocation(line: 210, column: 1964, scope: !3801)
!3804 = !DILocation(line: 210, column: 1967, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3801, file: !439, discriminator: 13)
!3806 = !DILocation(line: 210, column: 1976, scope: !3801)
!3807 = !DILocation(line: 210, column: 1951, scope: !3796)
!3808 = !DILocation(line: 210, column: 1994, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3801, file: !439, discriminator: 15)
!3810 = !DILocation(line: 210, column: 2004, scope: !3801)
!3811 = !DILocation(line: 210, column: 2002, scope: !3801)
!3812 = !DILocation(line: 210, column: 1991, scope: !3801)
!3813 = !DILocation(line: 210, column: 1982, scope: !3801)
!3814 = !DILocation(line: 210, column: 2060, scope: !3815)
!3815 = !DILexicalBlockFile(scope: !3816, file: !439, discriminator: 17)
!3816 = !DILexicalBlockFile(scope: !3817, file: !439, discriminator: 16)
!3817 = !DILexicalBlockFile(scope: !3796, file: !439, discriminator: 14)
!3818 = !DILocation(line: 210, column: 2062, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3820, file: !439, discriminator: 18)
!3820 = !DILexicalBlockFile(scope: !3821, file: !439, discriminator: 12)
!3821 = !DILexicalBlockFile(scope: !3782, file: !439, discriminator: 10)
!3822 = !DILocation(line: 210, column: 2064, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3824, file: !439, discriminator: 19)
!3824 = !DILexicalBlockFile(scope: !3825, file: !439, discriminator: 8)
!3825 = !DILexicalBlockFile(scope: !666, file: !439, discriminator: 6)
!3826 = !DILocation(line: 210, column: 1749, scope: !3773)
!3827 = !DILocation(line: 210, column: 2074, scope: !662)
!3828 = !DILocation(line: 210, column: 2074, scope: !666)
!3829 = !DILocation(line: 210, column: 2099, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3831, file: !439, discriminator: 4)
!3831 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 2)
!3832 = !DILocation(line: 210, column: 2081, scope: !662)
!3833 = !DILocation(line: 210, column: 26, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3835, file: !439, discriminator: 21)
!3835 = !DILexicalBlockFile(scope: !662, file: !439, discriminator: 20)
!3836 = !DILocation(line: 210, column: 2117, scope: !663)
!3837 = !DILocation(line: 210, column: 2117, scope: !662)
!3838 = !DILocation(line: 210, column: 2120, scope: !663)
!3839 = !DILocation(line: 210, column: 2125, scope: !663)
!3840 = !DILocation(line: 211, column: 2336, scope: !663)
!3841 = !DILocation(line: 211, column: 2327, scope: !663)
!3842 = !DILocation(line: 211, column: 2356, scope: !663)
!3843 = !DILocation(line: 210, column: 9, scope: !643)
!3844 = !DILocation(line: 212, column: 9, scope: !663)
!3845 = !DILocation(line: 213, column: 31, scope: !669)
!3846 = !DILocation(line: 213, column: 38, scope: !669)
!3847 = !DILocation(line: 213, column: 48, scope: !669)
!3848 = !DILocation(line: 213, column: 1380, scope: !669)
!3849 = !DILocation(line: 213, column: 1393, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 1)
!3851 = !DILocation(line: 213, column: 1415, scope: !669)
!3852 = !DILocation(line: 213, column: 1424, scope: !669)
!3853 = !DILocation(line: 213, column: 1261, scope: !669)
!3854 = !DILocation(line: 213, column: 1589, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !673, file: !439, discriminator: 3)
!3856 = !DILocation(line: 213, column: 1610, scope: !673)
!3857 = !DILocation(line: 213, column: 1656, scope: !673)
!3858 = !DILocation(line: 213, column: 1663, scope: !673)
!3859 = !DILocation(line: 213, column: 1676, scope: !673)
!3860 = !DILocation(line: 213, column: 1687, scope: !673)
!3861 = !DILocation(line: 213, column: 1697, scope: !673)
!3862 = !DILocation(line: 213, column: 1695, scope: !673)
!3863 = !DILocation(line: 213, column: 1758, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !673, file: !439, line: 213, column: 1758)
!3865 = !DILocation(line: 213, column: 1767, scope: !3864)
!3866 = !DILocation(line: 213, column: 1771, scope: !3864)
!3867 = !DILocation(line: 213, column: 1774, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3864, file: !439, discriminator: 5)
!3869 = !DILocation(line: 213, column: 1783, scope: !3864)
!3870 = !DILocation(line: 213, column: 1758, scope: !673)
!3871 = !DILocation(line: 213, column: 1803, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !3873, file: !439, discriminator: 7)
!3873 = distinct !DILexicalBlock(scope: !3864, file: !439, line: 213, column: 1789)
!3874 = !DILocation(line: 213, column: 1813, scope: !3873)
!3875 = !DILocation(line: 213, column: 1811, scope: !3873)
!3876 = !DILocation(line: 213, column: 1800, scope: !3873)
!3877 = !DILocation(line: 213, column: 1875, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !439, line: 213, column: 1875)
!3879 = !DILocation(line: 213, column: 1884, scope: !3878)
!3880 = !DILocation(line: 213, column: 1888, scope: !3878)
!3881 = !DILocation(line: 213, column: 1891, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3878, file: !439, discriminator: 9)
!3883 = !DILocation(line: 213, column: 1900, scope: !3878)
!3884 = !DILocation(line: 213, column: 1875, scope: !3873)
!3885 = !DILocation(line: 213, column: 1920, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3887, file: !439, discriminator: 11)
!3887 = distinct !DILexicalBlock(scope: !3878, file: !439, line: 213, column: 1906)
!3888 = !DILocation(line: 213, column: 1930, scope: !3887)
!3889 = !DILocation(line: 213, column: 1928, scope: !3887)
!3890 = !DILocation(line: 213, column: 1917, scope: !3887)
!3891 = !DILocation(line: 213, column: 1992, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !439, line: 213, column: 1992)
!3893 = !DILocation(line: 213, column: 2001, scope: !3892)
!3894 = !DILocation(line: 213, column: 2005, scope: !3892)
!3895 = !DILocation(line: 213, column: 2008, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3892, file: !439, discriminator: 13)
!3897 = !DILocation(line: 213, column: 2017, scope: !3892)
!3898 = !DILocation(line: 213, column: 1992, scope: !3887)
!3899 = !DILocation(line: 213, column: 2035, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3892, file: !439, discriminator: 15)
!3901 = !DILocation(line: 213, column: 2045, scope: !3892)
!3902 = !DILocation(line: 213, column: 2043, scope: !3892)
!3903 = !DILocation(line: 213, column: 2032, scope: !3892)
!3904 = !DILocation(line: 213, column: 2023, scope: !3892)
!3905 = !DILocation(line: 213, column: 2103, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !439, discriminator: 17)
!3907 = !DILexicalBlockFile(scope: !3908, file: !439, discriminator: 16)
!3908 = !DILexicalBlockFile(scope: !3887, file: !439, discriminator: 14)
!3909 = !DILocation(line: 213, column: 2105, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3911, file: !439, discriminator: 18)
!3911 = !DILexicalBlockFile(scope: !3912, file: !439, discriminator: 12)
!3912 = !DILexicalBlockFile(scope: !3873, file: !439, discriminator: 10)
!3913 = !DILocation(line: 213, column: 2107, scope: !3914)
!3914 = !DILexicalBlockFile(scope: !3915, file: !439, discriminator: 19)
!3915 = !DILexicalBlockFile(scope: !3916, file: !439, discriminator: 8)
!3916 = !DILexicalBlockFile(scope: !673, file: !439, discriminator: 6)
!3917 = !DILocation(line: 213, column: 1786, scope: !3864)
!3918 = !DILocation(line: 213, column: 2117, scope: !669)
!3919 = !DILocation(line: 213, column: 2117, scope: !673)
!3920 = !DILocation(line: 213, column: 2142, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3922, file: !439, discriminator: 4)
!3922 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 2)
!3923 = !DILocation(line: 213, column: 2124, scope: !669)
!3924 = !DILocation(line: 213, column: 31, scope: !3925)
!3925 = !DILexicalBlockFile(scope: !3926, file: !439, discriminator: 21)
!3926 = !DILexicalBlockFile(scope: !669, file: !439, discriminator: 20)
!3927 = !DILocation(line: 213, column: 2162, scope: !670)
!3928 = !DILocation(line: 213, column: 2162, scope: !669)
!3929 = !DILocation(line: 213, column: 2165, scope: !670)
!3930 = !DILocation(line: 213, column: 2170, scope: !670)
!3931 = !DILocation(line: 214, column: 31, scope: !676)
!3932 = !DILocation(line: 214, column: 38, scope: !676)
!3933 = !DILocation(line: 214, column: 48, scope: !676)
!3934 = !DILocation(line: 214, column: 1419, scope: !676)
!3935 = !DILocation(line: 214, column: 1432, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 1)
!3937 = !DILocation(line: 214, column: 1457, scope: !676)
!3938 = !DILocation(line: 214, column: 1466, scope: !676)
!3939 = !DILocation(line: 214, column: 1291, scope: !676)
!3940 = !DILocation(line: 214, column: 1634, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !679, file: !439, discriminator: 3)
!3942 = !DILocation(line: 214, column: 1655, scope: !679)
!3943 = !DILocation(line: 214, column: 1701, scope: !679)
!3944 = !DILocation(line: 214, column: 1708, scope: !679)
!3945 = !DILocation(line: 214, column: 1721, scope: !679)
!3946 = !DILocation(line: 214, column: 1732, scope: !679)
!3947 = !DILocation(line: 214, column: 1742, scope: !679)
!3948 = !DILocation(line: 214, column: 1740, scope: !679)
!3949 = !DILocation(line: 214, column: 1806, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !679, file: !439, line: 214, column: 1806)
!3951 = !DILocation(line: 214, column: 1815, scope: !3950)
!3952 = !DILocation(line: 214, column: 1819, scope: !3950)
!3953 = !DILocation(line: 214, column: 1822, scope: !3954)
!3954 = !DILexicalBlockFile(scope: !3950, file: !439, discriminator: 5)
!3955 = !DILocation(line: 214, column: 1831, scope: !3950)
!3956 = !DILocation(line: 214, column: 1806, scope: !679)
!3957 = !DILocation(line: 214, column: 1851, scope: !3958)
!3958 = !DILexicalBlockFile(scope: !3959, file: !439, discriminator: 7)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !439, line: 214, column: 1837)
!3960 = !DILocation(line: 214, column: 1861, scope: !3959)
!3961 = !DILocation(line: 214, column: 1859, scope: !3959)
!3962 = !DILocation(line: 214, column: 1848, scope: !3959)
!3963 = !DILocation(line: 214, column: 1926, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3959, file: !439, line: 214, column: 1926)
!3965 = !DILocation(line: 214, column: 1935, scope: !3964)
!3966 = !DILocation(line: 214, column: 1939, scope: !3964)
!3967 = !DILocation(line: 214, column: 1942, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3964, file: !439, discriminator: 9)
!3969 = !DILocation(line: 214, column: 1951, scope: !3964)
!3970 = !DILocation(line: 214, column: 1926, scope: !3959)
!3971 = !DILocation(line: 214, column: 1971, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3973, file: !439, discriminator: 11)
!3973 = distinct !DILexicalBlock(scope: !3964, file: !439, line: 214, column: 1957)
!3974 = !DILocation(line: 214, column: 1981, scope: !3973)
!3975 = !DILocation(line: 214, column: 1979, scope: !3973)
!3976 = !DILocation(line: 214, column: 1968, scope: !3973)
!3977 = !DILocation(line: 214, column: 2046, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3973, file: !439, line: 214, column: 2046)
!3979 = !DILocation(line: 214, column: 2055, scope: !3978)
!3980 = !DILocation(line: 214, column: 2059, scope: !3978)
!3981 = !DILocation(line: 214, column: 2062, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !3978, file: !439, discriminator: 13)
!3983 = !DILocation(line: 214, column: 2071, scope: !3978)
!3984 = !DILocation(line: 214, column: 2046, scope: !3973)
!3985 = !DILocation(line: 214, column: 2089, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3978, file: !439, discriminator: 15)
!3987 = !DILocation(line: 214, column: 2099, scope: !3978)
!3988 = !DILocation(line: 214, column: 2097, scope: !3978)
!3989 = !DILocation(line: 214, column: 2086, scope: !3978)
!3990 = !DILocation(line: 214, column: 2077, scope: !3978)
!3991 = !DILocation(line: 214, column: 2160, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3993, file: !439, discriminator: 17)
!3993 = !DILexicalBlockFile(scope: !3994, file: !439, discriminator: 16)
!3994 = !DILexicalBlockFile(scope: !3973, file: !439, discriminator: 14)
!3995 = !DILocation(line: 214, column: 2162, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3997, file: !439, discriminator: 18)
!3997 = !DILexicalBlockFile(scope: !3998, file: !439, discriminator: 12)
!3998 = !DILexicalBlockFile(scope: !3959, file: !439, discriminator: 10)
!3999 = !DILocation(line: 214, column: 2164, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !4001, file: !439, discriminator: 19)
!4001 = !DILexicalBlockFile(scope: !4002, file: !439, discriminator: 8)
!4002 = !DILexicalBlockFile(scope: !679, file: !439, discriminator: 6)
!4003 = !DILocation(line: 214, column: 1834, scope: !3950)
!4004 = !DILocation(line: 214, column: 2174, scope: !676)
!4005 = !DILocation(line: 214, column: 2174, scope: !679)
!4006 = !DILocation(line: 214, column: 2199, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !4008, file: !439, discriminator: 4)
!4008 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 2)
!4009 = !DILocation(line: 214, column: 2181, scope: !676)
!4010 = !DILocation(line: 214, column: 31, scope: !4011)
!4011 = !DILexicalBlockFile(scope: !4012, file: !439, discriminator: 21)
!4012 = !DILexicalBlockFile(scope: !676, file: !439, discriminator: 20)
!4013 = !DILocation(line: 214, column: 2222, scope: !670)
!4014 = !DILocation(line: 214, column: 2222, scope: !676)
!4015 = !DILocation(line: 214, column: 2225, scope: !670)
!4016 = !DILocation(line: 214, column: 2230, scope: !670)
!4017 = !DILocation(line: 215, column: 31, scope: !682)
!4018 = !DILocation(line: 215, column: 38, scope: !682)
!4019 = !DILocation(line: 215, column: 48, scope: !682)
!4020 = !DILocation(line: 215, column: 1432, scope: !682)
!4021 = !DILocation(line: 215, column: 1445, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 1)
!4023 = !DILocation(line: 215, column: 1471, scope: !682)
!4024 = !DILocation(line: 215, column: 1480, scope: !682)
!4025 = !DILocation(line: 215, column: 1301, scope: !682)
!4026 = !DILocation(line: 215, column: 1649, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !685, file: !439, discriminator: 3)
!4028 = !DILocation(line: 215, column: 1670, scope: !685)
!4029 = !DILocation(line: 215, column: 1716, scope: !685)
!4030 = !DILocation(line: 215, column: 1723, scope: !685)
!4031 = !DILocation(line: 215, column: 1736, scope: !685)
!4032 = !DILocation(line: 215, column: 1747, scope: !685)
!4033 = !DILocation(line: 215, column: 1757, scope: !685)
!4034 = !DILocation(line: 215, column: 1755, scope: !685)
!4035 = !DILocation(line: 215, column: 1822, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !685, file: !439, line: 215, column: 1822)
!4037 = !DILocation(line: 215, column: 1831, scope: !4036)
!4038 = !DILocation(line: 215, column: 1835, scope: !4036)
!4039 = !DILocation(line: 215, column: 1838, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !4036, file: !439, discriminator: 5)
!4041 = !DILocation(line: 215, column: 1847, scope: !4036)
!4042 = !DILocation(line: 215, column: 1822, scope: !685)
!4043 = !DILocation(line: 215, column: 1867, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !4045, file: !439, discriminator: 7)
!4045 = distinct !DILexicalBlock(scope: !4036, file: !439, line: 215, column: 1853)
!4046 = !DILocation(line: 215, column: 1877, scope: !4045)
!4047 = !DILocation(line: 215, column: 1875, scope: !4045)
!4048 = !DILocation(line: 215, column: 1864, scope: !4045)
!4049 = !DILocation(line: 215, column: 1943, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !439, line: 215, column: 1943)
!4051 = !DILocation(line: 215, column: 1952, scope: !4050)
!4052 = !DILocation(line: 215, column: 1956, scope: !4050)
!4053 = !DILocation(line: 215, column: 1959, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !4050, file: !439, discriminator: 9)
!4055 = !DILocation(line: 215, column: 1968, scope: !4050)
!4056 = !DILocation(line: 215, column: 1943, scope: !4045)
!4057 = !DILocation(line: 215, column: 1988, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4059, file: !439, discriminator: 11)
!4059 = distinct !DILexicalBlock(scope: !4050, file: !439, line: 215, column: 1974)
!4060 = !DILocation(line: 215, column: 1998, scope: !4059)
!4061 = !DILocation(line: 215, column: 1996, scope: !4059)
!4062 = !DILocation(line: 215, column: 1985, scope: !4059)
!4063 = !DILocation(line: 215, column: 2064, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4059, file: !439, line: 215, column: 2064)
!4065 = !DILocation(line: 215, column: 2073, scope: !4064)
!4066 = !DILocation(line: 215, column: 2077, scope: !4064)
!4067 = !DILocation(line: 215, column: 2080, scope: !4068)
!4068 = !DILexicalBlockFile(scope: !4064, file: !439, discriminator: 13)
!4069 = !DILocation(line: 215, column: 2089, scope: !4064)
!4070 = !DILocation(line: 215, column: 2064, scope: !4059)
!4071 = !DILocation(line: 215, column: 2107, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4064, file: !439, discriminator: 15)
!4073 = !DILocation(line: 215, column: 2117, scope: !4064)
!4074 = !DILocation(line: 215, column: 2115, scope: !4064)
!4075 = !DILocation(line: 215, column: 2104, scope: !4064)
!4076 = !DILocation(line: 215, column: 2095, scope: !4064)
!4077 = !DILocation(line: 215, column: 2179, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4079, file: !439, discriminator: 17)
!4079 = !DILexicalBlockFile(scope: !4080, file: !439, discriminator: 16)
!4080 = !DILexicalBlockFile(scope: !4059, file: !439, discriminator: 14)
!4081 = !DILocation(line: 215, column: 2181, scope: !4082)
!4082 = !DILexicalBlockFile(scope: !4083, file: !439, discriminator: 18)
!4083 = !DILexicalBlockFile(scope: !4084, file: !439, discriminator: 12)
!4084 = !DILexicalBlockFile(scope: !4045, file: !439, discriminator: 10)
!4085 = !DILocation(line: 215, column: 2183, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4087, file: !439, discriminator: 19)
!4087 = !DILexicalBlockFile(scope: !4088, file: !439, discriminator: 8)
!4088 = !DILexicalBlockFile(scope: !685, file: !439, discriminator: 6)
!4089 = !DILocation(line: 215, column: 1850, scope: !4036)
!4090 = !DILocation(line: 215, column: 2193, scope: !682)
!4091 = !DILocation(line: 215, column: 2193, scope: !685)
!4092 = !DILocation(line: 215, column: 2218, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !4094, file: !439, discriminator: 4)
!4094 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 2)
!4095 = !DILocation(line: 215, column: 2200, scope: !682)
!4096 = !DILocation(line: 215, column: 31, scope: !4097)
!4097 = !DILexicalBlockFile(scope: !4098, file: !439, discriminator: 21)
!4098 = !DILexicalBlockFile(scope: !682, file: !439, discriminator: 20)
!4099 = !DILocation(line: 215, column: 2242, scope: !670)
!4100 = !DILocation(line: 215, column: 2242, scope: !682)
!4101 = !DILocation(line: 215, column: 2245, scope: !670)
!4102 = !DILocation(line: 215, column: 2250, scope: !670)
!4103 = !DILocation(line: 216, column: 2385, scope: !670)
!4104 = !DILocation(line: 216, column: 2376, scope: !670)
!4105 = !DILocation(line: 216, column: 2407, scope: !670)
!4106 = !DILocation(line: 216, column: 2412, scope: !670)
!4107 = !DILocation(line: 217, column: 2454, scope: !670)
!4108 = !DILocation(line: 217, column: 2445, scope: !670)
!4109 = !DILocation(line: 217, column: 2480, scope: !670)
!4110 = !DILocation(line: 217, column: 2485, scope: !670)
!4111 = !DILocation(line: 218, column: 2476, scope: !670)
!4112 = !DILocation(line: 218, column: 2467, scope: !670)
!4113 = !DILocation(line: 218, column: 2503, scope: !670)
!4114 = !DILocation(line: 213, column: 14, scope: !663)
!4115 = !DILocation(line: 219, column: 9, scope: !670)
!4116 = !DILocation(line: 221, column: 16, scope: !670)
!4117 = !DILocation(line: 221, column: 9, scope: !670)
!4118 = !DILocation(line: 222, column: 1, scope: !643)
!4119 = !DILocation(line: 216, column: 45, scope: !687)
!4120 = !DILocation(line: 218, column: 10, scope: !687)
!4121 = !DILocation(line: 218, column: 14, scope: !687)
!4122 = !DILocation(line: 218, column: 22, scope: !687)
!4123 = !DILocation(line: 218, column: 25, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 1)
!4125 = !DILocation(line: 218, column: 29, scope: !687)
!4126 = !DILocation(line: 218, column: 63, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 3)
!4128 = !DILocation(line: 218, column: 37, scope: !687)
!4129 = !DILocation(line: 218, column: 39, scope: !687)
!4130 = !DILocation(line: 218, column: 38, scope: !687)
!4131 = !DILocation(line: 218, column: 70, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4133, file: !10, discriminator: 4)
!4133 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 2)
!4134 = !DILocation(line: 218, column: 3, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !4136, file: !10, discriminator: 6)
!4136 = !DILexicalBlockFile(scope: !687, file: !10, discriminator: 5)
!4137 = !DILocation(line: 898, column: 29, scope: !741)
!4138 = !DILocation(line: 900, column: 5, scope: !741)
!4139 = !DILocation(line: 901, column: 13, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !747, file: !439, line: 901, column: 13)
!4141 = !DILocation(line: 901, column: 18, scope: !4140)
!4142 = !DILocation(line: 901, column: 25, scope: !4140)
!4143 = !DILocation(line: 901, column: 30, scope: !4140)
!4144 = !DILocation(line: 901, column: 22, scope: !4140)
!4145 = !DILocation(line: 901, column: 13, scope: !747)
!4146 = !DILocation(line: 902, column: 39, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4140, file: !439, line: 901, column: 35)
!4148 = !DILocation(line: 902, column: 44, scope: !4147)
!4149 = !DILocation(line: 902, column: 47, scope: !4147)
!4150 = !DILocation(line: 902, column: 38, scope: !4147)
!4151 = !DILocation(line: 902, column: 37, scope: !4147)
!4152 = !DILocation(line: 902, column: 51, scope: !4147)
!4153 = !DILocation(line: 902, column: 21, scope: !4147)
!4154 = !DILocation(line: 902, column: 20, scope: !4147)
!4155 = !DILocation(line: 902, column: 13, scope: !4147)
!4156 = !DILocation(line: 904, column: 13, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !747, file: !439, line: 904, column: 13)
!4158 = !DILocation(line: 904, column: 18, scope: !4157)
!4159 = !DILocation(line: 904, column: 23, scope: !4157)
!4160 = !DILocation(line: 904, column: 13, scope: !747)
!4161 = !DILocation(line: 905, column: 13, scope: !4157)
!4162 = !DILocation(line: 906, column: 13, scope: !746)
!4163 = !DILocation(line: 906, column: 18, scope: !746)
!4164 = !DILocation(line: 906, column: 21, scope: !746)
!4165 = !DILocation(line: 906, column: 13, scope: !747)
!4166 = !DILocation(line: 907, column: 13, scope: !745)
!4167 = !DILocation(line: 907, column: 19, scope: !745)
!4168 = !DILocation(line: 907, column: 183, scope: !745)
!4169 = !DILocation(line: 907, column: 188, scope: !745)
!4170 = !DILocation(line: 907, column: 165, scope: !745)
!4171 = !DILocation(line: 908, column: 17, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !745, file: !439, line: 908, column: 17)
!4173 = !DILocation(line: 908, column: 21, scope: !4172)
!4174 = !DILocation(line: 908, column: 17, scope: !745)
!4175 = !DILocation(line: 909, column: 20, scope: !4172)
!4176 = !DILocation(line: 909, column: 17, scope: !4172)
!4177 = !DILocation(line: 911, column: 145, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4172, file: !439, line: 910, column: 18)
!4179 = !DILocation(line: 911, column: 150, scope: !4178)
!4180 = !DILocation(line: 911, column: 132, scope: !4178)
!4181 = !DILocation(line: 911, column: 21, scope: !4178)
!4182 = !DILocation(line: 912, column: 21, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4178, file: !439, line: 912, column: 21)
!4184 = !DILocation(line: 912, column: 28, scope: !4183)
!4185 = !DILocation(line: 912, column: 33, scope: !4183)
!4186 = !DILocation(line: 912, column: 25, scope: !4183)
!4187 = !DILocation(line: 912, column: 21, scope: !4178)
!4188 = !DILocation(line: 913, column: 21, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4183, file: !439, line: 912, column: 38)
!4190 = !DILocation(line: 913, column: 26, scope: !4189)
!4191 = !DILocation(line: 913, column: 31, scope: !4189)
!4192 = !DILocation(line: 914, column: 21, scope: !4189)
!4193 = !DILocation(line: 917, column: 17, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !745, file: !439, line: 917, column: 17)
!4195 = !DILocation(line: 917, column: 22, scope: !4194)
!4196 = !DILocation(line: 917, column: 28, scope: !4194)
!4197 = !DILocation(line: 917, column: 17, scope: !745)
!4198 = !DILocation(line: 918, column: 28, scope: !4194)
!4199 = !DILocation(line: 918, column: 33, scope: !4194)
!4200 = !DILocation(line: 918, column: 17, scope: !4194)
!4201 = !DILocation(line: 918, column: 22, scope: !4194)
!4202 = !DILocation(line: 918, column: 26, scope: !4194)
!4203 = !DILocation(line: 919, column: 31, scope: !745)
!4204 = !DILocation(line: 919, column: 36, scope: !745)
!4205 = !DILocation(line: 919, column: 13, scope: !745)
!4206 = !DILocation(line: 919, column: 18, scope: !745)
!4207 = !DILocation(line: 919, column: 29, scope: !745)
!4208 = !{!929, !895, i64 944}
!4209 = !DILocation(line: 920, column: 13, scope: !745)
!4210 = !DILocation(line: 920, column: 18, scope: !745)
!4211 = !DILocation(line: 920, column: 24, scope: !745)
!4212 = !DILocation(line: 921, column: 24, scope: !745)
!4213 = !DILocation(line: 921, column: 13, scope: !745)
!4214 = !DILocation(line: 921, column: 18, scope: !745)
!4215 = !DILocation(line: 921, column: 22, scope: !745)
!4216 = !DILocation(line: 922, column: 39, scope: !745)
!4217 = !DILocation(line: 922, column: 44, scope: !745)
!4218 = !DILocation(line: 922, column: 47, scope: !745)
!4219 = !DILocation(line: 922, column: 38, scope: !745)
!4220 = !DILocation(line: 922, column: 37, scope: !745)
!4221 = !DILocation(line: 922, column: 51, scope: !745)
!4222 = !DILocation(line: 922, column: 21, scope: !745)
!4223 = !DILocation(line: 922, column: 20, scope: !745)
!4224 = !DILocation(line: 922, column: 13, scope: !745)
!4225 = !DILocation(line: 923, column: 9, scope: !746)
!4226 = !DILocation(line: 924, column: 13, scope: !752)
!4227 = !DILocation(line: 924, column: 18, scope: !752)
!4228 = !DILocation(line: 924, column: 25, scope: !752)
!4229 = !DILocation(line: 924, column: 13, scope: !747)
!4230 = !DILocation(line: 925, column: 13, scope: !751)
!4231 = !DILocation(line: 925, column: 19, scope: !751)
!4232 = !DILocation(line: 925, column: 42, scope: !751)
!4233 = !DILocation(line: 925, column: 49, scope: !751)
!4234 = !DILocation(line: 925, column: 57, scope: !751)
!4235 = !DILocation(line: 925, column: 62, scope: !751)
!4236 = !DILocation(line: 925, column: 28, scope: !751)
!4237 = !DILocation(line: 927, column: 17, scope: !755)
!4238 = !DILocation(line: 927, column: 24, scope: !755)
!4239 = !DILocation(line: 927, column: 17, scope: !751)
!4240 = !DILocation(line: 928, column: 17, scope: !754)
!4241 = !DILocation(line: 928, column: 23, scope: !754)
!4242 = !DILocation(line: 928, column: 55, scope: !754)
!4243 = !DILocation(line: 928, column: 66, scope: !754)
!4244 = !DILocation(line: 928, column: 36, scope: !754)
!4245 = !DILocation(line: 929, column: 28, scope: !754)
!4246 = !DILocation(line: 929, column: 17, scope: !754)
!4247 = !DILocation(line: 930, column: 21, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !754, file: !439, line: 930, column: 21)
!4249 = !DILocation(line: 930, column: 32, scope: !4248)
!4250 = !DILocation(line: 930, column: 21, scope: !754)
!4251 = !DILocation(line: 931, column: 21, scope: !4248)
!4252 = !DILocation(line: 932, column: 26, scope: !754)
!4253 = !DILocation(line: 932, column: 24, scope: !754)
!4254 = !DILocation(line: 933, column: 13, scope: !755)
!4255 = !DILocation(line: 933, column: 13, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !755, file: !439, discriminator: 1)
!4257 = !DILocation(line: 933, column: 13, scope: !754)
!4258 = !DILocation(line: 934, column: 17, scope: !758)
!4259 = !DILocation(line: 934, column: 22, scope: !758)
!4260 = !DILocation(line: 934, column: 31, scope: !758)
!4261 = !DILocation(line: 934, column: 34, scope: !4262)
!4262 = !DILexicalBlockFile(scope: !758, file: !439, discriminator: 1)
!4263 = !DILocation(line: 934, column: 41, scope: !758)
!4264 = !DILocation(line: 934, column: 45, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !758, file: !439, discriminator: 2)
!4266 = !DILocation(line: 934, column: 44, scope: !758)
!4267 = !DILocation(line: 934, column: 17, scope: !751)
!4268 = !DILocation(line: 936, column: 17, scope: !757)
!4269 = !DILocation(line: 936, column: 28, scope: !757)
!4270 = !DILocation(line: 937, column: 17, scope: !757)
!4271 = !DILocation(line: 937, column: 29, scope: !757)
!4272 = !DILocation(line: 938, column: 17, scope: !757)
!4273 = !DILocation(line: 938, column: 27, scope: !757)
!4274 = !DILocation(line: 938, column: 51, scope: !757)
!4275 = !DILocation(line: 938, column: 59, scope: !757)
!4276 = !DILocation(line: 938, column: 64, scope: !757)
!4277 = !DILocation(line: 938, column: 31, scope: !757)
!4278 = !DILocation(line: 939, column: 28, scope: !757)
!4279 = !DILocation(line: 939, column: 17, scope: !757)
!4280 = !DILocation(line: 940, column: 22, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !757, file: !439, line: 940, column: 21)
!4282 = !DILocation(line: 940, column: 21, scope: !757)
!4283 = !DILocation(line: 941, column: 21, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !439, line: 940, column: 25)
!4285 = !DILocation(line: 941, column: 26, scope: !4284)
!4286 = !DILocation(line: 941, column: 31, scope: !4284)
!4287 = !DILocation(line: 942, column: 21, scope: !4284)
!4288 = !DILocation(line: 944, column: 57, scope: !757)
!4289 = !DILocation(line: 944, column: 42, scope: !757)
!4290 = !DILocation(line: 944, column: 62, scope: !757)
!4291 = !{!1291, !1279, i64 16}
!4292 = !DILocation(line: 944, column: 24, scope: !757)
!4293 = !DILocation(line: 945, column: 58, scope: !757)
!4294 = !DILocation(line: 945, column: 40, scope: !757)
!4295 = !DILocation(line: 945, column: 63, scope: !757)
!4296 = !DILocation(line: 945, column: 38, scope: !757)
!4297 = !DILocation(line: 945, column: 21, scope: !757)
!4298 = !DILocation(line: 946, column: 22, scope: !764)
!4299 = !DILocation(line: 946, column: 21, scope: !757)
!4300 = !DILocation(line: 947, column: 21, scope: !763)
!4301 = !DILocation(line: 947, column: 26, scope: !4302)
!4302 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 1)
!4303 = !DILocation(line: 947, column: 36, scope: !762)
!4304 = !DILocation(line: 947, column: 66, scope: !762)
!4305 = !DILocation(line: 947, column: 78, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !762, file: !439, line: 947, column: 75)
!4307 = !DILocation(line: 947, column: 95, scope: !4306)
!4308 = !DILocation(line: 947, column: 75, scope: !4306)
!4309 = !DILocation(line: 947, column: 105, scope: !4306)
!4310 = !DILocation(line: 947, column: 75, scope: !762)
!4311 = !DILocation(line: 947, column: 75, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 2)
!4313 = !DILocation(line: 947, column: 136, scope: !4314)
!4314 = !DILexicalBlockFile(scope: !4306, file: !439, discriminator: 3)
!4315 = !DILocation(line: 947, column: 154, scope: !4306)
!4316 = !DILocation(line: 947, column: 164, scope: !4306)
!4317 = !DILocation(line: 947, column: 189, scope: !4306)
!4318 = !DILocation(line: 947, column: 120, scope: !4306)
!4319 = !DILocation(line: 947, column: 208, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !763, file: !439, discriminator: 4)
!4321 = !DILocation(line: 947, column: 208, scope: !762)
!4322 = !DILocation(line: 947, column: 208, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !762, file: !439, discriminator: 5)
!4324 = !DILocation(line: 948, column: 21, scope: !763)
!4325 = !DILocation(line: 948, column: 26, scope: !763)
!4326 = !DILocation(line: 948, column: 31, scope: !763)
!4327 = !DILocation(line: 949, column: 21, scope: !763)
!4328 = !DILocation(line: 951, column: 39, scope: !757)
!4329 = !DILocation(line: 951, column: 45, scope: !757)
!4330 = !DILocation(line: 951, column: 26, scope: !757)
!4331 = !DILocation(line: 951, column: 24, scope: !757)
!4332 = !DILocation(line: 952, column: 24, scope: !757)
!4333 = !DILocation(line: 952, column: 32, scope: !757)
!4334 = !DILocation(line: 952, column: 17, scope: !757)
!4335 = !DILocation(line: 953, column: 17, scope: !757)
!4336 = !DILocation(line: 953, column: 22, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 1)
!4338 = !DILocation(line: 953, column: 32, scope: !766)
!4339 = !DILocation(line: 953, column: 62, scope: !766)
!4340 = !DILocation(line: 953, column: 74, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !766, file: !439, line: 953, column: 71)
!4342 = !DILocation(line: 953, column: 91, scope: !4341)
!4343 = !DILocation(line: 953, column: 71, scope: !4341)
!4344 = !DILocation(line: 953, column: 101, scope: !4341)
!4345 = !DILocation(line: 953, column: 71, scope: !766)
!4346 = !DILocation(line: 953, column: 71, scope: !4347)
!4347 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 2)
!4348 = !DILocation(line: 953, column: 132, scope: !4349)
!4349 = !DILexicalBlockFile(scope: !4341, file: !439, discriminator: 3)
!4350 = !DILocation(line: 953, column: 150, scope: !4341)
!4351 = !DILocation(line: 953, column: 160, scope: !4341)
!4352 = !DILocation(line: 953, column: 185, scope: !4341)
!4353 = !DILocation(line: 953, column: 116, scope: !4341)
!4354 = !DILocation(line: 953, column: 204, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !757, file: !439, discriminator: 4)
!4356 = !DILocation(line: 953, column: 204, scope: !766)
!4357 = !DILocation(line: 953, column: 204, scope: !4358)
!4358 = !DILexicalBlockFile(scope: !766, file: !439, discriminator: 5)
!4359 = !DILocation(line: 954, column: 13, scope: !758)
!4360 = !DILocation(line: 954, column: 13, scope: !4262)
!4361 = !DILocation(line: 954, column: 13, scope: !757)
!4362 = !DILocation(line: 956, column: 17, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !751, file: !439, line: 956, column: 17)
!4364 = !DILocation(line: 956, column: 22, scope: !4363)
!4365 = !DILocation(line: 956, column: 33, scope: !4363)
!4366 = !DILocation(line: 956, column: 17, scope: !751)
!4367 = !DILocation(line: 957, column: 31, scope: !4363)
!4368 = !DILocation(line: 957, column: 36, scope: !4363)
!4369 = !DILocation(line: 957, column: 17, scope: !4363)
!4370 = !DILocation(line: 957, column: 22, scope: !4363)
!4371 = !DILocation(line: 957, column: 29, scope: !4363)
!4372 = !DILocation(line: 958, column: 17, scope: !771)
!4373 = !DILocation(line: 958, column: 24, scope: !771)
!4374 = !DILocation(line: 958, column: 17, scope: !751)
!4375 = !DILocation(line: 959, column: 17, scope: !771)
!4376 = !DILocation(line: 959, column: 22, scope: !771)
!4377 = !DILocation(line: 959, column: 27, scope: !771)
!4378 = !DILocation(line: 960, column: 23, scope: !770)
!4379 = !DILocation(line: 960, column: 22, scope: !770)
!4380 = !DILocation(line: 960, column: 30, scope: !770)
!4381 = !DILocation(line: 960, column: 22, scope: !771)
!4382 = !DILocation(line: 961, column: 28, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !770, file: !439, line: 960, column: 39)
!4384 = !DILocation(line: 961, column: 17, scope: !4383)
!4385 = !DILocation(line: 962, column: 17, scope: !4383)
!4386 = !DILocation(line: 962, column: 22, scope: !4383)
!4387 = !DILocation(line: 962, column: 27, scope: !4383)
!4388 = !DILocation(line: 963, column: 13, scope: !4383)
!4389 = !DILocation(line: 964, column: 22, scope: !769)
!4390 = !DILocation(line: 964, column: 27, scope: !769)
!4391 = !DILocation(line: 964, column: 33, scope: !769)
!4392 = !DILocation(line: 964, column: 22, scope: !770)
!4393 = !DILocation(line: 965, column: 17, scope: !768)
!4394 = !DILocation(line: 965, column: 24, scope: !768)
!4395 = !DILocation(line: 965, column: 32, scope: !768)
!4396 = !DILocation(line: 965, column: 37, scope: !768)
!4397 = !DILocation(line: 965, column: 45, scope: !768)
!4398 = !DILocation(line: 965, column: 50, scope: !768)
!4399 = !DILocation(line: 965, column: 43, scope: !768)
!4400 = !DILocation(line: 966, column: 17, scope: !768)
!4401 = !DILocation(line: 966, column: 24, scope: !768)
!4402 = !DILocation(line: 966, column: 33, scope: !768)
!4403 = !DILocation(line: 966, column: 38, scope: !768)
!4404 = !DILocation(line: 966, column: 44, scope: !768)
!4405 = !DILocation(line: 966, column: 49, scope: !768)
!4406 = !DILocation(line: 966, column: 42, scope: !768)
!4407 = !DILocation(line: 967, column: 17, scope: !768)
!4408 = !DILocation(line: 967, column: 24, scope: !768)
!4409 = !DILocation(line: 967, column: 33, scope: !768)
!4410 = !DILocation(line: 967, column: 49, scope: !768)
!4411 = !DILocation(line: 967, column: 42, scope: !768)
!4412 = !DILocation(line: 967, column: 40, scope: !768)
!4413 = !DILocation(line: 968, column: 17, scope: !768)
!4414 = !DILocation(line: 968, column: 23, scope: !768)
!4415 = !DILocation(line: 968, column: 29, scope: !768)
!4416 = !DILocation(line: 968, column: 34, scope: !768)
!4417 = !DILocation(line: 969, column: 45, scope: !768)
!4418 = !DILocation(line: 969, column: 50, scope: !768)
!4419 = !DILocation(line: 969, column: 56, scope: !768)
!4420 = !DILocation(line: 969, column: 31, scope: !768)
!4421 = !DILocation(line: 969, column: 21, scope: !768)
!4422 = !DILocation(line: 970, column: 17, scope: !768)
!4423 = !DILocation(line: 970, column: 22, scope: !768)
!4424 = !DILocation(line: 970, column: 28, scope: !768)
!4425 = !DILocation(line: 971, column: 21, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !768, file: !439, line: 971, column: 21)
!4427 = !DILocation(line: 971, column: 25, scope: !4426)
!4428 = !DILocation(line: 971, column: 21, scope: !768)
!4429 = !DILocation(line: 972, column: 32, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4426, file: !439, line: 971, column: 40)
!4431 = !DILocation(line: 972, column: 37, scope: !4430)
!4432 = !DILocation(line: 972, column: 21, scope: !4430)
!4433 = !DILocation(line: 973, column: 21, scope: !4430)
!4434 = !DILocation(line: 973, column: 26, scope: !4430)
!4435 = !DILocation(line: 973, column: 30, scope: !4430)
!4436 = !DILocation(line: 974, column: 32, scope: !4430)
!4437 = !DILocation(line: 974, column: 21, scope: !4430)
!4438 = !DILocation(line: 975, column: 21, scope: !4430)
!4439 = !DILocation(line: 975, column: 26, scope: !4430)
!4440 = !DILocation(line: 975, column: 31, scope: !4430)
!4441 = !DILocation(line: 976, column: 21, scope: !4430)
!4442 = !DILocation(line: 978, column: 28, scope: !768)
!4443 = !DILocation(line: 978, column: 17, scope: !768)
!4444 = !DILocation(line: 978, column: 22, scope: !768)
!4445 = !DILocation(line: 978, column: 26, scope: !768)
!4446 = !DILocation(line: 979, column: 28, scope: !768)
!4447 = !DILocation(line: 979, column: 33, scope: !768)
!4448 = !DILocation(line: 979, column: 39, scope: !768)
!4449 = !DILocation(line: 979, column: 37, scope: !768)
!4450 = !DILocation(line: 979, column: 17, scope: !768)
!4451 = !DILocation(line: 979, column: 22, scope: !768)
!4452 = !DILocation(line: 979, column: 26, scope: !768)
!4453 = !DILocation(line: 980, column: 35, scope: !768)
!4454 = !DILocation(line: 980, column: 40, scope: !768)
!4455 = !DILocation(line: 980, column: 17, scope: !768)
!4456 = !DILocation(line: 980, column: 22, scope: !768)
!4457 = !DILocation(line: 980, column: 33, scope: !768)
!4458 = !DILocation(line: 981, column: 24, scope: !768)
!4459 = !DILocation(line: 981, column: 29, scope: !768)
!4460 = !DILocation(line: 981, column: 35, scope: !768)
!4461 = !DILocation(line: 981, column: 33, scope: !768)
!4462 = !DILocation(line: 981, column: 43, scope: !768)
!4463 = !DILocation(line: 981, column: 17, scope: !768)
!4464 = !DILocation(line: 982, column: 28, scope: !768)
!4465 = !DILocation(line: 982, column: 17, scope: !768)
!4466 = !DILocation(line: 983, column: 28, scope: !768)
!4467 = !DILocation(line: 983, column: 33, scope: !768)
!4468 = !DILocation(line: 983, column: 39, scope: !768)
!4469 = !DILocation(line: 983, column: 37, scope: !768)
!4470 = !DILocation(line: 983, column: 17, scope: !768)
!4471 = !DILocation(line: 983, column: 22, scope: !768)
!4472 = !DILocation(line: 983, column: 26, scope: !768)
!4473 = !DILocation(line: 984, column: 28, scope: !768)
!4474 = !DILocation(line: 984, column: 33, scope: !768)
!4475 = !DILocation(line: 984, column: 37, scope: !768)
!4476 = !DILocation(line: 984, column: 17, scope: !768)
!4477 = !DILocation(line: 984, column: 22, scope: !768)
!4478 = !DILocation(line: 984, column: 26, scope: !768)
!4479 = !DILocation(line: 985, column: 30, scope: !768)
!4480 = !DILocation(line: 985, column: 35, scope: !768)
!4481 = !DILocation(line: 985, column: 41, scope: !768)
!4482 = !DILocation(line: 985, column: 39, scope: !768)
!4483 = !DILocation(line: 985, column: 17, scope: !768)
!4484 = !DILocation(line: 985, column: 22, scope: !768)
!4485 = !DILocation(line: 985, column: 28, scope: !768)
!4486 = !DILocation(line: 986, column: 13, scope: !769)
!4487 = !DILocation(line: 986, column: 13, scope: !4488)
!4488 = !DILexicalBlockFile(scope: !769, file: !439, discriminator: 1)
!4489 = !DILocation(line: 986, column: 13, scope: !768)
!4490 = !DILocation(line: 988, column: 17, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !769, file: !439, line: 987, column: 18)
!4492 = !DILocation(line: 988, column: 22, scope: !4491)
!4493 = !DILocation(line: 988, column: 28, scope: !4491)
!4494 = !DILocation(line: 989, column: 21, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4491, file: !439, line: 989, column: 21)
!4496 = !DILocation(line: 989, column: 26, scope: !4495)
!4497 = !DILocation(line: 989, column: 30, scope: !4495)
!4498 = !DILocation(line: 989, column: 21, scope: !4491)
!4499 = !DILocation(line: 990, column: 32, scope: !4495)
!4500 = !DILocation(line: 990, column: 37, scope: !4495)
!4501 = !DILocation(line: 990, column: 21, scope: !4495)
!4502 = !DILocation(line: 991, column: 28, scope: !4491)
!4503 = !DILocation(line: 991, column: 17, scope: !4491)
!4504 = !DILocation(line: 991, column: 22, scope: !4491)
!4505 = !DILocation(line: 991, column: 26, scope: !4491)
!4506 = !DILocation(line: 992, column: 35, scope: !4491)
!4507 = !DILocation(line: 992, column: 40, scope: !4491)
!4508 = !DILocation(line: 992, column: 17, scope: !4491)
!4509 = !DILocation(line: 992, column: 22, scope: !4491)
!4510 = !DILocation(line: 992, column: 33, scope: !4491)
!4511 = !DILocation(line: 993, column: 28, scope: !4491)
!4512 = !DILocation(line: 993, column: 33, scope: !4491)
!4513 = !DILocation(line: 993, column: 17, scope: !4491)
!4514 = !DILocation(line: 993, column: 22, scope: !4491)
!4515 = !DILocation(line: 993, column: 26, scope: !4491)
!4516 = !DILocation(line: 994, column: 35, scope: !4491)
!4517 = !DILocation(line: 994, column: 40, scope: !4491)
!4518 = !DILocation(line: 994, column: 17, scope: !4491)
!4519 = !DILocation(line: 994, column: 22, scope: !4491)
!4520 = !DILocation(line: 994, column: 33, scope: !4491)
!4521 = !DILocation(line: 995, column: 150, scope: !4491)
!4522 = !DILocation(line: 995, column: 155, scope: !4491)
!4523 = !DILocation(line: 995, column: 137, scope: !4491)
!4524 = !DILocation(line: 995, column: 17, scope: !4491)
!4525 = !DILocation(line: 995, column: 22, scope: !4491)
!4526 = !DILocation(line: 995, column: 26, scope: !4491)
!4527 = !DILocation(line: 996, column: 28, scope: !4491)
!4528 = !DILocation(line: 996, column: 33, scope: !4491)
!4529 = !DILocation(line: 996, column: 37, scope: !4491)
!4530 = !DILocation(line: 996, column: 17, scope: !4491)
!4531 = !DILocation(line: 996, column: 22, scope: !4491)
!4532 = !DILocation(line: 996, column: 26, scope: !4491)
!4533 = !DILocation(line: 998, column: 9, scope: !752)
!4534 = !DILocation(line: 998, column: 9, scope: !4535)
!4535 = !DILexicalBlockFile(scope: !752, file: !439, discriminator: 1)
!4536 = !DILocation(line: 998, column: 9, scope: !751)
!4537 = !DILocation(line: 1000, column: 13, scope: !776)
!4538 = !DILocation(line: 1000, column: 17, scope: !776)
!4539 = !DILocation(line: 1001, column: 13, scope: !776)
!4540 = !DILocation(line: 1001, column: 24, scope: !776)
!4541 = !DILocation(line: 1002, column: 13, scope: !776)
!4542 = !DILocation(line: 1002, column: 19, scope: !776)
!4543 = !DILocation(line: 1003, column: 17, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !776, file: !439, line: 1003, column: 17)
!4545 = !DILocation(line: 1003, column: 22, scope: !4544)
!4546 = !DILocation(line: 1003, column: 28, scope: !4544)
!4547 = !DILocation(line: 1003, column: 17, scope: !776)
!4548 = !DILocation(line: 1004, column: 21, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !439, line: 1004, column: 21)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !439, line: 1003, column: 43)
!4551 = !DILocation(line: 1004, column: 26, scope: !4549)
!4552 = !DILocation(line: 1004, column: 30, scope: !4549)
!4553 = !DILocation(line: 1004, column: 21, scope: !4550)
!4554 = !DILocation(line: 1006, column: 25, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4549, file: !439, line: 1004, column: 45)
!4556 = !DILocation(line: 1005, column: 21, scope: !4555)
!4557 = !DILocation(line: 1005, column: 26, scope: !4555)
!4558 = !DILocation(line: 1005, column: 30, scope: !4555)
!4559 = !DILocation(line: 1007, column: 25, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4555, file: !439, line: 1007, column: 25)
!4561 = !DILocation(line: 1007, column: 30, scope: !4560)
!4562 = !DILocation(line: 1007, column: 34, scope: !4560)
!4563 = !DILocation(line: 1007, column: 25, scope: !4555)
!4564 = !DILocation(line: 1008, column: 25, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4560, file: !439, line: 1007, column: 49)
!4566 = !DILocation(line: 1008, column: 30, scope: !4565)
!4567 = !DILocation(line: 1008, column: 35, scope: !4565)
!4568 = !DILocation(line: 1009, column: 25, scope: !4565)
!4569 = !DILocation(line: 1011, column: 32, scope: !4555)
!4570 = !DILocation(line: 1011, column: 37, scope: !4555)
!4571 = !DILocation(line: 1011, column: 41, scope: !4555)
!4572 = !DILocation(line: 1011, column: 21, scope: !4555)
!4573 = !DILocation(line: 1011, column: 26, scope: !4555)
!4574 = !DILocation(line: 1011, column: 30, scope: !4555)
!4575 = !DILocation(line: 1012, column: 17, scope: !4555)
!4576 = !DILocation(line: 1013, column: 36, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4550, file: !439, line: 1013, column: 21)
!4578 = !DILocation(line: 1013, column: 41, scope: !4577)
!4579 = !DILocation(line: 1013, column: 52, scope: !4577)
!4580 = !DILocation(line: 1013, column: 57, scope: !4577)
!4581 = !DILocation(line: 1013, column: 63, scope: !4577)
!4582 = !DILocation(line: 1013, column: 68, scope: !4577)
!4583 = !DILocation(line: 1013, column: 61, scope: !4577)
!4584 = !DILocation(line: 1013, column: 46, scope: !4577)
!4585 = !DILocation(line: 1014, column: 27, scope: !4577)
!4586 = !DILocation(line: 1013, column: 21, scope: !4577)
!4587 = !DILocation(line: 1014, column: 32, scope: !4577)
!4588 = !DILocation(line: 1013, column: 21, scope: !4550)
!4589 = !DILocation(line: 1015, column: 21, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4577, file: !439, line: 1014, column: 47)
!4591 = !DILocation(line: 1015, column: 26, scope: !4590)
!4592 = !DILocation(line: 1015, column: 31, scope: !4590)
!4593 = !DILocation(line: 1016, column: 26, scope: !4590)
!4594 = !DILocation(line: 1017, column: 17, scope: !4590)
!4595 = !DILocation(line: 1019, column: 21, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4577, file: !439, line: 1018, column: 22)
!4597 = !DILocation(line: 1019, column: 26, scope: !4596)
!4598 = !DILocation(line: 1019, column: 31, scope: !4596)
!4599 = !DILocation(line: 1020, column: 154, scope: !4596)
!4600 = !DILocation(line: 1020, column: 159, scope: !4596)
!4601 = !DILocation(line: 1020, column: 141, scope: !4596)
!4602 = !DILocation(line: 1020, column: 21, scope: !4596)
!4603 = !DILocation(line: 1020, column: 26, scope: !4596)
!4604 = !DILocation(line: 1020, column: 30, scope: !4596)
!4605 = !DILocation(line: 1021, column: 28, scope: !4596)
!4606 = !DILocation(line: 1021, column: 33, scope: !4596)
!4607 = !DILocation(line: 1021, column: 41, scope: !4596)
!4608 = !DILocation(line: 1021, column: 26, scope: !4596)
!4609 = !DILocation(line: 1023, column: 13, scope: !4550)
!4610 = !DILocation(line: 1025, column: 23, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4544, file: !439, line: 1024, column: 18)
!4612 = !DILocation(line: 1025, column: 28, scope: !4611)
!4613 = !DILocation(line: 1025, column: 34, scope: !4611)
!4614 = !DILocation(line: 1025, column: 39, scope: !4611)
!4615 = !DILocation(line: 1025, column: 32, scope: !4611)
!4616 = !DILocation(line: 1025, column: 21, scope: !4611)
!4617 = !DILocation(line: 1026, column: 35, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4611, file: !439, line: 1026, column: 21)
!4619 = !DILocation(line: 1026, column: 21, scope: !4618)
!4620 = !DILocation(line: 1026, column: 21, scope: !4611)
!4621 = !DILocation(line: 1027, column: 21, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4618, file: !439, line: 1026, column: 41)
!4623 = !DILocation(line: 1027, column: 26, scope: !4622)
!4624 = !DILocation(line: 1027, column: 31, scope: !4622)
!4625 = !DILocation(line: 1028, column: 26, scope: !4622)
!4626 = !DILocation(line: 1029, column: 17, scope: !4622)
!4627 = !DILocation(line: 1031, column: 21, scope: !4618)
!4628 = !DILocation(line: 1031, column: 26, scope: !4618)
!4629 = !DILocation(line: 1031, column: 31, scope: !4618)
!4630 = !DILocation(line: 1033, column: 13, scope: !776)
!4631 = !DILocation(line: 1033, column: 18, scope: !776)
!4632 = !DILocation(line: 1033, column: 24, scope: !776)
!4633 = !DILocation(line: 1035, column: 13, scope: !776)
!4634 = !DILocation(line: 1035, column: 21, scope: !4635)
!4635 = !DILexicalBlockFile(scope: !4636, file: !439, discriminator: 2)
!4636 = !DILexicalBlockFile(scope: !776, file: !439, discriminator: 1)
!4637 = !DILocation(line: 1035, column: 20, scope: !776)
!4638 = !DILocation(line: 1036, column: 17, scope: !780)
!4639 = !DILocation(line: 1036, column: 28, scope: !780)
!4640 = !DILocation(line: 1036, column: 39, scope: !780)
!4641 = !DILocation(line: 1036, column: 44, scope: !780)
!4642 = !DILocation(line: 1036, column: 50, scope: !780)
!4643 = !DILocation(line: 1036, column: 39, scope: !4644)
!4644 = !DILexicalBlockFile(scope: !780, file: !439, discriminator: 1)
!4645 = !DILocation(line: 1037, column: 27, scope: !780)
!4646 = !DILocation(line: 1037, column: 32, scope: !780)
!4647 = !DILocation(line: 1037, column: 40, scope: !780)
!4648 = !DILocation(line: 1037, column: 45, scope: !780)
!4649 = !DILocation(line: 1037, column: 38, scope: !780)
!4650 = !DILocation(line: 1036, column: 28, scope: !4651)
!4651 = !DILexicalBlockFile(scope: !4652, file: !439, discriminator: 3)
!4652 = !DILexicalBlockFile(scope: !780, file: !439, discriminator: 2)
!4653 = !DILocation(line: 1038, column: 17, scope: !780)
!4654 = !DILocation(line: 1038, column: 28, scope: !780)
!4655 = !DILocation(line: 1038, column: 39, scope: !780)
!4656 = !DILocation(line: 1038, column: 44, scope: !780)
!4657 = !DILocation(line: 1038, column: 50, scope: !780)
!4658 = !DILocation(line: 1038, column: 55, scope: !780)
!4659 = !DILocation(line: 1038, column: 48, scope: !780)
!4660 = !DILocation(line: 1039, column: 17, scope: !780)
!4661 = !DILocation(line: 1039, column: 28, scope: !780)
!4662 = !DILocation(line: 1039, column: 38, scope: !780)
!4663 = !DILocation(line: 1039, column: 47, scope: !780)
!4664 = !DILocation(line: 1040, column: 17, scope: !780)
!4665 = !DILocation(line: 1040, column: 23, scope: !780)
!4666 = !DILocation(line: 1040, column: 32, scope: !780)
!4667 = !DILocation(line: 1040, column: 37, scope: !780)
!4668 = !DILocation(line: 1041, column: 48, scope: !780)
!4669 = !DILocation(line: 1041, column: 56, scope: !780)
!4670 = !DILocation(line: 1041, column: 34, scope: !780)
!4671 = !DILocation(line: 1041, column: 24, scope: !780)
!4672 = !DILocation(line: 1043, column: 21, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !780, file: !439, line: 1043, column: 21)
!4674 = !DILocation(line: 1043, column: 28, scope: !4673)
!4675 = !DILocation(line: 1043, column: 21, scope: !780)
!4676 = !DILocation(line: 1044, column: 21, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4673, file: !439, line: 1043, column: 43)
!4678 = !DILocation(line: 1044, column: 26, scope: !4677)
!4679 = !DILocation(line: 1044, column: 31, scope: !4677)
!4680 = !DILocation(line: 1045, column: 32, scope: !4677)
!4681 = !DILocation(line: 1045, column: 37, scope: !4677)
!4682 = !DILocation(line: 1045, column: 21, scope: !4677)
!4683 = !DILocation(line: 1045, column: 26, scope: !4677)
!4684 = !DILocation(line: 1045, column: 30, scope: !4677)
!4685 = !DILocation(line: 1046, column: 21, scope: !4677)
!4686 = !DILocation(line: 1048, column: 28, scope: !780)
!4687 = !DILocation(line: 1048, column: 17, scope: !780)
!4688 = !DILocation(line: 1048, column: 22, scope: !780)
!4689 = !DILocation(line: 1048, column: 26, scope: !780)
!4690 = !DILocation(line: 1049, column: 28, scope: !780)
!4691 = !DILocation(line: 1049, column: 33, scope: !780)
!4692 = !DILocation(line: 1049, column: 39, scope: !780)
!4693 = !DILocation(line: 1049, column: 37, scope: !780)
!4694 = !DILocation(line: 1049, column: 17, scope: !780)
!4695 = !DILocation(line: 1049, column: 22, scope: !780)
!4696 = !DILocation(line: 1049, column: 26, scope: !780)
!4697 = !DILocation(line: 1050, column: 28, scope: !780)
!4698 = !DILocation(line: 1050, column: 33, scope: !780)
!4699 = !DILocation(line: 1050, column: 39, scope: !780)
!4700 = !DILocation(line: 1050, column: 37, scope: !780)
!4701 = !DILocation(line: 1050, column: 17, scope: !780)
!4702 = !DILocation(line: 1050, column: 22, scope: !780)
!4703 = !DILocation(line: 1050, column: 26, scope: !780)
!4704 = !DILocation(line: 1051, column: 30, scope: !780)
!4705 = !DILocation(line: 1051, column: 39, scope: !780)
!4706 = !DILocation(line: 1051, column: 30, scope: !4644)
!4707 = !DILocation(line: 1052, column: 26, scope: !780)
!4708 = !DILocation(line: 1052, column: 31, scope: !780)
!4709 = !DILocation(line: 1052, column: 37, scope: !780)
!4710 = !DILocation(line: 1052, column: 35, scope: !780)
!4711 = !DILocation(line: 1051, column: 17, scope: !4651)
!4712 = !DILocation(line: 1051, column: 22, scope: !780)
!4713 = !DILocation(line: 1051, column: 28, scope: !780)
!4714 = !DILocation(line: 1053, column: 36, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !780, file: !439, line: 1053, column: 21)
!4716 = !DILocation(line: 1053, column: 41, scope: !4715)
!4717 = !DILocation(line: 1054, column: 38, scope: !4715)
!4718 = !DILocation(line: 1054, column: 43, scope: !4715)
!4719 = !DILocation(line: 1054, column: 49, scope: !4715)
!4720 = !DILocation(line: 1054, column: 54, scope: !4715)
!4721 = !DILocation(line: 1054, column: 47, scope: !4715)
!4722 = !DILocation(line: 1054, column: 32, scope: !4715)
!4723 = !DILocation(line: 1055, column: 32, scope: !4715)
!4724 = !DILocation(line: 1053, column: 21, scope: !4715)
!4725 = !DILocation(line: 1055, column: 37, scope: !4715)
!4726 = !DILocation(line: 1053, column: 21, scope: !780)
!4727 = !DILocation(line: 1059, column: 25, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !439, line: 1059, column: 25)
!4729 = distinct !DILexicalBlock(scope: !4715, file: !439, line: 1055, column: 52)
!4730 = !DILocation(line: 1059, column: 30, scope: !4728)
!4731 = !DILocation(line: 1059, column: 25, scope: !4729)
!4732 = !DILocation(line: 1060, column: 25, scope: !4728)
!4733 = !DILocation(line: 1063, column: 28, scope: !4729)
!4734 = !DILocation(line: 1063, column: 33, scope: !4729)
!4735 = !DILocation(line: 1063, column: 21, scope: !4729)
!4736 = !DILocation(line: 1064, column: 17, scope: !4729)
!4737 = !DILocation(line: 1065, column: 150, scope: !780)
!4738 = !DILocation(line: 1065, column: 155, scope: !780)
!4739 = !DILocation(line: 1065, column: 137, scope: !780)
!4740 = !DILocation(line: 1065, column: 17, scope: !780)
!4741 = !DILocation(line: 1065, column: 22, scope: !780)
!4742 = !DILocation(line: 1065, column: 26, scope: !780)
!4743 = !DILocation(line: 1066, column: 24, scope: !780)
!4744 = !DILocation(line: 1066, column: 29, scope: !780)
!4745 = !DILocation(line: 1066, column: 37, scope: !780)
!4746 = !DILocation(line: 1066, column: 22, scope: !780)
!4747 = !DILocation(line: 1067, column: 13, scope: !776)
!4748 = !DILocation(line: 1067, column: 13, scope: !4636)
!4749 = !DILocation(line: 1068, column: 17, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !776, file: !439, line: 1068, column: 17)
!4751 = !DILocation(line: 1068, column: 22, scope: !4750)
!4752 = !DILocation(line: 1068, column: 26, scope: !4750)
!4753 = !DILocation(line: 1068, column: 17, scope: !776)
!4754 = !DILocation(line: 1069, column: 28, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4750, file: !439, line: 1068, column: 41)
!4756 = !DILocation(line: 1069, column: 33, scope: !4755)
!4757 = !DILocation(line: 1069, column: 39, scope: !4755)
!4758 = !DILocation(line: 1069, column: 37, scope: !4755)
!4759 = !DILocation(line: 1069, column: 17, scope: !4755)
!4760 = !DILocation(line: 1069, column: 22, scope: !4755)
!4761 = !DILocation(line: 1069, column: 26, scope: !4755)
!4762 = !DILocation(line: 1070, column: 35, scope: !4755)
!4763 = !DILocation(line: 1070, column: 40, scope: !4755)
!4764 = !DILocation(line: 1070, column: 17, scope: !4755)
!4765 = !DILocation(line: 1070, column: 22, scope: !4755)
!4766 = !DILocation(line: 1070, column: 33, scope: !4755)
!4767 = !DILocation(line: 1073, column: 22, scope: !4755)
!4768 = !DILocation(line: 1073, column: 27, scope: !4755)
!4769 = !DILocation(line: 1073, column: 31, scope: !4755)
!4770 = !DILocation(line: 1073, column: 20, scope: !4755)
!4771 = !DILocation(line: 1074, column: 21, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4755, file: !439, line: 1074, column: 21)
!4773 = !DILocation(line: 1074, column: 27, scope: !4772)
!4774 = !DILocation(line: 1074, column: 32, scope: !4772)
!4775 = !DILocation(line: 1074, column: 24, scope: !4772)
!4776 = !DILocation(line: 1074, column: 36, scope: !4772)
!4777 = !DILocation(line: 1074, column: 40, scope: !4778)
!4778 = !DILexicalBlockFile(scope: !4772, file: !439, discriminator: 1)
!4779 = !DILocation(line: 1074, column: 39, scope: !4772)
!4780 = !DILocation(line: 1074, column: 43, scope: !4772)
!4781 = !DILocation(line: 1074, column: 21, scope: !4755)
!4782 = !DILocation(line: 1075, column: 24, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4772, file: !439, line: 1074, column: 52)
!4784 = !DILocation(line: 1075, column: 27, scope: !4783)
!4785 = !DILocation(line: 1076, column: 22, scope: !4783)
!4786 = !DILocation(line: 1076, column: 25, scope: !4783)
!4787 = !DILocation(line: 1077, column: 32, scope: !4783)
!4788 = !DILocation(line: 1077, column: 21, scope: !4783)
!4789 = !DILocation(line: 1077, column: 26, scope: !4783)
!4790 = !DILocation(line: 1077, column: 30, scope: !4783)
!4791 = !DILocation(line: 1078, column: 17, scope: !4783)
!4792 = !DILocation(line: 1079, column: 13, scope: !4755)
!4793 = !DILocation(line: 1080, column: 9, scope: !752)
!4794 = !DILocation(line: 1080, column: 9, scope: !4535)
!4795 = !DILocation(line: 1081, column: 13, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !747, file: !439, line: 1081, column: 13)
!4797 = !DILocation(line: 1081, column: 18, scope: !4796)
!4798 = !DILocation(line: 1081, column: 23, scope: !4796)
!4799 = !DILocation(line: 1081, column: 13, scope: !747)
!4800 = !DILocation(line: 1082, column: 17, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !439, line: 1082, column: 17)
!4802 = distinct !DILexicalBlock(scope: !4796, file: !439, line: 1081, column: 30)
!4803 = !DILocation(line: 1082, column: 22, scope: !4801)
!4804 = !DILocation(line: 1082, column: 29, scope: !4801)
!4805 = !DILocation(line: 1082, column: 17, scope: !4802)
!4806 = !DILocation(line: 1083, column: 17, scope: !4801)
!4807 = !DILocation(line: 1084, column: 24, scope: !4802)
!4808 = !DILocation(line: 1084, column: 29, scope: !4802)
!4809 = !DILocation(line: 1084, column: 13, scope: !4802)
!4810 = !DILocation(line: 1084, column: 18, scope: !4802)
!4811 = !DILocation(line: 1084, column: 22, scope: !4802)
!4812 = !DILocation(line: 1085, column: 13, scope: !4802)
!4813 = !DILocation(line: 900, column: 5, scope: !748)
!4814 = !DILocation(line: 1089, column: 1, scope: !741)
!4815 = !DILocation(line: 1095, column: 30, scope: !861)
!4816 = !DILocation(line: 1095, column: 39, scope: !861)
!4817 = !DILocation(line: 1097, column: 9, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !861, file: !439, line: 1097, column: 9)
!4819 = !DILocation(line: 1097, column: 11, scope: !4818)
!4820 = !DILocation(line: 1097, column: 9, scope: !861)
!4821 = !DILocation(line: 1098, column: 15, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !439, line: 1098, column: 13)
!4823 = distinct !DILexicalBlock(scope: !4818, file: !439, line: 1097, column: 20)
!4824 = !DILocation(line: 1098, column: 20, scope: !4822)
!4825 = !DILocation(line: 1098, column: 13, scope: !4822)
!4826 = !DILocation(line: 1098, column: 26, scope: !4822)
!4827 = !DILocation(line: 1098, column: 31, scope: !4822)
!4828 = !DILocation(line: 1098, column: 24, scope: !4822)
!4829 = !DILocation(line: 1098, column: 13, scope: !4823)
!4830 = !DILocation(line: 1099, column: 13, scope: !4822)
!4831 = !DILocation(line: 1100, column: 14, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4823, file: !439, line: 1100, column: 13)
!4833 = !DILocation(line: 1100, column: 19, scope: !4832)
!4834 = !DILocation(line: 1100, column: 13, scope: !4832)
!4835 = !DILocation(line: 1100, column: 26, scope: !4832)
!4836 = !DILocation(line: 1100, column: 23, scope: !4832)
!4837 = !DILocation(line: 1100, column: 13, scope: !4823)
!4838 = !DILocation(line: 1101, column: 25, scope: !4832)
!4839 = !DILocation(line: 1101, column: 14, scope: !4832)
!4840 = !DILocation(line: 1101, column: 19, scope: !4832)
!4841 = !DILocation(line: 1101, column: 23, scope: !4832)
!4842 = !DILocation(line: 1101, column: 13, scope: !4832)
!4843 = !DILocation(line: 1102, column: 5, scope: !4823)
!4844 = !DILocation(line: 1103, column: 1, scope: !861)
!4845 = !DILocation(line: 1273, column: 31, scope: !867)
!4846 = !DILocation(line: 1275, column: 9, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !867, file: !439, line: 1275, column: 9)
!4848 = !DILocation(line: 1275, column: 14, scope: !4847)
!4849 = !DILocation(line: 1275, column: 9, scope: !867)
!4850 = !DILocation(line: 1276, column: 9, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4847, file: !439, line: 1275, column: 24)
!4852 = !DILocation(line: 1276, column: 14, scope: !4851)
!4853 = !DILocation(line: 1276, column: 19, scope: !4851)
!4854 = !DILocation(line: 1277, column: 20, scope: !4851)
!4855 = !DILocation(line: 1277, column: 25, scope: !4851)
!4856 = !DILocation(line: 1277, column: 9, scope: !4851)
!4857 = !DILocation(line: 1277, column: 14, scope: !4851)
!4858 = !DILocation(line: 1277, column: 18, scope: !4851)
!4859 = !DILocation(line: 1278, column: 9, scope: !4851)
!4860 = !DILocation(line: 1280, column: 9, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !867, file: !439, line: 1280, column: 9)
!4862 = !DILocation(line: 1280, column: 14, scope: !4861)
!4863 = !DILocation(line: 1280, column: 9, scope: !867)
!4864 = !DILocation(line: 1286, column: 47, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4861, file: !439, line: 1280, column: 26)
!4866 = !DILocation(line: 1286, column: 52, scope: !4865)
!4867 = !DILocation(line: 1285, column: 9, scope: !4865)
!4868 = !DILocation(line: 1288, column: 9, scope: !4865)
!4869 = !DILocation(line: 1288, column: 14, scope: !4865)
!4870 = !DILocation(line: 1288, column: 25, scope: !4865)
!4871 = !DILocation(line: 1289, column: 5, scope: !4865)
!4872 = !DILocation(line: 1290, column: 5, scope: !867)
!4873 = !DILocation(line: 1291, column: 1, scope: !867)
!4874 = !DILocation(line: 1300, column: 37, scope: !870)
!4875 = !DILocation(line: 1302, column: 5, scope: !870)
!4876 = !DILocation(line: 1302, column: 15, scope: !870)
!4877 = !DILocation(line: 1303, column: 5, scope: !870)
!4878 = !DILocation(line: 1303, column: 9, scope: !870)
!4879 = !DILocation(line: 1304, column: 30, scope: !870)
!4880 = !DILocation(line: 1304, column: 35, scope: !870)
!4881 = !DILocation(line: 1304, column: 42, scope: !870)
!4882 = !DILocation(line: 1304, column: 47, scope: !870)
!4883 = !DILocation(line: 1304, column: 53, scope: !870)
!4884 = !DILocation(line: 1304, column: 58, scope: !870)
!4885 = !DILocation(line: 1304, column: 51, scope: !870)
!4886 = !DILocation(line: 1304, column: 9, scope: !870)
!4887 = !DILocation(line: 1304, column: 7, scope: !870)
!4888 = !DILocation(line: 1305, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !870, file: !439, line: 1305, column: 9)
!4890 = !DILocation(line: 1305, column: 11, scope: !4889)
!4891 = !DILocation(line: 1305, column: 25, scope: !4889)
!4892 = !DILocation(line: 1305, column: 62, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !4889, file: !439, discriminator: 1)
!4894 = !DILocation(line: 1305, column: 46, scope: !4889)
!4895 = !DILocation(line: 1305, column: 66, scope: !4889)
!4896 = !DILocation(line: 1305, column: 72, scope: !4889)
!4897 = !DILocation(line: 1305, column: 44, scope: !4889)
!4898 = !DILocation(line: 1305, column: 44, scope: !4899)
!4899 = !DILexicalBlockFile(scope: !4889, file: !439, discriminator: 2)
!4900 = !DILocation(line: 1305, column: 115, scope: !4901)
!4901 = !DILexicalBlockFile(scope: !4889, file: !439, discriminator: 3)
!4902 = !DILocation(line: 1305, column: 85, scope: !4889)
!4903 = !DILocation(line: 1305, column: 121, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4905, file: !439, discriminator: 5)
!4905 = !DILexicalBlockFile(scope: !4889, file: !439, discriminator: 4)
!4906 = !DILocation(line: 1305, column: 9, scope: !870)
!4907 = !DILocation(line: 1306, column: 36, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !439, line: 1306, column: 13)
!4909 = distinct !DILexicalBlock(scope: !4889, file: !439, line: 1305, column: 128)
!4910 = !DILocation(line: 1306, column: 13, scope: !4908)
!4911 = !DILocation(line: 1306, column: 13, scope: !4909)
!4912 = !DILocation(line: 1307, column: 13, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4908, file: !439, line: 1306, column: 63)
!4914 = !DILocation(line: 1308, column: 13, scope: !4913)
!4915 = !DILocation(line: 1308, column: 18, scope: !4913)
!4916 = !DILocation(line: 1308, column: 23, scope: !4913)
!4917 = !DILocation(line: 1309, column: 9, scope: !4913)
!4918 = !DILocation(line: 1310, column: 13, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4908, file: !439, line: 1309, column: 16)
!4920 = !DILocation(line: 1310, column: 18, scope: !4919)
!4921 = !DILocation(line: 1310, column: 23, scope: !4919)
!4922 = !DILocation(line: 1312, column: 9, scope: !4909)
!4923 = !DILocation(line: 1314, column: 37, scope: !870)
!4924 = !DILocation(line: 1314, column: 14, scope: !870)
!4925 = !DILocation(line: 1314, column: 12, scope: !870)
!4926 = !DILocation(line: 1315, column: 5, scope: !870)
!4927 = !DILocation(line: 1315, column: 10, scope: !4928)
!4928 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 1)
!4929 = !DILocation(line: 1315, column: 20, scope: !876)
!4930 = !DILocation(line: 1315, column: 50, scope: !876)
!4931 = !DILocation(line: 1315, column: 62, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !876, file: !439, line: 1315, column: 59)
!4933 = !DILocation(line: 1315, column: 79, scope: !4932)
!4934 = !DILocation(line: 1315, column: 59, scope: !4932)
!4935 = !DILocation(line: 1315, column: 89, scope: !4932)
!4936 = !DILocation(line: 1315, column: 59, scope: !876)
!4937 = !DILocation(line: 1315, column: 59, scope: !4938)
!4938 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 2)
!4939 = !DILocation(line: 1315, column: 120, scope: !4940)
!4940 = !DILexicalBlockFile(scope: !4932, file: !439, discriminator: 3)
!4941 = !DILocation(line: 1315, column: 138, scope: !4932)
!4942 = !DILocation(line: 1315, column: 148, scope: !4932)
!4943 = !DILocation(line: 1315, column: 173, scope: !4932)
!4944 = !DILocation(line: 1315, column: 104, scope: !4932)
!4945 = !DILocation(line: 1315, column: 192, scope: !4946)
!4946 = !DILexicalBlockFile(scope: !870, file: !439, discriminator: 4)
!4947 = !DILocation(line: 1315, column: 192, scope: !876)
!4948 = !DILocation(line: 1315, column: 192, scope: !4949)
!4949 = !DILexicalBlockFile(scope: !876, file: !439, discriminator: 5)
!4950 = !DILocation(line: 1316, column: 9, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !870, file: !439, line: 1316, column: 9)
!4952 = !DILocation(line: 1316, column: 16, scope: !4951)
!4953 = !DILocation(line: 1316, column: 9, scope: !870)
!4954 = !DILocation(line: 1317, column: 9, scope: !4951)
!4955 = !DILocation(line: 1317, column: 14, scope: !4951)
!4956 = !DILocation(line: 1317, column: 19, scope: !4951)
!4957 = !DILocation(line: 1318, column: 12, scope: !870)
!4958 = !DILocation(line: 1318, column: 5, scope: !870)
!4959 = !DILocation(line: 1319, column: 1, scope: !870)
!4960 = !DILocation(line: 577, column: 22, scope: !784)
!4961 = !DILocation(line: 577, column: 29, scope: !784)
!4962 = !DILocation(line: 577, column: 53, scope: !784)
!4963 = !DILocation(line: 579, column: 5, scope: !784)
!4964 = !DILocation(line: 579, column: 11, scope: !784)
!4965 = !DILocation(line: 580, column: 5, scope: !784)
!4966 = !DILocation(line: 580, column: 9, scope: !784)
!4967 = !DILocation(line: 581, column: 5, scope: !784)
!4968 = !DILocation(line: 582, column: 13, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !439, line: 582, column: 13)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !439, line: 581, column: 14)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !439, line: 581, column: 5)
!4972 = distinct !DILexicalBlock(scope: !784, file: !439, line: 581, column: 5)
!4973 = !DILocation(line: 582, column: 18, scope: !4969)
!4974 = !DILocation(line: 582, column: 33, scope: !4969)
!4975 = !DILocation(line: 582, column: 13, scope: !4970)
!4976 = !DILocation(line: 585, column: 29, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4969, file: !439, line: 582, column: 50)
!4978 = !DILocation(line: 585, column: 32, scope: !4977)
!4979 = !DILocation(line: 585, column: 38, scope: !4977)
!4980 = !DILocation(line: 585, column: 20, scope: !4977)
!4981 = !DILocation(line: 585, column: 18, scope: !4977)
!4982 = !DILocation(line: 586, column: 13, scope: !4977)
!4983 = !DILocation(line: 587, column: 20, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4969, file: !439, line: 587, column: 20)
!4985 = !DILocation(line: 587, column: 25, scope: !4984)
!4986 = !DILocation(line: 587, column: 40, scope: !4984)
!4987 = !DILocation(line: 587, column: 20, scope: !4969)
!4988 = !DILocation(line: 589, column: 45, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4984, file: !439, line: 587, column: 54)
!4990 = !DILocation(line: 589, column: 48, scope: !4989)
!4991 = !DILocation(line: 590, column: 45, scope: !4989)
!4992 = !DILocation(line: 590, column: 50, scope: !4989)
!4993 = !DILocation(line: 589, column: 20, scope: !4989)
!4994 = !DILocation(line: 589, column: 18, scope: !4989)
!4995 = !DILocation(line: 591, column: 13, scope: !4989)
!4996 = !DILocation(line: 596, column: 61, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !439, line: 596, column: 17)
!4998 = distinct !DILexicalBlock(scope: !4984, file: !439, line: 592, column: 16)
!4999 = !DILocation(line: 596, column: 18, scope: !4997)
!5000 = !DILocation(line: 596, column: 17, scope: !4998)
!5001 = !DILocation(line: 597, column: 34, scope: !4997)
!5002 = !DILocation(line: 597, column: 24, scope: !4997)
!5003 = !DILocation(line: 597, column: 17, scope: !4997)
!5004 = !DILocation(line: 581, column: 5, scope: !4971)
!5005 = !DILocation(line: 601, column: 9, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !784, file: !439, line: 601, column: 9)
!5007 = !DILocation(line: 601, column: 14, scope: !5006)
!5008 = !DILocation(line: 601, column: 28, scope: !5006)
!5009 = !DILocation(line: 601, column: 31, scope: !5010)
!5010 = !DILexicalBlockFile(scope: !5006, file: !439, discriminator: 1)
!5011 = !DILocation(line: 601, column: 36, scope: !5006)
!5012 = !DILocation(line: 601, column: 43, scope: !5006)
!5013 = !DILocation(line: 601, column: 47, scope: !5006)
!5014 = !DILocation(line: 601, column: 51, scope: !5015)
!5015 = !DILexicalBlockFile(scope: !5006, file: !439, discriminator: 2)
!5016 = !DILocation(line: 601, column: 56, scope: !5006)
!5017 = !DILocation(line: 601, column: 51, scope: !5006)
!5018 = !DILocation(line: 601, column: 9, scope: !784)
!5019 = !DILocation(line: 602, column: 32, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !439, line: 602, column: 13)
!5021 = distinct !DILexicalBlock(scope: !5006, file: !439, line: 601, column: 74)
!5022 = !DILocation(line: 602, column: 45, scope: !5020)
!5023 = !DILocation(line: 602, column: 38, scope: !5020)
!5024 = !DILocation(line: 602, column: 52, scope: !5020)
!5025 = !DILocation(line: 602, column: 14, scope: !5020)
!5026 = !DILocation(line: 602, column: 13, scope: !5021)
!5027 = !DILocation(line: 603, column: 30, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5020, file: !439, line: 602, column: 71)
!5029 = !DILocation(line: 603, column: 20, scope: !5028)
!5030 = !DILocation(line: 603, column: 13, scope: !5028)
!5031 = !DILocation(line: 605, column: 5, scope: !5021)
!5032 = !DILocation(line: 609, column: 9, scope: !795)
!5033 = !DILocation(line: 609, column: 14, scope: !795)
!5034 = !DILocation(line: 609, column: 18, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !795, file: !439, discriminator: 1)
!5036 = !DILocation(line: 609, column: 23, scope: !795)
!5037 = !DILocation(line: 609, column: 18, scope: !795)
!5038 = !DILocation(line: 609, column: 9, scope: !784)
!5039 = !DILocation(line: 610, column: 9, scope: !794)
!5040 = !DILocation(line: 610, column: 24, scope: !794)
!5041 = !DILocation(line: 611, column: 9, scope: !794)
!5042 = !DILocation(line: 611, column: 13, scope: !794)
!5043 = !DILocation(line: 612, column: 35, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !794, file: !439, line: 612, column: 9)
!5045 = !DILocation(line: 612, column: 16, scope: !5044)
!5046 = !DILocation(line: 612, column: 14, scope: !5044)
!5047 = !DILocation(line: 612, column: 42, scope: !5048)
!5048 = !DILexicalBlockFile(scope: !5049, file: !439, discriminator: 2)
!5049 = !DILexicalBlockFile(scope: !5050, file: !439, discriminator: 1)
!5050 = distinct !DILexicalBlock(scope: !5044, file: !439, line: 612, column: 9)
!5051 = !DILocation(line: 612, column: 41, scope: !5050)
!5052 = !DILocation(line: 612, column: 9, scope: !5044)
!5053 = !DILocation(line: 613, column: 39, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !439, line: 613, column: 17)
!5055 = !DILocation(line: 613, column: 28, scope: !5054)
!5056 = !DILocation(line: 613, column: 26, scope: !5054)
!5057 = !DILocation(line: 613, column: 17, scope: !5050)
!5058 = !DILocation(line: 614, column: 28, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5054, file: !439, line: 613, column: 44)
!5060 = !DILocation(line: 614, column: 27, scope: !5059)
!5061 = !DILocation(line: 614, column: 25, scope: !5059)
!5062 = !DILocation(line: 615, column: 17, scope: !5059)
!5063 = !DILocation(line: 613, column: 41, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !5054, file: !439, discriminator: 1)
!5065 = !DILocation(line: 612, column: 50, scope: !5050)
!5066 = !DILocation(line: 612, column: 47, scope: !5050)
!5067 = !DILocation(line: 612, column: 9, scope: !5050)
!5068 = !DILocation(line: 617, column: 5, scope: !795)
!5069 = !DILocation(line: 617, column: 5, scope: !794)
!5070 = !DILocation(line: 618, column: 9, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !784, file: !439, line: 618, column: 9)
!5072 = !DILocation(line: 618, column: 9, scope: !784)
!5073 = !DILocation(line: 621, column: 22, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !439, line: 618, column: 18)
!5075 = !DILocation(line: 626, column: 17, scope: !5074)
!5076 = !DILocation(line: 626, column: 26, scope: !5074)
!5077 = !DILocation(line: 626, column: 31, scope: !5074)
!5078 = !DILocation(line: 626, column: 41, scope: !5074)
!5079 = !DILocation(line: 626, column: 46, scope: !5074)
!5080 = !DILocation(line: 626, column: 53, scope: !5074)
!5081 = !DILocation(line: 621, column: 9, scope: !5074)
!5082 = !DILocation(line: 627, column: 26, scope: !5074)
!5083 = !DILocation(line: 627, column: 16, scope: !5074)
!5084 = !DILocation(line: 627, column: 9, scope: !5074)
!5085 = !DILocation(line: 630, column: 12, scope: !784)
!5086 = !DILocation(line: 630, column: 5, scope: !784)
!5087 = !DILocation(line: 631, column: 1, scope: !784)
!5088 = !DILocation(line: 634, column: 33, scope: !855)
!5089 = !DILocation(line: 636, column: 9, scope: !860)
!5090 = !DILocation(line: 636, column: 14, scope: !860)
!5091 = !DILocation(line: 636, column: 29, scope: !860)
!5092 = !DILocation(line: 636, column: 9, scope: !855)
!5093 = !DILocation(line: 637, column: 21, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !860, file: !439, line: 636, column: 46)
!5095 = !DILocation(line: 637, column: 26, scope: !5094)
!5096 = !DILocation(line: 637, column: 16, scope: !5094)
!5097 = !DILocation(line: 637, column: 9, scope: !5094)
!5098 = !DILocation(line: 639, column: 9, scope: !859)
!5099 = !DILocation(line: 639, column: 19, scope: !859)
!5100 = !DILocation(line: 639, column: 25, scope: !859)
!5101 = !DILocation(line: 639, column: 30, scope: !859)
!5102 = !DILocation(line: 640, column: 13, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !859, file: !439, line: 640, column: 13)
!5104 = !DILocation(line: 640, column: 17, scope: !5103)
!5105 = !DILocation(line: 640, column: 13, scope: !859)
!5106 = !DILocation(line: 641, column: 39, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5103, file: !439, line: 640, column: 32)
!5108 = !DILocation(line: 641, column: 44, scope: !5107)
!5109 = !DILocation(line: 641, column: 19, scope: !5107)
!5110 = !DILocation(line: 641, column: 17, scope: !5107)
!5111 = !DILocation(line: 642, column: 17, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5107, file: !439, line: 642, column: 17)
!5113 = !DILocation(line: 642, column: 21, scope: !5112)
!5114 = !DILocation(line: 642, column: 17, scope: !5107)
!5115 = !DILocation(line: 643, column: 27, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5112, file: !439, line: 642, column: 36)
!5117 = !DILocation(line: 643, column: 17, scope: !5116)
!5118 = !DILocation(line: 644, column: 17, scope: !5116)
!5119 = !DILocation(line: 646, column: 40, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !439, line: 645, column: 20)
!5121 = !DILocation(line: 646, column: 17, scope: !5120)
!5122 = !DILocation(line: 646, column: 22, scope: !5120)
!5123 = !DILocation(line: 646, column: 38, scope: !5120)
!5124 = !DILocation(line: 648, column: 9, scope: !5107)
!5125 = !DILocation(line: 649, column: 30, scope: !859)
!5126 = !DILocation(line: 649, column: 16, scope: !859)
!5127 = !DILocation(line: 649, column: 35, scope: !859)
!5128 = !DILocation(line: 649, column: 9, scope: !859)
!5129 = !DILocation(line: 650, column: 5, scope: !860)
!5130 = !DILocation(line: 651, column: 1, scope: !855)
!5131 = !DILocation(line: 416, column: 16, scope: !797)
!5132 = !DILocation(line: 416, column: 23, scope: !797)
!5133 = !DILocation(line: 416, column: 47, scope: !797)
!5134 = !DILocation(line: 418, column: 5, scope: !797)
!5135 = !DILocation(line: 418, column: 15, scope: !797)
!5136 = !DILocation(line: 419, column: 5, scope: !797)
!5137 = !DILocation(line: 419, column: 17, scope: !797)
!5138 = !DILocation(line: 420, column: 5, scope: !797)
!5139 = !DILocation(line: 420, column: 16, scope: !797)
!5140 = !DILocation(line: 424, column: 9, scope: !797)
!5141 = !DILocation(line: 426, column: 9, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !797, file: !439, line: 426, column: 9)
!5143 = !DILocation(line: 426, column: 14, scope: !5142)
!5144 = !DILocation(line: 426, column: 9, scope: !797)
!5145 = !DILocation(line: 427, column: 18, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5142, file: !439, line: 426, column: 31)
!5147 = !DILocation(line: 427, column: 23, scope: !5146)
!5148 = !DILocation(line: 427, column: 16, scope: !5146)
!5149 = !DILocation(line: 428, column: 25, scope: !5146)
!5150 = !DILocation(line: 428, column: 35, scope: !5146)
!5151 = !DILocation(line: 428, column: 44, scope: !5146)
!5152 = !DILocation(line: 429, column: 5, scope: !5146)
!5153 = !DILocation(line: 432, column: 38, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5142, file: !439, line: 431, column: 5)
!5155 = !DILocation(line: 432, column: 43, scope: !5154)
!5156 = !DILocation(line: 432, column: 18, scope: !5154)
!5157 = !DILocation(line: 432, column: 16, scope: !5154)
!5158 = !DILocation(line: 433, column: 13, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5154, file: !439, line: 433, column: 13)
!5160 = !DILocation(line: 433, column: 20, scope: !5159)
!5161 = !DILocation(line: 433, column: 13, scope: !5154)
!5162 = !DILocation(line: 434, column: 13, scope: !5159)
!5163 = !DILocation(line: 436, column: 24, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !797, file: !439, line: 436, column: 9)
!5165 = !DILocation(line: 436, column: 34, scope: !5164)
!5166 = !DILocation(line: 436, column: 43, scope: !5164)
!5167 = !DILocation(line: 436, column: 9, scope: !797)
!5168 = !DILocation(line: 438, column: 39, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5164, file: !439, line: 437, column: 5)
!5170 = !DILocation(line: 438, column: 15, scope: !5169)
!5171 = !DILocation(line: 438, column: 13, scope: !5169)
!5172 = !DILocation(line: 439, column: 13, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5169, file: !439, line: 439, column: 13)
!5174 = !DILocation(line: 439, column: 17, scope: !5173)
!5175 = !DILocation(line: 439, column: 13, scope: !5169)
!5176 = !DILocation(line: 440, column: 13, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5173, file: !439, line: 439, column: 32)
!5178 = !DILocation(line: 442, column: 5, scope: !5169)
!5179 = !DILocation(line: 445, column: 36, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5164, file: !439, line: 444, column: 5)
!5181 = !DILocation(line: 445, column: 15, scope: !5180)
!5182 = !DILocation(line: 445, column: 13, scope: !5180)
!5183 = !DILocation(line: 446, column: 13, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5180, file: !439, line: 446, column: 13)
!5185 = !DILocation(line: 446, column: 17, scope: !5184)
!5186 = !DILocation(line: 446, column: 13, scope: !5180)
!5187 = !DILocation(line: 447, column: 13, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !439, line: 446, column: 32)
!5189 = !DILocation(line: 449, column: 50, scope: !5180)
!5190 = !DILocation(line: 449, column: 35, scope: !5180)
!5191 = !DILocation(line: 449, column: 60, scope: !5180)
!5192 = !DILocation(line: 449, column: 16, scope: !5180)
!5193 = !DILocation(line: 452, column: 5, scope: !797)
!5194 = !DILocation(line: 452, column: 10, scope: !5195)
!5195 = !DILexicalBlockFile(scope: !806, file: !439, discriminator: 1)
!5196 = !DILocation(line: 452, column: 20, scope: !806)
!5197 = !DILocation(line: 452, column: 51, scope: !806)
!5198 = !DILocation(line: 452, column: 56, scope: !806)
!5199 = !DILocation(line: 452, column: 78, scope: !809)
!5200 = !DILocation(line: 452, column: 94, scope: !809)
!5201 = !DILocation(line: 452, column: 78, scope: !806)
!5202 = !DILocation(line: 452, column: 109, scope: !5203)
!5203 = !DILexicalBlockFile(scope: !809, file: !439, discriminator: 2)
!5204 = !DILocation(line: 452, column: 114, scope: !5205)
!5205 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 4)
!5206 = !DILocation(line: 452, column: 124, scope: !808)
!5207 = !DILocation(line: 452, column: 154, scope: !808)
!5208 = !DILocation(line: 452, column: 180, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !808, file: !439, line: 452, column: 177)
!5210 = !DILocation(line: 452, column: 197, scope: !5209)
!5211 = !DILocation(line: 452, column: 177, scope: !5209)
!5212 = !DILocation(line: 452, column: 207, scope: !5209)
!5213 = !DILocation(line: 452, column: 177, scope: !808)
!5214 = !DILocation(line: 452, column: 177, scope: !5215)
!5215 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 5)
!5216 = !DILocation(line: 452, column: 238, scope: !5217)
!5217 = !DILexicalBlockFile(scope: !5209, file: !439, discriminator: 6)
!5218 = !DILocation(line: 452, column: 256, scope: !5209)
!5219 = !DILocation(line: 452, column: 266, scope: !5209)
!5220 = !DILocation(line: 452, column: 291, scope: !5209)
!5221 = !DILocation(line: 452, column: 222, scope: !5209)
!5222 = !DILocation(line: 452, column: 310, scope: !5223)
!5223 = !DILexicalBlockFile(scope: !809, file: !439, discriminator: 7)
!5224 = !DILocation(line: 452, column: 310, scope: !808)
!5225 = !DILocation(line: 452, column: 310, scope: !5226)
!5226 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 8)
!5227 = !DILocation(line: 452, column: 310, scope: !5228)
!5228 = !DILexicalBlockFile(scope: !808, file: !439, discriminator: 9)
!5229 = !DILocation(line: 452, column: 323, scope: !5230)
!5230 = !DILexicalBlockFile(scope: !5231, file: !439, discriminator: 10)
!5231 = !DILexicalBlockFile(scope: !797, file: !439, discriminator: 3)
!5232 = !DILocation(line: 452, column: 323, scope: !806)
!5233 = !DILocation(line: 452, column: 323, scope: !5234)
!5234 = !DILexicalBlockFile(scope: !806, file: !439, discriminator: 11)
!5235 = !DILocation(line: 453, column: 9, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !797, file: !439, line: 453, column: 9)
!5237 = !DILocation(line: 453, column: 18, scope: !5236)
!5238 = !DILocation(line: 453, column: 16, scope: !5236)
!5239 = !DILocation(line: 453, column: 9, scope: !797)
!5240 = !DILocation(line: 455, column: 62, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5236, file: !439, line: 453, column: 24)
!5242 = !DILocation(line: 455, column: 66, scope: !5241)
!5243 = !DILocation(line: 455, column: 65, scope: !5241)
!5244 = !DILocation(line: 456, column: 58, scope: !5241)
!5245 = !DILocation(line: 456, column: 65, scope: !5241)
!5246 = !DILocation(line: 456, column: 64, scope: !5241)
!5247 = !DILocation(line: 455, column: 32, scope: !5241)
!5248 = !DILocation(line: 455, column: 9, scope: !5241)
!5249 = !DILocation(line: 455, column: 14, scope: !5241)
!5250 = !DILocation(line: 455, column: 30, scope: !5241)
!5251 = !DILocation(line: 457, column: 13, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5241, file: !439, line: 457, column: 13)
!5253 = !DILocation(line: 457, column: 18, scope: !5252)
!5254 = !DILocation(line: 457, column: 34, scope: !5252)
!5255 = !DILocation(line: 457, column: 13, scope: !5241)
!5256 = !DILocation(line: 458, column: 13, scope: !5252)
!5257 = !DILocation(line: 459, column: 18, scope: !5241)
!5258 = !DILocation(line: 459, column: 16, scope: !5241)
!5259 = !DILocation(line: 460, column: 5, scope: !5241)
!5260 = !DILocation(line: 462, column: 9, scope: !5236)
!5261 = !DILocation(line: 462, column: 14, scope: !5236)
!5262 = !DILocation(line: 462, column: 30, scope: !5236)
!5263 = !DILocation(line: 464, column: 12, scope: !797)
!5264 = !DILocation(line: 464, column: 15, scope: !797)
!5265 = !DILocation(line: 464, column: 20, scope: !797)
!5266 = !DILocation(line: 464, column: 5, scope: !797)
!5267 = !DILocation(line: 465, column: 7, scope: !797)
!5268 = !DILocation(line: 465, column: 5, scope: !797)
!5269 = !DILocation(line: 465, column: 15, scope: !797)
!5270 = !DILocation(line: 466, column: 9, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !797, file: !439, line: 466, column: 9)
!5272 = !DILocation(line: 466, column: 16, scope: !5271)
!5273 = !DILocation(line: 466, column: 9, scope: !797)
!5274 = !DILocation(line: 467, column: 11, scope: !5271)
!5275 = !DILocation(line: 467, column: 9, scope: !5271)
!5276 = !DILocation(line: 468, column: 5, scope: !797)
!5277 = !DILocation(line: 468, column: 10, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 1)
!5279 = !DILocation(line: 468, column: 20, scope: !811)
!5280 = !DILocation(line: 468, column: 50, scope: !811)
!5281 = !DILocation(line: 468, column: 67, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !811, file: !439, line: 468, column: 64)
!5283 = !DILocation(line: 468, column: 84, scope: !5282)
!5284 = !DILocation(line: 468, column: 64, scope: !5282)
!5285 = !DILocation(line: 468, column: 94, scope: !5282)
!5286 = !DILocation(line: 468, column: 64, scope: !811)
!5287 = !DILocation(line: 468, column: 64, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 2)
!5289 = !DILocation(line: 468, column: 125, scope: !5290)
!5290 = !DILexicalBlockFile(scope: !5282, file: !439, discriminator: 3)
!5291 = !DILocation(line: 468, column: 143, scope: !5282)
!5292 = !DILocation(line: 468, column: 153, scope: !5282)
!5293 = !DILocation(line: 468, column: 178, scope: !5282)
!5294 = !DILocation(line: 468, column: 109, scope: !5282)
!5295 = !DILocation(line: 468, column: 197, scope: !5296)
!5296 = !DILexicalBlockFile(scope: !797, file: !439, discriminator: 4)
!5297 = !DILocation(line: 468, column: 197, scope: !811)
!5298 = !DILocation(line: 468, column: 197, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !811, file: !439, discriminator: 5)
!5300 = !DILocation(line: 469, column: 12, scope: !797)
!5301 = !DILocation(line: 469, column: 5, scope: !797)
!5302 = !DILocation(line: 472, column: 5, scope: !797)
!5303 = !DILocation(line: 472, column: 10, scope: !5304)
!5304 = !DILexicalBlockFile(scope: !813, file: !439, discriminator: 1)
!5305 = !DILocation(line: 472, column: 20, scope: !813)
!5306 = !DILocation(line: 472, column: 51, scope: !813)
!5307 = !DILocation(line: 472, column: 64, scope: !816)
!5308 = !DILocation(line: 472, column: 80, scope: !816)
!5309 = !DILocation(line: 472, column: 64, scope: !813)
!5310 = !DILocation(line: 472, column: 95, scope: !5311)
!5311 = !DILexicalBlockFile(scope: !816, file: !439, discriminator: 2)
!5312 = !DILocation(line: 472, column: 100, scope: !5313)
!5313 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 4)
!5314 = !DILocation(line: 472, column: 110, scope: !815)
!5315 = !DILocation(line: 472, column: 140, scope: !815)
!5316 = !DILocation(line: 472, column: 166, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !815, file: !439, line: 472, column: 163)
!5318 = !DILocation(line: 472, column: 183, scope: !5317)
!5319 = !DILocation(line: 472, column: 163, scope: !5317)
!5320 = !DILocation(line: 472, column: 193, scope: !5317)
!5321 = !DILocation(line: 472, column: 163, scope: !815)
!5322 = !DILocation(line: 472, column: 163, scope: !5323)
!5323 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 5)
!5324 = !DILocation(line: 472, column: 224, scope: !5325)
!5325 = !DILexicalBlockFile(scope: !5317, file: !439, discriminator: 6)
!5326 = !DILocation(line: 472, column: 242, scope: !5317)
!5327 = !DILocation(line: 472, column: 252, scope: !5317)
!5328 = !DILocation(line: 472, column: 277, scope: !5317)
!5329 = !DILocation(line: 472, column: 208, scope: !5317)
!5330 = !DILocation(line: 472, column: 296, scope: !5331)
!5331 = !DILexicalBlockFile(scope: !816, file: !439, discriminator: 7)
!5332 = !DILocation(line: 472, column: 296, scope: !815)
!5333 = !DILocation(line: 472, column: 296, scope: !5334)
!5334 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 8)
!5335 = !DILocation(line: 472, column: 296, scope: !5336)
!5336 = !DILexicalBlockFile(scope: !815, file: !439, discriminator: 9)
!5337 = !DILocation(line: 472, column: 309, scope: !5230)
!5338 = !DILocation(line: 472, column: 309, scope: !813)
!5339 = !DILocation(line: 472, column: 309, scope: !5340)
!5340 = !DILexicalBlockFile(scope: !813, file: !439, discriminator: 11)
!5341 = !DILocation(line: 473, column: 22, scope: !797)
!5342 = !DILocation(line: 473, column: 12, scope: !797)
!5343 = !DILocation(line: 473, column: 5, scope: !797)
!5344 = !DILocation(line: 474, column: 1, scope: !797)
!5345 = !DILocation(line: 535, column: 38, scope: !817)
!5346 = !DILocation(line: 536, column: 22, scope: !817)
!5347 = !DILocation(line: 536, column: 27, scope: !817)
!5348 = !DILocation(line: 536, column: 12, scope: !817)
!5349 = !DILocation(line: 536, column: 5, scope: !817)
!5350 = !DILocation(line: 541, column: 27, scope: !820)
!5351 = !DILocation(line: 541, column: 48, scope: !820)
!5352 = !DILocation(line: 542, column: 12, scope: !820)
!5353 = !DILocation(line: 542, column: 15, scope: !820)
!5354 = !DILocation(line: 542, column: 20, scope: !820)
!5355 = !DILocation(line: 542, column: 5, scope: !820)
!5356 = !DILocation(line: 543, column: 1, scope: !820)
!5357 = !DILocation(line: 487, column: 31, scope: !824)
!5358 = !DILocation(line: 487, column: 48, scope: !824)
!5359 = !DILocation(line: 489, column: 5, scope: !824)
!5360 = !DILocation(line: 489, column: 15, scope: !824)
!5361 = !DILocation(line: 489, column: 39, scope: !824)
!5362 = !DILocation(line: 489, column: 61, scope: !824)
!5363 = !DILocation(line: 492, column: 5, scope: !824)
!5364 = !DILocation(line: 492, column: 9, scope: !824)
!5365 = !DILocation(line: 493, column: 5, scope: !824)
!5366 = !DILocation(line: 493, column: 10, scope: !824)
!5367 = !DILocation(line: 495, column: 10, scope: !824)
!5368 = !DILocation(line: 495, column: 8, scope: !824)
!5369 = !DILocation(line: 496, column: 9, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !824, file: !439, line: 496, column: 9)
!5371 = !DILocation(line: 496, column: 12, scope: !5370)
!5372 = !DILocation(line: 496, column: 9, scope: !824)
!5373 = !DILocation(line: 497, column: 9, scope: !5370)
!5374 = !DILocation(line: 499, column: 17, scope: !824)
!5375 = !DILocation(line: 499, column: 22, scope: !824)
!5376 = !DILocation(line: 499, column: 10, scope: !824)
!5377 = !DILocation(line: 499, column: 8, scope: !824)
!5378 = !DILocation(line: 505, column: 17, scope: !824)
!5379 = !DILocation(line: 505, column: 22, scope: !824)
!5380 = !DILocation(line: 505, column: 11, scope: !824)
!5381 = !DILocation(line: 505, column: 9, scope: !824)
!5382 = !DILocation(line: 506, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !824, file: !439, line: 506, column: 9)
!5384 = !DILocation(line: 506, column: 13, scope: !5383)
!5385 = !DILocation(line: 506, column: 19, scope: !5383)
!5386 = !DILocation(line: 507, column: 15, scope: !5383)
!5387 = !DILocation(line: 507, column: 27, scope: !5383)
!5388 = !DILocation(line: 507, column: 31, scope: !5383)
!5389 = !DILocation(line: 507, column: 37, scope: !5390)
!5390 = !DILexicalBlockFile(scope: !5383, file: !439, discriminator: 1)
!5391 = !DILocation(line: 507, column: 41, scope: !5383)
!5392 = !DILocation(line: 507, column: 47, scope: !5393)
!5393 = !DILexicalBlockFile(scope: !5383, file: !439, discriminator: 2)
!5394 = !DILocation(line: 507, column: 9, scope: !5395)
!5395 = !DILexicalBlockFile(scope: !5396, file: !439, discriminator: 4)
!5396 = !DILexicalBlockFile(scope: !5383, file: !439, discriminator: 3)
!5397 = !DILocation(line: 507, column: 56, scope: !5383)
!5398 = !DILocation(line: 506, column: 9, scope: !824)
!5399 = !DILocation(line: 508, column: 40, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5383, file: !439, line: 507, column: 70)
!5401 = !DILocation(line: 508, column: 9, scope: !5400)
!5402 = !DILocation(line: 509, column: 9, scope: !5400)
!5403 = !DILocation(line: 512, column: 37, scope: !824)
!5404 = !DILocation(line: 513, column: 21, scope: !824)
!5405 = !DILocation(line: 513, column: 34, scope: !824)
!5406 = !DILocation(line: 512, column: 14, scope: !824)
!5407 = !DILocation(line: 512, column: 12, scope: !824)
!5408 = !DILocation(line: 514, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !824, file: !439, line: 514, column: 9)
!5410 = !DILocation(line: 514, column: 16, scope: !5409)
!5411 = !DILocation(line: 514, column: 9, scope: !824)
!5412 = !DILocation(line: 515, column: 9, scope: !5409)
!5413 = !DILocation(line: 517, column: 5, scope: !824)
!5414 = !DILocation(line: 517, column: 10, scope: !5415)
!5415 = !DILexicalBlockFile(scope: !834, file: !439, discriminator: 1)
!5416 = !DILocation(line: 517, column: 20, scope: !834)
!5417 = !DILocation(line: 517, column: 51, scope: !834)
!5418 = !DILocation(line: 517, column: 56, scope: !834)
!5419 = !DILocation(line: 517, column: 80, scope: !837)
!5420 = !DILocation(line: 517, column: 96, scope: !837)
!5421 = !DILocation(line: 517, column: 80, scope: !834)
!5422 = !DILocation(line: 517, column: 111, scope: !5423)
!5423 = !DILexicalBlockFile(scope: !837, file: !439, discriminator: 2)
!5424 = !DILocation(line: 517, column: 116, scope: !5425)
!5425 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 4)
!5426 = !DILocation(line: 517, column: 126, scope: !836)
!5427 = !DILocation(line: 517, column: 156, scope: !836)
!5428 = !DILocation(line: 517, column: 182, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !836, file: !439, line: 517, column: 179)
!5430 = !DILocation(line: 517, column: 199, scope: !5429)
!5431 = !DILocation(line: 517, column: 179, scope: !5429)
!5432 = !DILocation(line: 517, column: 209, scope: !5429)
!5433 = !DILocation(line: 517, column: 179, scope: !836)
!5434 = !DILocation(line: 517, column: 179, scope: !5435)
!5435 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 5)
!5436 = !DILocation(line: 517, column: 240, scope: !5437)
!5437 = !DILexicalBlockFile(scope: !5429, file: !439, discriminator: 6)
!5438 = !DILocation(line: 517, column: 258, scope: !5429)
!5439 = !DILocation(line: 517, column: 268, scope: !5429)
!5440 = !DILocation(line: 517, column: 293, scope: !5429)
!5441 = !DILocation(line: 517, column: 224, scope: !5429)
!5442 = !DILocation(line: 517, column: 312, scope: !5443)
!5443 = !DILexicalBlockFile(scope: !837, file: !439, discriminator: 7)
!5444 = !DILocation(line: 517, column: 312, scope: !836)
!5445 = !DILocation(line: 517, column: 312, scope: !5446)
!5446 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 8)
!5447 = !DILocation(line: 517, column: 312, scope: !5448)
!5448 = !DILexicalBlockFile(scope: !836, file: !439, discriminator: 9)
!5449 = !DILocation(line: 517, column: 325, scope: !5450)
!5450 = !DILexicalBlockFile(scope: !5451, file: !439, discriminator: 10)
!5451 = !DILexicalBlockFile(scope: !824, file: !439, discriminator: 3)
!5452 = !DILocation(line: 517, column: 325, scope: !834)
!5453 = !DILocation(line: 517, column: 325, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !834, file: !439, discriminator: 11)
!5455 = !DILocation(line: 518, column: 36, scope: !824)
!5456 = !DILocation(line: 518, column: 16, scope: !824)
!5457 = !DILocation(line: 518, column: 14, scope: !824)
!5458 = !DILocation(line: 519, column: 30, scope: !824)
!5459 = !DILocation(line: 519, column: 5, scope: !824)
!5460 = !DILocation(line: 519, column: 10, scope: !824)
!5461 = !DILocation(line: 519, column: 28, scope: !824)
!5462 = !DILocation(line: 520, column: 9, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !824, file: !439, line: 520, column: 9)
!5464 = !DILocation(line: 520, column: 13, scope: !5463)
!5465 = !DILocation(line: 520, column: 9, scope: !824)
!5466 = !DILocation(line: 521, column: 33, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !439, line: 521, column: 13)
!5468 = distinct !DILexicalBlock(scope: !5463, file: !439, line: 520, column: 18)
!5469 = !DILocation(line: 521, column: 13, scope: !5467)
!5470 = !DILocation(line: 521, column: 55, scope: !5467)
!5471 = !DILocation(line: 521, column: 13, scope: !5468)
!5472 = !DILocation(line: 522, column: 22, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5467, file: !439, line: 521, column: 70)
!5474 = !DILocation(line: 523, column: 13, scope: !5473)
!5475 = !DILocation(line: 525, column: 5, scope: !5468)
!5476 = !DILocation(line: 520, column: 15, scope: !5477)
!5477 = !DILexicalBlockFile(scope: !5463, file: !439, discriminator: 1)
!5478 = !DILocation(line: 528, column: 5, scope: !824)
!5479 = !DILocation(line: 528, column: 10, scope: !5480)
!5480 = !DILexicalBlockFile(scope: !839, file: !439, discriminator: 1)
!5481 = !DILocation(line: 528, column: 20, scope: !839)
!5482 = !DILocation(line: 528, column: 51, scope: !839)
!5483 = !DILocation(line: 528, column: 64, scope: !842)
!5484 = !DILocation(line: 528, column: 80, scope: !842)
!5485 = !DILocation(line: 528, column: 64, scope: !839)
!5486 = !DILocation(line: 528, column: 95, scope: !5487)
!5487 = !DILexicalBlockFile(scope: !842, file: !439, discriminator: 2)
!5488 = !DILocation(line: 528, column: 100, scope: !5489)
!5489 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 4)
!5490 = !DILocation(line: 528, column: 110, scope: !841)
!5491 = !DILocation(line: 528, column: 140, scope: !841)
!5492 = !DILocation(line: 528, column: 166, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !841, file: !439, line: 528, column: 163)
!5494 = !DILocation(line: 528, column: 183, scope: !5493)
!5495 = !DILocation(line: 528, column: 163, scope: !5493)
!5496 = !DILocation(line: 528, column: 193, scope: !5493)
!5497 = !DILocation(line: 528, column: 163, scope: !841)
!5498 = !DILocation(line: 528, column: 163, scope: !5499)
!5499 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 5)
!5500 = !DILocation(line: 528, column: 224, scope: !5501)
!5501 = !DILexicalBlockFile(scope: !5493, file: !439, discriminator: 6)
!5502 = !DILocation(line: 528, column: 242, scope: !5493)
!5503 = !DILocation(line: 528, column: 252, scope: !5493)
!5504 = !DILocation(line: 528, column: 277, scope: !5493)
!5505 = !DILocation(line: 528, column: 208, scope: !5493)
!5506 = !DILocation(line: 528, column: 296, scope: !5507)
!5507 = !DILexicalBlockFile(scope: !842, file: !439, discriminator: 7)
!5508 = !DILocation(line: 528, column: 296, scope: !841)
!5509 = !DILocation(line: 528, column: 296, scope: !5510)
!5510 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 8)
!5511 = !DILocation(line: 528, column: 296, scope: !5512)
!5512 = !DILexicalBlockFile(scope: !841, file: !439, discriminator: 9)
!5513 = !DILocation(line: 528, column: 309, scope: !5450)
!5514 = !DILocation(line: 528, column: 309, scope: !839)
!5515 = !DILocation(line: 528, column: 309, scope: !5516)
!5516 = !DILexicalBlockFile(scope: !839, file: !439, discriminator: 11)
!5517 = !DILocation(line: 529, column: 5, scope: !824)
!5518 = !DILocation(line: 529, column: 10, scope: !5519)
!5519 = !DILexicalBlockFile(scope: !844, file: !439, discriminator: 1)
!5520 = !DILocation(line: 529, column: 20, scope: !844)
!5521 = !DILocation(line: 529, column: 51, scope: !844)
!5522 = !DILocation(line: 529, column: 60, scope: !847)
!5523 = !DILocation(line: 529, column: 76, scope: !847)
!5524 = !DILocation(line: 529, column: 60, scope: !844)
!5525 = !DILocation(line: 529, column: 91, scope: !5526)
!5526 = !DILexicalBlockFile(scope: !847, file: !439, discriminator: 2)
!5527 = !DILocation(line: 529, column: 96, scope: !5528)
!5528 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 4)
!5529 = !DILocation(line: 529, column: 106, scope: !846)
!5530 = !DILocation(line: 529, column: 136, scope: !846)
!5531 = !DILocation(line: 529, column: 162, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !846, file: !439, line: 529, column: 159)
!5533 = !DILocation(line: 529, column: 179, scope: !5532)
!5534 = !DILocation(line: 529, column: 159, scope: !5532)
!5535 = !DILocation(line: 529, column: 189, scope: !5532)
!5536 = !DILocation(line: 529, column: 159, scope: !846)
!5537 = !DILocation(line: 529, column: 159, scope: !5538)
!5538 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 5)
!5539 = !DILocation(line: 529, column: 220, scope: !5540)
!5540 = !DILexicalBlockFile(scope: !5532, file: !439, discriminator: 6)
!5541 = !DILocation(line: 529, column: 238, scope: !5532)
!5542 = !DILocation(line: 529, column: 248, scope: !5532)
!5543 = !DILocation(line: 529, column: 273, scope: !5532)
!5544 = !DILocation(line: 529, column: 204, scope: !5532)
!5545 = !DILocation(line: 529, column: 292, scope: !5546)
!5546 = !DILexicalBlockFile(scope: !847, file: !439, discriminator: 7)
!5547 = !DILocation(line: 529, column: 292, scope: !846)
!5548 = !DILocation(line: 529, column: 292, scope: !5549)
!5549 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 8)
!5550 = !DILocation(line: 529, column: 292, scope: !5551)
!5551 = !DILexicalBlockFile(scope: !846, file: !439, discriminator: 9)
!5552 = !DILocation(line: 529, column: 305, scope: !5450)
!5553 = !DILocation(line: 529, column: 305, scope: !844)
!5554 = !DILocation(line: 529, column: 305, scope: !5555)
!5555 = !DILexicalBlockFile(scope: !844, file: !439, discriminator: 11)
!5556 = !DILocation(line: 530, column: 12, scope: !824)
!5557 = !DILocation(line: 530, column: 21, scope: !824)
!5558 = !DILocation(line: 531, column: 1, scope: !824)
!5559 = !DILocation(line: 530, column: 5, scope: !824)
!5560 = !DILocation(line: 548, column: 44, scope: !848)
!5561 = !DILocation(line: 550, column: 5, scope: !848)
!5562 = !DILocation(line: 550, column: 9, scope: !848)
!5563 = !DILocation(line: 551, column: 5, scope: !848)
!5564 = !DILocation(line: 551, column: 9, scope: !848)
!5565 = !DILocation(line: 552, column: 10, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !848, file: !439, line: 552, column: 9)
!5567 = !DILocation(line: 552, column: 9, scope: !5566)
!5568 = !DILocation(line: 552, column: 12, scope: !5566)
!5569 = !DILocation(line: 552, column: 9, scope: !848)
!5570 = !DILocation(line: 554, column: 9, scope: !5566)
!5571 = !DILocation(line: 555, column: 10, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !848, file: !439, line: 555, column: 9)
!5573 = !DILocation(line: 555, column: 9, scope: !5572)
!5574 = !DILocation(line: 555, column: 12, scope: !5572)
!5575 = !DILocation(line: 555, column: 9, scope: !848)
!5576 = !DILocation(line: 557, column: 9, scope: !5572)
!5577 = !DILocation(line: 558, column: 10, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !848, file: !439, line: 558, column: 9)
!5579 = !DILocation(line: 558, column: 9, scope: !5578)
!5580 = !DILocation(line: 558, column: 12, scope: !5578)
!5581 = !DILocation(line: 558, column: 9, scope: !848)
!5582 = !DILocation(line: 559, column: 18, scope: !5578)
!5583 = !DILocation(line: 559, column: 9, scope: !5578)
!5584 = !DILocation(line: 560, column: 15, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5578, file: !439, line: 560, column: 14)
!5586 = !DILocation(line: 560, column: 14, scope: !5585)
!5587 = !DILocation(line: 560, column: 17, scope: !5585)
!5588 = !DILocation(line: 560, column: 14, scope: !5578)
!5589 = !DILocation(line: 561, column: 18, scope: !5585)
!5590 = !DILocation(line: 561, column: 9, scope: !5585)
!5591 = !DILocation(line: 562, column: 15, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5585, file: !439, line: 562, column: 14)
!5593 = !DILocation(line: 562, column: 14, scope: !5592)
!5594 = !DILocation(line: 562, column: 17, scope: !5592)
!5595 = !DILocation(line: 562, column: 14, scope: !5585)
!5596 = !DILocation(line: 563, column: 18, scope: !5592)
!5597 = !DILocation(line: 563, column: 9, scope: !5592)
!5598 = !DILocation(line: 565, column: 9, scope: !5592)
!5599 = !DILocation(line: 566, column: 14, scope: !848)
!5600 = !DILocation(line: 566, column: 23, scope: !848)
!5601 = !DILocation(line: 566, column: 12, scope: !848)
!5602 = !DILocation(line: 567, column: 5, scope: !848)
!5603 = !DILocation(line: 567, column: 12, scope: !5604)
!5604 = !DILexicalBlockFile(scope: !5605, file: !439, discriminator: 2)
!5605 = !DILexicalBlockFile(scope: !5606, file: !439, discriminator: 1)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !439, line: 567, column: 5)
!5607 = distinct !DILexicalBlock(scope: !848, file: !439, line: 567, column: 5)
!5608 = !DILocation(line: 567, column: 5, scope: !5607)
!5609 = !DILocation(line: 568, column: 15, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5606, file: !439, line: 568, column: 13)
!5611 = !DILocation(line: 568, column: 13, scope: !5610)
!5612 = !DILocation(line: 568, column: 25, scope: !5610)
!5613 = !DILocation(line: 568, column: 32, scope: !5610)
!5614 = !DILocation(line: 568, column: 37, scope: !5615)
!5615 = !DILexicalBlockFile(scope: !5610, file: !439, discriminator: 1)
!5616 = !DILocation(line: 568, column: 35, scope: !5610)
!5617 = !DILocation(line: 568, column: 47, scope: !5610)
!5618 = !DILocation(line: 568, column: 13, scope: !5606)
!5619 = !DILocation(line: 569, column: 13, scope: !5610)
!5620 = !DILocation(line: 568, column: 50, scope: !5621)
!5621 = !DILexicalBlockFile(scope: !5610, file: !439, discriminator: 2)
!5622 = !DILocation(line: 567, column: 30, scope: !5606)
!5623 = !DILocation(line: 567, column: 5, scope: !5606)
!5624 = !DILocation(line: 570, column: 12, scope: !848)
!5625 = !DILocation(line: 570, column: 5, scope: !848)
!5626 = !DILocation(line: 571, column: 1, scope: !848)
