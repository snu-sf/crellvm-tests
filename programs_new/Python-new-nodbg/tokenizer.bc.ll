; ModuleID = './tokenizer.bc'
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
  store i8* %str, i8** %str.addr, align 8
  store i32 %exec_input, i32* %exec_input.addr, align 4
  %call = call %struct.tok_state* @tok_new()
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp = icmp eq %struct.tok_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %exec_input.addr, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %call1 = call i8* @decode_str(i8* %1, i32 %2, %struct.tok_state* %3)
  store i8* %call1, i8** %str.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %5)
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 2
  store i8* %6, i8** %inp, align 8
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 3
  store i8* %6, i8** %end, align 8
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 1
  store i8* %6, i8** %cur, align 8
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 0
  store i8* %6, i8** %buf, align 8
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  store %struct.tok_state* %11, %struct.tok_state** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %12 = load %struct.tok_state*, %struct.tok_state** %retval
  ret %struct.tok_state* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.tok_state* @tok_new() #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %tok = alloca %struct.tok_state*, align 8
  %call = call i8* @PyMem_Malloc(i64 992)
  %0 = bitcast i8* %call to %struct.tok_state*
  store %struct.tok_state* %0, %struct.tok_state** %tok, align 8
  %1 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp = icmp eq %struct.tok_state* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 4
  store i8* null, i8** %start, align 8
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 2
  store i8* null, i8** %inp, align 8
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 3
  store i8* null, i8** %end, align 8
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1
  store i8* null, i8** %cur, align 8
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 0
  store i8* null, i8** %buf, align 8
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 5
  store i32 10, i32* %done, align 4
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 6
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 31
  store i8* null, i8** %input, align 8
  %10 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %tabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 7
  store i32 8, i32* %tabsize, align 4
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 8
  store i32 0, i32* %indent, align 4
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %indstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 9
  %arrayidx = getelementptr [100 x i32], [100 x i32]* %indstack, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %atbol = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 10
  store i32 1, i32* %atbol, align 4
  %14 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 11
  store i32 0, i32* %pendin, align 4
  %15 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 13
  store i8* null, i8** %nextprompt, align 8
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 12
  store i8* null, i8** %prompt, align 8
  %17 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 14
  store i32 0, i32* %lineno, align 4
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %level = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 15
  store i32 0, i32* %level, align 4
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %altwarning = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 17
  store i32 1, i32* %altwarning, align 4
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %alterror = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 18
  store i32 1, i32* %alterror, align 4
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %alttabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 19
  store i32 1, i32* %alttabsize, align 4
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %altindstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 20
  %arrayidx1 = getelementptr [100 x i32], [100 x i32]* %altindstack, i32 0, i64 0
  store i32 0, i32* %arrayidx1, align 4
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 21
  store i32 0, i32* %decoding_state, align 4
  %24 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 22
  store i32 0, i32* %decoding_erred, align 4
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 23
  store i32 0, i32* %read_coding_spec, align 4
  %26 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 29
  store i8* null, i8** %enc, align 8
  %27 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 24
  store i8* null, i8** %encoding, align 8
  %28 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %28, i32 0, i32 25
  store i32 0, i32* %cont_line, align 4
  %29 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 16
  store %struct._object* null, %struct._object** %filename, align 8
  %30 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 27
  store %struct._object* null, %struct._object** %decoding_readline, align 8
  %31 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 28
  store %struct._object* null, %struct._object** %decoding_buffer, align 8
  %32 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  store %struct.tok_state* %32, %struct.tok_state** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %33 = load %struct.tok_state*, %struct.tok_state** %retval
  ret %struct.tok_state* %33
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
  store i8* %input, i8** %input.addr, align 8
  store i32 %single, i32* %single.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store %struct._object* null, %struct._object** %utf8, align 8
  %0 = bitcast [2 x i8*]* %newl to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %lineno, align 4
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i32, i32* %single.addr, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call = call i8* @translate_newlines(i8* %1, i32 %2, %struct.tok_state* %3)
  store i8* %call, i8** %str, align 8
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %input1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 31
  store i8* %call, i8** %input1, align 8
  %5 = load i8*, i8** %str, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 29
  store i8* null, i8** %enc, align 8
  %7 = load i8*, i8** %str, align 8
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %str2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 30
  store i8* %7, i8** %str2, align 8
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call3 = call i32 @check_bom(i32 (%struct.tok_state*)* @buf_getc, void (i32, %struct.tok_state*)* @buf_ungetc, i32 (%struct.tok_state*, i8*)* @buf_setreadl, %struct.tok_state* %9)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call5 = call i8* @error_ret(%struct.tok_state* %10)
  store i8* %call5, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %str7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 30
  %12 = load i8*, i8** %str7, align 8
  store i8* %12, i8** %str, align 8
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 29
  %14 = load i8*, i8** %enc8, align 8
  %cmp9 = icmp ne i8* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %15 = load i8*, i8** %str, align 8
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc11 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 29
  %17 = load i8*, i8** %enc11, align 8
  %call12 = call %struct._object* @translate_into_utf8(i8* %15, i8* %17)
  store %struct._object* %call12, %struct._object** %utf8, align 8
  %18 = load %struct._object*, %struct._object** %utf8, align 8
  %cmp13 = icmp eq %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.10
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call15 = call i8* @error_ret(%struct.tok_state* %19)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.10
  %20 = load %struct._object*, %struct._object** %utf8, align 8
  %call17 = call i8* @PyBytes_AsString(%struct._object* %20)
  store i8* %call17, i8** %str, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.end.6
  %21 = load i8*, i8** %str, align 8
  store i8* %21, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %conv = sext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.cond
  br label %for.end

if.else:                                          ; preds = %for.cond
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = sext i8 %25 to i32
  %cmp23 = icmp eq i32 %conv22, 10
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.else
  %26 = load i8*, i8** %s, align 8
  %27 = load i32, i32* %lineno, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 %idxprom
  store i8* %26, i8** %arrayidx, align 8
  %28 = load i32, i32* %lineno, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %lineno, align 4
  %29 = load i32, i32* %lineno, align 4
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  br label %for.end

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %30 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %if.then.21
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 29
  store i8* null, i8** %enc32, align 8
  %arrayidx33 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0
  %32 = load i8*, i8** %arrayidx33, align 8
  %tobool34 = icmp ne i8* %32, null
  br i1 %tobool34, label %if.then.35, label %if.end.62

if.then.35:                                       ; preds = %for.end
  %33 = load i8*, i8** %str, align 8
  %arrayidx36 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0
  %34 = load i8*, i8** %arrayidx36, align 8
  %35 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call37 = call i32 @check_coding_spec(i8* %33, i64 %sub.ptr.sub, %struct.tok_state* %36, i32 (%struct.tok_state*, i8*)* @buf_setreadl)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.then.35
  %37 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call40 = call i8* @error_ret(%struct.tok_state* %37)
  store i8* %call40, i8** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.35
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 29
  %39 = load i8*, i8** %enc42, align 8
  %cmp43 = icmp eq i8* %39, null
  br i1 %cmp43, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end.41
  %40 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %40, i32 0, i32 23
  %41 = load i32, i32* %read_coding_spec, align 4
  %tobool45 = icmp ne i32 %41, 0
  br i1 %tobool45, label %if.end.61, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %arrayidx47 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 1
  %42 = load i8*, i8** %arrayidx47, align 8
  %tobool48 = icmp ne i8* %42, null
  br i1 %tobool48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %land.lhs.true.46
  %arrayidx50 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0
  %43 = load i8*, i8** %arrayidx50, align 8
  %add.ptr = getelementptr i8, i8* %43, i64 1
  %arrayidx51 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 1
  %44 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr [2 x i8*], [2 x i8*]* %newl, i32 0, i64 0
  %45 = load i8*, i8** %arrayidx52, align 8
  %sub.ptr.lhs.cast53 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast54 = ptrtoint i8* %45 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %46 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call56 = call i32 @check_coding_spec(i8* %add.ptr, i64 %sub.ptr.sub55, %struct.tok_state* %46, i32 (%struct.tok_state*, i8*)* @buf_setreadl)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.then.49
  %47 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call59 = call i8* @error_ret(%struct.tok_state* %47)
  store i8* %call59, i8** %retval
  br label %return

if.end.60:                                        ; preds = %if.then.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.46, %land.lhs.true, %if.end.41
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.end
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc63 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %48, i32 0, i32 29
  %49 = load i8*, i8** %enc63, align 8
  %cmp64 = icmp ne i8* %49, null
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.end.62
  %50 = load i8*, i8** %str, align 8
  %51 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc67 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %51, i32 0, i32 29
  %52 = load i8*, i8** %enc67, align 8
  %call68 = call %struct._object* @translate_into_utf8(i8* %50, i8* %52)
  store %struct._object* %call68, %struct._object** %utf8, align 8
  %53 = load %struct._object*, %struct._object** %utf8, align 8
  %cmp69 = icmp eq %struct._object* %53, null
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.then.66
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call72 = call i8* @error_ret(%struct.tok_state* %54)
  store i8* %call72, i8** %retval
  br label %return

if.end.73:                                        ; preds = %if.then.66
  %55 = load %struct._object*, %struct._object** %utf8, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.62
  %57 = load %struct._object*, %struct._object** %utf8, align 8
  %58 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %58, i32 0, i32 28
  store %struct._object* %57, %struct._object** %decoding_buffer, align 8
  %59 = load i8*, i8** %str, align 8
  store i8* %59, i8** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.71, %if.then.58, %if.then.39, %if.then.14, %if.then.4, %if.then
  %60 = load i8*, i8** %retval
  ret i8* %60
}

; Function Attrs: nounwind uwtable
define void @PyTokenizer_Free(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 24
  %1 = load i8*, i8** %encoding, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 24
  %3 = load i8*, i8** %encoding1, align 8
  call void @PyMem_Free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 27
  %5 = load %struct._object*, %struct._object** %decoding_readline, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 28
  %15 = load %struct._object*, %struct._object** %decoding_buffer, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp11, align 8
  %cmp12 = icmp ne %struct._object* %16, null
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.body.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp11, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp15, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %19, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %22(%struct._object* %23)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.10
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %24, i32 0, i32 16
  %25 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp29 = icmp ne %struct._object* %26, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp32, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %29, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %32(%struct._object* %33)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.27
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 6
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp44 = icmp ne %struct._IO_FILE* %35, null
  br i1 %cmp44, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %do.end.43
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 0
  %37 = load i8*, i8** %buf, align 8
  %cmp45 = icmp ne i8* %37, null
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf47 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf47, align 8
  call void @PyMem_Free(i8* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true, %do.end.43
  %40 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %40, i32 0, i32 31
  %41 = load i8*, i8** %input, align 8
  %tobool = icmp ne i8* %41, null
  br i1 %tobool, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.48
  %42 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %input50 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %42, i32 0, i32 31
  %43 = load i8*, i8** %input50, align 8
  call void @PyMem_Free(i8* %43)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.48
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %45 = bitcast %struct.tok_state* %44 to i8*
  call void @PyMem_Free(i8* %45)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromUTF8(i8* %str, i32 %exec_input) #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %str.addr = alloca i8*, align 8
  %exec_input.addr = alloca i32, align 4
  %tok = alloca %struct.tok_state*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %exec_input, i32* %exec_input.addr, align 4
  %call = call %struct.tok_state* @tok_new()
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp = icmp eq %struct.tok_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %exec_input.addr, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %call1 = call i8* @translate_newlines(i8* %1, i32 %2, %struct.tok_state* %3)
  store i8* %call1, i8** %str.addr, align 8
  %4 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %input = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 31
  store i8* %call1, i8** %input, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %6)
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 21
  store i32 1, i32* %decoding_state, align 4
  %8 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 23
  store i32 1, i32* %read_coding_spec, align 4
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %enc = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 29
  store i8* null, i8** %enc, align 8
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %str5 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 30
  store i8* %10, i8** %str5, align 8
  %call6 = call i8* @PyMem_Malloc(i64 6)
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 24
  store i8* %call6, i8** %encoding, align 8
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 24
  %14 = load i8*, i8** %encoding7, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  %15 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %15)
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding10 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 24
  %17 = load i8*, i8** %encoding10, align 8
  %call11 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #4
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 2
  store i8* %18, i8** %inp, align 8
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 3
  store i8* %18, i8** %end, align 8
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 1
  store i8* %18, i8** %cur, align 8
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 0
  store i8* %18, i8** %buf, align 8
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  store %struct.tok_state* %23, %struct.tok_state** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %24 = load %struct.tok_state*, %struct.tok_state** %retval
  ret %struct.tok_state* %24
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
  store i8* %s, i8** %s.addr, align 8
  store i32 %exec_input, i32* %exec_input.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i32 0, i32* %skip_next_lf, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 2
  store i64 %add, i64* %needed_length, align 8
  store i8 0, i8* %c, align 1
  %1 = load i64, i64* %needed_length, align 8
  %call1 = call i8* @PyMem_Malloc(i64 %1)
  store i8* %call1, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 5
  store i32 15, i32* %done, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %current, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i32, i32* %skip_next_lf, align 4
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %skip_next_lf, align 4
  %10 = load i8, i8* %c, align 1
  %conv = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 10
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.then.3
  %11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %12 = load i8, i8* %incdec.ptr, align 1
  store i8 %12, i8* %c, align 1
  %13 = load i8, i8* %c, align 1
  %tobool7 = icmp ne i8 %13, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  br label %for.end

if.end.9:                                         ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  %14 = load i8, i8* %c, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 1, i32* %skip_next_lf, align 4
  store i8 10, i8* %c, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %15 = load i8, i8* %c, align 1
  %16 = load i8*, i8** %current, align 8
  store i8 %15, i8* %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %17 = load i8*, i8** %s.addr, align 8
  %incdec.ptr17 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %s.addr, align 8
  %18 = load i8*, i8** %current, align 8
  %incdec.ptr18 = getelementptr i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %current, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %19 = load i32, i32* %exec_input.addr, align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.end
  %20 = load i8, i8* %c, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp ne i32 %conv20, 10
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %21 = load i8*, i8** %current, align 8
  store i8 10, i8* %21, align 1
  %22 = load i8*, i8** %current, align 8
  %incdec.ptr24 = getelementptr i8, i8* %22, i32 1
  store i8* %incdec.ptr24, i8** %current, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true, %for.end
  %23 = load i8*, i8** %current, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %current, align 8
  %25 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add26 = add i64 %sub.ptr.sub, 1
  store i64 %add26, i64* %final_length, align 8
  %26 = load i64, i64* %final_length, align 8
  %27 = load i64, i64* %needed_length, align 8
  %cmp27 = icmp ult i64 %26, %27
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %if.end.25
  %28 = load i64, i64* %final_length, align 8
  %tobool30 = icmp ne i64 %28, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.29
  %29 = load i8*, i8** %buf, align 8
  %30 = load i64, i64* %final_length, align 8
  %call32 = call i8* @PyMem_Realloc(i8* %29, i64 %30)
  store i8* %call32, i8** %buf, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.29, %if.end.25
  %31 = load i8*, i8** %buf, align 8
  store i8* %31, i8** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then
  %32 = load i8*, i8** %retval
  ret i8* %32
}

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %fp, i8* %enc, i8* %ps1, i8* %ps2) #0 {
entry:
  %retval = alloca %struct.tok_state*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %enc.addr = alloca i8*, align 8
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %tok = alloca %struct.tok_state*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  %call = call %struct.tok_state* @tok_new()
  store %struct.tok_state* %call, %struct.tok_state** %tok, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp = icmp eq %struct.tok_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyMem_Malloc(i64 8192)
  %1 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 0
  store i8* %call1, i8** %buf, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %2)
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf5 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf5, align 8
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 2
  store i8* %4, i8** %inp, align 8
  %6 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 1
  store i8* %4, i8** %cur, align 8
  %7 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %buf6 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 0
  %8 = load i8*, i8** %buf6, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 8192
  %9 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %end = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 3
  store i8* %add.ptr, i8** %end, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %fp7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 6
  store %struct._IO_FILE* %10, %struct._IO_FILE** %fp7, align 8
  %12 = load i8*, i8** %ps1.addr, align 8
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 12
  store i8* %12, i8** %prompt, align 8
  %14 = load i8*, i8** %ps2.addr, align 8
  %15 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 13
  store i8* %14, i8** %nextprompt, align 8
  %16 = load i8*, i8** %enc.addr, align 8
  %cmp8 = icmp ne i8* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end.4
  %17 = load i8*, i8** %enc.addr, align 8
  %call10 = call i64 @strlen(i8* %17) #7
  %add = add i64 %call10, 1
  %call11 = call i8* @PyMem_Malloc(i64 %add)
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 24
  store i8* %call11, i8** %encoding, align 8
  %19 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding12 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 24
  %20 = load i8*, i8** %encoding12, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.9
  %21 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %21)
  store %struct.tok_state* null, %struct.tok_state** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  %22 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %22, i32 0, i32 24
  %23 = load i8*, i8** %encoding15, align 8
  %24 = load i8*, i8** %enc.addr, align 8
  %call16 = call i8* @strcpy(i8* %23, i8* %24) #4
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 21
  store i32 2, i32* %decoding_state, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end.4
  %26 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  store %struct.tok_state* %26, %struct.tok_state** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.3, %if.then
  %27 = load %struct.tok_state*, %struct.tok_state** %retval
  ret %struct.tok_state* %27
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @PyToken_OneChar(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
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
  ]

sw.bb:                                            ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 14, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 15, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 16, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 18, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 19, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 20, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i32 21, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i32 22, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i32 23, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i32 24, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i32 25, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i32 26, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i32 32, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i32 31, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i32 49, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 52, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_TwoChars(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i32, i32* %c1.addr, align 4
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
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %c2.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 61, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.bb
  store i32 27, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %sw.epilog.41

sw.bb.2:                                          ; preds = %entry
  %2 = load i32, i32* %c2.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 61, label %sw.bb.3
  ]

sw.bb.3:                                          ; preds = %sw.bb.2
  store i32 28, i32* %retval
  br label %return

sw.epilog.4:                                      ; preds = %sw.bb.2
  br label %sw.epilog.41

sw.bb.5:                                          ; preds = %entry
  %3 = load i32, i32* %c2.addr, align 4
  switch i32 %3, label %sw.epilog.9 [
    i32 62, label %sw.bb.6
    i32 61, label %sw.bb.7
    i32 60, label %sw.bb.8
  ]

sw.bb.6:                                          ; preds = %sw.bb.5
  store i32 28, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %sw.bb.5
  store i32 29, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %sw.bb.5
  store i32 33, i32* %retval
  br label %return

sw.epilog.9:                                      ; preds = %sw.bb.5
  br label %sw.epilog.41

sw.bb.10:                                         ; preds = %entry
  %4 = load i32, i32* %c2.addr, align 4
  switch i32 %4, label %sw.epilog.13 [
    i32 61, label %sw.bb.11
    i32 62, label %sw.bb.12
  ]

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 30, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %sw.bb.10
  store i32 34, i32* %retval
  br label %return

sw.epilog.13:                                     ; preds = %sw.bb.10
  br label %sw.epilog.41

sw.bb.14:                                         ; preds = %entry
  %5 = load i32, i32* %c2.addr, align 4
  switch i32 %5, label %sw.epilog.16 [
    i32 61, label %sw.bb.15
  ]

sw.bb.15:                                         ; preds = %sw.bb.14
  store i32 36, i32* %retval
  br label %return

sw.epilog.16:                                     ; preds = %sw.bb.14
  br label %sw.epilog.41

sw.bb.17:                                         ; preds = %entry
  %6 = load i32, i32* %c2.addr, align 4
  switch i32 %6, label %sw.epilog.20 [
    i32 61, label %sw.bb.18
    i32 62, label %sw.bb.19
  ]

sw.bb.18:                                         ; preds = %sw.bb.17
  store i32 37, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %sw.bb.17
  store i32 50, i32* %retval
  br label %return

sw.epilog.20:                                     ; preds = %sw.bb.17
  br label %sw.epilog.41

sw.bb.21:                                         ; preds = %entry
  %7 = load i32, i32* %c2.addr, align 4
  switch i32 %7, label %sw.epilog.24 [
    i32 42, label %sw.bb.22
    i32 61, label %sw.bb.23
  ]

sw.bb.22:                                         ; preds = %sw.bb.21
  store i32 35, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %sw.bb.21
  store i32 38, i32* %retval
  br label %return

sw.epilog.24:                                     ; preds = %sw.bb.21
  br label %sw.epilog.41

sw.bb.25:                                         ; preds = %entry
  %8 = load i32, i32* %c2.addr, align 4
  switch i32 %8, label %sw.epilog.28 [
    i32 47, label %sw.bb.26
    i32 61, label %sw.bb.27
  ]

sw.bb.26:                                         ; preds = %sw.bb.25
  store i32 47, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %sw.bb.25
  store i32 39, i32* %retval
  br label %return

sw.epilog.28:                                     ; preds = %sw.bb.25
  br label %sw.epilog.41

sw.bb.29:                                         ; preds = %entry
  %9 = load i32, i32* %c2.addr, align 4
  switch i32 %9, label %sw.epilog.31 [
    i32 61, label %sw.bb.30
  ]

sw.bb.30:                                         ; preds = %sw.bb.29
  store i32 42, i32* %retval
  br label %return

sw.epilog.31:                                     ; preds = %sw.bb.29
  br label %sw.epilog.41

sw.bb.32:                                         ; preds = %entry
  %10 = load i32, i32* %c2.addr, align 4
  switch i32 %10, label %sw.epilog.34 [
    i32 61, label %sw.bb.33
  ]

sw.bb.33:                                         ; preds = %sw.bb.32
  store i32 40, i32* %retval
  br label %return

sw.epilog.34:                                     ; preds = %sw.bb.32
  br label %sw.epilog.41

sw.bb.35:                                         ; preds = %entry
  %11 = load i32, i32* %c2.addr, align 4
  switch i32 %11, label %sw.epilog.37 [
    i32 61, label %sw.bb.36
  ]

sw.bb.36:                                         ; preds = %sw.bb.35
  store i32 41, i32* %retval
  br label %return

sw.epilog.37:                                     ; preds = %sw.bb.35
  br label %sw.epilog.41

sw.bb.38:                                         ; preds = %entry
  %12 = load i32, i32* %c2.addr, align 4
  switch i32 %12, label %sw.epilog.40 [
    i32 61, label %sw.bb.39
  ]

sw.bb.39:                                         ; preds = %sw.bb.38
  store i32 43, i32* %retval
  br label %return

sw.epilog.40:                                     ; preds = %sw.bb.38
  br label %sw.epilog.41

sw.epilog.41:                                     ; preds = %entry, %sw.epilog.40, %sw.epilog.37, %sw.epilog.34, %sw.epilog.31, %sw.epilog.28, %sw.epilog.24, %sw.epilog.20, %sw.epilog.16, %sw.epilog.13, %sw.epilog.9, %sw.epilog.4, %sw.epilog
  store i32 52, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.41, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.26, %sw.bb.23, %sw.bb.22, %sw.bb.19, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.11, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.3, %sw.bb.1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @PyToken_ThreeChars(i32 %c1, i32 %c2, i32 %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %c3.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  store i32 %c3, i32* %c3.addr, align 4
  %0 = load i32, i32* %c1.addr, align 4
  switch i32 %0, label %sw.epilog.24 [
    i32 60, label %sw.bb
    i32 62, label %sw.bb.4
    i32 42, label %sw.bb.9
    i32 47, label %sw.bb.14
    i32 46, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %c2.addr, align 4
  switch i32 %1, label %sw.epilog.3 [
    i32 60, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %2 = load i32, i32* %c3.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 61, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.bb.1
  store i32 44, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb, %sw.epilog
  br label %sw.epilog.24

sw.bb.4:                                          ; preds = %entry
  %3 = load i32, i32* %c2.addr, align 4
  switch i32 %3, label %sw.epilog.8 [
    i32 62, label %sw.bb.5
  ]

sw.bb.5:                                          ; preds = %sw.bb.4
  %4 = load i32, i32* %c3.addr, align 4
  switch i32 %4, label %sw.epilog.7 [
    i32 61, label %sw.bb.6
  ]

sw.bb.6:                                          ; preds = %sw.bb.5
  store i32 45, i32* %retval
  br label %return

sw.epilog.7:                                      ; preds = %sw.bb.5
  br label %sw.epilog.8

sw.epilog.8:                                      ; preds = %sw.bb.4, %sw.epilog.7
  br label %sw.epilog.24

sw.bb.9:                                          ; preds = %entry
  %5 = load i32, i32* %c2.addr, align 4
  switch i32 %5, label %sw.epilog.13 [
    i32 42, label %sw.bb.10
  ]

sw.bb.10:                                         ; preds = %sw.bb.9
  %6 = load i32, i32* %c3.addr, align 4
  switch i32 %6, label %sw.epilog.12 [
    i32 61, label %sw.bb.11
  ]

sw.bb.11:                                         ; preds = %sw.bb.10
  store i32 46, i32* %retval
  br label %return

sw.epilog.12:                                     ; preds = %sw.bb.10
  br label %sw.epilog.13

sw.epilog.13:                                     ; preds = %sw.bb.9, %sw.epilog.12
  br label %sw.epilog.24

sw.bb.14:                                         ; preds = %entry
  %7 = load i32, i32* %c2.addr, align 4
  switch i32 %7, label %sw.epilog.18 [
    i32 47, label %sw.bb.15
  ]

sw.bb.15:                                         ; preds = %sw.bb.14
  %8 = load i32, i32* %c3.addr, align 4
  switch i32 %8, label %sw.epilog.17 [
    i32 61, label %sw.bb.16
  ]

sw.bb.16:                                         ; preds = %sw.bb.15
  store i32 48, i32* %retval
  br label %return

sw.epilog.17:                                     ; preds = %sw.bb.15
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %sw.bb.14, %sw.epilog.17
  br label %sw.epilog.24

sw.bb.19:                                         ; preds = %entry
  %9 = load i32, i32* %c2.addr, align 4
  switch i32 %9, label %sw.epilog.23 [
    i32 46, label %sw.bb.20
  ]

sw.bb.20:                                         ; preds = %sw.bb.19
  %10 = load i32, i32* %c3.addr, align 4
  switch i32 %10, label %sw.epilog.22 [
    i32 46, label %sw.bb.21
  ]

sw.bb.21:                                         ; preds = %sw.bb.20
  store i32 51, i32* %retval
  br label %return

sw.epilog.22:                                     ; preds = %sw.bb.20
  br label %sw.epilog.23

sw.epilog.23:                                     ; preds = %sw.bb.19, %sw.epilog.22
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %entry, %sw.epilog.23, %sw.epilog.18, %sw.epilog.13, %sw.epilog.8, %sw.epilog.3
  store i32 52, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.24, %sw.bb.21, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** %p_start, i8** %p_end) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %p_start.addr = alloca i8**, align 8
  %p_end.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i8** %p_start, i8*** %p_start.addr, align 8
  store i8** %p_end, i8*** %p_end.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %1 = load i8**, i8*** %p_start.addr, align 8
  %2 = load i8**, i8*** %p_end.addr, align 8
  %call = call i32 @tok_get(%struct.tok_state* %0, i8** %1, i8** %2)
  store i32 %call, i32* %result, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 22
  %4 = load i32, i32* %decoding_erred, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 53, i32* %result, align 4
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 5
  store i32 22, i32* %done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %result, align 4
  ret i32 %6
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
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i8** %p_start, i8*** %p_start.addr, align 8
  store i8** %p_end, i8*** %p_end.addr, align 8
  %0 = load i8**, i8*** %p_end.addr, align 8
  store i8* null, i8** %0, align 8
  %1 = load i8**, i8*** %p_start.addr, align 8
  store i8* null, i8** %1, align 8
  br label %nextline

nextline:                                         ; preds = %if.then.244, %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 4
  store i8* null, i8** %start, align 8
  store i32 0, i32* %blankline, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %atbol = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 10
  %4 = load i32, i32* %atbol, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.112

if.then:                                          ; preds = %nextline
  store i32 0, i32* %col, align 4
  store i32 0, i32* %altcol, align 4
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %atbol1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 10
  store i32 0, i32* %atbol1, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %if.then
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call = call i32 @tok_nextc(%struct.tok_state* %6)
  store i32 %call, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %7, 32
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.cond
  %8 = load i32, i32* %col, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %col, align 4
  %9 = load i32, i32* %altcol, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, i32* %altcol, align 4
  br label %if.end.16

if.else:                                          ; preds = %for.cond
  %10 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %10, 9
  br i1 %cmp4, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %if.else
  %11 = load i32, i32* %col, align 4
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %tabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 7
  %13 = load i32, i32* %tabsize, align 4
  %div = sdiv i32 %11, %13
  %add = add i32 %div, 1
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %tabsize6 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 7
  %15 = load i32, i32* %tabsize6, align 4
  %mul = mul i32 %add, %15
  store i32 %mul, i32* %col, align 4
  %16 = load i32, i32* %altcol, align 4
  %17 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %alttabsize = getelementptr inbounds %struct.tok_state, %struct.tok_state* %17, i32 0, i32 19
  %18 = load i32, i32* %alttabsize, align 4
  %div7 = sdiv i32 %16, %18
  %add8 = add i32 %div7, 1
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %alttabsize9 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 19
  %20 = load i32, i32* %alttabsize9, align 4
  %mul10 = mul i32 %add8, %20
  store i32 %mul10, i32* %altcol, align 4
  br label %if.end.15

if.else.11:                                       ; preds = %if.else
  %21 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %21, 12
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  store i32 0, i32* %altcol, align 4
  store i32 0, i32* %col, align 4
  br label %if.end

if.else.14:                                       ; preds = %if.else.11
  br label %for.end

if.end:                                           ; preds = %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.2
  br label %for.cond

for.end:                                          ; preds = %if.else.14
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %23 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %22, i32 %23)
  %24 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %24, 35
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %25 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %25, 10
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %lor.lhs.false, %for.end
  %26 = load i32, i32* %col, align 4
  %cmp20 = icmp eq i32 %26, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.then.19
  %27 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %27, 10
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %28, i32 0, i32 12
  %29 = load i8*, i8** %prompt, align 8
  %cmp23 = icmp ne i8* %29, null
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %blankline, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.then.19
  store i32 1, i32* %blankline, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  %30 = load i32, i32* %blankline, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.end.111, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.end.27
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %level = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 15
  %32 = load i32, i32* %level, align 4
  %cmp30 = icmp eq i32 %32, 0
  br i1 %cmp30, label %if.then.31, label %if.end.111

if.then.31:                                       ; preds = %land.lhs.true.29
  %33 = load i32, i32* %col, align 4
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 8
  %35 = load i32, i32* %indent, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 9
  %arrayidx = getelementptr [100 x i32], [100 x i32]* %indstack, i32 0, i64 %idxprom
  %37 = load i32, i32* %arrayidx, align 4
  %cmp32 = icmp eq i32 %33, %37
  br i1 %cmp32, label %if.then.33, label %if.else.44

if.then.33:                                       ; preds = %if.then.31
  %38 = load i32, i32* %altcol, align 4
  %39 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent34 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %39, i32 0, i32 8
  %40 = load i32, i32* %indent34, align 4
  %idxprom35 = sext i32 %40 to i64
  %41 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altindstack = getelementptr inbounds %struct.tok_state, %struct.tok_state* %41, i32 0, i32 20
  %arrayidx36 = getelementptr [100 x i32], [100 x i32]* %altindstack, i32 0, i64 %idxprom35
  %42 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp ne i32 %38, %42
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.33
  %43 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call39 = call i32 @indenterror(%struct.tok_state* %43)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  store i32 53, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.33
  br label %if.end.110

if.else.44:                                       ; preds = %if.then.31
  %44 = load i32, i32* %col, align 4
  %45 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent45 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %45, i32 0, i32 8
  %46 = load i32, i32* %indent45, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indstack47 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %47, i32 0, i32 9
  %arrayidx48 = getelementptr [100 x i32], [100 x i32]* %indstack47, i32 0, i64 %idxprom46
  %48 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp sgt i32 %44, %48
  br i1 %cmp49, label %if.then.50, label %if.else.77

if.then.50:                                       ; preds = %if.else.44
  %49 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent51 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %49, i32 0, i32 8
  %50 = load i32, i32* %indent51, align 4
  %add52 = add i32 %50, 1
  %cmp53 = icmp sge i32 %add52, 100
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.50
  %51 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %51, i32 0, i32 5
  store i32 20, i32* %done, align 4
  %52 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %52, i32 0, i32 2
  %53 = load i8*, i8** %inp, align 8
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %54, i32 0, i32 1
  store i8* %53, i8** %cur, align 8
  store i32 53, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.50
  %55 = load i32, i32* %altcol, align 4
  %56 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent56 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %56, i32 0, i32 8
  %57 = load i32, i32* %indent56, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altindstack58 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %58, i32 0, i32 20
  %arrayidx59 = getelementptr [100 x i32], [100 x i32]* %altindstack58, i32 0, i64 %idxprom57
  %59 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp sle i32 %55, %59
  br i1 %cmp60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.55
  %60 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call62 = call i32 @indenterror(%struct.tok_state* %60)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.61
  store i32 53, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.55
  %61 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %61, i32 0, i32 11
  %62 = load i32, i32* %pendin, align 4
  %inc67 = add i32 %62, 1
  store i32 %inc67, i32* %pendin, align 4
  %63 = load i32, i32* %col, align 4
  %64 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent68 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %64, i32 0, i32 8
  %65 = load i32, i32* %indent68, align 4
  %inc69 = add i32 %65, 1
  store i32 %inc69, i32* %indent68, align 4
  %idxprom70 = sext i32 %inc69 to i64
  %66 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indstack71 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %66, i32 0, i32 9
  %arrayidx72 = getelementptr [100 x i32], [100 x i32]* %indstack71, i32 0, i64 %idxprom70
  store i32 %63, i32* %arrayidx72, align 4
  %67 = load i32, i32* %altcol, align 4
  %68 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent73 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %68, i32 0, i32 8
  %69 = load i32, i32* %indent73, align 4
  %idxprom74 = sext i32 %69 to i64
  %70 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altindstack75 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %70, i32 0, i32 20
  %arrayidx76 = getelementptr [100 x i32], [100 x i32]* %altindstack75, i32 0, i64 %idxprom74
  store i32 %67, i32* %arrayidx76, align 4
  br label %if.end.109

if.else.77:                                       ; preds = %if.else.44
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.77
  %71 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent78 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %71, i32 0, i32 8
  %72 = load i32, i32* %indent78, align 4
  %cmp79 = icmp sgt i32 %72, 0
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %73 = load i32, i32* %col, align 4
  %74 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent80 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %74, i32 0, i32 8
  %75 = load i32, i32* %indent80, align 4
  %idxprom81 = sext i32 %75 to i64
  %76 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indstack82 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %76, i32 0, i32 9
  %arrayidx83 = getelementptr [100 x i32], [100 x i32]* %indstack82, i32 0, i64 %idxprom81
  %77 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp slt i32 %73, %77
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %78 = phi i1 [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %78, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %79 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin85 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %79, i32 0, i32 11
  %80 = load i32, i32* %pendin85, align 4
  %dec = add i32 %80, -1
  store i32 %dec, i32* %pendin85, align 4
  %81 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent86 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %81, i32 0, i32 8
  %82 = load i32, i32* %indent86, align 4
  %dec87 = add i32 %82, -1
  store i32 %dec87, i32* %indent86, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %83 = load i32, i32* %col, align 4
  %84 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent88 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %84, i32 0, i32 8
  %85 = load i32, i32* %indent88, align 4
  %idxprom89 = sext i32 %85 to i64
  %86 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indstack90 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %86, i32 0, i32 9
  %arrayidx91 = getelementptr [100 x i32], [100 x i32]* %indstack90, i32 0, i64 %idxprom89
  %87 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp ne i32 %83, %87
  br i1 %cmp92, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %while.end
  %88 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done94 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %88, i32 0, i32 5
  store i32 21, i32* %done94, align 4
  %89 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp95 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %89, i32 0, i32 2
  %90 = load i8*, i8** %inp95, align 8
  %91 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur96 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %91, i32 0, i32 1
  store i8* %90, i8** %cur96, align 8
  store i32 53, i32* %retval
  br label %return

if.end.97:                                        ; preds = %while.end
  %92 = load i32, i32* %altcol, align 4
  %93 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %indent98 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %93, i32 0, i32 8
  %94 = load i32, i32* %indent98, align 4
  %idxprom99 = sext i32 %94 to i64
  %95 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altindstack100 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %95, i32 0, i32 20
  %arrayidx101 = getelementptr [100 x i32], [100 x i32]* %altindstack100, i32 0, i64 %idxprom99
  %96 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ne i32 %92, %96
  br i1 %cmp102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.97
  %97 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call104 = call i32 @indenterror(%struct.tok_state* %97)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.103
  store i32 53, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.then.103
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.97
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.66
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.43
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.29, %if.end.27
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %nextline
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur113 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 1
  %99 = load i8*, i8** %cur113, align 8
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start114 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 4
  store i8* %99, i8** %start114, align 8
  %101 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin115 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %101, i32 0, i32 11
  %102 = load i32, i32* %pendin115, align 4
  %cmp116 = icmp ne i32 %102, 0
  br i1 %cmp116, label %if.then.117, label %if.end.126

if.then.117:                                      ; preds = %if.end.112
  %103 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin118 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %103, i32 0, i32 11
  %104 = load i32, i32* %pendin118, align 4
  %cmp119 = icmp slt i32 %104, 0
  br i1 %cmp119, label %if.then.120, label %if.else.123

if.then.120:                                      ; preds = %if.then.117
  %105 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin121 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %105, i32 0, i32 11
  %106 = load i32, i32* %pendin121, align 4
  %inc122 = add i32 %106, 1
  store i32 %inc122, i32* %pendin121, align 4
  store i32 6, i32* %retval
  br label %return

if.else.123:                                      ; preds = %if.then.117
  %107 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %pendin124 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %107, i32 0, i32 11
  %108 = load i32, i32* %pendin124, align 4
  %dec125 = add i32 %108, -1
  store i32 %dec125, i32* %pendin124, align 4
  store i32 5, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.end.112
  br label %again

again:                                            ; preds = %if.end.567, %if.end.126
  %109 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start127 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %109, i32 0, i32 4
  store i8* null, i8** %start127, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %again
  %110 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call128 = call i32 @tok_nextc(%struct.tok_state* %110)
  store i32 %call128, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %111 = load i32, i32* %c, align 4
  %cmp129 = icmp eq i32 %111, 32
  br i1 %cmp129, label %lor.end, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %do.cond
  %112 = load i32, i32* %c, align 4
  %cmp131 = icmp eq i32 %112, 9
  br i1 %cmp131, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.130
  %113 = load i32, i32* %c, align 4
  %cmp132 = icmp eq i32 %113, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.130, %do.cond
  %114 = phi i1 [ true, %lor.lhs.false.130 ], [ true, %do.cond ], [ %cmp132, %lor.rhs ]
  br i1 %114, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %115 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur133 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %115, i32 0, i32 1
  %116 = load i8*, i8** %cur133, align 8
  %add.ptr = getelementptr i8, i8* %116, i64 -1
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start134 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %117, i32 0, i32 4
  store i8* %add.ptr, i8** %start134, align 8
  %118 = load i32, i32* %c, align 4
  %cmp135 = icmp eq i32 %118, 35
  br i1 %cmp135, label %if.then.136, label %if.end.145

if.then.136:                                      ; preds = %do.end
  br label %while.cond.137

while.cond.137:                                   ; preds = %while.body.142, %if.then.136
  %119 = load i32, i32* %c, align 4
  %cmp138 = icmp ne i32 %119, -1
  br i1 %cmp138, label %land.rhs.139, label %land.end.141

land.rhs.139:                                     ; preds = %while.cond.137
  %120 = load i32, i32* %c, align 4
  %cmp140 = icmp ne i32 %120, 10
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.139, %while.cond.137
  %121 = phi i1 [ false, %while.cond.137 ], [ %cmp140, %land.rhs.139 ]
  br i1 %121, label %while.body.142, label %while.end.144

while.body.142:                                   ; preds = %land.end.141
  %122 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call143 = call i32 @tok_nextc(%struct.tok_state* %122)
  store i32 %call143, i32* %c, align 4
  br label %while.cond.137

while.end.144:                                    ; preds = %land.end.141
  br label %if.end.145

if.end.145:                                       ; preds = %while.end.144, %do.end
  %123 = load i32, i32* %c, align 4
  %cmp146 = icmp eq i32 %123, -1
  br i1 %cmp146, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %if.end.145
  %124 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done148 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %124, i32 0, i32 5
  %125 = load i32, i32* %done148, align 4
  %cmp149 = icmp eq i32 %125, 11
  %cond = select i1 %cmp149, i32 0, i32 53
  store i32 %cond, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.145
  store i32 0, i32* %nonascii, align 4
  %126 = load i32, i32* %c, align 4
  %cmp151 = icmp sge i32 %126, 97
  br i1 %cmp151, label %land.lhs.true.152, label %lor.lhs.false.154

land.lhs.true.152:                                ; preds = %if.end.150
  %127 = load i32, i32* %c, align 4
  %cmp153 = icmp sle i32 %127, 122
  br i1 %cmp153, label %if.then.162, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %land.lhs.true.152, %if.end.150
  %128 = load i32, i32* %c, align 4
  %cmp155 = icmp sge i32 %128, 65
  br i1 %cmp155, label %land.lhs.true.156, label %lor.lhs.false.158

land.lhs.true.156:                                ; preds = %lor.lhs.false.154
  %129 = load i32, i32* %c, align 4
  %cmp157 = icmp sle i32 %129, 90
  br i1 %cmp157, label %if.then.162, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.156, %lor.lhs.false.154
  %130 = load i32, i32* %c, align 4
  %cmp159 = icmp eq i32 %130, 95
  br i1 %cmp159, label %if.then.162, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.158
  %131 = load i32, i32* %c, align 4
  %cmp161 = icmp sge i32 %131, 128
  br i1 %cmp161, label %if.then.162, label %if.end.236

if.then.162:                                      ; preds = %lor.lhs.false.160, %lor.lhs.false.158, %land.lhs.true.156, %land.lhs.true.152
  store i32 0, i32* %saw_b, align 4
  store i32 0, i32* %saw_r, align 4
  store i32 0, i32* %saw_u, align 4
  br label %while.body.164

while.body.164:                                   ; preds = %if.then.162, %if.end.202
  %132 = load i32, i32* %saw_b, align 4
  %tobool165 = icmp ne i32 %132, 0
  br i1 %tobool165, label %if.else.173, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %while.body.164
  %133 = load i32, i32* %saw_u, align 4
  %tobool167 = icmp ne i32 %133, 0
  br i1 %tobool167, label %if.else.173, label %land.lhs.true.168

land.lhs.true.168:                                ; preds = %lor.lhs.false.166
  %134 = load i32, i32* %c, align 4
  %cmp169 = icmp eq i32 %134, 98
  br i1 %cmp169, label %if.then.172, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %land.lhs.true.168
  %135 = load i32, i32* %c, align 4
  %cmp171 = icmp eq i32 %135, 66
  br i1 %cmp171, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %lor.lhs.false.170, %land.lhs.true.168
  store i32 1, i32* %saw_b, align 4
  br label %if.end.196

if.else.173:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.166, %while.body.164
  %136 = load i32, i32* %saw_b, align 4
  %tobool174 = icmp ne i32 %136, 0
  br i1 %tobool174, label %if.else.184, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.else.173
  %137 = load i32, i32* %saw_u, align 4
  %tobool176 = icmp ne i32 %137, 0
  br i1 %tobool176, label %if.else.184, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.175
  %138 = load i32, i32* %saw_r, align 4
  %tobool178 = icmp ne i32 %138, 0
  br i1 %tobool178, label %if.else.184, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %lor.lhs.false.177
  %139 = load i32, i32* %c, align 4
  %cmp180 = icmp eq i32 %139, 117
  br i1 %cmp180, label %if.then.183, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %land.lhs.true.179
  %140 = load i32, i32* %c, align 4
  %cmp182 = icmp eq i32 %140, 85
  br i1 %cmp182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %lor.lhs.false.181, %land.lhs.true.179
  store i32 1, i32* %saw_u, align 4
  br label %if.end.195

if.else.184:                                      ; preds = %lor.lhs.false.181, %lor.lhs.false.177, %lor.lhs.false.175, %if.else.173
  %141 = load i32, i32* %saw_r, align 4
  %tobool185 = icmp ne i32 %141, 0
  br i1 %tobool185, label %if.else.193, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.else.184
  %142 = load i32, i32* %saw_u, align 4
  %tobool187 = icmp ne i32 %142, 0
  br i1 %tobool187, label %if.else.193, label %land.lhs.true.188

land.lhs.true.188:                                ; preds = %lor.lhs.false.186
  %143 = load i32, i32* %c, align 4
  %cmp189 = icmp eq i32 %143, 114
  br i1 %cmp189, label %if.then.192, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %land.lhs.true.188
  %144 = load i32, i32* %c, align 4
  %cmp191 = icmp eq i32 %144, 82
  br i1 %cmp191, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %lor.lhs.false.190, %land.lhs.true.188
  store i32 1, i32* %saw_r, align 4
  br label %if.end.194

if.else.193:                                      ; preds = %lor.lhs.false.190, %lor.lhs.false.186, %if.else.184
  br label %while.end.203

if.end.194:                                       ; preds = %if.then.192
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.183
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.172
  %145 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call197 = call i32 @tok_nextc(%struct.tok_state* %145)
  store i32 %call197, i32* %c, align 4
  %146 = load i32, i32* %c, align 4
  %cmp198 = icmp eq i32 %146, 34
  br i1 %cmp198, label %if.then.201, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.end.196
  %147 = load i32, i32* %c, align 4
  %cmp200 = icmp eq i32 %147, 39
  br i1 %cmp200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %lor.lhs.false.199, %if.end.196
  br label %letter_quote

if.end.202:                                       ; preds = %lor.lhs.false.199
  br label %while.body.164

while.end.203:                                    ; preds = %if.else.193
  br label %while.cond.204

while.cond.204:                                   ; preds = %if.end.224, %while.end.203
  %148 = load i32, i32* %c, align 4
  %cmp205 = icmp sge i32 %148, 97
  br i1 %cmp205, label %land.lhs.true.206, label %lor.lhs.false.208

land.lhs.true.206:                                ; preds = %while.cond.204
  %149 = load i32, i32* %c, align 4
  %cmp207 = icmp sle i32 %149, 122
  br i1 %cmp207, label %lor.end.220, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %land.lhs.true.206, %while.cond.204
  %150 = load i32, i32* %c, align 4
  %cmp209 = icmp sge i32 %150, 65
  br i1 %cmp209, label %land.lhs.true.210, label %lor.lhs.false.212

land.lhs.true.210:                                ; preds = %lor.lhs.false.208
  %151 = load i32, i32* %c, align 4
  %cmp211 = icmp sle i32 %151, 90
  br i1 %cmp211, label %lor.end.220, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %land.lhs.true.210, %lor.lhs.false.208
  %152 = load i32, i32* %c, align 4
  %cmp213 = icmp sge i32 %152, 48
  br i1 %cmp213, label %land.lhs.true.214, label %lor.lhs.false.216

land.lhs.true.214:                                ; preds = %lor.lhs.false.212
  %153 = load i32, i32* %c, align 4
  %cmp215 = icmp sle i32 %153, 57
  br i1 %cmp215, label %lor.end.220, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %land.lhs.true.214, %lor.lhs.false.212
  %154 = load i32, i32* %c, align 4
  %cmp217 = icmp eq i32 %154, 95
  br i1 %cmp217, label %lor.end.220, label %lor.rhs.218

lor.rhs.218:                                      ; preds = %lor.lhs.false.216
  %155 = load i32, i32* %c, align 4
  %cmp219 = icmp sge i32 %155, 128
  br label %lor.end.220

lor.end.220:                                      ; preds = %lor.rhs.218, %lor.lhs.false.216, %land.lhs.true.214, %land.lhs.true.210, %land.lhs.true.206
  %156 = phi i1 [ true, %lor.lhs.false.216 ], [ true, %land.lhs.true.214 ], [ true, %land.lhs.true.210 ], [ true, %land.lhs.true.206 ], [ %cmp219, %lor.rhs.218 ]
  br i1 %156, label %while.body.221, label %while.end.226

while.body.221:                                   ; preds = %lor.end.220
  %157 = load i32, i32* %c, align 4
  %cmp222 = icmp sge i32 %157, 128
  br i1 %cmp222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %while.body.221
  store i32 1, i32* %nonascii, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %while.body.221
  %158 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call225 = call i32 @tok_nextc(%struct.tok_state* %158)
  store i32 %call225, i32* %c, align 4
  br label %while.cond.204

while.end.226:                                    ; preds = %lor.end.220
  %159 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %160 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %159, i32 %160)
  %161 = load i32, i32* %nonascii, align 4
  %tobool227 = icmp ne i32 %161, 0
  br i1 %tobool227, label %land.lhs.true.228, label %if.end.233

land.lhs.true.228:                                ; preds = %while.end.226
  %162 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call229 = call i32 @verify_identifier(%struct.tok_state* %162)
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.end.233, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.228
  %163 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done232 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %163, i32 0, i32 5
  store i32 26, i32* %done232, align 4
  store i32 53, i32* %retval
  br label %return

if.end.233:                                       ; preds = %land.lhs.true.228, %while.end.226
  %164 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start234 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %164, i32 0, i32 4
  %165 = load i8*, i8** %start234, align 8
  %166 = load i8**, i8*** %p_start.addr, align 8
  store i8* %165, i8** %166, align 8
  %167 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur235 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %167, i32 0, i32 1
  %168 = load i8*, i8** %cur235, align 8
  %169 = load i8**, i8*** %p_end.addr, align 8
  store i8* %168, i8** %169, align 8
  store i32 1, i32* %retval
  br label %return

if.end.236:                                       ; preds = %lor.lhs.false.160
  %170 = load i32, i32* %c, align 4
  %cmp237 = icmp eq i32 %170, 10
  br i1 %cmp237, label %if.then.238, label %if.end.249

if.then.238:                                      ; preds = %if.end.236
  %171 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %atbol239 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %171, i32 0, i32 10
  store i32 1, i32* %atbol239, align 4
  %172 = load i32, i32* %blankline, align 4
  %tobool240 = icmp ne i32 %172, 0
  br i1 %tobool240, label %if.then.244, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %if.then.238
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %level242 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 15
  %174 = load i32, i32* %level242, align 4
  %cmp243 = icmp sgt i32 %174, 0
  br i1 %cmp243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %lor.lhs.false.241, %if.then.238
  br label %nextline

if.end.245:                                       ; preds = %lor.lhs.false.241
  %175 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start246 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %175, i32 0, i32 4
  %176 = load i8*, i8** %start246, align 8
  %177 = load i8**, i8*** %p_start.addr, align 8
  store i8* %176, i8** %177, align 8
  %178 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur247 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %178, i32 0, i32 1
  %179 = load i8*, i8** %cur247, align 8
  %add.ptr248 = getelementptr i8, i8* %179, i64 -1
  %180 = load i8**, i8*** %p_end.addr, align 8
  store i8* %add.ptr248, i8** %180, align 8
  %181 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %181, i32 0, i32 25
  store i32 0, i32* %cont_line, align 4
  store i32 4, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.end.236
  %182 = load i32, i32* %c, align 4
  %cmp250 = icmp eq i32 %182, 46
  br i1 %cmp250, label %if.then.251, label %if.end.275

if.then.251:                                      ; preds = %if.end.249
  %183 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call252 = call i32 @tok_nextc(%struct.tok_state* %183)
  store i32 %call252, i32* %c, align 4
  %184 = load i32, i32* %c, align 4
  %idxprom253 = sext i32 %184 to i64
  %call254 = call i16** @__ctype_b_loc() #8
  %185 = load i16*, i16** %call254, align 8
  %arrayidx255 = getelementptr i16, i16* %185, i64 %idxprom253
  %186 = load i16, i16* %arrayidx255, align 2
  %conv = zext i16 %186 to i32
  %and = and i32 %conv, 2048
  %tobool256 = icmp ne i32 %and, 0
  br i1 %tobool256, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %if.then.251
  br label %fraction

if.else.258:                                      ; preds = %if.then.251
  %187 = load i32, i32* %c, align 4
  %cmp259 = icmp eq i32 %187, 46
  br i1 %cmp259, label %if.then.261, label %if.else.270

if.then.261:                                      ; preds = %if.else.258
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call262 = call i32 @tok_nextc(%struct.tok_state* %188)
  store i32 %call262, i32* %c, align 4
  %189 = load i32, i32* %c, align 4
  %cmp263 = icmp eq i32 %189, 46
  br i1 %cmp263, label %if.then.265, label %if.else.268

if.then.265:                                      ; preds = %if.then.261
  %190 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start266 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %190, i32 0, i32 4
  %191 = load i8*, i8** %start266, align 8
  %192 = load i8**, i8*** %p_start.addr, align 8
  store i8* %191, i8** %192, align 8
  %193 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur267 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %193, i32 0, i32 1
  %194 = load i8*, i8** %cur267, align 8
  %195 = load i8**, i8*** %p_end.addr, align 8
  store i8* %194, i8** %195, align 8
  store i32 51, i32* %retval
  br label %return

if.else.268:                                      ; preds = %if.then.261
  %196 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %197 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %196, i32 %197)
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.268
  %198 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void @tok_backup(%struct.tok_state* %198, i32 46)
  br label %if.end.271

if.else.270:                                      ; preds = %if.else.258
  %199 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %200 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %199, i32 %200)
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.270, %if.end.269
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271
  %201 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start273 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %201, i32 0, i32 4
  %202 = load i8*, i8** %start273, align 8
  %203 = load i8**, i8*** %p_start.addr, align 8
  store i8* %202, i8** %203, align 8
  %204 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur274 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %204, i32 0, i32 1
  %205 = load i8*, i8** %cur274, align 8
  %206 = load i8**, i8*** %p_end.addr, align 8
  store i8* %205, i8** %206, align 8
  store i32 23, i32* %retval
  br label %return

if.end.275:                                       ; preds = %if.end.249
  %207 = load i32, i32* %c, align 4
  %idxprom276 = sext i32 %207 to i64
  %call277 = call i16** @__ctype_b_loc() #8
  %208 = load i16*, i16** %call277, align 8
  %arrayidx278 = getelementptr i16, i16* %208, i64 %idxprom276
  %209 = load i16, i16* %arrayidx278, align 2
  %conv279 = zext i16 %209 to i32
  %and280 = and i32 %conv279, 2048
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.492

if.then.282:                                      ; preds = %if.end.275
  %210 = load i32, i32* %c, align 4
  %cmp283 = icmp eq i32 %210, 48
  br i1 %cmp283, label %if.then.285, label %if.else.421

if.then.285:                                      ; preds = %if.then.282
  %211 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call286 = call i32 @tok_nextc(%struct.tok_state* %211)
  store i32 %call286, i32* %c, align 4
  %212 = load i32, i32* %c, align 4
  %cmp287 = icmp eq i32 %212, 46
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.then.285
  br label %fraction

if.end.290:                                       ; preds = %if.then.285
  %213 = load i32, i32* %c, align 4
  %cmp291 = icmp eq i32 %213, 106
  br i1 %cmp291, label %if.then.296, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %if.end.290
  %214 = load i32, i32* %c, align 4
  %cmp294 = icmp eq i32 %214, 74
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %lor.lhs.false.293, %if.end.290
  br label %imaginary

if.end.297:                                       ; preds = %lor.lhs.false.293
  %215 = load i32, i32* %c, align 4
  %cmp298 = icmp eq i32 %215, 120
  br i1 %cmp298, label %if.then.303, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.end.297
  %216 = load i32, i32* %c, align 4
  %cmp301 = icmp eq i32 %216, 88
  br i1 %cmp301, label %if.then.303, label %if.else.324

if.then.303:                                      ; preds = %lor.lhs.false.300, %if.end.297
  %217 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call304 = call i32 @tok_nextc(%struct.tok_state* %217)
  store i32 %call304, i32* %c, align 4
  %218 = load i32, i32* %c, align 4
  %idxprom305 = sext i32 %218 to i64
  %call306 = call i16** @__ctype_b_loc() #8
  %219 = load i16*, i16** %call306, align 8
  %arrayidx307 = getelementptr i16, i16* %219, i64 %idxprom305
  %220 = load i16, i16* %arrayidx307, align 2
  %conv308 = zext i16 %220 to i32
  %and309 = and i32 %conv308, 4096
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.end.313, label %if.then.311

if.then.311:                                      ; preds = %if.then.303
  %221 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done312 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %221, i32 0, i32 5
  store i32 13, i32* %done312, align 4
  %222 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %223 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %222, i32 %223)
  store i32 53, i32* %retval
  br label %return

if.end.313:                                       ; preds = %if.then.303
  br label %do.body.314

do.body.314:                                      ; preds = %do.cond.316, %if.end.313
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call315 = call i32 @tok_nextc(%struct.tok_state* %224)
  store i32 %call315, i32* %c, align 4
  br label %do.cond.316

do.cond.316:                                      ; preds = %do.body.314
  %225 = load i32, i32* %c, align 4
  %idxprom317 = sext i32 %225 to i64
  %call318 = call i16** @__ctype_b_loc() #8
  %226 = load i16*, i16** %call318, align 8
  %arrayidx319 = getelementptr i16, i16* %226, i64 %idxprom317
  %227 = load i16, i16* %arrayidx319, align 2
  %conv320 = zext i16 %227 to i32
  %and321 = and i32 %conv320, 4096
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %do.body.314, label %do.end.323

do.end.323:                                       ; preds = %do.cond.316
  br label %if.end.420

if.else.324:                                      ; preds = %lor.lhs.false.300
  %228 = load i32, i32* %c, align 4
  %cmp325 = icmp eq i32 %228, 111
  br i1 %cmp325, label %if.then.330, label %lor.lhs.false.327

lor.lhs.false.327:                                ; preds = %if.else.324
  %229 = load i32, i32* %c, align 4
  %cmp328 = icmp eq i32 %229, 79
  br i1 %cmp328, label %if.then.330, label %if.else.350

if.then.330:                                      ; preds = %lor.lhs.false.327, %if.else.324
  %230 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call331 = call i32 @tok_nextc(%struct.tok_state* %230)
  store i32 %call331, i32* %c, align 4
  %231 = load i32, i32* %c, align 4
  %cmp332 = icmp slt i32 %231, 48
  br i1 %cmp332, label %if.then.337, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %if.then.330
  %232 = load i32, i32* %c, align 4
  %cmp335 = icmp sge i32 %232, 56
  br i1 %cmp335, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %lor.lhs.false.334, %if.then.330
  %233 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done338 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %233, i32 0, i32 5
  store i32 13, i32* %done338, align 4
  %234 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %235 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %234, i32 %235)
  store i32 53, i32* %retval
  br label %return

if.end.339:                                       ; preds = %lor.lhs.false.334
  br label %do.body.340

do.body.340:                                      ; preds = %land.end.348, %if.end.339
  %236 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call341 = call i32 @tok_nextc(%struct.tok_state* %236)
  store i32 %call341, i32* %c, align 4
  br label %do.cond.342

do.cond.342:                                      ; preds = %do.body.340
  %237 = load i32, i32* %c, align 4
  %cmp343 = icmp sle i32 48, %237
  br i1 %cmp343, label %land.rhs.345, label %land.end.348

land.rhs.345:                                     ; preds = %do.cond.342
  %238 = load i32, i32* %c, align 4
  %cmp346 = icmp slt i32 %238, 56
  br label %land.end.348

land.end.348:                                     ; preds = %land.rhs.345, %do.cond.342
  %239 = phi i1 [ false, %do.cond.342 ], [ %cmp346, %land.rhs.345 ]
  br i1 %239, label %do.body.340, label %do.end.349

do.end.349:                                       ; preds = %land.end.348
  br label %if.end.419

if.else.350:                                      ; preds = %lor.lhs.false.327
  %240 = load i32, i32* %c, align 4
  %cmp351 = icmp eq i32 %240, 98
  br i1 %cmp351, label %if.then.356, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %if.else.350
  %241 = load i32, i32* %c, align 4
  %cmp354 = icmp eq i32 %241, 66
  br i1 %cmp354, label %if.then.356, label %if.else.376

if.then.356:                                      ; preds = %lor.lhs.false.353, %if.else.350
  %242 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call357 = call i32 @tok_nextc(%struct.tok_state* %242)
  store i32 %call357, i32* %c, align 4
  %243 = load i32, i32* %c, align 4
  %cmp358 = icmp ne i32 %243, 48
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.365

land.lhs.true.360:                                ; preds = %if.then.356
  %244 = load i32, i32* %c, align 4
  %cmp361 = icmp ne i32 %244, 49
  br i1 %cmp361, label %if.then.363, label %if.end.365

if.then.363:                                      ; preds = %land.lhs.true.360
  %245 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done364 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %245, i32 0, i32 5
  store i32 13, i32* %done364, align 4
  %246 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %247 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %246, i32 %247)
  store i32 53, i32* %retval
  br label %return

if.end.365:                                       ; preds = %land.lhs.true.360, %if.then.356
  br label %do.body.366

do.body.366:                                      ; preds = %lor.end.374, %if.end.365
  %248 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call367 = call i32 @tok_nextc(%struct.tok_state* %248)
  store i32 %call367, i32* %c, align 4
  br label %do.cond.368

do.cond.368:                                      ; preds = %do.body.366
  %249 = load i32, i32* %c, align 4
  %cmp369 = icmp eq i32 %249, 48
  br i1 %cmp369, label %lor.end.374, label %lor.rhs.371

lor.rhs.371:                                      ; preds = %do.cond.368
  %250 = load i32, i32* %c, align 4
  %cmp372 = icmp eq i32 %250, 49
  br label %lor.end.374

lor.end.374:                                      ; preds = %lor.rhs.371, %do.cond.368
  %251 = phi i1 [ true, %do.cond.368 ], [ %cmp372, %lor.rhs.371 ]
  br i1 %251, label %do.body.366, label %do.end.375

do.end.375:                                       ; preds = %lor.end.374
  br label %if.end.418

if.else.376:                                      ; preds = %lor.lhs.false.353
  store i32 0, i32* %nonzero, align 4
  br label %while.cond.377

while.cond.377:                                   ; preds = %while.body.380, %if.else.376
  %252 = load i32, i32* %c, align 4
  %cmp378 = icmp eq i32 %252, 48
  br i1 %cmp378, label %while.body.380, label %while.end.382

while.body.380:                                   ; preds = %while.cond.377
  %253 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call381 = call i32 @tok_nextc(%struct.tok_state* %253)
  store i32 %call381, i32* %c, align 4
  br label %while.cond.377

while.end.382:                                    ; preds = %while.cond.377
  br label %while.cond.383

while.cond.383:                                   ; preds = %while.body.390, %while.end.382
  %254 = load i32, i32* %c, align 4
  %idxprom384 = sext i32 %254 to i64
  %call385 = call i16** @__ctype_b_loc() #8
  %255 = load i16*, i16** %call385, align 8
  %arrayidx386 = getelementptr i16, i16* %255, i64 %idxprom384
  %256 = load i16, i16* %arrayidx386, align 2
  %conv387 = zext i16 %256 to i32
  %and388 = and i32 %conv387, 2048
  %tobool389 = icmp ne i32 %and388, 0
  br i1 %tobool389, label %while.body.390, label %while.end.392

while.body.390:                                   ; preds = %while.cond.383
  store i32 1, i32* %nonzero, align 4
  %257 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call391 = call i32 @tok_nextc(%struct.tok_state* %257)
  store i32 %call391, i32* %c, align 4
  br label %while.cond.383

while.end.392:                                    ; preds = %while.cond.383
  %258 = load i32, i32* %c, align 4
  %cmp393 = icmp eq i32 %258, 46
  br i1 %cmp393, label %if.then.395, label %if.else.396

if.then.395:                                      ; preds = %while.end.392
  br label %fraction

if.else.396:                                      ; preds = %while.end.392
  %259 = load i32, i32* %c, align 4
  %cmp397 = icmp eq i32 %259, 101
  br i1 %cmp397, label %if.then.402, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %if.else.396
  %260 = load i32, i32* %c, align 4
  %cmp400 = icmp eq i32 %260, 69
  br i1 %cmp400, label %if.then.402, label %if.else.403

if.then.402:                                      ; preds = %lor.lhs.false.399, %if.else.396
  br label %exponent

if.else.403:                                      ; preds = %lor.lhs.false.399
  %261 = load i32, i32* %c, align 4
  %cmp404 = icmp eq i32 %261, 106
  br i1 %cmp404, label %if.then.409, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %if.else.403
  %262 = load i32, i32* %c, align 4
  %cmp407 = icmp eq i32 %262, 74
  br i1 %cmp407, label %if.then.409, label %if.else.410

if.then.409:                                      ; preds = %lor.lhs.false.406, %if.else.403
  br label %imaginary

if.else.410:                                      ; preds = %lor.lhs.false.406
  %263 = load i32, i32* %nonzero, align 4
  %tobool411 = icmp ne i32 %263, 0
  br i1 %tobool411, label %if.then.412, label %if.end.414

if.then.412:                                      ; preds = %if.else.410
  %264 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done413 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %264, i32 0, i32 5
  store i32 13, i32* %done413, align 4
  %265 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %266 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %265, i32 %266)
  store i32 53, i32* %retval
  br label %return

if.end.414:                                       ; preds = %if.else.410
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %do.end.375
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %do.end.349
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %do.end.323
  br label %if.end.489

if.else.421:                                      ; preds = %if.then.282
  br label %do.body.422

do.body.422:                                      ; preds = %do.cond.424, %if.else.421
  %267 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call423 = call i32 @tok_nextc(%struct.tok_state* %267)
  store i32 %call423, i32* %c, align 4
  br label %do.cond.424

do.cond.424:                                      ; preds = %do.body.422
  %268 = load i32, i32* %c, align 4
  %idxprom425 = sext i32 %268 to i64
  %call426 = call i16** @__ctype_b_loc() #8
  %269 = load i16*, i16** %call426, align 8
  %arrayidx427 = getelementptr i16, i16* %269, i64 %idxprom425
  %270 = load i16, i16* %arrayidx427, align 2
  %conv428 = zext i16 %270 to i32
  %and429 = and i32 %conv428, 2048
  %tobool430 = icmp ne i32 %and429, 0
  br i1 %tobool430, label %do.body.422, label %do.end.431

do.end.431:                                       ; preds = %do.cond.424
  %271 = load i32, i32* %c, align 4
  %cmp432 = icmp eq i32 %271, 46
  br i1 %cmp432, label %if.then.434, label %if.end.445

if.then.434:                                      ; preds = %do.end.431
  br label %fraction

fraction:                                         ; preds = %if.then.434, %if.then.395, %if.then.289, %if.then.257
  br label %do.body.435

do.body.435:                                      ; preds = %do.cond.437, %fraction
  %272 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call436 = call i32 @tok_nextc(%struct.tok_state* %272)
  store i32 %call436, i32* %c, align 4
  br label %do.cond.437

do.cond.437:                                      ; preds = %do.body.435
  %273 = load i32, i32* %c, align 4
  %idxprom438 = sext i32 %273 to i64
  %call439 = call i16** @__ctype_b_loc() #8
  %274 = load i16*, i16** %call439, align 8
  %arrayidx440 = getelementptr i16, i16* %274, i64 %idxprom438
  %275 = load i16, i16* %arrayidx440, align 2
  %conv441 = zext i16 %275 to i32
  %and442 = and i32 %conv441, 2048
  %tobool443 = icmp ne i32 %and442, 0
  br i1 %tobool443, label %do.body.435, label %do.end.444

do.end.444:                                       ; preds = %do.cond.437
  br label %if.end.445

if.end.445:                                       ; preds = %do.end.444, %do.end.431
  %276 = load i32, i32* %c, align 4
  %cmp446 = icmp eq i32 %276, 101
  br i1 %cmp446, label %if.then.451, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %if.end.445
  %277 = load i32, i32* %c, align 4
  %cmp449 = icmp eq i32 %277, 69
  br i1 %cmp449, label %if.then.451, label %if.end.480

if.then.451:                                      ; preds = %lor.lhs.false.448, %if.end.445
  br label %exponent

exponent:                                         ; preds = %if.then.451, %if.then.402
  %278 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call452 = call i32 @tok_nextc(%struct.tok_state* %278)
  store i32 %call452, i32* %c, align 4
  %279 = load i32, i32* %c, align 4
  %cmp453 = icmp eq i32 %279, 43
  br i1 %cmp453, label %if.then.458, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %exponent
  %280 = load i32, i32* %c, align 4
  %cmp456 = icmp eq i32 %280, 45
  br i1 %cmp456, label %if.then.458, label %if.end.460

if.then.458:                                      ; preds = %lor.lhs.false.455, %exponent
  %281 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call459 = call i32 @tok_nextc(%struct.tok_state* %281)
  store i32 %call459, i32* %c, align 4
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %lor.lhs.false.455
  %282 = load i32, i32* %c, align 4
  %idxprom461 = sext i32 %282 to i64
  %call462 = call i16** @__ctype_b_loc() #8
  %283 = load i16*, i16** %call462, align 8
  %arrayidx463 = getelementptr i16, i16* %283, i64 %idxprom461
  %284 = load i16, i16* %arrayidx463, align 2
  %conv464 = zext i16 %284 to i32
  %and465 = and i32 %conv464, 2048
  %tobool466 = icmp ne i32 %and465, 0
  br i1 %tobool466, label %if.end.469, label %if.then.467

if.then.467:                                      ; preds = %if.end.460
  %285 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done468 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %285, i32 0, i32 5
  store i32 13, i32* %done468, align 4
  %286 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %287 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %286, i32 %287)
  store i32 53, i32* %retval
  br label %return

if.end.469:                                       ; preds = %if.end.460
  br label %do.body.470

do.body.470:                                      ; preds = %do.cond.472, %if.end.469
  %288 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call471 = call i32 @tok_nextc(%struct.tok_state* %288)
  store i32 %call471, i32* %c, align 4
  br label %do.cond.472

do.cond.472:                                      ; preds = %do.body.470
  %289 = load i32, i32* %c, align 4
  %idxprom473 = sext i32 %289 to i64
  %call474 = call i16** @__ctype_b_loc() #8
  %290 = load i16*, i16** %call474, align 8
  %arrayidx475 = getelementptr i16, i16* %290, i64 %idxprom473
  %291 = load i16, i16* %arrayidx475, align 2
  %conv476 = zext i16 %291 to i32
  %and477 = and i32 %conv476, 2048
  %tobool478 = icmp ne i32 %and477, 0
  br i1 %tobool478, label %do.body.470, label %do.end.479

do.end.479:                                       ; preds = %do.cond.472
  br label %if.end.480

if.end.480:                                       ; preds = %do.end.479, %lor.lhs.false.448
  %292 = load i32, i32* %c, align 4
  %cmp481 = icmp eq i32 %292, 106
  br i1 %cmp481, label %if.then.486, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %if.end.480
  %293 = load i32, i32* %c, align 4
  %cmp484 = icmp eq i32 %293, 74
  br i1 %cmp484, label %if.then.486, label %if.end.488

if.then.486:                                      ; preds = %lor.lhs.false.483, %if.end.480
  br label %imaginary

imaginary:                                        ; preds = %if.then.486, %if.then.409, %if.then.296
  %294 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call487 = call i32 @tok_nextc(%struct.tok_state* %294)
  store i32 %call487, i32* %c, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %imaginary, %lor.lhs.false.483
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %if.end.420
  %295 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %296 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %295, i32 %296)
  %297 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start490 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %297, i32 0, i32 4
  %298 = load i8*, i8** %start490, align 8
  %299 = load i8**, i8*** %p_start.addr, align 8
  store i8* %298, i8** %299, align 8
  %300 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur491 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %300, i32 0, i32 1
  %301 = load i8*, i8** %cur491, align 8
  %302 = load i8**, i8*** %p_end.addr, align 8
  store i8* %301, i8** %302, align 8
  store i32 2, i32* %retval
  br label %return

if.end.492:                                       ; preds = %if.end.275
  br label %letter_quote

letter_quote:                                     ; preds = %if.end.492, %if.then.201
  %303 = load i32, i32* %c, align 4
  %cmp493 = icmp eq i32 %303, 39
  br i1 %cmp493, label %if.then.498, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %letter_quote
  %304 = load i32, i32* %c, align 4
  %cmp496 = icmp eq i32 %304, 34
  br i1 %cmp496, label %if.then.498, label %if.end.556

if.then.498:                                      ; preds = %lor.lhs.false.495, %letter_quote
  %305 = load i32, i32* %c, align 4
  store i32 %305, i32* %quote, align 4
  store i32 1, i32* %quote_size, align 4
  store i32 0, i32* %end_quote_size, align 4
  %306 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call499 = call i32 @tok_nextc(%struct.tok_state* %306)
  store i32 %call499, i32* %c, align 4
  %307 = load i32, i32* %c, align 4
  %308 = load i32, i32* %quote, align 4
  %cmp500 = icmp eq i32 %307, %308
  br i1 %cmp500, label %if.then.502, label %if.end.509

if.then.502:                                      ; preds = %if.then.498
  %309 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call503 = call i32 @tok_nextc(%struct.tok_state* %309)
  store i32 %call503, i32* %c, align 4
  %310 = load i32, i32* %c, align 4
  %311 = load i32, i32* %quote, align 4
  %cmp504 = icmp eq i32 %310, %311
  br i1 %cmp504, label %if.then.506, label %if.else.507

if.then.506:                                      ; preds = %if.then.502
  store i32 3, i32* %quote_size, align 4
  br label %if.end.508

if.else.507:                                      ; preds = %if.then.502
  store i32 1, i32* %end_quote_size, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.else.507, %if.then.506
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.then.498
  %312 = load i32, i32* %c, align 4
  %313 = load i32, i32* %quote, align 4
  %cmp510 = icmp ne i32 %312, %313
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %if.end.509
  %314 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %315 = load i32, i32* %c, align 4
  call void @tok_backup(%struct.tok_state* %314, i32 %315)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.512, %if.end.509
  br label %while.cond.514

while.cond.514:                                   ; preds = %if.end.552, %if.end.513
  %316 = load i32, i32* %end_quote_size, align 4
  %317 = load i32, i32* %quote_size, align 4
  %cmp515 = icmp ne i32 %316, %317
  br i1 %cmp515, label %while.body.517, label %while.end.553

while.body.517:                                   ; preds = %while.cond.514
  %318 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call518 = call i32 @tok_nextc(%struct.tok_state* %318)
  store i32 %call518, i32* %c, align 4
  %319 = load i32, i32* %c, align 4
  %cmp519 = icmp eq i32 %319, -1
  br i1 %cmp519, label %if.then.521, label %if.end.531

if.then.521:                                      ; preds = %while.body.517
  %320 = load i32, i32* %quote_size, align 4
  %cmp522 = icmp eq i32 %320, 3
  br i1 %cmp522, label %if.then.524, label %if.else.526

if.then.524:                                      ; preds = %if.then.521
  %321 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done525 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %321, i32 0, i32 5
  store i32 23, i32* %done525, align 4
  br label %if.end.528

if.else.526:                                      ; preds = %if.then.521
  %322 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done527 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %322, i32 0, i32 5
  store i32 24, i32* %done527, align 4
  br label %if.end.528

if.end.528:                                       ; preds = %if.else.526, %if.then.524
  %323 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp529 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %323, i32 0, i32 2
  %324 = load i8*, i8** %inp529, align 8
  %325 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur530 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %325, i32 0, i32 1
  store i8* %324, i8** %cur530, align 8
  store i32 53, i32* %retval
  br label %return

if.end.531:                                       ; preds = %while.body.517
  %326 = load i32, i32* %quote_size, align 4
  %cmp532 = icmp eq i32 %326, 1
  br i1 %cmp532, label %land.lhs.true.534, label %if.end.541

land.lhs.true.534:                                ; preds = %if.end.531
  %327 = load i32, i32* %c, align 4
  %cmp535 = icmp eq i32 %327, 10
  br i1 %cmp535, label %if.then.537, label %if.end.541

if.then.537:                                      ; preds = %land.lhs.true.534
  %328 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done538 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %328, i32 0, i32 5
  store i32 24, i32* %done538, align 4
  %329 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp539 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %329, i32 0, i32 2
  %330 = load i8*, i8** %inp539, align 8
  %331 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur540 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %331, i32 0, i32 1
  store i8* %330, i8** %cur540, align 8
  store i32 53, i32* %retval
  br label %return

if.end.541:                                       ; preds = %land.lhs.true.534, %if.end.531
  %332 = load i32, i32* %c, align 4
  %333 = load i32, i32* %quote, align 4
  %cmp542 = icmp eq i32 %332, %333
  br i1 %cmp542, label %if.then.544, label %if.else.546

if.then.544:                                      ; preds = %if.end.541
  %334 = load i32, i32* %end_quote_size, align 4
  %add545 = add i32 %334, 1
  store i32 %add545, i32* %end_quote_size, align 4
  br label %if.end.552

if.else.546:                                      ; preds = %if.end.541
  store i32 0, i32* %end_quote_size, align 4
  %335 = load i32, i32* %c, align 4
  %cmp547 = icmp eq i32 %335, 92
  br i1 %cmp547, label %if.then.549, label %if.end.551

if.then.549:                                      ; preds = %if.else.546
  %336 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call550 = call i32 @tok_nextc(%struct.tok_state* %336)
  store i32 %call550, i32* %c, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.549, %if.else.546
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.then.544
  br label %while.cond.514

while.end.553:                                    ; preds = %while.cond.514
  %337 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start554 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %337, i32 0, i32 4
  %338 = load i8*, i8** %start554, align 8
  %339 = load i8**, i8*** %p_start.addr, align 8
  store i8* %338, i8** %339, align 8
  %340 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur555 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %340, i32 0, i32 1
  %341 = load i8*, i8** %cur555, align 8
  %342 = load i8**, i8*** %p_end.addr, align 8
  store i8* %341, i8** %342, align 8
  store i32 3, i32* %retval
  br label %return

if.end.556:                                       ; preds = %lor.lhs.false.495
  %343 = load i32, i32* %c, align 4
  %cmp557 = icmp eq i32 %343, 92
  br i1 %cmp557, label %if.then.559, label %if.end.569

if.then.559:                                      ; preds = %if.end.556
  %344 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call560 = call i32 @tok_nextc(%struct.tok_state* %344)
  store i32 %call560, i32* %c, align 4
  %345 = load i32, i32* %c, align 4
  %cmp561 = icmp ne i32 %345, 10
  br i1 %cmp561, label %if.then.563, label %if.end.567

if.then.563:                                      ; preds = %if.then.559
  %346 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done564 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %346, i32 0, i32 5
  store i32 25, i32* %done564, align 4
  %347 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp565 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %347, i32 0, i32 2
  %348 = load i8*, i8** %inp565, align 8
  %349 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur566 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %349, i32 0, i32 1
  store i8* %348, i8** %cur566, align 8
  store i32 53, i32* %retval
  br label %return

if.end.567:                                       ; preds = %if.then.559
  %350 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cont_line568 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %350, i32 0, i32 25
  store i32 1, i32* %cont_line568, align 4
  br label %again

if.end.569:                                       ; preds = %if.end.556
  %351 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call570 = call i32 @tok_nextc(%struct.tok_state* %351)
  store i32 %call570, i32* %c2, align 4
  %352 = load i32, i32* %c, align 4
  %353 = load i32, i32* %c2, align 4
  %call571 = call i32 @PyToken_TwoChars(i32 %352, i32 %353)
  store i32 %call571, i32* %token, align 4
  %354 = load i32, i32* %token, align 4
  %cmp572 = icmp ne i32 %354, 52
  br i1 %cmp572, label %if.then.574, label %if.end.584

if.then.574:                                      ; preds = %if.end.569
  %355 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call575 = call i32 @tok_nextc(%struct.tok_state* %355)
  store i32 %call575, i32* %c3, align 4
  %356 = load i32, i32* %c, align 4
  %357 = load i32, i32* %c2, align 4
  %358 = load i32, i32* %c3, align 4
  %call576 = call i32 @PyToken_ThreeChars(i32 %356, i32 %357, i32 %358)
  store i32 %call576, i32* %token3, align 4
  %359 = load i32, i32* %token3, align 4
  %cmp577 = icmp ne i32 %359, 52
  br i1 %cmp577, label %if.then.579, label %if.else.580

if.then.579:                                      ; preds = %if.then.574
  %360 = load i32, i32* %token3, align 4
  store i32 %360, i32* %token, align 4
  br label %if.end.581

if.else.580:                                      ; preds = %if.then.574
  %361 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %362 = load i32, i32* %c3, align 4
  call void @tok_backup(%struct.tok_state* %361, i32 %362)
  br label %if.end.581

if.end.581:                                       ; preds = %if.else.580, %if.then.579
  %363 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start582 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %363, i32 0, i32 4
  %364 = load i8*, i8** %start582, align 8
  %365 = load i8**, i8*** %p_start.addr, align 8
  store i8* %364, i8** %365, align 8
  %366 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur583 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %366, i32 0, i32 1
  %367 = load i8*, i8** %cur583, align 8
  %368 = load i8**, i8*** %p_end.addr, align 8
  store i8* %367, i8** %368, align 8
  %369 = load i32, i32* %token, align 4
  store i32 %369, i32* %retval
  br label %return

if.end.584:                                       ; preds = %if.end.569
  %370 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %371 = load i32, i32* %c2, align 4
  call void @tok_backup(%struct.tok_state* %370, i32 %371)
  %372 = load i32, i32* %c, align 4
  switch i32 %372, label %sw.epilog [
    i32 40, label %sw.bb
    i32 91, label %sw.bb
    i32 123, label %sw.bb
    i32 41, label %sw.bb.587
    i32 93, label %sw.bb.587
    i32 125, label %sw.bb.587
  ]

sw.bb:                                            ; preds = %if.end.584, %if.end.584, %if.end.584
  %373 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %level585 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %373, i32 0, i32 15
  %374 = load i32, i32* %level585, align 4
  %inc586 = add i32 %374, 1
  store i32 %inc586, i32* %level585, align 4
  br label %sw.epilog

sw.bb.587:                                        ; preds = %if.end.584, %if.end.584, %if.end.584
  %375 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %level588 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %375, i32 0, i32 15
  %376 = load i32, i32* %level588, align 4
  %dec589 = add i32 %376, -1
  store i32 %dec589, i32* %level588, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.584, %sw.bb.587, %sw.bb
  %377 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start590 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %377, i32 0, i32 4
  %378 = load i8*, i8** %start590, align 8
  %379 = load i8**, i8*** %p_start.addr, align 8
  store i8* %378, i8** %379, align 8
  %380 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur591 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %380, i32 0, i32 1
  %381 = load i8*, i8** %cur591, align 8
  %382 = load i8**, i8*** %p_end.addr, align 8
  store i8* %381, i8** %382, align 8
  %383 = load i32, i32* %c, align 4
  %call592 = call i32 @PyToken_OneChar(i32 %383)
  store i32 %call592, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.581, %if.then.563, %while.end.553, %if.then.537, %if.end.528, %if.end.489, %if.then.467, %if.then.412, %if.then.363, %if.then.337, %if.then.311, %if.end.272, %if.then.265, %if.end.245, %if.end.233, %if.then.231, %if.then.147, %if.else.123, %if.then.120, %if.then.106, %if.then.93, %if.then.64, %if.then.54, %if.then.41
  %384 = load i32, i32* %retval
  ret i32 %384
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
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i8* null, i8** %p_start, align 8
  store i8* null, i8** %p_end, align 8
  store i8* null, i8** %encoding, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @_Py_dup(i32 %0)
  store i32 %call, i32* %fd.addr, align 4
  %1 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %call1 = call %struct._IO_FILE* @fdopen(i32 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)) #4
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %4, i8* null, i8* null, i8* null)
  store %struct.tok_state* %call5, %struct.tok_state** %tok, align 8
  %5 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %cmp6 = icmp eq %struct.tok_state* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %6)
  store i8* null, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp10 = icmp ne %struct._object* %7, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %filename.addr, align 8
  %11 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename12 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 16
  store %struct._object* %10, %struct._object** %filename12, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.9
  %call13 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0))
  %12 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename14 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 16
  store %struct._object* %call13, %struct._object** %filename14, align 8
  %13 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 16
  %14 = load %struct._object*, %struct._object** %filename15, align 8
  %cmp16 = icmp eq %struct._object* %14, null
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %15)
  %16 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %16)
  %17 = load i8*, i8** %encoding, align 8
  store i8* %17, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %18 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 14
  %19 = load i32, i32* %lineno, align 4
  %cmp21 = icmp slt i32 %19, 2
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 5
  %21 = load i32, i32* %done, align 4
  %cmp22 = icmp eq i32 %21, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %call23 = call i32 @PyTokenizer_Get(%struct.tok_state* %23, i8** %p_start, i8** %p_end)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding25 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 24
  %26 = load i8*, i8** %encoding25, align 8
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %while.end
  %27 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding27 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 24
  %28 = load i8*, i8** %encoding27, align 8
  %call28 = call i64 @strlen(i8* %28) #7
  %add = add i64 %call28, 1
  %call29 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call29, i8** %encoding, align 8
  %29 = load i8*, i8** %encoding, align 8
  %tobool30 = icmp ne i8* %29, null
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.then.26
  %30 = load i8*, i8** %encoding, align 8
  %31 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  %encoding32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 24
  %32 = load i8*, i8** %encoding32, align 8
  %call33 = call i8* @strcpy(i8* %30, i8* %32) #4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %while.end
  %33 = load %struct.tok_state*, %struct.tok_state** %tok, align 8
  call void @PyTokenizer_Free(%struct.tok_state* %33)
  %34 = load i8*, i8** %encoding, align 8
  store i8* %34, i8** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.17, %if.then.7, %if.then.3, %if.then
  %35 = load i8*, i8** %retval
  ret i8* %35
}

declare i32 @_Py_dup(i32) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @PyTokenizer_FindEncoding(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i8* @PyTokenizer_FindEncodingFilename(i32 %0, %struct._object* null)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

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
  store i32 (%struct.tok_state*)* %get_char, i32 (%struct.tok_state*)** %get_char.addr, align 8
  store void (i32, %struct.tok_state*)* %unget_char, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call = call i32 %0(%struct.tok_state* %1)
  store i32 %call, i32* %ch1, align 4
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 21
  store i32 1, i32* %decoding_state, align 4
  %3 = load i32, i32* %ch1, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %ch1, align 4
  %cmp1 = icmp eq i32 %4, 239
  br i1 %cmp1, label %if.then.2, label %if.else.10

if.then.2:                                        ; preds = %if.else
  %5 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call3 = call i32 %5(%struct.tok_state* %6)
  store i32 %call3, i32* %ch2, align 4
  %7 = load i32, i32* %ch2, align 4
  %cmp4 = icmp ne i32 %7, 187
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %8 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %9 = load i32, i32* %ch2, align 4
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %8(i32 %9, %struct.tok_state* %10)
  %11 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %12 = load i32, i32* %ch1, align 4
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %11(i32 %12, %struct.tok_state* %13)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %14 = load i32 (%struct.tok_state*)*, i32 (%struct.tok_state*)** %get_char.addr, align 8
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call6 = call i32 %14(%struct.tok_state* %15)
  store i32 %call6, i32* %ch3, align 4
  %16 = load i32, i32* %ch3, align 4
  %cmp7 = icmp ne i32 %16, 191
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %17 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %18 = load i32, i32* %ch3, align 4
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %17(i32 %18, %struct.tok_state* %19)
  %20 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %21 = load i32, i32* %ch2, align 4
  %22 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %20(i32 %21, %struct.tok_state* %22)
  %23 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %24 = load i32, i32* %ch1, align 4
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %23(i32 %24, %struct.tok_state* %25)
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %if.end.11

if.else.10:                                       ; preds = %if.else
  %26 = load void (i32, %struct.tok_state*)*, void (i32, %struct.tok_state*)** %unget_char.addr, align 8
  %27 = load i32, i32* %ch1, align 4
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  call void %26(i32 %27, %struct.tok_state* %28)
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11
  %29 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 24
  %30 = load i8*, i8** %encoding, align 8
  %cmp13 = icmp ne i8* %30, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %31 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %31, i32 0, i32 24
  %32 = load i8*, i8** %encoding15, align 8
  call void @PyMem_Free(i8* %32)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call17 = call i8* @new_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i64 5, %struct.tok_state* %33)
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24
  store i8* %call17, i8** %encoding18, align 8
  %35 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding19 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %35, i32 0, i32 24
  %36 = load i8*, i8** %encoding19, align 8
  %tobool = icmp ne i8* %36, null
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.else.10, %if.then.8, %if.then.5, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30
  %1 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  ret i32 %conv2
}

; Function Attrs: nounwind uwtable
define internal void @buf_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %str = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 30
  %1 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i32 -1
  store i8* %incdec.ptr, i8** %str, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @buf_setreadl(%struct.tok_state* %tok, i8* %enc) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %enc.addr = alloca i8*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  %0 = load i8*, i8** %enc.addr, align 8
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %enc1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 29
  store i8* %0, i8** %enc1, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i8* @error_ret(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 22
  store i32 1, i32* %decoding_erred, align 4
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf2, align 8
  call void @PyMem_Free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 0
  store i8* null, i8** %buf3, align 8
  ret i8* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @translate_into_utf8(i8* %str, i8* %enc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %enc.addr = alloca i8*, align 8
  %utf8 = alloca %struct._object*, align 8
  %buf = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %2 = load i8*, i8** %enc.addr, align 8
  %call1 = call %struct._object* @PyUnicode_Decode(i8* %0, i64 %call, i8* %2, i8* null)
  store %struct._object* %call1, %struct._object** %buf, align 8
  %3 = load %struct._object*, %struct._object** %buf, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %buf, align 8
  %call2 = call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %4)
  store %struct._object* %call2, %struct._object** %utf8, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %utf8, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare i8* @PyBytes_AsString(%struct._object*) #1

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
  %i = alloca i64, align 8
  store i8* %line, i8** %line.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i32 (%struct.tok_state*, i8*)* %set_readline, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8
  store i32 1, i32* %r, align 4
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cont_line = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 25
  %1 = load i32, i32* %cont_line, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 23
  store i32 1, i32* %read_coding_spec, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call = call i32 @get_coding_spec(i8* %3, i8** %cs, i64 %4, %struct.tok_state* %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %cs, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %if.end.35, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv, 35
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %13 = load i8*, i8** %line.addr, align 8
  %arrayidx8 = getelementptr i8, i8* %13, i64 %12
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %15 = load i64, i64* %i, align 8
  %16 = load i8*, i8** %line.addr, align 8
  %arrayidx13 = getelementptr i8, i8* %16, i64 %15
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 13
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %for.body
  br label %for.end

if.end.18:                                        ; preds = %lor.lhs.false.12
  %18 = load i64, i64* %i, align 8
  %19 = load i8*, i8** %line.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %19, i64 %18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp ne i32 %conv20, 32
  br i1 %cmp21, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.18
  %21 = load i64, i64* %i, align 8
  %22 = load i8*, i8** %line.addr, align 8
  %arrayidx23 = getelementptr i8, i8* %22, i64 %21
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 9
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.34

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %24 = load i64, i64* %i, align 8
  %25 = load i8*, i8** %line.addr, align 8
  %arrayidx28 = getelementptr i8, i8* %25, i64 %24
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp ne i32 %conv29, 12
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.27
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %read_coding_spec33 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 23
  store i32 1, i32* %read_coding_spec33, align 4
  br label %for.end

if.end.34:                                        ; preds = %land.lhs.true.27, %land.lhs.true, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %if.then.17, %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.3
  %29 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %read_coding_spec36 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 23
  store i32 1, i32* %read_coding_spec36, align 4
  %30 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %30, i32 0, i32 24
  %31 = load i8*, i8** %encoding, align 8
  %cmp37 = icmp eq i8* %31, null
  br i1 %cmp37, label %if.then.39, label %if.else.53

if.then.39:                                       ; preds = %if.end.35
  %32 = load i8*, i8** %cs, align 8
  %call40 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #7
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.39
  %33 = load i8*, i8** %cs, align 8
  %34 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding44 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %34, i32 0, i32 24
  store i8* %33, i8** %encoding44, align 8
  br label %if.end.52

if.else:                                          ; preds = %if.then.39
  %35 = load i32 (%struct.tok_state*, i8*)*, i32 (%struct.tok_state*, i8*)** %set_readline.addr, align 8
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %37 = load i8*, i8** %cs, align 8
  %call45 = call i32 %35(%struct.tok_state* %36, i8* %37)
  store i32 %call45, i32* %r, align 4
  %38 = load i32, i32* %r, align 4
  %tobool46 = icmp ne i32 %38, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.else
  %39 = load i8*, i8** %cs, align 8
  %40 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding48 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %40, i32 0, i32 24
  store i8* %39, i8** %encoding48, align 8
  %41 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %41, i32 0, i32 21
  store i32 2, i32* %decoding_state, align 4
  br label %if.end.51

if.else.49:                                       ; preds = %if.else
  %42 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %43 = load i8*, i8** %cs, align 8
  %call50 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i8* %43)
  %44 = load i8*, i8** %cs, align 8
  call void @PyMem_Free(i8* %44)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.43
  br label %if.end.62

if.else.53:                                       ; preds = %if.end.35
  %45 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding54 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %45, i32 0, i32 24
  %46 = load i8*, i8** %encoding54, align 8
  %47 = load i8*, i8** %cs, align 8
  %call55 = call i32 @strcmp(i8* %46, i8* %47) #7
  %cmp56 = icmp eq i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  store i32 %conv57, i32* %r, align 4
  %48 = load i32, i32* %r, align 4
  %tobool58 = icmp ne i32 %48, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.else.53
  %49 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %50 = load i8*, i8** %cs, align 8
  %call60 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8* %50)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.else.53
  %51 = load i8*, i8** %cs, align 8
  call void @PyMem_Free(i8* %51)
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.52
  %52 = load i32, i32* %r, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %for.end, %if.then.2, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i8* @new_string(i8* %s, i64 %len, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %result = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %add = add i64 %0, 1
  %call = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 5
  store i32 15, i32* %done, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %result, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i8*, i8** %result, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %6
  store i8 0, i8* %arrayidx, align 1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #1

declare %struct._object* @PyUnicode_AsUTF8String(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_coding_spec(i8* %s, i8** %spec, i64 %size, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %spec.addr = alloca i8**, align 8
  %size.addr = alloca i64, align 8
  %tok.addr = alloca %struct.tok_state*, align 8
  %i = alloca i64, align 8
  %t = alloca i8*, align 8
  %begin = alloca i8*, align 8
  %r = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %spec, i8*** %spec.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load i8**, i8*** %spec.addr, align 8
  store i8* null, i8** %0, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %2, 6
  %cmp = icmp slt i64 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 35
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br i1 %cmp5, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 9
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.17

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load i64, i64* %i, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %13, i64 %12
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp ne i32 %conv13, 12
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.86, %for.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %size.addr, align 8
  %sub19 = sub i64 %17, 6
  %cmp20 = icmp slt i64 %16, %sub19
  br i1 %cmp20, label %for.body.22, label %for.end.88

for.body.22:                                      ; preds = %for.cond.18
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i64, i64* %i, align 8
  %add.ptr = getelementptr i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %t, align 8
  %20 = load i8*, i8** %t, align 8
  %call = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i64 6) #7
  %cmp23 = icmp eq i32 %call, 0
  br i1 %cmp23, label %if.then.25, label %if.end.85

if.then.25:                                       ; preds = %for.body.22
  store i8* null, i8** %begin, align 8
  %21 = load i8*, i8** %t, align 8
  %add.ptr26 = getelementptr i8, i8* %21, i64 6
  store i8* %add.ptr26, i8** %t, align 8
  %22 = load i8*, i8** %t, align 8
  %arrayidx27 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp ne i32 %conv28, 58
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.37

land.lhs.true.31:                                 ; preds = %if.then.25
  %24 = load i8*, i8** %t, align 8
  %arrayidx32 = getelementptr i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp ne i32 %conv33, 61
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.31
  br label %for.inc.86

if.end.37:                                        ; preds = %land.lhs.true.31, %if.then.25
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end.37
  %26 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i8*, i8** %t, align 8
  %arrayidx38 = getelementptr i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %28 to i32
  %cmp40 = icmp eq i32 %conv39, 32
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %29 = load i8*, i8** %t, align 8
  %arrayidx42 = getelementptr i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %30 to i32
  %cmp44 = icmp eq i32 %conv43, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %31 = phi i1 [ true, %do.cond ], [ %cmp44, %lor.rhs ]
  br i1 %31, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %32 = load i8*, i8** %t, align 8
  store i8* %32, i8** %begin, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %33 = load i8*, i8** %t, align 8
  %arrayidx46 = getelementptr i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %34 to i32
  %and = and i32 %conv47, 255
  %conv48 = trunc i32 %and to i8
  %idxprom = zext i8 %conv48 to i64
  %arrayidx49 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %35 = load i32, i32* %arrayidx49, align 4
  %and50 = and i32 %35, 7
  %tobool = icmp ne i32 %and50, 0
  br i1 %tobool, label %lor.end.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %36 = load i8*, i8** %t, align 8
  %arrayidx51 = getelementptr i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp eq i32 %conv52, 45
  br i1 %cmp53, label %lor.end.65, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false
  %38 = load i8*, i8** %t, align 8
  %arrayidx56 = getelementptr i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %39 to i32
  %cmp58 = icmp eq i32 %conv57, 95
  br i1 %cmp58, label %lor.end.65, label %lor.rhs.60

lor.rhs.60:                                       ; preds = %lor.lhs.false.55
  %40 = load i8*, i8** %t, align 8
  %arrayidx61 = getelementptr i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %41 to i32
  %cmp63 = icmp eq i32 %conv62, 46
  br label %lor.end.65

lor.end.65:                                       ; preds = %lor.rhs.60, %lor.lhs.false.55, %lor.lhs.false, %while.cond
  %42 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp63, %lor.rhs.60 ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.65
  %43 = load i8*, i8** %t, align 8
  %incdec.ptr66 = getelementptr i8, i8* %43, i32 1
  store i8* %incdec.ptr66, i8** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.65
  %44 = load i8*, i8** %begin, align 8
  %45 = load i8*, i8** %t, align 8
  %cmp67 = icmp ult i8* %44, %45
  br i1 %cmp67, label %if.then.69, label %if.end.84

if.then.69:                                       ; preds = %while.end
  %46 = load i8*, i8** %begin, align 8
  %47 = load i8*, i8** %t, align 8
  %48 = load i8*, i8** %begin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %49 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call70 = call i8* @new_string(i8* %46, i64 %sub.ptr.sub, %struct.tok_state* %49)
  store i8* %call70, i8** %r, align 8
  %50 = load i8*, i8** %r, align 8
  %tobool71 = icmp ne i8* %50, null
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.then.69
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.then.69
  %51 = load i8*, i8** %r, align 8
  %call74 = call i8* @get_normal_name(i8* %51)
  store i8* %call74, i8** %q, align 8
  %52 = load i8*, i8** %r, align 8
  %53 = load i8*, i8** %q, align 8
  %cmp75 = icmp ne i8* %52, %53
  br i1 %cmp75, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.end.73
  %54 = load i8*, i8** %r, align 8
  call void @PyMem_Free(i8* %54)
  %55 = load i8*, i8** %q, align 8
  %56 = load i8*, i8** %q, align 8
  %call78 = call i64 @strlen(i8* %56) #7
  %57 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call79 = call i8* @new_string(i8* %55, i64 %call78, %struct.tok_state* %57)
  store i8* %call79, i8** %r, align 8
  %58 = load i8*, i8** %r, align 8
  %tobool80 = icmp ne i8* %58, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.then.77
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.77
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.73
  %59 = load i8*, i8** %r, align 8
  %60 = load i8**, i8*** %spec.addr, align 8
  store i8* %59, i8** %60, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %while.end
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body.22
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85, %if.then.36
  %61 = load i64, i64* %i, align 8
  %inc87 = add i64 %61, 1
  store i64 %inc87, i64* %i, align 8
  br label %for.cond.18

for.end.88:                                       ; preds = %for.cond.18
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.88, %if.then.81, %if.then.72, %if.then.16
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_normal_name(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %buf = alloca [13 x i8], align 1
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %5, 95
  br i1 %cmp3, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom6
  store i8 45, i8* %arrayidx7, align 1
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %7 = load i32, i32* %c, align 4
  %call = call i32 @tolower(i32 %7) #4
  %conv9 = trunc i32 %call to i8
  %8 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr [13 x i8], [13 x i8]* %buf, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arraydecay18 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i64 6) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8** %retval
  br label %return

if.else.23:                                       ; preds = %lor.lhs.false
  %arraydecay24 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call25 = call i32 @strcmp(i8* %arraydecay24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.53, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.else.23
  %arraydecay29 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* %arraydecay29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0)) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.53, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.28
  %arraydecay34 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @strcmp(i8* %arraydecay34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0)) #7
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.53, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.33
  %arraydecay39 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call40 = call i32 @strncmp(i8* %arraydecay39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i64 8) #7
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.53, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %arraydecay44 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call45 = call i32 @strncmp(i8* %arraydecay44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i64 11) #7
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.43
  %arraydecay49 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i32 0, i32 0
  %call50 = call i32 @strncmp(i8* %arraydecay49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i64 12) #7
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.43, %lor.lhs.false.38, %lor.lhs.false.33, %lor.lhs.false.28, %if.else.23
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8** %retval
  br label %return

if.else.54:                                       ; preds = %lor.lhs.false.48
  %11 = load i8*, i8** %s.addr, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.else.54, %if.then.53, %if.then.22
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

declare i8* @PyMem_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @tok_nextc(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %end = alloca i8*, align 8
  %newtok = alloca i8*, align 8
  %translated = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %buf58 = alloca i8*, align 8
  %u = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %start110 = alloca i64, align 8
  %oldlen = alloca i64, align 8
  %newlen = alloca i64, align 8
  %buf120 = alloca i8*, align 8
  %done176 = alloca i32, align 4
  %cur177 = alloca i64, align 8
  %pt = alloca i8*, align 8
  %curstart = alloca i64, align 8
  %curvalid = alloca i64, align 8
  %newsize = alloca i64, align 8
  %newbuf = alloca i8*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.336, %entry
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 1
  %1 = load i8*, i8** %cur, align 8
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 2
  %3 = load i8*, i8** %inp, align 8
  %cmp = icmp ne i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 1
  %5 = load i8*, i8** %cur1, align 8
  %incdec.ptr = getelementptr i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cur1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %and = and i32 %conv, 255
  %conv2 = trunc i32 %and to i8
  %conv3 = zext i8 %conv2 to i32
  store i32 %conv3, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 5
  %8 = load i32, i32* %done, align 4
  %cmp4 = icmp ne i32 %8, 10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp8, label %if.then.10, label %if.end.38

if.then.10:                                       ; preds = %if.end.7
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp11 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %11, i32 0, i32 2
  %12 = load i8*, i8** %inp11, align 8
  %call = call i8* @strchr(i8* %12, i32 10) #7
  store i8* %call, i8** %end, align 8
  %13 = load i8*, i8** %end, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.10
  %14 = load i8*, i8** %end, align 8
  %incdec.ptr15 = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %end, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.then.10
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 2
  %16 = load i8*, i8** %inp16, align 8
  %call17 = call i8* @strchr(i8* %16, i32 0) #7
  store i8* %call17, i8** %end, align 8
  %17 = load i8*, i8** %end, align 8
  %18 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp18 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %18, i32 0, i32 2
  %19 = load i8*, i8** %inp18, align 8
  %cmp19 = icmp eq i8* %17, %19
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else
  %20 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done22 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %20, i32 0, i32 5
  store i32 11, i32* %done22, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %21, i32 0, i32 4
  %22 = load i8*, i8** %start, align 8
  %cmp25 = icmp eq i8* %22, null
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur28 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 1
  %24 = load i8*, i8** %cur28, align 8
  %25 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %25, i32 0, i32 0
  store i8* %24, i8** %buf, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %26 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur30 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %26, i32 0, i32 1
  %27 = load i8*, i8** %cur30, align 8
  %28 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %28, i32 0, i32 26
  store i8* %27, i8** %line_start, align 8
  %29 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %29, i32 0, i32 14
  %30 = load i32, i32* %lineno, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %lineno, align 4
  %31 = load i8*, i8** %end, align 8
  %32 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp31 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %32, i32 0, i32 2
  store i8* %31, i8** %inp31, align 8
  %33 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur32 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %33, i32 0, i32 1
  %34 = load i8*, i8** %cur32, align 8
  %incdec.ptr33 = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr33, i8** %cur32, align 8
  %35 = load i8, i8* %34, align 1
  %conv34 = sext i8 %35 to i32
  %and35 = and i32 %conv34, 255
  %conv36 = trunc i32 %and35 to i8
  %conv37 = zext i8 %conv36 to i32
  store i32 %conv37, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.7
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %prompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 12
  %37 = load i8*, i8** %prompt, align 8
  %cmp39 = icmp ne i8* %37, null
  br i1 %cmp39, label %if.then.41, label %if.else.175

if.then.41:                                       ; preds = %if.end.38
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %prompt42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %40, i32 0, i32 12
  %41 = load i8*, i8** %prompt42, align 8
  %call43 = call i8* @PyOS_Readline(%struct._IO_FILE* %38, %struct._IO_FILE* %39, i8* %41)
  store i8* %call43, i8** %newtok, align 8
  %42 = load i8*, i8** %newtok, align 8
  %cmp44 = icmp ne i8* %42, null
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.then.41
  %43 = load i8*, i8** %newtok, align 8
  %44 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call47 = call i8* @translate_newlines(i8* %43, i32 0, %struct.tok_state* %44)
  store i8* %call47, i8** %translated, align 8
  %45 = load i8*, i8** %newtok, align 8
  call void @PyMem_Free(i8* %45)
  %46 = load i8*, i8** %translated, align 8
  %cmp48 = icmp eq i8* %46, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.46
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.46
  %47 = load i8*, i8** %translated, align 8
  store i8* %47, i8** %newtok, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.41
  %48 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %48, i32 0, i32 24
  %49 = load i8*, i8** %encoding, align 8
  %tobool = icmp ne i8* %49, null
  br i1 %tobool, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %if.end.52
  %50 = load i8*, i8** %newtok, align 8
  %tobool53 = icmp ne i8* %50, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.88

land.lhs.true.54:                                 ; preds = %land.lhs.true
  %51 = load i8*, i8** %newtok, align 8
  %52 = load i8, i8* %51, align 1
  %conv55 = sext i8 %52 to i32
  %tobool56 = icmp ne i32 %conv55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.88

if.then.57:                                       ; preds = %land.lhs.true.54
  %53 = load i8*, i8** %newtok, align 8
  %54 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding59 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %54, i32 0, i32 24
  %55 = load i8*, i8** %encoding59, align 8
  %call60 = call %struct._object* @translate_into_utf8(i8* %53, i8* %55)
  store %struct._object* %call60, %struct._object** %u, align 8
  %56 = load i8*, i8** %newtok, align 8
  call void @PyMem_Free(i8* %56)
  %57 = load %struct._object*, %struct._object** %u, align 8
  %tobool61 = icmp ne %struct._object* %57, null
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.then.57
  %58 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done63 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %58, i32 0, i32 5
  store i32 22, i32* %done63, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.then.57
  %59 = load %struct._object*, %struct._object** %u, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %60, i32 0, i32 1
  %61 = load i64, i64* %ob_size, align 8
  store i64 %61, i64* %buflen, align 8
  %62 = load %struct._object*, %struct._object** %u, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %63, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %buf58, align 8
  %64 = load i8*, i8** %buf58, align 8
  %tobool65 = icmp ne i8* %64, null
  br i1 %tobool65, label %if.end.73, label %if.then.66

if.then.66:                                       ; preds = %if.end.64
  br label %do.body

do.body:                                          ; preds = %if.then.66
  %65 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %67, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp67 = icmp ne i64 %dec, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body
  br label %if.end.71

if.else.70:                                       ; preds = %do.body
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %70(%struct._object* %71)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end

do.end:                                           ; preds = %if.end.71
  %72 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done72 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %72, i32 0, i32 5
  store i32 22, i32* %done72, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.64
  %73 = load i64, i64* %buflen, align 8
  %add = add i64 %73, 1
  %call74 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call74, i8** %newtok, align 8
  %74 = load i8*, i8** %newtok, align 8
  %75 = load i8*, i8** %buf58, align 8
  %call75 = call i8* @strcpy(i8* %74, i8* %75) #4
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.73
  %76 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp77, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %78, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.76
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.76
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %81(%struct._object* %82)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %land.lhs.true.54, %land.lhs.true, %if.end.52
  %83 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %nextprompt = getelementptr inbounds %struct.tok_state, %struct.tok_state* %83, i32 0, i32 13
  %84 = load i8*, i8** %nextprompt, align 8
  %cmp89 = icmp ne i8* %84, null
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.88
  %85 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %nextprompt92 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %85, i32 0, i32 13
  %86 = load i8*, i8** %nextprompt92, align 8
  %87 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %prompt93 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %87, i32 0, i32 12
  store i8* %86, i8** %prompt93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.88
  %88 = load i8*, i8** %newtok, align 8
  %cmp95 = icmp eq i8* %88, null
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.end.94
  %89 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done98 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %89, i32 0, i32 5
  store i32 12, i32* %done98, align 4
  br label %if.end.174

if.else.99:                                       ; preds = %if.end.94
  %90 = load i8*, i8** %newtok, align 8
  %91 = load i8, i8* %90, align 1
  %conv100 = sext i8 %91 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.else.99
  %92 = load i8*, i8** %newtok, align 8
  call void @PyMem_Free(i8* %92)
  %93 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done104 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %93, i32 0, i32 5
  store i32 11, i32* %done104, align 4
  br label %if.end.173

if.else.105:                                      ; preds = %if.else.99
  %94 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start106 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %94, i32 0, i32 4
  %95 = load i8*, i8** %start106, align 8
  %cmp107 = icmp ne i8* %95, null
  br i1 %cmp107, label %if.then.109, label %if.else.150

if.then.109:                                      ; preds = %if.else.105
  %96 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start111 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %96, i32 0, i32 4
  %97 = load i8*, i8** %start111, align 8
  %98 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf112 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %98, i32 0, i32 0
  %99 = load i8*, i8** %buf112, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %99 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %start110, align 8
  %100 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur113 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %100, i32 0, i32 1
  %101 = load i8*, i8** %cur113, align 8
  %102 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf114 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %102, i32 0, i32 0
  %103 = load i8*, i8** %buf114, align 8
  %sub.ptr.lhs.cast115 = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast116 = ptrtoint i8* %103 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  store i64 %sub.ptr.sub117, i64* %oldlen, align 8
  %104 = load i64, i64* %oldlen, align 8
  %105 = load i8*, i8** %newtok, align 8
  %call118 = call i64 @strlen(i8* %105) #7
  %add119 = add i64 %104, %call118
  store i64 %add119, i64* %newlen, align 8
  %106 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf121 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %106, i32 0, i32 0
  %107 = load i8*, i8** %buf121, align 8
  store i8* %107, i8** %buf120, align 8
  %108 = load i8*, i8** %buf120, align 8
  %109 = load i64, i64* %newlen, align 8
  %add122 = add i64 %109, 1
  %call123 = call i8* @PyMem_Realloc(i8* %108, i64 %add122)
  store i8* %call123, i8** %buf120, align 8
  %110 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno124 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %110, i32 0, i32 14
  %111 = load i32, i32* %lineno124, align 4
  %inc125 = add i32 %111, 1
  store i32 %inc125, i32* %lineno124, align 4
  %112 = load i8*, i8** %buf120, align 8
  %cmp126 = icmp eq i8* %112, null
  br i1 %cmp126, label %if.then.128, label %if.end.132

if.then.128:                                      ; preds = %if.then.109
  %113 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf129 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %113, i32 0, i32 0
  %114 = load i8*, i8** %buf129, align 8
  call void @PyMem_Free(i8* %114)
  %115 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf130 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %115, i32 0, i32 0
  store i8* null, i8** %buf130, align 8
  %116 = load i8*, i8** %newtok, align 8
  call void @PyMem_Free(i8* %116)
  %117 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done131 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %117, i32 0, i32 5
  store i32 15, i32* %done131, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.then.109
  %118 = load i8*, i8** %buf120, align 8
  %119 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf133 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %119, i32 0, i32 0
  store i8* %118, i8** %buf133, align 8
  %120 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf134 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %120, i32 0, i32 0
  %121 = load i8*, i8** %buf134, align 8
  %122 = load i64, i64* %oldlen, align 8
  %add.ptr = getelementptr i8, i8* %121, i64 %122
  %123 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur135 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %123, i32 0, i32 1
  store i8* %add.ptr, i8** %cur135, align 8
  %124 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur136 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %124, i32 0, i32 1
  %125 = load i8*, i8** %cur136, align 8
  %126 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start137 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %126, i32 0, i32 26
  store i8* %125, i8** %line_start137, align 8
  %127 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf138 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %127, i32 0, i32 0
  %128 = load i8*, i8** %buf138, align 8
  %129 = load i64, i64* %oldlen, align 8
  %add.ptr139 = getelementptr i8, i8* %128, i64 %129
  %130 = load i8*, i8** %newtok, align 8
  %call140 = call i8* @strcpy(i8* %add.ptr139, i8* %130) #4
  %131 = load i8*, i8** %newtok, align 8
  call void @PyMem_Free(i8* %131)
  %132 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf141 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %132, i32 0, i32 0
  %133 = load i8*, i8** %buf141, align 8
  %134 = load i64, i64* %newlen, align 8
  %add.ptr142 = getelementptr i8, i8* %133, i64 %134
  %135 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp143 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %135, i32 0, i32 2
  store i8* %add.ptr142, i8** %inp143, align 8
  %136 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp144 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %136, i32 0, i32 2
  %137 = load i8*, i8** %inp144, align 8
  %add.ptr145 = getelementptr i8, i8* %137, i64 1
  %138 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end146 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %138, i32 0, i32 3
  store i8* %add.ptr145, i8** %end146, align 8
  %139 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf147 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %139, i32 0, i32 0
  %140 = load i8*, i8** %buf147, align 8
  %141 = load i64, i64* %start110, align 8
  %add.ptr148 = getelementptr i8, i8* %140, i64 %141
  %142 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start149 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %142, i32 0, i32 4
  store i8* %add.ptr148, i8** %start149, align 8
  br label %if.end.172

if.else.150:                                      ; preds = %if.else.105
  %143 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno151 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %143, i32 0, i32 14
  %144 = load i32, i32* %lineno151, align 4
  %inc152 = add i32 %144, 1
  store i32 %inc152, i32* %lineno151, align 4
  %145 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf153 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %145, i32 0, i32 0
  %146 = load i8*, i8** %buf153, align 8
  %cmp154 = icmp ne i8* %146, null
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.else.150
  %147 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf157 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %147, i32 0, i32 0
  %148 = load i8*, i8** %buf157, align 8
  call void @PyMem_Free(i8* %148)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.else.150
  %149 = load i8*, i8** %newtok, align 8
  %150 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf159 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %150, i32 0, i32 0
  store i8* %149, i8** %buf159, align 8
  %151 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf160 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %151, i32 0, i32 0
  %152 = load i8*, i8** %buf160, align 8
  %153 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start161 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %153, i32 0, i32 26
  store i8* %152, i8** %line_start161, align 8
  %154 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf162 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %154, i32 0, i32 0
  %155 = load i8*, i8** %buf162, align 8
  %156 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur163 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %156, i32 0, i32 1
  store i8* %155, i8** %cur163, align 8
  %157 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf164 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %157, i32 0, i32 0
  %158 = load i8*, i8** %buf164, align 8
  %159 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start165 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %159, i32 0, i32 26
  store i8* %158, i8** %line_start165, align 8
  %160 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf166 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %160, i32 0, i32 0
  %161 = load i8*, i8** %buf166, align 8
  %call167 = call i8* @strchr(i8* %161, i32 0) #7
  %162 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp168 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %162, i32 0, i32 2
  store i8* %call167, i8** %inp168, align 8
  %163 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp169 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %163, i32 0, i32 2
  %164 = load i8*, i8** %inp169, align 8
  %add.ptr170 = getelementptr i8, i8* %164, i64 1
  %165 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end171 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %165, i32 0, i32 3
  store i8* %add.ptr170, i8** %end171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.158, %if.end.132
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.103
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.97
  br label %if.end.324

if.else.175:                                      ; preds = %if.end.38
  store i32 0, i32* %done176, align 4
  store i64 0, i64* %cur177, align 8
  %166 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start178 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %166, i32 0, i32 4
  %167 = load i8*, i8** %start178, align 8
  %cmp179 = icmp eq i8* %167, null
  br i1 %cmp179, label %if.then.181, label %if.else.220

if.then.181:                                      ; preds = %if.else.175
  %168 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf182 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %168, i32 0, i32 0
  %169 = load i8*, i8** %buf182, align 8
  %cmp183 = icmp eq i8* %169, null
  br i1 %cmp183, label %if.then.185, label %if.end.197

if.then.185:                                      ; preds = %if.then.181
  %call186 = call i8* @PyMem_Malloc(i64 8192)
  %170 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf187 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %170, i32 0, i32 0
  store i8* %call186, i8** %buf187, align 8
  %171 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf188 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %171, i32 0, i32 0
  %172 = load i8*, i8** %buf188, align 8
  %cmp189 = icmp eq i8* %172, null
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.then.185
  %173 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done192 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %173, i32 0, i32 5
  store i32 15, i32* %done192, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.then.185
  %174 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf194 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %174, i32 0, i32 0
  %175 = load i8*, i8** %buf194, align 8
  %add.ptr195 = getelementptr i8, i8* %175, i64 8192
  %176 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end196 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %176, i32 0, i32 3
  store i8* %add.ptr195, i8** %end196, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.193, %if.then.181
  %177 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf198 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %177, i32 0, i32 0
  %178 = load i8*, i8** %buf198, align 8
  %179 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end199 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %179, i32 0, i32 3
  %180 = load i8*, i8** %end199, align 8
  %181 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf200 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %181, i32 0, i32 0
  %182 = load i8*, i8** %buf200, align 8
  %sub.ptr.lhs.cast201 = ptrtoint i8* %180 to i64
  %sub.ptr.rhs.cast202 = ptrtoint i8* %182 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %conv204 = trunc i64 %sub.ptr.sub203 to i32
  %183 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call205 = call i8* @decoding_fgets(i8* %178, i32 %conv204, %struct.tok_state* %183)
  %cmp206 = icmp eq i8* %call205, null
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %if.end.197
  %184 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done209 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %184, i32 0, i32 5
  store i32 11, i32* %done209, align 4
  store i32 1, i32* %done176, align 4
  br label %if.end.219

if.else.210:                                      ; preds = %if.end.197
  %185 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done211 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %185, i32 0, i32 5
  store i32 10, i32* %done211, align 4
  %186 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf212 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %186, i32 0, i32 0
  %187 = load i8*, i8** %buf212, align 8
  %call213 = call i8* @strchr(i8* %187, i32 0) #7
  %188 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp214 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %188, i32 0, i32 2
  store i8* %call213, i8** %inp214, align 8
  %189 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp215 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %189, i32 0, i32 2
  %190 = load i8*, i8** %inp215, align 8
  %arrayidx = getelementptr i8, i8* %190, i64 -1
  %191 = load i8, i8* %arrayidx, align 1
  %conv216 = sext i8 %191 to i32
  %cmp217 = icmp eq i32 %conv216, 10
  %conv218 = zext i1 %cmp217 to i32
  store i32 %conv218, i32* %done176, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.210, %if.then.208
  br label %if.end.233

if.else.220:                                      ; preds = %if.else.175
  %192 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur221 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %192, i32 0, i32 1
  %193 = load i8*, i8** %cur221, align 8
  %194 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf222 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %194, i32 0, i32 0
  %195 = load i8*, i8** %buf222, align 8
  %sub.ptr.lhs.cast223 = ptrtoint i8* %193 to i64
  %sub.ptr.rhs.cast224 = ptrtoint i8* %195 to i64
  %sub.ptr.sub225 = sub i64 %sub.ptr.lhs.cast223, %sub.ptr.rhs.cast224
  store i64 %sub.ptr.sub225, i64* %cur177, align 8
  %196 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call226 = call i32 @decoding_feof(%struct.tok_state* %196)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.230

if.then.228:                                      ; preds = %if.else.220
  %197 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done229 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %197, i32 0, i32 5
  store i32 11, i32* %done229, align 4
  store i32 1, i32* %done176, align 4
  br label %if.end.232

if.else.230:                                      ; preds = %if.else.220
  %198 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done231 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %198, i32 0, i32 5
  store i32 10, i32* %done231, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.230, %if.then.228
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.end.219
  %199 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno234 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %199, i32 0, i32 14
  %200 = load i32, i32* %lineno234, align 4
  %inc235 = add i32 %200, 1
  store i32 %inc235, i32* %lineno234, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.292, %if.end.233
  %201 = load i32, i32* %done176, align 4
  %tobool236 = icmp ne i32 %201, 0
  %lnot = xor i1 %tobool236, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %202 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start237 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %202, i32 0, i32 4
  %203 = load i8*, i8** %start237, align 8
  %cmp238 = icmp eq i8* %203, null
  br i1 %cmp238, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %204 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start240 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %204, i32 0, i32 4
  %205 = load i8*, i8** %start240, align 8
  %206 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf241 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %206, i32 0, i32 0
  %207 = load i8*, i8** %buf241, align 8
  %sub.ptr.lhs.cast242 = ptrtoint i8* %205 to i64
  %sub.ptr.rhs.cast243 = ptrtoint i8* %207 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub.ptr.sub244, %cond.false ]
  store i64 %cond, i64* %curstart, align 8
  %208 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp245 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %208, i32 0, i32 2
  %209 = load i8*, i8** %inp245, align 8
  %210 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf246 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %210, i32 0, i32 0
  %211 = load i8*, i8** %buf246, align 8
  %sub.ptr.lhs.cast247 = ptrtoint i8* %209 to i64
  %sub.ptr.rhs.cast248 = ptrtoint i8* %211 to i64
  %sub.ptr.sub249 = sub i64 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast248
  store i64 %sub.ptr.sub249, i64* %curvalid, align 8
  %212 = load i64, i64* %curvalid, align 8
  %add250 = add i64 %212, 8192
  store i64 %add250, i64* %newsize, align 8
  %213 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf251 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %213, i32 0, i32 0
  %214 = load i8*, i8** %buf251, align 8
  store i8* %214, i8** %newbuf, align 8
  %215 = load i8*, i8** %newbuf, align 8
  %216 = load i64, i64* %newsize, align 8
  %call252 = call i8* @PyMem_Realloc(i8* %215, i64 %216)
  store i8* %call252, i8** %newbuf, align 8
  %217 = load i8*, i8** %newbuf, align 8
  %cmp253 = icmp eq i8* %217, null
  br i1 %cmp253, label %if.then.255, label %if.end.259

if.then.255:                                      ; preds = %cond.end
  %218 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done256 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %218, i32 0, i32 5
  store i32 15, i32* %done256, align 4
  %219 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp257 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %219, i32 0, i32 2
  %220 = load i8*, i8** %inp257, align 8
  %221 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur258 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %221, i32 0, i32 1
  store i8* %220, i8** %cur258, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.259:                                       ; preds = %cond.end
  %222 = load i8*, i8** %newbuf, align 8
  %223 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf260 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %223, i32 0, i32 0
  store i8* %222, i8** %buf260, align 8
  %224 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf261 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %224, i32 0, i32 0
  %225 = load i8*, i8** %buf261, align 8
  %226 = load i64, i64* %curvalid, align 8
  %add.ptr262 = getelementptr i8, i8* %225, i64 %226
  %227 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp263 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %227, i32 0, i32 2
  store i8* %add.ptr262, i8** %inp263, align 8
  %228 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf264 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %228, i32 0, i32 0
  %229 = load i8*, i8** %buf264, align 8
  %230 = load i64, i64* %newsize, align 8
  %add.ptr265 = getelementptr i8, i8* %229, i64 %230
  %231 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end266 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %231, i32 0, i32 3
  store i8* %add.ptr265, i8** %end266, align 8
  %232 = load i64, i64* %curstart, align 8
  %cmp267 = icmp slt i64 %232, 0
  br i1 %cmp267, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %if.end.259
  br label %cond.end.273

cond.false.270:                                   ; preds = %if.end.259
  %233 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf271 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %233, i32 0, i32 0
  %234 = load i8*, i8** %buf271, align 8
  %235 = load i64, i64* %curstart, align 8
  %add.ptr272 = getelementptr i8, i8* %234, i64 %235
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.270, %cond.true.269
  %cond274 = phi i8* [ null, %cond.true.269 ], [ %add.ptr272, %cond.false.270 ]
  %236 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start275 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %236, i32 0, i32 4
  store i8* %cond274, i8** %start275, align 8
  %237 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp276 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %237, i32 0, i32 2
  %238 = load i8*, i8** %inp276, align 8
  %239 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %end277 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %239, i32 0, i32 3
  %240 = load i8*, i8** %end277, align 8
  %241 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp278 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %241, i32 0, i32 2
  %242 = load i8*, i8** %inp278, align 8
  %sub.ptr.lhs.cast279 = ptrtoint i8* %240 to i64
  %sub.ptr.rhs.cast280 = ptrtoint i8* %242 to i64
  %sub.ptr.sub281 = sub i64 %sub.ptr.lhs.cast279, %sub.ptr.rhs.cast280
  %conv282 = trunc i64 %sub.ptr.sub281 to i32
  %243 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call283 = call i8* @decoding_fgets(i8* %238, i32 %conv282, %struct.tok_state* %243)
  %cmp284 = icmp eq i8* %call283, null
  br i1 %cmp284, label %if.then.286, label %if.end.292

if.then.286:                                      ; preds = %cond.end.273
  %244 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_erred = getelementptr inbounds %struct.tok_state, %struct.tok_state* %244, i32 0, i32 22
  %245 = load i32, i32* %decoding_erred, align 4
  %tobool287 = icmp ne i32 %245, 0
  br i1 %tobool287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %if.then.286
  store i32 -1, i32* %retval
  br label %return

if.end.289:                                       ; preds = %if.then.286
  %246 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp290 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %246, i32 0, i32 2
  %247 = load i8*, i8** %inp290, align 8
  %call291 = call i8* @strcpy(i8* %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #4
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.289, %cond.end.273
  %248 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp293 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %248, i32 0, i32 2
  %249 = load i8*, i8** %inp293, align 8
  %call294 = call i8* @strchr(i8* %249, i32 0) #7
  %250 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp295 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %250, i32 0, i32 2
  store i8* %call294, i8** %inp295, align 8
  %251 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp296 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %251, i32 0, i32 2
  %252 = load i8*, i8** %inp296, align 8
  %arrayidx297 = getelementptr i8, i8* %252, i64 -1
  %253 = load i8, i8* %arrayidx297, align 1
  %conv298 = sext i8 %253 to i32
  %cmp299 = icmp eq i32 %conv298, 10
  %conv300 = zext i1 %cmp299 to i32
  store i32 %conv300, i32* %done176, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %254 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf301 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %254, i32 0, i32 0
  %255 = load i8*, i8** %buf301, align 8
  %cmp302 = icmp ne i8* %255, null
  br i1 %cmp302, label %if.then.304, label %if.end.323

if.then.304:                                      ; preds = %while.end
  %256 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf305 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %256, i32 0, i32 0
  %257 = load i8*, i8** %buf305, align 8
  %258 = load i64, i64* %cur177, align 8
  %add.ptr306 = getelementptr i8, i8* %257, i64 %258
  %259 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur307 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %259, i32 0, i32 1
  store i8* %add.ptr306, i8** %cur307, align 8
  %260 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur308 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %260, i32 0, i32 1
  %261 = load i8*, i8** %cur308, align 8
  %262 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %line_start309 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %262, i32 0, i32 26
  store i8* %261, i8** %line_start309, align 8
  %263 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp310 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %263, i32 0, i32 2
  %264 = load i8*, i8** %inp310, align 8
  %add.ptr311 = getelementptr i8, i8* %264, i64 -2
  store i8* %add.ptr311, i8** %pt, align 8
  %265 = load i8*, i8** %pt, align 8
  %266 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf312 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %266, i32 0, i32 0
  %267 = load i8*, i8** %buf312, align 8
  %cmp313 = icmp uge i8* %265, %267
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.322

land.lhs.true.315:                                ; preds = %if.then.304
  %268 = load i8*, i8** %pt, align 8
  %269 = load i8, i8* %268, align 1
  %conv316 = sext i8 %269 to i32
  %cmp317 = icmp eq i32 %conv316, 13
  br i1 %cmp317, label %if.then.319, label %if.end.322

if.then.319:                                      ; preds = %land.lhs.true.315
  %270 = load i8*, i8** %pt, align 8
  %incdec.ptr320 = getelementptr i8, i8* %270, i32 1
  store i8* %incdec.ptr320, i8** %pt, align 8
  store i8 10, i8* %270, align 1
  %271 = load i8*, i8** %pt, align 8
  store i8 0, i8* %271, align 1
  %272 = load i8*, i8** %pt, align 8
  %273 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp321 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %273, i32 0, i32 2
  store i8* %272, i8** %inp321, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.319, %land.lhs.true.315, %if.then.304
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %while.end
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.174
  %274 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done325 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %274, i32 0, i32 5
  %275 = load i32, i32* %done325, align 4
  %cmp326 = icmp ne i32 %275, 10
  br i1 %cmp326, label %if.then.328, label %if.end.336

if.then.328:                                      ; preds = %if.end.324
  %276 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %prompt329 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %276, i32 0, i32 12
  %277 = load i8*, i8** %prompt329, align 8
  %cmp330 = icmp ne i8* %277, null
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.then.328
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %if.then.328
  %278 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp334 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %278, i32 0, i32 2
  %279 = load i8*, i8** %inp334, align 8
  %280 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur335 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %280, i32 0, i32 1
  store i8* %279, i8** %cur335, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.336:                                       ; preds = %if.end.324
  br label %for.cond

return:                                           ; preds = %if.end.333, %if.then.288, %if.then.255, %if.then.191, %if.then.128, %do.end, %if.then.62, %if.then.50, %if.end.29, %if.then.21, %if.then.6, %if.then
  %281 = load i32, i32* %retval
  ret i32 %281
}

; Function Attrs: nounwind uwtable
define internal void @tok_backup(%struct.tok_state* %tok, i32 %c) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  %c.addr = alloca i32, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 1
  %2 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr i8, i8* %2, i32 -1
  store i8* %incdec.ptr, i8** %cur, align 8
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  %cmp1 = icmp ult i8* %incdec.ptr, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1
  %6 = load i8*, i8** %cur3, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp ne i32 %conv, %8
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %c.addr, align 4
  %conv7 = trunc i32 %9 to i8
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 1
  %11 = load i8*, i8** %cur8, align 8
  store i8 %conv7, i8* %11, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @indenterror(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %alterror = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 18
  %1 = load i32, i32* %alterror, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 5
  store i32 18, i32* %done, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 2
  %4 = load i8*, i8** %inp, align 8
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 1
  store i8* %4, i8** %cur, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altwarning = getelementptr inbounds %struct.tok_state, %struct.tok_state* %6, i32 0, i32 17
  %7 = load i32, i32* %altwarning, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %8, i32 0, i32 16
  %9 = load %struct._object*, %struct._object** %filename, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i32 0, i32 0), %struct._object* %9)
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %altwarning3 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %10, i32 0, i32 17
  store i32 0, i32* %altwarning3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @verify_identifier(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %s = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 4
  %1 = load i8*, i8** %start, align 8
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %cur = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %cur, align 8
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %start1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 4
  %5 = load i8*, i8** %start1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call %struct._object* @PyUnicode_DecodeUTF8(i8* %1, i64 %sub.ptr.sub, i8* null)
  store %struct._object* %call, %struct._object** %s, align 8
  %6 = load %struct._object*, %struct._object** %s, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %s, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %9, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %s, align 8
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ]
  %cmp3 = icmp eq i32 %cond, -1
  br i1 %cmp3, label %if.then, label %if.end.8

if.then:                                          ; preds = %cond.end, %entry
  %11 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call4 = call i32 @PyErr_ExceptionMatches(%struct._object* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  call void @PyErr_Clear()
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 5
  store i32 26, i32* %done, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %13, i32 0, i32 5
  store i32 17, i32* %done7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %s, align 8
  %call9 = call i32 @PyUnicode_IsIdentifier(%struct._object* %14)
  store i32 %call9, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %22 = load i32, i32* %result, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.end
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %done16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 5
  store i32 26, i32* %done16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.end
  %24 = load i32, i32* %result, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @PyOS_Readline(%struct._IO_FILE*, %struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @decoding_fgets(i8* %s, i32 %size, %struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %line = alloca i8*, align 8
  %badchar = alloca i32, align 4
  %c = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i8* null, i8** %line, align 8
  store i32 0, i32* %badchar, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %entry
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 21
  %1 = load i32, i32* %decoding_state, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call = call i8* @fp_readl(i8* %2, i32 %3, %struct.tok_state* %4)
  store i8* %call, i8** %line, align 8
  br label %for.end

if.else:                                          ; preds = %for.cond
  %5 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_state1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %5, i32 0, i32 21
  %6 = load i32, i32* %decoding_state1, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %9 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %9, i32 0, i32 6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i8* @Py_UniversalNewlineFgets(i8* %7, i32 %8, %struct._IO_FILE* %10, %struct._object* null)
  store i8* %call4, i8** %line, align 8
  br label %for.end

if.else.5:                                        ; preds = %if.else
  %11 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call6 = call i32 @check_bom(i32 (%struct.tok_state*)* @fp_getc, void (i32, %struct.tok_state*)* @fp_ungetc, i32 (%struct.tok_state*, i8*)* @fp_setreadl, %struct.tok_state* %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.else.5
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call8 = call i8* @error_ret(%struct.tok_state* %12)
  store i8* %call8, i8** %retval
  br label %return

if.end:                                           ; preds = %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %if.then
  %13 = load i8*, i8** %line, align 8
  %cmp11 = icmp ne i8* %13, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.end
  %14 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %14, i32 0, i32 14
  %15 = load i32, i32* %lineno, align 4
  %cmp12 = icmp slt i32 %15, 2
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.22

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %16 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %read_coding_spec = getelementptr inbounds %struct.tok_state, %struct.tok_state* %16, i32 0, i32 23
  %17 = load i32, i32* %read_coding_spec, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13
  %18 = load i8*, i8** %line, align 8
  %19 = load i8*, i8** %line, align 8
  %call16 = call i64 @strlen(i8* %19) #7
  %20 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call17 = call i32 @check_coding_spec(i8* %18, i64 %call16, %struct.tok_state* %20, i32 (%struct.tok_state*, i8*)* @fp_setreadl)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.then.15
  %21 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call20 = call i8* @error_ret(%struct.tok_state* %21)
  store i8* %call20, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.13, %land.lhs.true, %for.end
  %22 = load i8*, i8** %line, align 8
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.34

land.lhs.true.24:                                 ; preds = %if.end.22
  %23 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %23, i32 0, i32 24
  %24 = load i8*, i8** %encoding, align 8
  %tobool25 = icmp ne i8* %24, null
  br i1 %tobool25, label %if.end.34, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.24
  %25 = load i8*, i8** %line, align 8
  store i8* %25, i8** %c, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %26 = load i8*, i8** %c, align 8
  %27 = load i8, i8* %26, align 1
  %tobool28 = icmp ne i8 %27, 0
  br i1 %tobool28, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond.27
  %28 = load i8*, i8** %c, align 8
  %call29 = call i32 @valid_utf8(i8* %28)
  store i32 %call29, i32* %length, align 4
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %for.body
  %29 = load i8*, i8** %c, align 8
  %30 = load i8, i8* %29, align 1
  %conv = zext i8 %30 to i32
  store i32 %conv, i32* %badchar, align 4
  br label %for.end.33

if.end.32:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %31 = load i32, i32* %length, align 4
  %32 = load i8*, i8** %c, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %c, align 8
  br label %for.cond.27

for.end.33:                                       ; preds = %if.then.31, %for.cond.27
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %land.lhs.true.24, %if.end.22
  %33 = load i32, i32* %badchar, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.34
  %34 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %35 = load i32, i32* %badchar, align 4
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %filename = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 16
  %37 = load %struct._object*, %struct._object** %filename, align 8
  %38 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %lineno37 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %38, i32 0, i32 14
  %39 = load i32, i32* %lineno37, align 4
  %add = add i32 %39, 1
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.69, i32 0, i32 0), i32 %35, %struct._object* %37, i32 %add)
  %40 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call39 = call i8* @error_ret(%struct.tok_state* %40)
  store i8* %call39, i8** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.34
  %41 = load i8*, i8** %line, align 8
  store i8* %41, i8** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.36, %if.then.19, %if.then.7
  %42 = load i8*, i8** %retval
  ret i8* %42
}

; Function Attrs: nounwind uwtable
define internal i32 @decoding_feof(%struct.tok_state* %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  %buf = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_state = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 21
  %1 = load i32, i32* %decoding_state, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %2, i32 0, i32 6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @feof(%struct._IO_FILE* %3) #4
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %4, i32 0, i32 28
  %5 = load %struct._object*, %struct._object** %decoding_buffer, align 8
  store %struct._object* %5, %struct._object** %buf, align 8
  %6 = load %struct._object*, %struct._object** %buf, align 8
  %cmp1 = icmp eq %struct._object* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.else
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 27
  %8 = load %struct._object*, %struct._object** %decoding_readline, align 8
  %call3 = call %struct._object* @PyObject_CallObject(%struct._object* %8, %struct._object* null)
  store %struct._object* %call3, %struct._object** %buf, align 8
  %9 = load %struct._object*, %struct._object** %buf, align 8
  %cmp4 = icmp eq %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then.2
  %10 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call6 = call i8* @error_ret(%struct.tok_state* %10)
  store i32 1, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.then.2
  %11 = load %struct._object*, %struct._object** %buf, align 8
  %12 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer8 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %12, i32 0, i32 28
  store %struct._object* %11, %struct._object** %decoding_buffer8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.else
  %13 = load %struct._object*, %struct._object** %buf, align 8
  %call10 = call i64 @PyObject_Size(%struct._object* %13)
  %cmp11 = icmp eq i64 %call10, 0
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.5, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @PySys_WriteStderr(i8*, ...) #1

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
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_xdecref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 28
  %2 = load %struct._object*, %struct._object** %decoding_buffer, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer1 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 28
  %4 = load %struct._object*, %struct._object** %decoding_buffer1, align 8
  store %struct._object* %4, %struct._object** %bufobj, align 8
  %5 = load %struct._object*, %struct._object** %bufobj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %7 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %7, i32 0, i32 27
  %8 = load %struct._object*, %struct._object** %decoding_readline, align 8
  %call = call %struct._object* @PyObject_CallObject(%struct._object* %8, %struct._object* null)
  store %struct._object* %call, %struct._object** %bufobj, align 8
  %9 = load %struct._object*, %struct._object** %bufobj, align 8
  %cmp = icmp eq %struct._object* %9, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  br label %error

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %bufobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %11, @PyUnicode_Type
  br i1 %cmp4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** %bufobj, align 8
  %call6 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %12, i64* %buflen)
  store i8* %call6, i8** %buf, align 8
  %13 = load i8*, i8** %buf, align 8
  %cmp7 = icmp eq i8* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %error

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.15

if.else.10:                                       ; preds = %if.end.3
  %14 = load %struct._object*, %struct._object** %bufobj, align 8
  %call11 = call i8* @PyByteArray_AsString(%struct._object* %14)
  store i8* %call11, i8** %buf, align 8
  %15 = load i8*, i8** %buf, align 8
  %cmp12 = icmp eq i8* %15, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.10
  br label %error

if.end.14:                                        ; preds = %if.else.10
  %16 = load %struct._object*, %struct._object** %bufobj, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  store i64 %18, i64* %buflen, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %19 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer16 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %19, i32 0, i32 28
  %20 = load %struct._object*, %struct._object** %decoding_buffer16, align 8
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp17 = icmp ne %struct._object* %21, null
  br i1 %cmp17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %do.body
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %24, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.19
  br label %if.end.26

if.else.24:                                       ; preds = %do.body.19
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %do.body
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %29 = load i64, i64* %buflen, align 8
  %30 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %30 to i64
  %cmp29 = icmp sgt i64 %29, %conv
  br i1 %cmp29, label %if.then.31, label %if.else.41

if.then.31:                                       ; preds = %do.end.28
  %31 = load i8*, i8** %buf, align 8
  %32 = load i32, i32* %size.addr, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr i8, i8* %31, i64 %idx.ext
  %33 = load i64, i64* %buflen, align 8
  %34 = load i32, i32* %size.addr, align 4
  %conv32 = sext i32 %34 to i64
  %sub = sub i64 %33, %conv32
  %call33 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %add.ptr, i64 %sub)
  %35 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer34 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %35, i32 0, i32 28
  store %struct._object* %call33, %struct._object** %decoding_buffer34, align 8
  %36 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer35 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %36, i32 0, i32 28
  %37 = load %struct._object*, %struct._object** %decoding_buffer35, align 8
  %cmp36 = icmp eq %struct._object* %37, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.31
  br label %error

if.end.39:                                        ; preds = %if.then.31
  %38 = load i32, i32* %size.addr, align 4
  %conv40 = sext i32 %38 to i64
  store i64 %conv40, i64* %buflen, align 8
  br label %if.end.43

if.else.41:                                       ; preds = %do.end.28
  %39 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_buffer42 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %39, i32 0, i32 28
  store %struct._object* null, %struct._object** %decoding_buffer42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.end.39
  %40 = load i8*, i8** %s.addr, align 8
  %41 = load i8*, i8** %buf, align 8
  %42 = load i64, i64* %buflen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 %42, i32 1, i1 false)
  %43 = load i64, i64* %buflen, align 8
  %44 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %44, i64 %43
  store i8 0, i8* %arrayidx, align 1
  %45 = load i64, i64* %buflen, align 8
  %cmp44 = icmp eq i64 %45, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store i8* null, i8** %s.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.43
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %46 = load %struct._object*, %struct._object** %bufobj, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp49, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %48, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %51(%struct._object* %52)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %53 = load i8*, i8** %s.addr, align 8
  store i8* %53, i8** %retval
  br label %return

error:                                            ; preds = %if.then.38, %if.then.13, %if.then.8, %if.then.2
  br label %do.body.60

do.body.60:                                       ; preds = %error
  %54 = load %struct._object*, %struct._object** %bufobj, align 8
  store %struct._object* %54, %struct._object** %_py_xdecref_tmp61, align 8
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  %cmp62 = icmp ne %struct._object* %55, null
  br i1 %cmp62, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.60
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp66, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %58, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.65
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.65
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %61(%struct._object* %62)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.60
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %63 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %call79 = call i8* @error_ret(%struct.tok_state* %63)
  store i8* %call79, i8** %retval
  br label %return

return:                                           ; preds = %do.end.78, %do.end.59
  %64 = load i8*, i8** %retval
  ret i8* %64
}

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fp_getc(%struct.tok_state* %tok) #0 {
entry:
  %tok.addr = alloca %struct.tok_state*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %0, i32 0, i32 6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @fp_ungetc(i32 %c, %struct.tok_state* %tok) #0 {
entry:
  %c.addr = alloca i32, align 4
  %tok.addr = alloca %struct.tok_state*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @ungetc(i32 %0, %struct._IO_FILE* %2)
  ret void
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
  %_py_xdecref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_xdecref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.tok_state* %tok, %struct.tok_state** %tok.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store %struct._object* null, %struct._object** %readline, align 8
  store %struct._object* null, %struct._object** %stream, align 8
  store %struct._object* null, %struct._object** %io, align 8
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %io, align 8
  %0 = load %struct._object*, %struct._object** %io, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %1, i32 0, i32 6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %2) #4
  store i32 %call1, i32* %fd, align 4
  %3 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %fp2 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %3, i32 0, i32 6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* %4)
  store i64 %call3, i64* %pos, align 8
  %5 = load i64, i64* %pos, align 8
  %cmp4 = icmp eq i64 %5, -1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %fd, align 4
  %7 = load i64, i64* %pos, align 8
  %cmp5 = icmp sgt i64 %7, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %8 = load i64, i64* %pos, align 8
  %sub = sub i64 %8, 1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load i64, i64* %pos, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %9, %cond.false ]
  %call6 = call i64 @lseek64(i32 %6, i64 %cond, i32 0) #4
  %cmp7 = icmp eq i64 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %cond.end, %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call9 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %10, i8* null)
  br label %cleanup

if.end.10:                                        ; preds = %cond.end
  %11 = load %struct._object*, %struct._object** %io, align 8
  %12 = load i32, i32* %fd, align 4
  %13 = load i8*, i8** %enc.addr, align 8
  %call11 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %11, %struct._Py_Identifier* @fp_setreadl.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 -1, i8* %13, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %stream, align 8
  %14 = load %struct._object*, %struct._object** %stream, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %15 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_readline = getelementptr inbounds %struct.tok_state, %struct.tok_state* %15, i32 0, i32 27
  %16 = load %struct._object*, %struct._object** %decoding_readline, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp15 = icmp ne %struct._object* %17, null
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.20

if.else:                                          ; preds = %do.body.17
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %do.body
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %25 = load %struct._object*, %struct._object** %stream, align 8
  %call23 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %25, %struct._Py_Identifier* @fp_setreadl.PyId_readline)
  store %struct._object* %call23, %struct._object** %readline, align 8
  %26 = load %struct._object*, %struct._object** %readline, align 8
  %27 = load %struct.tok_state*, %struct.tok_state** %tok.addr, align 8
  %decoding_readline24 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %27, i32 0, i32 27
  store %struct._object* %26, %struct._object** %decoding_readline24, align 8
  %28 = load i64, i64* %pos, align 8
  %cmp25 = icmp sgt i64 %28, 0
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %do.end.22
  %29 = load %struct._object*, %struct._object** %readline, align 8
  %call27 = call %struct._object* @PyObject_CallObject(%struct._object* %29, %struct._object* null)
  %cmp28 = icmp eq %struct._object* %call27, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  store %struct._object* null, %struct._object** %readline, align 8
  br label %cleanup

if.end.30:                                        ; preds = %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %do.end.22
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.29, %if.then.13, %if.then.8, %if.then
  br label %do.body.32

do.body.32:                                       ; preds = %cleanup
  %30 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp33, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  %cmp34 = icmp ne %struct._object* %31, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.32
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp37, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %34, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %37(%struct._object* %38)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.32
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %39 = load %struct._object*, %struct._object** %io, align 8
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp50, align 8
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  %cmp51 = icmp ne %struct._object* %40, null
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %do.body.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp54, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %43, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %46(%struct._object* %47)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.49
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %48 = load %struct._object*, %struct._object** %readline, align 8
  %cmp66 = icmp ne %struct._object* %48, null
  %conv = zext i1 %cmp66 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @valid_utf8(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %expected = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %expected, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp slt i32 %conv2, 192
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp slt i32 %conv7, 224
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %expected, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.6
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv11 = zext i8 %7 to i32
  %cmp12 = icmp slt i32 %conv11, 240
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i32 2, i32* %expected, align 4
  br label %if.end.22

if.else.15:                                       ; preds = %if.else
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp slt i32 %conv16, 248
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.15
  store i32 3, i32* %expected, align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.15
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.10
  %10 = load i32, i32* %expected, align 4
  %add = add i32 %10, 1
  store i32 %add, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %11 = load i32, i32* %expected, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %expected, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv24 = zext i8 %14 to i32
  %cmp25 = icmp slt i32 %conv24, 128
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %expected, align 4
  %idxprom27 = sext i32 %15 to i64
  %16 = load i8*, i8** %s.addr, align 8
  %arrayidx28 = getelementptr i8, i8* %16, i64 %idxprom27
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %cmp30 = icmp sge i32 %conv29, 192
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %18 = load i32, i32* %expected, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %expected, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %length, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.32, %if.else.20, %if.then.5, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i8* @PyByteArray_AsString(%struct._object*) #1

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #2

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

declare void @PySys_FormatStderr(i8*, ...) #1

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @PyUnicode_IsIdentifier(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
